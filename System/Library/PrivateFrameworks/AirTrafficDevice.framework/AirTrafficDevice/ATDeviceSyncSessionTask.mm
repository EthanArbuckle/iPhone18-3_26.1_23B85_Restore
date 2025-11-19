@interface ATDeviceSyncSessionTask
- (ATDeviceSyncSessionTask)initWithDataClass:(id)a3 onMessageLink:(id)a4;
- (void)messageLink:(id)a3 didReceiveRequest:(id)a4;
- (void)updateProgressWithCount:(unint64_t)a3 totalItemCount:(unint64_t)a4;
@end

@implementation ATDeviceSyncSessionTask

- (void)messageLink:(id)a3 didReceiveRequest:(id)a4
{
  v4.receiver = self;
  v4.super_class = ATDeviceSyncSessionTask;
  [(ATDeviceSyncSessionTask *)&v4 doesNotRecognizeSelector:a2, a4];
}

- (void)updateProgressWithCount:(unint64_t)a3 totalItemCount:(unint64_t)a4
{
  [(ATSessionTask *)self setCompletedItemCount:?];
  [(ATSessionTask *)self setTotalItemCount:a4];
  if (a4)
  {
    v7 = a3 / a4;
  }

  else
  {
    v7 = 0.0;
  }

  [(ATSessionTask *)self setProgress:v7];
}

- (ATDeviceSyncSessionTask)initWithDataClass:(id)a3 onMessageLink:(id)a4
{
  v7 = a4;
  v17.receiver = self;
  v17.super_class = ATDeviceSyncSessionTask;
  v8 = [(ATSessionTask *)&v17 initWithDataClass:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_messageLink, a4);
    v10 = [v7 identifier];
    linkIdentifier = v9->_linkIdentifier;
    v9->_linkIdentifier = v10;

    v12 = objc_opt_class();
    Name = class_getName(v12);
    v14 = dispatch_queue_create(Name, 0);
    queue = v9->_queue;
    v9->_queue = v14;
  }

  return v9;
}

@end