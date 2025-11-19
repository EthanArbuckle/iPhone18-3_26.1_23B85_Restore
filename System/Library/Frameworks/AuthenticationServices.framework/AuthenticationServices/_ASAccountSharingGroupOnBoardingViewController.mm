@interface _ASAccountSharingGroupOnBoardingViewController
- (_ASAccountSharingGroupOnBoardingViewController)initWithContentType:(unint64_t)a3 group:(id)a4;
- (_ASAccountSharingGroupOnBoardingViewControllerDelegate)delegate;
- (void)_addButtons;
- (void)_cancelButtonSelected;
- (void)_configureCancelButton;
- (void)_configureNotNowButton;
- (void)_continueButtonSelected;
- (void)_notNowButtonSelected;
- (void)viewDidLoad;
@end

@implementation _ASAccountSharingGroupOnBoardingViewController

- (_ASAccountSharingGroupOnBoardingViewController)initWithContentType:(unint64_t)a3 group:(id)a4
{
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v9 = +[_ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent headerTitleForMovingCredentialsToGroup];
      v10 = +[_ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent headerImageForMovingCredentialsToGroup];
      v14 = [v8 displayName];
      v15 = [_ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent descriptionForMovingCredentialsToGroup:v14];
    }

    else
    {
      v10 = 0;
      v11 = 0;
      if (a3 != 3)
      {
        goto LABEL_12;
      }

      v9 = +[_ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent headerTitleForRemovingDuplicateCredentialsInGroup];
      v10 = +[_ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent headerImageForRemovingDuplicateCredentialsInGroup];
      v14 = [v8 displayName];
      v15 = [_ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent descriptionForRemovingDuplicateCredentialsInGroup:v14];
    }

    v11 = v15;
  }

  else
  {
    if (a3)
    {
      v10 = 0;
      v11 = 0;
      if (a3 != 1)
      {
        goto LABEL_12;
      }

      v12 = [v7 displayName];
      v9 = [_ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent headerTitleForWelcomeViewWithGroupName:v12];

      v13 = +[_ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent headerImageForWelcomeView];
    }

    else
    {
      v9 = +[_ASAccountSharingGroupOnBoardingCreateGroupContent headerTitle];
      v13 = +[_ASAccountSharingGroupOnBoardingCreateGroupContent headerImage];
    }

    v10 = v13;
    v11 = 0;
  }

LABEL_12:
  v20.receiver = self;
  v20.super_class = _ASAccountSharingGroupOnBoardingViewController;
  v16 = [(_ASAccountSharingGroupOnBoardingViewController *)&v20 initWithTitle:v9 detailText:v11 icon:v10 contentLayout:2];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_group, a4);
    v17->_contentType = a3;
    v18 = v17;
  }

  return v17;
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = _ASAccountSharingGroupOnBoardingViewController;
  [(OBBaseWelcomeController *)&v24 viewDidLoad];
  contentType = self->_contentType;
  if (contentType == 1)
  {
    v13 = +[_ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent firstBulletTitleForWelcomeView];
    v14 = +[_ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent firstBulletDescriptionForWelcomeView];
    v15 = +[_ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent firstBulletImageForWelcomeView];
    [(_ASAccountSharingGroupOnBoardingViewController *)self addBulletedListItemWithTitle:v13 description:v14 image:v15];

    v16 = [(KCSharingGroup *)self->_group currentUserParticipant];
    v17 = [v16 permissionLevel];

    if (v17)
    {
      v18 = +[_ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent secondBulletTitleForWelcomeView];
      v19 = +[_ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent secondBulletDescriptionForWelcomeView];
      v20 = +[_ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent secondBulletImageForWelcomeView];
      [(_ASAccountSharingGroupOnBoardingViewController *)self addBulletedListItemWithTitle:v18 description:v19 image:v20];
    }

    v21 = +[_ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent thirdBulletTitleForWelcomeView];
    v22 = +[_ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent thirdBulletDescriptionForWelcomeView];
    v23 = +[_ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent thirdBulletImageForWelcomeView];
    [(_ASAccountSharingGroupOnBoardingViewController *)self addBulletedListItemWithTitle:v21 description:v22 image:v23];

    v10 = [(OBBaseWelcomeController *)self navigationItem];
    [v10 setHidesBackButton:1 animated:1];
    goto LABEL_7;
  }

  if (!contentType)
  {
    v4 = +[_ASAccountSharingGroupOnBoardingCreateGroupContent firstBulletTitle];
    v5 = +[_ASAccountSharingGroupOnBoardingCreateGroupContent firstBulletDescription];
    v6 = +[_ASAccountSharingGroupOnBoardingCreateGroupContent firstBulletImage];
    [(_ASAccountSharingGroupOnBoardingViewController *)self addBulletedListItemWithTitle:v4 description:v5 image:v6];

    v7 = +[_ASAccountSharingGroupOnBoardingCreateGroupContent secondBulletTitle];
    v8 = +[_ASAccountSharingGroupOnBoardingCreateGroupContent secondBulletDescription];
    v9 = +[_ASAccountSharingGroupOnBoardingCreateGroupContent secondBulletImage];
    [(_ASAccountSharingGroupOnBoardingViewController *)self addBulletedListItemWithTitle:v7 description:v8 image:v9];

    v10 = +[_ASAccountSharingGroupOnBoardingCreateGroupContent thirdBulletTitle];
    v11 = +[_ASAccountSharingGroupOnBoardingCreateGroupContent thirdBulletDescription];
    v12 = +[_ASAccountSharingGroupOnBoardingCreateGroupContent thirdBulletImage];
    [(_ASAccountSharingGroupOnBoardingViewController *)self addBulletedListItemWithTitle:v10 description:v11 image:v12];

LABEL_7:
  }

  [(_ASAccountSharingGroupOnBoardingViewController *)self _addButtons];
}

- (void)_addButtons
{
  v7 = [MEMORY[0x1E69B7D00] boldButton];
  contentType = self->_contentType;
  if (contentType <= 1)
  {
    if (contentType > 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (contentType == 2 || contentType == 3)
  {
LABEL_6:
    v4 = _WBSLocalizedString();
    [v7 setTitle:v4 forState:0];
  }

LABEL_7:
  [v7 addTarget:self action:sel__continueButtonSelected forControlEvents:64];
  v5 = [(_ASAccountSharingGroupOnBoardingViewController *)self buttonTray];
  [v5 addButton:v7];

  v6 = self->_contentType;
  if (v6 - 2 >= 2)
  {
    if (!v6)
    {
      [(_ASAccountSharingGroupOnBoardingViewController *)self _configureCancelButton];
    }
  }

  else
  {
    [(_ASAccountSharingGroupOnBoardingViewController *)self _configureNotNowButton];
  }
}

- (void)_configureCancelButton
{
  v5 = [MEMORY[0x1E69B7D38] linkButton];
  v3 = _WBSLocalizedString();
  [v5 setTitle:v3 forState:0];

  [v5 addTarget:self action:sel__cancelButtonSelected forControlEvents:64];
  v4 = [(_ASAccountSharingGroupOnBoardingViewController *)self buttonTray];
  [v4 addButton:v5];
}

- (void)_configureNotNowButton
{
  v5 = [MEMORY[0x1E69B7D38] linkButton];
  v3 = _WBSLocalizedString();
  [v5 setTitle:v3 forState:0];

  [v5 addTarget:self action:sel__notNowButtonSelected forControlEvents:64];
  v4 = [(_ASAccountSharingGroupOnBoardingViewController *)self buttonTray];
  [v4 addButton:v5];
}

- (void)_continueButtonSelected
{
  if (self->_contentType == 1)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v3 startAnimating];
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v3];
    v5 = [(OBBaseWelcomeController *)self navigationItem];
    [v5 setRightBarButtonItem:v4];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained accountSharingGroupOnBoardingViewControllerDidSelectContinue:self];
}

- (void)_cancelButtonSelected
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained accountSharingGroupOnBoardingViewControllerDidSelectCancel:self];
}

- (void)_notNowButtonSelected
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained accountSharingGroupOnBoardingViewControllerDidSelectNotNow:self];
}

- (_ASAccountSharingGroupOnBoardingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end