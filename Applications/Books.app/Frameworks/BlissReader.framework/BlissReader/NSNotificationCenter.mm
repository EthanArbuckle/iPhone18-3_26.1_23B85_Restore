@interface NSNotificationCenter
+ (id)notificationOperationQueue;
- (id)addBackgroundObserver:(id)a3 selector:(SEL)a4 name:(id)a5 object:(id)a6;
- (id)addNonBlockingObserver:(id)a3 selector:(SEL)a4 name:(id)a5 object:(id)a6;
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

- (id)addBackgroundObserver:(id)a3 selector:(SEL)a4 name:(id)a5 object:(id)a6
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_11DB30;
  v7[3] = &unk_45DC08;
  v7[4] = a3;
  v7[5] = a4;
  return -[NSNotificationCenter addObserverForName:object:queue:usingBlock:](self, "addObserverForName:object:queue:usingBlock:", a5, a6, [objc_opt_class() notificationOperationQueue], v7);
}

- (id)addNonBlockingObserver:(id)a3 selector:(SEL)a4 name:(id)a5 object:(id)a6
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_11DC08;
  v12[3] = &unk_45DC30;
  v12[5] = +[NSThread currentThread];
  v12[6] = a4;
  v12[4] = a3;
  return -[NSNotificationCenter addObserverForName:object:queue:usingBlock:](self, "addObserverForName:object:queue:usingBlock:", a5, a6, [objc_opt_class() notificationOperationQueue], v12);
}

@end