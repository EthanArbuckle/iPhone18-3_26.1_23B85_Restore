@interface OFDThumbnailProvider
- (void)provideThumbnailForFileRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation OFDThumbnailProvider

- (void)provideThumbnailForFileRequest:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_100008110 != -1)
  {
    sub_100000EB0();
  }

  v7 = gFunc_OFDCreatePDFDataFromURL;
  v8 = [v5 fileURL];
  v9 = v7(v8, 0);

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
      [v5 maximumSize];
      v18 = v17 / width;
      [v5 maximumSize];
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
      v26 = v5;
      v28 = Page;
      v24 = [QLThumbnailReply replyWithContextSize:v25 drawingBlock:v22, v23];
      v6[2](v6, v24, 0);

      CGPDFDocumentRelease(v13);
    }

    CFRelease(v11);
  }

  else
  {
    v6[2](v6, 0, 0);
  }
}

@end