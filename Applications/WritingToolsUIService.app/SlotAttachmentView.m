@interface SlotAttachmentView
- (void)didTapCloseButton;
- (void)layoutSubviews;
@end

@implementation SlotAttachmentView

- (void)didTapCloseButton
{
  v2 = self;
  sub_100168904();
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v2 = v8.receiver;
  [(SlotAttachmentView *)&v8 layoutSubviews];
  [objc_opt_self() preferredTapRegionSizeForStyle:{0, v8.receiver, v8.super_class}];
  v4 = v3;
  v6 = v5;
  v7 = *&v2[OBJC_IVAR____TtC21WritingToolsUIService18SlotAttachmentView_closeButton];
  [v2 bounds];
  [v7 setFrame:{CGRectGetMaxX(v9) - v4, v6 * 0.5, v4, v6}];
}

@end