@interface TKSmartCardUserInteractionForConfirmation
- (TKSmartCardSlot)slot;
- (TKSmartCardUserInteractionForConfirmation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)runWithReply:(id)reply;
@end

@implementation TKSmartCardUserInteractionForConfirmation

- (TKSmartCardUserInteractionForConfirmation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = TKSmartCardUserInteractionForConfirmation;
  v5 = [(TKSmartCardUserInteraction *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"result"];
    v5->_result = [v6 integerValue] != 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TKSmartCardUserInteractionForConfirmation;
  coderCopy = coder;
  [(TKSmartCardUserInteraction *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{self->_result, v6.receiver, v6.super_class}];
  [coderCopy encodeObject:v5 forKey:@"result"];
}

- (void)runWithReply:(id)reply
{
  replyCopy = reply;
  slot = [(TKSmartCardUserInteractionForConfirmation *)self slot];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__TKSmartCardUserInteractionForConfirmation_runWithReply___block_invoke;
  v11[3] = &unk_1E86B7218;
  v6 = replyCopy;
  v12 = v6;
  v7 = [slot synchronous:0 remoteSlotWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__TKSmartCardUserInteractionForConfirmation_runWithReply___block_invoke_2;
  v9[3] = &unk_1E86B74F8;
  v10 = v6;
  v8 = v6;
  [v7 runUserInteraction:self reply:v9];
}

- (TKSmartCardSlot)slot
{
  WeakRetained = objc_loadWeakRetained(&self->_slot);

  return WeakRetained;
}

@end