@interface ContentAvailableViewController
- (ContentAvailableViewController)initWithNotification:(id)notification;
- (id)buttonWithTitleTextStyle:(id)style;
- (id)headerTitle;
- (id)newLabelWithText:(id)text textStyle:(id)style traits:(unsigned int)traits numberOfLines:(unint64_t)lines;
- (void)loadContentViews;
- (void)viewDidLoad;
@end

@implementation ContentAvailableViewController

- (ContentAvailableViewController)initWithNotification:(id)notification
{
  notificationCopy = notification;
  v10.receiver = self;
  v10.super_class = ContentAvailableViewController;
  v5 = [(ContentAvailableViewController *)&v10 initWithNibName:0 bundle:0];
  if (v5 && (v6 = [[EpisodesPropertySourceController alloc] initWithNotification:notificationCopy keepSorted:1], episodesPropertySourceController = v5->_episodesPropertySourceController, v5->_episodesPropertySourceController = v6, episodesPropertySourceController, [(EpisodesPropertySourceController *)v5->_episodesPropertySourceController setDelegate:v5], ![(EpisodesPropertySourceController *)v5->_episodesPropertySourceController countOfEpisodePropertySources]))
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
  episodesPropertySourceController = [(ContentAvailableViewController *)self episodesPropertySourceController];
  [episodesPropertySourceController beginLoadingFromDatabaseInBackground];
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
  view = [(ContentAvailableViewController *)self view];
  v3 = +[UIColor backgroundColor];
  view2 = [(ContentAvailableViewController *)self view];
  [view2 setBackgroundColor:v3];

  headerTitle = [(ContentAvailableViewController *)self headerTitle];
  v6 = [(ContentAvailableViewController *)self newLabelWithText:headerTitle textStyle:UIFontTextStyleTitle1 traits:2 numberOfLines:1];
  headerTitleLabel = self->_headerTitleLabel;
  self->_headerTitleLabel = v6;

  LODWORD(v8) = 1148846080;
  [(UILabel *)self->_headerTitleLabel setContentHuggingPriority:0 forAxis:v8];
  [(UILabel *)self->_headerTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  headerTitleLabel = [(ContentAvailableViewController *)self headerTitleLabel];
  [view addSubview:headerTitleLabel];
}

- (id)buttonWithTitleTextStyle:(id)style
{
  styleCopy = style;
  v5 = [UIButton buttonWithType:1];
  v6 = [UIFont mt_preferredFontForTextStyle:styleCopy];

  titleLabel = [v5 titleLabel];
  [titleLabel setFont:v6];

  titleLabel2 = [v5 titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  titleLabel3 = [v5 titleLabel];
  [titleLabel3 setLineBreakMode:4];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setContentHorizontalAlignment:1];
  LODWORD(v10) = 1148846080;
  [v5 setContentHuggingPriority:0 forAxis:v10];
  view = [(ContentAvailableViewController *)self view];
  [view addSubview:v5];

  return v5;
}

- (id)newLabelWithText:(id)text textStyle:(id)style traits:(unsigned int)traits numberOfLines:(unint64_t)lines
{
  v7 = *&traits;
  styleCopy = style;
  textCopy = text;
  v12 = [[MTDynamicTypeLabel alloc] initWithTextStyle:styleCopy symbolicTraits:v7];

  [(MTDynamicTypeLabel *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MTDynamicTypeLabel *)v12 setNumberOfLines:lines];
  LODWORD(v13) = 1148846080;
  [(MTDynamicTypeLabel *)v12 setContentCompressionResistancePriority:1 forAxis:v13];
  [(MTDynamicTypeLabel *)v12 setText:textCopy];

  view = [(ContentAvailableViewController *)self view];
  [view addSubview:v12];

  return v12;
}

@end