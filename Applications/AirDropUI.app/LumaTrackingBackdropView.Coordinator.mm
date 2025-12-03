@interface LumaTrackingBackdropView.Coordinator
- (void)backgroundLumaView:(id)view didTransitionToLevel:(unint64_t)level;
@end

@implementation LumaTrackingBackdropView.Coordinator

- (void)backgroundLumaView:(id)view didTransitionToLevel:(unint64_t)level
{
  v4 = *self->onBackgroundLumaChanged;
  if (v4)
  {
    v6 = *&self->onBackgroundLumaChanged[8];

    sub_1000253F8(v4);
    v4(level);

    sub_10002534C(v4);
  }
}

@end