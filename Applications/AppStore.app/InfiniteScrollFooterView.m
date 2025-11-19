@interface InfiniteScrollFooterView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC8AppStore24InfiniteScrollFooterView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation InfiniteScrollFooterView

- (_TtC8AppStore24InfiniteScrollFooterView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = [(InfiniteScrollFooterView *)v4 traitCollection];
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for StaticDimension();
  sub_1000056A8(v6, qword_1009D2460);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007B0B70;
  *(v7 + 32) = v5;
  v8 = v5;
  v9 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();
  v11 = v10;

  v12 = width;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = [(InfiniteScrollFooterView *)v2 traitCollection];
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for StaticDimension();
  sub_1000056A8(v4, qword_1009D2460);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007B0B70;
  *(v5 + 32) = v3;
  v6 = v3;
  v7 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();
  v9 = v8;

  v10 = UIViewNoIntrinsicMetric;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = swift_getObjectType();
  v2 = v18.receiver;
  [(InfiniteScrollFooterView *)&v18 layoutSubviews];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = OBJC_IVAR____TtC8AppStore24InfiniteScrollFooterView_activityIndicator;
  [*&v2[OBJC_IVAR____TtC8AppStore24InfiniteScrollFooterView_activityIndicator] sizeThatFits:{v7, v9}];
  v13 = v12;
  v15 = v14;
  v16 = *&v2[v11];
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  v17 = CGRectGetMidX(v19) - v13 * 0.5;
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  [v16 setFrame:{v17, CGRectGetMidY(v20) - v15 * 0.5, v13, v15}];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(InfiniteScrollFooterView *)&v3 prepareForReuse];
  [*&v2[OBJC_IVAR____TtC8AppStore24InfiniteScrollFooterView_activityIndicator] stopAnimating];
}

@end