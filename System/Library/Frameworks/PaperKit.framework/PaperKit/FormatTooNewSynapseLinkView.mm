@interface FormatTooNewSynapseLinkView
- (_TtC8PaperKit27FormatTooNewSynapseLinkView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation FormatTooNewSynapseLinkView

- (_TtC8PaperKit27FormatTooNewSynapseLinkView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit27FormatTooNewSynapseLinkView____lazy_storage___imageView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for FormatTooNewSynapseLinkView();
  v2 = v4.receiver;
  [(FormatTooNewSynapseLinkView *)&v4 layoutSubviews];
  v3 = FormatTooNewSynapseLinkView.imageView.getter();
  [v2 center];
  [v3 setCenter_];
}

@end