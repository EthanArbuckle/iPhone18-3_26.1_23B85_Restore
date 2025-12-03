@interface _CNContactQuickActionsModalDisambiguationMenuPresentation
- (id)viewControllerForPresentingActionsController:(id)controller fromView:(id)view dismissDisambiguationMenuHandler:(id)handler;
@end

@implementation _CNContactQuickActionsModalDisambiguationMenuPresentation

- (id)viewControllerForPresentingActionsController:(id)controller fromView:(id)view dismissDisambiguationMenuHandler:(id)handler
{
  controllerCopy = controller;
  viewCopy = view;
  handlerCopy = handler;
  v24.receiver = self;
  v24.super_class = _CNContactQuickActionsModalDisambiguationMenuPresentation;
  v11 = [(CNContactQuickActionsDisambiguationMenuPresentation *)&v24 viewControllerForPresentingActionsController:controllerCopy fromView:viewCopy dismissDisambiguationMenuHandler:handlerCopy];
  [v11 setModalPresentationStyle:3];
  traitCollection = [v11 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    v14 = +[CNUIColorRepository carPlayTableViewBackgroundColor];
    view = [v11 view];
    [view setBackgroundColor:v14];
  }

  else
  {
    objc_initWeak(&location, v11);
    v16 = [CNUICancelBarButtonItem alloc];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __148___CNContactQuickActionsModalDisambiguationMenuPresentation_viewControllerForPresentingActionsController_fromView_dismissDisambiguationMenuHandler___block_invoke;
    v20[3] = &unk_1E74E3000;
    objc_copyWeak(&v22, &location);
    v21 = handlerCopy;
    v17 = [(CNUICancelBarButtonItem *)v16 initWithDidTapHandler:v20];
    navigationItem = [v11 navigationItem];
    [navigationItem setLeftBarButtonItem:v17];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v11;
}

@end