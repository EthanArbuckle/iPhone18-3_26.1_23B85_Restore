@interface NSSet(ACTrackingSet)
+ (id)setWithTrackedSet:()ACTrackingSet;
- (uint64_t)initWithTrackedSet:()ACTrackingSet;
@end

@implementation NSSet(ACTrackingSet)

+ (id)setWithTrackedSet:()ACTrackingSet
{
  v4 = a3;
  if (!v4)
  {
    +[NSSet(ACTrackingSet) setWithTrackedSet:];
  }

  v5 = [[a1 alloc] initWithTrackedSet:v4];

  return v5;
}

- (uint64_t)initWithTrackedSet:()ACTrackingSet
{
  v4 = a3;
  if (!v4)
  {
    [NSSet(ACTrackingSet) initWithTrackedSet:];
  }

  v5 = [v4[1] copy];
  v6 = [a1 initWithSet:v5];

  return v6;
}

+ (void)setWithTrackedSet:()ACTrackingSet .cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"trackedSet" object:? file:? lineNumber:? description:?];
}

- (void)initWithTrackedSet:()ACTrackingSet .cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"trackedSet" object:? file:? lineNumber:? description:?];
}

@end