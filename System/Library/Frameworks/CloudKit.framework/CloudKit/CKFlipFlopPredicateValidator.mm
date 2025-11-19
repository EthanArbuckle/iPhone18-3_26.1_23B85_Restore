@interface CKFlipFlopPredicateValidator
- (BOOL)validate:(id)a3 error:(id *)a4;
- (CKFlipFlopPredicateValidator)initWithValidator:(id)a3;
- (id)CKPropertiesDescription;
@end

@implementation CKFlipFlopPredicateValidator

- (CKFlipFlopPredicateValidator)initWithValidator:(id)a3
{
  v7.receiver = self;
  v7.super_class = CKFlipFlopPredicateValidator;
  v3 = a3;
  v4 = [(CKFlipFlopPredicateValidator *)&v7 init];
  objc_msgSend_setValidator_(v4, v5, v3, v7.receiver, v7.super_class);

  return v4;
}

- (BOOL)validate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9 = objc_msgSend_validator(self, v7, v8);
  v11 = v9;
  if (!a4)
  {
    v16 = objc_msgSend_validate_error_(v9, v10, v6, 0);

    v13 = 0;
    if (v16)
    {
      v15 = 1;
      v14 = 0;
      goto LABEL_23;
    }

LABEL_7:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = 0;
      if (!a4)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    v17 = v6;
    v20 = objc_msgSend_predicateOperatorType(v17, v18, v19);
    if (v20 > 5 || (v23 = qword_1886FE948[v20], objc_msgSend_comparisonPredicateModifier(v17, v21, v22)))
    {
      v14 = 0;
      goto LABEL_11;
    }

    v26 = objc_alloc(MEMORY[0x1E696AB18]);
    v29 = objc_msgSend_rightExpression(v17, v27, v28);
    v32 = objc_msgSend_leftExpression(v17, v30, v31);
    v35 = objc_msgSend_options(v17, v33, v34);
    v37 = objc_msgSend_initWithLeftExpression_rightExpression_modifier_type_options_(v26, v36, v29, v32, 0, v23, v35);

    v40 = objc_msgSend_validator(self, v38, v39);
    v42 = v40;
    if (a4)
    {
      v46 = 0;
      v43 = objc_msgSend_validate_error_(v40, v41, v37, &v46);
      v14 = v46;

      if (v43)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v45 = objc_msgSend_validate_error_(v40, v41, v37, 0);

      v14 = 0;
      if (v45)
      {
LABEL_25:

        goto LABEL_4;
      }
    }

LABEL_11:

    if (!a4)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (v13)
    {
      v24 = v13;
      v15 = 0;
      *a4 = v13;
      goto LABEL_23;
    }

    if (v14)
    {
      v25 = v14;
      v13 = 0;
      v15 = 0;
      *a4 = v14;
      goto LABEL_23;
    }

    v13 = 0;
LABEL_22:
    v15 = 0;
    goto LABEL_23;
  }

  v47 = 0;
  v12 = objc_msgSend_validate_error_(v9, v10, v6, &v47);
  v13 = v47;

  if ((v12 & 1) == 0)
  {
    goto LABEL_7;
  }

  v14 = 0;
LABEL_4:
  v15 = 1;
LABEL_23:

  return v15;
}

- (id)CKPropertiesDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_validator(self, a2, v2);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"validator=%@", v4);

  return v6;
}

@end