@interface CRLChangeCoordinatorCachedShareState
- (void)shareStateUpdatedWithShare:(id)a3;
@end

@implementation CRLChangeCoordinatorCachedShareState

- (void)shareStateUpdatedWithShare:(id)a3
{
  v4 = *self->cachedShare;
  *self->cachedShare = a3;
  v5 = a3;

  v6 = sub_100BD5850(_swiftEmptyArrayStorage);
  swift_beginAccess();
  *self->handleToPermissionsLookup = v6;
}

@end