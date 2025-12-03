@interface ApproverLocalNotificationTask
- (ApproverLocalNotificationTask)initWithRequest:(id)request;
- (id)perform;
@end

@implementation ApproverLocalNotificationTask

- (ApproverLocalNotificationTask)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = ApproverLocalNotificationTask;
  v6 = [(ApproverLocalNotificationTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
  }

  return v7;
}

- (id)perform
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000247C;
  v4[3] = &unk_100054C08;
  v4[4] = self;
  v2 = [(ApproverLocalNotificationTask *)self performBinaryTaskWithBlock:v4];

  return v2;
}

@end