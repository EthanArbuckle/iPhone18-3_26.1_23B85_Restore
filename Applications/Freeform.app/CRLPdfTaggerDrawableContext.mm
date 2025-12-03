@interface CRLPdfTaggerDrawableContext
- (CRLPdfTaggerDrawableContext)initWithStateOfTagger:(id)tagger drawableRep:(id)rep;
@end

@implementation CRLPdfTaggerDrawableContext

- (CRLPdfTaggerDrawableContext)initWithStateOfTagger:(id)tagger drawableRep:(id)rep
{
  repCopy = rep;
  v11.receiver = self;
  v11.super_class = CRLPdfTaggerDrawableContext;
  v8 = [(CRLPdfTaggerContext *)&v11 initWithStateOfTagger:tagger];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_drawableRep, rep);
  }

  return v9;
}

@end