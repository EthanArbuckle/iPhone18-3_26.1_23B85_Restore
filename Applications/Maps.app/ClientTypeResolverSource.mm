@interface ClientTypeResolverSource
- (BOOL)typeIsValid:(int)valid;
@end

@implementation ClientTypeResolverSource

- (BOOL)typeIsValid:(int)valid
{
  v3 = *&valid;
  knownTypes = [(ClientTypeResolverSource *)self knownTypes];
  v5 = [NSNumber numberWithInt:v3];
  v6 = [knownTypes containsObject:v5];

  return v6;
}

@end