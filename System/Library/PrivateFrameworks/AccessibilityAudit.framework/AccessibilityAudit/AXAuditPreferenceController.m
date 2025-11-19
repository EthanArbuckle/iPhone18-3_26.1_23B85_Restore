@interface AXAuditPreferenceController
+ (AXAuditPreferenceController)sharedController;
- (AXAuditPreferenceController)init;
- (BOOL)spinRunloop;
- (void)dealloc;
@end

@implementation AXAuditPreferenceController

+ (AXAuditPreferenceController)sharedController
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__AXAuditPreferenceController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedController_once != -1)
  {
    dispatch_once(&sharedController_once, block);
  }

  v2 = sharedController_sharedInstance;

  return v2;
}

uint64_t __47__AXAuditPreferenceController_sharedController__block_invoke(uint64_t a1)
{
  sharedController_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (AXAuditPreferenceController)init
{
  v6.receiver = self;
  v6.super_class = AXAuditPreferenceController;
  v2 = [(AXAuditPreferenceController *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    preferenceDictionary = v2->_preferenceDictionary;
    v2->_preferenceDictionary = v3;
  }

  return v2;
}

- (void)dealloc
{
  preferenceDictionary = self->_preferenceDictionary;
  self->_preferenceDictionary = 0;

  v4.receiver = self;
  v4.super_class = AXAuditPreferenceController;
  [(AXAuditPreferenceController *)&v4 dealloc];
}

- (BOOL)spinRunloop
{
  v3 = [(AXAuditPreferenceController *)self preferenceDictionary];
  v4 = [v3 objectForKey:@"spinRunloop"];
  if (v4)
  {
    v5 = [(AXAuditPreferenceController *)self preferenceDictionary];
    v6 = [v5 objectForKeyedSubscript:@"spinRunloop"];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end