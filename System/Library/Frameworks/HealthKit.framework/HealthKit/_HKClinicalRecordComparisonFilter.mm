@interface _HKClinicalRecordComparisonFilter
+ (BOOL)isSupportedKeyPath:(id)a3;
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
+ (int64_t)enumRepresentationForKeyPath:(id)a3;
- (BOOL)acceptsDataObject:(id)a3;
@end

@implementation _HKClinicalRecordComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"FHIRResource.identifier"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"FHIRResource.resourceType"];
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

+ (int64_t)enumRepresentationForKeyPath:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"FHIRResource.identifier"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"FHIRResource.resourceType"])
  {
    v6 = 1;
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"_HKClinicalRecordComparisonFilter.m" lineNumber:62 description:@"Unreachable code has been executed"];

    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS____HKClinicalRecordComparisonFilter;
    v6 = objc_msgSendSuper2(&v9, sel_enumRepresentationForKeyPath_, v5);
  }

  return v6;
}

- (BOOL)acceptsDataObject:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(_HKComparisonFilter *)self keyPathIntegerValue];
    if (v7 == 1)
    {
      v8 = [v6 FHIRResource];
      v9 = [v8 resourceType];
    }

    else
    {
      if (v7)
      {
        v8 = [MEMORY[0x1E696AAA8] currentHandler];
        [v8 handleFailureInMethod:a2 object:self file:@"_HKClinicalRecordComparisonFilter.m" lineNumber:82 description:@"Unreachable code has been executed"];
        v10 = 0;
        goto LABEL_9;
      }

      v8 = [v6 FHIRResource];
      v9 = [v8 identifier];
    }

    v11 = v9;
    v12 = [(_HKComparisonFilter *)self value];
    v10 = HKComparisonResultMatchesPredicateOperator([v11 compare:v12], -[_HKComparisonFilter operatorType](self, "operatorType"));

LABEL_9:
    goto LABEL_10;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

@end