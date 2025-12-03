@interface OFDThumbnailProvider
- (void)provideThumbnailForFileRequest:(id)request completionHandler:(id)handler;
@end

@implementation OFDThumbnailProvider

- (void)provideThumbnailForFileRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (qword_100008110 != -1)
  {
    sub_100000EB0();
  }

  v7 = gFunc_OFDCreatePDFDataFromURL;
  fileURL = [requestCopy fileURL];
  v9 = v7(fileURL, 0);

  if (v9 && (v10 = CGDataProviderCreateWithCFData(v9)) != 0)
  {
    v11 = v10;
    v12 = CGPDFDocumentCreateWithProvider(v10);
    if (v12)
    {
      v13 = v12;
      Page = CGPDFDocumentGetPage(v12, 1uLL);
      CFRetain(Page);
      BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFMediaBox);
      width = BoxRect.size.width;
      height = BoxRect.size.height;
      [requestCopy maximumSize];
      v18 = v17 / width;
      [requestCopy maximumSize];
      v20 = v19 / height;
      if (v18 < v19 / height)
      {
        v20 = v18;
      }

      v21 = v20 + -0.01;
      v22 = width * v21;
      v23 = height * v21;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100000E30;
      v25[3] = &unk_100004140;
      v27 = v21;
      v26 = requestCopy;
      v28 = Page;
      v24 = [QLThumbnailReply replyWithContextSize:v25 drawingBlock:v22, v23];
      handlerCopy[2](handlerCopy, v24, 0);

      CGPDFDocumentRelease(v13);
    }

    CFRelease(v11);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }
}

@end