@interface MSPhotosExtensionFallbackTranscoder
- (void)fallbackForData:(id)a3 attachments:(id)a4 inFileURL:(id)a5 completionBlockWithText:(id)a6;
@end

@implementation MSPhotosExtensionFallbackTranscoder

- (void)fallbackForData:(id)a3 attachments:(id)a4 inFileURL:(id)a5 completionBlockWithText:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(MSMessageExtensionFallbackTranscoder);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_13DB8;
  v18[3] = &unk_4D4C0;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  v17 = v12;
  [(MSMessageExtensionFallbackTranscoder *)v13 fallbackForData:v16 attachments:v15 inFileURL:v14 completionBlockWithText:v18];
}

@end