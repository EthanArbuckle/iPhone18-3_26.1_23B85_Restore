@interface BannerPaletteViewCoordinator
- (BOOL)messageViewController:(id)a3 handleDelegateAction:(id)a4 completionHandler:(id)a5;
- (BOOL)messageViewController:(id)a3 shouldEnqueueMetricsForDialogResult:(id)a4;
- (void)messageViewController:(id)a3 didFailWithError:(id)a4;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4;
- (void)messageViewController:(id)a3 enqueueActionEventWithFields:(id)a4 inTopic:(id)a5;
@end

@implementation BannerPaletteViewCoordinator

- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = self;
  sub_1BB13B054(width, height);
}

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BB13B43C();
}

- (BOOL)messageViewController:(id)a3 handleDelegateAction:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  LOBYTE(self) = sub_1BB13B794(v12, v11, sub_1BB13CA10, v9);

  return self & 1;
}

- (void)messageViewController:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1BB13BA7C();
}

- (void)messageViewController:(id)a3 enqueueActionEventWithFields:(id)a4 inTopic:(id)a5
{
  sub_1BB1DD2D8();
  if (a5)
  {
    sub_1BB1DD378();
  }

  v8 = a3;
  v9 = self;
  sub_1BB13BE08();
}

- (BOOL)messageViewController:(id)a3 shouldEnqueueMetricsForDialogResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1BB13C244(v8, v7);

  return v9 & 1;
}

@end