@interface HMSettingsCreator
- (id)createSettingsWithOwner:(id)owner;
@end

@implementation HMSettingsCreator

- (id)createSettingsWithOwner:(id)owner
{
  ownerCopy = owner;
  v4 = [[HMSettings alloc] initWithSettingsOwner:ownerCopy];

  return v4;
}

@end