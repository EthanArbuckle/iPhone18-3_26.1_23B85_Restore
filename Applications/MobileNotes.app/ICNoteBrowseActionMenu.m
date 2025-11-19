@interface ICNoteBrowseActionMenu
- (ICNoteBrowseActionMenu)initWithNoteContainer:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 completion:(id)a7;
- (ICNoteBrowseActionMenu)initWithVirtualSmartFolder:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 completion:(id)a7;
- (id)mainSectionMenu;
- (id)menuSections;
- (void)willShowMenu;
@end

@implementation ICNoteBrowseActionMenu

- (void)willShowMenu
{
  v2 = self;
  sub_1003F8460();
}

- (id)menuSections
{
  v2 = self;
  sub_1003F85E4();

  sub_1002D0574();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)mainSectionMenu
{
  v2 = self;
  v3 = sub_1003F886C();

  return v3;
}

- (ICNoteBrowseActionMenu)initWithNoteContainer:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 completion:(id)a7
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

- (ICNoteBrowseActionMenu)initWithVirtualSmartFolder:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 completion:(id)a7
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