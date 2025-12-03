@interface HMExecuteTurnOffRequest
+ (id)executeRequestWithActionSet:(id)set;
@end

@implementation HMExecuteTurnOffRequest

+ (id)executeRequestWithActionSet:(id)set
{
  setCopy = set;
  v4 = [(HMExecuteRequest *)[HMExecuteTurnOffRequest alloc] initWithActionSet:setCopy];

  return v4;
}

@end