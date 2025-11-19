@interface MSMainBundleIdentifier
@end

@implementation MSMainBundleIdentifier

void ___MSMainBundleIdentifier_block_invoke()
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v2 bundleIdentifier];
  v1 = _MSMainBundleIdentifier_bundleIdentifier;
  _MSMainBundleIdentifier_bundleIdentifier = v0;
}

@end