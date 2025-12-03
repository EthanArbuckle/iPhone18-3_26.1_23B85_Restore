@interface JSSettingsViewController
- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (NSData)playActivityRecommendationData;
- (NSString)playActivityFeatureName;
- (_TtC16MusicApplication24JSSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)handleDoneButtonTapped;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
- (void)loadView;
- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results;
- (void)signInControllerDidCancel:(id)cancel;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation JSSettingsViewController

- (void)dealloc
{
  v2 = qword_DE67A8;
  selfCopy = self;
  if (v2 != -1)
  {
    v6 = selfCopy;
    swift_once();
    selfCopy = v6;
  }

  v4 = qword_E70D38;
  v8 = xmmword_AF82C0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v5 = selfCopy;
  sub_40297C(&v8, v5, v4);

  v7.receiver = v5;
  v7.super_class = type metadata accessor for JSSettingsViewController();
  [(JSSettingsViewController *)&v7 dealloc];
}

- (void)loadView
{
  selfCopy = self;
  sub_3F4084();
}

- (NSString)playActivityFeatureName
{
  swift_beginAccess();

  v2 = sub_AB9260();

  return v2;
}

- (NSData)playActivityRecommendationData
{
  v2 = JSViewModel.playActivityRecommendationData.getter();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    isa = sub_AB3250().super.isa;
    sub_466A4(v5, v6);
    v4 = isa;
  }

  return v4;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_3F4424();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_3F4CF4(appear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_3F52E4();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_3F5440(change);
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  v4 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections;
  swift_beginAccess();
  return (*(&self->super.super.super.isa + v4))[2];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v6 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections;
  result = swift_beginAccess();
  if (section < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *(&self->super.super.super.isa + v6);
    if (*(v8 + 16) > section)
    {
      return *(*(v8 + 56 * section + 32) + 16);
    }
  }

  __break(1u);
  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  viewCopy = view;
  pathCopy = path;
  selfCopy = self;
  v14 = sub_3F5A18(viewCopy, v10);

  (*(v8 + 8))(v10, v7);

  return v14;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  selfCopy = self;
  v20 = sub_3F7168(viewCopy, v13, v15, v12);

  (*(v10 + 8))(v12, v9);

  return v20;
}

- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  viewCopy = view;
  pathCopy = path;
  selfCopy = self;
  LOBYTE(self) = sub_403208(v10);
  (*(v8 + 8))(v10, v7);

  return self & 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  viewCopy = view;
  pathCopy = path;
  selfCopy = self;
  sub_3F7B04(viewCopy, v10);

  (*(v8 + 8))(v10, v7);
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  type metadata accessor for InfoKey(0);
  sub_404AC4(&unk_E05380, 255, type metadata accessor for InfoKey);
  v7 = sub_AB8FF0();
  controllerCopy = controller;
  infoCopy = info;
  selfCopy = self;
  sub_3F8CDC(controllerCopy, v7);
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_3F981C(cancelCopy);
}

- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results
{
  controllerCopy = controller;
  resultsCopy = results;
  selfCopy = self;
  sub_403534();
}

- (void)signInControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_403634();
}

- (void)handleDoneButtonTapped
{
  selfCopy = self;
  sub_3FB618();
}

- (_TtC16MusicApplication24JSSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end