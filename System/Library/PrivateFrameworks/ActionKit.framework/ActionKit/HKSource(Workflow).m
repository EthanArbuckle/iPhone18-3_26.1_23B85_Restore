@interface HKSource(Workflow)
- (uint64_t)wf_sourceType;
@end

@implementation HKSource(Workflow)

- (uint64_t)wf_sourceType
{
  v1 = [a1 bundleIdentifier];
  v2 = [v1 hasPrefix:@"com.apple.health"];

  return v2 ^ 1u;
}

@end