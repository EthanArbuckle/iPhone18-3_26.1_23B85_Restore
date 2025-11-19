@interface THStudyOptionsPopoverController
- (THStudyOptionsPopoverController)initWithOptions:(id)a3;
- (UIImage)checkImage;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)contentSizeCategoryDidChange;
- (void)dealloc;
- (void)doneButtonPressed:(id)a3;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)p_updateColors;
- (void)setTheme:(id)a3;
- (void)shuffleSwitchChanged:(id)a3;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation THStudyOptionsPopoverController

- (THStudyOptionsPopoverController)initWithOptions:(id)a3
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = THBundle();
  v13.receiver = self;
  v13.super_class = THStudyOptionsPopoverController;
  v6 = [(THStudyOptionsPopoverController *)&v13 initWithNibName:@"THiOSStudyOptions" bundle:v5];
  if (v6)
  {
    v6->_options = a3;
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = THStudyOptionsPopoverController;
  [(THStudyOptionsPopoverController *)&v4 viewWillAppear:a3];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"contentSizeCategoryDidChange" object:UIContentSizeCategoryDidChangeNotification, 0];
  [(THStudyOptionsPopoverController *)self p_updateColors];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = THStudyOptionsPopoverController;
  [(THStudyOptionsPopoverController *)&v4 viewDidDisappear:a3];
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
    v3 = [(THStudyOptionsPopoverController *)self tableView];

    [(UITableView *)v3 setRowHeight:UITableViewAutomaticDimension];
  }
}

- (void)p_updateColors
{
  [-[THStudyOptionsPopoverController viewIfLoaded](self "viewIfLoaded")];
  [objc_msgSend(-[THStudyOptionsPopoverController navigationController](self "navigationController")];
  tableView = self->_tableView;

  [(UITableView *)tableView reloadData];
}

- (void)setTheme:(id)a3
{
  if (([(IMThemePage *)self->_theme isEqual:?]& 1) == 0)
  {

    self->_theme = a3;

    [(THStudyOptionsPopoverController *)self p_updateColors];
  }
}

- (void)shuffleSwitchChanged:(id)a3
{
  v4 = [a3 isOn];
  options = self->_options;

  [(THStudyOptions *)options setShuffle:v4];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = [a3 dequeueReusableCellWithIdentifier:@"StudyOptionsTableCell" forIndexPath:?];
  [v6 setAccessoryView:0];
  objc_opt_class();
  [v6 contentConfiguration];
  v7 = TSUDynamicCast();
  if (!v7)
  {
    v7 = +[UIListContentConfiguration cellConfiguration];
  }

  v8 = [(UIListContentConfiguration *)v7 imageProperties];
  [(UIListContentConfiguration *)v7 setImage:[(THStudyOptionsPopoverController *)self checkImage]];
  [(UIListContentImageProperties *)v8 setTintColor:[(THStudyOptionsPopoverController *)self hiddenColor]];
  if (![a4 section])
  {
    [v6 setSelectionStyle:3];
    v10 = [a4 row];
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

    [(UIListContentImageProperties *)v8 setTintColor:[(IMThemePage *)[(THStudyOptionsPopoverController *)self theme] primaryTextColor]];
    goto LABEL_9;
  }

  if ([a4 section] == &dword_0 + 1)
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

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  result = 0.001;
  if (a4 == 1)
  {
    return 20.0;
  }

  return result;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  [(THStudyOptionsPopoverController *)self tableView:a3 heightForHeaderInSection:a4];
  if (v5 <= 0.0)
  {
    return 0;
  }

  v6 = v5;
  v7 = [UIView alloc];
  [-[THStudyOptionsPopoverController view](self "view")];
  v8 = [v7 initWithFrame:{0.0, 0.0, CGRectGetWidth(v11), v6}];
  v9 = [(IMThemePage *)self->_theme groupedBackgroundColor];
  [v8 setBackgroundColor:v9];
  [(UITableView *)[(THStudyOptionsPopoverController *)self tableView] setBackgroundColor:v9];
  return v8;
}

- (void)doneButtonPressed:(id)a3
{
  v3 = [(THStudyOptionsPopoverController *)self delegate];

  [(THStudyOptionsDelegate *)v3 dismissStudyOptionsMenu:1 completion:0];
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
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

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  if (![a4 section])
  {
    v6 = [a4 row];
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

  return a4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  [a3 deselectRowAtIndexPath:a4 animated:1];
  if (![a4 section])
  {

    [a3 reloadData];
  }
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  if (a4 == self)
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