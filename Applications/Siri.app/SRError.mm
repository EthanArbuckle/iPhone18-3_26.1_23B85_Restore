@interface SRError
+ (id)errorWithCode:(int64_t)a3 localizedFailureReason:(id)a4;
+ (id)errorWithCode:(int64_t)a3 userInfo:(id)a4;
- (SRError)initWithCode:(int64_t)a3 localizedFailureReason:(id)a4;
@end

@implementation SRError

+ (id)errorWithCode:(int64_t)a3 userInfo:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithCode:a3 userInfo:v6];

  return v7;
}

+ (id)errorWithCode:(int64_t)a3 localizedFailureReason:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithCode:a3 localizedFailureReason:v6];

  return v7;
}

- (SRError)initWithCode:(int64_t)a3 localizedFailureReason:(id)a4
{
  v10 = NSLocalizedFailureReasonErrorKey;
  v11 = a4;
  v6 = a4;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  v8 = [(SRError *)self initWithCode:a3 userInfo:v7];
  return v8;
}

@end