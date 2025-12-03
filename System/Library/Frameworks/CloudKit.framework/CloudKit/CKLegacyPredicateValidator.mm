@interface CKLegacyPredicateValidator
- (BOOL)validate:(id)validate error:(id *)error;
- (BOOL)validateBasicOperatorPredicate:(id)predicate;
- (BOOL)validateBeginsWithPredicate:(id)predicate;
- (BOOL)validateBetweenPredicate:(id)predicate;
- (BOOL)validateContainsAllInPredicate:(id)predicate;
- (BOOL)validateContainsAnyPredicate:(id)predicate;
- (BOOL)validateContainsPredicate:(id)predicate;
- (BOOL)validateFullTextSearchPredicate:(id)predicate;
- (BOOL)validateInPredicate:(id)predicate;
- (BOOL)validateNearPredicate:(id)predicate;
- (unint64_t)_comparisonOptionForString:(id)string;
- (void)validate:(id)validate;
- (void)validateComparisonPredicate:(id)predicate;
- (void)validateCompoundPredicate:(id)predicate;
@end

@implementation CKLegacyPredicateValidator

- (BOOL)validate:(id)validate error:(id *)error
{
  validateCopy = validate;
  objc_msgSend_validate_(self, v6, validateCopy);

  return 1;
}

- (void)validate:(id)validate
{
  validateCopy = validate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_validateCompoundPredicate_(self, v4, validateCopy);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_validateComparisonPredicate_(self, v5, validateCopy);
    }

    else
    {
      v6 = objc_msgSend_predicateWithValue_(MEMORY[0x1E696AE18], v5, 1);
      isEqual = objc_msgSend_isEqual_(validateCopy, v7, v6);

      if ((isEqual & 1) == 0)
      {
        objc_msgSend_raise_format_(MEMORY[0x1E695DF30], validateCopy, *MEMORY[0x1E695D940], @"Invalid predicate: %@", validateCopy);
      }
    }
  }
}

- (void)validateCompoundPredicate:(id)predicate
{
  v32 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  if (objc_msgSend_compoundPredicateType(predicateCopy, v5, v6) != 1)
  {
    if (objc_msgSend_compoundPredicateType(predicateCopy, v7, v8))
    {
      v22 = [CKException alloc];
      v24 = objc_msgSend_initWithCode_format_(v22, v23, 1009, @"Unexpected expression: %@", predicateCopy);
    }

    else
    {
      v18 = objc_msgSend_subpredicates(predicateCopy, v16, v17);
      v9 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, 0);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_validate_(self, v20, v9);
        goto LABEL_13;
      }

      v25 = [CKException alloc];
      v24 = objc_msgSend_initWithCode_format_(v25, v26, 1009, @"Expected comparison subpredicate: %@", predicateCopy);
    }

    objc_exception_throw(v24);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = objc_msgSend_subpredicates(predicateCopy, v7, v8);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v27, v31, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_validate_(self, v12, *(*(&v27 + 1) + 8 * i));
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v27, v31, 16);
    }

    while (v13);
  }

LABEL_13:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)validateComparisonPredicate:(id)predicate
{
  predicateCopy = predicate;
  if ((objc_msgSend_validateFullTextSearchPredicate_(self, v4, predicateCopy) & 1) == 0)
  {
    if (objc_msgSend_options(predicateCopy, v5, v6))
    {
      v15 = objc_msgSend_initWithCode_format_([CKException alloc], predicateCopy, 1009, @"Predicate comparison options are not supported for expression: %@", predicateCopy);
    }

    else
    {
      if (objc_msgSend_validateNearPredicate_(self, v7, predicateCopy) & 1) != 0 || (objc_msgSend_validateContainsPredicate_(self, v8, predicateCopy) & 1) != 0 || (objc_msgSend_validateInPredicate_(self, v9, predicateCopy) & 1) != 0 || (objc_msgSend_validateContainsAnyPredicate_(self, v10, predicateCopy) & 1) != 0 || (objc_msgSend_validateContainsAllInPredicate_(self, v11, predicateCopy) & 1) != 0 || (objc_msgSend_validateBeginsWithPredicate_(self, v12, predicateCopy) & 1) != 0 || (objc_msgSend_validateBetweenPredicate_(self, v13, predicateCopy) & 1) != 0 || (objc_msgSend_validateBasicOperatorPredicate_(self, v14, predicateCopy))
      {
        goto LABEL_11;
      }

      v15 = objc_msgSend_initWithCode_format_([CKException alloc], predicateCopy, 1009, @"Unexpected expression: %@", predicateCopy);
    }

    objc_exception_throw(v15);
  }

LABEL_11:
}

- (BOOL)validateNearPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (objc_msgSend_comparisonPredicateModifier(predicateCopy, v5, v6))
  {
    goto LABEL_2;
  }

  v10 = objc_msgSend_leftExpression(predicateCopy, v7, v8);
  if (objc_msgSend_expressionType(v10, v11, v12) == 4)
  {
    v15 = objc_msgSend_leftExpression(predicateCopy, v13, v14);
    v18 = objc_msgSend_function(v15, v16, v17);
    isEqualToString = objc_msgSend_isEqualToString_(v18, v19, @"distanceToLocation:fromLocation:");

    if (isEqualToString)
    {
      if (!objc_msgSend_predicateOperatorType(predicateCopy, v21, v22) || objc_msgSend_predicateOperatorType(predicateCopy, v23, v24) == 1)
      {
        v25 = objc_msgSend_rightExpression(predicateCopy, v23, v24);
        v28 = objc_msgSend_expressionType(v25, v26, v27);

        if (v28)
        {
          v97 = [CKException alloc];
          v90 = objc_msgSend_initWithCode_format_(v97, v98, 1009, @"Expected search radius on right hand side of operator: %@", predicateCopy);
          goto LABEL_39;
        }

        v31 = objc_msgSend_leftExpression(predicateCopy, v29, v30);
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else
  {
  }

  v34 = objc_msgSend_rightExpression(predicateCopy, v21, v22);
  if (objc_msgSend_expressionType(v34, v35, v36) != 4)
  {
    v9 = 0;
LABEL_31:

    goto LABEL_32;
  }

  v39 = objc_msgSend_rightExpression(predicateCopy, v37, v38);
  v42 = objc_msgSend_function(v39, v40, v41);
  v44 = objc_msgSend_isEqualToString_(v42, v43, @"distanceToLocation:fromLocation:");

  if (v44)
  {
    if (objc_msgSend_predicateOperatorType(predicateCopy, v45, v46) != 2 || objc_msgSend_predicateOperatorType(predicateCopy, v47, v48) != 3)
    {
      v49 = objc_msgSend_leftExpression(predicateCopy, v47, v48);
      v52 = objc_msgSend_expressionType(v49, v50, v51);

      if (v52)
      {
        v99 = [CKException alloc];
        v90 = objc_msgSend_initWithCode_format_(v99, v100, 1009, @"Expected search radius on left hand side of operator: %@", predicateCopy);
        goto LABEL_39;
      }

      v31 = objc_msgSend_rightExpression(predicateCopy, v53, v54);
LABEL_16:
      v34 = v31;
      v55 = objc_msgSend_arguments(v31, v32, v33);
      v58 = objc_msgSend_count(v55, v56, v57);

      if (v58 != 2)
      {
        v91 = [CKException alloc];
        v90 = objc_msgSend_initWithCode_format_(v91, v92, 1009, @"Expected expected 2 arguments for function distanceToLocation:fromLocation: %@", predicateCopy);
        goto LABEL_39;
      }

      v61 = objc_msgSend_arguments(v34, v59, v60);
      v63 = objc_msgSend_objectAtIndexedSubscript_(v61, v62, 0);

      v66 = objc_msgSend_arguments(v34, v64, v65);
      v68 = objc_msgSend_objectAtIndexedSubscript_(v66, v67, 1);

      v73 = objc_msgSend_expressionType(v63, v69, v70);
      if (v73 == 3)
      {
        v74 = objc_msgSend_keyPath(v63, v71, v72);
        if (!v74)
        {
          goto LABEL_35;
        }

        v3 = v74;
        if (objc_msgSend_expressionType(v68, v75, v76) != 3)
        {

LABEL_26:
          v82 = objc_msgSend_expressionType(v63, v77, v78);
          v83 = v63;
          if (!v82 || (v84 = objc_msgSend_expressionType(v68, v80, v81), v83 = v68, !v84))
          {
            v85 = objc_msgSend_constantValue(v83, v80, v81);
            if (v85)
            {
              v86 = v85;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {

                v9 = 1;
                goto LABEL_31;
              }
            }
          }

          v88 = [CKException alloc];
          v90 = objc_msgSend_initWithCode_format_(v88, v89, 1009, @"Expected CLLocation argument for distanceToLocation:fromLocation:");
LABEL_39:
          objc_exception_throw(v90);
        }
      }

      else if (objc_msgSend_expressionType(v68, v71, v72) != 3)
      {
        goto LABEL_26;
      }

      v79 = objc_msgSend_keyPath(v68, v77, v78);

      if (v73 == 3)
      {
      }

      if (v79)
      {
        goto LABEL_26;
      }

LABEL_35:
      v93 = [CKException alloc];
      v90 = objc_msgSend_initWithCode_format_(v93, v94, 1009, @"Expected NSKeyPathExpressionType argument for distanceToLocation:fromLocation:");
      goto LABEL_39;
    }

LABEL_36:
    v95 = [CKException alloc];
    v90 = objc_msgSend_initWithCode_format_(v95, v96, 1009, @"Searching for locations outside of a specified circular area is not supported");
    goto LABEL_39;
  }

LABEL_2:
  v9 = 0;
LABEL_32:

  return v9;
}

- (BOOL)validateContainsPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (objc_msgSend_predicateOperatorType(predicateCopy, v4, v5) != 10 || objc_msgSend_comparisonPredicateModifier(predicateCopy, v6, v7))
  {
LABEL_6:
    if (objc_msgSend_predicateOperatorType(predicateCopy, v6, v7) == 99 && !objc_msgSend_comparisonPredicateModifier(predicateCopy, v17, v18))
    {
      v19 = objc_msgSend_leftExpression(predicateCopy, v17, v18);
      if (objc_msgSend_expressionType(v19, v20, v21) == 3)
      {
        v24 = objc_msgSend_rightExpression(predicateCopy, v22, v23);
        v27 = objc_msgSend_expressionType(v24, v25, v26);

        if (!v27)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    if (objc_msgSend_predicateOperatorType(predicateCopy, v17, v18) == 4 && objc_msgSend_comparisonPredicateModifier(predicateCopy, v28, v29) == 2)
    {
      v32 = objc_msgSend_leftExpression(predicateCopy, v30, v31);
      if (objc_msgSend_expressionType(v32, v33, v34) == 3)
      {
        v37 = objc_msgSend_rightExpression(predicateCopy, v35, v36);
        v40 = objc_msgSend_expressionType(v37, v38, v39);

        if (!v40)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    v41 = 0;
    goto LABEL_19;
  }

  v8 = objc_msgSend_leftExpression(predicateCopy, v6, v7);
  if (objc_msgSend_expressionType(v8, v9, v10))
  {

    goto LABEL_6;
  }

  v13 = objc_msgSend_rightExpression(predicateCopy, v11, v12);
  v16 = objc_msgSend_expressionType(v13, v14, v15);

  if (v16 != 3)
  {
    goto LABEL_6;
  }

LABEL_16:
  v41 = 1;
LABEL_19:

  return v41;
}

- (BOOL)validateInPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (objc_msgSend_predicateOperatorType(predicateCopy, v4, v5) != 10 || objc_msgSend_comparisonPredicateModifier(predicateCopy, v6, v7))
  {
    goto LABEL_8;
  }

  v8 = objc_msgSend_leftExpression(predicateCopy, v6, v7);
  if (objc_msgSend_expressionType(v8, v9, v10) != 3)
  {

    goto LABEL_8;
  }

  v13 = objc_msgSend_rightExpression(predicateCopy, v11, v12);
  v16 = objc_msgSend_expressionType(v13, v14, v15);

  if (v16)
  {
LABEL_8:
    if (objc_msgSend_predicateOperatorType(predicateCopy, v6, v7) == 4 && objc_msgSend_comparisonPredicateModifier(predicateCopy, v25, v26) == 2)
    {
      v27 = objc_msgSend_leftExpression(predicateCopy, v25, v26);
      if (objc_msgSend_expressionType(v27, v28, v29))
      {
      }

      else
      {
        v32 = objc_msgSend_rightExpression(predicateCopy, v30, v31);
        v35 = objc_msgSend_expressionType(v32, v33, v34);

        if (v35 == 3)
        {
          goto LABEL_18;
        }
      }
    }

    if (objc_msgSend_predicateOperatorType(predicateCopy, v25, v26) != 99 || objc_msgSend_comparisonPredicateModifier(predicateCopy, v36, v37))
    {
      goto LABEL_20;
    }

    v40 = objc_msgSend_leftExpression(predicateCopy, v38, v39);
    if (objc_msgSend_expressionType(v40, v41, v42))
    {

LABEL_20:
      v54 = 0;
      goto LABEL_21;
    }

    v45 = objc_msgSend_rightExpression(predicateCopy, v43, v44);
    v48 = objc_msgSend_expressionType(v45, v46, v47);

    if (v48 != 3)
    {
      goto LABEL_20;
    }

LABEL_18:
    v49 = objc_msgSend_leftExpression(predicateCopy, v25, v26);
    v52 = objc_msgSend_CKExpressionValue(v49, v50, v51);
    v53 = sub_188698808(v52);

    if ((v53 & 1) == 0)
    {
      v56 = [CKException alloc];
      v24 = objc_msgSend_initWithCode_format_(v56, v57, 1009, @"Expected collection on left hand side: %@", predicateCopy);
LABEL_23:
      objc_exception_throw(v24);
    }

    goto LABEL_19;
  }

  v17 = objc_msgSend_rightExpression(predicateCopy, v6, v7);
  v20 = objc_msgSend_CKExpressionValue(v17, v18, v19);
  v21 = sub_188698808(v20);

  if ((v21 & 1) == 0)
  {
    v22 = [CKException alloc];
    v24 = objc_msgSend_initWithCode_format_(v22, v23, 1009, @"Expected collection right hand side: %@", predicateCopy);
    goto LABEL_23;
  }

LABEL_19:
  v54 = 1;
LABEL_21:

  return v54;
}

- (BOOL)validateContainsAnyPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (objc_msgSend_predicateOperatorType(predicateCopy, v4, v5) != 10 || objc_msgSend_comparisonPredicateModifier(predicateCopy, v6, v7) != 2)
  {
    goto LABEL_8;
  }

  v8 = objc_msgSend_leftExpression(predicateCopy, v6, v7);
  if (objc_msgSend_expressionType(v8, v9, v10) != 3)
  {

    goto LABEL_8;
  }

  v13 = objc_msgSend_rightExpression(predicateCopy, v11, v12);
  v16 = objc_msgSend_expressionType(v13, v14, v15);

  if (v16)
  {
LABEL_8:
    if (objc_msgSend_predicateOperatorType(predicateCopy, v6, v7) == 10 && objc_msgSend_comparisonPredicateModifier(predicateCopy, v25, v26) == 2)
    {
      v29 = objc_msgSend_leftExpression(predicateCopy, v27, v28);
      if (objc_msgSend_expressionType(v29, v30, v31))
      {
      }

      else
      {
        v34 = objc_msgSend_rightExpression(predicateCopy, v32, v33);
        v37 = objc_msgSend_expressionType(v34, v35, v36);

        if (v37 == 3)
        {
          v40 = objc_msgSend_leftExpression(predicateCopy, v38, v39);
          v43 = objc_msgSend_CKExpressionValue(v40, v41, v42);
          v44 = sub_188698808(v43);

          if ((v44 & 1) == 0)
          {
            v47 = [CKException alloc];
            v24 = objc_msgSend_initWithCode_format_(v47, v48, 1009, @"Expected collection on left hand side: %@", predicateCopy);
LABEL_18:
            objc_exception_throw(v24);
          }

          goto LABEL_14;
        }
      }
    }

    v45 = 0;
    goto LABEL_16;
  }

  v17 = objc_msgSend_rightExpression(predicateCopy, v6, v7);
  v20 = objc_msgSend_CKExpressionValue(v17, v18, v19);
  v21 = sub_188698808(v20);

  if ((v21 & 1) == 0)
  {
    v22 = [CKException alloc];
    v24 = objc_msgSend_initWithCode_format_(v22, v23, 1009, @"Expected collection on right hand side: %@", predicateCopy);
    goto LABEL_18;
  }

LABEL_14:
  v45 = 1;
LABEL_16:

  return v45;
}

- (BOOL)validateContainsAllInPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (objc_msgSend_predicateOperatorType(predicateCopy, v4, v5) != 10 || objc_msgSend_comparisonPredicateModifier(predicateCopy, v6, v7) != 1)
  {
    v26 = 0;
    goto LABEL_8;
  }

  v10 = objc_msgSend_rightExpression(predicateCopy, v8, v9);
  v13 = objc_msgSend_expressionType(v10, v11, v12);

  if (v13 != 3)
  {
    v28 = [CKException alloc];
    v30 = objc_msgSend_initWithCode_format_(v28, v29, 1009, @"Expected key-path on right hand side: %@", predicateCopy);
    goto LABEL_12;
  }

  v16 = objc_msgSend_leftExpression(predicateCopy, v14, v15);
  if (objc_msgSend_expressionType(v16, v17, v18))
  {

    goto LABEL_11;
  }

  v21 = objc_msgSend_leftExpression(predicateCopy, v19, v20);
  v24 = objc_msgSend_CKExpressionValue(v21, v22, v23);
  v25 = sub_188698808(v24);

  if ((v25 & 1) == 0)
  {
LABEL_11:
    v31 = [CKException alloc];
    v30 = objc_msgSend_initWithCode_format_(v31, v32, 1009, @"Expected collection on left hand side: %@", predicateCopy);
LABEL_12:
    objc_exception_throw(v30);
  }

  v26 = 1;
LABEL_8:

  return v26;
}

- (BOOL)validateBeginsWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (objc_msgSend_predicateOperatorType(predicateCopy, v4, v5) != 8)
  {
    goto LABEL_4;
  }

  v8 = objc_msgSend_leftExpression(predicateCopy, v6, v7);
  v11 = objc_msgSend_expressionType(v8, v9, v10);
  v14 = v11 == 3;
  if (v11 != 3)
  {
LABEL_7:

    goto LABEL_8;
  }

  v15 = objc_msgSend_rightExpression(predicateCopy, v12, v13);
  v18 = objc_msgSend_expressionType(v15, v16, v17);

  if (v18)
  {
LABEL_4:
    v14 = 0;
    goto LABEL_8;
  }

  v8 = objc_msgSend_rightExpression(predicateCopy, v19, v20);
  v23 = objc_msgSend_CKExpressionValue(v8, v21, v22);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    goto LABEL_7;
  }

  v27 = objc_msgSend_rightExpression(predicateCopy, v24, v25);
  v30 = objc_msgSend_CKExpressionValue(v27, v28, v29);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v32 = [CKException alloc];
    v34 = objc_msgSend_initWithCode_format_(v32, v33, 1009, @"Expected NSString or NSData on right hand side: %@", predicateCopy);
    objc_exception_throw(v34);
  }

  v14 = 1;
LABEL_8:

  return v14;
}

- (BOOL)validateBetweenPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (objc_msgSend_predicateOperatorType(predicateCopy, v4, v5) != 100 || objc_msgSend_comparisonPredicateModifier(predicateCopy, v6, v7))
  {
    goto LABEL_3;
  }

  v12 = objc_msgSend_leftExpression(predicateCopy, v8, v9);
  v15 = objc_msgSend_expressionType(v12, v13, v14);
  v10 = v15 == 3;
  if (v15 != 3)
  {
LABEL_12:

    goto LABEL_4;
  }

  v18 = objc_msgSend_rightExpression(predicateCopy, v16, v17);
  v21 = objc_msgSend_expressionType(v18, v19, v20);

  if (v21 == 14)
  {
    v24 = objc_msgSend_rightExpression(predicateCopy, v22, v23);
    v12 = objc_msgSend_constantValue(v24, v25, v26);

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }

    if (objc_msgSend_count(v12, v27, v28) != 2)
    {
      goto LABEL_13;
    }

    v30 = objc_msgSend_objectAtIndexedSubscript_(v12, v29, 0);
    v33 = objc_msgSend_CKExpressionValue(v30, v31, v32);

    v35 = objc_msgSend_objectAtIndexedSubscript_(v12, v34, 1);
    v38 = objc_msgSend_CKExpressionValue(v35, v36, v37);

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
LABEL_13:
      v39 = [CKException alloc];
      v41 = objc_msgSend_initWithCode_format_(v39, v40, 1009, @"Expected array with two number arguments on right hand side: %@", predicateCopy);
      objc_exception_throw(v41);
    }

    goto LABEL_12;
  }

LABEL_3:
  v10 = 0;
LABEL_4:

  return v10;
}

- (unint64_t)_comparisonOptionForString:(id)string
{
  stringCopy = string;
  if (objc_msgSend_rangeOfString_(stringCopy, v4, @"n") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_rangeOfString_(stringCopy, v5, @"N") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = objc_msgSend_rangeOfString_(stringCopy, v6, @"c") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend_rangeOfString_(stringCopy, v7, @"C") != 0x7FFFFFFFFFFFFFFFLL;
    if (objc_msgSend_rangeOfString_(stringCopy, v7, @"d") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend_rangeOfString_(stringCopy, v10, @"D") != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 |= 2uLL;
    }

    if (objc_msgSend_rangeOfString_(stringCopy, v10, @"l") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend_rangeOfString_(stringCopy, v11, @"L") != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 |= 8uLL;
    }
  }

  else
  {
    v8 = 4;
  }

  return v8;
}

- (BOOL)validateFullTextSearchPredicate:(id)predicate
{
  predicateCopy = predicate;
  v7 = objc_msgSend_leftExpression(predicateCopy, v5, v6);
  if (objc_msgSend_expressionType(v7, v8, v9) == 3)
  {
    v12 = objc_msgSend_leftExpression(predicateCopy, v10, v11);
    v15 = objc_msgSend_keyPath(v12, v13, v14);
    isEqualToString = objc_msgSend_isEqualToString_(v15, v16, @"allTokens");

    if (isEqualToString)
    {
      v20 = objc_msgSend_leftExpression(predicateCopy, v18, v19);
      v23 = objc_msgSend_rightExpression(predicateCopy, v21, v22);
      goto LABEL_8;
    }
  }

  else
  {
  }

  v26 = objc_msgSend_rightExpression(predicateCopy, v18, v19);
  if (objc_msgSend_expressionType(v26, v27, v28) == 3)
  {
    v31 = objc_msgSend_rightExpression(predicateCopy, v29, v30);
    v34 = objc_msgSend_keyPath(v31, v32, v33);
    v36 = objc_msgSend_isEqualToString_(v34, v35, @"allTokens");

    if (v36)
    {
      v20 = objc_msgSend_rightExpression(predicateCopy, v37, v38);
      v23 = objc_msgSend_leftExpression(predicateCopy, v39, v40);
LABEL_8:
      v41 = v23;
      v44 = objc_msgSend_expressionType(v23, v24, v25);
      if (v44)
      {
        if (objc_msgSend_expressionType(v41, v42, v43) != 4 || (objc_msgSend_function(v41, v45, v46), v47 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend_isEqualToString_(v47, v48, @"tokenize:using:"), v47, !v49))
        {
          v97 = [CKException alloc];
          v73 = objc_msgSend_initWithCode_format_(v97, v98, 1009, @"Required string or tokenize() arguments when searching special key-path allTokens: %@", predicateCopy);
          goto LABEL_39;
        }

        v52 = objc_msgSend_arguments(v41, v50, v51);
        v54 = objc_msgSend_objectAtIndexedSubscript_(v52, v53, 1);
        v57 = objc_msgSend_constantValue(v54, v55, v56);
        v59 = objc_msgSend__comparisonOptionForString_(self, v58, v57);

        if ((v59 & 0xF) != 0xBLL)
        {
          v99 = [CKException alloc];
          v73 = objc_msgSend_initWithCode_format_(v99, v100, 1009, @"Required NSCaseInsensitivePredicateOption, NSDiacriticInsensitivePredicateOption, and NSLocaleSensitivePredicateOption tokenization options on tokenize() function: %@", predicateCopy);
          goto LABEL_39;
        }

        v62 = objc_msgSend_arguments(v41, v60, v61);
        v64 = objc_msgSend_objectAtIndexedSubscript_(v62, v63, 0);
        v67 = objc_msgSend_constantValue(v64, v65, v66);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v71 = [CKException alloc];
          v73 = objc_msgSend_initWithCode_format_(v71, v72, 1009, @"Required string argument when using tokenize(): %@", predicateCopy);
          goto LABEL_39;
        }
      }

      else
      {
        v75 = objc_msgSend_constantValue(v41, v42, v43);
        objc_opt_class();
        v76 = objc_opt_isKindOfClass();

        if ((v76 & 1) == 0)
        {
          v107 = [CKException alloc];
          v73 = objc_msgSend_initWithCode_format_(v107, v108, 1009, @"Required string or tokenize() arguments when comparing to special key-path allTokens: %@", predicateCopy);
          goto LABEL_39;
        }
      }

      if (objc_msgSend_comparisonPredicateModifier(predicateCopy, v69, v70) == 1 && (objc_msgSend_leftExpression(predicateCopy, v77, v78), v79 = objc_claimAutoreleasedReturnValue(), v79, v20 == v79))
      {
        v101 = [CKException alloc];
        v73 = objc_msgSend_initWithCode_format_(v101, v102, 1009, @"Enumerating special key-path allTokens is not allowed: %@", predicateCopy);
      }

      else
      {
        if (objc_msgSend_predicateOperatorType(predicateCopy, v77, v78) == 1000)
        {
          if (!v44 && ((objc_msgSend_options(predicateCopy, v80, v81) & 4) != 0 || (objc_msgSend_options(predicateCopy, v82, v83) & 1) == 0 || (objc_msgSend_options(predicateCopy, v84, v85) & 2) == 0 || (objc_msgSend_options(predicateCopy, v86, v87) & 8) == 0))
          {
            v88 = [CKException alloc];
            v73 = objc_msgSend_initWithCode_format_(v88, v89, 1009, @"Required NSCaseInsensitivePredicateOption, NSDiacriticInsensitivePredicateOption, and NSLocaleSensitivePredicateOption comparison predicate options: %@", predicateCopy);
            goto LABEL_39;
          }

          goto LABEL_30;
        }

        if (objc_msgSend_predicateOperatorType(predicateCopy, v80, v81) == 10)
        {
          if (objc_msgSend_expressionType(v41, v90, v91))
          {
            if (objc_msgSend_comparisonPredicateModifier(predicateCopy, v92, v93) == 2 || objc_msgSend_comparisonPredicateModifier(predicateCopy, v94, v95) == 1)
            {
LABEL_30:
              v74 = 1;
              goto LABEL_31;
            }

            v109 = [CKException alloc];
            v73 = objc_msgSend_initWithCode_format_(v109, v110, 1009, @"Required predicate modifier ANY or ALL when searching special key-path allTokens: %@", predicateCopy);
          }

          else
          {
            v105 = [CKException alloc];
            v73 = objc_msgSend_initWithCode_format_(v105, v106, 1009, @"Required tokenize() operand when searching special key-path allTokens: %@", predicateCopy);
          }
        }

        else
        {
          v103 = [CKException alloc];
          v73 = objc_msgSend_initWithCode_format_(v103, v104, 1009, @"Required comparison operators TOKENMATCHES or IN when searching special key-path allTokens: %@", predicateCopy);
        }
      }

LABEL_39:
      objc_exception_throw(v73);
    }
  }

  else
  {
  }

  v20 = 0;
  v41 = 0;
  v74 = 0;
LABEL_31:

  return v74;
}

- (BOOL)validateBasicOperatorPredicate:(id)predicate
{
  predicateCopy = predicate;
  v8 = objc_msgSend_predicateOperatorType(predicateCopy, v4, v5);
  if (v8 > 5)
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_25;
  }

  v9 = objc_msgSend_leftExpression(predicateCopy, v6, v7);
  if (objc_msgSend_expressionType(v9, v10, v11) == 3)
  {

LABEL_6:
    v22 = objc_msgSend_leftExpression(predicateCopy, v14, v15);
LABEL_7:
    v25 = v22;
    v16 = objc_msgSend_CKExpressionValue(v22, v23, v24);

    goto LABEL_8;
  }

  v18 = objc_msgSend_leftExpression(predicateCopy, v12, v13);
  v21 = objc_msgSend_expressionType(v18, v19, v20);

  if (v21 == 1)
  {
    goto LABEL_6;
  }

  v43 = objc_msgSend_rightExpression(predicateCopy, v14, v15);
  if (objc_msgSend_expressionType(v43, v44, v45) == 3)
  {

LABEL_27:
    v22 = objc_msgSend_rightExpression(predicateCopy, v26, v27);
    goto LABEL_7;
  }

  v57 = objc_msgSend_rightExpression(predicateCopy, v46, v47);
  v60 = objc_msgSend_expressionType(v57, v58, v59);

  if (v60 == 1)
  {
    goto LABEL_27;
  }

  v16 = 0;
LABEL_8:
  v28 = objc_msgSend_leftExpression(predicateCopy, v26, v27);
  v31 = objc_msgSend_expressionType(v28, v29, v30);

  if (v31)
  {
    v34 = objc_msgSend_rightExpression(predicateCopy, v32, v33);
    v37 = objc_msgSend_expressionType(v34, v35, v36);

    if (v37)
    {
      v17 = 0;
      goto LABEL_16;
    }

    v40 = objc_msgSend_rightExpression(predicateCopy, v38, v39);
  }

  else
  {
    v40 = objc_msgSend_leftExpression(predicateCopy, v32, v33);
  }

  v48 = v40;
  v17 = objc_msgSend_CKExpressionValue(v40, v41, v42);

LABEL_16:
  if (!v16)
  {
    v61 = [CKException alloc];
    v63 = objc_msgSend_initWithCode_format_(v61, v62, 1009, @"Expected key-path in comparison expression: %@", predicateCopy);
    goto LABEL_34;
  }

  if (objc_msgSend_isEqualToString_(v16, v38, @"___share"))
  {
    v51 = v17 != 0;
    v52 = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v16, v49, @"___parent");
    v52 = isEqualToString;
    v51 = v17 != 0;
    if (!v17 && (isEqualToString & 1) == 0)
    {
      v74 = [CKException alloc];
      v63 = objc_msgSend_initWithCode_format_(v74, v75, 1009, @"Expected constant value in comparison expression: %@", predicateCopy);
LABEL_34:
      objc_exception_throw(v63);
    }
  }

  if (objc_msgSend_comparisonPredicateModifier(predicateCopy, v49, v50) == 1)
  {
    v64 = [CKException alloc];
    v63 = objc_msgSend_initWithCode_format_(v64, v65, 1009, @"Aggregate operator ALL not allowed for comparison expression: %@", predicateCopy);
    goto LABEL_34;
  }

  if (objc_msgSend_comparisonPredicateModifier(predicateCopy, v54, v55) == 2)
  {
    v66 = [CKException alloc];
    v63 = objc_msgSend_initWithCode_format_(v66, v67, 1009, @"Aggregate operator ANY not allowed for comparison expression: %@", predicateCopy);
    goto LABEL_34;
  }

  if (!CKValueIsAcceptablePredicateClass(v17) && ((v51 | v52 ^ 1) & 1) != 0)
  {
    v68 = [CKException alloc];
    v69 = objc_opt_class();
    v70 = NSStringFromClass(v69);
    v72 = objc_msgSend_initWithCode_format_(v68, v71, 1009, @"Type '%@' not allowed in comparison expression: %@", v70, predicateCopy);
    v73 = v72;

    objc_exception_throw(v72);
  }

LABEL_25:

  return v8 < 6;
}

@end