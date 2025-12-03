@interface ServiceProductCardReferenceView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (void)layoutSubviews;
@end

@implementation ServiceProductCardReferenceView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_105210();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_10547C();
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

@end