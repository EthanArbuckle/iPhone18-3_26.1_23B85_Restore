@interface NSArray(GameplayKit)
- (id)shuffledArray;
@end

@implementation NSArray(GameplayKit)

- (id)shuffledArray
{
  v2 = +[GKRandomSource sharedRandom];
  v3 = [a1 shuffledArrayWithRandomSource:v2];

  return v3;
}

@end