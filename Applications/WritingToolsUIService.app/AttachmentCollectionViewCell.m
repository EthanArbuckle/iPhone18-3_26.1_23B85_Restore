@interface AttachmentCollectionViewCell
- (void)didTapCloseButton;
- (void)layoutSubviews;
@end

@implementation AttachmentCollectionViewCell

- (void)didTapCloseButton
{
  v2 = self;
  sub_10003D3F0();
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v2 = v8.receiver;
  [(AttachmentCollectionViewCell *)&v8 layoutSubviews];
  [objc_opt_self() preferredTapRegionSizeForStyle:{0, v8.receiver, v8.super_class}];
  v4 = v3;
  v6 = v5;
  v7 = *&v2[OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_closeButton];
  [v2 bounds];
  [v7 setFrame:{CGRectGetMaxX(v9) - v4, 0.0, v4, v6}];
}

@end