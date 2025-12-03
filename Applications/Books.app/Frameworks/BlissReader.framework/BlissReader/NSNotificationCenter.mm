@interface NSNotificationCenter
+ (id)notificationOperationQueue;
- (id)addBackgroundObserver:(id)observer selector:(SEL)selector name:(id)name object:(id)object;
- (id)addNonBlockingObserver:(id)observer selector:(SEL)selector name:(id)name object:(id)object;
@end

@implementation NSNotificationCenter

+ (id)notificationOperationQueue
{
  if (qword_567890 != -1)
  {
    sub_29D0DC();
  }

  return qword_567888;
}

- (id)addBackgroundObserver:(id)observer selector:(SEL)selector name:(id)name object:(id)object
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_11DB30;
  v7[3] = &unk_45DC08;
  v7[4] = observer;
  v7[5] = selector;
  return -[NSNotificationCenter addObserverForName:object:queue:usingBlock:](self, "addObserverForName:object:queue:usingBlock:", name, object, [objc_opt_class() notificationOperationQueue], v7);
}

- (id)addNonBlockingObserver:(id)observer selector:(SEL)selector name:(id)name object:(id)object
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_11DC08;
  v12[3] = &unk_45DC30;
  v12[5] = +[NSThread currentThread];
  v12[6] = selector;
  v12[4] = observer;
  return -[NSNotificationCenter addObserverForName:object:queue:usingBlock:](self, "addObserverForName:object:queue:usingBlock:", name, object, [objc_opt_class() notificationOperationQueue], v12);
}

@end