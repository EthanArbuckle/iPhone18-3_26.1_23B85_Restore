@interface ICRecentNotesController
+ (id)menuWithViewControllerManager:(id)manager;
- (ICRecentNotesController)init;
@end

@implementation ICRecentNotesController

+ (id)menuWithViewControllerManager:(id)manager
{
  managerCopy = manager;
  v4 = sub_10032E384(managerCopy);

  return v4;
}

- (ICRecentNotesController)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ICRecentNotesController *)&v3 init];
}

@end