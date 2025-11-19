@interface EKCalendarColorViewController
- (CGSize)preferredContentSize;
- (EKCalendarColorViewController)init;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)contentSizeCategoryDidChangeNotification:(id)a3;
- (void)resetBackgroundColor;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation EKCalendarColorViewController

- (EKCalendarColorViewController)init
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = EKCalendarColorViewController;
  v2 = [(EKCalendarColorViewController *)&v11 initWithStyle:2];
  if (v2)
  {
    v3 = EventKitUIBundle();
    v4 = [v3 localizedStringForKey:@"Calendar Color" value:&stru_1F4EF6790 table:0];
    [(EKCalendarColorViewController *)v2 setTitle:v4];

    objc_initWeak(&location, v2);
    v12[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__EKCalendarColorViewController_init__block_invoke;
    v8[3] = &unk_1E843EBE8;
    objc_copyWeak(&v9, &location);
    v6 = [(EKCalendarColorViewController *)v2 registerForTraitChanges:v5 withHandler:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __37__EKCalendarColorViewController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetBackgroundColor];
}

- (void)viewDidLoad
{
  [(EKCalendarColorViewController *)self resetBackgroundColor];
  v3.receiver = self;
  v3.super_class = EKCalendarColorViewController;
  [(EKCalendarColorViewController *)&v3 viewDidLoad];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];

  v6.receiver = self;
  v6.super_class = EKCalendarColorViewController;
  [(EKCalendarColorViewController *)&v6 viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = EKCalendarColorViewController;
  [(EKCalendarColorViewController *)&v6 viewWillDisappear:v3];
}

- (void)contentSizeCategoryDidChangeNotification:(id)a3
{
  [(EKCalendarColorEditItem *)self->_editItem reset];
  v4 = [(EKCalendarColorViewController *)self tableView];
  [v4 reloadData];
}

- (void)resetBackgroundColor
{
  v3 = [(UIViewController *)self isPresentedInsidePopover];
  v5 = [(EKCalendarColorViewController *)self tableView];
  if (v3)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }
  v4 = ;
  [v5 setBackgroundColor:v4];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  editItem = self->_editItem;
  v5 = [a4 row];

  return [(EKCalendarColorEditItem *)editItem cellForSubitemAtIndex:v5];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [v8 cellForRowAtIndexPath:v6];
  if ([v7 selectionStyle])
  {
    [v8 selectRowAtIndexPath:0 animated:1 scrollPosition:0];
  }

  -[EKCalendarColorEditItem calendarEditor:didSelectSubitem:](self->_editItem, "calendarEditor:didSelectSubitem:", 0, [v6 row]);
}

- (CGSize)preferredContentSize
{
  v3 = EKUIContainedControllerIdealWidth();
  v4 = [(EKCalendarColorViewController *)self tableView];
  [v4 sizeThatFits:{v3, 1100.0}];
  v6 = v5;

  v7 = v3;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end