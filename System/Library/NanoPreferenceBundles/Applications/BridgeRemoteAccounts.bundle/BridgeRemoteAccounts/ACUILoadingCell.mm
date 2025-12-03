@interface ACUILoadingCell
- (ACUILoadingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIActivityIndicatorView)spinner;
- (void)didMoveToWindow;
@end

@implementation ACUILoadingCell

- (ACUILoadingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  selfCopy = self;
  v14 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, identifier);
  v4 = selfCopy;
  selfCopy = 0;
  v11.receiver = v4;
  v11.super_class = ACUILoadingCell;
  selfCopy = [(ACUILoadingCell *)&v11 initWithStyle:styleCopy reuseIdentifier:location];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v10 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    objc_storeWeak(&selfCopy->_spinner, v10);
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [(NSBundle *)v9 localizedStringForKey:@"LOADING" value:&stru_1C810 table:@"Localizable"];
    textLabel = [(ACUILoadingCell *)selfCopy textLabel];
    [textLabel setText:v8];

    [(ACUILoadingCell *)selfCopy setAccessoryView:v10];
    objc_storeStrong(&v10, 0);
  }

  v6 = selfCopy;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)didMoveToWindow
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = ACUILoadingCell;
  [(ACUILoadingCell *)&v5 didMoveToWindow];
  window = [(ACUILoadingCell *)selfCopy window];

  if (window)
  {
    spinner = [(ACUILoadingCell *)selfCopy spinner];
    [(UIActivityIndicatorView *)spinner startAnimating];
  }

  else
  {
    spinner2 = [(ACUILoadingCell *)selfCopy spinner];
    [(UIActivityIndicatorView *)spinner2 stopAnimating];
  }
}

- (UIActivityIndicatorView)spinner
{
  WeakRetained = objc_loadWeakRetained(&self->_spinner);

  return WeakRetained;
}

@end