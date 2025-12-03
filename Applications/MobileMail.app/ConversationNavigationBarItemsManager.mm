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
- (_TtC10MobileMail37ConversationNavigationBarItemsManager)initWithScene:(id)scene delegate:(id)delegate actionHandler:(id)handler arrowDelegate:(id)arrowDelegate;
- (_TtP10MobileMail44ConversationNavigationBarItemsActionHandling_)actionHandler;
- (_TtP10MobileMail45ConversationNavigationBarItemsManagerDelegate_)delegate;
- (void)configureDesktopClassButtonsFor:(id)for isPrimary:(BOOL)primary isShowingTitle:(BOOL)title animated:(BOOL)animated;
- (void)configureNavigationBar:(id)bar navigationItem:(id)item;
- (void)prewarmContent;
- (void)setActionHandler:(id)handler;
- (void)setArchiveButtonItem:(id)item;
- (void)setArrowControlsButtonItem:(id)item;
- (void)setArrowControlsButtonItems:(id)items;
- (void)setArrowControlsView:(id)view;
- (void)setArrowDelegate:(id)delegate;
- (void)setCategorizeButtonItem:(id)item;
- (void)setCleanBackButtonItem:(id)item;
- (void)setComposeButtonItem:(id)item;
- (void)setContactLeftDoneButtonItem:(id)item;
- (void)setDelegate:(id)delegate;
- (void)setDeleteButtonItem:(id)item;
- (void)setDoneButton:(id)button;
- (void)setDownArrowBarButtonItem:(id)item;
- (void)setFlagButtonItem:(id)item;
- (void)setForwardButtonItem:(id)item;
- (void)setGroupedSenderActionsButtonItem:(id)item;
- (void)setJunkButtonItem:(id)item;
- (void)setLaterButtonItem:(id)item;
- (void)setLeftSpaceItem:(id)item;
- (void)setMoveButtonItem:(id)item;
- (void)setMuteButtonItem:(id)item;
- (void)setReadButtonItem:(id)item;
- (void)setReplyAllButtonItem:(id)item;
- (void)setReplyButtonItem:(id)item;
- (void)setRevealActionsButtonItem:(id)item;
- (void)setScene:(id)scene;
- (void)setShowNavigationArrows:(BOOL)arrows;
- (void)setShowSupplementaryButtonItem:(BOOL)item;
- (void)setUnreadButtonItem:(id)item;
- (void)setUpArrowBarButtonItem:(id)item;
- (void)setUseArchiveButton:(BOOL)button;
- (void)setUseDesktopClassNavigationBar:(BOOL)bar;
- (void)updateEnabledStatesForMessage:(id)message;
@end

@implementation ConversationNavigationBarItemsManager

- (_TtC10MobileMail37ConversationNavigationBarItemsManager)initWithScene:(id)scene delegate:(id)delegate actionHandler:(id)handler arrowDelegate:(id)arrowDelegate
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return ConversationNavigationBarItemsManager.init(scene:delegate:actionHandler:arrowDelegate:)(scene, delegate, handler, arrowDelegate);
}

- (ComposeCapable)scene
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.scene.getter();
  _objc_release(self);

  return v4;
}

- (void)setScene:(id)scene
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

- (void)setDelegate:(id)delegate
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

- (void)setActionHandler:(id)handler
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

- (void)setArrowDelegate:(id)delegate
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

- (void)setUseArchiveButton:(BOOL)button
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

- (void)setShowNavigationArrows:(BOOL)arrows
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

- (void)setShowSupplementaryButtonItem:(BOOL)item
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

- (void)setUseDesktopClassNavigationBar:(BOOL)bar
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

- (void)setDoneButton:(id)button
{
  _objc_retain(button);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.doneButton.setter(button);
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

- (void)setRevealActionsButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.revealActionsButtonItem.setter(item);
  _objc_release(self);
}

- (UIBarButtonItem)replyButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.replyButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setReplyButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.replyButtonItem.setter(item);
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

- (void)setReplyAllButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.replyAllButtonItem.setter(item);
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

- (void)setForwardButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.forwardButtonItem.setter(item);
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

- (void)setArchiveButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.archiveButtonItem.setter(item);
  _objc_release(self);
}

- (UIBarButtonItem)deleteButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.deleteButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setDeleteButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.deleteButtonItem.setter(item);
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

- (void)setMoveButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.moveButtonItem.setter(item);
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

- (void)setFlagButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.flagButtonItem.setter(item);
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

- (void)setReadButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.readButtonItem.setter(item);
  _objc_release(self);
}

- (UIBarButtonItem)unreadButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.unreadButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setUnreadButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.unreadButtonItem.setter(item);
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

- (void)setJunkButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.junkButtonItem.setter(item);
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

- (void)setMuteButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.muteButtonItem.setter(item);
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

- (void)setLaterButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.laterButtonItem.setter(item);
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

- (void)setComposeButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.composeButtonItem.setter(item);
  _objc_release(self);
}

- (UIBarButtonItem)contactLeftDoneButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.contactLeftDoneButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setContactLeftDoneButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.contactLeftDoneButtonItem.setter(item);
  _objc_release(self);
}

- (UIBarButtonItem)leftSpaceItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.leftSpaceItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setLeftSpaceItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.leftSpaceItem.setter(item);
  _objc_release(self);
}

- (UIBarButtonItem)arrowControlsButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.arrowControlsButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setArrowControlsButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.arrowControlsButtonItem.setter(item);
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

- (void)setArrowControlsButtonItems:(id)items
{
  _objc_retain(items);
  _objc_retain(self);
  sub_100295C30();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  ConversationNavigationBarItemsManager.arrowControlsButtonItems.setter(v4);
  _objc_release(items);
  _objc_release(self);
}

- (UIBarButtonItem)groupedSenderActionsButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.groupedSenderActionsButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setGroupedSenderActionsButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.groupedSenderActionsButtonItem.setter(item);
  _objc_release(self);
}

- (UIBarButtonItem)cleanBackButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.cleanBackButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setCleanBackButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.cleanBackButtonItem.setter(item);
  _objc_release(self);
}

- (UIBarButtonItem)categorizeButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.categorizeButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setCategorizeButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.categorizeButtonItem.setter(item);
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

- (void)setArrowControlsView:(id)view
{
  _objc_retain(view);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.arrowControlsView.setter(view);
  _objc_release(self);
}

- (UIBarButtonItem)upArrowBarButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.upArrowBarButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setUpArrowBarButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.upArrowBarButtonItem.setter(item);
  _objc_release(self);
}

- (UIBarButtonItem)downArrowBarButtonItem
{
  _objc_retain(self);
  v4 = ConversationNavigationBarItemsManager.downArrowBarButtonItem.getter();
  _objc_release(self);

  return v4;
}

- (void)setDownArrowBarButtonItem:(id)item
{
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.downArrowBarButtonItem.setter(item);
  _objc_release(self);
}

- (void)prewarmContent
{
  _objc_retain(self);
  ConversationNavigationBarItemsManager.prewarmContent()();
  _objc_release(self);
}

- (void)updateEnabledStatesForMessage:(id)message
{
  swift_unknownObjectRetain();
  _objc_retain(self);
  ConversationNavigationBarItemsManager.updateEnabledStatesForMessage(_:)(message);
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

- (void)configureNavigationBar:(id)bar navigationItem:(id)item
{
  _objc_retain(bar);
  _objc_retain(item);
  _objc_retain(self);
  ConversationNavigationBarItemsManager.configureNavigationBar(_:navigationItem:)(bar, item);
  _objc_release(self);
  _objc_release(item);
  _objc_release(bar);
}

- (void)configureDesktopClassButtonsFor:(id)for isPrimary:(BOOL)primary isShowingTitle:(BOOL)title animated:(BOOL)animated
{
  _objc_retain(for);
  _objc_retain(self);
  v8 = _convertObjCBoolToBool(_:)();
  v9 = _convertObjCBoolToBool(_:)();
  v7 = _convertObjCBoolToBool(_:)();
  ConversationNavigationBarItemsManager.configureDesktopClassButtons(for:isPrimary:isShowingTitle:animated:)(for, v8 & 1, v9 & 1, v7 & 1);
  _objc_release(self);
  _objc_release(for);
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