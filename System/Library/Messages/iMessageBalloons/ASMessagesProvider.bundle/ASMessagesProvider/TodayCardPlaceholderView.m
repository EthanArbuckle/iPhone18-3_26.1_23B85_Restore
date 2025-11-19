@interface TodayCardPlaceholderView
- (void)layoutSubviews;
@end

@implementation TodayCardPlaceholderView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TodayCardPlaceholderView();
  v2 = v5.receiver;
  [(TodayCardPlaceholderView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider24TodayCardPlaceholderView_shadowView];
  [v2 bounds];
  [v3 setFrame:?];
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider24TodayCardPlaceholderView_cardPlaceholder];
  [v2 bounds];
  [v4 setFrame:?];
}

@end