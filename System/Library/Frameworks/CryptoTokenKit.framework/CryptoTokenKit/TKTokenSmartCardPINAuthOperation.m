@interface TKTokenSmartCardPINAuthOperation
- (BOOL)finishWithError:(id *)a3;
- (TKTokenSmartCardPINAuthOperation)init;
- (TKTokenSmartCardPINAuthOperation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)importOperation:(id)a3;
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

- (TKTokenSmartCardPINAuthOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = TKTokenSmartCardPINAuthOperation;
  v5 = [(TKTokenAuthOperation *)&v26 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_PINFormat);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    PINFormat = v5->_PINFormat;
    v5->_PINFormat = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_APDUTemplate);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    APDUTemplate = v5->_APDUTemplate;
    v5->_APDUTemplate = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_PINByteOffset);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    v5->_PINByteOffset = [v16 integerValue];

    v17 = objc_opt_class();
    v18 = NSStringFromSelector("PIN");
    v19 = [v4 decodeObjectOfClass:v17 forKey:v18];
    PIN = v5->_PIN;
    v5->_PIN = v19;

    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_localizedPINLabel);
    v23 = [v4 decodeObjectOfClass:v21 forKey:v22];
    localizedPINLabel = v5->_localizedPINLabel;
    v5->_localizedPINLabel = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v15.receiver = self;
  v15.super_class = TKTokenSmartCardPINAuthOperation;
  v4 = a3;
  [(TKTokenAuthOperation *)&v15 encodeWithCoder:v4];
  PINFormat = self->_PINFormat;
  v6 = NSStringFromSelector(sel_PINFormat);
  [v4 encodeObject:PINFormat forKey:{v6, v15.receiver, v15.super_class}];

  APDUTemplate = self->_APDUTemplate;
  v8 = NSStringFromSelector(sel_APDUTemplate);
  [v4 encodeObject:APDUTemplate forKey:v8];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_PINByteOffset];
  v10 = NSStringFromSelector(sel_PINByteOffset);
  [v4 encodeObject:v9 forKey:v10];

  PIN = self->_PIN;
  v12 = NSStringFromSelector("PIN");
  [v4 encodeObject:PIN forKey:v12];

  localizedPINLabel = self->_localizedPINLabel;
  v14 = NSStringFromSelector(sel_localizedPINLabel);
  [v4 encodeObject:localizedPINLabel forKey:v14];
}

- (BOOL)finishWithError:(id *)a3
{
  v5 = [(TKTokenSmartCardPINAuthOperation *)self APDUTemplate];

  if (!v5)
  {
    return 1;
  }

  v6 = [(TKTokenSmartCardPINAuthOperation *)self APDUTemplate];
  v7 = [v6 mutableCopy];

  v8 = [(TKTokenSmartCardPINAuthOperation *)self PINFormat];
  v9 = [(TKTokenSmartCardPINAuthOperation *)self PIN];
  v10 = [v8 fillPIN:v9 intoAPDUTemplate:v7 PINByteOffset:-[TKTokenSmartCardPINAuthOperation PINByteOffset](self error:{"PINByteOffset"), a3}];

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
    v11 = [(TKTokenSmartCardPINAuthOperation *)self smartCard];
    [v11 setSynchronous:1];

    v12 = [(TKTokenSmartCardPINAuthOperation *)self smartCard];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __52__TKTokenSmartCardPINAuthOperation_finishWithError___block_invoke;
    v20[3] = &unk_1E86B7D78;
    v20[4] = &v27;
    v20[5] = &v21;
    [v12 transmitRequest:v7 reply:v20];

    v13 = [(TKTokenSmartCardPINAuthOperation *)self smartCard];
    [v13 setSynchronous:0];

    v14 = v28[5];
    if (a3 && !v14)
    {
      *a3 = v22[5];
      v14 = v28[5];
    }

    if (v14 && (-[TKTokenSmartCardPINAuthOperation smartCard](self, "smartCard"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 checkAPDUResponse:v28[5] error:a3], v15, v16))
    {
      v17 = [(TKTokenSmartCardPINAuthOperation *)self smartCard];
      [v17 setSensitive:1];

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

- (void)importOperation:(id)a3
{
  v13.receiver = self;
  v13.super_class = TKTokenSmartCardPINAuthOperation;
  v4 = a3;
  [(TKTokenAuthOperation *)&v13 importOperation:v4];
  v5 = [v4 PINFormat];
  PINFormat = self->_PINFormat;
  self->_PINFormat = v5;

  v7 = [v4 APDUTemplate];
  APDUTemplate = self->_APDUTemplate;
  self->_APDUTemplate = v7;

  self->_PINByteOffset = [v4 PINByteOffset];
  v9 = [v4 localizedPINLabel];
  localizedPINLabel = self->_localizedPINLabel;
  self->_localizedPINLabel = v9;

  v11 = [v4 PIN];

  PIN = self->_PIN;
  self->_PIN = v11;
}

@end