@interface TKSmartCardUserInteractionForSecurePINChange
- (TKSmartCardSlot)slot;
- (TKSmartCardUserInteractionForSecurePINChange)init;
- (TKSmartCardUserInteractionForSecurePINChange)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)runWithReply:(id)reply;
- (void)setSlot:(id)slot PINFormat:(id)format APDU:(id)u currentPINByteOffset:(int64_t)offset newPINByteOffset:(int64_t)byteOffset;
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

- (TKSmartCardUserInteractionForSecurePINChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = TKSmartCardUserInteractionForSecurePINChange;
  v5 = [(TKSmartCardUserInteractionForPINOperation *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PINConfirmation"];
    v5->_PINConfirmation = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PINFormat"];
    v8 = [v7 copy];
    PINFormat = v5->_PINFormat;
    v5->_PINFormat = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"APDU"];
    v11 = [v10 copy];
    APDU = v5->_APDU;
    v5->_APDU = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentPINByteOffset"];
    v5->_currentPINByteOffset = [v13 integerValue];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"newPINByteOffset"];
    v5->_newPINByteOffset = [v14 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = TKSmartCardUserInteractionForSecurePINChange;
  coderCopy = coder;
  [(TKSmartCardUserInteractionForPINOperation *)&v8 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_PINConfirmation, v8.receiver, v8.super_class}];
  [coderCopy encodeObject:v5 forKey:@"PINConfirmation"];

  [coderCopy encodeObject:self->_PINFormat forKey:@"PINFormat"];
  [coderCopy encodeObject:self->_APDU forKey:@"APDU"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_currentPINByteOffset];
  [coderCopy encodeObject:v6 forKey:@"currentPINByteOffset"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_newPINByteOffset];
  [coderCopy encodeObject:v7 forKey:@"newPINByteOffset"];
}

- (void)setSlot:(id)slot PINFormat:(id)format APDU:(id)u currentPINByteOffset:(int64_t)offset newPINByteOffset:(int64_t)byteOffset
{
  uCopy = u;
  formatCopy = format;
  [(TKSmartCardUserInteractionForSecurePINChange *)self setSlot:slot];
  [(TKSmartCardUserInteractionForSecurePINChange *)self setPINFormat:formatCopy];

  [(TKSmartCardUserInteractionForSecurePINChange *)self setAPDU:uCopy];
  [(TKSmartCardUserInteractionForSecurePINChange *)self setCurrentPINByteOffset:offset];

  [(TKSmartCardUserInteractionForSecurePINChange *)self setNewPINByteOffset:byteOffset];
}

- (void)runWithReply:(id)reply
{
  replyCopy = reply;
  slot = [(TKSmartCardUserInteractionForSecurePINChange *)self slot];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__TKSmartCardUserInteractionForSecurePINChange_runWithReply___block_invoke;
  v11[3] = &unk_1E86B7218;
  v6 = replyCopy;
  v12 = v6;
  v7 = [slot synchronous:0 remoteSlotWithErrorHandler:v11];
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