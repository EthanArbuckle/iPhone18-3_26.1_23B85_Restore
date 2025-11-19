@interface ICSmartFolderComposerViewController
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (ICSmartFolderComposerViewController)initWithAccount:(id)a3 smartFolder:(id)a4 completion:(id)a5;
- (ICSmartFolderComposerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)consumedBottomAreaForResizer:(id)a3;
- (id)keyboardResizerScrollView;
- (void)cancelActionWithSender:(id)a3;
- (void)doneActionWithSender:(id)a3;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ICSmartFolderComposerViewController

- (ICSmartFolderComposerViewController)initWithAccount:(id)a3 smartFolder:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = a3;
  v10 = a4;
  return sub_100492D70(v9, a4, sub_1004960EC, v8);
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(ICSmartFolderComposerViewController *)&v6 viewDidLoad];
  sub_100493090();
  v3 = objc_allocWithZone(ICScrollViewKeyboardResizer);
  v4 = [v3 initWithDelegate:{v2, v6.receiver, v6.super_class}];
  v5 = *&v2[OBJC_IVAR___ICSmartFolderComposerViewController_scrollViewKeyboardResizer];
  *&v2[OBJC_IVAR___ICSmartFolderComposerViewController_scrollViewKeyboardResizer] = v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100493444(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100493E7C(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v6 = *(&self->super.super.super.isa + OBJC_IVAR___ICSmartFolderComposerViewController_scrollViewKeyboardResizer);
  v7 = self;
  if (v6)
  {
    [v6 stopAutoResizing];
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(ICSmartFolderComposerViewController *)&v8 viewWillDisappear:v3];
}

- (void)cancelActionWithSender:(id)a3
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = a3;
  v7 = self;
  sub_100495458(v6, v7, v5);
}

- (void)doneActionWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100495F54();
}

- (ICSmartFolderComposerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return 0;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___ICSmartFolderComposerViewController_scrollViewKeyboardResizer);
  if (v3)
  {
    v5 = self;
    if ([v3 fullyShowingKeyboard])
    {
      v4 = sub_100490D78();
      [v4 endEditing:1];
    }
  }
}

- (double)consumedBottomAreaForResizer:(id)a3
{
  v3 = self;
  v4 = [(ICSmartFolderComposerViewController *)v3 view];
  if (v4)
  {
    v6 = v4;
    [v4 safeAreaInsets];
    v8 = v7;

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)keyboardResizerScrollView
{
  v2 = self;
  v3 = sub_100490D78();

  return v3;
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v5 = self;
  v3 = sub_100272498(&OBJC_IVAR___ICSmartFolderComposerViewController____lazy_storage___cancelBarButtonItem, &selRef_cancelActionWithSender_, 1);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100495458(v3, v5, v4);
}

@end