@interface EpisodeStateControlsStackView
- (void)layoutSubviews;
@end

@implementation EpisodeStateControlsStackView

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(EpisodeStateControlsStackView *)&v15 layoutSubviews];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews29EpisodeStateControlsStackView_moreButton] frame];
  sub_E58A0(v4, v6, v8, v10, v11, v12, v13, v14);
}

@end