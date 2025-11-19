@interface NSManagedObjectContext
- (id)addObjectsDidChangeNotificationObserver:(id)a3;
@end

@implementation NSManagedObjectContext

- (id)addObjectsDidChangeNotificationObserver:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  v7 = sub_100087918(sub_10006894C, v5);

  return v7;
}

@end