@interface CKDeclarativePredicateValidator
- (BOOL)validate:(id)validate error:(id *)error;
- (CKDeclarativePredicateValidator)init;
@end

@implementation CKDeclarativePredicateValidator

- (CKDeclarativePredicateValidator)init
{
  v46.receiver = self;
  v46.super_class = CKDeclarativePredicateValidator;
  v2 = [(CKDeclarativePredicateValidator *)&v46 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = sub_18869FBFC(v3);
    v5 = sub_18869ED58();
    v6 = sub_18869EDF0();
    v7 = objc_opt_class();
    v8 = sub_18869EEB8(v7);
    v16 = sub_18869EBC8(v6, v9, v10, v11, v12, v13, v14, v15, v8, 0);
    v24 = sub_18869EA90(v5, v17, v18, v19, v20, v21, v22, v23, v16, 0);

    v25 = sub_18869660C();
    v26 = sub_18869EE88();
    v34 = sub_18869EA90(v24, v27, v28, v29, v30, v31, v32, v33, v25, v26);
    v42 = sub_18869EBC8(v4, v35, v36, v37, v38, v39, v40, v41, v34, 0);
    v43 = sub_18869ED00(v42);
    validator = v2->_validator;
    v2->_validator = v43;
  }

  return v2;
}

- (BOOL)validate:(id)validate error:(id *)error
{
  validateCopy = validate;
  v9 = objc_msgSend_validate_error_(self->_validator, v7, validateCopy, 0);
  if ((v9 & 1) == 0)
  {
    objc_msgSend_validate_error_(self->_validator, v8, validateCopy, error);
  }

  return v9;
}

@end