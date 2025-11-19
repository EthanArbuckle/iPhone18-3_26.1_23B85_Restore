@interface CNStarkContactInfoViewController
+ (CNKeyDescriptor)descriptorForRequiredKeys;
- (BOOL)shouldShowGemini;
- (CNStarkContactInfoViewController)init;
- (CNStarkContactInfoViewController)initWithCoder:(id)a3;
- (CNStarkContactInfoViewController)initWithContact:(id)a3;
- (CNStarkContactInfoViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)geminiDataSourceDidUpdate:(id)a3;
- (void)resetLayoutConstraints;
- (void)setupLayoutConstraints;
- (void)setupViews;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateViewConstraints;
- (void)updateViews;
- (void)viewDidLoad;
@end

@implementation CNStarkContactInfoViewController

- (BOOL)shouldShowGemini
{
  v3 = [(CNStarkContactInfoViewController *)self geminiResult];
  v4 = [(CNStarkContactInfoViewController *)self contact];
  v5 = [CNContactContentDisplayViewController shouldShowGeminiForResult:v3 contact:v4];

  return v5;
}

- (void)updateViewConstraints
{
  v5.receiver = self;
  v5.super_class = CNStarkContactInfoViewController;
  [(CNStarkContactInfoViewController *)&v5 updateViewConstraints];
  v3 = *MEMORY[0x1E6996530];
  v4 = [(CNStarkContactInfoViewController *)self layoutConstraints];
  LODWORD(v3) = (*(v3 + 16))(v3, v4);

  if (v3)
  {
    [(CNStarkContactInfoViewController *)self setupLayoutConstraints];
  }
}

- (void)setupLayoutConstraints
{
  v26[4] = *MEMORY[0x1E69E9840];
  v25 = [(CNStarkContactInfoViewController *)self view];
  v23 = [v25 leadingAnchor];
  v24 = [(CNStarkContactInfoViewController *)self stackView];
  v22 = [v24 leadingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v26[0] = v21;
  v20 = [(CNStarkContactInfoViewController *)self view];
  v18 = [v20 topAnchor];
  v19 = [(CNStarkContactInfoViewController *)self stackView];
  v17 = [v19 topAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v26[1] = v16;
  v15 = [(CNStarkContactInfoViewController *)self view];
  v3 = [v15 trailingAnchor];
  v4 = [(CNStarkContactInfoViewController *)self stackView];
  v5 = [v4 trailingAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v26[2] = v6;
  v7 = [(CNStarkContactInfoViewController *)self view];
  v8 = [v7 bottomAnchor];
  v9 = [(CNStarkContactInfoViewController *)self stackView];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v26[3] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];

  [(CNStarkContactInfoViewController *)self setLayoutConstraints:v14];
  v12 = [(CNStarkContactInfoViewController *)self view];
  v13 = [(CNStarkContactInfoViewController *)self layoutConstraints];
  [v12 addConstraints:v13];
}

+ (CNKeyDescriptor)descriptorForRequiredKeys
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  v3 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v4 = *MEMORY[0x1E695C328];
  v8[0] = v3;
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v2 descriptorWithKeyDescriptors:v5 description:@"CNStarkNameViewController keys"];

  return v6;
}

- (void)resetLayoutConstraints
{
  v3 = [(CNStarkContactInfoViewController *)self view];
  v4 = [(CNStarkContactInfoViewController *)self layoutConstraints];
  [v3 removeConstraints:v4];

  [(CNStarkContactInfoViewController *)self setLayoutConstraints:0];
  v5 = [(CNStarkContactInfoViewController *)self view];
  [v5 setNeedsUpdateConstraints];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CNStarkContactInfoViewController;
  [(CNStarkContactInfoViewController *)&v4 viewDidLoad];
  [(CNStarkContactInfoViewController *)self setupViews];
  [(CNStarkContactInfoViewController *)self updateViews];
  v3 = [(CNStarkContactInfoViewController *)self view];
  [v3 setAccessibilityIdentifier:@"CNStarkContactInfoView"];
}

- (void)setupViews
{
  v48[2] = *MEMORY[0x1E69E9840];
  v3 = [(CNStarkContactInfoViewController *)self primaryLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(CNStarkContactInfoViewController *)self primaryLabel];
  [v4 setNumberOfLines:1];

  v5 = [(CNStarkContactInfoViewController *)self primaryLabel];
  [v5 setAdjustsFontForContentSizeCategory:1];

  v6 = +[CNUIFontRepository carPlayContactInfoViewPrimaryLabelFont];
  v7 = [(CNStarkContactInfoViewController *)self primaryLabel];
  [v7 setFont:v6];

  v8 = +[CNUIColorRepository carPlayContactInfoViewPrimaryLabelTextColor];
  v9 = [(CNStarkContactInfoViewController *)self primaryLabel];
  [v9 setTextColor:v8];

  v10 = [(CNStarkContactInfoViewController *)self primaryLabel];
  [v10 setIsAccessibilityElement:0];

  v11 = [(CNStarkContactInfoViewController *)self primaryLabel];
  [v11 setTextAlignment:4];

  v12 = [(CNStarkContactInfoViewController *)self primaryLabel];
  [v12 setAccessibilityIdentifier:@"CNStarkContactInfoViewPrimaryLabel"];

  v13 = [(CNStarkContactInfoViewController *)self secondaryLabel];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(CNStarkContactInfoViewController *)self secondaryLabel];
  [v14 setNumberOfLines:1];

  v15 = [(CNStarkContactInfoViewController *)self secondaryLabel];
  [v15 setAdjustsFontForContentSizeCategory:1];

  v16 = +[CNUIFontRepository carPlayContactInfoViewSecondaryLabelFont];
  v17 = [(CNStarkContactInfoViewController *)self secondaryLabel];
  [v17 setFont:v16];

  v18 = +[CNUIColorRepository carPlayContactInfoViewSecondaryLabelTextColor];
  v19 = [(CNStarkContactInfoViewController *)self secondaryLabel];
  [v19 setTextColor:v18];

  v20 = [(CNStarkContactInfoViewController *)self secondaryLabel];
  [v20 setIsAccessibilityElement:0];

  v21 = [(CNStarkContactInfoViewController *)self secondaryLabel];
  [v21 setTextAlignment:4];

  v22 = [(CNStarkContactInfoViewController *)self secondaryLabel];
  [v22 setAccessibilityIdentifier:@"CNStarkContactInfoViewSecondaryLabel"];

  v23 = [(CNStarkContactInfoViewController *)self stackView];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [(CNStarkContactInfoViewController *)self stackView];
  [v24 setAlignment:1];

  v25 = [(CNStarkContactInfoViewController *)self stackView];
  [v25 setDistribution:3];

  v26 = [(CNStarkContactInfoViewController *)self stackView];
  [v26 setAxis:1];

  v27 = [(CNStarkContactInfoViewController *)self stackView];
  [v27 setBaselineRelativeArrangement:1];

  v28 = [(CNStarkContactInfoViewController *)self stackView];
  [v28 setSpacing:20.0];

  v29 = [(CNStarkContactInfoViewController *)self stackView];
  v30 = [(CNStarkContactInfoViewController *)self primaryLabel];
  [v29 addArrangedSubview:v30];

  v31 = [(CNStarkContactInfoViewController *)self stackView];
  v32 = [(CNStarkContactInfoViewController *)self secondaryLabel];
  [v31 addArrangedSubview:v32];

  v33 = [(CNStarkContactInfoViewController *)self contactGeminiView];

  if (v33)
  {
    v34 = [(CNStarkContactInfoViewController *)self contactGeminiView];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

    v35 = [(CNStarkContactInfoViewController *)self contactGeminiView];
    [v35 setUserInteractionEnabled:0];

    v36 = [(CNStarkContactInfoViewController *)self contactGeminiView];
    [v36 setAllowsPickerActions:0];

    v37 = [(CNStarkContactInfoViewController *)self geminiResult];
    v38 = [(CNStarkContactInfoViewController *)self contactGeminiView];
    [v38 setGeminiResult:v37];

    v47[0] = *MEMORY[0x1E69DB648];
    v39 = +[CNUIFontRepository carPlayContactInfoViewSecondaryLabelFont];
    v48[0] = v39;
    v47[1] = *MEMORY[0x1E69DB650];
    v40 = +[CNUIColorRepository carPlayContactInfoViewSecondaryLabelTextColor];
    v48[1] = v40;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
    v42 = [(CNStarkContactInfoViewController *)self contactGeminiView];
    [v42 setAb_textAttributes:v41];

    if ([(CNStarkContactInfoViewController *)self shouldShowGemini])
    {
      v43 = [(CNStarkContactInfoViewController *)self stackView];
      v44 = [(CNStarkContactInfoViewController *)self contactGeminiView];
      [v43 addArrangedSubview:v44];
    }
  }

  v45 = [(CNStarkContactInfoViewController *)self view];
  v46 = [(CNStarkContactInfoViewController *)self stackView];
  [v45 addSubview:v46];
}

- (void)updateViews
{
  v3 = MEMORY[0x1E695CD80];
  v4 = [(CNStarkContactInfoViewController *)self contact];
  v22 = [v3 stringFromContact:v4 style:0];

  v5 = [(CNStarkContactInfoViewController *)self contact];
  v6 = [v5 organizationName];

  v7 = [v22 isEqualToString:v6];
  v8 = [(CNStarkContactInfoViewController *)self primaryLabel];
  v9 = v8;
  if (v7)
  {
    [v8 setText:v6];

    v10 = [(CNStarkContactInfoViewController *)self primaryLabel];
    [v10 setAccessibilityValue:@"CNStarkContactCompanyLabel"];

    v11 = [(CNStarkContactInfoViewController *)self secondaryLabel];
    [v11 setText:0];

    v12 = [(CNStarkContactInfoViewController *)self secondaryLabel];
    v13 = v12;
    v14 = 0;
  }

  else
  {
    [v8 setText:v22];

    v15 = [(CNStarkContactInfoViewController *)self primaryLabel];
    [v15 setAccessibilityValue:@"CNStarkContactNameLabel"];

    v16 = [(CNStarkContactInfoViewController *)self secondaryLabel];
    [v16 setText:v6];

    v12 = [(CNStarkContactInfoViewController *)self secondaryLabel];
    v13 = v12;
    v14 = @"CNStarkContactCompanyLabel";
  }

  [v12 setAccessibilityValue:v14];

  v17 = [(CNStarkContactInfoViewController *)self secondaryLabel];
  v18 = [v17 text];
  v19 = [v18 length];

  if (v19)
  {
    v20 = [(CNStarkContactInfoViewController *)self stackView];
    v21 = [(CNStarkContactInfoViewController *)self secondaryLabel];
    [v20 insertArrangedSubview:v21 atIndex:1];
  }

  else
  {
    v20 = [(CNStarkContactInfoViewController *)self secondaryLabel];
    [v20 removeFromSuperview];
  }
}

- (void)geminiDataSourceDidUpdate:(id)a3
{
  v7 = [a3 geminiResult];
  [(CNStarkContactInfoViewController *)self setGeminiResult:v7];
  v4 = [(CNStarkContactInfoViewController *)self contactGeminiView];
  [v4 setGeminiResult:v7];

  if ([(CNStarkContactInfoViewController *)self shouldShowGemini])
  {
    v5 = [(CNStarkContactInfoViewController *)self stackView];
    v6 = [(CNStarkContactInfoViewController *)self contactGeminiView];
    [v5 addArrangedSubview:v6];
  }

  else
  {
    v5 = [(CNStarkContactInfoViewController *)self contactGeminiView];
    [v5 removeFromSuperview];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = CNStarkContactInfoViewController;
  [(CNStarkContactInfoViewController *)&v8 traitCollectionDidChange:a3];
  v4 = +[CNUIFontRepository carPlayContactInfoViewPrimaryLabelFont];
  v5 = [(CNStarkContactInfoViewController *)self primaryLabel];
  [v5 setFont:v4];

  v6 = +[CNUIFontRepository carPlayContactInfoViewSecondaryLabelFont];
  v7 = [(CNStarkContactInfoViewController *)self secondaryLabel];
  [v7 setFont:v6];

  [(CNStarkContactInfoViewController *)self resetLayoutConstraints];
}

- (CNStarkContactInfoViewController)initWithContact:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = CNStarkContactInfoViewController;
  v6 = [(CNStarkContactInfoViewController *)&v23 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    primaryLabel = v6->_primaryLabel;
    v6->_primaryLabel = v7;

    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryLabel = v6->_secondaryLabel;
    v6->_secondaryLabel = v9;

    v11 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    stackView = v6->_stackView;
    v6->_stackView = v11;

    if ([MEMORY[0x1E695CEB0] deviceSupportsGemini])
    {
      v13 = [CNContactGeminiView alloc];
      v14 = [(CNContactGeminiView *)v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      contactGeminiView = v6->_contactGeminiView;
      v6->_contactGeminiView = v14;

      v16 = objc_alloc(MEMORY[0x1E6996B60]);
      v17 = +[CNUIContactsEnvironment currentEnvironment];
      v18 = [v17 geminiManager];
      v19 = [v16 initWithGeminiManager:v18];
      geminiDataSource = v6->_geminiDataSource;
      v6->_geminiDataSource = v19;

      [(CNUIGeminiDataSource *)v6->_geminiDataSource setDelegate:v6];
      [(CNUIGeminiDataSource *)v6->_geminiDataSource setContact:v5];
    }

    objc_storeStrong(&v6->_contact, a3);
    v21 = v6;
  }

  return v6;
}

- (CNStarkContactInfoViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = CNInitializerUnavailableException();
  objc_exception_throw(v9);
}

- (CNStarkContactInfoViewController)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = CNInitializerUnavailableException();
  objc_exception_throw(v6);
}

- (CNStarkContactInfoViewController)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

@end