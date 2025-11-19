@interface ASDDispatchQueue
+ (ASDDispatchQueue)defaultQueue;
- (ASDDispatchQueue)init;
- (ASDDispatchQueue)initWithName:(id)a3;
- (ASDDispatchQueue)initWithQueue:(id)a3;
@end

@implementation ASDDispatchQueue

- (ASDDispatchQueue)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_get_global_queue(21, 0);
  v5 = dispatch_queue_create_with_target_V2("com.apple.appstored.DispatchQueue.default", v3, v4);
  v6 = [(ASDDispatchQueue *)self initWithQueue:v5];

  return v6;
}

- (ASDDispatchQueue)initWithName:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v12];

  v7 = [v6 UTF8String];
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create(v7, v8);
  v10 = [(ASDDispatchQueue *)self initWithQueue:v9];

  return v10;
}

- (ASDDispatchQueue)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASDDispatchQueue;
  v6 = [(ASDDispatchQueue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

+ (ASDDispatchQueue)defaultQueue
{
  if (_MergedGlobals_41 != -1)
  {
    dispatch_once(&_MergedGlobals_41, &__block_literal_global_16);
  }

  v3 = qword_1ED90D590;

  return v3;
}

uint64_t __32__ASDDispatchQueue_defaultQueue__block_invoke()
{
  qword_1ED90D590 = objc_alloc_init(ASDDispatchQueue);

  return MEMORY[0x1EEE66BB8]();
}

@end