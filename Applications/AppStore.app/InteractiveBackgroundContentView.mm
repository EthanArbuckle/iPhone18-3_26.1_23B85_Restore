@interface InteractiveBackgroundContentView
- (UIColor)backgroundColor;
- (_TtC8AppStoreP33_7CB11EB016C41A3CC100BCE813D63B9132InteractiveBackgroundContentView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation InteractiveBackgroundContentView

- (_TtC8AppStoreP33_7CB11EB016C41A3CC100BCE813D63B9132InteractiveBackgroundContentView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8AppStoreP33_7CB11EB016C41A3CC100BCE813D63B9132InteractiveBackgroundContentView_artworkView;
  type metadata accessor for ArtworkView();
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for InteractiveBackgroundContentView();
  backgroundColor = [(InteractiveBackgroundContentView *)&v4 backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for InteractiveBackgroundContentView();
  colorCopy = color;
  v5 = v7.receiver;
  [(InteractiveBackgroundContentView *)&v7 setBackgroundColor:colorCopy];
  backgroundColor = [v5 backgroundColor];
  ArtworkView.backgroundColor.setter();
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InteractiveBackgroundContentView();
  v2 = v3.receiver;
  [(InteractiveBackgroundContentView *)&v3 layoutSubviews];
  [v2 bounds];
  ArtworkView.frame.setter();
}

@end