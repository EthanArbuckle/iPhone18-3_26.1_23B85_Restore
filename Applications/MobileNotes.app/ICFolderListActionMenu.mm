@interface ICFolderListActionMenu
- (ICFolderListActionMenu)initWithNoteContainer:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 completion:(id)a7;
- (ICFolderListActionMenu)initWithVirtualSmartFolder:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 completion:(id)a7;
- (id)mainSectionMenu;
- (id)menuSections;
- (id)smartFolderSectionMenu;
@end

@implementation ICFolderListActionMenu

- (id)menuSections
{
  v2 = self;
  sub_100316274();

  sub_1000054A4(0, &qword_1006C6400);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)smartFolderSectionMenu
{
  v2 = self;
  v3 = sub_1003163C0();

  return v3;
}

- (id)mainSectionMenu
{
  v2 = self;
  sub_100316584();
  v4 = v3;

  return v4;
}

- (ICFolderListActionMenu)initWithNoteContainer:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 completion:(id)a7
{
  v11 = _Block_copy(a7);
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1002CBA88;
  }

  else
  {
    v12 = 0;
  }

  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = sub_1003178AC(v13, v14, a5, v16, v11, v12);
  sub_10000C840(v11);

  return v17;
}

- (ICFolderListActionMenu)initWithVirtualSmartFolder:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 completion:(id)a7
{
  v11 = _Block_copy(a7);
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_10028D0C0;
  }

  else
  {
    v12 = 0;
  }

  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = sub_100317A64(v13, v14, a5, v16, v11, v12);
  sub_10000C840(v11);

  return v17;
}

@end