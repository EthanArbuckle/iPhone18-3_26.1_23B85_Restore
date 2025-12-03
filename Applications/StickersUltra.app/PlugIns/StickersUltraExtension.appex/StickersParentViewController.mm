@interface StickersParentViewController
- (UIEdgeInsets)additionalSafeAreaInsets;
- (_TtC22StickersUltraExtension28StickersParentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)defaultMessagesChildViewControllerForPresentationContext:(unint64_t)context;
- (id)stickerCollectionViewController:(id)controller requestsMSStickerFromURL:(id)l externalURI:(id)i localizedDescription:(id)description error:(id *)error;
- (void)_addStickerAnimationDidFinishWithCompletion:(id)completion;
- (void)_addStickerToStoreWithRepresentations:(id)representations completionHandler:(id)handler;
- (void)_addStickerToStoreWithRepresentations:(id)representations completionWithStickerIDs:(id)ds;
- (void)_addStickerToStoreWithRepresentations:(id)representations sourceRect:(CGRect)rect completion:(id)completion;
- (void)_addStickerToStoreWithRepresentations:(id)representations sourceRect:(CGRect)rect effect:(int64_t)effect completion:(id)completion;
- (void)_addStickerToStoreWithUISticker:(id)sticker sourceRect:(CGRect)rect completion:(id)completion;
- (void)_animatedStickerCreationProgressChanged:(id)changed progress:(double)progress;
- (void)_didRemoveStickerPreview;
- (void)_prepareForAddStickerFromSubjectLift;
- (void)_setPluginIdentifierToShow:(NSString *)show completion:(id)completion;
- (void)commitSticker:(id)sticker stickerFrame:(CGRect)frame;
- (void)commitSticker:(id)sticker withDragTarget:(id)target draggedSticker:(id)draggedSticker;
- (void)dealloc;
- (void)didTransitionToPresentationStyle:(unint64_t)style;
- (void)handleCloseButton;
- (void)openURL:(NSURL *)l applicationIdentifier:(NSString *)identifier pluginID:(NSString *)d completionHandler:(id)handler;
- (void)openURL:(NSURL *)l pluginID:(NSString *)d completionHandler:(id)handler;
- (void)presentAlertWithTitle:(NSString *)title message:(NSString *)message buttonTitle:(NSString *)buttonTitle completion:(id)completion;
- (void)requestPresentationWithStickerType:(id)type identifier:(id)identifier;
- (void)requestStickerExtensionMetadataDictionary:(id)dictionary;
- (void)setPhotoPickerDidDismissClosure:(id)closure;
- (void)startEditingPayload:(id)payload dismiss:(BOOL)dismiss;
- (void)startEditingPayload:(id)payload dismiss:(BOOL)dismiss forPlugin:(id)plugin;
- (void)stickerCollectionViewController:(id)controller didSelectSticker:(id)sticker;
- (void)stickerCollectionViewController:(id)controller didSelectSticker:(id)sticker withFrame:(CGRect)frame;
- (void)stickerCollectionViewController:(id)controller isDonePresenting:(id)presenting;
- (void)stickerCollectionViewController:(id)controller isPresenting:(id)presenting;
- (void)stickerCollectionViewController:(id)controller performTransitionForView:(id)view withImage:(id)image bounds:(CGRect)bounds;
- (void)stickerCollectionViewControllerPrepareForNewSticker:(id)sticker fromPhotoPicker:(BOOL)picker;
- (void)traitCollectionDidChange:(id)change;
- (void)traitStyleDidChange;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willBecomeActiveWithConversation:(id)conversation;
- (void)willTransitionToPresentationStyle:(unint64_t)style;
@end

@implementation StickersParentViewController

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_imageAnalysisInteraction;
  swift_beginAccess();
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.super.isa + v3) = 0;
  selfCopy = self;

  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for StickersParentViewController();
  [(BaseMessagesViewController *)&v7 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000199BC();
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  changeCopy = change;
  traitCollection = [(StickersParentViewController *)selfCopy traitCollection];
  _presentationSemanticContext = [traitCollection _presentationSemanticContext];

  if (!changeCopy || _presentationSemanticContext != [changeCopy _presentationSemanticContext])
  {
    (*((swift_isaMask & selfCopy->super.super.super.super.super.super.isa) + 0x338))();
    sub_10001A868();
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10001AFC8(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (*(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_traitRegistration))
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_10007DA90();
    swift_unknownObjectRelease();
  }

  else
  {
    selfCopy2 = self;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for StickersParentViewController();
  [(StickersParentViewController *)&v7 viewWillDisappear:disappearCopy];
}

- (void)traitStyleDidChange
{
  selfCopy = self;
  sub_10001B28C();
}

- (UIEdgeInsets)additionalSafeAreaInsets
{
  selfCopy = self;
  v3 = sub_10001B48C();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (void)_setPluginIdentifierToShow:(NSString *)show completion:(id)completion
{
  v7 = sub_100006D40(&unk_1000B2960);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = show;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_10007D990();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10008D1B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10008D1B8;
  v14[5] = v13;
  showCopy = show;
  selfCopy = self;
  sub_10002C18C(0, 0, v9, &unk_10008D1C0, v14);
}

- (void)requestStickerExtensionMetadataDictionary:(id)dictionary
{
  v4 = _Block_copy(dictionary);
  _Block_copy(v4);
  selfCopy = self;
  sub_10002DDBC(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)handleCloseButton
{
  v2 = *((swift_isaMask & self->super.super.super.super.super.super.isa) + 0x108);
  selfCopy = self;
  v3 = v2();
  if (v3)
  {
    v4 = v3;
    (*((swift_isaMask & *v3) + 0x188))();
  }

  [(StickersParentViewController *)selfCopy dismiss];
}

- (void)requestPresentationWithStickerType:(id)type identifier:(id)identifier
{
  v6 = sub_10007D7D0();
  v8 = v7;
  if (identifier)
  {
    v9 = sub_10007D7D0();
    identifier = v10;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  sub_10001C958(v6, v8, v9, identifier);
}

- (id)defaultMessagesChildViewControllerForPresentationContext:(unint64_t)context
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for StickersParentViewController();
  v4 = v9.receiver;
  v5 = [(BaseMessagesViewController *)&v9 defaultMessagesChildViewControllerForPresentationContext:context];
  result = [v5 view];
  if (result)
  {
    v7 = result;
    clearColor = [objc_opt_self() clearColor];
    [v7 setBackgroundColor:clearColor];

    (*((swift_isaMask & *v4) + 0x290))(context == 0);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)willBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_10001D25C(conversationCopy);
}

- (void)willTransitionToPresentationStyle:(unint64_t)style
{
  selfCopy = self;
  sub_10001D5A8(style);
}

- (void)didTransitionToPresentationStyle:(unint64_t)style
{
  selfCopy = self;
  sub_10001D964(style);
}

- (void)_addStickerToStoreWithRepresentations:(id)representations completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100031C70;
  *(v8 + 24) = v7;
  v12[4] = sub_1000327A4;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10001DE24;
  v12[3] = &unk_1000A4158;
  v9 = _Block_copy(v12);
  representationsCopy = representations;
  selfCopy = self;

  [(StickersParentViewController *)selfCopy _addStickerToStoreWithRepresentations:representationsCopy completionWithStickerIDs:v9];

  _Block_release(v9);
}

- (void)_addStickerToStoreWithRepresentations:(id)representations completionWithStickerIDs:(id)ds
{
  v5 = _Block_copy(ds);
  sub_10000B77C(0, &unk_1000B22D0);
  v6 = sub_10007D8E0();
  _Block_copy(v5);
  selfCopy = self;
  sub_10002E210(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)_addStickerToStoreWithRepresentations:(id)representations sourceRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = _Block_copy(completion);
  sub_10000B77C(0, &unk_1000B22D0);
  v11 = sub_10007D8E0();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = *((swift_isaMask & self->super.super.super.super.super.super.isa) + 0x358);
  selfCopy = self;
  v13(v11, 0, 1, sub_100032830, v12, x, y, width, height);
}

- (void)_addStickerToStoreWithRepresentations:(id)representations sourceRect:(CGRect)rect effect:(int64_t)effect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = _Block_copy(completion);
  sub_10000B77C(0, &unk_1000B22D0);
  v13 = sub_10007D8E0();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = *((swift_isaMask & self->super.super.super.super.super.super.isa) + 0x358);
  selfCopy = self;
  v15(v13, effect, 0, sub_100032830, v14, x, y, width, height);
}

- (void)_addStickerToStoreWithUISticker:(id)sticker sourceRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11 = _Block_copy(completion);
  _Block_copy(v11);
  stickerCopy = sticker;
  selfCopy = self;
  sub_10002ED44(stickerCopy, selfCopy, v11, x, y, width, height);
  _Block_release(v11);
  _Block_release(v11);
}

- (void)_prepareForAddStickerFromSubjectLift
{
  selfCopy = self;
  sub_10002091C();
}

- (void)_addStickerAnimationDidFinishWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_100020F64(sub_100031C08, v5);
}

- (void)_didRemoveStickerPreview
{
  selfCopy = self;
  sub_1000212C8();
}

- (void)_animatedStickerCreationProgressChanged:(id)changed progress:(double)progress
{
  sub_10007D740();
  v5 = *((swift_isaMask & self->super.super.super.super.super.super.isa) + 0x108);
  selfCopy = self;
  v7 = v5();
  if (v7 && (v8 = v7, v9 = (*((swift_isaMask & *v7) + 0x150))(), v8, v9))
  {
    v10 = v9;
    sub_10007C5D0();
  }

  else
  {
  }
}

- (_TtC22StickersUltraExtension28StickersParentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_10007D7D0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1000264C8(v5, v7, bundle);
}

- (id)stickerCollectionViewController:(id)controller requestsMSStickerFromURL:(id)l externalURI:(id)i localizedDescription:(id)description error:(id *)error
{
  errorCopy = error;
  v9 = sub_10007C3B0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &errorCopy - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007C390();
  sub_10007D7D0();
  sub_10007D7D0();
  controllerCopy = controller;
  selfCopy = self;
  v15 = sub_10002F840(v12);
  (*(v10 + 8))(v12, v9);

  return v15;
}

- (void)stickerCollectionViewController:(id)controller performTransitionForView:(id)view withImage:(id)image bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  controllerCopy = controller;
  viewCopy = view;
  imageCopy = image;
  selfCopy = self;
  sub_10002FA00(viewCopy, imageCopy, x, y, width, height);
}

- (void)stickerCollectionViewController:(id)controller didSelectSticker:(id)sticker
{
  selfCopy = self;
  sub_100027194();
}

- (void)stickerCollectionViewController:(id)controller didSelectSticker:(id)sticker withFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11 = swift_allocObject();
  *(v11 + 16) = self;
  *(v11 + 24) = x;
  *(v11 + 32) = y;
  *(v11 + 40) = width;
  *(v11 + 48) = height;
  *(v11 + 56) = 0;
  selfCopy = self;
  stickerCopy = sticker;
  Sticker.asMSSticker(completionHandler:)(sub_100032828, v11);

  sub_100027194();
}

- (void)stickerCollectionViewControllerPrepareForNewSticker:(id)sticker fromPhotoPicker:(BOOL)picker
{
  stickerCopy = sticker;
  selfCopy = self;
  sub_100027B24(stickerCopy, picker);
}

- (void)setPhotoPickerDidDismissClosure:(id)closure
{
  v4 = _Block_copy(closure);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *((swift_isaMask & self->super.super.super.super.super.super.isa) + 0x128);
  selfCopy = self;

  v6(sub_100031880, v5);
}

- (void)stickerCollectionViewController:(id)controller isPresenting:(id)presenting
{
  controllerCopy = controller;
  presentingCopy = presenting;
  selfCopy = self;
  sub_10002FBD4(presentingCopy);
}

- (void)stickerCollectionViewController:(id)controller isDonePresenting:(id)presenting
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerCollectionViewControllerPresentedViewController);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerCollectionViewControllerPresentedViewController) = 0;
  selfCopy = self;

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = selfCopy;
  v10[4] = sub_10003288C;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100008F80;
  v10[3] = &unk_1000A3ED8;
  v8 = _Block_copy(v10);
  v9 = selfCopy;

  [v6 animateWithDuration:v8 animations:0.2];

  _Block_release(v8);
}

- (void)startEditingPayload:(id)payload dismiss:(BOOL)dismiss
{
  payloadCopy = payload;
  selfCopy = self;
  sub_1000307A0(payload);
}

- (void)startEditingPayload:(id)payload dismiss:(BOOL)dismiss forPlugin:(id)plugin
{
  if (plugin)
  {
    v7 = sub_10007D7D0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  payloadCopy = payload;
  selfCopy = self;
  sub_100030A1C(payload, v7, v9);
}

- (void)openURL:(NSURL *)l pluginID:(NSString *)d completionHandler:(id)handler
{
  v9 = sub_100006D40(&unk_1000B2960);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = l;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_10007D990();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10008D170;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10008D178;
  v16[5] = v15;
  lCopy = l;
  dCopy = d;
  selfCopy = self;
  sub_10002C18C(0, 0, v11, &unk_10008D180, v16);
}

- (void)openURL:(NSURL *)l applicationIdentifier:(NSString *)identifier pluginID:(NSString *)d completionHandler:(id)handler
{
  v11 = sub_100006D40(&unk_1000B2960);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = l;
  v15[3] = identifier;
  v15[4] = d;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_10007D990();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10008D150;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10008D158;
  v18[5] = v17;
  lCopy = l;
  identifierCopy = identifier;
  dCopy = d;
  selfCopy = self;
  sub_10002C18C(0, 0, v13, &unk_10008D160, v18);
}

- (void)presentAlertWithTitle:(NSString *)title message:(NSString *)message buttonTitle:(NSString *)buttonTitle completion:(id)completion
{
  v11 = sub_100006D40(&unk_1000B2960);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = title;
  v15[3] = message;
  v15[4] = buttonTitle;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_10007D990();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10008D108;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10008D118;
  v18[5] = v17;
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  selfCopy = self;
  sub_10002C18C(0, 0, v13, &unk_10008D128, v18);
}

- (void)commitSticker:(id)sticker stickerFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  stickerCopy = sticker;
  selfCopy = self;
  sub_10002B6DC(sticker, x, y, width, height);
}

- (void)commitSticker:(id)sticker withDragTarget:(id)target draggedSticker:(id)draggedSticker
{
  stickerCopy = sticker;
  targetCopy = target;
  draggedStickerCopy = draggedSticker;
  selfCopy = self;
  sub_100030C8C(sticker);
}

@end