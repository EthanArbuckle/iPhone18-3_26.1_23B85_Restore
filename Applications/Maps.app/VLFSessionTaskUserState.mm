@interface VLFSessionTaskUserState
- (void)setOriginalUserTrackingBehavior:(id *)behavior;
@end

@implementation VLFSessionTaskUserState

- (void)setOriginalUserTrackingBehavior:(id *)behavior
{
  v3 = *&behavior->var0;
  *&self->_originalUserTrackingBehavior.shouldPreserveUserSpecifiedZoomLevel = *&behavior->var2;
  *&self->_originalUserTrackingBehavior.shouldZoomToFit = v3;
}

@end