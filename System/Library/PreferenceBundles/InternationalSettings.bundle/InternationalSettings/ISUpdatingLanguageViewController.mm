@interface ISUpdatingLanguageViewController
+ (id)labelForString:(id)string languageIdentifier:(id)identifier;
- (ISUpdatingLanguageViewController)initWithLabel:(id)label languageIdentifier:(id)identifier;
- (void)viewDidLoad;
@end

@implementation ISUpdatingLanguageViewController

- (ISUpdatingLanguageViewController)initWithLabel:(id)label languageIdentifier:(id)identifier
{
  labelCopy = label;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = ISUpdatingLanguageViewController;
  v9 = [(ISUpdatingLanguageViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_label, label);
    objc_storeStrong(&v10->_languageIdentifier, identifier);
  }

  return v10;
}

+ (id)labelForString:(id)string languageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  stringCopy = string;
  v7 = objc_alloc_init(UILabel);
  v8 = [NSAttributedString alloc];
  v15 = kCTLanguageAttributeName;
  v16 = identifierCopy;
  v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v10 = [v8 initWithString:stringCopy attributes:v9];

  [v7 setAttributedText:v10];
  v11 = +[UIColor blackColor];
  [v7 setBackgroundColor:v11];

  v12 = +[UIColor whiteColor];
  [v7 setTextColor:v12];

  v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];

  [v7 setFont:v13];
  [v7 setNumberOfLines:0];
  [v7 sizeToFit];

  return v7;
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = ISUpdatingLanguageViewController;
  [(ISUpdatingLanguageViewController *)&v25 viewDidLoad];
  v3 = +[UIWindow _applicationKeyWindow];
  [v3 setAutorotates:0];
  [v3 endEditing:1];
  v4 = [UIView alloc];
  [v3 frame];
  v5 = [v4 initWithFrame:?];
  v6 = +[UIColor blackColor];
  [v5 setBackgroundColor:v6];

  v7 = objc_opt_class();
  label = [(ISUpdatingLanguageViewController *)self label];
  languageIdentifier = [(ISUpdatingLanguageViewController *)self languageIdentifier];
  v10 = [v7 labelForString:label languageIdentifier:languageIdentifier];

  [v10 setTextAlignment:1];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addSubview:v10];
  layoutMarginsGuide = [v5 layoutMarginsGuide];
  leadingAnchor = [v10 leadingAnchor];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v14 setActive:1];

  trailingAnchor = [v10 trailingAnchor];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v17 setActive:1];

  centerXAnchor = [v10 centerXAnchor];
  centerXAnchor2 = [layoutMarginsGuide centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v20 setActive:1];

  centerYAnchor = [v10 centerYAnchor];
  centerYAnchor2 = [layoutMarginsGuide centerYAnchor];
  v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v23 setActive:1];

  view = [(ISUpdatingLanguageViewController *)self view];
  [view addSubview:v5];
}

@end