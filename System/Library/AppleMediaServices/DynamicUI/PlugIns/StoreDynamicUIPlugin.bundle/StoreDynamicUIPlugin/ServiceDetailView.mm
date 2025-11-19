@interface ServiceDetailView
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (id)productDetailsPresentationContextForLockupView:(id)a3;
- (void)layoutSubviews;
- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4;
- (void)lockupView:(id)a3 preprocessOffer:(id)a4 inState:(id)a5 completionBlock:(id)a6;
- (void)lockupViewDidFinishRequest:(id)a3;
- (void)lockupViewDidInvalidateIntrinsicContentSize:(id)a3;
@end

@implementation ServiceDetailView

- (void)layoutSubviews
{
  v2 = self;
  sub_E91D8();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  v9 = sub_E9480(a4, width, height);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  swift_unknownObjectRelease();

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.var3 = v19;
  result.var2 = v18;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- (void)lockupViewDidFinishRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_EA488(v4);
}

- (void)lockupViewDidInvalidateIntrinsicContentSize:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_EA690();
}

- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_EA75C(v6);
}

- (void)lockupView:(id)a3 preprocessOffer:(id)a4 inState:(id)a5 completionBlock:(id)a6
{
  v10 = _Block_copy(a6);
  _Block_copy(v10);
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a5;
  v13 = self;
  sub_EB044(v11, a4, v12, v13, v10);
  _Block_release(v10);

  swift_unknownObjectRelease();
}

- (id)productDetailsPresentationContextForLockupView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_EB180();

  return v6;
}

@end