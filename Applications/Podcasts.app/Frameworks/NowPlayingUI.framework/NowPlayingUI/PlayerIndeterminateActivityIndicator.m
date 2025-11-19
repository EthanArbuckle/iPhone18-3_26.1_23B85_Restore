@interface PlayerIndeterminateActivityIndicator
- (void)layoutSubviews;
@end

@implementation PlayerIndeterminateActivityIndicator

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for PlayerIndeterminateActivityIndicator();
  v2 = v13.receiver;
  [(PlayerIndeterminateActivityIndicator *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_patternLayer];
  v4 = [v2 layer];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
}

@end