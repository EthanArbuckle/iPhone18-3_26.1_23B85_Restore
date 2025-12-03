@interface _HKClinicalRecordComparisonFilter
+ (BOOL)isSupportedKeyPath:(id)path;
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
+ (int64_t)enumRepresentationForKeyPath:(id)path;
- (BOOL)acceptsDataObject:(id)object;
@end

@implementation _HKClinicalRecordComparisonFilter

+ (BOOL)isSupportedKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"FHIRResource.identifier"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [pathCopy isEqualToString:@"FHIRResource.resourceType"];
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

+ (int64_t)enumRepresentationForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:@"FHIRResource.identifier"])
  {
    v6 = 0;
  }

  else if ([pathCopy isEqualToString:@"FHIRResource.resourceType"])
  {
    v6 = 1;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKClinicalRecordComparisonFilter.m" lineNumber:62 description:@"Unreachable code has been executed"];

    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS____HKClinicalRecordComparisonFilter;
    v6 = objc_msgSendSuper2(&v9, sel_enumRepresentationForKeyPath_, pathCopy);
  }

  return v6;
}

- (BOOL)acceptsDataObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objectCopy;
    keyPathIntegerValue = [(_HKComparisonFilter *)self keyPathIntegerValue];
    if (keyPathIntegerValue == 1)
    {
      fHIRResource = [v6 FHIRResource];
      resourceType = [fHIRResource resourceType];
    }

    else
    {
      if (keyPathIntegerValue)
      {
        fHIRResource = [MEMORY[0x1E696AAA8] currentHandler];
        [fHIRResource handleFailureInMethod:a2 object:self file:@"_HKClinicalRecordComparisonFilter.m" lineNumber:82 description:@"Unreachable code has been executed"];
        v10 = 0;
        goto LABEL_9;
      }

      fHIRResource = [v6 FHIRResource];
      resourceType = [fHIRResource identifier];
    }

    v11 = resourceType;
    value = [(_HKComparisonFilter *)self value];
    v10 = HKComparisonResultMatchesPredicateOperator([v11 compare:value], -[_HKComparisonFilter operatorType](self, "operatorType"));

LABEL_9:
    goto LABEL_10;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

@end