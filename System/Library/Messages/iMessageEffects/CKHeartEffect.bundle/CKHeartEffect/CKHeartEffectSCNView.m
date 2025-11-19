@interface CKHeartEffectSCNView
- (void)_enterBackground:(id)a3;
@end

@implementation CKHeartEffectSCNView

- (void)_enterBackground:(id)a3
{
  if (!self->_enableBackgroundRendering)
  {
    v3.receiver = self;
    v3.super_class = CKHeartEffectSCNView;
    [(CKHeartEffectSCNView *)&v3 _enterBackground:a3];
  }
}

@end