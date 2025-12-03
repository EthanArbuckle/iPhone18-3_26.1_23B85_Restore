@interface LinkableHeaderView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (void)layoutSubviews;
@end

@implementation LinkableHeaderView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10020666C();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_100206880(in, width);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  swift_unknownObjectRelease();

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.var3 = v18;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

@end