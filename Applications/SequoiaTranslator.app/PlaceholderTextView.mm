@interface PlaceholderTextView
- (CGRect)alignmentRectForFrame:(CGRect)frame;
- (CGRect)frameForAlignmentRect:(CGRect)rect;
- (CGSize)_systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NSLayoutYAxisAnchor)firstBaselineAnchor;
- (NSLayoutYAxisAnchor)lastBaselineAnchor;
- (NSString)text;
- (UIEdgeInsets)alignmentRectInsets;
- (UIEdgeInsets)textContainerInset;
- (UIView)viewForFirstBaselineLayout;
- (UIView)viewForLastBaselineLayout;
- (_TtC17SequoiaTranslator19PlaceholderTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (int64_t)textAlignment;
- (void)dealloc;
- (void)layoutSubviews;
- (void)scribbleInteractionDidFinishWriting:(id)writing;
- (void)scribbleInteractionWillBeginWriting:(id)writing;
- (void)setMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTextContainerInset:(UIEdgeInsets)inset;
- (void)textChangedWithNotification:(id)notification;
@end

@implementation PlaceholderTextView

- (NSString)text
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlaceholderTextView();
  v2 = v7.receiver;
  text = [(PlaceholderTextView *)&v7 text];
  if (text)
  {
    v4 = text;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setText:(id)text
{
  if (text)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for PlaceholderTextView();
  [(PlaceholderTextView *)&v7 setText:v5];

  PlaceholderTextView.updatePlaceholderVisible()();
}

- (int64_t)textAlignment
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlaceholderTextView();
  return [(PlaceholderTextView *)&v3 textAlignment];
}

- (void)setTextAlignment:(int64_t)alignment
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PlaceholderTextView();
  v4 = v5.receiver;
  [(PlaceholderTextView *)&v5 setTextAlignment:alignment];
  PlaceholderTextView.updatePlaceholderProperties()();
}

- (UIEdgeInsets)textContainerInset
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for PlaceholderTextView();
  [(PlaceholderTextView *)&v6 textContainerInset];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setTextContainerInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PlaceholderTextView();
  v7 = v8.receiver;
  [(PlaceholderTextView *)&v8 setTextContainerInset:top, left, bottom, right];
  PlaceholderTextView.updatePlaceholderProperties()();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  PlaceholderTextView.intrinsicContentSize.getter();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  selfCopy = self;
  PlaceholderTextView.alignmentRectInsets.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (UIView)viewForFirstBaselineLayout
{
  selfCopy = self;
  Baseline = PlaceholderTextView.forFirstBaselineLayout.getter();

  return Baseline;
}

- (UIView)viewForLastBaselineLayout
{
  selfCopy = self;
  Baseline = PlaceholderTextView.forLastBaselineLayout.getter();

  return Baseline;
}

- (NSLayoutYAxisAnchor)firstBaselineAnchor
{
  selfCopy = self;
  v3 = PlaceholderTextView.firstBaselineAnchor.getter();

  return v3;
}

- (NSLayoutYAxisAnchor)lastBaselineAnchor
{
  selfCopy = self;
  v3 = PlaceholderTextView.lastBaselineAnchor.getter();

  return v3;
}

- (_TtC17SequoiaTranslator19PlaceholderTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  containerCopy = container;
  return PlaceholderTextView.init(frame:textContainer:)(container, x, y, width, height);
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy name:UITextViewTextDidChangeNotification object:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for PlaceholderTextView();
  [(PlaceholderTextView *)&v6 dealloc];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for PlaceholderTextView();
  v2 = v4.receiver;
  [(PlaceholderTextView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator19PlaceholderTextView_placeholderTextView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  PlaceholderTextView.sizeThatFits(_:)(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  PlaceholderTextView.systemLayoutSizeFitting(_:)(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  PlaceholderTextView.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(width, height, priority, fittingPriority);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)_systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  PlaceholderTextView._systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(width, height, priority, fittingPriority);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGRect)alignmentRectForFrame:(CGRect)frame
{
  v3 = sub_1001FBC54(self, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height, a2, PlaceholderTextView.alignmentRect(forFrame:));
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)frameForAlignmentRect:(CGRect)rect
{
  v3 = sub_1001FBC54(self, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, a2, PlaceholderTextView.frame(forAlignmentRect:));
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (text)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    selfCopy2 = self;
    v8 = 0;
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for PlaceholderTextView();
  [(PlaceholderTextView *)&v10 setMarkedText:v8 selectedRange:location, length];

  PlaceholderTextView.updatePlaceholderVisible()();
}

- (void)textChangedWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  PlaceholderTextView.updatePlaceholderVisible()();

  (*(v5 + 8))(v7, v4);
}

- (void)scribbleInteractionWillBeginWriting:(id)writing
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator19PlaceholderTextView_suppressPlaceholder) = 1;
  selfCopy = self;
  PlaceholderTextView.updatePlaceholderVisible()();
}

- (void)scribbleInteractionDidFinishWriting:(id)writing
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator19PlaceholderTextView_suppressPlaceholder) = 0;
  selfCopy = self;
  PlaceholderTextView.updatePlaceholderVisible()();
}

@end