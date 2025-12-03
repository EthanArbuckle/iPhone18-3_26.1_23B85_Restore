@interface NSManagedObjectContext
- (id)addObjectsDidChangeNotificationObserver:(id)observer;
@end

@implementation NSManagedObjectContext

- (id)addObjectsDidChangeNotificationObserver:(id)observer
{
  v4 = _Block_copy(observer);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  v7 = sub_100087918(sub_10006894C, v5);

  return v7;
}

@end