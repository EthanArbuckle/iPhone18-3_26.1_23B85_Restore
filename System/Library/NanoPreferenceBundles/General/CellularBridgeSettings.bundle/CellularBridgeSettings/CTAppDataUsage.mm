@interface CTAppDataUsage
- (id)description;
@end

@implementation CTAppDataUsage

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  bundleId = [(CTAppDataUsage *)self bundleId];
  [v3 appendFormat:@", Bundle ID = %@", bundleId];

  displayName = [(CTAppDataUsage *)self displayName];
  [v3 appendFormat:@", Display Name = %@", displayName];

  used = [(CTAppDataUsage *)self used];
  [v3 appendFormat:@", Data Used = %@", used];

  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

@end