@interface SSSPDFPage
- (void)drawWithBox:(int64_t)box toContext:(CGContext *)context;
@end

@implementation SSSPDFPage

- (void)drawWithBox:(int64_t)box toContext:(CGContext *)context
{
  [(SSSPDFPage *)self vellumOpacity];
  if (v7 < 1.0)
  {
    v17.receiver = self;
    v17.super_class = SSSPDFPage;
    [(SSSPDFPage *)&v17 drawWithBox:box toContext:context];
  }

  if ([(SSSPDFPage *)self isSaving])
  {
    [(SSSPDFPage *)self boundsForBox:box];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(SSSPDFPage *)self vellumOpacity];
    CGContextSetRGBFillColor(context, 1.0, 1.0, 1.0, v16);
    v18.origin.x = v9;
    v18.origin.y = v11;
    v18.size.width = v13;
    v18.size.height = v15;
    CGContextFillRect(context, v18);
  }
}

@end