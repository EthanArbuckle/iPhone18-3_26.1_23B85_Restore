@interface ConversationNavigationBarItemsManager
+ (BOOL)canUseDesktopClassNavigationBar;
+ (BOOL)shouldUseLeadingComposeButton;
+ (NSString)customizationIdentifier;
- (BOOL)showNavigationArrows;
- (BOOL)showSupplementaryButtonItem;
- (BOOL)useArchiveButton;
- (BOOL)useDesktopClassNavigationBar;
- (ComposeButtonItem)composeButtonItem;
- (ComposeCapable)scene;
- (MFArrowControlsView)arrowControlsView;
- (MFArrowControlsViewDelegate)arrowDelegate;
- (NSArray)arrowControlsButtonItems;
- (NSArray)defaultDesktopClassCenterBarButtonItemGroups;
- (NSArray)desktopClassCenterBarButtonItems;
- (UIBarButtonItem)archiveButtonItem;
- (UIBarButtonItem)arrowControlsButtonItem;
- (UIBarButtonItem)categorizeButtonItem;
- (UIBarButtonItem)cleanBackButtonItem;
- (UIBarButtonItem)contactLeftDoneButtonItem;
- (UIBarButtonItem)deleteButtonItem;
- (UIBarButtonItem)destructiveButtonItem;
- (UIBarButtonItem)doneButton;
- (UIBarButtonItem)doneButtonItem;
- (UIBarButtonItem)downArrowBarButtonItem;
- (UIBarButtonItem)flagButtonItem;
- (UIBarButtonItem)forwardButtonItem;
- (UIBarButtonItem)groupedSenderActionsButtonItem;
- (UIBarButtonItem)junkButtonItem;
- (UIBarButtonItem)laterButtonItem;
- (UIBarButtonItem)leftSpaceItem;
- (UIBarButtonItem)moveButtonItem;
- (UIBarButtonItem)muteButtonItem;
- (UIBarButtonItem)readButtonItem;
- (UIBarButtonItem)replyAllButtonItem;
- (UIBarButtonItem)replyButtonItem;
- (UIBarButtonItem)revealActionsButtonItem;
- (UIBarButtonItem)unreadButtonItem;
- (UIBarButtonItem)upArrowBarButtonItem;
- (UIBarButtonItemGroup)categorizeButtonItemGroup;
- (UIBarButtonItemGroup)destructiveButtonItemGroup;
- (UIBarButtonItemGroup)flagButtonItemGroup;
- (UIBarButtonItemGroup)forwardButtonItemGroup;
- (UIBarButtonItemGroup)junkButtonItemGroup;
- (UIBarButtonItemGroup)laterButtonItemGroup;
- (UIBarButtonItemGroup)moveButtonItemGroup;
- (UIBarButtonItemGroup)muteButtonItemGroup;
- (UIBarButtonItemGroup)readButtonItemGroup;
- (UIBarButtonItemGroup)replyAllButtonItemGroup;
- (UIBarButtonItemGroup)replyButtonItemGroup;
- (_TtC10MobileMail37ConversationNavigationBarItemsManager)initWithScene:(id)a3 delegate:(id)a4 actionHandler:(id)a5 arrowDelegate:(id)a6;
- (_TtP10MobileMail44ConversationNavigationBarItemsActionHandling_)actionHandler;
- (_TtP10MobileMail45ConversationNavigationBarItemsManagerDelegate_)delegate;
- (void)configureDesktopClassButtonsFor:(id)a3 isPrimary:(BOOL)a4 isShowingTitle:(BOOL)a5 animated:(BOOL)a6;
- (void)configureNavigationBar:(id)a3 navigationItem:(id)a4;
- (void)prewarmContent;
- (void)setActionHandler:(id)a3;
- (void)setArchiveButtonItem:(id)a3;
- (void)setArrowControlsButtonItem:(id)a3;
- (void)setArrowControlsButtonItems:(id)a3;
- (void)setArrowControlsView:(id)a3;
- (void)setArrowDelegate:(id)a3;
- (void)setCategorizeButtonItem:(id)a3;
- (void)setCleanBackButtonItem:(id)a3;
- (void)setComposeButtonItem:(id)a3;
- (void)setContactLeftDoneButtonItem:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDeleteButtonItem:(id)a3;
- (void)setDoneButton:(id)a3;
- (void)setDownArrowBarButtonItem:(id)a3;
- (void)setFlagButtonItem:(id)a3;
- (void)setForwardButtonItem:(id)a3;
- (void)setGroupedSenderActionsButtonItem:(id)a3;
- (void)setJunkButtonItem:(id)a3;
- (void)setLaterButtonItem:(id)a3;
- (void)setLeftSpaceItem:(id)a3;
- (void)setMoveButtonItem:(id)a3;
- (void)setMuteButtonItem:(id)a3;
- (void)setReadButtonItem:(id)a3;
- (void)setReplyAllButtonItem:(id)a3;
- (void)setReplyButtonItem:(id)a3;
- (void)setRevealActionsButtonItem:(id)a3;
- (void)setScene:(id)a3;
- (void)setShowNavigationArrows:(BOOL)a3;
- (void)setShowSupplementaryButtonItem:(BOOL)a3;
- (void)setUnreadButtonItem:(id)a3;
- (void)setUpArrowBarButtonItem:(id)a3;
- (void)setUseArchiveButton:(BOOL)a3;
- (void)setUseDesktopClassNavigationBar:(BOOL)a3;
- (void)updateEnabledStatesForMessage:(id)a3;
@end

@implementation ConversationNavigationBarItemsManager

- (_TtC10MobileMail37ConversationNavigationBarItemsManager)initWithScene:(id)a3 delegate:(id)a4 actionHandler:(id)a5 arrowDelegate:(id)a6
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return ConversationNavigationBarItemsManager.init(scene:delegate:actionHandler:arrowDelegate:)(a3, a4, a5, a6);
}

- (ComposeCapable)scene
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.scene.getter();
  _objc_release(self);

  return v4;
}

- (void)setScene:(id)a3
{
  swift_unknownObjectRetain();
  _objc_retain(self);
  ConversationNavigationBarItemsManager.scene.setter();
  _objc_release(self);
}

- (_TtP10MobileMail45ConversationNavigationBarItemsManagerDelegate_)delegate
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.delegate.getter();
  _objc_release(self);

  return v4;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  _objc_retain(self);
  ConversationNavigationBarItemsManager.delegate.setter();
  _objc_release(self);
}

- (_TtP10MobileMail44ConversationNavigationBarItemsActionHandling_)actionHandler
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.actionHandler.getter();
  _objc_release(self);

  return v4;
}

- (void)setActionHandler:(id)a3
{
  swift_unknownObjectRetain();
  _objc_retain(self);
  ConversationNavigationBarItemsManager.actionHandler.setter();
  _objc_release(self);
}

- (MFArrowControlsViewDelegate)arrowDelegate
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.arrowDelegate.getter();
  _objc_release(self);

  return v4;
}

- (void)setArrowDelegate:(id)a3
{
  swift_unknownObjectRetain();
  _objc_retain(self);
  ConversationNavigationBarItemsManager.arrowDelegate.setter();
  _objc_release(self);
}

- (BOOL)useArchiveButton
{
  _objc_retain(self);
  ConversationNavigationBarItemsManager.useArchiveButton.getter();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setUseArchiveButton:(BOOL)a3
{
  _objc_retain(self);
  v3 = _convertObjCBoolToBool(_:)();
  ConversationNavigationBarItemsManager.useArchiveButton.setter(v3 & 1);
  _objc_release(self);
}

- (BOOL)showNavigationArrows
{
  _objc_retain(self);
  ConversationNavigationBarItemsManager.showNavigationArrows.getter();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setShowNavigationArrows:(BOOL)a3
{
  _objc_retain(self);
  v3 = _convertObjCBoolToBool(_:)();
  ConversationNavigationBarItemsManager.showNavigationArrows.setter(v3 & 1);
  _objc_release(self);
}

- (BOOL)showSupplementaryButtonItem
{
  _objc_retain(self);
  ConversationNavigationBarItemsManager.showSupplementaryButtonItem.getter();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setShowSupplementaryButtonItem:(BOOL)a3
{
  _objc_retain(self);
  v3 = _convertObjCBoolToBool(_:)();
  ConversationNavigationBarItemsManager.showSupplementaryButtonItem.setter(v3 & 1);
  _objc_release(self);
}

- (BOOL)useDesktopClassNavigationBar
{
  _objc_retain(self);
  ConversationNavigationBarItemsManager.useDesktopClassNavigationBar.getter();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setUseDesktopClassNavigationBar:(BOOL)a3
{
  _objc_retain(self);
  v3 = _convertObjCBoolToBool(_:)();
  ConversationNavigationBarItemsManager.useDesktopClassNavigationBar.setter(v3 & 1);
  _objc_release(self);
}

- (UIBarButtonItem)doneButton
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.doneButton.getter();
  _objc_release(self);

  return v4;
}

- (void)setDoneButton:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.doneButton.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItem)doneButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.doneButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (UIBarButtonItem)revealActionsButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.revealActionsButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setRevealActionsButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.revealActionsButtonItem.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItem)replyButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.replyButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setReplyButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.replyButtonItem.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItemGroup)replyButtonItemGroup
{
  _objc_retain(self);
  v4 = sub_100296AA0();
  _objc_release(self);

  return v4;
}

- (UIBarButtonItem)replyAllButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.replyAllButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setReplyAllButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.replyAllButtonItem.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItemGroup)replyAllButtonItemGroup
{
  _objc_retain(self);
  v4 = sub_1002972D8();
  _objc_release(self);

  return v4;
}

- (UIBarButtonItem)forwardButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.forwardButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setForwardButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.forwardButtonItem.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItemGroup)forwardButtonItemGroup
{
  _objc_retain(self);
  v4 = sub_100297AAC();
  _objc_release(self);

  return v4;
}

- (UIBarButtonItem)archiveButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.archiveButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setArchiveButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.archiveButtonItem.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItem)deleteButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.deleteButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setDeleteButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.deleteButtonItem.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItem)destructiveButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.destructiveButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (UIBarButtonItemGroup)destructiveButtonItemGroup
{
  _objc_retain(self);
  v4 = sub_1002990A4();
  _objc_release(self);

  return v4;
}

- (UIBarButtonItem)moveButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.moveButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setMoveButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.moveButtonItem.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItemGroup)moveButtonItemGroup
{
  _objc_retain(self);
  v4 = sub_100299878();
  _objc_release(self);

  return v4;
}

- (UIBarButtonItem)flagButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.flagButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setFlagButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.flagButtonItem.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItemGroup)flagButtonItemGroup
{
  _objc_retain(self);
  v4 = sub_100299F58();
  _objc_release(self);

  return v4;
}

- (UIBarButtonItem)readButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.readButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setReadButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.readButtonItem.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItem)unreadButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.unreadButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setUnreadButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.unreadButtonItem.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItemGroup)readButtonItemGroup
{
  _objc_retain(self);
  v4 = sub_10029AC84();
  _objc_release(self);

  return v4;
}

- (UIBarButtonItem)junkButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.junkButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setJunkButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.junkButtonItem.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItemGroup)junkButtonItemGroup
{
  _objc_retain(self);
  v4 = sub_10029B500();
  _objc_release(self);

  return v4;
}

- (UIBarButtonItem)muteButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.muteButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setMuteButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.muteButtonItem.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItemGroup)muteButtonItemGroup
{
  _objc_retain(self);
  v4 = sub_10029BCA4();
  _objc_release(self);

  return v4;
}

- (UIBarButtonItem)laterButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.laterButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setLaterButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.laterButtonItem.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItemGroup)laterButtonItemGroup
{
  _objc_retain(self);
  v4 = sub_10029C448();
  _objc_release(self);

  return v4;
}

- (ComposeButtonItem)composeButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.composeButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setComposeButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.composeButtonItem.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItem)contactLeftDoneButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.contactLeftDoneButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setContactLeftDoneButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.contactLeftDoneButtonItem.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItem)leftSpaceItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.leftSpaceItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setLeftSpaceItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.leftSpaceItem.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItem)arrowControlsButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.arrowControlsButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setArrowControlsButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.arrowControlsButtonItem.setter(a3);
  _objc_release(self);
}

- (NSArray)arrowControlsButtonItems
{
  _objc_retain(self);
  ConversationNavigationBarItemsManager.arrowControlsButtonItems.getter();
  _objc_release(self);
  sub_100295C30();
  isa = Array._bridgeToObjectiveC()().super.isa;

  return isa;
}

- (void)setArrowControlsButtonItems:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_100295C30();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  ConversationNavigationBarItemsManager.arrowControlsButtonItems.setter(v4);
  _objc_release(a3);
  _objc_release(self);
}

- (UIBarButtonItem)groupedSenderActionsButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.groupedSenderActionsButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setGroupedSenderActionsButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.groupedSenderActionsButtonItem.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItem)cleanBackButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.cleanBackButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setCleanBackButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.cleanBackButtonItem.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItem)categorizeButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.categorizeButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setCategorizeButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.categorizeButtonItem.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItemGroup)categorizeButtonItemGroup
{
  _objc_retain(self);
  v4 = sub_10029F398();
  _objc_release(self);

  return v4;
}

- (MFArrowControlsView)arrowControlsView
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.arrowControlsView.getter();
  _objc_release(self);

  return v4;
}

- (void)setArrowControlsView:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.arrowControlsView.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItem)upArrowBarButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.upArrowBarButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setUpArrowBarButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.upArrowBarButtonItem.setter(a3);
  _objc_release(self);
}

- (UIBarButtonItem)downArrowBarButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.downArrowBarButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setDownArrowBarButtonItem:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.downArrowBarButtonItem.setter(a3);
  _objc_release(self);
}

- (void)prewarmContent
{
  _objc_retain(self);
  ConversationNavigationBarItemsManager.prewarmContent()();
  _objc_release(self);
}

- (void)updateEnabledStatesForMessage:(id)a3
{
  swift_unknownObjectRetain();
  _objc_retain(self);
  ConversationNavigationBarItemsManager.updateEnabledStatesForMessage(_:)(a3);
  _objc_release(self);
  swift_unknownObjectRelease();
}

+ (BOOL)canUseDesktopClassNavigationBar
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  sub_1002A3314();
  return _convertBoolToObjCBool(_:)() & 1;
}

+ (BOOL)shouldUseLeadingComposeButton
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  sub_1002A345C();
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)configureNavigationBar:(id)a3 navigationItem:(id)a4
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.configureNavigationBar(_:navigationItem:)(a3, a4);
  _objc_release(self);
  _objc_release(a4);
  _objc_release(a3);
}

- (void)configureDesktopClassButtonsFor:(id)a3 isPrimary:(BOOL)a4 isShowingTitle:(BOOL)a5 animated:(BOOL)a6
{
  _objc_retain(a3);
  _objc_retain(self);
  v8 = _convertObjCBoolToBool(_:)();
  v9 = _convertObjCBoolToBool(_:)();
  v7 = _convertObjCBoolToBool(_:)();
  ConversationNavigationBarItemsManager.configureDesktopClassButtons(for:isPrimary:isShowingTitle:animated:)(a3, v8 & 1, v9 & 1, v7 & 1);
  _objc_release(self);
  _objc_release(a3);
}

- (NSArray)desktopClassCenterBarButtonItems
{
  _objc_retain(self);
  sub_1002A55A0();
  _objc_release(self);
  sub_100295C30();
  isa = Array._bridgeToObjectiveC()().super.isa;

  return isa;
}

+ (NSString)customizationIdentifier
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  sub_1002A5698();
  if (v2)
  {
    v4 = String._bridgeToObjectiveC()();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)defaultDesktopClassCenterBarButtonItemGroups
{
  _objc_retain(self);
  sub_1002A53A8();
  _objc_release(self);
  sub_100296B8C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  return isa;
}

@end