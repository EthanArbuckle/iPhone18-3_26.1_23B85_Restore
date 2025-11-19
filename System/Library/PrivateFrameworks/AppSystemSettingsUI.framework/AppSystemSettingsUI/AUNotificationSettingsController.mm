@interface AUNotificationSettingsController
+ (id)sharedInstance;
- (AUNotificationSettingsController)init;
- (id)allSectionInfoIdentifiers;
- (void)dealloc;
@end

@implementation AUNotificationSettingsController

+ (id)sharedInstance
{
  if (sharedInstance___once[0] != -1)
  {
    +[AUNotificationSettingsController sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

uint64_t __50__AUNotificationSettingsController_sharedInstance__block_invoke()
{
  sharedInstance___instance = objc_alloc_init(AUNotificationSettingsController);

  return MEMORY[0x2821F96F8]();
}

- (AUNotificationSettingsController)init
{
  v8.receiver = self;
  v8.super_class = AUNotificationSettingsController;
  v2 = [(AUNotificationSettingsController *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.preferences.BBSettingsGateway", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [objc_alloc(MEMORY[0x277CF3580]) initWithQueue:v2->_queue];
    gateway = v2->_gateway;
    v2->_gateway = v5;
  }

  return v2;
}

- (void)dealloc
{
  [(BBSettingsGateway *)self->_gateway invalidate];
  v3.receiver = self;
  v3.super_class = AUNotificationSettingsController;
  [(AUNotificationSettingsController *)&v3 dealloc];
}

- (id)allSectionInfoIdentifiers
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [(BBSettingsGateway *)self->_gateway allSectionInfo];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) sectionID];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

@end