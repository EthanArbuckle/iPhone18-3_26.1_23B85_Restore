@interface APSDiagnostic
+ (id)sharedInstance;
- (APSDiagnostic)init;
- (void)promptTapToRadarWithURL:(id)a3;
@end

@implementation APSDiagnostic

+ (id)sharedInstance
{
  if (qword_1001BF878 != -1)
  {
    sub_10010C5E4();
  }

  v3 = qword_1001BF870;

  return v3;
}

- (APSDiagnostic)init
{
  v8.receiver = self;
  v8.super_class = APSDiagnostic;
  v2 = [(APSDiagnostic *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.aps.diagnostic-queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = v2->_queue;
    v6 = dispatch_get_global_queue(-32768, 0);
    dispatch_set_target_queue(v5, v6);
  }

  return v2;
}

- (void)promptTapToRadarWithURL:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100097064;
  block[3] = &unk_100186D90;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

@end