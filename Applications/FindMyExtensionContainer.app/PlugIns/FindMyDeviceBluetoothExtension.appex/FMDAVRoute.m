@interface FMDAVRoute
- (id)description;
@end

@implementation FMDAVRoute

- (id)description
{
  v3 = [(FMDAVRoute *)self routeID];
  v4 = [(FMDAVRoute *)self routeType];
  v5 = [(FMDAVRoute *)self routeSubType];
  v6 = [(FMDAVRoute *)self currentlyPicked];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v8 = [NSString stringWithFormat:@"Route ID: %@, Type: %@, Subtype: %@, CurrentlyPicked:%@", v3, v4, v5, v7];

  return v8;
}

@end