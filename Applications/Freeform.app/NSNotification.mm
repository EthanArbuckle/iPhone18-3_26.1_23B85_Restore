@interface NSNotification
+ (id)CRLBoardDataStoreDidUpdateHierarchy;
+ (id)CRLSearchStringChanged;
@end

@implementation NSNotification

+ (id)CRLSearchStringChanged
{
  if (qword_1019F14A8 != -1)
  {
    swift_once();
  }

  v3 = qword_101AD61F8;

  return v3;
}

+ (id)CRLBoardDataStoreDidUpdateHierarchy
{
  if (qword_1019F2550 != -1)
  {
    swift_once();
  }

  v3 = qword_101AD8598;

  return v3;
}

@end