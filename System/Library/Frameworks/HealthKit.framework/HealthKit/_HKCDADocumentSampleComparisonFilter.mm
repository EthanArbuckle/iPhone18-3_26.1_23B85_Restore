@interface _HKCDADocumentSampleComparisonFilter
+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4;
+ (BOOL)isSupportedKeyPath:(id)a3;
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
- (BOOL)acceptsDataObject:(id)a3;
- (void)configureInMemoryFilter;
@end

@implementation _HKCDADocumentSampleComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"author_name"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"custodian_name") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"patient_name"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"title"];
  }

  return v4;
}

+ (id)allowedDataTypeClassesForKeyPath:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)allowedValueClassesForKeyPath:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (BOOL)areValidTypes:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS____HKCDADocumentSampleComparisonFilter;
  if (objc_msgSendSuper2(&v11, sel_areValidTypes_forKeyPath_error_, v8, a4, a5))
  {
    v9 = [v8 hk_allObjectsPassTestWithError:a5 test:&__block_literal_global_88];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4
{
  result = 1;
  if (a3 > 9 || ((1 << a3) & 0x3B0) == 0)
  {
    return a3 == 99;
  }

  return result;
}

- (void)configureInMemoryFilter
{
  v6.receiver = self;
  v6.super_class = _HKCDADocumentSampleComparisonFilter;
  [(_HKComparisonFilter *)&v6 configureInMemoryFilter];
  v3 = [(_HKComparisonFilter *)self value];
  v4 = [HKCDADocumentSample _comparisonExpressionForValue:v3 operatorType:[(_HKComparisonFilter *)self operatorType]];
  comparisonExpression = self->_comparisonExpression;
  self->_comparisonExpression = v4;
}

- (BOOL)acceptsDataObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_HKComparisonFilter *)self keyPath];
    v7 = [v5 _predicateMatchForKeyPath:v6 pattern:self->_comparisonExpression];

    v8 = v7 ^ ([(_HKComparisonFilter *)self operatorType]== 5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end