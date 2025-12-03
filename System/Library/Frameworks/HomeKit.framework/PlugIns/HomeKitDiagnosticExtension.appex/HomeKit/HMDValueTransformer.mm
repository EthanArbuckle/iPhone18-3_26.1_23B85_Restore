@interface HMDValueTransformer
+ (Class)valueClass;
+ (id)decodeValue:(id)value withTransformerNamed:(id)named error:(id *)error;
+ (id)encodeValue:(id)value withTransformerNamed:(id)named error:(id *)error;
+ (id)reverseTransformedValue:(id)value error:(id *)error;
+ (id)sharedTransformer;
+ (id)transformedValue:(id)value error:(id *)error;
+ (id)valueTransformerForName:(id)name;
- (HMDValueTransformer)init;
- (id)description;
- (id)reverseTransformedValue:(id)value;
- (id)reverseTransformedValue:(id)value error:(id *)error;
- (id)transformedValue:(id)value;
- (id)transformedValue:(id)value error:(id *)error;
@end

@implementation HMDValueTransformer

- (id)reverseTransformedValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = objc_opt_class();
  if (sub_10000D26C(valueCopy, [v6 transformedValueClass], error))
  {
    v7 = [v6 reverseTransformedValue:valueCopy error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)transformedValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = objc_opt_class();
  if (sub_10000D26C(valueCopy, [v6 valueClass], error))
  {
    v7 = [v6 transformedValue:valueCopy error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    v13 = 0;
    v5 = [(HMDValueTransformer *)self reverseTransformedValue:valueCopy error:&v13];
    v6 = v13;
    if (!v5)
    {
      if (v6)
      {
        v14 = NSUnderlyingErrorKey;
        v15 = v6;
        v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      }

      else
      {
        v8 = 0;
      }

      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [NSString stringWithFormat:@"%@ reverseTransformedValue failed", v10];

      v12 = [NSException exceptionWithName:NSInvalidArgumentException reason:v11 userInfo:v8];
      objc_exception_throw(v12);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    v13 = 0;
    v5 = [(HMDValueTransformer *)self transformedValue:valueCopy error:&v13];
    v6 = v13;
    if (!v5)
    {
      if (v6)
      {
        v14 = NSUnderlyingErrorKey;
        v15 = v6;
        v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      }

      else
      {
        v8 = 0;
      }

      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [NSString stringWithFormat:@"%@ transformedValue failed", v10];

      v12 = [NSException exceptionWithName:NSInvalidArgumentException reason:v11 userInfo:v8];
      objc_exception_throw(v12);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (HMDValueTransformer)init
{
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    v6 = NSStringFromSelector(a2);
    v7 = [NSString stringWithFormat:@"You must override %@ in a subclass", v6];
    v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v7 userInfo:0];
    v9 = v8;

    objc_exception_throw(v8);
  }

  v10.receiver = self;
  v10.super_class = HMDValueTransformer;
  return [(HMDValueTransformer *)&v10 init];
}

+ (id)reverseTransformedValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = NSStringFromSelector(a2);
  v7 = [NSString stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

+ (id)transformedValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = NSStringFromSelector(a2);
  v7 = [NSString stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

+ (Class)valueClass
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

+ (id)valueTransformerForName:(id)name
{
  nameCopy = name;
  v4 = [NSValueTransformer valueTransformerForName:nameCopy];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      if (qword_10003B1B0 != -1)
      {
        dispatch_once(&qword_10003B1B0, &stru_100030A78);
      }

      v5 = [qword_10003B1A8 objectForKey:nameCopy];
      if (!v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = off_1000304A8;
        }

        else
        {
          v7 = off_1000304A8;
          if (([nameCopy isEqualToString:NSKeyedUnarchiveFromDataTransformerName] & 1) == 0 && !objc_msgSend(nameCopy, "isEqualToString:", NSUnarchiveFromDataTransformerName))
          {
            v7 = off_1000304A0;
          }
        }

        v8 = *v7;
        v5 = [objc_alloc(objc_opt_class()) initWithTransformer:v4];
        v9 = qword_10003B1A8;
        v10 = [nameCopy copy];
        [v9 setObject:v5 forKey:v10];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)sharedTransformer
{
  v2 = NSStringFromClass(self);
  v3 = [NSValueTransformer valueTransformerForName:v2];

  return v3;
}

+ (id)decodeValue:(id)value withTransformerNamed:(id)named error:(id *)error
{
  if (named)
  {
    namedCopy = named;
  }

  else
  {
    namedCopy = NSKeyedUnarchiveFromDataTransformerName;
  }

  valueCopy = value;
  v9 = sub_10000DFC0(self, namedCopy);
  v10 = [v9 reverseTransformedValue:valueCopy error:error];

  return v10;
}

+ (id)encodeValue:(id)value withTransformerNamed:(id)named error:(id *)error
{
  if (named)
  {
    namedCopy = named;
  }

  else
  {
    namedCopy = NSKeyedUnarchiveFromDataTransformerName;
  }

  valueCopy = value;
  v9 = sub_10000DFC0(self, namedCopy);
  v10 = [v9 transformedValue:valueCopy error:error];

  return v10;
}

@end