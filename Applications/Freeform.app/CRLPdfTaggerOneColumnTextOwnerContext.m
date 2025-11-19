@interface CRLPdfTaggerOneColumnTextOwnerContext
- (CRLPdfTaggerOneColumnTextOwnerContext)initWithStateOfTagger:(id)a3 textColumn:(id)a4 limitSelection:(id)a5;
@end

@implementation CRLPdfTaggerOneColumnTextOwnerContext

- (CRLPdfTaggerOneColumnTextOwnerContext)initWithStateOfTagger:(id)a3 textColumn:(id)a4 limitSelection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16 = v9;
  v11 = [NSArray arrayWithObjects:&v16 count:1];
  v12 = [v9 storage];
  v15.receiver = self;
  v15.super_class = CRLPdfTaggerOneColumnTextOwnerContext;
  v13 = [(CRLPdfTaggerTextColumnOwnerContext *)&v15 initWithStateOfTagger:v8 columns:v11 storage:v12 limitSelection:v10];

  if (v13)
  {
    objc_storeStrong(&v13->_textColumn, a4);
  }

  return v13;
}

@end