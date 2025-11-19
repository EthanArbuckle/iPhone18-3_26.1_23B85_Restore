@interface THHighlightTableViewController
- (THHighlightTableViewController)initWithOptions:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)contentSizeCategoryDidChange;
- (void)dealloc;
- (void)p_updateColors;
- (void)setTheme:(id)a3;
- (void)studyOptionsDidChangeFilterOptions:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation THHighlightTableViewController

- (THHighlightTableViewController)initWithOptions:(id)a3
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v10.receiver = self;
  v10.super_class = THHighlightTableViewController;
  v5 = [(THHighlightTableViewController *)&v10 initWithStyle:0];
  if (v5)
  {
    v5->_options = a3;
    -[THHighlightTableViewController setTitle:](v5, "setTitle:", [THBundle() localizedStringForKey:@"Highlights and Notes" value:&stru_471858 table:0]);
    if (+[UIFont bc_accessibilityFontSizesEnabled])
    {
      v6 = 360.0;
    }

    else
    {
      v6 = 320.0;
    }

    v7 = +[UIFont bc_accessibilityFontSizesEnabled];
    v8 = 400.0;
    if (!v7)
    {
      v8 = 146.0;
    }

    [(THHighlightTableViewController *)v5 setPreferredContentSize:v6, v8];
    [(THHighlightTableViewController *)v5 registerForTraitChanges:+[UITraitCollection withAction:"bc_allAPITraits"], "_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v5;
}

- (void)dealloc
{
  self->_options = 0;

  self->_theme = 0;
  v3.receiver = self;
  v3.super_class = THHighlightTableViewController;
  [(THHighlightTableViewController *)&v3 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = THHighlightTableViewController;
  [(THHighlightTableViewController *)&v4 viewWillAppear:a3];
  [(THStudyOptions *)self->_options addObserver:self];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"contentSizeCategoryDidChange" object:UIContentSizeCategoryDidChangeNotification, 0];
  [(THHighlightTableViewController *)self p_updateColors];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = THHighlightTableViewController;
  [(THHighlightTableViewController *)&v4 viewDidDisappear:a3];
  [(THStudyOptions *)self->_options removeObserver:self];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:UIContentSizeCategoryDidChangeNotification, 0];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = THHighlightTableViewController;
  [(THHighlightTableViewController *)&v4 viewDidLoad];
  [-[THHighlightTableViewController tableView](self "tableView")];
  [-[THHighlightTableViewController tableView](self "tableView")];
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setBackgroundColor:{+[UIColor clearColor](UIColor, "clearColor")}];
  [-[THHighlightTableViewController tableView](self "tableView")];

  [-[THHighlightTableViewController tableView](self "tableView")];
  [-[THHighlightTableViewController tableView](self "tableView")];
  [(THHighlightTableViewController *)self contentSizeCategoryDidChange];
}

- (void)contentSizeCategoryDidChange
{
  [-[THHighlightTableViewController tableView](self "tableView")];
  [-[THHighlightTableViewController tableView](self "tableView")];
  if (+[UIFont bc_accessibilityFontSizesEnabled])
  {
    v3 = [(THHighlightTableViewController *)self tableView];

    [v3 setRowHeight:UITableViewAutomaticDimension];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = [a3 dequeueReusableCellWithIdentifier:@"StudyOptionsHighlightTableCell"];
  if (!v6)
  {
    v6 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"StudyOptionsHighlightTableCell"];
  }

  [v6 setBackgroundColor:{-[IMThemePage secondaryGroupedBackgroundColor](self->_theme, "secondaryGroupedBackgroundColor")}];
  if ([a4 row])
  {
    if (qword_567810 != -1)
    {
      sub_29D0C8();
    }

    v7 = qword_567808;
    v8 = v7 + 16 * [a4 row];
    v9 = *(v8 - 16);
    v10 = *(v8 - 8);
    if (v9 == 6)
    {
      v11 = +[BCResources iconTextPopupHighlightUnderline];
      [v11 size];
      TSDCenterRectOverRect();
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v25.width = 22.0;
      v25.height = 22.0;
      UIGraphicsBeginImageContextWithOptions(v25, 0, 0.0);
      [v11 drawInRect:{v13, v15, v17, v19}];
      [+[UIColor colorWithWhite:alpha:](UIColor setStroke:0.850980392];
      v27.origin.x = 0.0;
      v27.origin.y = 0.0;
      v27.size.width = 22.0;
      v27.size.height = 22.0;
      v28 = CGRectInset(v27, 1.0, 1.0);
      [+[UIBezierPath bezierPathWithRoundedRect:cornerRadius:](UIBezierPath stroke:v28.origin.x];
    }

    else
    {
      v22 = [+[AEAnnotationTheme themeForAnnotationStyle:pageTheme:](AEAnnotationTheme themeForAnnotationStyle:v9 pageTheme:{4), "highlightColor"}];
      v26.width = 22.0;
      v26.height = 22.0;
      UIGraphicsBeginImageContextWithOptions(v26, 0, 0.0);
      [v22 setFill];
      [+[UIBezierPath bezierPathWithRoundedRect:cornerRadius:](UIBezierPath fill:0.0];
    }

    [objc_msgSend(v6 "imageView")];
    UIGraphicsEndImageContext();
    [objc_msgSend(v6 "textLabel")];
    v21 = [(THStudyOptions *)self->_options shouldShowAnnotationStyle:v9];
  }

  else
  {
    [objc_msgSend(v6 "textLabel")];
    [v6 setIndentationLevel:0];
    [v6 setIndentationWidth:53.0];
    [v6 indentationWidth];
    [v6 setSeparatorInset:{0.0, v20, 0.0, 0.0}];
    v21 = [(THStudyOptions *)self->_options shouldShowAllAnnotationStyles];
  }

  if (v21)
  {
    v23 = 3;
  }

  else
  {
    v23 = 0;
  }

  [v6 setAccessoryType:v23];
  return v6;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = [a3 cellForRowAtIndexPath:a4];
  if ([a4 row])
  {
    if (qword_567810 != -1)
    {
      sub_29D0C8();
    }

    v7 = qword_567808;
    v8 = *(v7 + 16 * [a4 row] - 16);
    v9 = [(THStudyOptions *)self->_options shouldShowAnnotationStyle:v8];
    options = self->_options;
    if (v9)
    {
      [(THStudyOptions *)options hideAnnotationStyle:v8];
    }

    else
    {
      [(THStudyOptions *)options showAnnotationStyle:v8];
    }
  }

  else
  {
    v11 = [v6 accessoryType];
    v12 = self->_options;
    if (v11)
    {
      [(THStudyOptions *)v12 hideAllAnnotationStyles];
    }

    else
    {
      [(THStudyOptions *)v12 showAllAnnotationStyles];
    }
  }

  return a4;
}

- (void)studyOptionsDidChangeFilterOptions:(id)a3
{
  v4 = [(THHighlightTableViewController *)self tableView];
  v5 = [v4 numberOfRowsInSection:0];
  if (v5 >= 2)
  {
    v6 = v5;
    v7 = 0;
    for (i = 1; i != v6; ++i)
    {
      v9 = [v4 cellForRowAtIndexPath:{+[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", i, 0)}];
      if (qword_567810 != -1)
      {
        sub_29D0C8();
      }

      if ([(THStudyOptions *)self->_options shouldShowAnnotationStyle:*(qword_567808 + v7)])
      {
        v10 = 3;
      }

      else
      {
        v10 = 0;
      }

      [v9 setAccessoryType:v10];
      v7 += 16;
    }
  }

  v11 = [v4 cellForRowAtIndexPath:{+[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, 0)}];
  if ([(THStudyOptions *)self->_options shouldShowAllAnnotationStyles])
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  [v11 setAccessoryType:v12];
}

- (void)p_updateColors
{
  [-[THHighlightTableViewController viewIfLoaded](self "viewIfLoaded")];
  [objc_msgSend(-[THHighlightTableViewController navigationController](self "navigationController")];
  v3 = [(THHighlightTableViewController *)self tableView];

  [v3 reloadData];
}

- (void)setTheme:(id)a3
{
  if (([(IMThemePage *)self->_theme isEqual:?]& 1) == 0)
  {

    self->_theme = a3;

    [(THHighlightTableViewController *)self p_updateColors];
  }
}

@end