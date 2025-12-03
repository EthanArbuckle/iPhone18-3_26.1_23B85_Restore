@interface UIViewController
+ (Class)be_PDFPageViewControllerClass;
+ (void)be_enablePDFPageViewControllerHacks;
- (BOOL)be_useOverrideAutoScale;
- (PDFView)be_pdfView;
- (double)be_autoScaleFactor;
- (double)be_overrideAutoScale;
- (void)setBe_overrideAutoScale:(double)scale;
- (void)setBe_useOverrideAutoScale:(BOOL)scale;
@end

@implementation UIViewController

- (double)be_autoScaleFactor
{
  be_pdfView = [(UIViewController *)self be_pdfView];
  if (-[UIViewController be_useOverrideAutoScale](self, "be_useOverrideAutoScale") || [be_pdfView be_useOverrideAutoScale])
  {
    [(UIViewController *)self be_overrideAutoScale];
    v5 = v4;
    [be_pdfView be_overrideAutoScale];
    if (v5 < v6)
    {
      v5 = v6;
    }
  }

  else
  {
    [(UIViewController *)self be_autoScaleFactor];
    v5 = v7;
  }

  return v5;
}

- (void)setBe_overrideAutoScale:(double)scale
{
  v4 = [NSNumber numberWithDouble:scale];
  objc_setAssociatedObject(self, "be_overrideAutoScale", v4, &dword_0 + 1);
}

- (double)be_overrideAutoScale
{
  v2 = objc_getAssociatedObject(self, "be_overrideAutoScale");
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setBe_useOverrideAutoScale:(BOOL)scale
{
  v4 = [NSNumber numberWithBool:scale];
  objc_setAssociatedObject(self, "be_useOverrideAutoScale", v4, &dword_0 + 1);
}

- (BOOL)be_useOverrideAutoScale
{
  v2 = objc_getAssociatedObject(self, "be_useOverrideAutoScale");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (PDFView)be_pdfView
{
  +[UIViewController be_PDFPageViewControllerClass];
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v3 = [(UIViewController *)self valueForKeyPath:@"_private.pdfView"];
    v4 = BUDynamicCast();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)be_enablePDFPageViewControllerHacks
{
  if (qword_22D298 != -1)
  {
    sub_1393B4();
  }
}

+ (Class)be_PDFPageViewControllerClass
{
  if (qword_22D2A8 != -1)
  {
    sub_1393C8();
  }

  v3 = qword_22D2A0;

  return v3;
}

@end