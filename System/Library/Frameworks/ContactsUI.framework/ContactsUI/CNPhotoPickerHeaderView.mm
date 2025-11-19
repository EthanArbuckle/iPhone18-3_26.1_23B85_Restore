@interface CNPhotoPickerHeaderView
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)resignFirstResponder;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (CGSize)sizeOfPrimaryAvatar;
- (CNPhotoPickerHeaderView)initWithContact:(id)a3;
- (CNPhotoPickerHeaderView)initWithVisualIdentity:(id)a3;
- (CNPhotoPickerHeaderView)initWithVisualIdentity:(id)a3 avatarViewController:(id)a4;
- (CNPhotoPickerHeaderViewDelegate)delegate;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (void)didMoveToWindow;
- (void)didTapClearAvatarImageButton;
- (void)didTapClearIdentityNameButton;
- (void)didTapHeaderView;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)layoutSubviews;
- (void)setClearAvatarImageButtonHidden:(BOOL)a3;
- (void)setupClearAvatarImageButton;
- (void)setupDragAndDrop;
- (void)setupHeaderViewWithPhotoView:(id)a3;
- (void)setupIdentityNameClearButtonIfNecessary;
- (void)setupIdentityNameTextFieldAndClearButton;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateConstraints;
- (void)updateIdentityNameTextFieldMaxWidth;
- (void)updateIdentityNameTextFieldPlaceholderWithText:(id)a3;
- (void)updateIdentityNameTextFieldWithIdentity:(id)a3;
- (void)updateImageViewWithIdentity:(id)a3;
- (void)updatePhotoViewWithUpdatedIdentity:(id)a3;
@end

@implementation CNPhotoPickerHeaderView

- (CNPhotoPickerHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [(CNPhotoPickerHeaderView *)self tapGestureRecognizer];

  return v6 == v5;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v5 = a4;
  v6 = [v5 items];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v5 items];
    v9 = [v8 objectAtIndexedSubscript:0];

    v10 = *MEMORY[0x1E69637F8];
    v11 = [v9 itemProvider];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__CNPhotoPickerHeaderView_dropInteraction_performDrop___block_invoke;
    v13[3] = &unk_1E74E61D8;
    v13[4] = self;
    v12 = [v11 loadDataRepresentationForTypeIdentifier:v10 completionHandler:v13];
  }
}

void __55__CNPhotoPickerHeaderView_dropInteraction_performDrop___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = [a3 localizedDescription];
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNPhotoPickerHeaderView.m", 472, 3, @"Unable to copy data for photo picker header photo drop operation: %@", v8, v9, v10, v11, v7);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__CNPhotoPickerHeaderView_dropInteraction_performDrop___block_invoke_2;
    block[3] = &unk_1E74E77C0;
    block[4] = *(a1 + 32);
    v13 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __55__CNPhotoPickerHeaderView_dropInteraction_performDrop___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 photoPickerHeaderViewDidReceiveDroppedImageData:*(a1 + 40)];

  v3 = [*(a1 + 32) avatarViewController];
  [v3 endDropAppearance];
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v5 = a4;
  v6 = [v5 items];
  if ([v6 count] == 1)
  {
    v7 = [(CNPhotoPickerHeaderView *)self avatarViewController];
    v8 = [v7 view];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(CNPhotoPickerHeaderView *)self avatarViewController];
    v18 = [v17 view];
    [v5 locationInView:v18];
    v27.x = v19;
    v27.y = v20;
    v28.origin.x = v10;
    v28.origin.y = v12;
    v28.size.width = v14;
    v28.size.height = v16;
    v21 = CGRectContainsPoint(v28, v27);

    if (v21)
    {
      v22 = [(CNPhotoPickerHeaderView *)self avatarViewController];
      [v22 beginDropAppearance];
      v23 = 2;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v22 = [(CNPhotoPickerHeaderView *)self avatarViewController];
  [v22 endDropAppearance];
  v23 = 0;
LABEL_6:

  v24 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:v23];

  return v24;
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v7 = getkUTTypePNGSymbolLoc_ptr_57913;
  v25 = getkUTTypePNGSymbolLoc_ptr_57913;
  if (!getkUTTypePNGSymbolLoc_ptr_57913)
  {
    v8 = MobileCoreServicesLibrary_57915();
    v23[3] = dlsym(v8, "kUTTypePNG");
    getkUTTypePNGSymbolLoc_ptr_57913 = v23[3];
    v7 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v7)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id getkUTTypePNG(void)"];
    [v18 handleFailureInFunction:v19 file:@"CNUTTypes.h" lineNumber:12 description:{@"%s", dlerror()}];

    goto LABEL_10;
  }

  v9 = *v7;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v10 = getkUTTypeJPEGSymbolLoc_ptr_57920;
  v25 = getkUTTypeJPEGSymbolLoc_ptr_57920;
  v26 = v9;
  if (!getkUTTypeJPEGSymbolLoc_ptr_57920)
  {
    v11 = MobileCoreServicesLibrary_57915();
    v23[3] = dlsym(v11, "kUTTypeJPEG");
    getkUTTypeJPEGSymbolLoc_ptr_57920 = v23[3];
    v10 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v10)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id getkUTTypeJPEG(void)"];
    [v20 handleFailureInFunction:v21 file:@"CNUTTypes.h" lineNumber:11 description:{@"%s", dlerror()}];

LABEL_10:
    __break(1u);
  }

  v12 = *MEMORY[0x1E6963810];
  v27 = *v10;
  v28 = v12;
  v13 = *MEMORY[0x1E69637F8];
  v29 = *MEMORY[0x1E6963760];
  v30 = v13;
  v14 = MEMORY[0x1E695DEC8];
  v15 = v27;
  v16 = [v14 arrayWithObjects:&v26 count:5];

  LOBYTE(v15) = [v6 hasItemsConformingToTypeIdentifiers:v16];
  return v15;
}

- (void)updateIdentityNameTextFieldPlaceholderWithText:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNPhotoPickerHeaderView *)self visualIdentity];
  v6 = [v5 canUpdateGroupName];

  if (v6)
  {
    v7 = (*(*MEMORY[0x1E6996568] + 16))();
    v8 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
    v9 = v8;
    if (v7)
    {
      [v8 setRightView:0];

      v18 = *MEMORY[0x1E69DB648];
      v10 = +[CNUIFontRepository visualIdentityPickerHeaderPlaceholderFont];
      v19[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];

      v12 = objc_alloc(MEMORY[0x1E696AAB0]);
      v13 = CNContactsUIBundle();
      v14 = [v13 localizedStringForKey:@"PHOTO_HEADER_TEXTFIELD_GROUP_PLACEHOLDER" value:&stru_1F0CE7398 table:@"Localized"];
      v15 = [v12 initWithString:v14 attributes:v11];
      v16 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
      [v16 setAttributedPlaceholder:v15];
    }

    else
    {
      [v8 setPlaceholder:0];

      v11 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
      v17 = [(CNPhotoPickerHeaderView *)self clearIdentityNameButton];
      [v11 setRightView:v17];
    }
  }
}

- (void)didTapClearIdentityNameButton
{
  v3 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [v3 setText:0];

  [(CNPhotoPickerHeaderView *)self updateIdentityNameTextFieldPlaceholderWithText:0];
  v4 = [(CNPhotoPickerHeaderView *)self delegate];
  v5 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [v4 photoPickerHeaderView:self didUpdateIdentityNameTextField:v5 withText:0];

  v6 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [v6 becomeFirstResponder];
}

- (void)didTapHeaderView
{
  v2 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [v2 resignFirstResponder];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v6 = [(CNPhotoPickerHeaderView *)self delegate];
  v5 = [v4 text];
  [v6 photoPickerHeaderView:self didUpdateIdentityNameTextField:v4 withText:v5];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = [v9 text];
  v12 = [v11 stringByReplacingCharactersInRange:location withString:{length, v10}];

  v13 = [v10 length];
  v14 = [v12 length];
  if (v14 < 0x401)
  {
    if ((*(*MEMORY[0x1E6996568] + 16))())
    {
      [(CNPhotoPickerHeaderView *)self didTapClearIdentityNameButton];
    }

    else
    {
      [(CNPhotoPickerHeaderView *)self updateIdentityNameTextFieldPlaceholderWithText:v12];
    }

    v17 = [(CNPhotoPickerHeaderView *)self delegate];
    [v17 photoPickerHeaderView:self didUpdateIdentityNameTextField:v9 withText:v12];
    goto LABEL_9;
  }

  if (v13)
  {
    v15 = [v9 text];
    v16 = [v15 length];

    if (length == v16)
    {
      v17 = [v12 substringToIndex:1024];
      [v9 setText:v17];
      v18 = [(CNPhotoPickerHeaderView *)self delegate];
      [v18 photoPickerHeaderView:self didUpdateIdentityNameTextField:v9 withText:v17];

LABEL_9:
    }
  }

  return v14 < 0x401;
}

- (void)didTapClearAvatarImageButton
{
  v3 = [(CNPhotoPickerHeaderView *)self delegate];
  [v3 photoPickerHeaderViewDidTapClearAvatarImageButton:self];
}

- (void)setupClearAvatarImageButton
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill"];
  v4 = [(CNPhotoPickerHeaderView *)self avatarViewController];
  [v4 setBadgeImage:v3];

  v5 = [(CNPhotoPickerHeaderView *)self avatarViewController];
  [v5 setBadgeTarget:self action:sel_didTapClearAvatarImageButton];

  v6 = [CNBadgingAvatarBadgeStyleSettings alloc];
  v10 = [MEMORY[0x1E69DC888] systemMidGrayColor];
  v7 = [MEMORY[0x1E69DC888] whiteColor];
  v8 = [(CNBadgingAvatarBadgeStyleSettings *)v6 initWithPosition:0 color:v10 backgroundColor:v7 cropStyle:0];
  v9 = [(CNPhotoPickerHeaderView *)self avatarViewController];
  [v9 setBadgeStyleSettings:v8];
}

- (void)setClearAvatarImageButtonHidden:(BOOL)a3
{
  if (a3)
  {
    v4 = [(CNPhotoPickerHeaderView *)self avatarViewController];
    [v4 setBadgeImage:0];
  }

  else
  {

    [(CNPhotoPickerHeaderView *)self setupClearAvatarImageButton];
  }
}

- (void)updateIdentityNameTextFieldWithIdentity:(id)a3
{
  v4 = [a3 name];
  v5 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [v5 setText:v4];

  v7 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  v6 = [v7 text];
  [(CNPhotoPickerHeaderView *)self updateIdentityNameTextFieldPlaceholderWithText:v6];
}

- (void)updateImageViewWithIdentity:(id)a3
{
  v7 = a3;
  v4 = [v7 avatarImage];

  if (!v4)
  {
    v5 = [(CNPhotoPickerHeaderView *)self placeholderProviderItem];
    [v5 updateVisualIdentity:v7];
  }

  [(CNPhotoPickerHeaderView *)self setClearAvatarImageButtonHidden:v4 == 0];
  v6 = [(CNPhotoPickerHeaderView *)self avatarViewController];
  [v6 visualIdentityDidUpdate:v7];
}

- (CGSize)sizeOfPrimaryAvatar
{
  v3 = [(CNPhotoPickerHeaderView *)self avatarViewController];
  v4 = [(CNPhotoPickerHeaderView *)self avatarViewController];
  v5 = [v4 view];
  [v3 avatarFrameForFocusedAvatarInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)updatePhotoViewWithUpdatedIdentity:(id)a3
{
  v4 = [a3 mutableCopy];
  [(CNPhotoPickerHeaderView *)self setVisualIdentity:v4];

  v5 = [(CNPhotoPickerHeaderView *)self visualIdentity];
  [(CNPhotoPickerHeaderView *)self updateImageViewWithIdentity:v5];

  v6 = [(CNPhotoPickerHeaderView *)self visualIdentity];
  [(CNPhotoPickerHeaderView *)self updateIdentityNameTextFieldWithIdentity:v6];
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = CNPhotoPickerHeaderView;
  [(CNPhotoPickerHeaderView *)&v5 didMoveToWindow];
  v3 = MEMORY[0x1E696ACD8];
  v4 = [(CNPhotoPickerHeaderView *)self subviewsConstraints];
  [v3 deactivateConstraints:v4];

  [(CNPhotoPickerHeaderView *)self setSubviewsConstraints:0];
  [(CNPhotoPickerHeaderView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v46[4] = *MEMORY[0x1E69E9840];
  v3 = [(CNPhotoPickerHeaderView *)self subviewsConstraints];

  if (!v3)
  {
    v43 = objc_opt_new();
    v4 = [(CNPhotoPickerHeaderView *)self avatarViewController];
    v5 = [v4 view];

    v40 = [v5 topAnchor];
    v38 = [(CNPhotoPickerHeaderView *)self topAnchor];
    v36 = [v40 constraintEqualToAnchor:v38];
    v46[0] = v36;
    v6 = [v5 centerXAnchor];
    v7 = [(CNPhotoPickerHeaderView *)self centerXAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    v46[1] = v8;
    v9 = [v5 widthAnchor];
    v10 = v5;
    v42 = v5;
    v11 = [v5 heightAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];
    v46[2] = v12;
    v13 = [v10 heightAnchor];
    v14 = [v13 constraintEqualToConstant:115.0];
    v46[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];
    [v43 addObjectsFromArray:v15];

    v41 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
    v37 = [v41 leadingAnchor];
    v39 = [(CNPhotoPickerHeaderView *)self layoutMarginsGuide];
    v35 = [v39 leadingAnchor];
    v34 = [v37 constraintGreaterThanOrEqualToAnchor:v35];
    v45[0] = v34;
    v33 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
    v31 = [v33 trailingAnchor];
    v32 = [(CNPhotoPickerHeaderView *)self layoutMarginsGuide];
    v30 = [v32 trailingAnchor];
    v29 = [v31 constraintLessThanOrEqualToAnchor:v30];
    v45[1] = v29;
    v28 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
    v27 = [v28 centerXAnchor];
    v26 = [(CNPhotoPickerHeaderView *)self centerXAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v45[2] = v25;
    v16 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
    v17 = [v16 topAnchor];
    v18 = [v42 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:12.0];
    v45[3] = v19;
    v20 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
    v21 = [v20 bottomAnchor];
    v22 = [(CNPhotoPickerHeaderView *)self bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:-6.0];
    v45[4] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:5];
    [v43 addObjectsFromArray:v24];

    [MEMORY[0x1E696ACD8] activateConstraints:v43];
    [(CNPhotoPickerHeaderView *)self setSubviewsConstraints:v43];
  }

  v44.receiver = self;
  v44.super_class = CNPhotoPickerHeaderView;
  [(CNPhotoPickerHeaderView *)&v44 updateConstraints];
}

- (void)setupIdentityNameClearButtonIfNecessary
{
  v3 = [(CNPhotoPickerHeaderView *)self visualIdentity];
  v4 = [v3 canUpdateGroupName];

  if (v4)
  {
    v5 = [MEMORY[0x1E69DC738] buttonWithType:0];
    [(CNPhotoPickerHeaderView *)self setClearIdentityNameButton:v5];

    v6 = MEMORY[0x1E69DCAB8];
    v7 = *MEMORY[0x1E69DDE48];
    v8 = [MEMORY[0x1E69DC888] systemMidGrayColor];
    v15 = [v6 cnui_symbolImageNamed:@"xmark.circle.fill" scale:v7 weight:4 withColor:v8 useFixedSize:1 compatibleWithTextStyle:*MEMORY[0x1E69DDDC0]];

    v9 = [(CNPhotoPickerHeaderView *)self clearIdentityNameButton];
    [v9 setImage:v15 forState:0];

    v10 = [(CNPhotoPickerHeaderView *)self clearIdentityNameButton];
    [v10 setContentEdgeInsets:{0.0, 5.0, 0.0, 0.0}];

    v11 = [(CNPhotoPickerHeaderView *)self clearIdentityNameButton];
    [v11 addTarget:self action:sel_didTapClearIdentityNameButton forControlEvents:64];

    v12 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
    v13 = [(CNPhotoPickerHeaderView *)self clearIdentityNameButton];
    [v12 setRightView:v13];

    v14 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
    [v14 setRightViewMode:3];
  }

  else
  {
    v15 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
    [v15 setEnabled:0];
  }
}

- (void)updateIdentityNameTextFieldMaxWidth
{
  [(CNPhotoPickerHeaderView *)self layoutMargins];
  v4 = v3;
  [(CNPhotoPickerHeaderView *)self layoutMargins];
  v6 = v4 + v5;
  v7 = [(CNPhotoPickerHeaderView *)self clearIdentityNameButton];
  [v7 bounds];
  v9 = v8;

  [(CNPhotoPickerHeaderView *)self bounds];
  v11 = v10 - v6 - v9;
  v12 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [v12 setMaxWidth:v11];
}

- (void)setupIdentityNameTextFieldAndClearButton
{
  v3 = [CNPhotoPickerHeaderViewTextField alloc];
  v4 = [(CNPhotoPickerHeaderViewTextField *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CNPhotoPickerHeaderView *)self setIdentityNameTextField:v4];

  v5 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [v5 setDelegate:self];

  v6 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [v6 setTextAlignment:1];

  v7 = +[CNUIFontRepository visualIdentityPickerHeaderTitleFont];
  v8 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [v8 setFont:v7];

  v9 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(CNPhotoPickerHeaderView *)self setupIdentityNameClearButtonIfNecessary];
  v10 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [(CNPhotoPickerHeaderView *)self addSubview:v10];
}

- (void)setupHeaderViewWithPhotoView:(id)a3
{
  v4 = a3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNPhotoPickerHeaderView *)self addSubview:v4];

  v5 = [(CNPhotoPickerHeaderView *)self layer];
  [v5 setMasksToBounds:0];

  v6 = [MEMORY[0x1E69DC888] clearColor];
  [(CNPhotoPickerHeaderView *)self setBackgroundColor:v6];

  v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapHeaderView];
  [v7 setDelegate:self];
  [(CNPhotoPickerHeaderView *)self addGestureRecognizer:v7];
  [(CNPhotoPickerHeaderView *)self setTapGestureRecognizer:v7];
  [(CNPhotoPickerHeaderView *)self setupIdentityNameTextFieldAndClearButton];
}

- (BOOL)resignFirstResponder
{
  v3 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [v3 resignFirstResponder];

  v5.receiver = self;
  v5.super_class = CNPhotoPickerHeaderView;
  return [(CNPhotoPickerHeaderView *)&v5 resignFirstResponder];
}

- (void)setupDragAndDrop
{
  v3 = [objc_alloc(MEMORY[0x1E69DC9B8]) initWithDelegate:self];
  [(CNPhotoPickerHeaderView *)self addInteraction:v3];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CNPhotoPickerHeaderView;
  [(CNPhotoPickerHeaderView *)&v3 layoutSubviews];
  [(CNPhotoPickerHeaderView *)self updateIdentityNameTextFieldMaxWidth];
}

- (CNPhotoPickerHeaderView)initWithVisualIdentity:(id)a3 avatarViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CNPhotoPickerHeaderView;
  v9 = [(CNPhotoPickerHeaderView *)&v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_avatarViewController, a4);
    objc_storeStrong(&v10->_visualIdentity, a3);
    v11 = [(CNPhotoPickerHeaderView *)v10 avatarViewController];
    v12 = [v11 view];
    [(CNPhotoPickerHeaderView *)v10 setupHeaderViewWithPhotoView:v12];

    [(CNPhotoPickerHeaderView *)v10 updatePhotoViewWithUpdatedIdentity:v7];
    [(CNPhotoPickerHeaderView *)v10 setupDragAndDrop];
    v13 = v10;
  }

  return v10;
}

- (CNPhotoPickerHeaderView)initWithVisualIdentity:(id)a3
{
  v4 = a3;
  v5 = [[CNVisualIdentityAvatarViewController alloc] initWithVisualIdentity:v4];
  v6 = [(CNPhotoPickerHeaderView *)self initWithVisualIdentity:v4 avatarViewController:v5];

  return v6;
}

- (CNPhotoPickerHeaderView)initWithContact:(id)a3
{
  v4 = a3;
  v5 = [[CNVisualIdentity alloc] initWithContact:v4];

  v6 = [(CNPhotoPickerHeaderView *)self initWithVisualIdentity:v5];
  return v6;
}

@end