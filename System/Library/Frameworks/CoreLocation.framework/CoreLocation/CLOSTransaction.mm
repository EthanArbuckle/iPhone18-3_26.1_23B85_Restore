@interface CLOSTransaction
- (CLOSTransaction)initWithDescription:(const char *)description;
- (void)dealloc;
@end

@implementation CLOSTransaction

- (CLOSTransaction)initWithDescription:(const char *)description
{
  v21 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = CLOSTransaction;
  v4 = [(CLOSTransaction *)&v12 init];
  if (v4)
  {
    v4->_description = [MEMORY[0x1E696AEC0] stringWithUTF8String:description];
    v4->_transaction = os_transaction_create();
    if (qword_1EAFE47B8 != -1)
    {
      dispatch_once(&qword_1EAFE47B8, &unk_1F0E6D710);
    }

    v5 = qword_1EAFE47C0;
    if (os_log_type_enabled(qword_1EAFE47C0, OS_LOG_TYPE_DEFAULT))
    {
      description = v4->_description;
      *buf = 134218242;
      p_transaction = &v4->_transaction;
      v19 = 2112;
      descriptionCopy = description;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "os_transaction created: (%p) %@", buf, 0x16u);
    }

    v7 = sub_19B87DD40();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE47B8 != -1)
      {
        dispatch_once(&qword_1EAFE47B8, &unk_1F0E6D710);
      }

      v8 = v4->_description;
      v13 = 134218242;
      v14 = &v4->_transaction;
      v15 = 2112;
      v16 = v8;
      v9 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLOSTransaction initWithDescription:]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE47B8 != -1)
  {
    dispatch_once(&qword_1EAFE47B8, &unk_1F0E6D710);
  }

  v3 = qword_1EAFE47C0;
  if (os_log_type_enabled(qword_1EAFE47C0, OS_LOG_TYPE_DEFAULT))
  {
    description = self->_description;
    *buf = 134218242;
    p_transaction = &self->_transaction;
    v16 = 2112;
    v17 = description;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "os_transaction released: (%p) %@", buf, 0x16u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE47B8 != -1)
    {
      dispatch_once(&qword_1EAFE47B8, &unk_1F0E6D710);
    }

    v6 = self->_description;
    v10 = 134218242;
    v11 = &self->_transaction;
    v12 = 2112;
    v13 = v6;
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLOSTransaction dealloc]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  self->_transaction = 0;
  self->_description = 0;
  v9.receiver = self;
  v9.super_class = CLOSTransaction;
  [(CLOSTransaction *)&v9 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

@end