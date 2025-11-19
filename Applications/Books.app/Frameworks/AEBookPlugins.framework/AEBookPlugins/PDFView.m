@interface PDFView
+ (void)be_enableAutoscaleHacks;
- (BOOL)be_useOverrideAutoScale;
- (double)be_autoScaleFactor;
- (double)be_overrideAutoScale;
- (id)be_associatedPageViewController;
- (void)setBe_overrideAutoScale:(double)a3;
- (void)setBe_useOverrideAutoScale:(BOOL)a3;
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

- (void)setBe_overrideAutoScale:(double)a3
{
  v7 = [(PDFView *)self be_associatedPageViewController];
  v5 = [v7 be_pdfView];

  if (v5 == self)
  {
    [v7 setBe_overrideAutoScale:a3];
  }

  v6 = [NSNumber numberWithDouble:a3];
  objc_setAssociatedObject(self, "be_overrideAutoScale", v6, &dword_0 + 1);
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
  v3 = a3;
  v7 = [(PDFView *)self be_associatedPageViewController];
  v5 = [v7 be_pdfView];

  if (v5 == self)
  {
    [v7 setBe_useOverrideAutoScale:v3];
  }

  v6 = [NSNumber numberWithBool:v3];
  objc_setAssociatedObject(self, "be_useOverrideAutoScale", v6, &dword_0 + 1);
}

- (BOOL)be_useOverrideAutoScale
{
  v2 = objc_getAssociatedObject(self, "be_useOverrideAutoScale");
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)be_associatedPageViewController
{
  v2 = [(PDFView *)self valueForKeyPath:@"_private.documentViewController"];
  objc_opt_class();
  v3 = BUDynamicCast();
  v4 = [v3 viewControllers];
  v5 = [v4 firstObject];

  return v5;
}

@end