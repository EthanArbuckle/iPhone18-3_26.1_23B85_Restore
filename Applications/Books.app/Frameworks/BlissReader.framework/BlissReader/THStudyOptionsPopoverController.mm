@interface THStudyOptionsPopoverController
- (THStudyOptionsPopoverController)initWithOptions:(id)options;
- (UIImage)checkImage;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)contentSizeCategoryDidChange;
- (void)dealloc;
- (void)doneButtonPressed:(id)pressed;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)p_updateColors;
- (void)setTheme:(id)theme;
- (void)shuffleSwitchChanged:(id)changed;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation THStudyOptionsPopoverController

- (THStudyOptionsPopoverController)initWithOptions:(id)options
{
  if (!options)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = THBundle();
  v13.receiver = self;
  v13.super_class = THStudyOptionsPopoverController;
  v6 = [(THStudyOptionsPopoverController *)&v13 initWithNibName:@"THiOSStudyOptions" bundle:v5];
  if (v6)
  {
    v6->_options = options;
    -[THStudyOptionsPopoverController setTitle:](v6, "setTitle:", [THBundle() localizedStringForKey:@"Study Options" value:&stru_471858 table:0]);
    if (+[UIFont bc_accessibilityFontSizesEnabled])
    {
      v7 = 360.0;
    }

    else
    {
      v7 = 320.0;
    }

    v8 = +[UIFont bc_accessibilityFontSizesEnabled];
    v9 = 400.0;
    if (!v8)
    {
      v9 = 146.0;
    }

    [(THStudyOptionsPopoverController *)v6 setPreferredContentSize:v7, v9];
    [-[THStudyOptionsPopoverController navigationItem](v6 "navigationItem")];
    [(THStudyOptionsPopoverController *)v6 preferredContentSize];
    [objc_msgSend(-[THStudyOptionsPopoverController presentingViewController](v6 "presentingViewController")];
  }

  return v6;
}

- (void)dealloc
{
  self->_tableView = 0;

  self->_options = 0;
  self->_theme = 0;

  self->_checkImage = 0;
  v3.receiver = self;
  v3.super_class = THStudyOptionsPopoverController;
  [(THStudyOptionsPopoverController *)&v3 dealloc];
}

- (UIImage)checkImage
{
  result = self->_checkImage;
  if (!result)
  {
    result = [[UIImage systemImageNamed:?], "imageWithRenderingMode:", 2];
    self->_checkImage = result;
  }

  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = THStudyOptionsPopoverController;
  [(THStudyOptionsPopoverController *)&v4 viewWillAppear:appear];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"contentSizeCategoryDidChange" object:UIContentSizeCategoryDidChangeNotification, 0];
  [(THStudyOptionsPopoverController *)self p_updateColors];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = THStudyOptionsPopoverController;
  [(THStudyOptionsPopoverController *)&v4 viewDidDisappear:disappear];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:UIContentSizeCategoryDidChangeNotification, 0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = THStudyOptionsPopoverController;
  [(THStudyOptionsPopoverController *)&v3 viewDidLoad];
  [(UITableView *)[(THStudyOptionsPopoverController *)self tableView] registerClass:objc_opt_class() forCellReuseIdentifier:@"StudyOptionsTableCell"];
  [(UITableView *)[(THStudyOptionsPopoverController *)self tableView] setSectionFooterHeight:0.0];
  [(UITableView *)[(THStudyOptionsPopoverController *)self tableView] setTableFooterView:0];
  [(UITableView *)[(THStudyOptionsPopoverController *)self tableView] setSeparatorStyle:1];
  [(THStudyOptionsPopoverController *)self contentSizeCategoryDidChange];
}

- (void)contentSizeCategoryDidChange
{
  [(UITableView *)[(THStudyOptionsPopoverController *)self tableView] setRowHeight:42.0];
  [(UITableView *)[(THStudyOptionsPopoverController *)self tableView] setEstimatedRowHeight:42.0];
  if (+[UIFont bc_accessibilityFontSizesEnabled])
  {
    tableView = [(THStudyOptionsPopoverController *)self tableView];

    [(UITableView *)tableView setRowHeight:UITableViewAutomaticDimension];
  }
}

- (void)p_updateColors
{
  [-[THStudyOptionsPopoverController viewIfLoaded](self "viewIfLoaded")];
  [objc_msgSend(-[THStudyOptionsPopoverController navigationController](self "navigationController")];
  tableView = self->_tableView;

  [(UITableView *)tableView reloadData];
}

- (void)setTheme:(id)theme
{
  if (([(IMThemePage *)self->_theme isEqual:?]& 1) == 0)
  {

    self->_theme = theme;

    [(THStudyOptionsPopoverController *)self p_updateColors];
  }
}

- (void)shuffleSwitchChanged:(id)changed
{
  isOn = [changed isOn];
  options = self->_options;

  [(THStudyOptions *)options setShuffle:isOn];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = [view dequeueReusableCellWithIdentifier:@"StudyOptionsTableCell" forIndexPath:?];
  [v6 setAccessoryView:0];
  objc_opt_class();
  [v6 contentConfiguration];
  v7 = TSUDynamicCast();
  if (!v7)
  {
    v7 = +[UIListContentConfiguration cellConfiguration];
  }

  imageProperties = [(UIListContentConfiguration *)v7 imageProperties];
  [(UIListContentConfiguration *)v7 setImage:[(THStudyOptionsPopoverController *)self checkImage]];
  [(UIListContentImageProperties *)imageProperties setTintColor:[(THStudyOptionsPopoverController *)self hiddenColor]];
  if (![path section])
  {
    [v6 setSelectionStyle:3];
    v10 = [path row];
    v11 = THBundle();
    if (v10)
    {
      -[UIListContentConfiguration setText:](v7, "setText:", [v11 localizedStringForKey:@"Glossary Terms" value:&stru_471858 table:0]);
      [v6 setAccessoryType:0];
      if (![(THStudyOptions *)self->_options showVocabulary])
      {
        goto LABEL_9;
      }
    }

    else
    {
      -[UIListContentConfiguration setText:](v7, "setText:", [v11 localizedStringForKey:@"Highlights and Notes" value:&stru_471858 table:0]);
      [v6 setAccessoryType:4];
      if (![(THStudyOptions *)self->_options showAnnotations])
      {
        goto LABEL_9;
      }
    }

    [(UIListContentImageProperties *)imageProperties setTintColor:[(IMThemePage *)[(THStudyOptionsPopoverController *)self theme] primaryTextColor]];
    goto LABEL_9;
  }

  if ([path section] == &dword_0 + 1)
  {
    -[UIListContentConfiguration setText:](v7, "setText:", [THBundle() localizedStringForKey:@"Shuffle" value:&stru_471858 table:0]);
    [v6 setSelectionStyle:0];
    v9 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v9 setOn:{-[THStudyOptions shuffle](self->_options, "shuffle")}];
    [v9 addTarget:self action:"shuffleSwitchChanged:" forControlEvents:4096];
    [v6 setAccessoryView:v9];
  }

LABEL_9:
  [v6 setContentConfiguration:v7];
  return v6;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  result = 0.001;
  if (section == 1)
  {
    return 20.0;
  }

  return result;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  [(THStudyOptionsPopoverController *)self tableView:view heightForHeaderInSection:section];
  if (v5 <= 0.0)
  {
    return 0;
  }

  v6 = v5;
  v7 = [UIView alloc];
  [-[THStudyOptionsPopoverController view](self "view")];
  v8 = [v7 initWithFrame:{0.0, 0.0, CGRectGetWidth(v11), v6}];
  groupedBackgroundColor = [(IMThemePage *)self->_theme groupedBackgroundColor];
  [v8 setBackgroundColor:groupedBackgroundColor];
  [(UITableView *)[(THStudyOptionsPopoverController *)self tableView] setBackgroundColor:groupedBackgroundColor];
  return v8;
}

- (void)doneButtonPressed:(id)pressed
{
  delegate = [(THStudyOptionsPopoverController *)self delegate];

  [(THStudyOptionsDelegate *)delegate dismissStudyOptionsMenu:1 completion:0];
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  v8 = [[THHighlightTableViewController alloc] initWithOptions:self->_options];
  [(THHighlightTableViewController *)v8 setOverrideUserInterfaceStyle:[(THStudyOptionsPopoverController *)self overrideUserInterfaceStyle]];
  [(THHighlightTableViewController *)v8 setTheme:[(THStudyOptionsPopoverController *)self theme]];
  if (+[UIFont bc_accessibilityFontSizesEnabled])
  {
    v5 = 360.0;
  }

  else
  {
    v5 = 320.0;
  }

  if (+[UIFont bc_accessibilityFontSizesEnabled])
  {
    v6 = 400.0;
  }

  else
  {
    v6 = 146.0;
  }

  [objc_msgSend(-[THStudyOptionsPopoverController presentingViewController](self "presentingViewController")];
  [-[THStudyOptionsPopoverController navigationController](self "navigationController")];
  if ([-[THStudyOptionsPopoverController presentingViewController](self "presentingViewController")] && (objc_msgSend(objc_msgSend(-[THStudyOptionsPopoverController presentingViewController](self, "presentingViewController"), "presentedViewController"), "_isInPopoverPresentation") & 1) == 0)
  {
    v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneButtonPressed:"];
    [-[THHighlightTableViewController navigationItem](v8 "navigationItem")];
  }
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  if (![path section])
  {
    v6 = [path row];
    options = self->_options;
    if (v6)
    {
      [(THStudyOptions *)self->_options setShowVocabulary:[(THStudyOptions *)options showVocabulary]^ 1];
    }

    else
    {
      [(THStudyOptions *)self->_options setShowAnnotations:[(THStudyOptions *)options showAnnotations]^ 1];
    }
  }

  return path;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  [view deselectRowAtIndexPath:path animated:1];
  if (![path section])
  {

    [view reloadData];
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  if (viewController == self)
  {
    if (+[UIFont bc_accessibilityFontSizesEnabled])
    {
      v7 = 360.0;
    }

    else
    {
      v7 = 320.0;
    }

    if (+[UIFont bc_accessibilityFontSizesEnabled])
    {
      v8 = 400.0;
    }

    else
    {
      v8 = 146.0;
    }

    v9 = [-[THStudyOptionsPopoverController presentingViewController](self "presentingViewController")];

    [v9 setPreferredContentSize:{v7, v8}];
  }
}

@end