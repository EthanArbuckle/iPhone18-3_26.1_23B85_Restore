@interface OFDPreviewProvider
- (void)providePreviewForFileRequest:(id)request completionHandler:(id)handler;
@end

@implementation OFDPreviewProvider

- (void)providePreviewForFileRequest:(id)request completionHandler:(id)handler
{
  v5 = qword_100008108;
  handlerCopy = handler;
  requestCopy = request;
  if (v5 != -1)
  {
    sub_100000E58();
  }

  fileURL = [requestCopy fileURL];

  v9 = gFunc_OFDCreatePDFDataFromURL(fileURL, 0);
  v10 = [UTType typeWithIdentifier:@"com.adobe.pdf"];
  v11 = [QLPreviewReply alloc];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100000E50;
  v14[3] = &unk_1000040F8;
  v15 = v9;
  v12 = v9;
  v13 = [v11 initWithDataOfContentType:v10 contentSize:v14 dataCreationBlock:{500.0, 500.0}];
  handlerCopy[2](handlerCopy, v13, 0);
}

@end