@interface StickersParentViewController
- (UIEdgeInsets)additionalSafeAreaInsets;
- (_TtC22StickersUltraExtension28StickersParentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)defaultMessagesChildViewControllerForPresentationContext:(unint64_t)a3;
- (id)stickerCollectionViewController:(id)a3 requestsMSStickerFromURL:(id)a4 externalURI:(id)a5 localizedDescription:(id)a6 error:(id *)a7;
- (void)_addStickerAnimationDidFinishWithCompletion:(id)a3;
- (void)_addStickerToStoreWithRepresentations:(id)a3 completionHandler:(id)a4;
- (void)_addStickerToStoreWithRepresentations:(id)a3 completionWithStickerIDs:(id)a4;
- (void)_addStickerToStoreWithRepresentations:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5;
- (void)_addStickerToStoreWithRepresentations:(id)a3 sourceRect:(CGRect)a4 effect:(int64_t)a5 completion:(id)a6;
- (void)_addStickerToStoreWithUISticker:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5;
- (void)_animatedStickerCreationProgressChanged:(id)a3 progress:(double)a4;
- (void)_didRemoveStickerPreview;
- (void)_prepareForAddStickerFromSubjectLift;
- (void)_setPluginIdentifierToShow:(NSString *)a3 completion:(id)a4;
- (void)commitSticker:(id)a3 stickerFrame:(CGRect)a4;
- (void)commitSticker:(id)a3 withDragTarget:(id)a4 draggedSticker:(id)a5;
- (void)dealloc;
- (void)didTransitionToPresentationStyle:(unint64_t)a3;
- (void)handleCloseButton;
- (void)openURL:(NSURL *)a3 applicationIdentifier:(NSString *)a4 pluginID:(NSString *)a5 completionHandler:(id)a6;
- (void)openURL:(NSURL *)a3 pluginID:(NSString *)a4 completionHandler:(id)a5;
- (void)presentAlertWithTitle:(NSString *)a3 message:(NSString *)a4 buttonTitle:(NSString *)a5 completion:(id)a6;
- (void)requestPresentationWithStickerType:(id)a3 identifier:(id)a4;
- (void)requestStickerExtensionMetadataDictionary:(id)a3;
- (void)setPhotoPickerDidDismissClosure:(id)a3;
- (void)startEditingPayload:(id)a3 dismiss:(BOOL)a4;
- (void)startEditingPayload:(id)a3 dismiss:(BOOL)a4 forPlugin:(id)a5;
- (void)stickerCollectionViewController:(id)a3 didSelectSticker:(id)a4;
- (void)stickerCollectionViewController:(id)a3 didSelectSticker:(id)a4 withFrame:(CGRect)a5;
- (void)stickerCollectionViewController:(id)a3 isDonePresenting:(id)a4;
- (void)stickerCollectionViewController:(id)a3 isPresenting:(id)a4;
- (void)stickerCollectionViewController:(id)a3 performTransitionForView:(id)a4 withImage:(id)a5 bounds:(CGRect)a6;
- (void)stickerCollectionViewControllerPrepareForNewSticker:(id)a3 fromPhotoPicker:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)traitStyleDidChange;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willBecomeActiveWithConversation:(id)a3;
- (void)willTransitionToPresentationStyle:(unint64_t)a3;
@end

@implementation StickersParentViewController

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_imageAnalysisInteraction;
  swift_beginAccess();
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.super.isa + v3) = 0;
  v5 = self;

  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver:v5];

  v7.receiver = v5;
  v7.super_class = type metadata accessor for StickersParentViewController();
  [(BaseMessagesViewController *)&v7 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000199BC();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7 = self;
  v4 = a3;
  v5 = [(StickersParentViewController *)v7 traitCollection];
  v6 = [v5 _presentationSemanticContext];

  if (!v4 || v6 != [v4 _presentationSemanticContext])
  {
    (*((swift_isaMask & v7->super.super.super.super.super.super.isa) + 0x338))();
    sub_10001A868();
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10001AFC8(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if (*(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_traitRegistration))
  {
    v5 = self;
    swift_unknownObjectRetain();
    sub_10007DA90();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = self;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for StickersParentViewController();
  [(StickersParentViewController *)&v7 viewWillDisappear:v3];
}

- (void)traitStyleDidChange
{
  v2 = self;
  sub_10001B28C();
}

- (UIEdgeInsets)additionalSafeAreaInsets
{
  v2 = self;
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

- (void)_setPluginIdentifierToShow:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100006D40(&unk_1000B2960);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
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
  v15 = a3;
  v16 = self;
  sub_10002C18C(0, 0, v9, &unk_10008D1C0, v14);
}

- (void)requestStickerExtensionMetadataDictionary:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_10002DDBC(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)handleCloseButton
{
  v2 = *((swift_isaMask & self->super.super.super.super.super.super.isa) + 0x108);
  v5 = self;
  v3 = v2();
  if (v3)
  {
    v4 = v3;
    (*((swift_isaMask & *v3) + 0x188))();
  }

  [(StickersParentViewController *)v5 dismiss];
}

- (void)requestPresentationWithStickerType:(id)a3 identifier:(id)a4
{
  v6 = sub_10007D7D0();
  v8 = v7;
  if (a4)
  {
    v9 = sub_10007D7D0();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = self;
  sub_10001C958(v6, v8, v9, a4);
}

- (id)defaultMessagesChildViewControllerForPresentationContext:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for StickersParentViewController();
  v4 = v9.receiver;
  v5 = [(BaseMessagesViewController *)&v9 defaultMessagesChildViewControllerForPresentationContext:a3];
  result = [v5 view];
  if (result)
  {
    v7 = result;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor:v8];

    (*((swift_isaMask & *v4) + 0x290))(a3 == 0);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)willBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001D25C(v4);
}

- (void)willTransitionToPresentationStyle:(unint64_t)a3
{
  v4 = self;
  sub_10001D5A8(a3);
}

- (void)didTransitionToPresentationStyle:(unint64_t)a3
{
  v4 = self;
  sub_10001D964(a3);
}

- (void)_addStickerToStoreWithRepresentations:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
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
  v10 = a3;
  v11 = self;

  [(StickersParentViewController *)v11 _addStickerToStoreWithRepresentations:v10 completionWithStickerIDs:v9];

  _Block_release(v9);
}

- (void)_addStickerToStoreWithRepresentations:(id)a3 completionWithStickerIDs:(id)a4
{
  v5 = _Block_copy(a4);
  sub_10000B77C(0, &unk_1000B22D0);
  v6 = sub_10007D8E0();
  _Block_copy(v5);
  v7 = self;
  sub_10002E210(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)_addStickerToStoreWithRepresentations:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = _Block_copy(a5);
  sub_10000B77C(0, &unk_1000B22D0);
  v11 = sub_10007D8E0();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = *((swift_isaMask & self->super.super.super.super.super.super.isa) + 0x358);
  v14 = self;
  v13(v11, 0, 1, sub_100032830, v12, x, y, width, height);
}

- (void)_addStickerToStoreWithRepresentations:(id)a3 sourceRect:(CGRect)a4 effect:(int64_t)a5 completion:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = _Block_copy(a6);
  sub_10000B77C(0, &unk_1000B22D0);
  v13 = sub_10007D8E0();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = *((swift_isaMask & self->super.super.super.super.super.super.isa) + 0x358);
  v16 = self;
  v15(v13, a5, 0, sub_100032830, v14, x, y, width, height);
}

- (void)_addStickerToStoreWithUISticker:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = _Block_copy(a5);
  _Block_copy(v11);
  v12 = a3;
  v13 = self;
  sub_10002ED44(v12, v13, v11, x, y, width, height);
  _Block_release(v11);
  _Block_release(v11);
}

- (void)_prepareForAddStickerFromSubjectLift
{
  v2 = self;
  sub_10002091C();
}

- (void)_addStickerAnimationDidFinishWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_100020F64(sub_100031C08, v5);
}

- (void)_didRemoveStickerPreview
{
  v2 = self;
  sub_1000212C8();
}

- (void)_animatedStickerCreationProgressChanged:(id)a3 progress:(double)a4
{
  sub_10007D740();
  v5 = *((swift_isaMask & self->super.super.super.super.super.super.isa) + 0x108);
  v6 = self;
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

- (_TtC22StickersUltraExtension28StickersParentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_10007D7D0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1000264C8(v5, v7, a4);
}

- (id)stickerCollectionViewController:(id)a3 requestsMSStickerFromURL:(id)a4 externalURI:(id)a5 localizedDescription:(id)a6 error:(id *)a7
{
  v17 = a7;
  v9 = sub_10007C3B0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007C390();
  sub_10007D7D0();
  sub_10007D7D0();
  v13 = a3;
  v14 = self;
  v15 = sub_10002F840(v12);
  (*(v10 + 8))(v12, v9);

  return v15;
}

- (void)stickerCollectionViewController:(id)a3 performTransitionForView:(id)a4 withImage:(id)a5 bounds:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = self;
  sub_10002FA00(v14, v15, x, y, width, height);
}

- (void)stickerCollectionViewController:(id)a3 didSelectSticker:(id)a4
{
  v4 = self;
  sub_100027194();
}

- (void)stickerCollectionViewController:(id)a3 didSelectSticker:(id)a4 withFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = swift_allocObject();
  *(v11 + 16) = self;
  *(v11 + 24) = x;
  *(v11 + 32) = y;
  *(v11 + 40) = width;
  *(v11 + 48) = height;
  *(v11 + 56) = 0;
  v13 = self;
  v12 = a4;
  Sticker.asMSSticker(completionHandler:)(sub_100032828, v11);

  sub_100027194();
}

- (void)stickerCollectionViewControllerPrepareForNewSticker:(id)a3 fromPhotoPicker:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_100027B24(v6, a4);
}

- (void)setPhotoPickerDidDismissClosure:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *((swift_isaMask & self->super.super.super.super.super.super.isa) + 0x128);
  v7 = self;

  v6(sub_100031880, v5);
}

- (void)stickerCollectionViewController:(id)a3 isPresenting:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10002FBD4(v7);
}

- (void)stickerCollectionViewController:(id)a3 isDonePresenting:(id)a4
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerCollectionViewControllerPresentedViewController);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerCollectionViewControllerPresentedViewController) = 0;
  v5 = self;

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v10[4] = sub_10003288C;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100008F80;
  v10[3] = &unk_1000A3ED8;
  v8 = _Block_copy(v10);
  v9 = v5;

  [v6 animateWithDuration:v8 animations:0.2];

  _Block_release(v8);
}

- (void)startEditingPayload:(id)a3 dismiss:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1000307A0(a3);
}

- (void)startEditingPayload:(id)a3 dismiss:(BOOL)a4 forPlugin:(id)a5
{
  if (a5)
  {
    v7 = sub_10007D7D0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a3;
  v11 = self;
  sub_100030A1C(a3, v7, v9);
}

- (void)openURL:(NSURL *)a3 pluginID:(NSString *)a4 completionHandler:(id)a5
{
  v9 = sub_100006D40(&unk_1000B2960);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
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
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_10002C18C(0, 0, v11, &unk_10008D180, v16);
}

- (void)openURL:(NSURL *)a3 applicationIdentifier:(NSString *)a4 pluginID:(NSString *)a5 completionHandler:(id)a6
{
  v11 = sub_100006D40(&unk_1000B2960);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
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
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = self;
  sub_10002C18C(0, 0, v13, &unk_10008D160, v18);
}

- (void)presentAlertWithTitle:(NSString *)a3 message:(NSString *)a4 buttonTitle:(NSString *)a5 completion:(id)a6
{
  v11 = sub_100006D40(&unk_1000B2960);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
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
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = self;
  sub_10002C18C(0, 0, v13, &unk_10008D128, v18);
}

- (void)commitSticker:(id)a3 stickerFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v11 = self;
  sub_10002B6DC(a3, x, y, width, height);
}

- (void)commitSticker:(id)a3 withDragTarget:(id)a4 draggedSticker:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = self;
  sub_100030C8C(a3);
}

@end