@interface ODRZipStreamDataConsumer
- (void)consumeData:(id)a3 withCompletionHandler:(id)a4;
- (void)finishWithCompletionHandler:(id)a3;
- (void)prepareWithCompletionHandler:(id)a3;
- (void)resetWithCompletionHandler:(id)a3;
- (void)suspendWithCompletionHandler:(id)a3;
- (void)truncateWithCompletionHandler:(id)a3;
@end

@implementation ODRZipStreamDataConsumer

- (void)consumeData:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_dataComplete)
  {
    (*(v7 + 2))(v7, 0, 1);
  }

  else
  {
    extractor = self->_extractor;
    if (extractor)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10024DEB8;
      v11[3] = &unk_10051CE90;
      v11[4] = self;
      v12 = v7;
      [(SZExtractor *)extractor supplyBytes:v6 withCompletionBlock:v11];
    }

    else
    {
      v10 = ASDErrorWithTitleAndMessage();
      (v8)[2](v8, v10, 0);
    }
  }
}

- (void)finishWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  extractor = self->_extractor;
  if (extractor)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10024DFB8;
    v8[3] = &unk_10051B548;
    v9 = v4;
    [(SZExtractor *)extractor finishStreamWithCompletionBlock:v8];
  }

  else
  {
    v7 = ASDErrorWithTitleAndMessage();
    (v5)[2](v5, v7);
  }
}

- (void)prepareWithCompletionHandler:(id)a3
{
  v4 = a3;
  extractor = self->_extractor;
  if (extractor)
  {
    v6 = [(SZExtractor *)self->_extractor extractionPath];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10024E17C;
    v14 = &unk_10051C698;
    v15 = self;
    v16 = v4;
    v7 = extractor;
    v8 = v6;
    v9 = &v11;
    if (v8)
    {
      [(SZExtractor *)v7 prepareForExtractionToPath:v8 completionBlock:v9, v11, v12, v13, v14, v15, v16];
    }

    else
    {
      [(SZExtractor *)v7 prepareForExtraction:v9, v11, v12, v13, v14, v15, v16];
    }
  }

  else
  {
    v10 = ASDErrorWithTitleAndMessage();
    (*(v4 + 2))(v4, 0, v10);
  }
}

- (void)suspendWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  extractor = self->_extractor;
  if (extractor)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10024E2FC;
    v8[3] = &unk_10051C698;
    v8[4] = self;
    v9 = v4;
    [(SZExtractor *)extractor suspendStreamWithCompletionBlock:v8];
  }

  else
  {
    v7 = ASDErrorWithTitleAndMessage();
    (v5)[2](v5, v7);
  }
}

- (void)resetWithCompletionHandler:(id)a3
{
  v4 = a3;
  extractor = self->_extractor;
  if (extractor && ([(SZExtractor *)extractor extractionPath], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Extractor reset", v14, 2u);
    }

    v8 = [SZExtractor alloc];
    v9 = [(SZExtractor *)self->_extractor extractionPath];
    v10 = [(SZExtractor *)self->_extractor options];
    v11 = [v8 initWithPath:v9 options:v10];
    v12 = self->_extractor;
    self->_extractor = v11;

    v4[2](v4, 0);
  }

  else
  {
    v13 = ASDErrorWithTitleAndMessage();
    (v4)[2](v4, v13);
  }
}

- (void)truncateWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "TRUNCATE", v5, 2u);
  }

  v3[2](v3, 0);
}

@end