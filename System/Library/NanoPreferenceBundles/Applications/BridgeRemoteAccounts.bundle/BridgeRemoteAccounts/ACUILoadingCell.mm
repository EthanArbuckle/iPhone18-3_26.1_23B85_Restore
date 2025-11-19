@interface ACUILoadingCell
- (ACUILoadingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIActivityIndicatorView)spinner;
- (void)didMoveToWindow;
@end

@implementation ACUILoadingCell

- (ACUILoadingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v15;
  v15 = 0;
  v11.receiver = v4;
  v11.super_class = ACUILoadingCell;
  v15 = [(ACUILoadingCell *)&v11 initWithStyle:v13 reuseIdentifier:location];
  objc_storeStrong(&v15, v15);
  if (v15)
  {
    v10 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    objc_storeWeak(&v15->_spinner, v10);
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [(NSBundle *)v9 localizedStringForKey:@"LOADING" value:&stru_1C810 table:@"Localizable"];
    v7 = [(ACUILoadingCell *)v15 textLabel];
    [v7 setText:v8];

    [(ACUILoadingCell *)v15 setAccessoryView:v10];
    objc_storeStrong(&v10, 0);
  }

  v6 = v15;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v15, 0);
  return v6;
}

- (void)didMoveToWindow
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = ACUILoadingCell;
  [(ACUILoadingCell *)&v5 didMoveToWindow];
  v4 = [(ACUILoadingCell *)v7 window];

  if (v4)
  {
    v3 = [(ACUILoadingCell *)v7 spinner];
    [(UIActivityIndicatorView *)v3 startAnimating];
  }

  else
  {
    v2 = [(ACUILoadingCell *)v7 spinner];
    [(UIActivityIndicatorView *)v2 stopAnimating];
  }
}

- (UIActivityIndicatorView)spinner
{
  WeakRetained = objc_loadWeakRetained(&self->_spinner);

  return WeakRetained;
}

@end