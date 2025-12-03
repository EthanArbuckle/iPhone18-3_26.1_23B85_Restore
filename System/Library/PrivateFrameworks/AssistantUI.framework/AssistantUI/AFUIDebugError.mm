@interface AFUIDebugError
+ (id)debugErrorWithCode:(int64_t)code userInfo:(id)info;
- (AFUIDebugError)initWithCode:(int64_t)code userInfo:(id)info;
@end

@implementation AFUIDebugError

+ (id)debugErrorWithCode:(int64_t)code userInfo:(id)info
{
  infoCopy = info;
  v7 = [[self alloc] initWithCode:code userInfo:infoCopy];

  return v7;
}

- (AFUIDebugError)initWithCode:(int64_t)code userInfo:(id)info
{
  v5.receiver = self;
  v5.super_class = AFUIDebugError;
  return [(AFUIDebugError *)&v5 initWithDomain:@"com.apple.siri.DebugErrorDomain" code:code userInfo:info];
}

@end