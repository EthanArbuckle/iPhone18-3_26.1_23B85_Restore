@interface CRLPdfTaggerDrawableContext
- (CRLPdfTaggerDrawableContext)initWithStateOfTagger:(id)a3 drawableRep:(id)a4;
@end

@implementation CRLPdfTaggerDrawableContext

- (CRLPdfTaggerDrawableContext)initWithStateOfTagger:(id)a3 drawableRep:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CRLPdfTaggerDrawableContext;
  v8 = [(CRLPdfTaggerContext *)&v11 initWithStateOfTagger:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_drawableRep, a4);
  }

  return v9;
}

@end