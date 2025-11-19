@interface IMConfigurationPredicateValuePair
- (id)description;
@end

@implementation IMConfigurationPredicateValuePair

- (id)description
{
  v3 = [(IMConfigurationPredicateValuePair *)self predicate];
  v4 = [v3 description];
  v5 = [(IMConfigurationPredicateValuePair *)self value];
  v6 = [v5 description];
  v7 = [NSString stringWithFormat:@"{%@ -> %@}", v4, v6];

  return v7;
}

@end