@interface OFDPreviewProvider
- (void)providePreviewForFileRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation OFDPreviewProvider

- (void)providePreviewForFileRequest:(id)a3 completionHandler:(id)a4
{
  v5 = qword_100008108;
  v6 = a4;
  v7 = a3;
  if (v5 != -1)
  {
    sub_100000E58();
  }

  v8 = [v7 fileURL];

  v9 = gFunc_OFDCreatePDFDataFromURL(v8, 0);
  v10 = [UTType typeWithIdentifier:@"com.adobe.pdf"];
  v11 = [QLPreviewReply alloc];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100000E50;
  v14[3] = &unk_1000040F8;
  v15 = v9;
  v12 = v9;
  v13 = [v11 initWithDataOfContentType:v10 contentSize:v14 dataCreationBlock:{500.0, 500.0}];
  v6[2](v6, v13, 0);
}

@end