@interface CNPhotoPickerHeaderView
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)resignFirstResponder;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (CGSize)sizeOfPrimaryAvatar;
- (CNPhotoPickerHeaderView)initWithContact:(id)contact;
- (CNPhotoPickerHeaderView)initWithVisualIdentity:(id)identity;
- (CNPhotoPickerHeaderView)initWithVisualIdentity:(id)identity avatarViewController:(id)controller;
- (CNPhotoPickerHeaderViewDelegate)delegate;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (void)didMoveToWindow;
- (void)didTapClearAvatarImageButton;
- (void)didTapClearIdentityNameButton;
- (void)didTapHeaderView;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)layoutSubviews;
- (void)setClearAvatarImageButtonHidden:(BOOL)hidden;
- (void)setupClearAvatarImageButton;
- (void)setupDragAndDrop;
- (void)setupHeaderViewWithPhotoView:(id)view;
- (void)setupIdentityNameClearButtonIfNecessary;
- (void)setupIdentityNameTextFieldAndClearButton;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateConstraints;
- (void)updateIdentityNameTextFieldMaxWidth;
- (void)updateIdentityNameTextFieldPlaceholderWithText:(id)text;
- (void)updateIdentityNameTextFieldWithIdentity:(id)identity;
- (void)updateImageViewWithIdentity:(id)identity;
- (void)updatePhotoViewWithUpdatedIdentity:(id)identity;
@end

@implementation CNPhotoPickerHeaderView

- (CNPhotoPickerHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  tapGestureRecognizer = [(CNPhotoPickerHeaderView *)self tapGestureRecognizer];

  return tapGestureRecognizer == recognizerCopy;
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  dropCopy = drop;
  items = [dropCopy items];
  v7 = [items count];

  if (v7)
  {
    items2 = [dropCopy items];
    v9 = [items2 objectAtIndexedSubscript:0];

    v10 = *MEMORY[0x1E69637F8];
    itemProvider = [v9 itemProvider];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__CNPhotoPickerHeaderView_dropInteraction_performDrop___block_invoke;
    v13[3] = &unk_1E74E61D8;
    v13[4] = self;
    v12 = [itemProvider loadDataRepresentationForTypeIdentifier:v10 completionHandler:v13];
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

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  updateCopy = update;
  items = [updateCopy items];
  if ([items count] == 1)
  {
    avatarViewController = [(CNPhotoPickerHeaderView *)self avatarViewController];
    view = [avatarViewController view];
    [view bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    avatarViewController2 = [(CNPhotoPickerHeaderView *)self avatarViewController];
    view2 = [avatarViewController2 view];
    [updateCopy locationInView:view2];
    v27.x = v19;
    v27.y = v20;
    v28.origin.x = v10;
    v28.origin.y = v12;
    v28.size.width = v14;
    v28.size.height = v16;
    v21 = CGRectContainsPoint(v28, v27);

    if (v21)
    {
      avatarViewController3 = [(CNPhotoPickerHeaderView *)self avatarViewController];
      [avatarViewController3 beginDropAppearance];
      v23 = 2;
      goto LABEL_6;
    }
  }

  else
  {
  }

  avatarViewController3 = [(CNPhotoPickerHeaderView *)self avatarViewController];
  [avatarViewController3 endDropAppearance];
  v23 = 0;
LABEL_6:

  v24 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:v23];

  return v24;
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  v31 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  sessionCopy = session;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id getkUTTypePNG(void)"];
    [currentHandler handleFailureInFunction:v19 file:@"CNUTTypes.h" lineNumber:12 description:{@"%s", dlerror()}];

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
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id getkUTTypeJPEG(void)"];
    [currentHandler2 handleFailureInFunction:v21 file:@"CNUTTypes.h" lineNumber:11 description:{@"%s", dlerror()}];

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

  LOBYTE(v15) = [sessionCopy hasItemsConformingToTypeIdentifiers:v16];
  return v15;
}

- (void)updateIdentityNameTextFieldPlaceholderWithText:(id)text
{
  v19[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  visualIdentity = [(CNPhotoPickerHeaderView *)self visualIdentity];
  canUpdateGroupName = [visualIdentity canUpdateGroupName];

  if (canUpdateGroupName)
  {
    v7 = (*(*MEMORY[0x1E6996568] + 16))();
    identityNameTextField = [(CNPhotoPickerHeaderView *)self identityNameTextField];
    v9 = identityNameTextField;
    if (v7)
    {
      [identityNameTextField setRightView:0];

      v18 = *MEMORY[0x1E69DB648];
      v10 = +[CNUIFontRepository visualIdentityPickerHeaderPlaceholderFont];
      v19[0] = v10;
      identityNameTextField3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];

      v12 = objc_alloc(MEMORY[0x1E696AAB0]);
      v13 = CNContactsUIBundle();
      v14 = [v13 localizedStringForKey:@"PHOTO_HEADER_TEXTFIELD_GROUP_PLACEHOLDER" value:&stru_1F0CE7398 table:@"Localized"];
      v15 = [v12 initWithString:v14 attributes:identityNameTextField3];
      identityNameTextField2 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
      [identityNameTextField2 setAttributedPlaceholder:v15];
    }

    else
    {
      [identityNameTextField setPlaceholder:0];

      identityNameTextField3 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
      clearIdentityNameButton = [(CNPhotoPickerHeaderView *)self clearIdentityNameButton];
      [identityNameTextField3 setRightView:clearIdentityNameButton];
    }
  }
}

- (void)didTapClearIdentityNameButton
{
  identityNameTextField = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [identityNameTextField setText:0];

  [(CNPhotoPickerHeaderView *)self updateIdentityNameTextFieldPlaceholderWithText:0];
  delegate = [(CNPhotoPickerHeaderView *)self delegate];
  identityNameTextField2 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [delegate photoPickerHeaderView:self didUpdateIdentityNameTextField:identityNameTextField2 withText:0];

  identityNameTextField3 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [identityNameTextField3 becomeFirstResponder];
}

- (void)didTapHeaderView
{
  identityNameTextField = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [identityNameTextField resignFirstResponder];
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  delegate = [(CNPhotoPickerHeaderView *)self delegate];
  text = [editingCopy text];
  [delegate photoPickerHeaderView:self didUpdateIdentityNameTextField:editingCopy withText:text];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  text = [fieldCopy text];
  v12 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  v13 = [stringCopy length];
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

    delegate = [(CNPhotoPickerHeaderView *)self delegate];
    [delegate photoPickerHeaderView:self didUpdateIdentityNameTextField:fieldCopy withText:v12];
    goto LABEL_9;
  }

  if (v13)
  {
    text2 = [fieldCopy text];
    v16 = [text2 length];

    if (length == v16)
    {
      delegate = [v12 substringToIndex:1024];
      [fieldCopy setText:delegate];
      delegate2 = [(CNPhotoPickerHeaderView *)self delegate];
      [delegate2 photoPickerHeaderView:self didUpdateIdentityNameTextField:fieldCopy withText:delegate];

LABEL_9:
    }
  }

  return v14 < 0x401;
}

- (void)didTapClearAvatarImageButton
{
  delegate = [(CNPhotoPickerHeaderView *)self delegate];
  [delegate photoPickerHeaderViewDidTapClearAvatarImageButton:self];
}

- (void)setupClearAvatarImageButton
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill"];
  avatarViewController = [(CNPhotoPickerHeaderView *)self avatarViewController];
  [avatarViewController setBadgeImage:v3];

  avatarViewController2 = [(CNPhotoPickerHeaderView *)self avatarViewController];
  [avatarViewController2 setBadgeTarget:self action:sel_didTapClearAvatarImageButton];

  v6 = [CNBadgingAvatarBadgeStyleSettings alloc];
  systemMidGrayColor = [MEMORY[0x1E69DC888] systemMidGrayColor];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v8 = [(CNBadgingAvatarBadgeStyleSettings *)v6 initWithPosition:0 color:systemMidGrayColor backgroundColor:whiteColor cropStyle:0];
  avatarViewController3 = [(CNPhotoPickerHeaderView *)self avatarViewController];
  [avatarViewController3 setBadgeStyleSettings:v8];
}

- (void)setClearAvatarImageButtonHidden:(BOOL)hidden
{
  if (hidden)
  {
    avatarViewController = [(CNPhotoPickerHeaderView *)self avatarViewController];
    [avatarViewController setBadgeImage:0];
  }

  else
  {

    [(CNPhotoPickerHeaderView *)self setupClearAvatarImageButton];
  }
}

- (void)updateIdentityNameTextFieldWithIdentity:(id)identity
{
  name = [identity name];
  identityNameTextField = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [identityNameTextField setText:name];

  identityNameTextField2 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  text = [identityNameTextField2 text];
  [(CNPhotoPickerHeaderView *)self updateIdentityNameTextFieldPlaceholderWithText:text];
}

- (void)updateImageViewWithIdentity:(id)identity
{
  identityCopy = identity;
  avatarImage = [identityCopy avatarImage];

  if (!avatarImage)
  {
    placeholderProviderItem = [(CNPhotoPickerHeaderView *)self placeholderProviderItem];
    [placeholderProviderItem updateVisualIdentity:identityCopy];
  }

  [(CNPhotoPickerHeaderView *)self setClearAvatarImageButtonHidden:avatarImage == 0];
  avatarViewController = [(CNPhotoPickerHeaderView *)self avatarViewController];
  [avatarViewController visualIdentityDidUpdate:identityCopy];
}

- (CGSize)sizeOfPrimaryAvatar
{
  avatarViewController = [(CNPhotoPickerHeaderView *)self avatarViewController];
  avatarViewController2 = [(CNPhotoPickerHeaderView *)self avatarViewController];
  view = [avatarViewController2 view];
  [avatarViewController avatarFrameForFocusedAvatarInView:view];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)updatePhotoViewWithUpdatedIdentity:(id)identity
{
  v4 = [identity mutableCopy];
  [(CNPhotoPickerHeaderView *)self setVisualIdentity:v4];

  visualIdentity = [(CNPhotoPickerHeaderView *)self visualIdentity];
  [(CNPhotoPickerHeaderView *)self updateImageViewWithIdentity:visualIdentity];

  visualIdentity2 = [(CNPhotoPickerHeaderView *)self visualIdentity];
  [(CNPhotoPickerHeaderView *)self updateIdentityNameTextFieldWithIdentity:visualIdentity2];
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = CNPhotoPickerHeaderView;
  [(CNPhotoPickerHeaderView *)&v5 didMoveToWindow];
  v3 = MEMORY[0x1E696ACD8];
  subviewsConstraints = [(CNPhotoPickerHeaderView *)self subviewsConstraints];
  [v3 deactivateConstraints:subviewsConstraints];

  [(CNPhotoPickerHeaderView *)self setSubviewsConstraints:0];
  [(CNPhotoPickerHeaderView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v46[4] = *MEMORY[0x1E69E9840];
  subviewsConstraints = [(CNPhotoPickerHeaderView *)self subviewsConstraints];

  if (!subviewsConstraints)
  {
    v43 = objc_opt_new();
    avatarViewController = [(CNPhotoPickerHeaderView *)self avatarViewController];
    view = [avatarViewController view];

    topAnchor = [view topAnchor];
    topAnchor2 = [(CNPhotoPickerHeaderView *)self topAnchor];
    v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v46[0] = v36;
    centerXAnchor = [view centerXAnchor];
    centerXAnchor2 = [(CNPhotoPickerHeaderView *)self centerXAnchor];
    v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v46[1] = v8;
    widthAnchor = [view widthAnchor];
    v10 = view;
    v42 = view;
    heightAnchor = [view heightAnchor];
    v12 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    v46[2] = v12;
    heightAnchor2 = [v10 heightAnchor];
    v14 = [heightAnchor2 constraintEqualToConstant:115.0];
    v46[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];
    [v43 addObjectsFromArray:v15];

    identityNameTextField = [(CNPhotoPickerHeaderView *)self identityNameTextField];
    leadingAnchor = [identityNameTextField leadingAnchor];
    layoutMarginsGuide = [(CNPhotoPickerHeaderView *)self layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v34 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v45[0] = v34;
    identityNameTextField2 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
    trailingAnchor = [identityNameTextField2 trailingAnchor];
    layoutMarginsGuide2 = [(CNPhotoPickerHeaderView *)self layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v29 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v45[1] = v29;
    identityNameTextField3 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
    centerXAnchor3 = [identityNameTextField3 centerXAnchor];
    centerXAnchor4 = [(CNPhotoPickerHeaderView *)self centerXAnchor];
    v25 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v45[2] = v25;
    identityNameTextField4 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
    topAnchor3 = [identityNameTextField4 topAnchor];
    bottomAnchor = [v42 bottomAnchor];
    v19 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:12.0];
    v45[3] = v19;
    identityNameTextField5 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
    bottomAnchor2 = [identityNameTextField5 bottomAnchor];
    bottomAnchor3 = [(CNPhotoPickerHeaderView *)self bottomAnchor];
    v23 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-6.0];
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
  visualIdentity = [(CNPhotoPickerHeaderView *)self visualIdentity];
  canUpdateGroupName = [visualIdentity canUpdateGroupName];

  if (canUpdateGroupName)
  {
    v5 = [MEMORY[0x1E69DC738] buttonWithType:0];
    [(CNPhotoPickerHeaderView *)self setClearIdentityNameButton:v5];

    v6 = MEMORY[0x1E69DCAB8];
    v7 = *MEMORY[0x1E69DDE48];
    systemMidGrayColor = [MEMORY[0x1E69DC888] systemMidGrayColor];
    identityNameTextField3 = [v6 cnui_symbolImageNamed:@"xmark.circle.fill" scale:v7 weight:4 withColor:systemMidGrayColor useFixedSize:1 compatibleWithTextStyle:*MEMORY[0x1E69DDDC0]];

    clearIdentityNameButton = [(CNPhotoPickerHeaderView *)self clearIdentityNameButton];
    [clearIdentityNameButton setImage:identityNameTextField3 forState:0];

    clearIdentityNameButton2 = [(CNPhotoPickerHeaderView *)self clearIdentityNameButton];
    [clearIdentityNameButton2 setContentEdgeInsets:{0.0, 5.0, 0.0, 0.0}];

    clearIdentityNameButton3 = [(CNPhotoPickerHeaderView *)self clearIdentityNameButton];
    [clearIdentityNameButton3 addTarget:self action:sel_didTapClearIdentityNameButton forControlEvents:64];

    identityNameTextField = [(CNPhotoPickerHeaderView *)self identityNameTextField];
    clearIdentityNameButton4 = [(CNPhotoPickerHeaderView *)self clearIdentityNameButton];
    [identityNameTextField setRightView:clearIdentityNameButton4];

    identityNameTextField2 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
    [identityNameTextField2 setRightViewMode:3];
  }

  else
  {
    identityNameTextField3 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
    [identityNameTextField3 setEnabled:0];
  }
}

- (void)updateIdentityNameTextFieldMaxWidth
{
  [(CNPhotoPickerHeaderView *)self layoutMargins];
  v4 = v3;
  [(CNPhotoPickerHeaderView *)self layoutMargins];
  v6 = v4 + v5;
  clearIdentityNameButton = [(CNPhotoPickerHeaderView *)self clearIdentityNameButton];
  [clearIdentityNameButton bounds];
  v9 = v8;

  [(CNPhotoPickerHeaderView *)self bounds];
  v11 = v10 - v6 - v9;
  identityNameTextField = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [identityNameTextField setMaxWidth:v11];
}

- (void)setupIdentityNameTextFieldAndClearButton
{
  v3 = [CNPhotoPickerHeaderViewTextField alloc];
  v4 = [(CNPhotoPickerHeaderViewTextField *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CNPhotoPickerHeaderView *)self setIdentityNameTextField:v4];

  identityNameTextField = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [identityNameTextField setDelegate:self];

  identityNameTextField2 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [identityNameTextField2 setTextAlignment:1];

  v7 = +[CNUIFontRepository visualIdentityPickerHeaderTitleFont];
  identityNameTextField3 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [identityNameTextField3 setFont:v7];

  identityNameTextField4 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [identityNameTextField4 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(CNPhotoPickerHeaderView *)self setupIdentityNameClearButtonIfNecessary];
  identityNameTextField5 = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [(CNPhotoPickerHeaderView *)self addSubview:identityNameTextField5];
}

- (void)setupHeaderViewWithPhotoView:(id)view
{
  viewCopy = view;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNPhotoPickerHeaderView *)self addSubview:viewCopy];

  layer = [(CNPhotoPickerHeaderView *)self layer];
  [layer setMasksToBounds:0];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(CNPhotoPickerHeaderView *)self setBackgroundColor:clearColor];

  v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapHeaderView];
  [v7 setDelegate:self];
  [(CNPhotoPickerHeaderView *)self addGestureRecognizer:v7];
  [(CNPhotoPickerHeaderView *)self setTapGestureRecognizer:v7];
  [(CNPhotoPickerHeaderView *)self setupIdentityNameTextFieldAndClearButton];
}

- (BOOL)resignFirstResponder
{
  identityNameTextField = [(CNPhotoPickerHeaderView *)self identityNameTextField];
  [identityNameTextField resignFirstResponder];

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

- (CNPhotoPickerHeaderView)initWithVisualIdentity:(id)identity avatarViewController:(id)controller
{
  identityCopy = identity;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = CNPhotoPickerHeaderView;
  v9 = [(CNPhotoPickerHeaderView *)&v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_avatarViewController, controller);
    objc_storeStrong(&v10->_visualIdentity, identity);
    avatarViewController = [(CNPhotoPickerHeaderView *)v10 avatarViewController];
    view = [avatarViewController view];
    [(CNPhotoPickerHeaderView *)v10 setupHeaderViewWithPhotoView:view];

    [(CNPhotoPickerHeaderView *)v10 updatePhotoViewWithUpdatedIdentity:identityCopy];
    [(CNPhotoPickerHeaderView *)v10 setupDragAndDrop];
    v13 = v10;
  }

  return v10;
}

- (CNPhotoPickerHeaderView)initWithVisualIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [[CNVisualIdentityAvatarViewController alloc] initWithVisualIdentity:identityCopy];
  v6 = [(CNPhotoPickerHeaderView *)self initWithVisualIdentity:identityCopy avatarViewController:v5];

  return v6;
}

- (CNPhotoPickerHeaderView)initWithContact:(id)contact
{
  contactCopy = contact;
  v5 = [[CNVisualIdentity alloc] initWithContact:contactCopy];

  v6 = [(CNPhotoPickerHeaderView *)self initWithVisualIdentity:v5];
  return v6;
}

@end