@interface HMDOPACKTransformer
+ (Class)valueClass;
+ (id)OPACKFromValue:(id)value error:(id *)error;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)reverseTransformedValue:(id)value error:(id *)error;
+ (id)transformedValue:(id)value error:(id *)error;
+ (id)valueFromOPACK:(id)k error:(id *)error;
- (id)OPACKFromValue:(id)value error:(id *)error;
- (id)valueFromOPACK:(id)k error:(id *)error;
@end

@implementation HMDOPACKTransformer

- (id)valueFromOPACK:(id)k error:(id *)error
{
  kCopy = k;
  if (!kCopy)
  {
    goto LABEL_13;
  }

  if (qword_10003B218 != -1)
  {
    dispatch_once(&qword_10003B218, &stru_100030AD8);
  }

  v6 = CFGetTypeID(kCopy);
  if (v6 == qword_10003B1D8 || v6 == qword_10003B1E0 || v6 == qword_10003B1E8 || v6 == qword_10003B1F0 || v6 == qword_10003B1F8 || v6 == qword_10003B200 || v6 == qword_10003B208 || v6 == qword_10003B210)
  {

    goto LABEL_16;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
LABEL_16:
    v8 = [objc_opt_class() valueFromOPACK:kCopy error:error];
    goto LABEL_18;
  }

LABEL_13:
  if (error)
  {
    [NSError hmfErrorWithCode:3 reason:@"Expected OPACK-compatible value"];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_18:

  return v8;
}

- (id)OPACKFromValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = objc_opt_class();
  valueClass = [v6 valueClass];
  if (objc_opt_isKindOfClass())
  {
    error = [v6 OPACKFromValue:valueCopy error:error];
  }

  else if (error)
  {
    v8 = [NSString stringWithFormat:@"Expected %@", valueClass];
    *error = [NSError hmfErrorWithCode:3 reason:v8];

    error = 0;
  }

  return error;
}

+ (id)valueFromOPACK:(id)k error:(id *)error
{
  kCopy = k;
  v6 = NSStringFromSelector(a2);
  v7 = [NSString stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

+ (id)OPACKFromValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = NSStringFromSelector(a2);
  v7 = [NSString stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

+ (id)reverseTransformedValue:(id)value error:(id *)error
{
  v5 = OPACKDecodeData();
  if (error)
  {
    v6 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6705 userInfo:0];
    *error = v6;

    error = 0;
  }

  return error;
}

+ (id)transformedValue:(id)value error:(id *)error
{
  v5 = [self OPACKFromValue:value error:?];
  if (v5)
  {
    Data = OPACKEncoderCreateData();
    if (error)
    {
      v7 = [NSError errorWithDomain:"errorWithDomain:code:userInfo:" code:NSOSStatusErrorDomain userInfo:?];
      *error = v7;
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

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [(HMDOPACKTransformer *)HMDDefaultOPACKTransformer allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___HMDOPACKTransformer;
    return objc_msgSendSuper2(&v6, "allocWithZone:", zone);
  }
}

@end