@interface PKUISSBannerPresentableProvider
- (BOOL)shouldRevokeCurrentRequestForManager:(id)manager;
- (id)nextRequestForManager:(id)manager;
@end

@implementation PKUISSBannerPresentableProvider

- (BOOL)shouldRevokeCurrentRequestForManager:(id)manager
{
  _currentRequest = [manager _currentRequest];
  v5 = _currentRequest;
  if (_currentRequest)
  {
    context = [_currentRequest context];
    if (context)
    {
      v7 = context[7];
      if (self->_requestedExpressHandle)
      {
        v8 = v7 != 0;
      }

      else
      {
        if (self->_requestedFaceIDContext)
        {
          v9 = v7 > 1;
        }

        else
        {
          v9 = 0;
        }

        v8 = v9;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)nextRequestForManager:(id)manager
{
  managerCopy = manager;
  while (1)
  {
    requestedExpressHandle = self->_requestedExpressHandle;
    if (requestedExpressHandle)
    {
      v7 = requestedExpressHandle;
      v8 = self->_requestedExpressHandle;
      self->_requestedExpressHandle = 0;

      v9 = sub_1000038C4([PKUISSPresentableContext alloc], v7);
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1000044E0;
      v33[3] = &unk_10000C4C0;
      v34 = v7;
      v10 = v9;
      v35 = v10;
      firstObject = v7;
      v12 = objc_retainBlock(v33);

      v13 = &v34;
LABEL_8:

      goto LABEL_9;
    }

    requestedFaceIDContext = self->_requestedFaceIDContext;
    if (requestedFaceIDContext)
    {
      v15 = requestedFaceIDContext->_effectiveHandle;
      v16 = self->_requestedFaceIDContext;
      v17 = self->_requestedFaceIDContext;
      self->_requestedFaceIDContext = 0;

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100004534;
      v30[3] = &unk_10000C4C0;
      v31 = v15;
      v10 = v16;
      v32 = v10;
      firstObject = v15;
      v12 = objc_retainBlock(v30);

      v13 = &v31;
      goto LABEL_8;
    }

    firstObject = [(NSMutableArray *)self->_standaloneTransactonHandles firstObject];
    if (firstObject)
    {
      [(NSMutableArray *)self->_standaloneTransactonHandles removeObjectAtIndex:0];
      v10 = sub_1000038C4([PKUISSPresentableContext alloc], firstObject);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100004588;
      v28[3] = &unk_10000C4E8;
      firstObject = firstObject;
      v29 = firstObject;
      v12 = objc_retainBlock(v28);
      v13 = &v29;
      goto LABEL_8;
    }

    v12 = 0;
    v10 = 0;
LABEL_9:

    if (!v10)
    {
      break;
    }

    v18 = objc_alloc_init(PKBannerPresentableConfiguration);
    [v18 setFactory:v12];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100005E90;
    v26[3] = &unk_10000C510;
    v19 = v10;
    v27 = v19;
    [v18 setDidStartHandler:v26];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100005E98;
    v24[3] = &unk_10000C538;
    v20 = v19;
    v25 = v20;
    [v18 setDidFinishHandler:v24];
    v21 = [managerCopy _createPresentableWithConfiguration:v18];
    if (v21)
    {
      v22 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v37 = v21;
        v38 = 2048;
        v39 = v20;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "PKUISSBannerPresentableProvider: created presentable %p for context %p.", buf, 0x16u);
      }

      v3 = [PKBannerPresentableRequest createWithPresentable:v21 context:v20];
    }

    else
    {
      sub_100005D10(v20);
    }

    if (v21)
    {
      goto LABEL_19;
    }
  }

  v3 = 0;
LABEL_19:

  return v3;
}

@end