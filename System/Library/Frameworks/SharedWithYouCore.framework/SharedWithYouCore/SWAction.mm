@interface SWAction
+ (SWAction)actionWithDestinationAction:(id)action;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAction:(id)action;
- (BSAction)sourceBSAction;
- (SWAction)init;
- (SWAction)initWithCoder:(id)coder;
- (SWAction)initWithDestinationAction:(id)action;
- (_SWActionResponseHandler)responseHandler;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_processResponse;
- (void)encodeWithBSActionSettings:(id)settings;
- (void)encodeWithCoder:(id)coder;
- (void)fail;
- (void)failWithResponse:(id)response;
- (void)fulfill;
- (void)fulfillWithResponse:(id)response;
- (void)setResponseHandler:(id)handler;
- (void)setResponseHandlerBlock:(id)block;
@end

@implementation SWAction

- (SWAction)init
{
  v6.receiver = self;
  v6.super_class = SWAction;
  v2 = [(SWAction *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v2->_uuid;
    v2->_uuid = uUID;

    *&v2->_complete = 0;
  }

  return v2;
}

- (SWAction)initWithDestinationAction:(id)action
{
  actionCopy = action;
  info = [actionCopy info];
  v7 = [info objectForSetting:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12.receiver = self;
    v12.super_class = SWAction;
    v8 = [(SWAction *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_destinationBSAction, action);
      objc_storeStrong(&v9->_uuid, v7);
      *&v9->_complete = 0;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (SWAction)actionWithDestinationAction:(id)action
{
  actionCopy = action;
  info = [actionCopy info];
  v5 = [info objectForSetting:51729];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = NSClassFromString(v5), [(objc_class *)v6 isSubclassOfClass:objc_opt_class()]) && [(objc_class *)v6 instancesRespondToSelector:sel_initWithDestinationAction_])
  {
    v7 = [[v6 alloc] initWithDestinationAction:actionCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BSAction)sourceBSAction
{
  sourceBSAction = self->_sourceBSAction;
  if (!sourceBSAction)
  {
    v4 = objc_alloc_init(_SWBSActionSettings);
    [(SWAction *)self encodeWithBSActionSettings:v4];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __26__SWAction_sourceBSAction__block_invoke;
    v11[3] = &unk_1E8412660;
    v11[4] = self;
    v5 = [MEMORY[0x1E698E5F8] responderWithHandler:v11];
    v6 = objc_alloc(MEMORY[0x1E698E5F0]);
    bsSettings = [(_SWBSActionSettings *)v4 bsSettings];
    v8 = [v6 initWithInfo:bsSettings responder:v5];
    v9 = self->_sourceBSAction;
    self->_sourceBSAction = v8;

    sourceBSAction = self->_sourceBSAction;
  }

  return sourceBSAction;
}

void __26__SWAction_sourceBSAction__block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [_SWActionResponse responseWithDestinationResponse:v3];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 success];
    v7 = *(a1 + 32);
    if (v6)
    {
      [v7 fulfillWithResponse:v5];
    }

    else
    {
      [v7 failWithResponse:v5];
    }
  }

  else
  {
    v8 = [v3 error];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A798];
      v15 = *MEMORY[0x1E696A278];
      v16[0] = @"Did not get a valid BSActionResponse back from remote BSAction";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v10 = [v11 errorWithDomain:v12 code:2 userInfo:v13];
    }

    v5 = [_SWActionResponse responseWithSuccess:0 error:v10];
    [*(a1 + 32) failWithResponse:v5];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithBSActionSettings:(id)settings
{
  settingsCopy = settings;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [settingsCopy setObject:v6 forSetting:51729];

  uuid = [(SWAction *)self uuid];
  [settingsCopy setObject:uuid forSetting:1];
}

- (void)fail
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (![(SWAction *)self isComplete])
  {
    [(SWAction *)self setComplete:1];
    response = [(SWAction *)self response];

    if (!response)
    {
      v12[0] = *MEMORY[0x1E696A578];
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      v5 = [mainBundle localizedStringForKey:@"SWAction was explicitly failed" value:&stru_1F4E16F00 table:0];
      v13[0] = v5;
      v12[1] = *MEMORY[0x1E696A588];
      mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
      v7 = [mainBundle2 localizedStringForKey:@"SWAction was explicitly failed" value:&stru_1F4E16F00 table:0];
      v13[1] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.SharedWithYouCore._SWActionResponseErrorDomain" code:1 userInfo:v8];
      v10 = [_SWActionResponse responseWithSuccess:0 error:v9];
      [(SWAction *)self setResponse:v10];
    }

    [(SWAction *)self _processResponse];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)fulfill
{
  if (![(SWAction *)self isComplete])
  {
    [(SWAction *)self setComplete:1];
    response = [(SWAction *)self response];

    if (!response)
    {
      v4 = [_SWActionResponse responseWithSuccess:1 error:0];
      [(SWAction *)self setResponse:v4];
    }

    [(SWAction *)self _processResponse];
  }
}

- (void)fulfillWithResponse:(id)response
{
  responseCopy = response;
  if (![(SWAction *)self isComplete])
  {
    [(SWAction *)self setResponse:responseCopy];
    [(SWAction *)self fulfill];
  }
}

- (void)failWithResponse:(id)response
{
  responseCopy = response;
  if (![(SWAction *)self isComplete])
  {
    [(SWAction *)self setResponse:responseCopy];
    [(SWAction *)self fail];
  }
}

- (void)setResponseHandler:(id)handler
{
  obj = handler;
  responseHandler = [(SWAction *)self responseHandler];

  if (responseHandler != obj)
  {
    objc_storeWeak(&self->_responseHandler, obj);
    if ([(SWAction *)self isComplete])
    {
      if (![(SWAction *)self hasSentResponse])
      {
        [(SWAction *)self _processResponse];
      }
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setResponseHandlerBlock:(id)block
{
  blockCopy = block;
  responseHandlerBlock = [(SWAction *)self responseHandlerBlock];

  if (responseHandlerBlock != blockCopy)
  {
    v5 = MEMORY[0x1D38AA3C0](blockCopy);
    responseHandlerBlock = self->_responseHandlerBlock;
    self->_responseHandlerBlock = v5;

    if ([(SWAction *)self isComplete])
    {
      if (![(SWAction *)self hasSentResponse])
      {
        [(SWAction *)self _processResponse];
      }
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)_processResponse
{
  if ([(SWAction *)self hasSentResponse])
  {
    return;
  }

  response = [(SWAction *)self response];

  if (!response)
  {
    return;
  }

  responseHandler = [(SWAction *)self responseHandler];
  if (responseHandler)
  {
    v5 = responseHandler;
    responseHandler2 = [(SWAction *)self responseHandler];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      responseHandler3 = [(SWAction *)self responseHandler];
      response2 = [(SWAction *)self response];
      [responseHandler3 handleResponse:response2 forAction:self];
LABEL_8:

      [(SWAction *)self setHasSentResponse:1];
      return;
    }
  }

  responseHandlerBlock = [(SWAction *)self responseHandlerBlock];

  if (responseHandlerBlock)
  {
    responseHandler3 = [(SWAction *)self responseHandlerBlock];
    response2 = [(SWAction *)self response];
    (responseHandler3)[2](responseHandler3, response2);
    goto LABEL_8;
  }

  destinationBSAction = [(SWAction *)self destinationBSAction];

  if (destinationBSAction)
  {
    response3 = [(SWAction *)self response];
    sourceBSActionResponse = [response3 sourceBSActionResponse];

    destinationBSAction2 = [(SWAction *)self destinationBSAction];
    [destinationBSAction2 sendResponse:sourceBSActionResponse];
  }
}

- (SWAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SWAction;
  v5 = [(SWAction *)&v17 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_uuid);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    uuid = v5->_uuid;
    v5->_uuid = v8;

    v10 = NSStringFromSelector(sel_isComplete);
    v5->_complete = [coderCopy decodeBoolForKey:v10];

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_response);
    v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];
    response = v5->_response;
    v5->_response = v13;

    v15 = NSStringFromSelector(sel_hasSentResponse);
    v5->_hasSentResponse = [coderCopy decodeBoolForKey:v15];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(SWAction *)self uuid];
  v6 = NSStringFromSelector(sel_uuid);
  [coderCopy encodeObject:uuid forKey:v6];

  isComplete = [(SWAction *)self isComplete];
  v8 = NSStringFromSelector(sel_isComplete);
  [coderCopy encodeBool:isComplete forKey:v8];

  response = [(SWAction *)self response];
  v10 = NSStringFromSelector(sel_response);
  [coderCopy encodeObject:response forKey:v10];

  hasSentResponse = [(SWAction *)self hasSentResponse];
  v12 = NSStringFromSelector(sel_hasSentResponse);
  [coderCopy encodeBool:hasSentResponse forKey:v12];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    uuid = [(SWAction *)self uuid];
    [v4 setUuid:uuid];

    [v4 setComplete:{-[SWAction isComplete](self, "isComplete")}];
    response = [(SWAction *)self response];
    [v4 setResponse:response];

    [v4 setHasSentResponse:{-[SWAction hasSentResponse](self, "hasSentResponse")}];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SWAction *)self isEqualToAction:equalCopy];

  return v5;
}

- (BOOL)isEqualToAction:(id)action
{
  actionCopy = action;
  if (actionCopy == self)
  {
    LOBYTE(v12) = 1;
    goto LABEL_15;
  }

  uuid = [(SWAction *)self uuid];
  if (uuid || ([(SWAction *)actionCopy uuid], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    uuid2 = [(SWAction *)self uuid];
    uuid3 = [(SWAction *)actionCopy uuid];
    if (![uuid2 isEqual:uuid3])
    {
      LOBYTE(v12) = 0;
LABEL_11:

      goto LABEL_12;
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  isComplete = [(SWAction *)self isComplete];
  if (isComplete == [(SWAction *)actionCopy isComplete])
  {
    response = [(SWAction *)self response];
    if (response || ([(SWAction *)actionCopy response], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      response2 = [(SWAction *)self response];
      response3 = [(SWAction *)actionCopy response];
      if (![response2 isEqual:response3])
      {
        LOBYTE(v12) = 0;
        goto LABEL_24;
      }

      v20 = v3;
      v16 = 1;
    }

    else
    {
      v19 = 0;
      v20 = v3;
      v16 = 0;
    }

    hasSentResponse = [(SWAction *)self hasSentResponse];
    v12 = hasSentResponse ^ [(SWAction *)actionCopy hasSentResponse]^ 1;
    if (!v16)
    {
      v3 = v20;
      if (response)
      {
LABEL_25:

        if ((v11 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

LABEL_28:

      if ((v11 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v3 = v20;
LABEL_24:

    if (response)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  LOBYTE(v12) = 0;
  if (v11)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (!uuid)
  {
  }

LABEL_15:
  return v12;
}

- (_SWActionResponseHandler)responseHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_responseHandler);

  return WeakRetained;
}

@end