@interface RAPPersonalPlaceAdvancedEditorViewController
- (RAPPersonalPlaceAdvancedEditorViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5;
- (id)_commentCell;
- (id)_commentsHeaderView;
- (id)_photoTableViewCell;
- (id)_userContentFooterView;
- (id)_userInfoCell;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)_cancel;
- (void)_initPhotoPicker;
- (void)_presentPrivacyView;
- (void)_send;
- (void)photoCarouselController:(id)a3 requestsRemovingImageForIdentifier:(id)a4 completion:(id)a5;
- (void)photoCarouselControllerRequestsAddingNewPhoto:(id)a3;
- (void)viewDidLoad;
@end

@implementation RAPPersonalPlaceAdvancedEditorViewController

- (void)photoCarouselController:(id)a3 requestsRemovingImageForIdentifier:(id)a4 completion:(id)a5
{
  question = self->_question;
  v10 = a5;
  v7 = a4;
  v8 = [(RAPPersonalPlaceCorrectionsQuestion *)question commentQuestion];
  v9 = [v8 removePhotoForIdentifier:v7];

  v10[2](v10, v9);
}

- (void)photoCarouselControllerRequestsAddingNewPhoto:(id)a3
{
  v4 = [a3 anchoringView];
  [(RAPPhotoPickerController *)self->_photoPicker setAnchoringView:v4];

  [(RAPPhotoPickerController *)self->_photoPicker setPresentingViewController:self];
  photoPicker = self->_photoPicker;

  [(RAPPhotoPickerController *)photoPicker startPicking];
}

- (id)_photoTableViewCell
{
  photoCell = self->_photoCell;
  if (!photoCell)
  {
    v4 = [[RAPPhotoCarouselTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v5 = self->_photoCell;
    self->_photoCell = v4;

    [(RAPPhotoCarouselTableViewCell *)self->_photoCell setPhotoCarouselController:self->_photoCarouselController];
    photoCell = self->_photoCell;
  }

  return photoCell;
}

- (id)_commentsHeaderView
{
  commentsHeaderView = self->_commentsHeaderView;
  if (!commentsHeaderView)
  {
    v4 = [RAPCommentPartHeaderView alloc];
    v5 = [(RAPPersonalPlaceCorrectionsQuestion *)self->_question commentQuestion];
    v6 = [(RAPCommentPartHeaderView *)v4 initWithQuestion:v5 reuseIdentifier:@"RAPCommentPartHeaderView"];
    v7 = self->_commentsHeaderView;
    self->_commentsHeaderView = v6;

    [(RAPCommentPartHeaderView *)self->_commentsHeaderView sizeToFit];
    commentsHeaderView = self->_commentsHeaderView;
  }

  return commentsHeaderView;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  account = self->_account;
  if (!a4 && !account || (v7 = 0, a4 == 1) && account)
  {
    v7 = [(RAPPersonalPlaceAdvancedEditorViewController *)self _commentsHeaderView:a3];
  }

  return v7;
}

- (id)_commentCell
{
  commentCell = self->_commentCell;
  if (!commentCell)
  {
    v4 = [[RAPReportComposerCommentTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v5 = self->_commentCell;
    self->_commentCell = v4;

    v6 = [(RAPPersonalPlaceCorrectionsQuestion *)self->_question commentQuestion];
    v7 = [v6 commentsPlaceholderText];
    [(RAPReportComposerCommentTableViewCell *)self->_commentCell setPlaceholderText:v7];

    objc_initWeak(&location, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100C8B05C;
    v9[3] = &unk_10165EF68;
    objc_copyWeak(&v10, &location);
    [(RAPReportComposerCommentTableViewCell *)self->_commentCell setTextDidChange:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    commentCell = self->_commentCell;
  }

  return commentCell;
}

- (id)_userContentFooterView
{
  userContentFooterView = self->_userContentFooterView;
  if (!userContentFooterView)
  {
    v4 = +[TableViewFooterOptions defaultRAPUserContentOptions];
    v5 = [[TableViewSelectableFooterView alloc] initWithReuseIdentifier:@"RAPUserContentTableViewFooterView" options:v4];
    v6 = self->_userContentFooterView;
    self->_userContentFooterView = v5;

    [(TableViewSelectableFooterView *)self->_userContentFooterView setTarget:self action:"_presentPrivacyView"];
    if (sub_10000FA08(self) == 5)
    {
      v7 = +[UIColor whiteColor];
      [(TableViewSelectableFooterView *)self->_userContentFooterView setBackgroundColor:v7];
    }

    [(TableViewSelectableFooterView *)self->_userContentFooterView sizeToFit];

    userContentFooterView = self->_userContentFooterView;
  }

  return userContentFooterView;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  account = self->_account;
  if (!a4 && account || (v7 = 0, a4 == 1) && !account)
  {
    v7 = [(RAPPersonalPlaceAdvancedEditorViewController *)self _userContentFooterView:a3];
  }

  return v7;
}

- (id)_userInfoCell
{
  userInfoCell = self->_userInfoCell;
  if (!userInfoCell)
  {
    v4 = [[RAPDisplayUserContentTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v5 = self->_userInfoCell;
    self->_userInfoCell = v4;

    userInfoCell = self->_userInfoCell;
  }

  return userInfoCell;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = [a4 section];
  if (self->_account)
  {
    if (v5 != 2)
    {
      if (v5 != 1)
      {
        if (!v5)
        {
          v6 = [(RAPPersonalPlaceAdvancedEditorViewController *)self _userInfoCell];
          goto LABEL_11;
        }

        goto LABEL_10;
      }

LABEL_8:
      v6 = [(RAPPersonalPlaceAdvancedEditorViewController *)self _commentCell];
      goto LABEL_11;
    }

LABEL_9:
    v6 = [(RAPPersonalPlaceAdvancedEditorViewController *)self _photoTableViewCell];
    goto LABEL_11;
  }

  if (v5 == 1)
  {
    goto LABEL_9;
  }

  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_10:
  v6 = objc_alloc_init(UITableViewCell);
LABEL_11:

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (self->_account)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (void)_initPhotoPicker
{
  v3 = objc_alloc_init(RAPPhotoPickerController);
  photoPicker = self->_photoPicker;
  self->_photoPicker = v3;

  v5 = self->_photoCarouselController;
  v6 = [(RAPPersonalPlaceCorrectionsQuestion *)self->_question commentQuestion];
  v7 = self->_photoPicker;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C8B454;
  v10[3] = &unk_10164FA38;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  [(RAPPhotoPickerController *)v7 addObserver:self changeHandler:v10];
}

- (RAPPersonalPlaceAdvancedEditorViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = RAPPersonalPlaceAdvancedEditorViewController;
  v12 = [(RAPPersonalPlaceAdvancedEditorViewController *)&v21 initWithStyle:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_question, a4);
    objc_storeStrong(&v13->_report, a3);
    v14 = [v11 copy];
    completion = v13->_completion;
    v13->_completion = v14;

    v16 = [UGCPhotoCarouselController alloc];
    v17 = [(RAPPersonalPlaceCorrectionsQuestion *)v13->_question commentQuestion];
    v18 = -[UGCPhotoCarouselController initWithDelegate:maximumNumberOfPhotos:](v16, "initWithDelegate:maximumNumberOfPhotos:", v13, [v17 maximumNumberOfPhotos]);
    photoCarouselController = v13->_photoCarouselController;
    v13->_photoCarouselController = v18;

    [(RAPPersonalPlaceAdvancedEditorViewController *)v13 _initPhotoPicker];
  }

  return v13;
}

- (void)_presentPrivacyView
{
  v3 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.mapsrap"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)_send
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, self, 1);
  }
}

- (void)_cancel
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, self, 0);
  }
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = RAPPersonalPlaceAdvancedEditorViewController;
  [(RAPPersonalPlaceAdvancedEditorViewController *)&v13 viewDidLoad];
  v3 = [(RAPPersonalPlaceAdvancedEditorViewController *)self tableView];
  [v3 setKeyboardDismissMode:1];

  v4 = [(RAPPersonalPlaceAdvancedEditorViewController *)self tableView];
  [v4 _maps_initializeRAPAppearance];

  v5 = [(RAPPersonalPlaceCorrectionsQuestion *)self->_question localizedTitle];
  v6 = [(RAPPersonalPlaceAdvancedEditorViewController *)self navigationItem];
  [v6 setTitle:v5];

  v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_send"];
  v8 = [(RAPPersonalPlaceAdvancedEditorViewController *)self navigationItem];
  [v8 setRightBarButtonItem:v7];

  v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancel"];
  v10 = [(RAPPersonalPlaceAdvancedEditorViewController *)self navigationItem];
  [v10 setLeftBarButtonItem:v9];

  v11 = +[GEOUserAccountInfo primaryICloudAccount];
  account = self->_account;
  self->_account = v11;
}

@end