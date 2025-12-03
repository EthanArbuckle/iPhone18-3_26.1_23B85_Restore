@interface MapsDragAndDropManager
+ (id)sharedManager;
- (BOOL)canStartNewDrag;
- (BOOL)deviceSupportsDragAndDrop;
@end

@implementation MapsDragAndDropManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040280;
  block[3] = &unk_1016611D0;
  block[4] = self;
  if (qword_10195DDA8 != -1)
  {
    dispatch_once(&qword_10195DDA8, block);
  }

  v2 = qword_10195DDA0;

  return v2;
}

- (BOOL)deviceSupportsDragAndDrop
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (BOOL)canStartNewDrag
{
  dragSession = [(MapsDragAndDropManager *)self dragSession];
  v3 = dragSession == 0;

  return v3;
}

@end