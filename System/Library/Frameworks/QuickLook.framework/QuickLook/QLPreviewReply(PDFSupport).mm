@interface QLPreviewReply(PDFSupport)
- (id)updateFromDocumentCreationBlock;
@end

@implementation QLPreviewReply(PDFSupport)

- (id)updateFromDocumentCreationBlock
{
  documentCreationBlock = [self documentCreationBlock];

  if (documentCreationBlock)
  {
    documentCreationBlock2 = [self documentCreationBlock];
    v7 = 0;
    v4 = (documentCreationBlock2)[2](documentCreationBlock2, self, &v7);
    documentCreationBlock = v7;

    dataRepresentation = [v4 dataRepresentation];
    [self updateWithPDFData:dataRepresentation];
  }

  return documentCreationBlock;
}

@end