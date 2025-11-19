@interface ISUpdatingLanguageViewController
+ (id)labelForString:(id)a3 languageIdentifier:(id)a4;
- (ISUpdatingLanguageViewController)initWithLabel:(id)a3 languageIdentifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation ISUpdatingLanguageViewController

- (ISUpdatingLanguageViewController)initWithLabel:(id)a3 languageIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ISUpdatingLanguageViewController;
  v9 = [(ISUpdatingLanguageViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_label, a3);
    objc_storeStrong(&v10->_languageIdentifier, a4);
  }

  return v10;
}

+ (id)labelForString:(id)a3 languageIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(UILabel);
  v8 = [NSAttributedString alloc];
  v15 = kCTLanguageAttributeName;
  v16 = v5;
  v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v10 = [v8 initWithString:v6 attributes:v9];

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
  v8 = [(ISUpdatingLanguageViewController *)self label];
  v9 = [(ISUpdatingLanguageViewController *)self languageIdentifier];
  v10 = [v7 labelForString:v8 languageIdentifier:v9];

  [v10 setTextAlignment:1];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addSubview:v10];
  v11 = [v5 layoutMarginsGuide];
  v12 = [v10 leadingAnchor];
  v13 = [v11 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [v10 trailingAnchor];
  v16 = [v11 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [v10 centerXAnchor];
  v19 = [v11 centerXAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [v10 centerYAnchor];
  v22 = [v11 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v24 = [(ISUpdatingLanguageViewController *)self view];
  [v24 addSubview:v5];
}

@end