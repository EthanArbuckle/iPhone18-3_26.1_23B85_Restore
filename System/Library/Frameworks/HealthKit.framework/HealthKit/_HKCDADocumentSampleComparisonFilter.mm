@interface _HKCDADocumentSampleComparisonFilter
+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error;
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path;
+ (BOOL)isSupportedKeyPath:(id)path;
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
- (BOOL)acceptsDataObject:(id)object;
- (void)configureInMemoryFilter;
@end

@implementation _HKCDADocumentSampleComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"author_name"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"custodian_name") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"patient_name"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [pathCopy isEqualToString:@"title"];
  }

  return v4;
}

+ (id)allowedDataTypeClassesForKeyPath:(id)path
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)allowedValueClassesForKeyPath:(id)path
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error
{
  typesCopy = types;
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS____HKCDADocumentSampleComparisonFilter;
  if (objc_msgSendSuper2(&v11, sel_areValidTypes_forKeyPath_error_, typesCopy, path, error))
  {
    v9 = [typesCopy hk_allObjectsPassTestWithError:error test:&__block_literal_global_88];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path
{
  result = 1;
  if (type > 9 || ((1 << type) & 0x3B0) == 0)
  {
    return type == 99;
  }

  return result;
}

- (void)configureInMemoryFilter
{
  v6.receiver = self;
  v6.super_class = _HKCDADocumentSampleComparisonFilter;
  [(_HKComparisonFilter *)&v6 configureInMemoryFilter];
  value = [(_HKComparisonFilter *)self value];
  v4 = [HKCDADocumentSample _comparisonExpressionForValue:value operatorType:[(_HKComparisonFilter *)self operatorType]];
  comparisonExpression = self->_comparisonExpression;
  self->_comparisonExpression = v4;
}

- (BOOL)acceptsDataObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    keyPath = [(_HKComparisonFilter *)self keyPath];
    v7 = [v5 _predicateMatchForKeyPath:keyPath pattern:self->_comparisonExpression];

    v8 = v7 ^ ([(_HKComparisonFilter *)self operatorType]== 5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end