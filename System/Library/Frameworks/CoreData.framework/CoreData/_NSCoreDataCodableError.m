@interface _NSCoreDataCodableError
- (NSString)exceptionReason;
- (_NSCoreDataCodableError)initWithCoder:(id)a3;
- (_NSCoreDataCodableError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5;
- (id)exception;
@end

@implementation _NSCoreDataCodableError

- (NSString)exceptionReason
{
  v2 = *(self + OBJC_IVAR____NSCoreDataCodableError_exceptionReason + 8);
  if (v2)
  {
    v3 = *(self + OBJC_IVAR____NSCoreDataCodableError_exceptionReason);
    v4 = *(self + OBJC_IVAR____NSCoreDataCodableError_exceptionReason + 8);

    v5 = MEMORY[0x1865F8600](v3, v2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_NSCoreDataCodableError)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_NSCoreDataCodableError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)exception
{
  v3 = [(_NSCoreDataCodableError *)self exceptionName];
  v4 = [(_NSCoreDataCodableError *)self exceptionCode];
  v5 = [(_NSCoreDataCodableError *)self exceptionReason];
  v6 = [(_NSCoreDataCodableError *)self exceptionUserInfo];

  return [_NSCoreDataException exceptionWithName:v3 code:v4 reason:v5 userInfo:v6];
}

@end