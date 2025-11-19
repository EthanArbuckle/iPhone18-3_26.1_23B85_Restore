@interface TKSmartCardUserInteractionForSecurePINChange
- (TKSmartCardSlot)slot;
- (TKSmartCardUserInteractionForSecurePINChange)init;
- (TKSmartCardUserInteractionForSecurePINChange)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)runWithReply:(id)a3;
- (void)setSlot:(id)a3 PINFormat:(id)a4 APDU:(id)a5 currentPINByteOffset:(int64_t)a6 newPINByteOffset:(int64_t)a7;
@end

@implementation TKSmartCardUserInteractionForSecurePINChange

- (TKSmartCardUserInteractionForSecurePINChange)init
{
  v3.receiver = self;
  v3.super_class = TKSmartCardUserInteractionForSecurePINChange;
  result = [(TKSmartCardUserInteractionForPINOperation *)&v3 init];
  if (result)
  {
    result->_PINConfirmation = 0;
  }

  return result;
}

- (TKSmartCardUserInteractionForSecurePINChange)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = TKSmartCardUserInteractionForSecurePINChange;
  v5 = [(TKSmartCardUserInteractionForPINOperation *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PINConfirmation"];
    v5->_PINConfirmation = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PINFormat"];
    v8 = [v7 copy];
    PINFormat = v5->_PINFormat;
    v5->_PINFormat = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"APDU"];
    v11 = [v10 copy];
    APDU = v5->_APDU;
    v5->_APDU = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentPINByteOffset"];
    v5->_currentPINByteOffset = [v13 integerValue];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"newPINByteOffset"];
    v5->_newPINByteOffset = [v14 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = TKSmartCardUserInteractionForSecurePINChange;
  v4 = a3;
  [(TKSmartCardUserInteractionForPINOperation *)&v8 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_PINConfirmation, v8.receiver, v8.super_class}];
  [v4 encodeObject:v5 forKey:@"PINConfirmation"];

  [v4 encodeObject:self->_PINFormat forKey:@"PINFormat"];
  [v4 encodeObject:self->_APDU forKey:@"APDU"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_currentPINByteOffset];
  [v4 encodeObject:v6 forKey:@"currentPINByteOffset"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_newPINByteOffset];
  [v4 encodeObject:v7 forKey:@"newPINByteOffset"];
}

- (void)setSlot:(id)a3 PINFormat:(id)a4 APDU:(id)a5 currentPINByteOffset:(int64_t)a6 newPINByteOffset:(int64_t)a7
{
  v12 = a5;
  v13 = a4;
  [(TKSmartCardUserInteractionForSecurePINChange *)self setSlot:a3];
  [(TKSmartCardUserInteractionForSecurePINChange *)self setPINFormat:v13];

  [(TKSmartCardUserInteractionForSecurePINChange *)self setAPDU:v12];
  [(TKSmartCardUserInteractionForSecurePINChange *)self setCurrentPINByteOffset:a6];

  [(TKSmartCardUserInteractionForSecurePINChange *)self setNewPINByteOffset:a7];
}

- (void)runWithReply:(id)a3
{
  v4 = a3;
  v5 = [(TKSmartCardUserInteractionForSecurePINChange *)self slot];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__TKSmartCardUserInteractionForSecurePINChange_runWithReply___block_invoke;
  v11[3] = &unk_1E86B7218;
  v6 = v4;
  v12 = v6;
  v7 = [v5 synchronous:0 remoteSlotWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__TKSmartCardUserInteractionForSecurePINChange_runWithReply___block_invoke_2;
  v9[3] = &unk_1E86B73C0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 runUserInteraction:self reply:v9];
}

void __61__TKSmartCardUserInteractionForSecurePINChange_runWithReply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = 0;
  v5 = MEMORY[0x1E695DF88];
  v6 = a3;
  v7 = a2;
  v8 = objc_alloc_init(v5);
  v10 = v6;
  LODWORD(v5) = [TKSmartCard decodeResponse:v7 sw:&v11 appendTo:v8 error:&v10];

  v9 = v10;
  if (v5)
  {
    [*(a1 + 32) setResultSW:v11];
    [*(a1 + 32) setResultData:v8];
  }

  (*(*(a1 + 40) + 16))();
}

- (TKSmartCardSlot)slot
{
  WeakRetained = objc_loadWeakRetained(&self->_slot);

  return WeakRetained;
}

@end