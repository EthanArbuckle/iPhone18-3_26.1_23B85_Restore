@interface ICFolderListActionMenu
- (ICFolderListActionMenu)initWithNoteContainer:(id)container presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager completion:(id)completion;
- (ICFolderListActionMenu)initWithVirtualSmartFolder:(id)folder presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager completion:(id)completion;
- (id)mainSectionMenu;
- (id)menuSections;
- (id)smartFolderSectionMenu;
@end

@implementation ICFolderListActionMenu

- (id)menuSections
{
  selfCopy = self;
  sub_100316274();

  sub_1000054A4(0, &qword_1006C6400);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)smartFolderSectionMenu
{
  selfCopy = self;
  v3 = sub_1003163C0();

  return v3;
}

- (id)mainSectionMenu
{
  selfCopy = self;
  sub_100316584();
  v4 = v3;

  return v4;
}

- (ICFolderListActionMenu)initWithNoteContainer:(id)container presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager completion:(id)completion
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

- (ICFolderListActionMenu)initWithVirtualSmartFolder:(id)folder presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager completion:(id)completion
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