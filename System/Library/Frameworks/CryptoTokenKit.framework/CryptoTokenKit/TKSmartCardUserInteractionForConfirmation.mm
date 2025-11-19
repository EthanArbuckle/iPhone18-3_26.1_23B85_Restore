@interface TKSmartCardUserInteractionForConfirmation
- (TKSmartCardSlot)slot;
- (TKSmartCardUserInteractionForConfirmation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)runWithReply:(id)a3;
@end

@implementation TKSmartCardUserInteractionForConfirmation

- (TKSmartCardUserInteractionForConfirmation)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TKSmartCardUserInteractionForConfirmation;
  v5 = [(TKSmartCardUserInteraction *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"result"];
    v5->_result = [v6 integerValue] != 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TKSmartCardUserInteractionForConfirmation;
  v4 = a3;
  [(TKSmartCardUserInteraction *)&v6 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{self->_result, v6.receiver, v6.super_class}];
  [v4 encodeObject:v5 forKey:@"result"];
}

- (void)runWithReply:(id)a3
{
  v4 = a3;
  v5 = [(TKSmartCardUserInteractionForConfirmation *)self slot];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__TKSmartCardUserInteractionForConfirmation_runWithReply___block_invoke;
  v11[3] = &unk_1E86B7218;
  v6 = v4;
  v12 = v6;
  v7 = [v5 synchronous:0 remoteSlotWithErrorHandler:v11];
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