@interface MFScannedDocumentConverter
+ (OS_os_log)log;
- (MFScannedDocumentConverter)init;
- (id)_pdfConverterFromScannedDocument:(id)document;
- (id)pdfDocumentFromScannedDocument:(id)document;
@end

@implementation MFScannedDocumentConverter

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__MFScannedDocumentConverter_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_12 != -1)
  {
    dispatch_once(&log_onceToken_12, block);
  }

  v2 = log_log_12;

  return v2;
}

void __33__MFScannedDocumentConverter_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.messageui", [v3 UTF8String]);
  v2 = log_log_12;
  log_log_12 = v1;
}

- (MFScannedDocumentConverter)init
{
  v7.receiver = self;
  v7.super_class = MFScannedDocumentConverter;
  v2 = [(MFScannedDocumentConverter *)&v7 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(25, 0);
    v4 = dispatch_queue_create_with_target_V2("com.apple.messageui.scannedDocumentConverter", 0, v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (id)pdfDocumentFromScannedDocument:(id)document
{
  documentCopy = document;
  promise = [MEMORY[0x1E699B868] promise];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MFScannedDocumentConverter_pdfDocumentFromScannedDocument___block_invoke;
  block[3] = &unk_1E806CC80;
  block[4] = self;
  v7 = documentCopy;
  v13 = v7;
  v8 = promise;
  v14 = v8;
  dispatch_async(queue, block);
  future = [v8 future];
  v10 = [future map:&__block_literal_global_32];

  return v10;
}

void __61__MFScannedDocumentConverter_pdfDocumentFromScannedDocument___block_invoke(id *a1)
{
  v4 = [a1[4] _pdfConverterFromScannedDocument:a1[5]];
  v2 = [v4 pageCount];
  if (v2 >= [a1[5] pageCount])
  {
    [a1[6] finishWithResult:v4];
  }

  else
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MFScannedDocumentErrorDomain" code:10 userInfo:0];
    [a1[6] finishWithError:v3];
  }
}

id __61__MFScannedDocumentConverter_pdfDocumentFromScannedDocument___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 dataRepresentation];

  return v2;
}

- (id)_pdfConverterFromScannedDocument:(id)document
{
  documentCopy = document;
  v4 = objc_alloc_init(MEMORY[0x1E6978028]);
  for (i = 0; i < [documentCopy pageCount]; ++i)
  {
    v6 = [documentCopy imageOfPageAtIndex:i];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E6978038]) initWithImage:v6];
      [v4 insertPage:v7 atIndex:{objc_msgSend(v4, "pageCount")}];
    }
  }

  return v4;
}

@end