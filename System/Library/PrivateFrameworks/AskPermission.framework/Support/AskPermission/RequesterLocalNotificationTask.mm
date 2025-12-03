@interface RequesterLocalNotificationTask
- (RequesterLocalNotificationTask)initWithRequest:(id)request;
- (id)perform;
@end

@implementation RequesterLocalNotificationTask

- (RequesterLocalNotificationTask)initWithRequest:(id)request
{
  v7.receiver = self;
  v7.super_class = RequesterLocalNotificationTask;
  v4 = [(RequesterLocalNotificationTask *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_request, request);
  }

  return v5;
}

- (id)perform
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001C308;
  v4[3] = &unk_100054C08;
  v4[4] = self;
  v2 = [(RequesterLocalNotificationTask *)self performBinaryTaskWithBlock:v4];

  return v2;
}

@end