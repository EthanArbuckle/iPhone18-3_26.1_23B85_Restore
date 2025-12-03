@interface TKSmartCardUserInteractionForSecurePINVerification
- (TKSmartCardSlot)slot;
- (TKSmartCardUserInteractionForSecurePINVerification)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)runWithReply:(id)reply;
- (void)setSlot:(id)slot PINFormat:(id)format APDU:(id)u PINByteOffset:(int64_t)offset;
@end

@implementation TKSmartCardUserInteractionForSecurePINVerification

- (TKSmartCardUserInteractionForSecurePINVerification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = TKSmartCardUserInteractionForSecurePINVerification;
  v5 = [(TKSmartCardUserInteractionForPINOperation *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PINFormat"];
    v7 = [v6 copy];
    PINFormat = v5->_PINFormat;
    v5->_PINFormat = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"APDU"];
    v10 = [v9 copy];
    APDU = v5->_APDU;
    v5->_APDU = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PINByteOffset"];
    v5->_PINByteOffset = [v12 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TKSmartCardUserInteractionForSecurePINVerification;
  coderCopy = coder;
  [(TKSmartCardUserInteractionForPINOperation *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_PINFormat forKey:{@"PINFormat", v6.receiver, v6.super_class}];
  [coderCopy encodeObject:self->_APDU forKey:@"APDU"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_PINByteOffset];
  [coderCopy encodeObject:v5 forKey:@"PINByteOffset"];
}

- (void)setSlot:(id)slot PINFormat:(id)format APDU:(id)u PINByteOffset:(int64_t)offset
{
  uCopy = u;
  formatCopy = format;
  [(TKSmartCardUserInteractionForSecurePINVerification *)self setSlot:slot];
  [(TKSmartCardUserInteractionForSecurePINVerification *)self setPINFormat:formatCopy];

  [(TKSmartCardUserInteractionForSecurePINVerification *)self setAPDU:uCopy];

  [(TKSmartCardUserInteractionForSecurePINVerification *)self setPINByteOffset:offset];
}

- (void)runWithReply:(id)reply
{
  replyCopy = reply;
  slot = [(TKSmartCardUserInteractionForSecurePINVerification *)self slot];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__TKSmartCardUserInteractionForSecurePINVerification_runWithReply___block_invoke;
  v11[3] = &unk_1E86B7218;
  v6 = replyCopy;
  v12 = v6;
  v7 = [slot synchronous:0 remoteSlotWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__TKSmartCardUserInteractionForSecurePINVerification_runWithReply___block_invoke_2;
  v9[3] = &unk_1E86B73C0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 runUserInteraction:self reply:v9];
}

void __67__TKSmartCardUserInteractionForSecurePINVerification_runWithReply___block_invoke_2(uint64_t a1, void *a2, void *a3)
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