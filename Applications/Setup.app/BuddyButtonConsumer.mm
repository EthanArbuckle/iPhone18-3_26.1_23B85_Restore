@interface BuddyButtonConsumer
- (BuddyButtonConsumer)initWithButtonKind:(int64_t)kind handler:(id)handler;
- (void)dealloc;
@end

@implementation BuddyButtonConsumer

- (BuddyButtonConsumer)initWithButtonKind:(int64_t)kind handler:(id)handler
{
  selfCopy = self;
  v13 = a2;
  kindCopy = kind;
  location = 0;
  objc_storeStrong(&location, handler);
  v4 = selfCopy;
  selfCopy = 0;
  v10.receiver = v4;
  v10.super_class = BuddyButtonConsumer;
  v5 = [(BuddyButtonConsumer *)&v10 init];
  selfCopy = v5;
  objc_storeStrong(&selfCopy, v5);
  if (v5)
  {
    v6 = +[SBSHardwareButtonService sharedInstance];
    v7 = [(SBSHardwareButtonService *)v6 beginConsumingPressesForButtonKind:kindCopy eventConsumer:selfCopy priority:0];
    [selfCopy setButtonConsumer:v7];

    [selfCopy setMenuHandler:location];
  }

  v8 = selfCopy;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(BSInvalidatable *)self->_buttonConsumer invalidate];
  v2.receiver = selfCopy;
  v2.super_class = BuddyButtonConsumer;
  [(BuddyButtonConsumer *)&v2 dealloc];
}

@end