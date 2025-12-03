@interface ACXStreamingZipSocketSender
+ (id)senderForURL:(id)l queue:(id)queue writingUsingBlock:(id)block;
- (ACXStreamingZipSocketSender)initWithURL:(id)l queue:(id)queue writerBlock:(id)block;
- (void)beginSendingWithCompletionBlock:(id)block;
@end

@implementation ACXStreamingZipSocketSender

- (ACXStreamingZipSocketSender)initWithURL:(id)l queue:(id)queue writerBlock:(id)block
{
  lCopy = l;
  queueCopy = queue;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = ACXStreamingZipSocketSender;
  v12 = [(ACXStreamingZipSocketSender *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientQueue, queue);
    objc_storeStrong(&v13->_url, l);
    v14 = objc_retainBlock(blockCopy);
    writerBlock = v13->_writerBlock;
    v13->_writerBlock = v14;
  }

  return v13;
}

+ (id)senderForURL:(id)l queue:(id)queue writingUsingBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  lCopy = l;
  v10 = [objc_alloc(objc_opt_class()) initWithURL:lCopy queue:queueCopy writerBlock:blockCopy];

  return v10;
}

- (void)beginSendingWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = qos_class_self();
  v6 = dispatch_get_global_queue(v5, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000590A8;
  v8[3] = &unk_10008E1A8;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  sub_100005828(v6, v8);
}

@end