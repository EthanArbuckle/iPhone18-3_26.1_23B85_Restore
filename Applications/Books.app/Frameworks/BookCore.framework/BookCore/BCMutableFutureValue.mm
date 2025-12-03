@interface BCMutableFutureValue
- (void)set:(id)set error:(id)error;
@end

@implementation BCMutableFutureValue

- (void)set:(id)set error:(id)error
{
  setCopy = set;
  errorCopy = error;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_160FC0;
  v24 = sub_160FD0;
  v25 = 0;
  sync = [(BCFutureValue *)self sync];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_16315C;
  v15 = &unk_2C96C8;
  selfCopy = self;
  v9 = setCopy;
  v17 = v9;
  v10 = errorCopy;
  v18 = v10;
  v19 = &v20;
  dispatch_sync(sync, &v12);

  v11 = v21[5];
  if (v11)
  {
    [(BCFutureValue *)self _notifyBlocks:v11 withValue:v9 error:v10, v12, v13, v14, v15, selfCopy, v17];
  }

  _Block_object_dispose(&v20, 8);
}

@end