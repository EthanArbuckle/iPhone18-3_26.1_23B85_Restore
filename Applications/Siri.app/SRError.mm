@interface SRError
+ (id)errorWithCode:(int64_t)code localizedFailureReason:(id)reason;
+ (id)errorWithCode:(int64_t)code userInfo:(id)info;
- (SRError)initWithCode:(int64_t)code localizedFailureReason:(id)reason;
@end

@implementation SRError

+ (id)errorWithCode:(int64_t)code userInfo:(id)info
{
  infoCopy = info;
  v7 = [[self alloc] initWithCode:code userInfo:infoCopy];

  return v7;
}

+ (id)errorWithCode:(int64_t)code localizedFailureReason:(id)reason
{
  reasonCopy = reason;
  v7 = [[self alloc] initWithCode:code localizedFailureReason:reasonCopy];

  return v7;
}

- (SRError)initWithCode:(int64_t)code localizedFailureReason:(id)reason
{
  v10 = NSLocalizedFailureReasonErrorKey;
  reasonCopy = reason;
  reasonCopy2 = reason;
  v7 = [NSDictionary dictionaryWithObjects:&reasonCopy forKeys:&v10 count:1];

  v8 = [(SRError *)self initWithCode:code userInfo:v7];
  return v8;
}

@end