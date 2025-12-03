@interface HKSource(Workflow)
- (uint64_t)wf_sourceType;
@end

@implementation HKSource(Workflow)

- (uint64_t)wf_sourceType
{
  bundleIdentifier = [self bundleIdentifier];
  v2 = [bundleIdentifier hasPrefix:@"com.apple.health"];

  return v2 ^ 1u;
}

@end