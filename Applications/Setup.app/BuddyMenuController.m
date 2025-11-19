@interface BuddyMenuController
+ (BOOL)_useSideButton;
+ (id)menuButtonConsumerWithHandler:(id)a3;
- (BuddyMenuController)initWithHandler:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BuddyMenuController

+ (BOOL)_useSideButton
{
  v2 = [BYDevice currentDevice:a2];
  v3 = ([v2 hasHomeButton] & 1) == 0;

  return v3;
}

+ (id)menuButtonConsumerWithHandler:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [BuddyMenuController alloc];
  v6 = [(BuddyMenuController *)v3 initWithHandler:location[0]];
  v4 = v6;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v4;
}

- (BuddyMenuController)initWithHandler:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v16;
  v16 = 0;
  v14.receiver = v3;
  v14.super_class = BuddyMenuController;
  v4 = [(BuddyMenuController *)&v14 init];
  v16 = v4;
  objc_storeStrong(&v16, v4);
  if (v4)
  {
    obj = objc_opt_new();
    if ([objc_opt_class() _useSideButton])
    {
      v5 = [BuddyLongPressButtonConsumer alloc];
      v12 = [(BuddyButtonConsumer *)v5 initWithButtonKind:2 handler:location[0]];
      [obj addObject:v12];
      v6 = location[0];
      location[0] = 0;

      objc_storeStrong(&v12, 0);
    }

    v7 = [BuddySinglePressUpButtonConsumer alloc];
    v8 = [(BuddyButtonConsumer *)v7 initWithButtonKind:1 handler:location[0]];
    [obj addObject:{v8, v8}];
    objc_storeStrong(v16 + 1, obj);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&obj, 0);
  }

  v9 = v16;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v16, 0);
  return v9;
}

- (void)invalidate
{
  v10 = self;
  v9 = a2;
  memset(v7, 0, sizeof(v7));
  v2 = v10->_consumers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v7[2];
    do
    {
      for (i = 0; i < v3; ++i)
      {
        if (*v7[2] != v4)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(v7[1] + 8 * i);
        v6 = [v8 buttonConsumer];
        [v6 invalidate];
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:v7 objects:v11 count:16];
    }

    while (v3);
  }

  objc_storeStrong(&v10->_consumers, 0);
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(BuddyMenuController *)self invalidate];
  v2.receiver = v4;
  v2.super_class = BuddyMenuController;
  [(BuddyMenuController *)&v2 dealloc];
}

@end