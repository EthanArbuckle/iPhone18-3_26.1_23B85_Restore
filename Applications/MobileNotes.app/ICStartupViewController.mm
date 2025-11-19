@interface ICStartupViewController
- (BOOL)didFailToDownloadDeviceList;
- (id)keyCommands;
- (int64_t)behavior;
- (void)addListItems;
- (void)addListItemsCalculatorCompact:(BOOL)a3;
- (void)addListItemsiOS;
- (void)addListItemsvisionOS;
- (void)applyAccessibilityInfo;
- (void)choiceSelected:(unint64_t)a3;
- (void)continueAction:(id)a3;
- (void)setupChoiceViews;
- (void)startIndicatorAnimation;
- (void)stopIndicatorAnimation;
- (void)viewDidLoad;
@end

@implementation ICStartupViewController

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = ICStartupViewController;
  [(ICStartupBaseViewController *)&v20 viewDidLoad];
  [(ICStartupViewController *)self addListItems];
  v3 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(ICStartupViewController *)self setActivityIndicatorView:v3];

  v4 = [(ICStartupViewController *)self activityIndicatorView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(ICStartupViewController *)self view];
  v6 = [(ICStartupViewController *)self activityIndicatorView];
  [v5 addSubview:v6];

  v7 = +[NSMutableArray array];
  v8 = [(ICStartupViewController *)self activityIndicatorView];
  v9 = [v8 bottomAnchor];
  v10 = [(ICStartupViewController *)self view];
  v11 = [v10 layoutMarginsGuide];
  v12 = [v11 bottomAnchor];
  v13 = [v9 constraintEqualToAnchor:v12 constant:-40.0];
  [v7 addObject:v13];

  v14 = [(ICStartupViewController *)self activityIndicatorView];
  v15 = [v14 centerXAnchor];
  v16 = [(ICStartupViewController *)self view];
  v17 = [v16 layoutMarginsGuide];
  v18 = [v17 centerXAnchor];
  v19 = [v15 constraintEqualToAnchor:v18];
  [v7 addObject:v19];

  [NSLayoutConstraint activateConstraints:v7];
}

- (int64_t)behavior
{
  v2 = [(ICStartupViewController *)self navigationController];
  v3 = [v2 ic_behavior];

  return v3;
}

- (void)addListItems
{
  if ([(ICStartupViewController *)self behavior]== 3)
  {

    [(ICStartupViewController *)self addListItemsvisionOS];
  }

  else if ([(ICStartupViewController *)self behavior]== 1)
  {
    v5 = +[UIDevice ic_isiPad]^ 1;

    [(ICStartupViewController *)self addListItemsCalculatorCompact:v5];
  }

  else
  {

    [(ICStartupViewController *)self addListItemsiOS];
  }
}

- (void)addListItemsCalculatorCompact:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Solve Math" value:&stru_100661CF0 table:0];
  v7 = +[NSBundle mainBundle];
  v8 = v7;
  if (v3)
  {
    v9 = @"Type math expressions to instantly see results inline in your Math Notes.";
  }

  else
  {
    v9 = @"Write math expressions with Apple Pencil or type them to instantly see results inline in your Math Notes.";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_100661CF0 table:0];
  v11 = [UIImage ic_systemImageNamed:@"math.operators"];
  [(ICStartupViewController *)self addBulletedListItemWithTitle:v6 description:v10 image:v11];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Use Variables" value:&stru_100661CF0 table:0];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Assign a value to x value:y table:{or any other word, and easily reference these variables in expressions and equations.", &stru_100661CF0, 0}];
  v16 = [UIImage ic_systemImageNamed:@"x.squareroot"];
  [(ICStartupViewController *)self addBulletedListItemWithTitle:v13 description:v15 image:v16];

  if (!v3)
  {
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"Plot Graphs" value:&stru_100661CF0 table:0];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"Write or type an equation value:plot it on a graph table:{and adjust variables and values to see your graph update in real time.", &stru_100661CF0, 0}];
    v21 = [UIImage ic_systemImageNamed:@"graph.2d"];
    [(ICStartupViewController *)self addBulletedListItemWithTitle:v18 description:v20 image:v21];
  }

  v26 = +[NSBundle mainBundle];
  v22 = [v26 localizedStringForKey:@"Math in Your Notes App" value:&stru_100661CF0 table:0];
  v23 = +[NSBundle mainBundle];
  v24 = [v23 localizedStringForKey:@"Solve math in any note in the Notes app value:and access all of your notes from Calculator in the Math Notes folder." table:{&stru_100661CF0, 0}];
  v25 = [UIImage ic_systemImageNamed:@"apple.math.notes"];
  [(ICStartupViewController *)self addBulletedListItemWithTitle:v22 description:v24 image:v25];
}

- (void)addListItemsiOS
{
  v3 = +[UIColor whiteColor];
  v30[0] = v3;
  v4 = +[UIColor systemBlueColor];
  v30[1] = v4;
  v5 = [NSArray arrayWithObjects:v30 count:2];
  v6 = [UIImageSymbolConfiguration configurationWithPaletteColors:v5];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Add Almost Anything" value:&stru_100661CF0 table:0];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Capture documents value:audio table:{photos, and more for a richer Notes experience.", &stru_100661CF0, 0}];
  v11 = [UIImage imageNamed:@"ios_firstlaunch_welcome_1"];
  [(ICStartupViewController *)self addBulletedListItemWithTitle:v8 description:v10 image:v11];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Note to Self value:or with Anyone" table:{&stru_100661CF0, 0}];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Invite others to view or make changes to a note." value:&stru_100661CF0 table:0];
  v16 = [UIImage systemImageNamed:@"person.crop.circle.fill" withConfiguration:v6];
  [(ICStartupViewController *)self addBulletedListItemWithTitle:v13 description:v15 image:v16];

  if (+[UIDevice ic_isiPad])
  {
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"Sketch Your Thoughts" value:&stru_100661CF0 table:0];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"Draw using your finger or the Apple Pencil." value:&stru_100661CF0 table:0];
    v21 = [UIImage imageNamed:@"ios_firstlaunch_welcome_3"];
    [(ICStartupViewController *)self addBulletedListItemWithTitle:v18 description:v20 image:v21];
  }

  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"Create Quick Notes Anywhere" value:&stru_100661CF0 table:0];
  v24 = +[UIDevice ic_isiPad];
  v25 = +[NSBundle mainBundle];
  v26 = v25;
  if (v24)
  {
    v27 = @"Just swipe up from the bottom right corner with your Apple Pencil to start a note when you’re outside the app.";
  }

  else
  {
    v27 = @"Create new Quick Notes in any app from the Share menu.";
  }

  v28 = [v25 localizedStringForKey:v27 value:&stru_100661CF0 table:0];
  v29 = [UIImage ic_systemImageNamed:@"quicknote"];
  [(ICStartupViewController *)self addBulletedListItemWithTitle:v23 description:v28 image:v29];
}

- (void)addListItemsvisionOS
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Add Almost Anything" value:&stru_100661CF0 table:0];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Capture documents value:audio table:{photos, and more for a richer Notes experience.", &stru_100661CF0, 0}];
  [(ICStartupViewController *)self addBulletedListItemWithTitle:v4 description:v6 symbolName:@"note.text"];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Fast value:Powerful Collaboration" table:{&stru_100661CF0, 0}];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Invite others to view or make changes to a note." value:&stru_100661CF0 table:0];
  [(ICStartupViewController *)self addBulletedListItemWithTitle:v8 description:v10 symbolName:@"person.crop.circle.fill"];

  v24 = +[UIButtonConfiguration plainButtonConfiguration];
  [v24 setButtonSize:1];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Go to Settings…" value:&stru_100661CF0 table:0];
  [v24 setTitle:v12];

  [v24 setContentInsets:{2.0, 0.0, 2.0, 0.0}];
  v13 = +[UIColor ICTintColor];
  [v24 setBaseForegroundColor:v13];

  v14 = [UIAction actionWithHandler:&stru_100646BB8];
  v15 = [OBBulletedListItemLinkButton buttonWithConfiguration:v24 primaryAction:v14];
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"Make Quick Edits" value:&stru_100661CF0 table:0];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"Pair a supported keyboard value:trackpad table:{or mouse for even faster editing.", &stru_100661CF0, 0}];
  [(ICStartupViewController *)self addBulletedListItemWithTitle:v17 description:v19 symbolName:@"keyboard" linkButton:v15];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"And Lots More…" value:&stru_100661CF0 table:0];
  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"Using tools like checklists value:tables table:{locked notes, and text formatting.", &stru_100661CF0, 0}];
  [(ICStartupViewController *)self addBulletedListItemWithTitle:v21 description:v23 symbolName:@"sparkles"];
}

- (void)choiceSelected:(unint64_t)a3
{
  v5 = [(ICStartupViewController *)self choiceBlocks];
  v6 = [v5 count];

  if (v6 > a3)
  {
    v7 = [(ICStartupViewController *)self choiceBlocks];
    v8 = [v7 objectAtIndexedSubscript:a3];

    v8[2]();
  }
}

- (id)keyCommands
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Continue" value:&stru_100661CF0 table:0];

  v4 = [UIKeyCommand commandWithTitle:v3 image:0 action:"continueAction:" input:@"\r" modifierFlags:0 propertyList:0];
  [v4 setWantsPriorityOverSystemBehavior:1];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];

  return v5;
}

- (void)continueAction:(id)a3
{
  v3 = [(ICStartupBaseViewController *)self startupNavigationController];
  [v3 continueAction];
}

- (void)setupChoiceViews
{
  v3 = [(ICStartupBaseViewController *)self startupNavigationController];
  v4 = [v3 getStartupMigrationType];

  objc_initWeak(&location, self);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10006E14C;
  v36[3] = &unk_100645C78;
  objc_copyWeak(&v37, &location);
  v5 = objc_retainBlock(v36);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10006E1D4;
  v34[3] = &unk_100645C78;
  objc_copyWeak(&v35, &location);
  v24 = objc_retainBlock(v34);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10006E22C;
  v32[3] = &unk_100645C78;
  objc_copyWeak(&v33, &location);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10006E284;
  v29[3] = &unk_100646BE0;
  v6 = objc_retainBlock(v32);
  v30 = v6;
  v7 = v5;
  v31 = v7;
  v29[4] = self;
  v25 = objc_retainBlock(v29);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10006E510;
  v27[3] = &unk_100645C78;
  objc_copyWeak(&v28, &location);
  v26 = objc_retainBlock(v27);
  v8 = objc_alloc_init(NSMutableParagraphStyle);
  [v8 setAlignment:1];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Continue" value:&stru_100661CF0 table:0];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Upgrade Now" value:&stru_100661CF0 table:0];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"Upgrade Notes" value:&stru_100661CF0 table:0];

  if (v4 > 4)
  {
    if (v4 > 7)
    {
      if (v4 == 8)
      {
        v40 = v14;
        v22 = [NSArray arrayWithObjects:&v40 count:1];
        [(ICStartupViewController *)self setChoiceLabels:v22];

        v16 = objc_retainBlock(v26);
        v39 = v16;
        v17 = [NSArray arrayWithObjects:&v39 count:1];
        [(ICStartupViewController *)self setChoiceBlocks:v17];
        goto LABEL_19;
      }

      if (v4 == 9)
      {
        v50 = v10;
        v20 = [NSArray arrayWithObjects:&v50 count:1];
        [(ICStartupViewController *)self setChoiceLabels:v20];

        v16 = objc_retainBlock(v26);
        v49 = v16;
        v17 = [NSArray arrayWithObjects:&v49 count:1];
        [(ICStartupViewController *)self setChoiceBlocks:v17];
        goto LABEL_19;
      }
    }

    else
    {
      if ((v4 - 6) < 2)
      {
        v48 = v12;
        v18 = [NSArray arrayWithObjects:&v48 count:1];
        [(ICStartupViewController *)self setChoiceLabels:v18];

        v16 = objc_retainBlock(v25);
        v47 = v16;
        v17 = [NSArray arrayWithObjects:&v47 count:1];
        [(ICStartupViewController *)self setChoiceBlocks:v17];
        goto LABEL_19;
      }

      if (v4 == 5)
      {
        v42 = v10;
        v21 = [NSArray arrayWithObjects:&v42 count:1];
        [(ICStartupViewController *)self setChoiceLabels:v21];

        v16 = objc_retainBlock(v24);
        v41 = v16;
        v17 = [NSArray arrayWithObjects:&v41 count:1];
        [(ICStartupViewController *)self setChoiceBlocks:v17];
        goto LABEL_19;
      }
    }
  }

  else
  {
    if (v4 > 2)
    {
      v44 = v14;
      v19 = [NSArray arrayWithObjects:&v44 count:1];
      [(ICStartupViewController *)self setChoiceLabels:v19];

      v16 = objc_retainBlock(v7);
      v43 = v16;
      v17 = [NSArray arrayWithObjects:&v43 count:1];
      [(ICStartupViewController *)self setChoiceBlocks:v17];
      goto LABEL_19;
    }

    if (v4)
    {
      if (v4 == 1)
      {
        v52 = v10;
        v23 = [NSArray arrayWithObjects:&v52 count:1];
        [(ICStartupViewController *)self setChoiceLabels:v23];

        v16 = objc_retainBlock(v6);
        v51 = v16;
        v17 = [NSArray arrayWithObjects:&v51 count:1];
        [(ICStartupViewController *)self setChoiceBlocks:v17];
        goto LABEL_19;
      }

      if (v4 == 2)
      {
        v46 = v10;
        v15 = [NSArray arrayWithObjects:&v46 count:1];
        [(ICStartupViewController *)self setChoiceLabels:v15];

        v16 = objc_retainBlock(v7);
        v45 = v16;
        v17 = [NSArray arrayWithObjects:&v45 count:1];
        [(ICStartupViewController *)self setChoiceBlocks:v17];
LABEL_19:
      }
    }

    else
    {
      [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICStartupViewController setupChoiceViews]" simulateCrash:1 showAlert:0 format:@"Undefined startup migration type"];
    }
  }

  [(ICStartupBaseViewController *)self choicesUpdated];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v33);

  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

- (BOOL)didFailToDownloadDeviceList
{
  v2 = [(ICStartupBaseViewController *)self startupNavigationController];
  v3 = [v2 primaryAccountDevices];
  v4 = v3 == 0;

  return v4;
}

- (void)startIndicatorAnimation
{
  [(ICStartupBaseViewController *)self hideChoices];
  v3 = [(ICStartupViewController *)self activityIndicatorView];
  [v3 startAnimating];
}

- (void)stopIndicatorAnimation
{
  [(ICStartupViewController *)self setupChoiceViews];
  v3 = [(ICStartupViewController *)self activityIndicatorView];
  [v3 stopAnimating];
}

- (void)applyAccessibilityInfo
{
  v2 = [(ICStartupViewController *)self view];
  [v2 setAccessibilityViewIsModal:1];
}

@end