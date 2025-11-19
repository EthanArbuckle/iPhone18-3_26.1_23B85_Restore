@interface UIViewController
+ (Class)be_PDFPageViewControllerClass;
+ (void)be_enablePDFPageViewControllerHacks;
- (BOOL)be_useOverrideAutoScale;
- (PDFView)be_pdfView;
- (double)be_autoScaleFactor;
- (double)be_overrideAutoScale;
- (void)setBe_overrideAutoScale:(double)a3;
- (void)setBe_useOverrideAutoScale:(BOOL)a3;
@end

@implementation UIViewController

- (double)be_autoScaleFactor
{
  v3 = [(UIViewController *)self be_pdfView];
  if (-[UIViewController be_useOverrideAutoScale](self, "be_useOverrideAutoScale") || [v3 be_useOverrideAutoScale])
  {
    [(UIViewController *)self be_overrideAutoScale];
    v5 = v4;
    [v3 be_overrideAutoScale];
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

- (void)setBe_overrideAutoScale:(double)a3
{
  v4 = [NSNumber numberWithDouble:a3];
  objc_setAssociatedObject(self, "be_overrideAutoScale", v4, &dword_0 + 1);
}

- (double)be_overrideAutoScale
{
  v2 = objc_getAssociatedObject(self, "be_overrideAutoScale");
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setBe_useOverrideAutoScale:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, "be_useOverrideAutoScale", v4, &dword_0 + 1);
}

- (BOOL)be_useOverrideAutoScale
{
  v2 = objc_getAssociatedObject(self, "be_useOverrideAutoScale");
  v3 = [v2 BOOLValue];

  return v3;
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