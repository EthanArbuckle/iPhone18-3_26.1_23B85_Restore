@interface CRLChangeCoordinatorCachedShareState
- (void)shareStateUpdatedWithShare:(id)share;
@end

@implementation CRLChangeCoordinatorCachedShareState

- (void)shareStateUpdatedWithShare:(id)share
{
  v4 = *self->cachedShare;
  *self->cachedShare = share;
  shareCopy = share;

  v6 = sub_100BD5850(_swiftEmptyArrayStorage);
  swift_beginAccess();
  *self->handleToPermissionsLookup = v6;
}

@end