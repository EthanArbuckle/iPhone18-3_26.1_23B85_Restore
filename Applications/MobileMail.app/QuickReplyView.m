@interface QuickReplyView
+ (double)cornerRadius;
+ (double)defaultHeight;
+ (double)horizontalPadding;
+ (double)innerVerticalPadding;
- (BOOL)isComposing;
- (UIButton)quickReplyExpandButton;
- (UIButton)quickReplySendButton;
- (UIView)animationSourceView;
- (UIView)contentView;
- (_TtP10MobileMail22QuickReplyViewDelegate_)delegate;
- (double)bottomInset;
- (double)horizontalInset;
- (double)topInset;
- (id)contentViewSnapshot;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)addComposeView:(id)a3;
- (void)animationContext:(id)a3;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)didTapContentView:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)removeSnapshotIfNeeded;
- (void)resetWithReason:(int64_t)a3;
- (void)setBottomInset:(double)a3;
- (void)setContentView:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setHorizontalInset:(double)a3;
- (void)setQuickReplyPlaceholderLabelState:(BOOL)a3;
- (void)setTopInset:(double)a3;
- (void)showSnapshot;
- (void)updatePlaceholderWithMessage:(id)a3;
- (void)updateQuickReplySendButtonTopOffset:(double)a3;
@end

@implementation QuickReplyView

+ (double)defaultHeight
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  return static QuickReplyView.defaultHeight.getter();
}

+ (double)innerVerticalPadding
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  return static QuickReplyView.innerVerticalPadding.getter();
}

+ (double)horizontalPadding
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  return static QuickReplyView.horizontalPadding.getter();
}

+ (double)cornerRadius
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  return static QuickReplyView.cornerRadius.getter();
}

- (_TtP10MobileMail22QuickReplyViewDelegate_)delegate
{
  _objc_retain(self);
  v4 = QuickReplyView.delegate.getter();
  _objc_release(self);

  return v4;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  _objc_retain(self);
  QuickReplyView.delegate.setter();
  _objc_release(self);
}

- (double)horizontalInset
{
  _objc_retain(self);
  v4 = QuickReplyView.horizontalInset.getter();
  _objc_release(self);
  return v4;
}

- (void)setHorizontalInset:(double)a3
{
  _objc_retain(self);
  QuickReplyView.horizontalInset.setter(a3);
  _objc_release(self);
}

- (double)topInset
{
  _objc_retain(self);
  v4 = QuickReplyView.topInset.getter();
  _objc_release(self);
  return v4;
}

- (void)setTopInset:(double)a3
{
  _objc_retain(self);
  QuickReplyView.topInset.setter(a3);
  _objc_release(self);
}

- (double)bottomInset
{
  _objc_retain(self);
  v4 = QuickReplyView.bottomInset.getter();
  _objc_release(self);
  return v4;
}

- (void)setBottomInset:(double)a3
{
  _objc_retain(self);
  QuickReplyView.bottomInset.setter(a3);
  _objc_release(self);
}

- (UIView)animationSourceView
{
  _objc_retain(self);
  v4 = QuickReplyView.animationSourceView.getter();
  _objc_release(self);

  return v4;
}

- (BOOL)isComposing
{
  _objc_retain(self);
  QuickReplyView.isComposing.getter();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (UIView)contentView
{
  _objc_retain(self);
  v4 = QuickReplyView.contentView.getter();
  _objc_release(self);

  return v4;
}

- (void)setContentView:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  QuickReplyView.contentView.setter(a3);
  _objc_release(self);
}

- (void)layoutSubviews
{
  _objc_retain(self);
  QuickReplyView.layoutSubviews()();
  _objc_release(self);
}

- (void)prepareForReuse
{
  _objc_retain(self);
  QuickReplyView.prepareForReuse()();
  _objc_release(self);
}

- (void)resetWithReason:(int64_t)a3
{
  _objc_retain(self);
  QuickReplyView.resetWithReason(_:)(a3);
  _objc_release(self);
}

- (void)updatePlaceholderWithMessage:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  QuickReplyView.updatePlaceholder(message:)(a3);
  _objc_release(self);
  _objc_release(a3);
}

- (void)addComposeView:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  QuickReplyView.addComposeView(_:)(a3);
  _objc_release(self);
  _objc_release(a3);
}

- (void)setQuickReplyPlaceholderLabelState:(BOOL)a3
{
  _objc_retain(self);
  v3 = _convertObjCBoolToBool(_:)();
  sub_1003F1738(v3 & 1);
  _objc_release(self);
}

- (void)updateQuickReplySendButtonTopOffset:(double)a3
{
  _objc_retain(self);
  QuickReplyView.updateQuickReplySendButtonTopOffset(_:)(a3);
  _objc_release(self);
}

- (void)animationContext:(id)a3
{
  v4 = _Block_copy(a3);
  _objc_retain(self);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  QuickReplyView.animationContext(_:)(sub_1003F7888, v5);

  _objc_release(self);
}

- (id)contentViewSnapshot
{
  _objc_retain(self);
  v4 = QuickReplyView.contentViewSnapshot()();
  _objc_release(self);

  return v4;
}

- (void)showSnapshot
{
  _objc_retain(self);
  QuickReplyView.showSnapshot()();
  _objc_release(self);
}

- (void)removeSnapshotIfNeeded
{
  _objc_retain(self);
  QuickReplyView.removeSnapshotIfNeeded()();
  _objc_release(self);
}

- (void)didTapContentView:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_1003F6090(a3);
  _objc_release(self);
  _objc_release(a3);
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v12 = self;
  v11 = a3;
  v10 = type metadata accessor for Notification();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v11);
  v9 = &v5 - v6;
  _objc_retain(v4);
  _objc_retain(self);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1003F6CE8();
  (*(v7 + 8))(v9, v10);
  _objc_release(v11);
  _objc_release(v12);
}

- (UIButton)quickReplySendButton
{
  _objc_retain(self);
  v4 = QuickReplyView.quickReplySendButton.getter();
  _objc_release(self);

  return v4;
}

- (UIButton)quickReplyExpandButton
{
  _objc_retain(self);
  v4 = QuickReplyView.quickReplyExpandButton.getter();
  _objc_release(self);

  return v4;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(self);
  v9 = QuickReplyView.pointerInteraction(_:styleFor:)(a3, a4);
  _objc_release(self);
  _objc_release(a4);
  _objc_release(a3);

  return v9;
}

@end