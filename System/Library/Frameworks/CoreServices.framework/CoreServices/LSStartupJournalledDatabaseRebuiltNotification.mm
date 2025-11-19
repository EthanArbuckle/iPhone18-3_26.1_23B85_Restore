@interface LSStartupJournalledDatabaseRebuiltNotification
@end

@implementation LSStartupJournalledDatabaseRebuiltNotification

void __69___LSStartupJournalledDatabaseRebuiltNotification_sharedNotification__block_invoke()
{
  v0 = objc_alloc_init(_LSStartupJournalledDatabaseRebuiltNotification);
  v1 = sharedNotification_instance;
  sharedNotification_instance = v0;
}

@end