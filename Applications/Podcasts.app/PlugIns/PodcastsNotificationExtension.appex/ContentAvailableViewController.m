@interface ContentAvailableViewController
- (ContentAvailableViewController)initWithNotification:(id)a3;
- (id)buttonWithTitleTextStyle:(id)a3;
- (id)headerTitle;
- (id)newLabelWithText:(id)a3 textStyle:(id)a4 traits:(unsigned int)a5 numberOfLines:(unint64_t)a6;
- (void)loadContentViews;
- (void)viewDidLoad;
@end

@implementation ContentAvailableViewController

- (ContentAvailableViewController)initWithNotification:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ContentAvailableViewController;
  v5 = [(ContentAvailableViewController *)&v10 initWithNibName:0 bundle:0];
  if (v5 && (v6 = [[EpisodesPropertySourceController alloc] initWithNotification:v4 keepSorted:1], episodesPropertySourceController = v5->_episodesPropertySourceController, v5->_episodesPropertySourceController = v6, episodesPropertySourceController, [(EpisodesPropertySourceController *)v5->_episodesPropertySourceController setDelegate:v5], ![(EpisodesPropertySourceController *)v5->_episodesPropertySourceController countOfEpisodePropertySources]))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ContentAvailableViewController;
  [(ContentAvailableViewController *)&v4 viewDidLoad];
  [(ContentAvailableViewController *)self loadContentViews];
  [(ContentAvailableViewController *)self loadConstraints];
  v3 = [(ContentAvailableViewController *)self episodesPropertySourceController];
  [v3 beginLoadingFromDatabaseInBackground];
}

- (id)headerTitle
{
  v3 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = NSStringFromSelector(a2);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@ must implement -%@", &v8, 0x16u);
  }

  return @"Subclass must implement";
}

- (void)loadContentViews
{
  v10 = [(ContentAvailableViewController *)self view];
  v3 = +[UIColor backgroundColor];
  v4 = [(ContentAvailableViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(ContentAvailableViewController *)self headerTitle];
  v6 = [(ContentAvailableViewController *)self newLabelWithText:v5 textStyle:UIFontTextStyleTitle1 traits:2 numberOfLines:1];
  headerTitleLabel = self->_headerTitleLabel;
  self->_headerTitleLabel = v6;

  LODWORD(v8) = 1148846080;
  [(UILabel *)self->_headerTitleLabel setContentHuggingPriority:0 forAxis:v8];
  [(UILabel *)self->_headerTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(ContentAvailableViewController *)self headerTitleLabel];
  [v10 addSubview:v9];
}

- (id)buttonWithTitleTextStyle:(id)a3
{
  v4 = a3;
  v5 = [UIButton buttonWithType:1];
  v6 = [UIFont mt_preferredFontForTextStyle:v4];

  v7 = [v5 titleLabel];
  [v7 setFont:v6];

  v8 = [v5 titleLabel];
  [v8 setAdjustsFontForContentSizeCategory:1];

  v9 = [v5 titleLabel];
  [v9 setLineBreakMode:4];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setContentHorizontalAlignment:1];
  LODWORD(v10) = 1148846080;
  [v5 setContentHuggingPriority:0 forAxis:v10];
  v11 = [(ContentAvailableViewController *)self view];
  [v11 addSubview:v5];

  return v5;
}

- (id)newLabelWithText:(id)a3 textStyle:(id)a4 traits:(unsigned int)a5 numberOfLines:(unint64_t)a6
{
  v7 = *&a5;
  v10 = a4;
  v11 = a3;
  v12 = [[MTDynamicTypeLabel alloc] initWithTextStyle:v10 symbolicTraits:v7];

  [(MTDynamicTypeLabel *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MTDynamicTypeLabel *)v12 setNumberOfLines:a6];
  LODWORD(v13) = 1148846080;
  [(MTDynamicTypeLabel *)v12 setContentCompressionResistancePriority:1 forAxis:v13];
  [(MTDynamicTypeLabel *)v12 setText:v11];

  v14 = [(ContentAvailableViewController *)self view];
  [v14 addSubview:v12];

  return v12;
}

@end