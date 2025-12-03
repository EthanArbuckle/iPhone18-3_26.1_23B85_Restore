@interface CRLErrorImageProvider
+ (CRLErrorImageProvider)sharedInstance;
- (CGPDFDocument)p_iconPDFDocument;
- (CGSize)naturalSize;
- (void)drawImageInContext:(CGContext *)context rect:(CGRect)rect;
@end

@implementation CRLErrorImageProvider

+ (CRLErrorImageProvider)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FAA28;
  block[3] = &unk_10183B690;
  block[4] = self;
  if (qword_101A34B28 != -1)
  {
    dispatch_once(&qword_101A34B28, block);
  }

  v2 = qword_101A34B20;

  return v2;
}

- (CGSize)naturalSize
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)drawImageInContext:(CGContext *)context rect:(CGRect)rect
{
  rectCopy = rect;
  if (sub_1002616E4(&rectCopy.origin.x) && sub_1002616E4(&rectCopy.origin.y))
  {
    width = rectCopy.size.width;
    if (rectCopy.size.width != 0.0)
    {
      height = rectCopy.size.height;
      if (rectCopy.size.height != 0.0)
      {
        x = rectCopy.origin.x;
        y = rectCopy.origin.y;
        if (!CGRectIsInfinite(*(&width - 2)) && !CGRectIsNull(rectCopy))
        {
          CGContextSetShouldAntialias(context, 1);
          v10 = sub_1000CCEA0(0.939999998, 0.939999998, 0.939999998, 1.0);
          CGContextSetFillColorWithColor(context, v10);
          CGColorRelease(v10);
          CGContextFillRect(context, rectCopy);
          p_iconPDFDocument = [(CRLErrorImageProvider *)self p_iconPDFDocument];
          if (p_iconPDFDocument)
          {
            Page = CGPDFDocumentGetPage(p_iconPDFDocument, 1uLL);
            if (Page)
            {
              v13 = Page;
              memset(&v42, 0, sizeof(v42));
              v40 = 0.0;
              v41 = 0.0;
              v14 = sub_10050EBF0(Page, &v42, &v40);
              v16 = v15;
              v18 = v17;
              v20 = v19;
              v21 = rectCopy.size.width;
              v22 = rectCopy.size.height;
              v23 = sub_10011F340(rectCopy.size.width, rectCopy.size.height, 0.35);
              v24 = v40;
              v25 = v41;
              sub_100121E58(v40, v41, v23, v26);
              v27 = sub_10011ECB4();
              v31 = sub_1001206EC(v27, v28, v29, v30, rectCopy.origin.x, rectCopy.origin.y, v21, v22);
              v38 = 0u;
              v39 = 0u;
              v37 = 0u;
              v36 = v42;
              sub_10050EFD0(&v36, &v37, v24, v25, v31, v32, v33, v34);
              *&v36.a = v37;
              *&v36.c = v38;
              *&v36.tx = v39;
              CGContextConcatCTM(context, &v36);
              v44.origin.x = v14;
              v44.origin.y = v16;
              v44.size.width = v18;
              v44.size.height = v20;
              CGContextClipToRect(context, v44);
              v45.origin.x = v14;
              v45.origin.y = v16;
              v45.size.width = v18;
              v45.size.height = v20;
              MaxY = CGRectGetMaxY(v45);
              CGContextTranslateCTM(context, 0.0, MaxY);
              CGContextScaleCTM(context, 1.0, -1.0);
              CGContextDrawPDFPage(context, v13);
            }
          }
        }
      }
    }
  }
}

- (CGPDFDocument)p_iconPDFDocument
{
  if (qword_101A34B38 != -1)
  {
    sub_10134FD7C();
  }

  v3 = qword_101A34B30;

  return [v3 CGPDFDocument];
}

@end