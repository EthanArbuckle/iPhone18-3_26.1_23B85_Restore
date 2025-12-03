@interface ICCollaborationFolderActivity
- (CGRect)presentingSourceRect;
- (ICCollaborationFolderActivity)initWithFolder:(id)folder presentingViewController:(id)controller presentingBarButtonItem:(id)item presentingSourceView:(id)view presentingSourceRect:(CGRect)rect eventReporter:(id)reporter;
- (UIViewController)presentingViewController;
- (id)activityImage;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICCollaborationFolderActivity

- (ICCollaborationFolderActivity)initWithFolder:(id)folder presentingViewController:(id)controller presentingBarButtonItem:(id)item presentingSourceView:(id)view presentingSourceRect:(CGRect)rect eventReporter:(id)reporter
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  folderCopy = folder;
  controllerCopy = controller;
  itemCopy = item;
  viewCopy = view;
  reporterCopy = reporter;
  v26.receiver = self;
  v26.super_class = ICCollaborationFolderActivity;
  v23 = [(ICCollaborationFolderActivity *)&v26 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_folder, folder);
    objc_storeWeak(&v24->_presentingViewController, controllerCopy);
    objc_storeStrong(&v24->_presentingBarButtonItem, item);
    objc_storeStrong(&v24->_presentingSourceView, view);
    v24->_presentingSourceRect.origin.x = x;
    v24->_presentingSourceRect.origin.y = y;
    v24->_presentingSourceRect.size.width = width;
    v24->_presentingSourceRect.size.height = height;
    objc_storeStrong(&v24->_eventReporter, reporter);
  }

  return v24;
}

- (id)activityTitle
{
  folder = [(ICCollaborationFolderActivity *)self folder];
  shareViaICloudManageActionTitle = [folder shareViaICloudManageActionTitle];

  return shareViaICloudManageActionTitle;
}

- (id)activityImage
{
  folder = [(ICCollaborationFolderActivity *)self folder];
  shareViaICloudSystemImageName = [folder shareViaICloudSystemImageName];

  v4 = [UIImage systemImageNamed:shareViaICloudSystemImageName];

  return v4;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(ICCollaborationFolderActivity *)self contextPathEnum])
  {
    eventReporter = [(ICCollaborationFolderActivity *)self eventReporter];
    [eventReporter pushContextPathDataWithContextPathEnum:{-[ICCollaborationFolderActivity contextPathEnum](self, "contextPathEnum")}];
  }

  presentationSourceItem = [(ICCollaborationFolderActivity *)self presentationSourceItem];
  if (presentationSourceItem)
  {
    v7 = 0;
  }

  else
  {
    presentingSourceView = [(ICCollaborationFolderActivity *)self presentingSourceView];
    v7 = presentingSourceView == 0;
  }

  if (![(ICCollaborationFolderActivity *)self forceShareSheet])
  {
    folder = [(ICCollaborationFolderActivity *)self folder];
    if ([folder canBeSharedViaICloud])
    {
      folder2 = [(ICCollaborationFolderActivity *)self folder];
      isPubliclySharedOrHasInvitees = [folder2 isPubliclySharedOrHasInvitees];

      if (((isPubliclySharedOrHasInvitees | v7) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

LABEL_13:
    collaborationUIController = [(ICCollaborationFolderActivity *)self collaborationUIController];
    folder3 = [(ICCollaborationFolderActivity *)self folder];
    presentingViewController = [(ICCollaborationFolderActivity *)self presentingViewController];
    presentingBarButtonItem = [(ICCollaborationFolderActivity *)self presentingBarButtonItem];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100068380;
    v34[3] = &unk_100645E30;
    v34[4] = self;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000683EC;
    v32[3] = &unk_100645E80;
    v32[4] = self;
    v33 = completionCopy;
    v31 = completionCopy;
    [collaborationUIController showCloudSharingControllerForFolder:folder3 presentingViewController:presentingViewController popoverBarButtonItem:presentingBarButtonItem presented:v34 dismissed:v32];

    v26 = v33;
    goto LABEL_14;
  }

  if (v7)
  {
    goto LABEL_13;
  }

LABEL_11:
  collaborationUIController2 = [(ICCollaborationFolderActivity *)self collaborationUIController];
  folder4 = [(ICCollaborationFolderActivity *)self folder];
  presentingViewController2 = [(ICCollaborationFolderActivity *)self presentingViewController];
  presentationSourceItem2 = [(ICCollaborationFolderActivity *)self presentationSourceItem];
  presentingSourceView2 = [(ICCollaborationFolderActivity *)self presentingSourceView];
  [(ICCollaborationFolderActivity *)self presentingSourceRect];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000682D4;
  v35[3] = &unk_100645E80;
  v35[4] = self;
  v36 = completionCopy;
  v25 = completionCopy;
  [collaborationUIController2 presentFolderActivityViewControllerWithFolder:folder4 presentingViewController:presentingViewController2 sourceItem:presentationSourceItem2 sourceView:presentingSourceView2 sourceRect:v35 completion:{v18, v20, v22, v24}];

  v26 = v36;
LABEL_14:
}

- (CGRect)presentingSourceRect
{
  x = self->_presentingSourceRect.origin.x;
  y = self->_presentingSourceRect.origin.y;
  width = self->_presentingSourceRect.size.width;
  height = self->_presentingSourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end