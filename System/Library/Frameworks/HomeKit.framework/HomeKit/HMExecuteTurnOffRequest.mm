@interface HMExecuteTurnOffRequest
+ (id)executeRequestWithActionSet:(id)a3;
@end

@implementation HMExecuteTurnOffRequest

+ (id)executeRequestWithActionSet:(id)a3
{
  v3 = a3;
  v4 = [(HMExecuteRequest *)[HMExecuteTurnOffRequest alloc] initWithActionSet:v3];

  return v4;
}

@end