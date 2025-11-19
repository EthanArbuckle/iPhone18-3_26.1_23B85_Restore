@interface ACXStreamingZipSocketSender
+ (id)senderForURL:(id)a3 queue:(id)a4 writingUsingBlock:(id)a5;
- (ACXStreamingZipSocketSender)initWithURL:(id)a3 queue:(id)a4 writerBlock:(id)a5;
- (void)beginSendingWithCompletionBlock:(id)a3;
@end

@implementation ACXStreamingZipSocketSender

- (ACXStreamingZipSocketSender)initWithURL:(id)a3 queue:(id)a4 writerBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = ACXStreamingZipSocketSender;
  v12 = [(ACXStreamingZipSocketSender *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientQueue, a4);
    objc_storeStrong(&v13->_url, a3);
    v14 = objc_retainBlock(v11);
    writerBlock = v13->_writerBlock;
    v13->_writerBlock = v14;
  }

  return v13;
}

+ (id)senderForURL:(id)a3 queue:(id)a4 writingUsingBlock:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithURL:v9 queue:v8 writerBlock:v7];

  return v10;
}

- (void)beginSendingWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = qos_class_self();
  v6 = dispatch_get_global_queue(v5, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000590A8;
  v8[3] = &unk_10008E1A8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  sub_100005828(v6, v8);
}

@end