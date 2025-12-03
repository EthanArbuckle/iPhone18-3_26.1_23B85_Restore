@interface TKTokenSmartCardPINAuthOperation
- (BOOL)finishWithError:(id *)error;
- (TKTokenSmartCardPINAuthOperation)init;
- (TKTokenSmartCardPINAuthOperation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)importOperation:(id)operation;
@end

@implementation TKTokenSmartCardPINAuthOperation

- (TKTokenSmartCardPINAuthOperation)init
{
  v6.receiver = self;
  v6.super_class = TKTokenSmartCardPINAuthOperation;
  v2 = [(TKTokenSmartCardPINAuthOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    PINFormat = v2->_PINFormat;
    v2->_PINFormat = v3;
  }

  return v2;
}

- (TKTokenSmartCardPINAuthOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = TKTokenSmartCardPINAuthOperation;
  v5 = [(TKTokenAuthOperation *)&v26 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_PINFormat);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    PINFormat = v5->_PINFormat;
    v5->_PINFormat = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_APDUTemplate);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    APDUTemplate = v5->_APDUTemplate;
    v5->_APDUTemplate = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_PINByteOffset);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    v5->_PINByteOffset = [v16 integerValue];

    v17 = objc_opt_class();
    v18 = NSStringFromSelector("PIN");
    v19 = [coderCopy decodeObjectOfClass:v17 forKey:v18];
    PIN = v5->_PIN;
    v5->_PIN = v19;

    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_localizedPINLabel);
    v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];
    localizedPINLabel = v5->_localizedPINLabel;
    v5->_localizedPINLabel = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = TKTokenSmartCardPINAuthOperation;
  coderCopy = coder;
  [(TKTokenAuthOperation *)&v15 encodeWithCoder:coderCopy];
  PINFormat = self->_PINFormat;
  v6 = NSStringFromSelector(sel_PINFormat);
  [coderCopy encodeObject:PINFormat forKey:{v6, v15.receiver, v15.super_class}];

  APDUTemplate = self->_APDUTemplate;
  v8 = NSStringFromSelector(sel_APDUTemplate);
  [coderCopy encodeObject:APDUTemplate forKey:v8];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_PINByteOffset];
  v10 = NSStringFromSelector(sel_PINByteOffset);
  [coderCopy encodeObject:v9 forKey:v10];

  PIN = self->_PIN;
  v12 = NSStringFromSelector("PIN");
  [coderCopy encodeObject:PIN forKey:v12];

  localizedPINLabel = self->_localizedPINLabel;
  v14 = NSStringFromSelector(sel_localizedPINLabel);
  [coderCopy encodeObject:localizedPINLabel forKey:v14];
}

- (BOOL)finishWithError:(id *)error
{
  aPDUTemplate = [(TKTokenSmartCardPINAuthOperation *)self APDUTemplate];

  if (!aPDUTemplate)
  {
    return 1;
  }

  aPDUTemplate2 = [(TKTokenSmartCardPINAuthOperation *)self APDUTemplate];
  v7 = [aPDUTemplate2 mutableCopy];

  pINFormat = [(TKTokenSmartCardPINAuthOperation *)self PINFormat];
  v9 = [(TKTokenSmartCardPINAuthOperation *)self PIN];
  v10 = [pINFormat fillPIN:v9 intoAPDUTemplate:v7 PINByteOffset:-[TKTokenSmartCardPINAuthOperation PINByteOffset](self error:{"PINByteOffset"), error}];

  if (v10)
  {
    [(TKTokenSmartCardPINAuthOperation *)self setPIN:0];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__5;
    v31 = __Block_byref_object_dispose__5;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__5;
    v25 = __Block_byref_object_dispose__5;
    v26 = 0;
    smartCard = [(TKTokenSmartCardPINAuthOperation *)self smartCard];
    [smartCard setSynchronous:1];

    smartCard2 = [(TKTokenSmartCardPINAuthOperation *)self smartCard];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __52__TKTokenSmartCardPINAuthOperation_finishWithError___block_invoke;
    v20[3] = &unk_1E86B7D78;
    v20[4] = &v27;
    v20[5] = &v21;
    [smartCard2 transmitRequest:v7 reply:v20];

    smartCard3 = [(TKTokenSmartCardPINAuthOperation *)self smartCard];
    [smartCard3 setSynchronous:0];

    v14 = v28[5];
    if (error && !v14)
    {
      *error = v22[5];
      v14 = v28[5];
    }

    if (v14 && (-[TKTokenSmartCardPINAuthOperation smartCard](self, "smartCard"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 checkAPDUResponse:v28[5] error:error], v15, v16))
    {
      smartCard4 = [(TKTokenSmartCardPINAuthOperation *)self smartCard];
      [smartCard4 setSensitive:1];

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __52__TKTokenSmartCardPINAuthOperation_finishWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (void)importOperation:(id)operation
{
  v13.receiver = self;
  v13.super_class = TKTokenSmartCardPINAuthOperation;
  operationCopy = operation;
  [(TKTokenAuthOperation *)&v13 importOperation:operationCopy];
  pINFormat = [operationCopy PINFormat];
  PINFormat = self->_PINFormat;
  self->_PINFormat = pINFormat;

  aPDUTemplate = [operationCopy APDUTemplate];
  APDUTemplate = self->_APDUTemplate;
  self->_APDUTemplate = aPDUTemplate;

  self->_PINByteOffset = [operationCopy PINByteOffset];
  localizedPINLabel = [operationCopy localizedPINLabel];
  localizedPINLabel = self->_localizedPINLabel;
  self->_localizedPINLabel = localizedPINLabel;

  v11 = [operationCopy PIN];

  PIN = self->_PIN;
  self->_PIN = v11;
}

@end