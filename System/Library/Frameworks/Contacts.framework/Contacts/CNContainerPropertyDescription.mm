@interface CNContainerPropertyDescription
- (BOOL)isValidValue:(id)value error:(id *)error;
- (BOOL)isValue:(id)value equalToEmptyEquivalentOrValue:(id)orValue;
- (BOOL)setABValue:(void *)value onABSource:(void *)source error:(__CFError *)error;
- (NSString)key;
- (id)CNValueForContainer:(id)container;
- (id)nilValue;
- (int)abPropertyID;
- (void)ABValueForABSource:(void *)source;
- (void)setCNValue:(id)value onContainer:(id)container;
@end

@implementation CNContainerPropertyDescription

- (NSString)key
{
  selfCopy = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (BOOL)isValidValue:(id)value error:(id *)error
{
  valueCopy = value;
  if (valueCopy || ([(CNContainerPropertyDescription *)self valueClass], (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (error)
    {
      [CNErrorFactory errorWithCode:301 userInfo:0];
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)CNValueForContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

- (void)setCNValue:(id)value onContainer:(id)container
{
  valueCopy = value;
  containerCopy = container;
  selfCopy = self;
  v9 = CNAbstractMethodException();
  objc_exception_throw(v9);
}

- (id)nilValue
{
  [(CNContainerPropertyDescription *)self valueClass];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return &stru_1F094DAB0;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isValue:(id)value equalToEmptyEquivalentOrValue:(id)orValue
{
  valueCopy = value;
  orValueCopy = orValue;
  nilValue = orValueCopy;
  if (!valueCopy)
  {
    valueCopy = [(CNContainerPropertyDescription *)self nilValue];
    if (nilValue)
    {
      goto LABEL_3;
    }

LABEL_5:
    nilValue = [(CNContainerPropertyDescription *)self nilValue];
    goto LABEL_3;
  }

  if (!orValueCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [MEMORY[0x1E69966F0] isObject:valueCopy equalToOther:nilValue];

  return v9;
}

- (int)abPropertyID
{
  selfCopy = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (void)ABValueForABSource:(void *)source
{
  result = ABRecordCopyValue(source, [(CNContainerPropertyDescription *)self abPropertyID]);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

- (BOOL)setABValue:(void *)value onABSource:(void *)source error:(__CFError *)error
{
  abPropertyID = [(CNContainerPropertyDescription *)self abPropertyID];

  return ABRecordSetValue(source, abPropertyID, value, error);
}

@end