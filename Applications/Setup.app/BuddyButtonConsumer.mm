@interface BuddyButtonConsumer
- (BuddyButtonConsumer)initWithButtonKind:(int64_t)a3 handler:(id)a4;
- (void)dealloc;
@end

@implementation BuddyButtonConsumer

- (BuddyButtonConsumer)initWithButtonKind:(int64_t)a3 handler:(id)a4
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v14;
  v14 = 0;
  v10.receiver = v4;
  v10.super_class = BuddyButtonConsumer;
  v5 = [(BuddyButtonConsumer *)&v10 init];
  v14 = v5;
  objc_storeStrong(&v14, v5);
  if (v5)
  {
    v6 = +[SBSHardwareButtonService sharedInstance];
    v7 = [(SBSHardwareButtonService *)v6 beginConsumingPressesForButtonKind:v12 eventConsumer:v14 priority:0];
    [v14 setButtonConsumer:v7];

    [v14 setMenuHandler:location];
  }

  v8 = v14;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v14, 0);
  return v8;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(BSInvalidatable *)self->_buttonConsumer invalidate];
  v2.receiver = v4;
  v2.super_class = BuddyButtonConsumer;
  [(BuddyButtonConsumer *)&v2 dealloc];
}

@end