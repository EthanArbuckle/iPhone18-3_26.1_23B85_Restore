@interface ContainerDetailTracklistSectionHeaderView
- (void)layoutSubviews;
@end

@implementation ContainerDetailTracklistSectionHeaderView

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = type metadata accessor for ContainerDetailTracklistSectionHeaderView();
  v2 = v16.receiver;
  [(ContainerDetailTracklistSectionHeaderView *)&v16 layoutSubviews];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v2 music_inheritedLayoutInsets];
  v12 = v11;
  v14 = v13;
  [v2 effectiveUserInterfaceLayoutDirection];
  UIEdgeInsetsInsetRect(v4, v6, v8, v10, v12, v14);
  v15 = *&v2[OBJC_IVAR____TtC16MusicApplication41ContainerDetailTracklistSectionHeaderView_textStackView];
  sub_ABA490();
  [v15 setFrame:?];
}

@end