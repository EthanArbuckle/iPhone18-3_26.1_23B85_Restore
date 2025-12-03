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
  block[4] = self;
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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    preferenceDictionary = v2->_preferenceDictionary;
    v2->_preferenceDictionary = dictionary;
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
  preferenceDictionary = [(AXAuditPreferenceController *)self preferenceDictionary];
  v4 = [preferenceDictionary objectForKey:@"spinRunloop"];
  if (v4)
  {
    preferenceDictionary2 = [(AXAuditPreferenceController *)self preferenceDictionary];
    v6 = [preferenceDictionary2 objectForKeyedSubscript:@"spinRunloop"];
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end