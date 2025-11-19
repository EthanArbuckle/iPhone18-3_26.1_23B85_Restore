@interface VLFSessionTaskUserState
- (void)setOriginalUserTrackingBehavior:(id *)a3;
@end

@implementation VLFSessionTaskUserState

- (void)setOriginalUserTrackingBehavior:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_originalUserTrackingBehavior.shouldPreserveUserSpecifiedZoomLevel = *&a3->var2;
  *&self->_originalUserTrackingBehavior.shouldZoomToFit = v3;
}

@end