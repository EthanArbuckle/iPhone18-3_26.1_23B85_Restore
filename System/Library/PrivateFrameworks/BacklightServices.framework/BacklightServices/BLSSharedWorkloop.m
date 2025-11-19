@interface BLSSharedWorkloop
+ (id)serialQueueWithQOSClass:(unsigned int)a3 label:(const char *)a4;
+ (id)workloop;
+ (void)dispatchWithQOSClass:(unsigned int)a3 block:(id)a4;
@end

@implementation BLSSharedWorkloop

+ (id)workloop
{
  if (workloop_onceToken != -1)
  {
    +[BLSSharedWorkloop workloop];
  }

  v3 = _workloop;

  return v3;
}

uint64_t __29__BLSSharedWorkloop_workloop__block_invoke()
{
  _workloop = dispatch_workloop_create("BLSSharedWorkloop");

  return MEMORY[0x2821F96F8]();
}

+ (void)dispatchWithQOSClass:(unsigned int)a3 block:(id)a4
{
  block = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a3, 0, a4);
  v4 = +[BLSSharedWorkloop workloop];
  dispatch_async(v4, block);
}

+ (id)serialQueueWithQOSClass:(unsigned int)a3 label:(const char *)a4
{
  v5 = dispatch_queue_attr_make_with_qos_class(0, a3, 0);
  v6 = +[BLSSharedWorkloop workloop];
  v7 = dispatch_queue_create_with_target_V2(a4, v5, v6);

  return v7;
}

@end