@interface AnyTextBoxView
- (_TtC8PaperKit14AnyTextBoxView)initWithCoder:(id)coder;
- (_TtC8PaperKit14AnyTextBoxView)initWithFrame:(CGRect)frame;
@end

@implementation AnyTextBoxView

- (_TtC8PaperKit14AnyTextBoxView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_isScribbling) = 0;
  v8 = self + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_liveUneditedModelCoordinateSpace;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  v8[48] = 1;
  v9 = OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics;
  type metadata accessor for FormTextFieldAnalytics();
  swift_allocObject();
  *(&self->super.super.super.isa + v9) = FormTextFieldAnalytics.init()();
  v11.receiver = self;
  v11.super_class = type metadata accessor for AnyTextBoxView();
  return [(AnyTextBoxView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC8PaperKit14AnyTextBoxView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_isScribbling) = 0;
  v4 = self + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_liveUneditedModelCoordinateSpace;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  v4[48] = 1;
  v5 = OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics;
  type metadata accessor for FormTextFieldAnalytics();
  swift_allocObject();
  *(&self->super.super.super.isa + v5) = FormTextFieldAnalytics.init()();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end