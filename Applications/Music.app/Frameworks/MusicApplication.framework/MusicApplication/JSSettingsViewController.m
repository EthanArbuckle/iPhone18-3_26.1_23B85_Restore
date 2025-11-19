@interface JSSettingsViewController
- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4;
- (NSData)playActivityRecommendationData;
- (NSString)playActivityFeatureName;
- (_TtC16MusicApplication24JSSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)handleDoneButtonTapped;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)imagePickerControllerDidCancel:(id)a3;
- (void)loadView;
- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4;
- (void)signInControllerDidCancel:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation JSSettingsViewController

- (void)dealloc
{
  v2 = qword_DE67A8;
  v3 = self;
  if (v2 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_E70D38;
  v8 = xmmword_AF82C0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v5 = v3;
  sub_40297C(&v8, v5, v4);

  v7.receiver = v5;
  v7.super_class = type metadata accessor for JSSettingsViewController();
  [(JSSettingsViewController *)&v7 dealloc];
}

- (void)loadView
{
  v2 = self;
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
  v2 = self;
  sub_3F4424();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_3F4CF4(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_3F52E4();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_3F5440(a3);
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v4 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections;
  swift_beginAccess();
  return (*(&self->super.super.super.isa + v4))[2];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections;
  result = swift_beginAccess();
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *(&self->super.super.super.isa + v6);
    if (*(v8 + 16) > a4)
    {
      return *(*(v8 + 56 * a4 + 32) + 16);
    }
  }

  __break(1u);
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = self;
  v14 = sub_3F5A18(v11, v10);

  (*(v8 + 8))(v10, v7);

  return v14;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = self;
  v20 = sub_3F7168(v16, v13, v15, v12);

  (*(v10 + 8))(v12, v9);

  return v20;
}

- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = self;
  LOBYTE(self) = sub_403208(v10);
  (*(v8 + 8))(v10, v7);

  return self & 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = self;
  sub_3F7B04(v11, v10);

  (*(v8 + 8))(v10, v7);
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  type metadata accessor for InfoKey(0);
  sub_404AC4(&unk_E05380, 255, type metadata accessor for InfoKey);
  v7 = sub_AB8FF0();
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_3F8CDC(v8, v7);
}

- (void)imagePickerControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_3F981C(v4);
}

- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_403534();
}

- (void)signInControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_403634();
}

- (void)handleDoneButtonTapped
{
  v2 = self;
  sub_3FB618();
}

- (_TtC16MusicApplication24JSSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end