@interface BCMutableFutureValue
- (void)set:(id)a3 error:(id)a4;
@end

@implementation BCMutableFutureValue

- (void)set:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_160FC0;
  v24 = sub_160FD0;
  v25 = 0;
  v8 = [(BCFutureValue *)self sync];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_16315C;
  v15 = &unk_2C96C8;
  v16 = self;
  v9 = v6;
  v17 = v9;
  v10 = v7;
  v18 = v10;
  v19 = &v20;
  dispatch_sync(v8, &v12);

  v11 = v21[5];
  if (v11)
  {
    [(BCFutureValue *)self _notifyBlocks:v11 withValue:v9 error:v10, v12, v13, v14, v15, v16, v17];
  }

  _Block_object_dispose(&v20, 8);
}

@end