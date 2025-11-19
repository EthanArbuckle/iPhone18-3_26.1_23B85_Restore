@interface _HKConceptIndexableComparisonFilter
+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7;
+ (BOOL)supportsKeyPath:(id)a3 forTypes:(id)a4;
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
- (BOOL)_acceptsDataObjectWithValue:(id)a3;
- (BOOL)acceptsDataObject:(id)a3;
@end

@implementation _HKConceptIndexableComparisonFilter

+ (id)allowedDataTypeClassesForKeyPath:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)allowedValueClassesForKeyPath:(id)a3
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 initWithObjects:{v4, v5, objc_opt_class(), 0}];

  return v6;
}

+ (BOOL)supportsKeyPath:(id)a3 forTypes:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64___HKConceptIndexableComparisonFilter_supportsKeyPath_forTypes___block_invoke;
    v9[3] = &unk_1E7384380;
    v10 = v5;
    v7 = [v6 hk_allObjectsPassTestWithError:0 test:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isValidValue:(id)a3 forKeyPath:(id)a4 operatorType:(unint64_t)a5 dataTypes:(id)a6 error:(id *)a7
{
  v12 = a3;
  v16.receiver = a1;
  v16.super_class = &OBJC_METACLASS____HKConceptIndexableComparisonFilter;
  if (objc_msgSendSuper2(&v16, sel_isValidValue_forKeyPath_operatorType_dataTypes_error_, v12, a4, a5, a6, a7))
  {
    v13 = objc_opt_class();
    v14 = HKIsValueOrContainerValidForOperatorType(a5, v12, v13, a7);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)acceptsDataObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = objc_opt_class(), [(_HKComparisonFilter *)self keyPath], v6 = objc_claimAutoreleasedReturnValue(), LODWORD(v5) = _ClassSupportsConceptIndexableKeyPath(v5, v6), v6, v5))
  {
    v7 = [(_HKComparisonFilter *)self keyPath];
    v8 = [v4 valueForKeyPath:v7];

    v9 = [v8 identifier];
    v10 = [(_HKConceptIndexableComparisonFilter *)self _acceptsDataObjectWithValue:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_acceptsDataObjectWithValue:(id)a3
{
  v5 = a3;
  if ([(_HKComparisonFilter *)self operatorType]== 10)
  {
    v6 = [(_HKComparisonFilter *)self value];
    v7 = [v6 containsObject:v5];
  }

  else
  {
    if ([(_HKComparisonFilter *)self operatorType]!= 4)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"_HKConceptIndexableComparisonFilter.m" lineNumber:113 description:@"Unreachable code has been executed"];
      v8 = 0;
      goto LABEL_7;
    }

    v6 = [(_HKComparisonFilter *)self value];
    v7 = [v6 isEqual:v5];
  }

  v8 = v7;
LABEL_7:

  return v8;
}

@end