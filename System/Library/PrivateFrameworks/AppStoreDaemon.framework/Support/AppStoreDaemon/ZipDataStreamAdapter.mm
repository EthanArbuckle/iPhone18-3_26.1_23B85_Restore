@interface ZipDataStreamAdapter
- (void)finishWithCompletionHandler:(id)handler;
- (void)prepareWithCompletionHandler:(id)handler;
- (void)suspendWithCompletionHandler:(id)handler;
@end

@implementation ZipDataStreamAdapter

- (void)finishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_extractor)
  {
    dispatch_group_wait(self->_consistencyGroup, 0xFFFFFFFFFFFFFFFFLL);
    extractor = self->_extractor;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001F1B60;
    v7[3] = &unk_10051B548;
    v8 = handlerCopy;
    [(SZExtractor *)extractor finishStreamWithCompletionBlock:v7];
  }

  else
  {
    v6 = ASDErrorWithTitleAndMessage();
    (*(handlerCopy + 2))(handlerCopy, v6);
  }
}

- (void)prepareWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  extractor = self->_extractor;
  if (extractor)
  {
    path = self->_path;
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1001F1D24;
    v15 = &unk_10051C698;
    selfCopy = self;
    v17 = handlerCopy;
    v8 = path;
    v9 = &v12;
    v10 = extractor;
    objc_opt_self();
    if (v8)
    {
      [(SZExtractor *)v10 prepareForExtractionToPath:v8 completionBlock:v9, v12, v13, v14, v15, selfCopy, v17];
    }

    else
    {
      [(SZExtractor *)v10 prepareForExtraction:v9, v12, v13, v14, v15, selfCopy, v17];
    }
  }

  else
  {
    v11 = ASDErrorWithTitleAndMessage();
    (v5)[2](v5, 0, v11);
  }
}

- (void)suspendWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_extractor)
  {
    dispatch_group_wait(self->_consistencyGroup, 0xFFFFFFFFFFFFFFFFLL);
    extractor = self->_extractor;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001F1E38;
    v7[3] = &unk_10051C698;
    v7[4] = self;
    v8 = handlerCopy;
    [(SZExtractor *)extractor suspendStreamWithCompletionBlock:v7];
  }

  else
  {
    v6 = ASDErrorWithTitleAndMessage();
    (*(handlerCopy + 2))(handlerCopy, v6);
  }
}

@end