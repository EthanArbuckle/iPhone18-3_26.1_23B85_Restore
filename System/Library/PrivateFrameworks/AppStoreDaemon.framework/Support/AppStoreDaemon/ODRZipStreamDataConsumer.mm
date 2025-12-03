@interface ODRZipStreamDataConsumer
- (void)consumeData:(id)data withCompletionHandler:(id)handler;
- (void)finishWithCompletionHandler:(id)handler;
- (void)prepareWithCompletionHandler:(id)handler;
- (void)resetWithCompletionHandler:(id)handler;
- (void)suspendWithCompletionHandler:(id)handler;
- (void)truncateWithCompletionHandler:(id)handler;
@end

@implementation ODRZipStreamDataConsumer

- (void)consumeData:(id)data withCompletionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (self->_dataComplete)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 1);
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
      v12 = handlerCopy;
      [(SZExtractor *)extractor supplyBytes:dataCopy withCompletionBlock:v11];
    }

    else
    {
      v10 = ASDErrorWithTitleAndMessage();
      (v8)[2](v8, v10, 0);
    }
  }
}

- (void)finishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  extractor = self->_extractor;
  if (extractor)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10024DFB8;
    v8[3] = &unk_10051B548;
    v9 = handlerCopy;
    [(SZExtractor *)extractor finishStreamWithCompletionBlock:v8];
  }

  else
  {
    v7 = ASDErrorWithTitleAndMessage();
    (v5)[2](v5, v7);
  }
}

- (void)prepareWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  extractor = self->_extractor;
  if (extractor)
  {
    extractionPath = [(SZExtractor *)self->_extractor extractionPath];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10024E17C;
    v14 = &unk_10051C698;
    selfCopy = self;
    v16 = handlerCopy;
    v7 = extractor;
    v8 = extractionPath;
    v9 = &v11;
    if (v8)
    {
      [(SZExtractor *)v7 prepareForExtractionToPath:v8 completionBlock:v9, v11, v12, v13, v14, selfCopy, v16];
    }

    else
    {
      [(SZExtractor *)v7 prepareForExtraction:v9, v11, v12, v13, v14, selfCopy, v16];
    }
  }

  else
  {
    v10 = ASDErrorWithTitleAndMessage();
    (*(handlerCopy + 2))(handlerCopy, 0, v10);
  }
}

- (void)suspendWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  extractor = self->_extractor;
  if (extractor)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10024E2FC;
    v8[3] = &unk_10051C698;
    v8[4] = self;
    v9 = handlerCopy;
    [(SZExtractor *)extractor suspendStreamWithCompletionBlock:v8];
  }

  else
  {
    v7 = ASDErrorWithTitleAndMessage();
    (v5)[2](v5, v7);
  }
}

- (void)resetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
    extractionPath = [(SZExtractor *)self->_extractor extractionPath];
    options = [(SZExtractor *)self->_extractor options];
    v11 = [v8 initWithPath:extractionPath options:options];
    v12 = self->_extractor;
    self->_extractor = v11;

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v13 = ASDErrorWithTitleAndMessage();
    (handlerCopy)[2](handlerCopy, v13);
  }
}

- (void)truncateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "TRUNCATE", v5, 2u);
  }

  handlerCopy[2](handlerCopy, 0);
}

@end