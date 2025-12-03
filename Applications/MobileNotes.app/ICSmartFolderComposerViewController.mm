@interface ICSmartFolderComposerViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (ICSmartFolderComposerViewController)initWithAccount:(id)account smartFolder:(id)folder completion:(id)completion;
- (ICSmartFolderComposerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)consumedBottomAreaForResizer:(id)resizer;
- (id)keyboardResizerScrollView;
- (void)cancelActionWithSender:(id)sender;
- (void)doneActionWithSender:(id)sender;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ICSmartFolderComposerViewController

- (ICSmartFolderComposerViewController)initWithAccount:(id)account smartFolder:(id)folder completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  accountCopy = account;
  folderCopy = folder;
  return sub_100492D70(accountCopy, folder, sub_1004960EC, v8);
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

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100493444(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100493E7C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  ObjectType = swift_getObjectType();
  v6 = *(&self->super.super.super.isa + OBJC_IVAR___ICSmartFolderComposerViewController_scrollViewKeyboardResizer);
  selfCopy = self;
  if (v6)
  {
    [v6 stopAutoResizing];
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(ICSmartFolderComposerViewController *)&v8 viewWillDisappear:disappearCopy];
}

- (void)cancelActionWithSender:(id)sender
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  senderCopy = sender;
  selfCopy = self;
  sub_100495458(senderCopy, selfCopy, v5);
}

- (void)doneActionWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100495F54();
}

- (ICSmartFolderComposerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return 0;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___ICSmartFolderComposerViewController_scrollViewKeyboardResizer);
  if (v3)
  {
    selfCopy = self;
    if ([v3 fullyShowingKeyboard])
    {
      v4 = sub_100490D78();
      [v4 endEditing:1];
    }
  }
}

- (double)consumedBottomAreaForResizer:(id)resizer
{
  selfCopy = self;
  view = [(ICSmartFolderComposerViewController *)selfCopy view];
  if (view)
  {
    v6 = view;
    [view safeAreaInsets];
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
  selfCopy = self;
  v3 = sub_100490D78();

  return v3;
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  selfCopy = self;
  v3 = sub_100272498(&OBJC_IVAR___ICSmartFolderComposerViewController____lazy_storage___cancelBarButtonItem, &selRef_cancelActionWithSender_, 1);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100495458(v3, selfCopy, v4);
}

@end