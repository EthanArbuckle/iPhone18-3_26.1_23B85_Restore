@interface LanguageViewController
- (LanguageViewController)init;
- (LanguageViewControllerDelegate)delegate;
- (UITableView)languageTableView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)loadView;
- (void)readSupportedLanguages;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation LanguageViewController

- (LanguageViewController)init
{
  v6.receiver = self;
  v6.super_class = LanguageViewController;
  v2 = [(LanguageViewController *)&v6 initWithTitle:&stru_100028E90 detailText:0 symbolName:@"globe" adoptTableViewScrollView:1];
  v3 = +[NSLocale currentLocale];
  systemLocale = v2->_systemLocale;
  v2->_systemLocale = v3;

  return v2;
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = LanguageViewController;
  [(LanguageViewController *)&v3 loadView];
  [(LanguageViewController *)self readSupportedLanguages];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = LanguageViewController;
  [(LanguageViewController *)&v5 viewDidLoad];
  v3 = [(LanguageViewController *)self languageTableView];
  [(LanguageViewController *)self setTableView:v3];

  v4 = [(LanguageViewController *)self view];
  [v4 layoutIfNeeded];
}

- (UITableView)languageTableView
{
  languageTableView = self->_languageTableView;
  if (!languageTableView)
  {
    v4 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_languageTableView;
    self->_languageTableView = v4;

    [(UITableView *)self->_languageTableView registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];
    [(UITableView *)self->_languageTableView setDirectionalLayoutMargins:1.0, 1.0, 1.0, 1.0];
    [(UITableView *)self->_languageTableView setDelegate:self];
    [(UITableView *)self->_languageTableView setDataSource:self];
    [(UITableView *)self->_languageTableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITableView *)self->_languageTableView _setDrawsSeparatorAtTopOfSections:1];
    [(UITableView *)self->_languageTableView setEstimatedRowHeight:60.0];
    v6 = +[UIColor systemBackgroundColor];
    [(UITableView *)self->_languageTableView setBackgroundColor:v6];

    languageTableView = self->_languageTableView;
  }

  return languageTableView;
}

- (void)readSupportedLanguages
{
  v3 = +[NSLocale systemLanguages];
  [(LanguageViewController *)self setLanguageCodes:v3];

  v4 = objc_opt_new();
  v5 = [(LanguageViewController *)self languageCodes];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B48C;
  v8[3] = &unk_100028A60;
  v9 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v8];

  v7 = [v6 copy];
  [(LanguageViewController *)self setLanguageStrings:v7];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(LanguageViewController *)self languageCodes:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:v6];
  [v7 setAccessoryType:1];
  [v7 setMinimumHeight:60.0];
  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v8 pointSize];
  v9 = [UIFont boldSystemFontOfSize:?];
  v10 = [v7 titleLabel];
  [v10 setFont:v9];

  v11 = [(LanguageViewController *)self languageCodes];
  v12 = [v6 row];

  v13 = [v11 objectAtIndex:v12];

  v14 = [(LanguageViewController *)self languageStrings];
  v15 = [v14 objectForKey:v13];

  v16 = sub_10000B190(v15, v13);
  v17 = [(LanguageViewController *)self systemLocale];
  v18 = [v17 languageCode];

  LODWORD(v17) = [v18 isEqualToString:v13];
  v19 = [v7 titleLabel];
  [v19 setAttributedText:v16];

  if (v17)
  {
    v20 = 3;
  }

  else
  {
    v20 = 0;
  }

  [v7 setAccessoryType:v20];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = [(LanguageViewController *)self languageCodes];
  v8 = [v6 row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  v10 = sub_100012608();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136446466;
    v14 = "[LanguageViewController tableView:didSelectRowAtIndexPath:]";
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Tapped language %{public}@", &v13, 0x16u);
  }

  v11 = [(LanguageViewController *)self delegate];

  if (v11)
  {
    v12 = [(LanguageViewController *)self delegate];
    [v12 languageViewController:self didChooseLanguageCodeWithRegion:v9];
  }
}

- (LanguageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end