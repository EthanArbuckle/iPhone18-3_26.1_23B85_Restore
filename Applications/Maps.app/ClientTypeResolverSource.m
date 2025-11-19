@interface ClientTypeResolverSource
- (BOOL)typeIsValid:(int)a3;
@end

@implementation ClientTypeResolverSource

- (BOOL)typeIsValid:(int)a3
{
  v3 = *&a3;
  v4 = [(ClientTypeResolverSource *)self knownTypes];
  v5 = [NSNumber numberWithInt:v3];
  v6 = [v4 containsObject:v5];

  return v6;
}

@end