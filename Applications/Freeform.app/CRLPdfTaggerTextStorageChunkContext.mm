@interface CRLPdfTaggerTextStorageChunkContext
- (CRLPdfTaggerTextStorageChunkContext)initWithStateOfTagger:(id)tagger textStorageChunk:(id)chunk limitSelection:(id)selection;
@end

@implementation CRLPdfTaggerTextStorageChunkContext

- (CRLPdfTaggerTextStorageChunkContext)initWithStateOfTagger:(id)tagger textStorageChunk:(id)chunk limitSelection:(id)selection
{
  taggerCopy = tagger;
  chunkCopy = chunk;
  selectionCopy = selection;
  columns = [chunkCopy columns];
  storage = [chunkCopy storage];
  v15.receiver = self;
  v15.super_class = CRLPdfTaggerTextStorageChunkContext;
  v13 = [(CRLPdfTaggerTextColumnOwnerContext *)&v15 initWithStateOfTagger:taggerCopy columns:columns storage:storage limitSelection:selectionCopy];

  if (v13)
  {
    objc_storeStrong(&v13->_textStorageChunk, chunk);
  }

  return v13;
}

@end