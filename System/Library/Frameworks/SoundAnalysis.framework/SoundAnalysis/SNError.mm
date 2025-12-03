@interface SNError
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error message:(id)message;
+ (id)errorWithDomain:(id)domain code:(int64_t)code underlyingError:(id)error message:(id)message;
+ (id)exceptionFromError:(id)error;
+ (void)autoreleasepoolWithError:(id *)error action:(id)action;
+ (void)populateClientError:(id *)error withCode:(int64_t)code underlyingError:(id)underlyingError message:(id)message;
+ (void)populateClientError:(id *)error withDomain:(id)domain code:(int64_t)code underlyingError:(id)underlyingError message:(id)message;
+ (void)wrapClientError:(id *)error withDomain:(id)domain code:(int64_t)code message:(id)message;
@end

@implementation SNError

+ (id)errorWithDomain:(id)domain code:(int64_t)code underlyingError:(id)error message:(id)message
{
  v8 = sub_1C9A924A8();
  v10 = v9;
  v11 = sub_1C9A924A8();
  v13 = v12;
  errorCopy = error;
  v15 = sub_1C9929478(v8, v10, code, error, v11, v13);

  return v15;
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error message:(id)message
{
  v7 = sub_1C9A924A8();
  v9 = v8;
  errorCopy = error;
  v11 = sub_1C992992C(code, error, v7, v9);

  return v11;
}

+ (void)populateClientError:(id *)error withDomain:(id)domain code:(int64_t)code underlyingError:(id)underlyingError message:(id)message
{
  v10 = sub_1C9A924A8();
  v12 = v11;
  v13 = sub_1C9A924A8();
  v15 = v14;
  underlyingErrorCopy = underlyingError;
  sub_1C99299F0(error, v10, v12, code, underlyingError, v13, v15);
}

+ (void)wrapClientError:(id *)error withDomain:(id)domain code:(int64_t)code message:(id)message
{
  v8 = sub_1C9A924A8();
  v10 = v9;
  v11 = sub_1C9A924A8();
  sub_1C9929AE8(error, v8, v10, code, v11, v12);
}

+ (void)populateClientError:(id *)error withCode:(int64_t)code underlyingError:(id)underlyingError message:(id)message
{
  v9 = sub_1C9A924A8();
  v11 = v10;
  underlyingErrorCopy = underlyingError;
  sub_1C9929C0C(error, code, underlyingError, v9, v11);
}

+ (void)autoreleasepoolWithError:(id *)error action:(id)action
{
  v5 = _Block_copy(action);
  ObjCClassMetadata = swift_getObjCClassMetadata();

  sub_1C9929CCC(error, ObjCClassMetadata, v5);
}

+ (id)exceptionFromError:(id)error
{
  errorCopy = error;
  v5 = sub_1C99D18F4(error);

  return v5;
}

@end