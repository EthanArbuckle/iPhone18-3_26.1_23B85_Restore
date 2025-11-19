@interface CatalystSiwaPurchaseTask
- (CatalystSiwaPurchaseTask)initWithPurchase:(id)a3 client:(id)a4 dialogContext:(id)a5 paymentSheetDelegate:(id)a6;
- (id)_performPurchase;
- (void)main;
@end

@implementation CatalystSiwaPurchaseTask

- (CatalystSiwaPurchaseTask)initWithPurchase:(id)a3 client:(id)a4 dialogContext:(id)a5 paymentSheetDelegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CatalystSiwaPurchaseTask;
  v15 = [(Task *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_purchase, a3);
    objc_storeStrong(&v16->_client, a4);
    objc_storeStrong(&v16->_dialogContext, a5);
    objc_storeWeak(&v16->_paymentSheetDelegate, v14);
  }

  return v16;
}

- (void)main
{
  if (self->_client)
  {
    v3 = 0;
  }

  else
  {
    v3 = ASDErrorWithDescription();
  }

  if (!self->_purchase)
  {
    v4 = ASDErrorWithDescription();

    v3 = v4;
    if (v4)
    {
      goto LABEL_6;
    }

LABEL_8:
    v5 = [(CatalystSiwaPurchaseTask *)self _performPurchase];
    v15 = 0;
    v6 = [v5 resultWithError:&v15];
    v3 = v15;

    objc_storeStrong(&self->_purchaseResult, v6);
    if (self->_purchaseResult)
    {
      if (qword_1003D3AB8 != -1)
      {
        sub_1002C7798();
      }

      v7 = qword_1003D3A88;
      if (os_log_type_enabled(qword_1003D3A88, OS_LOG_TYPE_DEFAULT))
      {
        purchase = self->_purchase;
        v9 = v7;
        v10 = [(AMSPurchaseSIWA *)purchase logUUID];
        *buf = 138543618;
        v17 = self;
        v18 = 2114;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Purchase completed.", buf, 0x16u);
      }

      if (v3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v3)
      {
        if (qword_1003D3AB8 != -1)
        {
          sub_1002C7798();
        }

        v11 = qword_1003D3A88;
        if (os_log_type_enabled(qword_1003D3A88, OS_LOG_TYPE_DEFAULT))
        {
          v12 = self->_purchase;
          v13 = v11;
          v14 = [(AMSPurchaseSIWA *)v12 logUUID];
          *buf = 138543874;
          v17 = self;
          v18 = 2114;
          v19 = v14;
          v20 = 2112;
          v21 = v3;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: Purchase resulted in error: %@.", buf, 0x20u);
        }

        goto LABEL_14;
      }

      v3 = ASDErrorWithDescription();
      if (v3)
      {
LABEL_14:
        [(Task *)self completeWithError:v3];
LABEL_22:

        goto LABEL_23;
      }
    }

    [(Task *)self completeWithSuccess];
    goto LABEL_22;
  }

  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_6:
  [(Task *)self completeWithError:v3];
LABEL_23:
}

- (id)_performPurchase
{
  v3 = objc_alloc_init(AMSPromise);
  if (self->_dialogContext && (v4 = objc_loadWeakRetained(&self->_paymentSheetDelegate), v4, v4))
  {
    dialogContext = self->_dialogContext;
    purchase = self->_purchase;
    WeakRetained = objc_loadWeakRetained(&self->_paymentSheetDelegate);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000AAE0;
    v14[3] = &unk_10037FBF0;
    v15 = v3;
    v16 = self;
    [(DialogProtocol *)dialogContext handlePurchase:purchase paymentSheetDelegate:WeakRetained completionHandler:v14];

    v8 = v15;
  }

  else
  {
    if (qword_1003D3AB8 != -1)
    {
      sub_1002C77C0();
    }

    v9 = qword_1003D3A88;
    if (os_log_type_enabled(qword_1003D3A88, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_purchase;
      v11 = v9;
      v12 = [(AMSPurchaseSIWA *)v10 logUUID];
      *buf = 138543618;
      v18 = self;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@]: No dialog observer to process purchase.", buf, 0x16u);
    }

    v8 = ASDErrorWithDescription();
    [v3 finishWithError:v8];
  }

  return v3;
}

@end