@interface ICCollaborationFolderActivity
- (CGRect)presentingSourceRect;
- (ICCollaborationFolderActivity)initWithFolder:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 presentingSourceView:(id)a6 presentingSourceRect:(CGRect)a7 eventReporter:(id)a8;
- (UIViewController)presentingViewController;
- (id)activityImage;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICCollaborationFolderActivity

- (ICCollaborationFolderActivity)initWithFolder:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 presentingSourceView:(id)a6 presentingSourceRect:(CGRect)a7 eventReporter:(id)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a8;
  v26.receiver = self;
  v26.super_class = ICCollaborationFolderActivity;
  v23 = [(ICCollaborationFolderActivity *)&v26 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_folder, a3);
    objc_storeWeak(&v24->_presentingViewController, v19);
    objc_storeStrong(&v24->_presentingBarButtonItem, a5);
    objc_storeStrong(&v24->_presentingSourceView, a6);
    v24->_presentingSourceRect.origin.x = x;
    v24->_presentingSourceRect.origin.y = y;
    v24->_presentingSourceRect.size.width = width;
    v24->_presentingSourceRect.size.height = height;
    objc_storeStrong(&v24->_eventReporter, a8);
  }

  return v24;
}

- (id)activityTitle
{
  v2 = [(ICCollaborationFolderActivity *)self folder];
  v3 = [v2 shareViaICloudManageActionTitle];

  return v3;
}

- (id)activityImage
{
  v2 = [(ICCollaborationFolderActivity *)self folder];
  v3 = [v2 shareViaICloudSystemImageName];

  v4 = [UIImage systemImageNamed:v3];

  return v4;
}

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  if ([(ICCollaborationFolderActivity *)self contextPathEnum])
  {
    v5 = [(ICCollaborationFolderActivity *)self eventReporter];
    [v5 pushContextPathDataWithContextPathEnum:{-[ICCollaborationFolderActivity contextPathEnum](self, "contextPathEnum")}];
  }

  v6 = [(ICCollaborationFolderActivity *)self presentationSourceItem];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(ICCollaborationFolderActivity *)self presentingSourceView];
    v7 = v8 == 0;
  }

  if (![(ICCollaborationFolderActivity *)self forceShareSheet])
  {
    v9 = [(ICCollaborationFolderActivity *)self folder];
    if ([v9 canBeSharedViaICloud])
    {
      v10 = [(ICCollaborationFolderActivity *)self folder];
      v11 = [v10 isPubliclySharedOrHasInvitees];

      if (((v11 | v7) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

LABEL_13:
    v27 = [(ICCollaborationFolderActivity *)self collaborationUIController];
    v28 = [(ICCollaborationFolderActivity *)self folder];
    v29 = [(ICCollaborationFolderActivity *)self presentingViewController];
    v30 = [(ICCollaborationFolderActivity *)self presentingBarButtonItem];
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
    v33 = v4;
    v31 = v4;
    [v27 showCloudSharingControllerForFolder:v28 presentingViewController:v29 popoverBarButtonItem:v30 presented:v34 dismissed:v32];

    v26 = v33;
    goto LABEL_14;
  }

  if (v7)
  {
    goto LABEL_13;
  }

LABEL_11:
  v12 = [(ICCollaborationFolderActivity *)self collaborationUIController];
  v13 = [(ICCollaborationFolderActivity *)self folder];
  v14 = [(ICCollaborationFolderActivity *)self presentingViewController];
  v15 = [(ICCollaborationFolderActivity *)self presentationSourceItem];
  v16 = [(ICCollaborationFolderActivity *)self presentingSourceView];
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
  v36 = v4;
  v25 = v4;
  [v12 presentFolderActivityViewControllerWithFolder:v13 presentingViewController:v14 sourceItem:v15 sourceView:v16 sourceRect:v35 completion:{v18, v20, v22, v24}];

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