@interface SWAction
+ (SWAction)actionWithDestinationAction:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAction:(id)a3;
- (BSAction)sourceBSAction;
- (SWAction)init;
- (SWAction)initWithCoder:(id)a3;
- (SWAction)initWithDestinationAction:(id)a3;
- (_SWActionResponseHandler)responseHandler;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_processResponse;
- (void)encodeWithBSActionSettings:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)fail;
- (void)failWithResponse:(id)a3;
- (void)fulfill;
- (void)fulfillWithResponse:(id)a3;
- (void)setResponseHandler:(id)a3;
- (void)setResponseHandlerBlock:(id)a3;
@end

@implementation SWAction

- (SWAction)init
{
  v6.receiver = self;
  v6.super_class = SWAction;
  v2 = [(SWAction *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v2->_uuid;
    v2->_uuid = v3;

    *&v2->_complete = 0;
  }

  return v2;
}

- (SWAction)initWithDestinationAction:(id)a3
{
  v5 = a3;
  v6 = [v5 info];
  v7 = [v6 objectForSetting:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12.receiver = self;
    v12.super_class = SWAction;
    v8 = [(SWAction *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_destinationBSAction, a3);
      objc_storeStrong(&v9->_uuid, v7);
      *&v9->_complete = 0;
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (SWAction)actionWithDestinationAction:(id)a3
{
  v3 = a3;
  v4 = [v3 info];
  v5 = [v4 objectForSetting:51729];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = NSClassFromString(v5), [(objc_class *)v6 isSubclassOfClass:objc_opt_class()]) && [(objc_class *)v6 instancesRespondToSelector:sel_initWithDestinationAction_])
  {
    v7 = [[v6 alloc] initWithDestinationAction:v3];
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
    v7 = [(_SWBSActionSettings *)v4 bsSettings];
    v8 = [v6 initWithInfo:v7 responder:v5];
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

- (void)encodeWithBSActionSettings:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forSetting:51729];

  v7 = [(SWAction *)self uuid];
  [v4 setObject:v7 forSetting:1];
}

- (void)fail
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (![(SWAction *)self isComplete])
  {
    [(SWAction *)self setComplete:1];
    v3 = [(SWAction *)self response];

    if (!v3)
    {
      v12[0] = *MEMORY[0x1E696A578];
      v4 = [MEMORY[0x1E696AAE8] mainBundle];
      v5 = [v4 localizedStringForKey:@"SWAction was explicitly failed" value:&stru_1F4E16F00 table:0];
      v13[0] = v5;
      v12[1] = *MEMORY[0x1E696A588];
      v6 = [MEMORY[0x1E696AAE8] mainBundle];
      v7 = [v6 localizedStringForKey:@"SWAction was explicitly failed" value:&stru_1F4E16F00 table:0];
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
    v3 = [(SWAction *)self response];

    if (!v3)
    {
      v4 = [_SWActionResponse responseWithSuccess:1 error:0];
      [(SWAction *)self setResponse:v4];
    }

    [(SWAction *)self _processResponse];
  }
}

- (void)fulfillWithResponse:(id)a3
{
  v4 = a3;
  if (![(SWAction *)self isComplete])
  {
    [(SWAction *)self setResponse:v4];
    [(SWAction *)self fulfill];
  }
}

- (void)failWithResponse:(id)a3
{
  v4 = a3;
  if (![(SWAction *)self isComplete])
  {
    [(SWAction *)self setResponse:v4];
    [(SWAction *)self fail];
  }
}

- (void)setResponseHandler:(id)a3
{
  obj = a3;
  v4 = [(SWAction *)self responseHandler];

  if (v4 != obj)
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

- (void)setResponseHandlerBlock:(id)a3
{
  v7 = a3;
  v4 = [(SWAction *)self responseHandlerBlock];

  if (v4 != v7)
  {
    v5 = MEMORY[0x1D38AA3C0](v7);
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

  v3 = [(SWAction *)self response];

  if (!v3)
  {
    return;
  }

  v4 = [(SWAction *)self responseHandler];
  if (v4)
  {
    v5 = v4;
    v6 = [(SWAction *)self responseHandler];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(SWAction *)self responseHandler];
      v9 = [(SWAction *)self response];
      [v8 handleResponse:v9 forAction:self];
LABEL_8:

      [(SWAction *)self setHasSentResponse:1];
      return;
    }
  }

  v10 = [(SWAction *)self responseHandlerBlock];

  if (v10)
  {
    v8 = [(SWAction *)self responseHandlerBlock];
    v9 = [(SWAction *)self response];
    (v8)[2](v8, v9);
    goto LABEL_8;
  }

  v11 = [(SWAction *)self destinationBSAction];

  if (v11)
  {
    v12 = [(SWAction *)self response];
    v14 = [v12 sourceBSActionResponse];

    v13 = [(SWAction *)self destinationBSAction];
    [v13 sendResponse:v14];
  }
}

- (SWAction)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SWAction;
  v5 = [(SWAction *)&v17 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_uuid);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    uuid = v5->_uuid;
    v5->_uuid = v8;

    v10 = NSStringFromSelector(sel_isComplete);
    v5->_complete = [v4 decodeBoolForKey:v10];

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_response);
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
    response = v5->_response;
    v5->_response = v13;

    v15 = NSStringFromSelector(sel_hasSentResponse);
    v5->_hasSentResponse = [v4 decodeBoolForKey:v15];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SWAction *)self uuid];
  v6 = NSStringFromSelector(sel_uuid);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(SWAction *)self isComplete];
  v8 = NSStringFromSelector(sel_isComplete);
  [v4 encodeBool:v7 forKey:v8];

  v9 = [(SWAction *)self response];
  v10 = NSStringFromSelector(sel_response);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(SWAction *)self hasSentResponse];
  v12 = NSStringFromSelector(sel_hasSentResponse);
  [v4 encodeBool:v11 forKey:v12];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    v5 = [(SWAction *)self uuid];
    [v4 setUuid:v5];

    [v4 setComplete:{-[SWAction isComplete](self, "isComplete")}];
    v6 = [(SWAction *)self response];
    [v4 setResponse:v6];

    [v4 setHasSentResponse:{-[SWAction hasSentResponse](self, "hasSentResponse")}];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SWAction *)self isEqualToAction:v4];

  return v5;
}

- (BOOL)isEqualToAction:(id)a3
{
  v9 = a3;
  if (v9 == self)
  {
    LOBYTE(v12) = 1;
    goto LABEL_15;
  }

  v10 = [(SWAction *)self uuid];
  if (v10 || ([(SWAction *)v9 uuid], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(SWAction *)self uuid];
    v5 = [(SWAction *)v9 uuid];
    if (![v4 isEqual:v5])
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

  v13 = [(SWAction *)self isComplete];
  if (v13 == [(SWAction *)v9 isComplete])
  {
    v15 = [(SWAction *)self response];
    if (v15 || ([(SWAction *)v9 response], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = [(SWAction *)self response];
      v7 = [(SWAction *)v9 response];
      if (![v6 isEqual:v7])
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

    v17 = [(SWAction *)self hasSentResponse];
    v12 = v17 ^ [(SWAction *)v9 hasSentResponse]^ 1;
    if (!v16)
    {
      v3 = v20;
      if (v15)
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

    if (v15)
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
  if (!v10)
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