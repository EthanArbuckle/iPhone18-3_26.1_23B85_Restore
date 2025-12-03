@interface ServiceDetailView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (id)productDetailsPresentationContextForLockupView:(id)view;
- (void)layoutSubviews;
- (void)lockupView:(id)view didFailRequestWithError:(id)error;
- (void)lockupView:(id)view preprocessOffer:(id)offer inState:(id)state completionBlock:(id)block;
- (void)lockupViewDidFinishRequest:(id)request;
- (void)lockupViewDidInvalidateIntrinsicContentSize:(id)size;
@end

@implementation ServiceDetailView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_E91D8();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9 = sub_E9480(in, width, height);
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

- (void)lockupViewDidFinishRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_EA488(requestCopy);
}

- (void)lockupViewDidInvalidateIntrinsicContentSize:(id)size
{
  sizeCopy = size;
  selfCopy = self;
  sub_EA690();
}

- (void)lockupView:(id)view didFailRequestWithError:(id)error
{
  viewCopy = view;
  errorCopy = error;
  selfCopy = self;
  sub_EA75C(viewCopy);
}

- (void)lockupView:(id)view preprocessOffer:(id)offer inState:(id)state completionBlock:(id)block
{
  v10 = _Block_copy(block);
  _Block_copy(v10);
  viewCopy = view;
  swift_unknownObjectRetain();
  stateCopy = state;
  selfCopy = self;
  sub_EB044(viewCopy, offer, stateCopy, selfCopy, v10);
  _Block_release(v10);

  swift_unknownObjectRelease();
}

- (id)productDetailsPresentationContextForLockupView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_EB180();

  return v6;
}

@end