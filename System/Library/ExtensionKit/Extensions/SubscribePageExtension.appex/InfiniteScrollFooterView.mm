@interface InfiniteScrollFooterView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension24InfiniteScrollFooterView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation InfiniteScrollFooterView

- (_TtC22SubscribePageExtension24InfiniteScrollFooterView)initWithCoder:(id)coder
{
  result = sub_100754644();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  traitCollection = [(InfiniteScrollFooterView *)selfCopy traitCollection];
  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v6 = sub_100750B04();
  sub_10000D0FC(v6, qword_1009820C8);
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007A5CF0;
  *(v7 + 32) = traitCollection;
  v8 = traitCollection;
  v9 = sub_100751044();
  sub_100750544();
  v11 = v10;

  v12 = width;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  traitCollection = [(InfiniteScrollFooterView *)selfCopy traitCollection];
  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v4 = sub_100750B04();
  sub_10000D0FC(v4, qword_1009820C8);
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007A5CF0;
  *(v5 + 32) = traitCollection;
  v6 = traitCollection;
  v7 = sub_100751044();
  sub_100750544();
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
  v11 = OBJC_IVAR____TtC22SubscribePageExtension24InfiniteScrollFooterView_activityIndicator;
  [*&v2[OBJC_IVAR____TtC22SubscribePageExtension24InfiniteScrollFooterView_activityIndicator] sizeThatFits:{v7, v9}];
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
  [*&v2[OBJC_IVAR____TtC22SubscribePageExtension24InfiniteScrollFooterView_activityIndicator] stopAnimating];
}

@end