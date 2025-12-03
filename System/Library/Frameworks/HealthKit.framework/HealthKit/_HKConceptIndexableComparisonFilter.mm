@interface _HKConceptIndexableComparisonFilter
+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error;
+ (BOOL)supportsKeyPath:(id)path forTypes:(id)types;
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
- (BOOL)_acceptsDataObjectWithValue:(id)value;
- (BOOL)acceptsDataObject:(id)object;
@end

@implementation _HKConceptIndexableComparisonFilter

+ (id)allowedDataTypeClassesForKeyPath:(id)path
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)allowedValueClassesForKeyPath:(id)path
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 initWithObjects:{v4, v5, objc_opt_class(), 0}];

  return v6;
}

+ (BOOL)supportsKeyPath:(id)path forTypes:(id)types
{
  pathCopy = path;
  typesCopy = types;
  if ([typesCopy count])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64___HKConceptIndexableComparisonFilter_supportsKeyPath_forTypes___block_invoke;
    v9[3] = &unk_1E7384380;
    v10 = pathCopy;
    v7 = [typesCopy hk_allObjectsPassTestWithError:0 test:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isValidValue:(id)value forKeyPath:(id)path operatorType:(unint64_t)type dataTypes:(id)types error:(id *)error
{
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS____HKConceptIndexableComparisonFilter;
  if (objc_msgSendSuper2(&v16, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, valueCopy, path, type, types, error))
  {
    v13 = objc_opt_class();
    v14 = HKIsValueOrContainerValidForOperatorType(type, valueCopy, v13, error);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)acceptsDataObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = objc_opt_class(), [(_HKComparisonFilter *)self keyPath], v6 = objc_claimAutoreleasedReturnValue(), LODWORD(v5) = _ClassSupportsConceptIndexableKeyPath(v5, v6), v6, v5))
  {
    keyPath = [(_HKComparisonFilter *)self keyPath];
    v8 = [objectCopy valueForKeyPath:keyPath];

    identifier = [v8 identifier];
    v10 = [(_HKConceptIndexableComparisonFilter *)self _acceptsDataObjectWithValue:identifier];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_acceptsDataObjectWithValue:(id)value
{
  valueCopy = value;
  if ([(_HKComparisonFilter *)self operatorType]== 10)
  {
    value = [(_HKComparisonFilter *)self value];
    v7 = [value containsObject:valueCopy];
  }

  else
  {
    if ([(_HKComparisonFilter *)self operatorType]!= 4)
    {
      value = [MEMORY[0x1E696AAA8] currentHandler];
      [value handleFailureInMethod:a2 object:self file:@"_HKConceptIndexableComparisonFilter.m" lineNumber:113 description:@"Unreachable code has been executed"];
      v8 = 0;
      goto LABEL_7;
    }

    value = [(_HKComparisonFilter *)self value];
    v7 = [value isEqual:valueCopy];
  }

  v8 = v7;
LABEL_7:

  return v8;
}

@end