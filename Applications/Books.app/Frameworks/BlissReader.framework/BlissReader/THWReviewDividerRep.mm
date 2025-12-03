@interface THWReviewDividerRep
- (CGRect)layerFrameInScaledCanvas;
- (void)dealloc;
- (void)didUpdateLayer:(id)layer;
@end

@implementation THWReviewDividerRep

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = THWReviewDividerRep;
  [(THWReviewDividerRep *)&v2 dealloc];
}

- (void)didUpdateLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = THWReviewDividerRep;
  [(THWReviewDividerRep *)&v4 didUpdateLayer:?];
  [layer setBackgroundColor:{objc_msgSend(objc_msgSend(+[TSUColor blackColor](TSUColor, "blackColor"), "colorWithAlphaComponent:", 0.150000006), "CGColor")}];
}

- (CGRect)layerFrameInScaledCanvas
{
  v6.receiver = self;
  v6.super_class = THWReviewDividerRep;
  [(THWReviewDividerRep *)&v6 layerFrameInScaledCanvas];
  if (v5 < 1.0)
  {
    v5 = 1.0;
  }

  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end