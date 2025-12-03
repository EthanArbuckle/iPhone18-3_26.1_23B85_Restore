@interface IMConfigurationPredicateValuePair
- (id)description;
@end

@implementation IMConfigurationPredicateValuePair

- (id)description
{
  predicate = [(IMConfigurationPredicateValuePair *)self predicate];
  v4 = [predicate description];
  value = [(IMConfigurationPredicateValuePair *)self value];
  v6 = [value description];
  v7 = [NSString stringWithFormat:@"{%@ -> %@}", v4, v6];

  return v7;
}

@end