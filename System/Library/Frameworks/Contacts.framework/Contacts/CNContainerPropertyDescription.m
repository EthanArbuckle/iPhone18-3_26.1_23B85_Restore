@interface CNContainerPropertyDescription
- (BOOL)isValidValue:(id)a3 error:(id *)a4;
- (BOOL)isValue:(id)a3 equalToEmptyEquivalentOrValue:(id)a4;
- (BOOL)setABValue:(void *)a3 onABSource:(void *)a4 error:(__CFError *)a5;
- (NSString)key;
- (id)CNValueForContainer:(id)a3;
- (id)nilValue;
- (int)abPropertyID;
- (void)ABValueForABSource:(void *)a3;
- (void)setCNValue:(id)a3 onContainer:(id)a4;
@end

@implementation CNContainerPropertyDescription

- (NSString)key
{
  v2 = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (BOOL)isValidValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6 || ([(CNContainerPropertyDescription *)self valueClass], (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (a4)
    {
      [CNErrorFactory errorWithCode:301 userInfo:0];
      *a4 = v7 = 0;
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

- (id)CNValueForContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

- (void)setCNValue:(id)a3 onContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
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

- (BOOL)isValue:(id)a3 equalToEmptyEquivalentOrValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v6 = [(CNContainerPropertyDescription *)self nilValue];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = [(CNContainerPropertyDescription *)self nilValue];
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [MEMORY[0x1E69966F0] isObject:v6 equalToOther:v8];

  return v9;
}

- (int)abPropertyID
{
  v2 = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (void)ABValueForABSource:(void *)a3
{
  result = ABRecordCopyValue(a3, [(CNContainerPropertyDescription *)self abPropertyID]);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

- (BOOL)setABValue:(void *)a3 onABSource:(void *)a4 error:(__CFError *)a5
{
  v8 = [(CNContainerPropertyDescription *)self abPropertyID];

  return ABRecordSetValue(a4, v8, a3, a5);
}

@end