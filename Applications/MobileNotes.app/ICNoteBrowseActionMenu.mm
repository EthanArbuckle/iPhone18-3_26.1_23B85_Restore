@interface ICNoteBrowseActionMenu
- (ICNoteBrowseActionMenu)initWithNoteContainer:(id)container presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager completion:(id)completion;
- (ICNoteBrowseActionMenu)initWithVirtualSmartFolder:(id)folder presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager completion:(id)completion;
- (id)mainSectionMenu;
- (id)menuSections;
- (void)willShowMenu;
@end

@implementation ICNoteBrowseActionMenu

- (void)willShowMenu
{
  selfCopy = self;
  sub_1003F8460();
}

- (id)menuSections
{
  selfCopy = self;
  sub_1003F85E4();

  sub_1002D0574();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)mainSectionMenu
{
  selfCopy = self;
  v3 = sub_1003F886C();

  return v3;
}

- (ICNoteBrowseActionMenu)initWithNoteContainer:(id)container presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager completion:(id)completion
{
  v11 = _Block_copy(completion);
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

  containerCopy = container;
  controllerCopy = controller;
  itemCopy = item;
  managerCopy = manager;
  v17 = sub_1003178AC(containerCopy, controllerCopy, item, managerCopy, v11, v12);
  sub_10000C840(v11);

  return v17;
}

- (ICNoteBrowseActionMenu)initWithVirtualSmartFolder:(id)folder presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager completion:(id)completion
{
  v11 = _Block_copy(completion);
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

  folderCopy = folder;
  controllerCopy = controller;
  itemCopy = item;
  managerCopy = manager;
  v17 = sub_100317A64(folderCopy, controllerCopy, item, managerCopy, v11, v12);
  sub_10000C840(v11);

  return v17;
}

@end