@interface HMDOPACKTransformer
+ (Class)valueClass;
+ (id)OPACKFromValue:(id)a3 error:(id *)a4;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)reverseTransformedValue:(id)a3 error:(id *)a4;
+ (id)transformedValue:(id)a3 error:(id *)a4;
+ (id)valueFromOPACK:(id)a3 error:(id *)a4;
- (id)OPACKFromValue:(id)a3 error:(id *)a4;
- (id)valueFromOPACK:(id)a3 error:(id *)a4;
@end

@implementation HMDOPACKTransformer

- (id)valueFromOPACK:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!v5)
  {
    goto LABEL_13;
  }

  if (qword_10003B218 != -1)
  {
    dispatch_once(&qword_10003B218, &stru_100030AD8);
  }

  v6 = CFGetTypeID(v5);
  if (v6 == qword_10003B1D8 || v6 == qword_10003B1E0 || v6 == qword_10003B1E8 || v6 == qword_10003B1F0 || v6 == qword_10003B1F8 || v6 == qword_10003B200 || v6 == qword_10003B208 || v6 == qword_10003B210)
  {

    goto LABEL_16;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
LABEL_16:
    v8 = [objc_opt_class() valueFromOPACK:v5 error:a4];
    goto LABEL_18;
  }

LABEL_13:
  if (a4)
  {
    [NSError hmfErrorWithCode:3 reason:@"Expected OPACK-compatible value"];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_18:

  return v8;
}

- (id)OPACKFromValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v6 valueClass];
  if (objc_opt_isKindOfClass())
  {
    a4 = [v6 OPACKFromValue:v5 error:a4];
  }

  else if (a4)
  {
    v8 = [NSString stringWithFormat:@"Expected %@", v7];
    *a4 = [NSError hmfErrorWithCode:3 reason:v8];

    a4 = 0;
  }

  return a4;
}

+ (id)valueFromOPACK:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = NSStringFromSelector(a2);
  v7 = [NSString stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

+ (id)OPACKFromValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = NSStringFromSelector(a2);
  v7 = [NSString stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

+ (id)reverseTransformedValue:(id)a3 error:(id *)a4
{
  v5 = OPACKDecodeData();
  if (a4)
  {
    v6 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6705 userInfo:0];
    *a4 = v6;

    a4 = 0;
  }

  return a4;
}

+ (id)transformedValue:(id)a3 error:(id *)a4
{
  v5 = [a1 OPACKFromValue:a3 error:?];
  if (v5)
  {
    Data = OPACKEncoderCreateData();
    if (a4)
    {
      v7 = [NSError errorWithDomain:"errorWithDomain:code:userInfo:" code:NSOSStatusErrorDomain userInfo:?];
      *a4 = v7;
    }
  }

  return 0;
}

+ (Class)valueClass
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [(HMDOPACKTransformer *)HMDDefaultOPACKTransformer allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___HMDOPACKTransformer;
    return objc_msgSendSuper2(&v6, "allocWithZone:", a3);
  }
}

@end