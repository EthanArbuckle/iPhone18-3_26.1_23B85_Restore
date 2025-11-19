@interface CNSharingProfileOnboardingAudienceCatalystViewController
+ (id)descriptorForRequiredKeys;
+ (id)headerText;
- (BOOL)textFieldShouldReturn:(id)a3;
- (CNSharingProfileOnboardingAudienceCatalystViewController)initWithContact:(id)a3 selectedSharingAudience:(unint64_t)a4;
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
- (void)didSelectSharingAudience:(unint64_t)a3;
- (void)familyNameDidChange:(id)a3;
- (void)givenNameDidChange:(id)a3;
- (void)handleBackTapped:(id)a3;
- (void)handleConfirmButtonTapped:(id)a3;
- (void)handleSetupLaterTapped:(id)a3;
- (void)layoutContentView;
- (void)textFieldDidEndEditing:(id)a3;
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

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = [(UITextField *)self->_givenNameField text];
  [(CNMutableContact *)self->_contact setGivenName:v4];

  v5 = [(UITextField *)self->_familyNameField text];
  [(CNMutableContact *)self->_contact setFamilyName:v5];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = v4;
  nameOrder = self->_nameOrder;
  if ((nameOrder != 2 || self->_familyNameField == v4) && self->_givenNameField == v4)
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
    [(UITextField *)v4 resignFirstResponder];
  }

  return 0;
}

- (void)handleConfirmButtonTapped:(id)a3
{
  v4 = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self delegate];
  [v4 audienceController:self didFinishWithContact:self->_contact sharingAudience:{-[CNSharingProfileAudienceDataSource selectedSharingAudience](self->_sharingAudienceDataSource, "selectedSharingAudience")}];
}

- (void)handleBackTapped:(id)a3
{
  v4 = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self delegate];
  [v4 audienceController:self didFinishWithContact:0 sharingAudience:{-[CNSharingProfileAudienceDataSource selectedSharingAudience](self->_sharingAudienceDataSource, "selectedSharingAudience")}];
}

- (void)handleSetupLaterTapped:(id)a3
{
  v4 = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self delegate];
    [v6 audienceControllerDidTapSetupLater:self];
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
  v4 = [(CNMutableContact *)self->_contact givenName];
  if ((*(v3 + 16))(v3, v4))
  {
    v5 = [(CNMutableContact *)self->_contact familyName];
    v6 = (*(v3 + 16))(v3, v5) ^ 1;
  }

  else
  {
    v6 = 1;
  }

  confirmButton = self->_confirmButton;

  [(OBBoldTrayButton *)confirmButton setEnabled:v6];
}

- (void)familyNameDidChange:(id)a3
{
  v4 = [a3 text];
  [(CNMutableContact *)self->_contact setFamilyName:v4];

  [(CNSharingProfileOnboardingAudienceCatalystViewController *)self updateConfirmButtonEnabledState];
}

- (void)givenNameDidChange:(id)a3
{
  v4 = [a3 text];
  [(CNMutableContact *)self->_contact setGivenName:v4];

  [(CNSharingProfileOnboardingAudienceCatalystViewController *)self updateConfirmButtonEnabledState];
}

- (void)didSelectSharingAudience:(unint64_t)a3
{
  [(CNSharingProfileAudienceDataSource *)self->_sharingAudienceDataSource setSelectedSharingAudience:a3];
  [(CNSharingProfileOnboardingAudienceCatalystViewController *)self updateMenuForAudiencePicker];
  v4 = [(CNSharingProfileAudienceDataSource *)self->_sharingAudienceDataSource sectionFooterLabel];
  [(UILabel *)self->_audienceDescriptionLabel setText:v4];
}

- (void)layoutContentView
{
  v103[28] = *MEMORY[0x1E69E9840];
  v3 = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self customContentView];
  [v3 addSubview:self->_avatarImageView];
  [v3 addSubview:self->_nameLabel];
  [v3 addSubview:self->_givenNameField];
  [v3 addSubview:self->_familyNameField];
  [v3 addSubview:self->_audienceLabel];
  [v3 addSubview:self->_audiencePickerButton];
  v4 = v3;
  [v3 addSubview:self->_audienceDescriptionLabel];
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
  v100 = [v4 widthAnchor];
  v101 = [v4 superview];
  v99 = [v101 widthAnchor];
  v98 = [v100 constraintEqualToAnchor:v99];
  v103[0] = v98;
  v97 = [(UIImageView *)self->_avatarImageView topAnchor];
  v96 = [v4 topAnchor];
  v95 = [v97 constraintEqualToAnchor:v96];
  v103[1] = v95;
  v94 = [(UIImageView *)self->_avatarImageView widthAnchor];
  v93 = [v94 constraintEqualToConstant:150.0];
  v103[2] = v93;
  v92 = [(UIImageView *)self->_avatarImageView heightAnchor];
  v91 = [(UIImageView *)self->_avatarImageView widthAnchor];
  v90 = [v92 constraintEqualToAnchor:v91];
  v103[3] = v90;
  v89 = [(UIImageView *)self->_avatarImageView centerXAnchor];
  v88 = [v4 centerXAnchor];
  v87 = [v89 constraintEqualToAnchor:v88];
  v103[4] = v87;
  v86 = [v12 leadingAnchor];
  v85 = [(UILabel *)self->_nameLabel trailingAnchor];
  v84 = [v86 constraintEqualToAnchor:v85 constant:10.0];
  v103[5] = v84;
  v83 = [v12 trailingAnchor];
  v82 = [v4 trailingAnchor];
  v81 = [v83 constraintEqualToAnchor:v82];
  v103[6] = v81;
  v80 = [(UILabel *)self->_nameLabel leadingAnchor];
  v79 = [v4 leadingAnchor];
  v78 = [v80 constraintEqualToAnchor:v79];
  v103[7] = v78;
  v77 = [(UILabel *)self->_nameLabel trailingAnchor];
  v76 = [v12 leadingAnchor];
  v75 = [v77 constraintEqualToAnchor:v76 constant:-10.0];
  v103[8] = v75;
  v74 = [v12 widthAnchor];
  v72 = [v4 widthAnchor];
  v71 = [v74 constraintEqualToAnchor:v72 multiplier:0.6];
  v103[9] = v71;
  v70 = [v11 leadingAnchor];
  v69 = [v12 leadingAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v103[10] = v68;
  v67 = [v11 trailingAnchor];
  v66 = [v102 leadingAnchor];
  v65 = [v67 constraintEqualToAnchor:v66 constant:-10.0];
  v103[11] = v65;
  v64 = [v11 centerYAnchor];
  v63 = [(UILabel *)self->_nameLabel centerYAnchor];
  v61 = [v64 constraintEqualToAnchor:v63];
  v103[12] = v61;
  v59 = [v11 topAnchor];
  v58 = [(UIImageView *)self->_avatarImageView bottomAnchor];
  v57 = [v59 constraintEqualToAnchor:v58 constant:36.0];
  v103[13] = v57;
  v56 = [v11 widthAnchor];
  v55 = [v12 widthAnchor];
  v54 = [v56 constraintEqualToAnchor:v55 multiplier:0.5 constant:-5.0];
  v103[14] = v54;
  v53 = [v102 widthAnchor];
  v73 = v12;
  v52 = [v12 widthAnchor];
  v51 = [v53 constraintEqualToAnchor:v52 multiplier:0.5 constant:-5.0];
  v103[15] = v51;
  v49 = [v102 trailingAnchor];
  v48 = [v12 trailingAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v103[16] = v47;
  v46 = [v102 centerYAnchor];
  v60 = v11;
  v45 = [v11 centerYAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v103[17] = v44;
  v43 = [(UILabel *)self->_audienceLabel leadingAnchor];
  v42 = [v4 leadingAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v103[18] = v41;
  v40 = [(UILabel *)self->_audienceLabel trailingAnchor];
  v39 = [(UIButton *)self->_audiencePickerButton leadingAnchor];
  v38 = [v40 constraintEqualToAnchor:v39 constant:-10.0];
  v103[19] = v38;
  v37 = [(UILabel *)self->_audienceLabel centerYAnchor];
  v36 = [(UIButton *)self->_audiencePickerButton centerYAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v103[20] = v35;
  v34 = [(UILabel *)self->_audienceLabel trailingAnchor];
  v33 = [(UILabel *)self->_nameLabel trailingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v103[21] = v32;
  v31 = [(UILabel *)self->_audienceLabel topAnchor];
  v30 = [v11 bottomAnchor];
  v29 = [v31 constraintEqualToAnchor:v30 constant:10.0];
  v103[22] = v29;
  v28 = [(UIButton *)self->_audiencePickerButton trailingAnchor];
  v13 = v4;
  v50 = v4;
  v27 = [v4 trailingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v103[23] = v26;
  v25 = [(UILabel *)self->_audienceDescriptionLabel leadingAnchor];
  v24 = [(UIButton *)self->_audiencePickerButton leadingAnchor];
  v14 = [v25 constraintEqualToAnchor:v24];
  v103[24] = v14;
  v15 = [(UILabel *)self->_audienceDescriptionLabel widthAnchor];
  v16 = [(UIButton *)self->_audiencePickerButton widthAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v103[25] = v17;
  v18 = [(UILabel *)self->_audienceDescriptionLabel topAnchor];
  v19 = [(UIButton *)self->_audiencePickerButton bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:6.0];
  v103[26] = v20;
  v21 = [(UILabel *)self->_audienceDescriptionLabel bottomAnchor];
  v22 = [v13 bottomAnchor];
  v23 = [v21 constraintLessThanOrEqualToAnchor:v22 constant:-10.0];
  v103[27] = v23;
  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:28];

  [MEMORY[0x1E696ACD8] activateConstraints:v62];
}

- (void)createContentView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self view];
  [v4 bounds];
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
  v7 = [(CNSharingProfileAudienceDataSource *)self->_sharingAudienceDataSource sectionFooterLabel];
  [(UILabel *)self->_audienceDescriptionLabel setText:v7];
}

- (void)updateMenuForAudiencePicker
{
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(CNSharingProfileAudienceDataSource *)self->_sharingAudienceDataSource numberOfItems])
  {
    v4 = 0;
    do
    {
      v5 = [(CNSharingProfileAudienceDataSource *)self->_sharingAudienceDataSource itemForIndex:v4];
      v6 = MEMORY[0x1E69DC628];
      v7 = [v5 label];
      v8 = [v5 label];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __87__CNSharingProfileOnboardingAudienceCatalystViewController_updateMenuForAudiencePicker__block_invoke;
      v12[3] = &unk_1E74E7808;
      v12[4] = self;
      v9 = v5;
      v13 = v9;
      v10 = [v6 actionWithTitle:v7 image:0 identifier:v8 handler:v12];

      if ([v9 isSelected])
      {
        [v10 setState:1];
      }

      [v3 addObject:v10];

      ++v4;
    }

    while (v4 < [(CNSharingProfileAudienceDataSource *)self->_sharingAudienceDataSource numberOfItems]);
  }

  v11 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F0CE7398 children:v3];
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
  v10 = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self traitCollection];
  -[UILabel setTextAlignment:](self->_audienceLabel, "setTextAlignment:", 2 * ([v10 layoutDirection] == 0));
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
  v10 = [(CNMutableContact *)self->_contact givenName];
  [(UITextField *)self->_givenNameField setText:v10];

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
  v16 = [(CNMutableContact *)self->_contact familyName];
  [(UITextField *)self->_familyNameField setText:v16];

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
  v8 = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self traitCollection];
  -[UILabel setTextAlignment:](self->_nameLabel, "setTextAlignment:", 2 * ([v8 layoutDirection] == 0));

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
  v7 = [(CNMutableContact *)self->_contact thumbnailImageData];
  v9 = [v6 initWithData:v7];

  [(UIImageView *)self->_avatarImageView setImage:v9];
  [(UIImageView *)self->_avatarImageView setClipsToBounds:1];
  v8 = [(UIImageView *)self->_avatarImageView layer];
  [v8 setCornerRadius:75.0];
}

- (void)viewDidLoad
{
  v3 = [MEMORY[0x1E69B7D30] linkButton];
  setupLaterButton = self->_setupLaterButton;
  self->_setupLaterButton = v3;

  v5 = self->_setupLaterButton;
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"SHARING_SET_UP_LATER" value:&stru_1F0CE7398 table:@"Localized"];
  [(OBLinkTrayButton *)v5 setTitle:v7 forState:0];

  [(OBLinkTrayButton *)self->_setupLaterButton addTarget:self action:sel_handleSetupLaterTapped_ forControlEvents:64];
  v8 = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self buttonTray];
  [v8 addButton:self->_setupLaterButton];

  v9 = objc_alloc_init(CNOnboardingBoldButtonProvider);
  v10 = [(CNOnboardingBoldButtonProvider *)v9 boldAlternateButton];
  backButton = self->_backButton;
  self->_backButton = v10;

  v12 = self->_backButton;
  v13 = CNContactsUIBundle();
  v14 = [v13 localizedStringForKey:@"SHARING_BACK" value:&stru_1F0CE7398 table:@"Localized"];
  [(OBBoldTrayButton *)v12 setTitle:v14 forState:0];

  [(OBBoldTrayButton *)self->_backButton addTarget:self action:sel_handleBackTapped_ forControlEvents:64];
  v15 = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self buttonTray];
  [v15 addButton:self->_backButton];

  v16 = [(CNOnboardingBoldButtonProvider *)v9 boldButton];
  confirmButton = self->_confirmButton;
  self->_confirmButton = v16;

  v18 = self->_confirmButton;
  v19 = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self confirmButtonTitle];
  [(OBBoldTrayButton *)v18 setTitle:v19 forState:0];

  [(OBBoldTrayButton *)self->_confirmButton addTarget:self action:sel_handleConfirmButtonTapped_ forControlEvents:64];
  [(CNSharingProfileOnboardingAudienceCatalystViewController *)self updateConfirmButtonEnabledState];
  v20 = [(CNSharingProfileOnboardingAudienceCatalystViewController *)self buttonTray];
  [v20 addButton:self->_confirmButton];

  v21 = [(CNMutableContact *)self->_contact givenName];
  if (v21 && (v22 = v21, [(CNMutableContact *)self->_contact familyName], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23))
  {
    v24 = 0;
  }

  else
  {
    v24 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    v25 = [(CNMutableContact *)self->_contact givenName];
    [v24 setGivenName:v25];

    v26 = [(CNMutableContact *)self->_contact familyName];
    [v24 setFamilyName:v26];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNSharingProfileOnboardingAudienceCatalystViewController;
  [(CNSharingProfileOnboardingAudienceCatalystViewController *)&v4 dealloc];
}

- (CNSharingProfileOnboardingAudienceCatalystViewController)initWithContact:(id)a3 selectedSharingAudience:(unint64_t)a4
{
  v6 = a3;
  v7 = [objc_opt_class() headerText];
  v15.receiver = self;
  v15.super_class = CNSharingProfileOnboardingAudienceCatalystViewController;
  v8 = [(CNSharingProfileOnboardingAudienceCatalystViewController *)&v15 initWithTitle:v7 detailText:0 icon:0];

  if (v8)
  {
    v9 = [[CNSharingProfileAudienceDataSource alloc] initWithSelectedSharingAudience:a4];
    sharingAudienceDataSource = v8->_sharingAudienceDataSource;
    v8->_sharingAudienceDataSource = v9;

    v11 = [v6 mutableCopy];
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