@interface INBillDetails
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INBillDetails)initWithBillType:(INBillType)billType paymentStatus:(INPaymentStatus)paymentStatus billPayee:(INBillPayee *)billPayee amountDue:(INCurrencyAmount *)amountDue minimumDue:(INCurrencyAmount *)minimumDue lateFee:(INCurrencyAmount *)lateFee dueDate:(NSDateComponents *)dueDate paymentDate:(NSDateComponents *)paymentDate;
- (INBillDetails)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INBillDetails

- (id)_dictionaryRepresentation
{
  v25[8] = *MEMORY[0x1E69E9840];
  billPayee = self->_billPayee;
  v23 = billPayee;
  v24[0] = @"billPayee";
  if (!billPayee)
  {
    billPayee = [MEMORY[0x1E695DFB0] null];
  }

  v22 = billPayee;
  v25[0] = billPayee;
  v24[1] = @"amountDue";
  amountDue = self->_amountDue;
  v5 = amountDue;
  if (!amountDue)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v5;
  v25[1] = v5;
  v24[2] = @"minimumDue";
  minimumDue = self->_minimumDue;
  v7 = minimumDue;
  if (!minimumDue)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v7;
  v25[2] = v7;
  v24[3] = @"lateFee";
  lateFee = self->_lateFee;
  v9 = lateFee;
  if (!lateFee)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v9;
  v25[3] = v9;
  v24[4] = @"dueDate";
  dueDate = self->_dueDate;
  v11 = dueDate;
  if (!dueDate)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = v11;
  v24[5] = @"paymentDate";
  paymentDate = self->_paymentDate;
  v13 = paymentDate;
  if (!paymentDate)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = v13;
  v24[6] = @"billType";
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:self->_billType];
  v25[6] = v14;
  v24[7] = @"paymentStatus";
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:self->_paymentStatus];
  v25[7] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:8];

  if (paymentDate)
  {
    if (dueDate)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (dueDate)
    {
LABEL_15:
      if (lateFee)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }
  }

  if (lateFee)
  {
LABEL_16:
    if (minimumDue)
    {
      goto LABEL_17;
    }

LABEL_26:

    if (amountDue)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

LABEL_25:

  if (!minimumDue)
  {
    goto LABEL_26;
  }

LABEL_17:
  if (amountDue)
  {
    goto LABEL_18;
  }

LABEL_27:

LABEL_18:
  if (!v23)
  {
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INBillDetails;
  v6 = [(INBillDetails *)&v11 description];
  v7 = [(INBillDetails *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_billPayee];
  [v7 if_setObjectIfNonNil:v8 forKey:@"billPayee"];

  v9 = [v6 encodeObject:self->_amountDue];
  [v7 if_setObjectIfNonNil:v9 forKey:@"amountDue"];

  v10 = [v6 encodeObject:self->_minimumDue];
  [v7 if_setObjectIfNonNil:v10 forKey:@"minimumDue"];

  v11 = [v6 encodeObject:self->_lateFee];
  [v7 if_setObjectIfNonNil:v11 forKey:@"lateFee"];

  v12 = [v6 encodeObject:self->_dueDate];
  [v7 if_setObjectIfNonNil:v12 forKey:@"dueDate"];

  v13 = [v6 encodeObject:self->_paymentDate];

  [v7 if_setObjectIfNonNil:v13 forKey:@"paymentDate"];
  v14 = self->_billType - 1;
  if (v14 > 0x15)
  {
    v15 = @"unknown";
  }

  else
  {
    v15 = off_1E7280DF0[v14];
  }

  v16 = v15;
  [v7 if_setObjectIfNonNil:v16 forKey:@"billType"];

  v17 = self->_paymentStatus - 1;
  if (v17 > 4)
  {
    v18 = @"unknown";
  }

  else
  {
    v18 = *(&off_1E727E730 + v17);
  }

  v19 = v18;
  [v7 if_setObjectIfNonNil:v19 forKey:@"paymentStatus"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  billPayee = self->_billPayee;
  v5 = a3;
  [v5 encodeObject:billPayee forKey:@"billPayee"];
  [v5 encodeObject:self->_amountDue forKey:@"amountDue"];
  [v5 encodeObject:self->_minimumDue forKey:@"minimumDue"];
  [v5 encodeObject:self->_lateFee forKey:@"lateFee"];
  [v5 encodeObject:self->_dueDate forKey:@"dueDate"];
  [v5 encodeObject:self->_paymentDate forKey:@"paymentDate"];
  [v5 encodeInteger:self->_billType forKey:@"billType"];
  [v5 encodeInteger:self->_paymentStatus forKey:@"paymentStatus"];
}

- (INBillDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"billPayee"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amountDue"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minimumDue"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lateFee"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dueDate"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentDate"];
  v11 = [v4 decodeIntegerForKey:@"billType"];
  v12 = [v4 decodeIntegerForKey:@"paymentStatus"];

  v13 = [(INBillDetails *)self initWithBillType:v11 paymentStatus:v12 billPayee:v5 amountDue:v6 minimumDue:v7 lateFee:v8 dueDate:v9 paymentDate:v10];
  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      billPayee = self->_billPayee;
      v12 = (billPayee == v5->_billPayee || [(INBillPayee *)billPayee isEqual:?]) && ((amountDue = self->_amountDue, amountDue == v5->_amountDue) || [(INCurrencyAmount *)amountDue isEqual:?]) && ((minimumDue = self->_minimumDue, minimumDue == v5->_minimumDue) || [(INCurrencyAmount *)minimumDue isEqual:?]) && ((lateFee = self->_lateFee, lateFee == v5->_lateFee) || [(INCurrencyAmount *)lateFee isEqual:?]) && ((dueDate = self->_dueDate, dueDate == v5->_dueDate) || [(NSDateComponents *)dueDate isEqual:?]) && ((paymentDate = self->_paymentDate, paymentDate == v5->_paymentDate) || [(NSDateComponents *)paymentDate isEqual:?]) && self->_billType == v5->_billType && self->_paymentStatus == v5->_paymentStatus;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(INBillPayee *)self->_billPayee hash];
  v4 = [(INCurrencyAmount *)self->_amountDue hash]^ v3;
  v5 = [(INCurrencyAmount *)self->_minimumDue hash];
  v6 = v4 ^ v5 ^ [(INCurrencyAmount *)self->_lateFee hash];
  v7 = [(NSDateComponents *)self->_dueDate hash];
  v8 = v6 ^ v7 ^ [(NSDateComponents *)self->_paymentDate hash];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_billType];
  v10 = [v9 hash];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_paymentStatus];
  v12 = v10 ^ [v11 hash];

  return v8 ^ v12;
}

- (INBillDetails)initWithBillType:(INBillType)billType paymentStatus:(INPaymentStatus)paymentStatus billPayee:(INBillPayee *)billPayee amountDue:(INCurrencyAmount *)amountDue minimumDue:(INCurrencyAmount *)minimumDue lateFee:(INCurrencyAmount *)lateFee dueDate:(NSDateComponents *)dueDate paymentDate:(NSDateComponents *)paymentDate
{
  v16 = billPayee;
  v17 = amountDue;
  v18 = minimumDue;
  v19 = lateFee;
  v20 = dueDate;
  v21 = paymentDate;
  v36.receiver = self;
  v36.super_class = INBillDetails;
  v22 = [(INBillDetails *)&v36 init];
  if (v22)
  {
    v23 = [(INBillPayee *)v16 copy];
    v24 = v22->_billPayee;
    v22->_billPayee = v23;

    v25 = [(INCurrencyAmount *)v17 copy];
    v26 = v22->_amountDue;
    v22->_amountDue = v25;

    v27 = [(INCurrencyAmount *)v18 copy];
    v28 = v22->_minimumDue;
    v22->_minimumDue = v27;

    v29 = [(INCurrencyAmount *)v19 copy];
    v30 = v22->_lateFee;
    v22->_lateFee = v29;

    v31 = [(NSDateComponents *)v20 copy];
    v32 = v22->_dueDate;
    v22->_dueDate = v31;

    v33 = [(NSDateComponents *)v21 copy];
    v34 = v22->_paymentDate;
    v22->_paymentDate = v33;

    v22->_billType = billType;
    v22->_paymentStatus = paymentStatus;
  }

  return v22;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"billPayee"];
    v33 = [v7 decodeObjectOfClass:v9 from:v10];

    v32 = a1;
    v11 = objc_opt_class();
    v12 = [v8 objectForKeyedSubscript:@"amountDue"];
    v13 = [v7 decodeObjectOfClass:v11 from:v12];

    v14 = objc_opt_class();
    v15 = [v8 objectForKeyedSubscript:@"minimumDue"];
    v16 = [v7 decodeObjectOfClass:v14 from:v15];

    v17 = objc_opt_class();
    v18 = [v8 objectForKeyedSubscript:@"lateFee"];
    v19 = [v7 decodeObjectOfClass:v17 from:v18];

    v20 = objc_opt_class();
    v21 = [v8 objectForKeyedSubscript:@"dueDate"];
    v22 = [v7 decodeObjectOfClass:v20 from:v21];

    v23 = objc_opt_class();
    v24 = [v8 objectForKeyedSubscript:@"paymentDate"];
    v25 = [v7 decodeObjectOfClass:v23 from:v24];

    v26 = [v8 objectForKeyedSubscript:@"billType"];
    v27 = INBillTypeWithString(v26);

    v28 = [v8 objectForKeyedSubscript:@"paymentStatus"];
    v29 = INPaymentStatusWithString(v28);

    v30 = [[v32 alloc] initWithBillType:v27 paymentStatus:v29 billPayee:v33 amountDue:v13 minimumDue:v16 lateFee:v19 dueDate:v22 paymentDate:v25];
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

@end