@interface ServiceProductCardHeroView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (void)layoutSubviews;
- (void)offerButtonActionWithSender:(id)sender;
- (void)tintColorDidChange;
@end

@implementation ServiceProductCardHeroView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_FFD5C();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_FFF88();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.var3 = v16;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_100134();
}

- (void)offerButtonActionWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_13BF54();
  swift_unknownObjectRelease();
  sub_100494(v5);

  sub_3C04(v5);
}

@end