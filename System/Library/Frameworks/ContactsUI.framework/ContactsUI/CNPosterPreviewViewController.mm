@interface CNPosterPreviewViewController
- (CNPosterPreviewViewController)initWithPosterConfiguration:(id)configuration fromProviderItem:(id)item contact:(id)contact editingState:(int64_t)state isEditingSNaP:(BOOL)p;
- (CNPosterPreviewViewControllerDelegate)delegate;
- (id)backgroundColorFromPhotoPickerProviderItem:(id)item;
- (void)previewViewDidCreateWithPosterConfiguration:(id)configuration;
- (void)previewViewDidFinishWithPosterConfiguration:(id)configuration;
- (void)previewViewDidSelectUseDifferentPoster;
- (void)skipPosterSetup;
- (void)updateNavigationBar;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation CNPosterPreviewViewController

- (CNPosterPreviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)previewViewDidSelectUseDifferentPoster
{
  delegate = [(CNPosterPreviewViewController *)self delegate];
  [delegate posterPreviewViewControllerDidSelectUseDifferentPoster:self];
}

- (void)previewViewDidFinishWithPosterConfiguration:(id)configuration
{
  configurationCopy = configuration;
  delegate = [(CNPosterPreviewViewController *)self delegate];
  [delegate posterPreviewViewController:self didFinishWithPosterConfiguration:configurationCopy];
}

- (void)previewViewDidCreateWithPosterConfiguration:(id)configuration
{
  configurationCopy = configuration;
  contact = [(CNPosterPreviewViewController *)self contact];
  posterName = [contact posterName];
  v7 = [_TtC10ContactsUI32CNPosterPreviewViewConfiguration configurationForExistingPosterConfiguration:configurationCopy displayName:posterName];

  [(CNPosterPreviewViewController *)self setConfiguration:v7];
  [(CNPosterPreviewViewController *)self setEditingState:[CNMeCardSharingSettingsEditingStateMachine stateAfterPerformingAction:1 onState:[(CNPosterPreviewViewController *)self editingState]]];

  [(CNPosterPreviewViewController *)self updateNavigationBar];
}

- (void)skipPosterSetup
{
  delegate = [(CNPosterPreviewViewController *)self delegate];
  [delegate posterPreviewViewControllerDidSelectCustomizeLater:self];
}

- (void)updateNavigationBar
{
  configuration = [(CNPosterPreviewViewController *)self configuration];
  hasExistingPoster = [configuration hasExistingPoster];
  v5 = CNContactsUIBundle();
  v6 = v5;
  if (hasExistingPoster)
  {
    v7 = @"SNAP_POSTER_PREVIEW";
  }

  else
  {
    v7 = @"SNAP_POSTER_PREVIEW_ADD";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1F0CE7398 table:@"Localized"];
  [(CNPosterPreviewViewController *)self setTitle:v8];

  navigationItem = [(CNPosterPreviewViewController *)self navigationItem];
  [navigationItem _setBackgroundHidden:1];

  if ([(CNPosterPreviewViewController *)self editingState]== 1)
  {
    v10 = objc_alloc(MEMORY[0x1E69DC708]);
    navigationItem3 = CNContactsUIBundle();
    v11 = [navigationItem3 localizedStringForKey:@"SNAP_POSTER_PREVIEW_SKIP" value:&stru_1F0CE7398 table:@"Localized"];
    v12 = [v10 initWithTitle:v11 style:0 target:self action:sel_skipPosterSetup];
    navigationItem2 = [(CNPosterPreviewViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v12];
  }

  else
  {
    navigationItem3 = [(CNPosterPreviewViewController *)self navigationItem];
    [navigationItem3 setRightBarButtonItem:0];
  }
}

- (id)backgroundColorFromPhotoPickerProviderItem:(id)item
{
  itemCopy = item;
  imageType = [itemCopy imageType];
  if (imageType == 2 || imageType == 4)
  {
    objc_opt_class();
    v10 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v7 = v11;

    backgroundColor = [v7 backgroundColor];
    goto LABEL_12;
  }

  if (imageType == 3)
  {
    objc_opt_class();
    v5 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    backgroundColorVariant = [v7 backgroundColorVariant];
    backgroundColor = [backgroundColorVariant color];

LABEL_12:
    goto LABEL_14;
  }

  backgroundColor = 0;
LABEL_14:

  return backgroundColor;
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v39[4] = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = CNPosterPreviewViewController;
  [(CNPosterPreviewViewController *)&v38 viewIsAppearing:appearing];
  v4 = [_TtC10ContactsUI26CNPosterPreviewViewWrapper alloc];
  configuration = [(CNPosterPreviewViewController *)self configuration];
  contact = [(CNPosterPreviewViewController *)self contact];
  editingState = [(CNPosterPreviewViewController *)self editingState];
  view = [(CNPosterPreviewViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  v11 = [(CNPosterPreviewViewWrapper *)v4 initWithConfiguration:configuration contact:contact editingState:editingState delegate:self windowScene:windowScene];

  v12 = v11;
  hostingController = [(CNPosterPreviewViewWrapper *)v11 hostingController];
  view2 = [hostingController view];

  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  hostingController2 = [(CNPosterPreviewViewWrapper *)v12 hostingController];
  [hostingController2 willMoveToParentViewController:self];

  v37 = v12;
  hostingController3 = [(CNPosterPreviewViewWrapper *)v12 hostingController];
  [(CNPosterPreviewViewController *)self addChildViewController:hostingController3];

  view3 = [(CNPosterPreviewViewController *)self view];
  [view3 addSubview:view2];

  hostingController4 = [(CNPosterPreviewViewWrapper *)v12 hostingController];
  [hostingController4 didMoveToParentViewController:self];

  v29 = MEMORY[0x1E696ACD8];
  leadingAnchor = [view2 leadingAnchor];
  view4 = [(CNPosterPreviewViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v39[0] = v33;
  trailingAnchor = [view2 trailingAnchor];
  view5 = [(CNPosterPreviewViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v39[1] = v28;
  topAnchor = [view2 topAnchor];
  view6 = [(CNPosterPreviewViewController *)self view];
  topAnchor2 = [view6 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v39[2] = v22;
  bottomAnchor = [view2 bottomAnchor];
  view7 = [(CNPosterPreviewViewController *)self view];
  bottomAnchor2 = [view7 bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v39[3] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
  [v29 activateConstraints:v27];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CNPosterPreviewViewController;
  [(CNPosterPreviewViewController *)&v3 viewDidLoad];
  [(CNPosterPreviewViewController *)self updateNavigationBar];
}

- (CNPosterPreviewViewController)initWithPosterConfiguration:(id)configuration fromProviderItem:(id)item contact:(id)contact editingState:(int64_t)state isEditingSNaP:(BOOL)p
{
  pCopy = p;
  configurationCopy = configuration;
  itemCopy = item;
  contactCopy = contact;
  v30.receiver = self;
  v30.super_class = CNPosterPreviewViewController;
  v15 = [(CNPosterPreviewViewController *)&v30 init];
  if (v15)
  {
    if (configurationCopy)
    {
      posterName = [contactCopy posterName];
      v17 = [_TtC10ContactsUI32CNPosterPreviewViewConfiguration configurationForExistingPosterConfiguration:configurationCopy displayName:posterName];
      configuration = v15->_configuration;
      v15->_configuration = v17;
    }

    else
    {
      objc_opt_class();
      v19 = itemCopy;
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      configuration = v20;

      v29 = itemCopy;
      v28 = pCopy;
      if (configuration)
      {
        posterName = [(CNPosterPreviewViewConfiguration *)configuration monogramText];
      }

      else
      {
        posterName = 0;
      }

      assetIdentifier = [v19 assetIdentifier];
      v22 = [(CNPosterPreviewViewController *)v15 backgroundColorFromPhotoPickerProviderItem:v19];
      posterName2 = [contactCopy posterName];
      v24 = [_TtC10ContactsUI32CNPosterPreviewViewConfiguration configurationForNewPosterWithPhotoAssetID:assetIdentifier backgroundColor:v22 displayName:posterName2 isEditingSNaP:v28 monogramText:posterName];
      v25 = v15->_configuration;
      v15->_configuration = v24;

      itemCopy = v29;
    }

    objc_storeStrong(&v15->_contact, contact);
    v15->_editingState = state;
    v26 = v15;
  }

  return v15;
}

@end