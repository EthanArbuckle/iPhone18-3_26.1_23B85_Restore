@interface ICRecentNotesController
+ (id)menuWithViewControllerManager:(id)a3;
- (ICRecentNotesController)init;
@end

@implementation ICRecentNotesController

+ (id)menuWithViewControllerManager:(id)a3
{
  v3 = a3;
  v4 = sub_10032E384(v3);

  return v4;
}

- (ICRecentNotesController)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ICRecentNotesController *)&v3 init];
}

@end