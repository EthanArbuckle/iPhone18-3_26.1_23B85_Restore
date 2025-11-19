@interface SRAuthorizationPerCategoryViewController
+ (id)perCategoryViewControllerWithBundle:(id)a3 services:(id)a4 authStore:(id)a5 completionHandler:(id)a6 cancelHandler:(id)a7;
+ (void)initialize;
- (id)currentAuthGroup;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)cancelPrompt;
- (void)dealloc;
- (void)deny;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation SRAuthorizationPerCategoryViewController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_100015F38 = os_log_create("com.apple.SensorKit", "SRAuthorizationPerCategoryViewController");
  }
}

+ (id)perCategoryViewControllerWithBundle:(id)a3 services:(id)a4 authStore:(id)a5 completionHandler:(id)a6 cancelHandler:(id)a7
{
  v12 = objc_alloc_init(SRAuthorizationPerCategoryViewController);
  [(SRAuthorizationPerCategoryViewController *)v12 setAppBundle:a3];
  [(SRAuthorizationPerCategoryViewController *)v12 setServices:a4];
  [(SRAuthorizationPerCategoryViewController *)v12 setAuthIndex:0];
  v13 = [NSMutableArray arrayWithCapacity:[(NSArray *)[(SRAuthorizationPerCategoryViewController *)v12 services] count]];
  if ([(NSArray *)[(SRAuthorizationPerCategoryViewController *)v12 services] count])
  {
    v14 = 0;
    do
    {
      [(NSMutableArray *)v13 addObject:&off_100010808];
      ++v14;
    }

    while (v14 < [(NSArray *)[(SRAuthorizationPerCategoryViewController *)v12 services] count]);
  }

  [(SRAuthorizationPerCategoryViewController *)v12 setAuthState:v13];
  [(SRAuthorizationPerCategoryViewController *)v12 setCompletionHandler:a6];
  [(SRAuthorizationPerCategoryViewController *)v12 setCancelHandler:a7];
  [(SRAuthorizationPerCategoryViewController *)v12 setAuthStore:a5];

  return v12;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = SRAuthorizationPerCategoryViewController;
  [(SRAuthorizationPerCategoryViewController *)&v9 viewDidLoad];
  [-[SRAuthorizationPerCategoryViewController tableView](self "tableView")];
  [-[SRAuthorizationPerCategoryViewController tableView](self "tableView")];
  [-[SRAuthorizationPerCategoryViewController tableView](self "tableView")];
  v8 = 0;
  [-[SRAuthorizationPerCategoryViewController navigationItem](self "navigationItem")];
  if (![-[SRAuthorizationPerCategoryViewController navigationItem](self "navigationItem")])
  {
    v5 = qword_100015F38;
    if (os_log_type_enabled(qword_100015F38, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v11 = v8;
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Failed to localize string because %{public}@", buf, 0xCu);
    }
  }

  [-[SRAuthorizationPerCategoryViewController navigationItem](self "navigationItem")];
  [-[SRAuthorizationPerCategoryViewController navigationItem](self "navigationItem")];
  v6 = [UIView alloc];
  [-[SRAuthorizationPerCategoryViewController tableView](self "tableView")];
  [-[SRAuthorizationPerCategoryViewController tableView](self "tableView")];
}

- (void)dealloc
{
  [(SRAuthorizationPerCategoryViewController *)self setAuthState:0];
  [(SRAuthorizationPerCategoryViewController *)self setServices:0];
  [(SRAuthorizationPerCategoryViewController *)self setAppBundle:0];
  [(SRAuthorizationPerCategoryViewController *)self setCompletionHandler:0];
  [(SRAuthorizationPerCategoryViewController *)self setCancelHandler:0];
  [(SRAuthorizationPerCategoryViewController *)self setBoldButton:0];
  [(SRAuthorizationPerCategoryViewController *)self setHeightAnchor:0];

  self->_currentAuthGroup = 0;
  [(SRAuthorizationPerCategoryViewController *)self setAuthStore:0];
  v3.receiver = self;
  v3.super_class = SRAuthorizationPerCategoryViewController;
  [(SRAuthorizationPerCategoryViewController *)&v3 dealloc];
}

- (id)currentAuthGroup
{
  result = self->_currentAuthGroup;
  if (!result)
  {
    result = [SRAuthorizationGroup authorizationGroupWithServiceName:[(NSArray *)[(SRAuthorizationPerCategoryViewController *)self services] objectAtIndexedSubscript:[(SRAuthorizationPerCategoryViewController *)self authIndex]]];
    self->_currentAuthGroup = result;
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = [a4 row];
  switch(v6)
  {
    case 2u:
      v12 = [(SRAuthorizationPerCategoryViewController *)self tableView];
      v13 = objc_opt_class();
      v7 = [v12 dequeueReusableCellWithIdentifier:NSStringFromClass(v13)];
      if (!v7)
      {
        v14 = [SRButtonTrayCell alloc];
        v15 = objc_opt_class();
        v7 = [(SRButtonTrayCell *)v14 initWithStyle:0 reuseIdentifier:NSStringFromClass(v15)];
        [-[SRAuthorizationPerCategoryViewController tableView](self "tableView")];
        [-[SRButtonTrayCell contentView](v7 "contentView")];
      }

      [(UIButton *)[(SRButtonTrayCell *)v7 firstButton] setTitle:[NSString forState:"srui_localizedStringForCode:" srui_localizedStringForCode:?], 0];
      [(UIButton *)[(SRButtonTrayCell *)v7 secondButton] setTitle:[NSString forState:"srui_localizedStringForCode:" srui_localizedStringForCode:?], 0];
      [(UIButton *)[(SRButtonTrayCell *)v7 firstButton] addTarget:self action:"allow" forControlEvents:64];
      [(UIButton *)[(SRButtonTrayCell *)v7 secondButton] addTarget:self action:"deny" forControlEvents:64];
      return v7;
    case 1u:

      return [UITableViewCell skui_tableViewCellForDataSample:a3];
    case 0u:
      v7 = +[SRAuthorizationCategoryDetailCell categoryDetailCellForAuthGroup:bundle:titleFont:bodyFont:textColor:OBKStyle:](SRAuthorizationCategoryDetailCell, "categoryDetailCellForAuthGroup:bundle:titleFont:bodyFont:textColor:OBKStyle:", [(SRAuthorizationPerCategoryViewController *)self currentAuthGroup], [(SRAuthorizationPerCategoryViewController *)self appBundle], +[UIFont fontWithDescriptor:size:](UIFont, "fontWithDescriptor:size:", [+[UIFontDescriptor preferredFontDescriptorWithTextStyle:](UIFontDescriptor fontDescriptorWithSymbolicTraits:UIFontTextStyleBody), "fontDescriptorWithSymbolicTraits:", 2], 0.0), +[UIFont preferredFontForTextStyle:](UIFont, "preferredFontForTextStyle:", UIFontTextStyleBody), +[UIColor labelColor], 1);
      [-[SRButtonTrayCell categorySubTitleLabel](v7 "categorySubTitleLabel")];
      v8 = [-[SRAuthorizationPerCategoryViewController currentAuthGroup](self "currentAuthGroup")];
      if ([v8 length])
      {
        v9 = objc_opt_new();
        LODWORD(v10) = 0.5;
        [v9 setHyphenationFactor:v10];
        v22 = NSParagraphStyleAttributeName;
        v23 = v9;
        v11 = [[NSAttributedString alloc] initWithString:v8 attributes:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v23, &v22, 1)}];
      }

      else
      {
        v11 = 0;
      }

      [-[SRButtonTrayCell categoryTitleLabel](v7 "categoryTitleLabel")];
      [-[SRAuthorizationPerCategoryViewController tableView](self "tableView")];
      [-[SRButtonTrayCell contentView](v7 "contentView")];
      return v7;
    default:
      v18 = objc_opt_new();

      return v18;
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  if ([a5 row] && objc_msgSend(a5, "row") != 1)
  {

    [a4 setSeparatorStyle:0];
  }

  else
  {
    [a4 setSeparatorStyle:1];
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;

    [a4 setSeparatorInset:{UIEdgeInsetsZero.top, left, bottom, right}];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  if ([a4 row] == 1)
  {
    [-[SRAuthorizationPerCategoryViewController navigationController](self "navigationController")];
  }

  [a3 deselectRowAtIndexPath:a4 animated:0];
}

- (void)deny
{
  objc_initWeak(&location, self);
  v3 = [(SRAuthorizationPerCategoryViewController *)self appBundle];
  v4 = [(SRAuthorizationPerCategoryViewController *)self currentAuthGroup];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100005F08;
  v9 = &unk_100010510;
  objc_copyWeak(&v10, &location);
  v5 = [UIAlertController skui_alertControllerForRequiredAuthorizationIfNeccesaryForBundle:v3 authGroup:v4 destructiveHandler:&v6];
  if (v5)
  {
    [(SRAuthorizationPerCategoryViewController *)self presentViewController:v5 animated:1 completion:0, v6, v7, v8, v9];
  }

  else
  {
    [(SRAuthorizationPerCategoryViewController *)self showNextAuthFlowPerCategory:v6, v7, v8, v9];
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)cancelPrompt
{
  v2 = *([(SRAuthorizationPerCategoryViewController *)self cancelHandler]+ 2);

  v2();
}

@end