@interface _LSStartupJournalledDatabaseRebuiltNotification
+ (id)sharedNotification;
@end

@implementation _LSStartupJournalledDatabaseRebuiltNotification

+ (id)sharedNotification
{
  if (sharedNotification_onceToken != -1)
  {
    +[_LSStartupJournalledDatabaseRebuiltNotification sharedNotification];
  }

  v3 = sharedNotification_instance;

  return v3;
}

@end