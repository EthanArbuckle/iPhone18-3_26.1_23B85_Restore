@interface BluetoothScanController
- (id)checkPresence;
- (void)start;
@end

@implementation BluetoothScanController

- (void)start
{
  checkPresence = [(BluetoothScanController *)self checkPresence];
  if (([(BluetoothScanController *)self isCancelled]& 1) == 0)
  {
    result = [(BluetoothScanController *)self result];
    [result setStatusCode:checkPresence];
  }

  [(BluetoothScanController *)self setFinished:1];
}

- (id)checkPresence
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100001128;
  v17 = sub_100001138;
  v18 = &off_100008538;
  v3 = objc_autoreleasePoolPush();
  v4 = dispatch_semaphore_create(0);
  v5 = dispatch_queue_create([@"com.apple.Diagnostics.DABluetooth" UTF8String], 0);
  v6 = objc_alloc_init(OSDBluetooth);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001140;
  v10[3] = &unk_100008278;
  v10[4] = self;
  v12 = &v13;
  v7 = v4;
  v11 = v7;
  [(OSDBluetooth *)v6 performScanOnQueue:v5 timeout:v10 gracePeriod:10.0 completionBlock:2.0];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);

  objc_autoreleasePoolPop(v3);
  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

@end