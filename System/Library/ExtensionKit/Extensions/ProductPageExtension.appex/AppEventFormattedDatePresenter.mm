@interface AppEventFormattedDatePresenter
- (void)appExitedWhileAppeared;
@end

@implementation AppEventFormattedDatePresenter

- (void)appExitedWhileAppeared
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_updateTimer;
  v4 = *&self->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_updateTimer];

  if (v4)
  {
    [v4 invalidate];
    v5 = *&self->_TtCs12_SwiftObject_opaque[v3];
  }

  else
  {
    v5 = 0;
  }

  *&self->_TtCs12_SwiftObject_opaque[v3] = 0;
}

@end