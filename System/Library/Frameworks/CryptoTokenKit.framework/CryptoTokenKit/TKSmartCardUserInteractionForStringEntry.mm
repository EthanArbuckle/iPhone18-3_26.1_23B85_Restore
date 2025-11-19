@interface TKSmartCardUserInteractionForStringEntry
- (TKSmartCardSlot)slot;
- (TKSmartCardUserInteractionForStringEntry)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)runWithReply:(id)a3;
@end

@implementation TKSmartCardUserInteractionForStringEntry

- (TKSmartCardUserInteractionForStringEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TKSmartCardUserInteractionForStringEntry;
  v5 = [(TKSmartCardUserInteraction *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"result"];
    v7 = [v6 copy];
    v8 = v5->_result;
    v5->_result = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TKSmartCardUserInteractionForStringEntry;
  v4 = a3;
  [(TKSmartCardUserInteraction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_result forKey:{@"result", v5.receiver, v5.super_class}];
}

- (void)runWithReply:(id)a3
{
  v4 = a3;
  v5 = [(TKSmartCardUserInteractionForStringEntry *)self slot];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__TKSmartCardUserInteractionForStringEntry_runWithReply___block_invoke;
  v11[3] = &unk_1E86B7218;
  v6 = v4;
  v12 = v6;
  v7 = [v5 synchronous:0 remoteSlotWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__TKSmartCardUserInteractionForStringEntry_runWithReply___block_invoke_2;
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