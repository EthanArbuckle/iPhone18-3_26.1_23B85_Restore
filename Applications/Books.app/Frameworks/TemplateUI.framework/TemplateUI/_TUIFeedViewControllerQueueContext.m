@interface _TUIFeedViewControllerQueueContext
- (_TUIFeedViewControllerQueueContext)init;
@end

@implementation _TUIFeedViewControllerQueueContext

- (_TUIFeedViewControllerQueueContext)init
{
  v16.receiver = self;
  v16.super_class = _TUIFeedViewControllerQueueContext;
  v2 = [(_TUIFeedViewControllerQueueContext *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);
    v5 = dispatch_queue_create("_TUIFeedViewControllerQueueContext.callbackQueue", v4);
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INTERACTIVE, 0);
    v9 = dispatch_queue_create_with_target_V2("_TUIFeedViewControllerQueueContext.userInteractiveCallbackQueue", v8, *(v2 + 1));
    v10 = *(v2 + 2);
    *(v2 + 2) = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INITIATED, 0);
    v13 = dispatch_queue_create_with_target_V2("_TUIFeedViewControllerQueueContext.userInitiatedCallbackQueue", v12, *(v2 + 1));
    v14 = *(v2 + 3);
    *(v2 + 3) = v13;
  }

  return v2;
}

@end