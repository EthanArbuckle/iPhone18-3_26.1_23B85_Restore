@interface PDFView
+ (void)be_enableAutoscaleHacks;
- (BOOL)be_useOverrideAutoScale;
- (double)be_autoScaleFactor;
- (double)be_overrideAutoScale;
- (id)be_associatedPageViewController;
- (void)setBe_overrideAutoScale:(double)scale;
- (void)setBe_useOverrideAutoScale:(BOOL)scale;
@end

@implementation PDFView

+ (void)be_enableAutoscaleHacks
{
  if (qword_22D2B0[0] != -1)
  {
    sub_1393DC();
  }
}

- (double)be_autoScaleFactor
{
  if ([(PDFView *)self be_useOverrideAutoScale])
  {

    [(PDFView *)self be_overrideAutoScale];
  }

  else
  {

    [(PDFView *)self be_autoScaleFactor];
  }

  return result;
}

- (void)setBe_overrideAutoScale:(double)scale
{
  be_associatedPageViewController = [(PDFView *)self be_associatedPageViewController];
  be_pdfView = [be_associatedPageViewController be_pdfView];

  if (be_pdfView == self)
  {
    [be_associatedPageViewController setBe_overrideAutoScale:scale];
  }

  v6 = [NSNumber numberWithDouble:scale];
  objc_setAssociatedObject(self, "be_overrideAutoScale", v6, &dword_0 + 1);
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
  scaleCopy = scale;
  be_associatedPageViewController = [(PDFView *)self be_associatedPageViewController];
  be_pdfView = [be_associatedPageViewController be_pdfView];

  if (be_pdfView == self)
  {
    [be_associatedPageViewController setBe_useOverrideAutoScale:scaleCopy];
  }

  v6 = [NSNumber numberWithBool:scaleCopy];
  objc_setAssociatedObject(self, "be_useOverrideAutoScale", v6, &dword_0 + 1);
}

- (BOOL)be_useOverrideAutoScale
{
  v2 = objc_getAssociatedObject(self, "be_useOverrideAutoScale");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)be_associatedPageViewController
{
  v2 = [(PDFView *)self valueForKeyPath:@"_private.documentViewController"];
  objc_opt_class();
  v3 = BUDynamicCast();
  viewControllers = [v3 viewControllers];
  firstObject = [viewControllers firstObject];

  return firstObject;
}

@end