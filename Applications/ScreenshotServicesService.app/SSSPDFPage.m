@interface SSSPDFPage
- (void)drawWithBox:(int64_t)a3 toContext:(CGContext *)a4;
@end

@implementation SSSPDFPage

- (void)drawWithBox:(int64_t)a3 toContext:(CGContext *)a4
{
  [(SSSPDFPage *)self vellumOpacity];
  if (v7 < 1.0)
  {
    v17.receiver = self;
    v17.super_class = SSSPDFPage;
    [(SSSPDFPage *)&v17 drawWithBox:a3 toContext:a4];
  }

  if ([(SSSPDFPage *)self isSaving])
  {
    [(SSSPDFPage *)self boundsForBox:a3];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(SSSPDFPage *)self vellumOpacity];
    CGContextSetRGBFillColor(a4, 1.0, 1.0, 1.0, v16);
    v18.origin.x = v9;
    v18.origin.y = v11;
    v18.size.width = v13;
    v18.size.height = v15;
    CGContextFillRect(a4, v18);
  }
}

@end