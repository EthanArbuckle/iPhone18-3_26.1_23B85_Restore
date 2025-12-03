@interface MSPhotosExtensionFallbackTranscoder
- (void)fallbackForData:(id)data attachments:(id)attachments inFileURL:(id)l completionBlockWithText:(id)text;
@end

@implementation MSPhotosExtensionFallbackTranscoder

- (void)fallbackForData:(id)data attachments:(id)attachments inFileURL:(id)l completionBlockWithText:(id)text
{
  dataCopy = data;
  attachmentsCopy = attachments;
  lCopy = l;
  textCopy = text;
  v13 = objc_alloc_init(MSMessageExtensionFallbackTranscoder);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_13DB8;
  v18[3] = &unk_4D4C0;
  v19 = dataCopy;
  v20 = attachmentsCopy;
  v21 = lCopy;
  v22 = textCopy;
  v14 = lCopy;
  v15 = attachmentsCopy;
  v16 = dataCopy;
  v17 = textCopy;
  [(MSMessageExtensionFallbackTranscoder *)v13 fallbackForData:v16 attachments:v15 inFileURL:v14 completionBlockWithText:v18];
}

@end