@interface PlaceholderTextView
- (CGRect)alignmentRectForFrame:(CGRect)a3;
- (CGRect)frameForAlignmentRect:(CGRect)a3;
- (CGSize)_systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (NSLayoutYAxisAnchor)firstBaselineAnchor;
- (NSLayoutYAxisAnchor)lastBaselineAnchor;
- (NSString)text;
- (UIEdgeInsets)alignmentRectInsets;
- (UIEdgeInsets)textContainerInset;
- (UIView)viewForFirstBaselineLayout;
- (UIView)viewForLastBaselineLayout;
- (_TtC17SequoiaTranslator19PlaceholderTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (int64_t)textAlignment;
- (void)dealloc;
- (void)layoutSubviews;
- (void)scribbleInteractionDidFinishWriting:(id)a3;
- (void)scribbleInteractionWillBeginWriting:(id)a3;
- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)setText:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTextContainerInset:(UIEdgeInsets)a3;
- (void)textChangedWithNotification:(id)a3;
@end

@implementation PlaceholderTextView

- (NSString)text
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlaceholderTextView();
  v2 = v7.receiver;
  v3 = [(PlaceholderTextView *)&v7 text];
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setText:(id)a3
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = self;
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = self;
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

- (void)setTextAlignment:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PlaceholderTextView();
  v4 = v5.receiver;
  [(PlaceholderTextView *)&v5 setTextAlignment:a3];
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

- (void)setTextContainerInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PlaceholderTextView();
  v7 = v8.receiver;
  [(PlaceholderTextView *)&v8 setTextContainerInset:top, left, bottom, right];
  PlaceholderTextView.updatePlaceholderProperties()();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
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
  v2 = self;
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
  v2 = self;
  Baseline = PlaceholderTextView.forFirstBaselineLayout.getter();

  return Baseline;
}

- (UIView)viewForLastBaselineLayout
{
  v2 = self;
  Baseline = PlaceholderTextView.forLastBaselineLayout.getter();

  return Baseline;
}

- (NSLayoutYAxisAnchor)firstBaselineAnchor
{
  v2 = self;
  v3 = PlaceholderTextView.firstBaselineAnchor.getter();

  return v3;
}

- (NSLayoutYAxisAnchor)lastBaselineAnchor
{
  v2 = self;
  v3 = PlaceholderTextView.lastBaselineAnchor.getter();

  return v3;
}

- (_TtC17SequoiaTranslator19PlaceholderTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  return PlaceholderTextView.init(frame:textContainer:)(a4, x, y, width, height);
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4 name:UITextViewTextDidChangeNotification object:v4];

  v6.receiver = v4;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  PlaceholderTextView.sizeThatFits(_:)(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  PlaceholderTextView.systemLayoutSizeFitting(_:)(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  PlaceholderTextView.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(width, height, a4, a5);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)_systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  PlaceholderTextView._systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(width, height, a4, a5);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGRect)alignmentRectForFrame:(CGRect)a3
{
  v3 = sub_1001FBC54(self, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a2, PlaceholderTextView.alignmentRect(forFrame:));
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)frameForAlignmentRect:(CGRect)a3
{
  v3 = sub_1001FBC54(self, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a2, PlaceholderTextView.frame(forAlignmentRect:));
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = self;
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = self;
    v8 = 0;
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for PlaceholderTextView();
  [(PlaceholderTextView *)&v10 setMarkedText:v8 selectedRange:location, length];

  PlaceholderTextView.updatePlaceholderVisible()();
}

- (void)textChangedWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  PlaceholderTextView.updatePlaceholderVisible()();

  (*(v5 + 8))(v7, v4);
}

- (void)scribbleInteractionWillBeginWriting:(id)a3
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator19PlaceholderTextView_suppressPlaceholder) = 1;
  v3 = self;
  PlaceholderTextView.updatePlaceholderVisible()();
}

- (void)scribbleInteractionDidFinishWriting:(id)a3
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator19PlaceholderTextView_suppressPlaceholder) = 0;
  v3 = self;
  PlaceholderTextView.updatePlaceholderVisible()();
}

@end