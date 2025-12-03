@interface CNSharingProfileOnboardingAudienceCatalystViewController
+ (id)descriptorForRequiredKeys;
+ (id)headerText;
- (BOOL)textFieldShouldReturn:(id)return;
- (CNSharingProfileOnboardingAudienceCatalystViewController)initWithContact:(id)contact selectedSharingAudience:(unint64_t)audience;
- (CNSharingProfileOnboardingAudienceControllerDelegate)delegate;
- (id)confirmButtonTitle;
- (void)createAudienceDescriptionLabel;
- (void)createAudienceLabel;
- (void)createAudiencePickerButton;
- (void)createAvatarView;
- (void)createContentView;
- (void)createNameLabel;
- (void)createNameTextFields;
- (void)dealloc;
- (void)didSelectSharingAudience:(unint64_t)audience;
- (void)familyNameDidChange:(id)change;
- (void)givenNameDidChange:(id)change;
- (void)handleBackTapped:(id)tapped;
- (void)handleConfirmButtonTapped:(id)tapped;
- (void)handleSetupLaterTapped:(id)tapped;
- (void)layoutContentView;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateConfirmButtonEnabledState;
- (void)updateMenuForAudiencePicker;
- (void)viewDidLoad;
@end

@implementation CNSharingProfileOnboardingAudienceCatalystViewController

- (CNSharingProfileOnboardingAudienceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)textFieldDidEndEditing:(id)editing
{
  text = [(UITextField *)self->_givenNameField text];
  [(CNMutableContact *)self->_contact setGivenName:text];

  text2 = [(UITextField *)self->_familyNameField text];
  [(CNMutableContact *)self->_contact setFamilyName:text2];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  v5 = returnCopy;
  nameOrder = self->_nameOrder;
  if ((nameOrder != 2 || self->_familyNameField == returnCopy) && self->_givenNameField == returnCopy)
  {
    if (nameOrder == 2)
    {
      v7 = &OBJC_IVAR___CNSharingProfileOnboardingAudienceCatalystViewController__givenNameField;
    }

    else
    {
      v7 = &OBJC_IVAR___CNSharingProfileOnboardingAudienceCatalystViewController__familyNameField;
    }

    [*(&self->super.super.super.super.super.super.isa + *v7) becomeFirstResponder];
  }

  else
  {
    [(UITextField *)returnCopy resignFirstResponder];
  }

  return 0;
}

- (void)handleConfirmButtonTapped:(id)tapped
{
  delegate = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self delegate];
  [delegate audienceController:self didFinishWithContact:self->_contact sharingAudience:{-[CNSharingProfileAudienceDataSource selectedSharingAudience](self->_sharingAudienceDataSource, "selectedSharingAudience")}];
}

- (void)handleBackTapped:(id)tapped
{
  delegate = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self delegate];
  [delegate audienceController:self didFinishWithContact:0 sharingAudience:{-[CNSharingProfileAudienceDataSource selectedSharingAudience](self->_sharingAudienceDataSource, "selectedSharingAudience")}];
}

- (void)handleSetupLaterTapped:(id)tapped
{
  delegate = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self delegate];
    [delegate2 audienceControllerDidTapSetupLater:self];
  }
}

- (id)confirmButtonTitle
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"SHARING_DONE" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (void)updateConfirmButtonEnabledState
{
  v3 = *MEMORY[0x1E6996568];
  givenName = [(CNMutableContact *)self->_contact givenName];
  if ((*(v3 + 16))(v3, givenName))
  {
    familyName = [(CNMutableContact *)self->_contact familyName];
    v6 = (*(v3 + 16))(v3, familyName) ^ 1;
  }

  else
  {
    v6 = 1;
  }

  confirmButton = self->_confirmButton;

  [(OBBoldTrayButton *)confirmButton setEnabled:v6];
}

- (void)familyNameDidChange:(id)change
{
  text = [change text];
  [(CNMutableContact *)self->_contact setFamilyName:text];

  [(CNSharingProfileOnboardingAudienceCatalystViewController *)self updateConfirmButtonEnabledState];
}

- (void)givenNameDidChange:(id)change
{
  text = [change text];
  [(CNMutableContact *)self->_contact setGivenName:text];

  [(CNSharingProfileOnboardingAudienceCatalystViewController *)self updateConfirmButtonEnabledState];
}

- (void)didSelectSharingAudience:(unint64_t)audience
{
  [(CNSharingProfileAudienceDataSource *)self->_sharingAudienceDataSource setSelectedSharingAudience:audience];
  [(CNSharingProfileOnboardingAudienceCatalystViewController *)self updateMenuForAudiencePicker];
  sectionFooterLabel = [(CNSharingProfileAudienceDataSource *)self->_sharingAudienceDataSource sectionFooterLabel];
  [(UILabel *)self->_audienceDescriptionLabel setText:sectionFooterLabel];
}

- (void)layoutContentView
{
  v103[28] = *MEMORY[0x1E69E9840];
  customContentView = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self customContentView];
  [customContentView addSubview:self->_avatarImageView];
  [customContentView addSubview:self->_nameLabel];
  [customContentView addSubview:self->_givenNameField];
  [customContentView addSubview:self->_familyNameField];
  [customContentView addSubview:self->_audienceLabel];
  [customContentView addSubview:self->_audiencePickerButton];
  v4 = customContentView;
  [customContentView addSubview:self->_audienceDescriptionLabel];
  nameOrder = self->_nameOrder;
  v6 = nameOrder == 2;
  if (nameOrder == 2)
  {
    v7 = 1328;
  }

  else
  {
    v7 = 1320;
  }

  v8 = *(&self->super.super.super.super.super.super.isa + v7);
  if (v6)
  {
    v9 = 1320;
  }

  else
  {
    v9 = 1328;
  }

  v10 = MEMORY[0x1E69DCC20];
  v102 = *(&self->super.super.super.super.super.super.isa + v9);
  v11 = v8;
  v12 = objc_alloc_init(v10);
  [v4 addLayoutGuide:?];
  widthAnchor = [v4 widthAnchor];
  superview = [v4 superview];
  widthAnchor2 = [superview widthAnchor];
  v98 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v103[0] = v98;
  topAnchor = [(UIImageView *)self->_avatarImageView topAnchor];
  topAnchor2 = [v4 topAnchor];
  v95 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v103[1] = v95;
  widthAnchor3 = [(UIImageView *)self->_avatarImageView widthAnchor];
  v93 = [widthAnchor3 constraintEqualToConstant:150.0];
  v103[2] = v93;
  heightAnchor = [(UIImageView *)self->_avatarImageView heightAnchor];
  widthAnchor4 = [(UIImageView *)self->_avatarImageView widthAnchor];
  v90 = [heightAnchor constraintEqualToAnchor:widthAnchor4];
  v103[3] = v90;
  centerXAnchor = [(UIImageView *)self->_avatarImageView centerXAnchor];
  centerXAnchor2 = [v4 centerXAnchor];
  v87 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v103[4] = v87;
  leadingAnchor = [v12 leadingAnchor];
  trailingAnchor = [(UILabel *)self->_nameLabel trailingAnchor];
  v84 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:10.0];
  v103[5] = v84;
  trailingAnchor2 = [v12 trailingAnchor];
  trailingAnchor3 = [v4 trailingAnchor];
  v81 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v103[6] = v81;
  leadingAnchor2 = [(UILabel *)self->_nameLabel leadingAnchor];
  leadingAnchor3 = [v4 leadingAnchor];
  v78 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
  v103[7] = v78;
  trailingAnchor4 = [(UILabel *)self->_nameLabel trailingAnchor];
  leadingAnchor4 = [v12 leadingAnchor];
  v75 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor4 constant:-10.0];
  v103[8] = v75;
  widthAnchor5 = [v12 widthAnchor];
  widthAnchor6 = [v4 widthAnchor];
  v71 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 multiplier:0.6];
  v103[9] = v71;
  leadingAnchor5 = [v11 leadingAnchor];
  leadingAnchor6 = [v12 leadingAnchor];
  v68 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v103[10] = v68;
  trailingAnchor5 = [v11 trailingAnchor];
  leadingAnchor7 = [v102 leadingAnchor];
  v65 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor7 constant:-10.0];
  v103[11] = v65;
  centerYAnchor = [v11 centerYAnchor];
  centerYAnchor2 = [(UILabel *)self->_nameLabel centerYAnchor];
  v61 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v103[12] = v61;
  topAnchor3 = [v11 topAnchor];
  bottomAnchor = [(UIImageView *)self->_avatarImageView bottomAnchor];
  v57 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:36.0];
  v103[13] = v57;
  widthAnchor7 = [v11 widthAnchor];
  widthAnchor8 = [v12 widthAnchor];
  v54 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8 multiplier:0.5 constant:-5.0];
  v103[14] = v54;
  widthAnchor9 = [v102 widthAnchor];
  v73 = v12;
  widthAnchor10 = [v12 widthAnchor];
  v51 = [widthAnchor9 constraintEqualToAnchor:widthAnchor10 multiplier:0.5 constant:-5.0];
  v103[15] = v51;
  trailingAnchor6 = [v102 trailingAnchor];
  trailingAnchor7 = [v12 trailingAnchor];
  v47 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  v103[16] = v47;
  centerYAnchor3 = [v102 centerYAnchor];
  v60 = v11;
  centerYAnchor4 = [v11 centerYAnchor];
  v44 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v103[17] = v44;
  leadingAnchor8 = [(UILabel *)self->_audienceLabel leadingAnchor];
  leadingAnchor9 = [v4 leadingAnchor];
  v41 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
  v103[18] = v41;
  trailingAnchor8 = [(UILabel *)self->_audienceLabel trailingAnchor];
  leadingAnchor10 = [(UIButton *)self->_audiencePickerButton leadingAnchor];
  v38 = [trailingAnchor8 constraintEqualToAnchor:leadingAnchor10 constant:-10.0];
  v103[19] = v38;
  centerYAnchor5 = [(UILabel *)self->_audienceLabel centerYAnchor];
  centerYAnchor6 = [(UIButton *)self->_audiencePickerButton centerYAnchor];
  v35 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v103[20] = v35;
  trailingAnchor9 = [(UILabel *)self->_audienceLabel trailingAnchor];
  trailingAnchor10 = [(UILabel *)self->_nameLabel trailingAnchor];
  v32 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v103[21] = v32;
  topAnchor4 = [(UILabel *)self->_audienceLabel topAnchor];
  bottomAnchor2 = [v11 bottomAnchor];
  v29 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:10.0];
  v103[22] = v29;
  trailingAnchor11 = [(UIButton *)self->_audiencePickerButton trailingAnchor];
  v13 = v4;
  v50 = v4;
  trailingAnchor12 = [v4 trailingAnchor];
  v26 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
  v103[23] = v26;
  leadingAnchor11 = [(UILabel *)self->_audienceDescriptionLabel leadingAnchor];
  leadingAnchor12 = [(UIButton *)self->_audiencePickerButton leadingAnchor];
  v14 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  v103[24] = v14;
  widthAnchor11 = [(UILabel *)self->_audienceDescriptionLabel widthAnchor];
  widthAnchor12 = [(UIButton *)self->_audiencePickerButton widthAnchor];
  v17 = [widthAnchor11 constraintEqualToAnchor:widthAnchor12];
  v103[25] = v17;
  topAnchor5 = [(UILabel *)self->_audienceDescriptionLabel topAnchor];
  bottomAnchor3 = [(UIButton *)self->_audiencePickerButton bottomAnchor];
  v20 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:6.0];
  v103[26] = v20;
  bottomAnchor4 = [(UILabel *)self->_audienceDescriptionLabel bottomAnchor];
  bottomAnchor5 = [v13 bottomAnchor];
  v23 = [bottomAnchor4 constraintLessThanOrEqualToAnchor:bottomAnchor5 constant:-10.0];
  v103[27] = v23;
  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:28];

  [MEMORY[0x1E696ACD8] activateConstraints:v62];
}

- (void)createContentView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  view = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:?];

  [(OBWelcomeFullCenterContentController *)self setCenteredContentView:v5];
  customContentView = self->_customContentView;
  self->_customContentView = v5;
}

- (void)createAudienceDescriptionLabel
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  audienceDescriptionLabel = self->_audienceDescriptionLabel;
  self->_audienceDescriptionLabel = v3;

  [(UILabel *)self->_audienceDescriptionLabel setNumberOfLines:0];
  LODWORD(v5) = 1132068864;
  [(UILabel *)self->_audienceDescriptionLabel setContentCompressionResistancePriority:0 forAxis:v5];
  v6 = +[CNUIFontRepository catalystAudienceDetailsLabelFont];
  [(UILabel *)self->_audienceDescriptionLabel setFont:v6];

  [(UILabel *)self->_audienceDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  sectionFooterLabel = [(CNSharingProfileAudienceDataSource *)self->_sharingAudienceDataSource sectionFooterLabel];
  [(UILabel *)self->_audienceDescriptionLabel setText:sectionFooterLabel];
}

- (void)updateMenuForAudiencePicker
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(CNSharingProfileAudienceDataSource *)self->_sharingAudienceDataSource numberOfItems])
  {
    v4 = 0;
    do
    {
      v5 = [(CNSharingProfileAudienceDataSource *)self->_sharingAudienceDataSource itemForIndex:v4];
      v6 = MEMORY[0x1E69DC628];
      label = [v5 label];
      label2 = [v5 label];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __87__CNSharingProfileOnboardingAudienceCatalystViewController_updateMenuForAudiencePicker__block_invoke;
      v12[3] = &unk_1E74E7808;
      v12[4] = self;
      v9 = v5;
      v13 = v9;
      v10 = [v6 actionWithTitle:label image:0 identifier:label2 handler:v12];

      if ([v9 isSelected])
      {
        [v10 setState:1];
      }

      [array addObject:v10];

      ++v4;
    }

    while (v4 < [(CNSharingProfileAudienceDataSource *)self->_sharingAudienceDataSource numberOfItems]);
  }

  v11 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F0CE7398 children:array];
  [(UIButton *)self->_audiencePickerButton setMenu:v11];
}

uint64_t __87__CNSharingProfileOnboardingAudienceCatalystViewController_updateMenuForAudiencePicker__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[171] sharingAudienceForItem:*(a1 + 40)];

  return [v1 didSelectSharingAudience:v2];
}

- (void)createAudiencePickerButton
{
  v3 = [MEMORY[0x1E69DC738] buttonWithType:124];
  audiencePickerButton = self->_audiencePickerButton;
  self->_audiencePickerButton = v3;

  [(UIButton *)self->_audiencePickerButton setContentHorizontalAlignment:1];
  v5 = self->_audiencePickerButton;

  [(UIButton *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)createAudienceLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  audienceLabel = self->_audienceLabel;
  self->_audienceLabel = v4;

  v6 = +[CNUIFontRepository catalystLabelsFont];
  [(UILabel *)self->_audienceLabel setFont:v6];

  [(UILabel *)self->_audienceLabel setNumberOfLines:2];
  LODWORD(v7) = 1144766464;
  [(UILabel *)self->_audienceLabel setContentCompressionResistancePriority:0 forAxis:v7];
  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"SHARING_AUDIENCE_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  [(UILabel *)self->_audienceLabel setText:v9];

  [(UILabel *)self->_audienceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  traitCollection = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self traitCollection];
  -[UILabel setTextAlignment:](self->_audienceLabel, "setTextAlignment:", 2 * ([traitCollection layoutDirection] == 0));
}

- (void)createNameTextFields
{
  v3 = objc_alloc(MEMORY[0x1E69DD0B0]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  givenNameField = self->_givenNameField;
  self->_givenNameField = v8;

  [(UITextField *)self->_givenNameField setTranslatesAutoresizingMaskIntoConstraints:0];
  givenName = [(CNMutableContact *)self->_contact givenName];
  [(UITextField *)self->_givenNameField setText:givenName];

  v11 = +[CNUIFontRepository catalystNameTextFieldsFont];
  [(UITextField *)self->_givenNameField setFont:v11];

  [(UITextField *)self->_givenNameField setAdjustsFontForContentSizeCategory:1];
  [(UITextField *)self->_givenNameField setAutocorrectionType:1];
  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"SHARING_GIVEN_NAME_PLACEHOLDER" value:&stru_1F0CE7398 table:@"Localized"];
  [(UITextField *)self->_givenNameField setPlaceholder:v13];

  [(UITextField *)self->_givenNameField addTarget:self action:sel_givenNameDidChange_ forControlEvents:0x20000];
  [(UITextField *)self->_givenNameField setBorderStyle:3];
  [(UITextField *)self->_givenNameField setDelegate:self];
  v14 = [objc_alloc(MEMORY[0x1E69DD0B0]) initWithFrame:{v4, v5, v6, v7}];
  familyNameField = self->_familyNameField;
  self->_familyNameField = v14;

  [(UITextField *)self->_familyNameField setTranslatesAutoresizingMaskIntoConstraints:0];
  familyName = [(CNMutableContact *)self->_contact familyName];
  [(UITextField *)self->_familyNameField setText:familyName];

  v17 = +[CNUIFontRepository catalystNameTextFieldsFont];
  [(UITextField *)self->_familyNameField setFont:v17];

  [(UITextField *)self->_familyNameField setAdjustsFontForContentSizeCategory:1];
  [(UITextField *)self->_familyNameField setAutocorrectionType:1];
  v18 = CNContactsUIBundle();
  v19 = [v18 localizedStringForKey:@"SHARING_FAMILY_NAME_PLACEHOLDER" value:&stru_1F0CE7398 table:@"Localized"];
  [(UITextField *)self->_familyNameField setPlaceholder:v19];

  [(UITextField *)self->_familyNameField addTarget:self action:sel_familyNameDidChange_ forControlEvents:0x20000];
  [(UITextField *)self->_familyNameField setBorderStyle:3];
  v20 = self->_familyNameField;

  [(UITextField *)v20 setDelegate:self];
}

- (void)createNameLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  nameLabel = self->_nameLabel;
  self->_nameLabel = v4;

  v6 = +[CNUIFontRepository catalystLabelsFont];
  [(UILabel *)self->_nameLabel setFont:v6];

  LODWORD(v7) = 1144766464;
  [(UILabel *)self->_nameLabel setContentCompressionResistancePriority:0 forAxis:v7];
  [(UILabel *)self->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  traitCollection = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self traitCollection];
  -[UILabel setTextAlignment:](self->_nameLabel, "setTextAlignment:", 2 * ([traitCollection layoutDirection] == 0));

  v10 = CNContactsUIBundle();
  v9 = [v10 localizedStringForKey:@"SHARING_NAME_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  [(UILabel *)self->_nameLabel setText:v9];
}

- (void)createAvatarView
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  avatarImageView = self->_avatarImageView;
  self->_avatarImageView = v4;

  [(UIImageView *)self->_avatarImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = objc_alloc(MEMORY[0x1E69DCAB8]);
  thumbnailImageData = [(CNMutableContact *)self->_contact thumbnailImageData];
  v9 = [v6 initWithData:thumbnailImageData];

  [(UIImageView *)self->_avatarImageView setImage:v9];
  [(UIImageView *)self->_avatarImageView setClipsToBounds:1];
  layer = [(UIImageView *)self->_avatarImageView layer];
  [layer setCornerRadius:75.0];
}

- (void)viewDidLoad
{
  linkButton = [MEMORY[0x1E69B7D30] linkButton];
  setupLaterButton = self->_setupLaterButton;
  self->_setupLaterButton = linkButton;

  v5 = self->_setupLaterButton;
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"SHARING_SET_UP_LATER" value:&stru_1F0CE7398 table:@"Localized"];
  [(OBLinkTrayButton *)v5 setTitle:v7 forState:0];

  [(OBLinkTrayButton *)self->_setupLaterButton addTarget:self action:sel_handleSetupLaterTapped_ forControlEvents:64];
  buttonTray = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self buttonTray];
  [buttonTray addButton:self->_setupLaterButton];

  v9 = objc_alloc_init(CNOnboardingBoldButtonProvider);
  boldAlternateButton = [(CNOnboardingBoldButtonProvider *)v9 boldAlternateButton];
  backButton = self->_backButton;
  self->_backButton = boldAlternateButton;

  v12 = self->_backButton;
  v13 = CNContactsUIBundle();
  v14 = [v13 localizedStringForKey:@"SHARING_BACK" value:&stru_1F0CE7398 table:@"Localized"];
  [(OBBoldTrayButton *)v12 setTitle:v14 forState:0];

  [(OBBoldTrayButton *)self->_backButton addTarget:self action:sel_handleBackTapped_ forControlEvents:64];
  buttonTray2 = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self buttonTray];
  [buttonTray2 addButton:self->_backButton];

  boldButton = [(CNOnboardingBoldButtonProvider *)v9 boldButton];
  confirmButton = self->_confirmButton;
  self->_confirmButton = boldButton;

  v18 = self->_confirmButton;
  confirmButtonTitle = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self confirmButtonTitle];
  [(OBBoldTrayButton *)v18 setTitle:confirmButtonTitle forState:0];

  [(OBBoldTrayButton *)self->_confirmButton addTarget:self action:sel_handleConfirmButtonTapped_ forControlEvents:64];
  [(CNSharingProfileOnboardingAudienceCatalystViewController *)self updateConfirmButtonEnabledState];
  buttonTray3 = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self buttonTray];
  [buttonTray3 addButton:self->_confirmButton];

  givenName = [(CNMutableContact *)self->_contact givenName];
  if (givenName && (v22 = givenName, [(CNMutableContact *)self->_contact familyName], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23))
  {
    v24 = 0;
  }

  else
  {
    v24 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    givenName2 = [(CNMutableContact *)self->_contact givenName];
    [v24 setGivenName:givenName2];

    familyName = [(CNMutableContact *)self->_contact familyName];
    [v24 setFamilyName:familyName];
  }

  self->_nameOrder = [MEMORY[0x1E696ADF8] _nameOrderWithOverridesForComponents:v24 options:0];
  [(CNSharingProfileOnboardingAudienceCatalystViewController *)self createAvatarView];
  [(CNSharingProfileOnboardingAudienceCatalystViewController *)self createNameLabel];
  [(CNSharingProfileOnboardingAudienceCatalystViewController *)self createNameTextFields];
  [(CNSharingProfileOnboardingAudienceCatalystViewController *)self createAudienceLabel];
  [(CNSharingProfileOnboardingAudienceCatalystViewController *)self createAudiencePickerButton];
  [(CNSharingProfileOnboardingAudienceCatalystViewController *)self updateMenuForAudiencePicker];
  [(CNSharingProfileOnboardingAudienceCatalystViewController *)self createAudienceDescriptionLabel];
  [(CNSharingProfileOnboardingAudienceCatalystViewController *)self createContentView];
  [(CNSharingProfileOnboardingAudienceCatalystViewController *)self layoutContentView];
  v27.receiver = self;
  v27.super_class = CNSharingProfileOnboardingAudienceCatalystViewController;
  [(OBWelcomeFullCenterContentController *)&v27 viewDidLoad];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNSharingProfileOnboardingAudienceCatalystViewController;
  [(CNSharingProfileOnboardingAudienceCatalystViewController *)&v4 dealloc];
}

- (CNSharingProfileOnboardingAudienceCatalystViewController)initWithContact:(id)contact selectedSharingAudience:(unint64_t)audience
{
  contactCopy = contact;
  headerText = [objc_opt_class() headerText];
  v15.receiver = self;
  v15.super_class = CNSharingProfileOnboardingAudienceCatalystViewController;
  v8 = [(CNSharingProfileOnboardingAudienceCatalystViewController *)&v15 initWithTitle:headerText detailText:0 icon:0];

  if (v8)
  {
    v9 = [[CNSharingProfileAudienceDataSource alloc] initWithSelectedSharingAudience:audience];
    sharingAudienceDataSource = v8->_sharingAudienceDataSource;
    v8->_sharingAudienceDataSource = v9;

    v11 = [contactCopy mutableCopy];
    contact = v8->_contact;
    v8->_contact = v11;

    v13 = v8;
  }

  return v8;
}

+ (id)headerText
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"SHARING_SET_UP_NAME_AND_PHOTO_SHARING" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_1_42555 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_1_42555, &__block_literal_global_42556);
  }

  v3 = descriptorForRequiredKeys_cn_once_object_1_42557;

  return v3;
}

void __85__CNSharingProfileOnboardingAudienceCatalystViewController_descriptorForRequiredKeys__block_invoke()
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C230];
  v6[0] = *MEMORY[0x1E695C240];
  v6[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v2 = MEMORY[0x1E695CD58];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNSharingProfileOnboardingAudienceCatalystViewController descriptorForRequiredKeys]_block_invoke"];
  v4 = [v2 descriptorWithKeyDescriptors:v1 description:v3];

  v5 = descriptorForRequiredKeys_cn_once_object_1_42557;
  descriptorForRequiredKeys_cn_once_object_1_42557 = v4;
}

@end