@interface ATDeviceSyncSessionTask
- (ATDeviceSyncSessionTask)initWithDataClass:(id)class onMessageLink:(id)link;
- (void)messageLink:(id)link didReceiveRequest:(id)request;
- (void)updateProgressWithCount:(unint64_t)count totalItemCount:(unint64_t)itemCount;
@end

@implementation ATDeviceSyncSessionTask

- (void)messageLink:(id)link didReceiveRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = ATDeviceSyncSessionTask;
  [(ATDeviceSyncSessionTask *)&v4 doesNotRecognizeSelector:a2, request];
}

- (void)updateProgressWithCount:(unint64_t)count totalItemCount:(unint64_t)itemCount
{
  [(ATSessionTask *)self setCompletedItemCount:?];
  [(ATSessionTask *)self setTotalItemCount:itemCount];
  if (itemCount)
  {
    v7 = count / itemCount;
  }

  else
  {
    v7 = 0.0;
  }

  [(ATSessionTask *)self setProgress:v7];
}

- (ATDeviceSyncSessionTask)initWithDataClass:(id)class onMessageLink:(id)link
{
  linkCopy = link;
  v17.receiver = self;
  v17.super_class = ATDeviceSyncSessionTask;
  v8 = [(ATSessionTask *)&v17 initWithDataClass:class];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_messageLink, link);
    identifier = [linkCopy identifier];
    linkIdentifier = v9->_linkIdentifier;
    v9->_linkIdentifier = identifier;

    v12 = objc_opt_class();
    Name = class_getName(v12);
    v14 = dispatch_queue_create(Name, 0);
    queue = v9->_queue;
    v9->_queue = v14;
  }

  return v9;
}

@end