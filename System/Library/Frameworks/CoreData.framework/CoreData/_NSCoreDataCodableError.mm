@interface _NSCoreDataCodableError
- (NSString)exceptionReason;
- (_NSCoreDataCodableError)initWithCoder:(id)coder;
- (_NSCoreDataCodableError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
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

- (_NSCoreDataCodableError)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_NSCoreDataCodableError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)exception
{
  exceptionName = [(_NSCoreDataCodableError *)self exceptionName];
  exceptionCode = [(_NSCoreDataCodableError *)self exceptionCode];
  exceptionReason = [(_NSCoreDataCodableError *)self exceptionReason];
  exceptionUserInfo = [(_NSCoreDataCodableError *)self exceptionUserInfo];

  return [_NSCoreDataException exceptionWithName:exceptionName code:exceptionCode reason:exceptionReason userInfo:exceptionUserInfo];
}

@end