@interface LumaTrackingBackdropView.Coordinator
- (void)backgroundLumaView:(id)a3 didTransitionToLevel:(unint64_t)a4;
@end

@implementation LumaTrackingBackdropView.Coordinator

- (void)backgroundLumaView:(id)a3 didTransitionToLevel:(unint64_t)a4
{
  v4 = *self->onBackgroundLumaChanged;
  if (v4)
  {
    v6 = *&self->onBackgroundLumaChanged[8];

    sub_1000253F8(v4);
    v4(a4);

    sub_10002534C(v4);
  }
}

@end