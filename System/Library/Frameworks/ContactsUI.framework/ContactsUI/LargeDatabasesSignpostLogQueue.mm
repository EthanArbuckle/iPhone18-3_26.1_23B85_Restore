@interface LargeDatabasesSignpostLogQueue
@end

@implementation LargeDatabasesSignpostLogQueue

void ___LargeDatabasesSignpostLogQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v0 = dispatch_queue_create("com.apple.ConditionInducer", v2);
  v1 = _LargeDatabasesSignpostLogQueue_cn_once_object_0;
  _LargeDatabasesSignpostLogQueue_cn_once_object_0 = v0;
}

@end