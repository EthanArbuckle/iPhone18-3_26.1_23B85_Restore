@interface CRLErrorImageProvider
+ (CRLErrorImageProvider)sharedInstance;
- (CGPDFDocument)p_iconPDFDocument;
- (CGSize)naturalSize;
- (void)drawImageInContext:(CGContext *)a3 rect:(CGRect)a4;
@end

@implementation CRLErrorImageProvider

+ (CRLErrorImageProvider)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FAA28;
  block[3] = &unk_10183B690;
  block[4] = a1;
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

- (void)drawImageInContext:(CGContext *)a3 rect:(CGRect)a4
{
  v43 = a4;
  if (sub_1002616E4(&v43.origin.x) && sub_1002616E4(&v43.origin.y))
  {
    width = v43.size.width;
    if (v43.size.width != 0.0)
    {
      height = v43.size.height;
      if (v43.size.height != 0.0)
      {
        x = v43.origin.x;
        y = v43.origin.y;
        if (!CGRectIsInfinite(*(&width - 2)) && !CGRectIsNull(v43))
        {
          CGContextSetShouldAntialias(a3, 1);
          v10 = sub_1000CCEA0(0.939999998, 0.939999998, 0.939999998, 1.0);
          CGContextSetFillColorWithColor(a3, v10);
          CGColorRelease(v10);
          CGContextFillRect(a3, v43);
          v11 = [(CRLErrorImageProvider *)self p_iconPDFDocument];
          if (v11)
          {
            Page = CGPDFDocumentGetPage(v11, 1uLL);
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
              v21 = v43.size.width;
              v22 = v43.size.height;
              v23 = sub_10011F340(v43.size.width, v43.size.height, 0.35);
              v24 = v40;
              v25 = v41;
              sub_100121E58(v40, v41, v23, v26);
              v27 = sub_10011ECB4();
              v31 = sub_1001206EC(v27, v28, v29, v30, v43.origin.x, v43.origin.y, v21, v22);
              v38 = 0u;
              v39 = 0u;
              v37 = 0u;
              v36 = v42;
              sub_10050EFD0(&v36, &v37, v24, v25, v31, v32, v33, v34);
              *&v36.a = v37;
              *&v36.c = v38;
              *&v36.tx = v39;
              CGContextConcatCTM(a3, &v36);
              v44.origin.x = v14;
              v44.origin.y = v16;
              v44.size.width = v18;
              v44.size.height = v20;
              CGContextClipToRect(a3, v44);
              v45.origin.x = v14;
              v45.origin.y = v16;
              v45.size.width = v18;
              v45.size.height = v20;
              MaxY = CGRectGetMaxY(v45);
              CGContextTranslateCTM(a3, 0.0, MaxY);
              CGContextScaleCTM(a3, 1.0, -1.0);
              CGContextDrawPDFPage(a3, v13);
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