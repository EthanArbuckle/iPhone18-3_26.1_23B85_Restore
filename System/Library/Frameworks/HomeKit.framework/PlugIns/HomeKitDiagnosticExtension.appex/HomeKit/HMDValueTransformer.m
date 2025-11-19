@interface HMDValueTransformer
+ (Class)valueClass;
+ (id)decodeValue:(id)a3 withTransformerNamed:(id)a4 error:(id *)a5;
+ (id)encodeValue:(id)a3 withTransformerNamed:(id)a4 error:(id *)a5;
+ (id)reverseTransformedValue:(id)a3 error:(id *)a4;
+ (id)sharedTransformer;
+ (id)transformedValue:(id)a3 error:(id *)a4;
+ (id)valueTransformerForName:(id)a3;
- (HMDValueTransformer)init;
- (id)description;
- (id)reverseTransformedValue:(id)a3;
- (id)reverseTransformedValue:(id)a3 error:(id *)a4;
- (id)transformedValue:(id)a3;
- (id)transformedValue:(id)a3 error:(id *)a4;
@end

@implementation HMDValueTransformer

- (id)reverseTransformedValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  if (sub_10000D26C(v5, [v6 transformedValueClass], a4))
  {
    v7 = [v6 reverseTransformedValue:v5 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)transformedValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  if (sub_10000D26C(v5, [v6 valueClass], a4))
  {
    v7 = [v6 transformedValue:v5 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)reverseTransformedValue:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = 0;
    v5 = [(HMDValueTransformer *)self reverseTransformedValue:v4 error:&v13];
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

- (id)transformedValue:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = 0;
    v5 = [(HMDValueTransformer *)self transformedValue:v4 error:&v13];
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

+ (id)reverseTransformedValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = NSStringFromSelector(a2);
  v7 = [NSString stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

+ (id)transformedValue:(id)a3 error:(id *)a4
{
  v5 = a3;
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

+ (id)valueTransformerForName:(id)a3
{
  v3 = a3;
  v4 = [NSValueTransformer valueTransformerForName:v3];
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

      v5 = [qword_10003B1A8 objectForKey:v3];
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
          if (([v3 isEqualToString:NSKeyedUnarchiveFromDataTransformerName] & 1) == 0 && !objc_msgSend(v3, "isEqualToString:", NSUnarchiveFromDataTransformerName))
          {
            v7 = off_1000304A0;
          }
        }

        v8 = *v7;
        v5 = [objc_alloc(objc_opt_class()) initWithTransformer:v4];
        v9 = qword_10003B1A8;
        v10 = [v3 copy];
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
  v2 = NSStringFromClass(a1);
  v3 = [NSValueTransformer valueTransformerForName:v2];

  return v3;
}

+ (id)decodeValue:(id)a3 withTransformerNamed:(id)a4 error:(id *)a5
{
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = NSKeyedUnarchiveFromDataTransformerName;
  }

  v8 = a3;
  v9 = sub_10000DFC0(a1, v7);
  v10 = [v9 reverseTransformedValue:v8 error:a5];

  return v10;
}

+ (id)encodeValue:(id)a3 withTransformerNamed:(id)a4 error:(id *)a5
{
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = NSKeyedUnarchiveFromDataTransformerName;
  }

  v8 = a3;
  v9 = sub_10000DFC0(a1, v7);
  v10 = [v9 transformedValue:v8 error:a5];

  return v10;
}

@end