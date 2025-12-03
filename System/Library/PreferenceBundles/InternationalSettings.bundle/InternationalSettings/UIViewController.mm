@interface UIViewController
- (void)showUpdatingLanguageViewWithLabel:(id)label languageIdentifier:(id)identifier completionBlock:(id)block;
- (void)showUpdatingLanguageViewWithLocalizationStringKey:(id)key languageIdentifier:(id)identifier completionBlock:(id)block;
@end

@implementation UIViewController

- (void)showUpdatingLanguageViewWithLocalizationStringKey:(id)key languageIdentifier:(id)identifier completionBlock:(id)block
{
  blockCopy = block;
  identifierCopy = identifier;
  keyCopy = key;
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  localizations = [v11 localizations];
  v17 = identifierCopy;
  v13 = [NSArray arrayWithObjects:&v17 count:1];
  v14 = [NSBundle preferredLocalizationsFromArray:localizations forPreferences:v13];
  firstObject = [v14 firstObject];

  v16 = [v11 localizedStringForKey:keyCopy value:keyCopy table:@"InternationalSettings" localization:firstObject];

  [(UIViewController *)self showUpdatingLanguageViewWithLabel:v16 languageIdentifier:identifierCopy completionBlock:blockCopy];
}

- (void)showUpdatingLanguageViewWithLabel:(id)label languageIdentifier:(id)identifier completionBlock:(id)block
{
  blockCopy = block;
  identifierCopy = identifier;
  labelCopy = label;
  v11 = [[ISUpdatingLanguageViewController alloc] initWithLabel:labelCopy languageIdentifier:identifierCopy];

  [(ISUpdatingLanguageViewController *)v11 setModalTransitionStyle:2];
  [(ISUpdatingLanguageViewController *)v11 setModalPresentationStyle:0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_C5EC;
  v13[3] = &unk_34F10;
  v14 = blockCopy;
  v12 = blockCopy;
  [(UIViewController *)self presentViewController:v11 animated:1 completion:v13];
}

@end