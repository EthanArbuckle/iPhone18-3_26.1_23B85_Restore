@interface CTAppDataUsage
- (id)description;
@end

@implementation CTAppDataUsage

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTAppDataUsage *)self bundleId];
  [v3 appendFormat:@", Bundle ID = %@", v4];

  v5 = [(CTAppDataUsage *)self displayName];
  [v3 appendFormat:@", Display Name = %@", v5];

  v6 = [(CTAppDataUsage *)self used];
  [v3 appendFormat:@", Data Used = %@", v6];

  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

@end