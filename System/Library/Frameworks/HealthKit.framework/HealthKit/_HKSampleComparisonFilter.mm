@interface _HKSampleComparisonFilter
+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error;
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path;
+ (BOOL)isSupportedKeyPath:(id)path;
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
+ (int64_t)enumRepresentationForKeyPath:(id)path;
- (BOOL)acceptsDataObject:(id)object;
- (void)configureInMemoryFilter;
@end

@implementation _HKSampleComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"startDate"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"offsetFromStartDate"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [pathCopy isEqualToString:@"endDate"];
  }

  return v4;
}

+ (id)allowedDataTypeClassesForKeyPath:(id)path
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  return [v3 setWithObjects:{v4, objc_opt_class(), 0}];
}

+ (id)allowedValueClassesForKeyPath:(id)path
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"offsetFromStartDate"])
  {
    v6 = type == 3;
  }

  else
  {
    v6 = [_HKComparisonFilter isAllowedPredicateOperatorType:type forKeyPath:pathCopy];
  }

  return v6;
}

+ (BOOL)areValidTypes:(id)types forKeyPath:(id)path error:(id *)error
{
  typesCopy = types;
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS____HKSampleComparisonFilter;
  if (!objc_msgSendSuper2(&v12, sel_areValidTypes_forKeyPath_error_, typesCopy, pathCopy, error))
  {
    goto LABEL_6;
  }

  if ([pathCopy isEqualToString:@"offsetFromStartDate"] && objc_msgSend(typesCopy, "count") != 1)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"expected 1 sample type but got %ld %@", objc_msgSend(typesCopy, "count"), typesCopy}];
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v10 = 1;
LABEL_7:

  return v10;
}

+ (int64_t)enumRepresentationForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"startDate"])
  {
    v6 = 0;
  }

  else if ([pathCopy isEqualToString:@"offsetFromStartDate"])
  {
    v6 = 1;
  }

  else if ([pathCopy isEqualToString:@"endDate"])
  {
    v6 = 2;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKSampleComparisonFilter.m" lineNumber:151 description:@"Unreachable code has been executed"];

    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS____HKSampleComparisonFilter;
    v6 = objc_msgSendSuper2(&v9, sel_enumRepresentationForKeyPath_, pathCopy);
  }

  return v6;
}

- (void)configureInMemoryFilter
{
  v8.receiver = self;
  v8.super_class = _HKSampleComparisonFilter;
  [(_HKComparisonFilter *)&v8 configureInMemoryFilter];
  value = [(_HKComparisonFilter *)self value];
  [value timeIntervalSinceReferenceDate];
  self->_comparisonTime = v4;

  dataTypes = [(_HKComparisonFilter *)self dataTypes];
  anyObject = [dataTypes anyObject];
  anySampleType = self->_anySampleType;
  self->_anySampleType = anyObject;
}

- (BOOL)acceptsDataObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    keyPathIntegerValue = [(_HKComparisonFilter *)self keyPathIntegerValue];
    [v5 _startTimestamp];
    v8 = v7;
    [v5 _endTimestamp];
    v10 = v9;

    v11 = _AcceptsDataObject(keyPathIntegerValue, self->_anySampleType, [(_HKComparisonFilter *)self operatorType], v8, v10, self->_comparisonTime);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end