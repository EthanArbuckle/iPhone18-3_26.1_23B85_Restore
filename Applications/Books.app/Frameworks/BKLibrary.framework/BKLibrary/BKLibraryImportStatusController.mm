@interface BKLibraryImportStatusController
+ (id)sharedController;
- (BKLibraryImportStatusController)init;
- (void)completeImportOperation;
- (void)failImportOperation;
- (void)startImportOperation;
@end

@implementation BKLibraryImportStatusController

+ (id)sharedController
{
  if (qword_EFD78 != -1)
  {
    sub_91440();
  }

  v3 = qword_EFD80;

  return v3;
}

- (BKLibraryImportStatusController)init
{
  v17.receiver = self;
  v17.super_class = BKLibraryImportStatusController;
  v2 = [(BKLibraryImportStatusController *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iBooks.BKLibraryImportStatusController", 0);
    iVarQueue = v2->_iVarQueue;
    v2->_iVarQueue = v3;

    objc_initWeak(&location, v2);
    v5 = [BUCoalescingCallBlock alloc];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_5C81C;
    v14[3] = &unk_D56E0;
    objc_copyWeak(&v15, &location);
    v6 = [v5 initWithNotifyBlock:v14 blockDescription:@"BKLibraryImportStatusController statusChange"];
    coalescedStatusChange = v2->_coalescedStatusChange;
    v2->_coalescedStatusChange = v6;

    [(BUCoalescingCallBlock *)v2->_coalescedStatusChange setCoalescingDelay:1.0];
    [(BUCoalescingCallBlock *)v2->_coalescedStatusChange setMaximumDelay:1.0];
    v8 = [BUCoalescingCallBlock alloc];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_5C9B4;
    v12[3] = &unk_D56E0;
    objc_copyWeak(&v13, &location);
    v9 = [v8 initWithNotifyBlock:v12 blockDescription:@"BKLibraryImportStatusController zeroing"];
    coalescedZeroing = v2->_coalescedZeroing;
    v2->_coalescedZeroing = v9;

    [(BUCoalescingCallBlock *)v2->_coalescedZeroing setCoalescingDelay:30.0];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)startImportOperation
{
  iVarQueue = self->_iVarQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5CC10;
  block[3] = &unk_D5528;
  block[4] = self;
  dispatch_sync(iVarQueue, block);
  coalescedStatusChange = [(BKLibraryImportStatusController *)self coalescedStatusChange];
  [coalescedStatusChange signalWithCompletion:&stru_D7170];
}

- (void)completeImportOperation
{
  iVarQueue = self->_iVarQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5CCF4;
  block[3] = &unk_D5528;
  block[4] = self;
  dispatch_sync(iVarQueue, block);
  coalescedStatusChange = [(BKLibraryImportStatusController *)self coalescedStatusChange];
  [coalescedStatusChange signalWithCompletion:&stru_D7190];
}

- (void)failImportOperation
{
  iVarQueue = self->_iVarQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5CDD8;
  block[3] = &unk_D5528;
  block[4] = self;
  dispatch_sync(iVarQueue, block);
  coalescedStatusChange = [(BKLibraryImportStatusController *)self coalescedStatusChange];
  [coalescedStatusChange signalWithCompletion:&stru_D71B0];
}

@end