@interface DynamicLabel
- (BOOL)hasContent;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (CGRect)jet_focusedFrame;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (NSString)maximumContentSizeCategory;
- (void)invalidateIntrinsicContentSize;
- (void)setContentHuggingPriority:(float)priority forAxis:(int64_t)axis;
- (void)setMaximumContentSizeCategory:(id)category;
- (void)textViewDidChangeSelection:(id)selection;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DynamicLabel

- (void)invalidateIntrinsicContentSize
{
  selfCopy = self;
  DynamicLabel.invalidateIntrinsicContentSize()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  DynamicLabel.traitCollectionDidChange(_:)(v9);
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = DynamicLabel.maximumContentSizeCategory.getter();

  return v3;
}

- (void)setMaximumContentSizeCategory:(id)category
{
  categoryCopy = category;
  selfCopy = self;
  DynamicLabel.maximumContentSizeCategory.setter(category);
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  eventCopy = event;
  y = inside.y;
  x = inside.x;
  eventCopy2 = event;
  selfCopy = self;
  v11.value.super.isa = eventCopy;
  LOBYTE(eventCopy) = DynamicLabel.point(inside:with:)(__PAIR128__(*&y, *&x), v11);

  return eventCopy & 1;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = DynamicLabel.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v6 = DynamicLabel.systemLayoutSizeFitting(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setContentHuggingPriority:(float)priority forAxis:(int64_t)axis
{
  selfCopy = self;
  DynamicLabel.setContentHuggingPriority(_:for:)(priority, axis);
}

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  DynamicLabel.textViewDidChangeSelection(_:)(selectionCopy);
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v8 = sub_1CA19ADF8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA19ADA8();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = DynamicLabel.textView(_:shouldInteractWith:in:interaction:)(selfCopy, v11);

  (*(v9 + 8))(v11, v8);
  return self & 1;
}

- (BOOL)hasContent
{
  selfCopy = self;
  v3 = DynamicLabel.hasContent.getter();

  return v3 & 1;
}

- (CGRect)jet_focusedFrame
{
  selfCopy = self;
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

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  DynamicLabel.measurements(fitting:in:)(in);
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