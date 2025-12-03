@interface CNStarkContactInfoViewController
+ (CNKeyDescriptor)descriptorForRequiredKeys;
- (BOOL)shouldShowGemini;
- (CNStarkContactInfoViewController)init;
- (CNStarkContactInfoViewController)initWithCoder:(id)coder;
- (CNStarkContactInfoViewController)initWithContact:(id)contact;
- (CNStarkContactInfoViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)geminiDataSourceDidUpdate:(id)update;
- (void)resetLayoutConstraints;
- (void)setupLayoutConstraints;
- (void)setupViews;
- (void)traitCollectionDidChange:(id)change;
- (void)updateViewConstraints;
- (void)updateViews;
- (void)viewDidLoad;
@end

@implementation CNStarkContactInfoViewController

- (BOOL)shouldShowGemini
{
  geminiResult = [(CNStarkContactInfoViewController *)self geminiResult];
  contact = [(CNStarkContactInfoViewController *)self contact];
  v5 = [CNContactContentDisplayViewController shouldShowGeminiForResult:geminiResult contact:contact];

  return v5;
}

- (void)updateViewConstraints
{
  v5.receiver = self;
  v5.super_class = CNStarkContactInfoViewController;
  [(CNStarkContactInfoViewController *)&v5 updateViewConstraints];
  v3 = *MEMORY[0x1E6996530];
  layoutConstraints = [(CNStarkContactInfoViewController *)self layoutConstraints];
  LODWORD(v3) = (*(v3 + 16))(v3, layoutConstraints);

  if (v3)
  {
    [(CNStarkContactInfoViewController *)self setupLayoutConstraints];
  }
}

- (void)setupLayoutConstraints
{
  v26[4] = *MEMORY[0x1E69E9840];
  view = [(CNStarkContactInfoViewController *)self view];
  leadingAnchor = [view leadingAnchor];
  stackView = [(CNStarkContactInfoViewController *)self stackView];
  leadingAnchor2 = [stackView leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[0] = v21;
  view2 = [(CNStarkContactInfoViewController *)self view];
  topAnchor = [view2 topAnchor];
  stackView2 = [(CNStarkContactInfoViewController *)self stackView];
  topAnchor2 = [stackView2 topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[1] = v16;
  view3 = [(CNStarkContactInfoViewController *)self view];
  trailingAnchor = [view3 trailingAnchor];
  stackView3 = [(CNStarkContactInfoViewController *)self stackView];
  trailingAnchor2 = [stackView3 trailingAnchor];
  v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[2] = v6;
  view4 = [(CNStarkContactInfoViewController *)self view];
  bottomAnchor = [view4 bottomAnchor];
  stackView4 = [(CNStarkContactInfoViewController *)self stackView];
  bottomAnchor2 = [stackView4 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[3] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];

  [(CNStarkContactInfoViewController *)self setLayoutConstraints:v14];
  view5 = [(CNStarkContactInfoViewController *)self view];
  layoutConstraints = [(CNStarkContactInfoViewController *)self layoutConstraints];
  [view5 addConstraints:layoutConstraints];
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
  view = [(CNStarkContactInfoViewController *)self view];
  layoutConstraints = [(CNStarkContactInfoViewController *)self layoutConstraints];
  [view removeConstraints:layoutConstraints];

  [(CNStarkContactInfoViewController *)self setLayoutConstraints:0];
  view2 = [(CNStarkContactInfoViewController *)self view];
  [view2 setNeedsUpdateConstraints];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CNStarkContactInfoViewController;
  [(CNStarkContactInfoViewController *)&v4 viewDidLoad];
  [(CNStarkContactInfoViewController *)self setupViews];
  [(CNStarkContactInfoViewController *)self updateViews];
  view = [(CNStarkContactInfoViewController *)self view];
  [view setAccessibilityIdentifier:@"CNStarkContactInfoView"];
}

- (void)setupViews
{
  v48[2] = *MEMORY[0x1E69E9840];
  primaryLabel = [(CNStarkContactInfoViewController *)self primaryLabel];
  [primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  primaryLabel2 = [(CNStarkContactInfoViewController *)self primaryLabel];
  [primaryLabel2 setNumberOfLines:1];

  primaryLabel3 = [(CNStarkContactInfoViewController *)self primaryLabel];
  [primaryLabel3 setAdjustsFontForContentSizeCategory:1];

  v6 = +[CNUIFontRepository carPlayContactInfoViewPrimaryLabelFont];
  primaryLabel4 = [(CNStarkContactInfoViewController *)self primaryLabel];
  [primaryLabel4 setFont:v6];

  v8 = +[CNUIColorRepository carPlayContactInfoViewPrimaryLabelTextColor];
  primaryLabel5 = [(CNStarkContactInfoViewController *)self primaryLabel];
  [primaryLabel5 setTextColor:v8];

  primaryLabel6 = [(CNStarkContactInfoViewController *)self primaryLabel];
  [primaryLabel6 setIsAccessibilityElement:0];

  primaryLabel7 = [(CNStarkContactInfoViewController *)self primaryLabel];
  [primaryLabel7 setTextAlignment:4];

  primaryLabel8 = [(CNStarkContactInfoViewController *)self primaryLabel];
  [primaryLabel8 setAccessibilityIdentifier:@"CNStarkContactInfoViewPrimaryLabel"];

  secondaryLabel = [(CNStarkContactInfoViewController *)self secondaryLabel];
  [secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  secondaryLabel2 = [(CNStarkContactInfoViewController *)self secondaryLabel];
  [secondaryLabel2 setNumberOfLines:1];

  secondaryLabel3 = [(CNStarkContactInfoViewController *)self secondaryLabel];
  [secondaryLabel3 setAdjustsFontForContentSizeCategory:1];

  v16 = +[CNUIFontRepository carPlayContactInfoViewSecondaryLabelFont];
  secondaryLabel4 = [(CNStarkContactInfoViewController *)self secondaryLabel];
  [secondaryLabel4 setFont:v16];

  v18 = +[CNUIColorRepository carPlayContactInfoViewSecondaryLabelTextColor];
  secondaryLabel5 = [(CNStarkContactInfoViewController *)self secondaryLabel];
  [secondaryLabel5 setTextColor:v18];

  secondaryLabel6 = [(CNStarkContactInfoViewController *)self secondaryLabel];
  [secondaryLabel6 setIsAccessibilityElement:0];

  secondaryLabel7 = [(CNStarkContactInfoViewController *)self secondaryLabel];
  [secondaryLabel7 setTextAlignment:4];

  secondaryLabel8 = [(CNStarkContactInfoViewController *)self secondaryLabel];
  [secondaryLabel8 setAccessibilityIdentifier:@"CNStarkContactInfoViewSecondaryLabel"];

  stackView = [(CNStarkContactInfoViewController *)self stackView];
  [stackView setTranslatesAutoresizingMaskIntoConstraints:0];

  stackView2 = [(CNStarkContactInfoViewController *)self stackView];
  [stackView2 setAlignment:1];

  stackView3 = [(CNStarkContactInfoViewController *)self stackView];
  [stackView3 setDistribution:3];

  stackView4 = [(CNStarkContactInfoViewController *)self stackView];
  [stackView4 setAxis:1];

  stackView5 = [(CNStarkContactInfoViewController *)self stackView];
  [stackView5 setBaselineRelativeArrangement:1];

  stackView6 = [(CNStarkContactInfoViewController *)self stackView];
  [stackView6 setSpacing:20.0];

  stackView7 = [(CNStarkContactInfoViewController *)self stackView];
  primaryLabel9 = [(CNStarkContactInfoViewController *)self primaryLabel];
  [stackView7 addArrangedSubview:primaryLabel9];

  stackView8 = [(CNStarkContactInfoViewController *)self stackView];
  secondaryLabel9 = [(CNStarkContactInfoViewController *)self secondaryLabel];
  [stackView8 addArrangedSubview:secondaryLabel9];

  contactGeminiView = [(CNStarkContactInfoViewController *)self contactGeminiView];

  if (contactGeminiView)
  {
    contactGeminiView2 = [(CNStarkContactInfoViewController *)self contactGeminiView];
    [contactGeminiView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    contactGeminiView3 = [(CNStarkContactInfoViewController *)self contactGeminiView];
    [contactGeminiView3 setUserInteractionEnabled:0];

    contactGeminiView4 = [(CNStarkContactInfoViewController *)self contactGeminiView];
    [contactGeminiView4 setAllowsPickerActions:0];

    geminiResult = [(CNStarkContactInfoViewController *)self geminiResult];
    contactGeminiView5 = [(CNStarkContactInfoViewController *)self contactGeminiView];
    [contactGeminiView5 setGeminiResult:geminiResult];

    v47[0] = *MEMORY[0x1E69DB648];
    v39 = +[CNUIFontRepository carPlayContactInfoViewSecondaryLabelFont];
    v48[0] = v39;
    v47[1] = *MEMORY[0x1E69DB650];
    v40 = +[CNUIColorRepository carPlayContactInfoViewSecondaryLabelTextColor];
    v48[1] = v40;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
    contactGeminiView6 = [(CNStarkContactInfoViewController *)self contactGeminiView];
    [contactGeminiView6 setAb_textAttributes:v41];

    if ([(CNStarkContactInfoViewController *)self shouldShowGemini])
    {
      stackView9 = [(CNStarkContactInfoViewController *)self stackView];
      contactGeminiView7 = [(CNStarkContactInfoViewController *)self contactGeminiView];
      [stackView9 addArrangedSubview:contactGeminiView7];
    }
  }

  view = [(CNStarkContactInfoViewController *)self view];
  stackView10 = [(CNStarkContactInfoViewController *)self stackView];
  [view addSubview:stackView10];
}

- (void)updateViews
{
  v3 = MEMORY[0x1E695CD80];
  contact = [(CNStarkContactInfoViewController *)self contact];
  v22 = [v3 stringFromContact:contact style:0];

  contact2 = [(CNStarkContactInfoViewController *)self contact];
  organizationName = [contact2 organizationName];

  v7 = [v22 isEqualToString:organizationName];
  primaryLabel = [(CNStarkContactInfoViewController *)self primaryLabel];
  v9 = primaryLabel;
  if (v7)
  {
    [primaryLabel setText:organizationName];

    primaryLabel2 = [(CNStarkContactInfoViewController *)self primaryLabel];
    [primaryLabel2 setAccessibilityValue:@"CNStarkContactCompanyLabel"];

    secondaryLabel = [(CNStarkContactInfoViewController *)self secondaryLabel];
    [secondaryLabel setText:0];

    secondaryLabel2 = [(CNStarkContactInfoViewController *)self secondaryLabel];
    v13 = secondaryLabel2;
    v14 = 0;
  }

  else
  {
    [primaryLabel setText:v22];

    primaryLabel3 = [(CNStarkContactInfoViewController *)self primaryLabel];
    [primaryLabel3 setAccessibilityValue:@"CNStarkContactNameLabel"];

    secondaryLabel3 = [(CNStarkContactInfoViewController *)self secondaryLabel];
    [secondaryLabel3 setText:organizationName];

    secondaryLabel2 = [(CNStarkContactInfoViewController *)self secondaryLabel];
    v13 = secondaryLabel2;
    v14 = @"CNStarkContactCompanyLabel";
  }

  [secondaryLabel2 setAccessibilityValue:v14];

  secondaryLabel4 = [(CNStarkContactInfoViewController *)self secondaryLabel];
  text = [secondaryLabel4 text];
  v19 = [text length];

  if (v19)
  {
    stackView = [(CNStarkContactInfoViewController *)self stackView];
    secondaryLabel5 = [(CNStarkContactInfoViewController *)self secondaryLabel];
    [stackView insertArrangedSubview:secondaryLabel5 atIndex:1];
  }

  else
  {
    stackView = [(CNStarkContactInfoViewController *)self secondaryLabel];
    [stackView removeFromSuperview];
  }
}

- (void)geminiDataSourceDidUpdate:(id)update
{
  geminiResult = [update geminiResult];
  [(CNStarkContactInfoViewController *)self setGeminiResult:geminiResult];
  contactGeminiView = [(CNStarkContactInfoViewController *)self contactGeminiView];
  [contactGeminiView setGeminiResult:geminiResult];

  if ([(CNStarkContactInfoViewController *)self shouldShowGemini])
  {
    stackView = [(CNStarkContactInfoViewController *)self stackView];
    contactGeminiView2 = [(CNStarkContactInfoViewController *)self contactGeminiView];
    [stackView addArrangedSubview:contactGeminiView2];
  }

  else
  {
    stackView = [(CNStarkContactInfoViewController *)self contactGeminiView];
    [stackView removeFromSuperview];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = CNStarkContactInfoViewController;
  [(CNStarkContactInfoViewController *)&v8 traitCollectionDidChange:change];
  v4 = +[CNUIFontRepository carPlayContactInfoViewPrimaryLabelFont];
  primaryLabel = [(CNStarkContactInfoViewController *)self primaryLabel];
  [primaryLabel setFont:v4];

  v6 = +[CNUIFontRepository carPlayContactInfoViewSecondaryLabelFont];
  secondaryLabel = [(CNStarkContactInfoViewController *)self secondaryLabel];
  [secondaryLabel setFont:v6];

  [(CNStarkContactInfoViewController *)self resetLayoutConstraints];
}

- (CNStarkContactInfoViewController)initWithContact:(id)contact
{
  contactCopy = contact;
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
      geminiManager = [v17 geminiManager];
      v19 = [v16 initWithGeminiManager:geminiManager];
      geminiDataSource = v6->_geminiDataSource;
      v6->_geminiDataSource = v19;

      [(CNUIGeminiDataSource *)v6->_geminiDataSource setDelegate:v6];
      [(CNUIGeminiDataSource *)v6->_geminiDataSource setContact:contactCopy];
    }

    objc_storeStrong(&v6->_contact, contact);
    v21 = v6;
  }

  return v6;
}

- (CNStarkContactInfoViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  selfCopy = self;
  v9 = CNInitializerUnavailableException();
  objc_exception_throw(v9);
}

- (CNStarkContactInfoViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v6 = CNInitializerUnavailableException();
  objc_exception_throw(v6);
}

- (CNStarkContactInfoViewController)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

@end