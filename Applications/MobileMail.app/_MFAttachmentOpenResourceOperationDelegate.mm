@interface _MFAttachmentOpenResourceOperationDelegate
- (_MFAttachmentOpenResourceOperationDelegate)initWithCompletionHandler:(id)a3;
- (void)openResourceOperationDidComplete:(id)a3;
@end

@implementation _MFAttachmentOpenResourceOperationDelegate

- (_MFAttachmentOpenResourceOperationDelegate)initWithCompletionHandler:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _MFAttachmentOpenResourceOperationDelegate;
  v5 = [(_MFAttachmentOpenResourceOperationDelegate *)&v18 init];
  if (v5)
  {
    v6 = +[EFPromise promise];
    promise = v5->_promise;
    v5->_promise = v6;

    v8 = [(EFPromise *)v5->_promise future];
    v9 = +[EFScheduler mainThreadScheduler];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100044EE4;
    v16[3] = &unk_10064C450;
    v10 = v4;
    v17 = v10;
    [v8 onScheduler:v9 addSuccessBlock:v16];

    v11 = [(EFPromise *)v5->_promise future];
    v12 = +[EFScheduler mainThreadScheduler];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100044EFC;
    v14[3] = &unk_10064C478;
    v15 = v10;
    [v11 onScheduler:v12 addFailureBlock:v14];
  }

  return v5;
}

- (void)openResourceOperationDidComplete:(id)a3
{
  promise = self->_promise;
  v4 = +[NSNull null];
  [(EFPromise *)promise finishWithResult:?];
}

@end