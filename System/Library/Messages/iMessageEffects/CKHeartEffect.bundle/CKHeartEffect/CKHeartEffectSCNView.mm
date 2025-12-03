@interface CKHeartEffectSCNView
- (void)_enterBackground:(id)background;
@end

@implementation CKHeartEffectSCNView

- (void)_enterBackground:(id)background
{
  if (!self->_enableBackgroundRendering)
  {
    v3.receiver = self;
    v3.super_class = CKHeartEffectSCNView;
    [(CKHeartEffectSCNView *)&v3 _enterBackground:background];
  }
}

@end