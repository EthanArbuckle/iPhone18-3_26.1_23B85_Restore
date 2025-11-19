@interface DynamicLabel
- (BOOL)hasContent;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (CGRect)jet_focusedFrame;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (NSString)maximumContentSizeCategory;
- (void)invalidateIntrinsicContentSize;
- (void)setContentHuggingPriority:(float)a3 forAxis:(int64_t)a4;
- (void)setMaximumContentSizeCategory:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DynamicLabel

- (void)invalidateIntrinsicContentSize
{
  v2 = self;
  DynamicLabel.invalidateIntrinsicContentSize()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  DynamicLabel.traitCollectionDidChange(_:)(v9);
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  DynamicLabel.intrinsicContentSize.getter();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (NSString)maximumContentSizeCategory
{
  v2 = self;
  v3 = DynamicLabel.maximumContentSizeCategory.getter();

  return v3;
}

- (void)setMaximumContentSizeCategory:(id)a3
{
  v5 = a3;
  v6 = self;
  DynamicLabel.maximumContentSizeCategory.setter(a3);
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v11.value.super.isa = v4;
  LOBYTE(v4) = DynamicLabel.point(inside:with:)(__PAIR128__(*&y, *&x), v11);

  return v4 & 1;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = DynamicLabel.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = DynamicLabel.systemLayoutSizeFitting(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setContentHuggingPriority:(float)a3 forAxis:(int64_t)a4
{
  v6 = self;
  DynamicLabel.setContentHuggingPriority(_:for:)(a3, a4);
}

- (void)textViewDidChangeSelection:(id)a3
{
  v4 = a3;
  v5 = self;
  DynamicLabel.textViewDidChangeSelection(_:)(v4);
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v8 = sub_1CA19ADF8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA19ADA8();
  v12 = a3;
  v13 = self;
  LOBYTE(self) = DynamicLabel.textView(_:shouldInteractWith:in:interaction:)(v13, v11);

  (*(v9 + 8))(v11, v8);
  return self & 1;
}

- (BOOL)hasContent
{
  v2 = self;
  v3 = DynamicLabel.hasContent.getter();

  return v3 & 1;
}

- (CGRect)jet_focusedFrame
{
  v2 = self;
  DynamicLabel.focusedFrame.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  DynamicLabel.measurements(fitting:in:)(a4);
  v8 = v7;
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