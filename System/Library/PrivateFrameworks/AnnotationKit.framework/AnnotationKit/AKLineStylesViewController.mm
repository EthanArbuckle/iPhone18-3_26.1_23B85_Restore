@interface AKLineStylesViewController
+ (id)generateLineImageForTag:(int64_t)tag selected:(BOOL)selected;
- (AKController)controller;
- (AKLineStylesViewController)initWithController:(id)controller;
- (id)indexPathForLineWidthTag:(int64_t)tag;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)currentLineWidthTag;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)selectRowForTag:(int64_t)tag;
- (void)selectedLineWidthChanged:(int64_t)changed;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AKLineStylesViewController

- (AKLineStylesViewController)initWithController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = AKLineStylesViewController;
  v5 = [(AKLineStylesViewController *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(AKLineStylesViewController *)v5 setController:controllerCopy];
    [(AKLineStylesViewController *)v6 setLineWidthTags:&unk_2851BAB90];
    lineWidthTags = [(AKLineStylesViewController *)v6 lineWidthTags];
    -[AKLineStylesViewController setPreferredContentSize:](v6, "setPreferredContentSize:", 60.0, (48 * [lineWidthTags count]));
  }

  return v6;
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = AKLineStylesViewController;
  [(AKLineStylesViewController *)&v23 viewDidLoad];
  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(AKLineStylesViewController *)self view];
  [view setBackgroundColor:clearColor];

  v5 = objc_alloc(MEMORY[0x277D75B40]);
  v6 = [v5 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(AKLineStylesViewController *)self setTableView:v6];

  tableView = [(AKLineStylesViewController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  tableView2 = [(AKLineStylesViewController *)self tableView];
  [tableView2 setBackgroundColor:clearColor2];

  tableView3 = [(AKLineStylesViewController *)self tableView];
  [tableView3 setAlwaysBounceVertical:0];

  tableView4 = [(AKLineStylesViewController *)self tableView];
  [tableView4 setSeparatorStyle:0];

  tableView5 = [(AKLineStylesViewController *)self tableView];
  [tableView5 setRowHeight:48.0];

  tableView6 = [(AKLineStylesViewController *)self tableView];
  [tableView6 setDelegate:self];

  tableView7 = [(AKLineStylesViewController *)self tableView];
  [tableView7 setDataSource:self];

  tableView8 = [(AKLineStylesViewController *)self tableView];
  [tableView8 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKLineStylesRowIdentifier"];

  view2 = [(AKLineStylesViewController *)self view];
  tableView9 = [(AKLineStylesViewController *)self tableView];
  [view2 addSubview:tableView9];

  v18 = _NSDictionaryOfVariableBindings(&cfstr_Tableview.isa, self->_tableView, 0);
  v19 = MEMORY[0x277CCAAD0];
  v20 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_tableView]|" options:0 metrics:0 views:v18];
  [v19 activateConstraints:v20];

  v21 = MEMORY[0x277CCAAD0];
  v22 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_tableView]|" options:0 metrics:0 views:v18];
  [v21 activateConstraints:v22];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AKLineStylesViewController;
  [(AKLineStylesViewController *)&v4 viewWillAppear:appear];
  [(AKLineStylesViewController *)self selectRowForTag:[(AKLineStylesViewController *)self currentLineWidthTag]];
}

- (id)indexPathForLineWidthTag:(int64_t)tag
{
  lineWidthTags = [(AKLineStylesViewController *)self lineWidthTags];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:tag];
  v6 = [lineWidthTags indexOfObject:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCAA70] indexPathForRow:v6 inSection:0];
  }

  return v7;
}

- (void)selectRowForTag:(int64_t)tag
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = [(AKLineStylesViewController *)self indexPathForLineWidthTag:tag];
  if (v4)
  {
    tableView = [(AKLineStylesViewController *)self tableView];
    v7[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [tableView reloadRowsAtIndexPaths:v6 withRowAnimation:0];
  }
}

- (int64_t)currentLineWidthTag
{
  controller = [(AKLineStylesViewController *)self controller];
  attributeController = [controller attributeController];
  currentPageController = [controller currentPageController];
  currentPageController2 = [controller currentPageController];
  pageModelController = [currentPageController2 pageModelController];

  [attributeController strokeWidth];
  v8 = round(v7);
  selectedAnnotations = [pageModelController selectedAnnotations];
  [currentPageController modelBaseScaleFactor];
  v11 = v10;
  if ([selectedAnnotations count] == 1)
  {
    anyObject = [selectedAnnotations anyObject];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      anyObject2 = [selectedAnnotations anyObject];
      [anyObject2 strokeWidth];
      v8 = round(v15 / v11);
    }
  }

  return v8 + 765000;
}

- (void)selectedLineWidthChanged:(int64_t)changed
{
  tableView = [(AKLineStylesViewController *)self tableView];
  selectedCell = [tableView selectedCell];

  if (selectedCell)
  {
    changedCopy = (changed - 765000);
    if ((changed - 765001) >= 0xF)
    {
      changedCopy = changed;
    }

    [selectedCell setLineWidth:changedCopy];
    [selectedCell setTag:changed];
    controller = [(AKLineStylesViewController *)self controller];
    [controller performActionForSender:selectedCell];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(AKLineStylesViewController *)self lineWidthTags:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"AKLineStylesRowIdentifier" forIndexPath:pathCopy];
  lineWidthTags = [(AKLineStylesViewController *)self lineWidthTags];
  v9 = [pathCopy row];

  v10 = [lineWidthTags objectAtIndex:v9];
  integerValue = [v10 integerValue];

  v12 = [objc_opt_class() generateLineImageForTag:integerValue selected:{integerValue == -[AKLineStylesViewController currentLineWidthTag](self, "currentLineWidthTag")}];
  imageView = [v7 imageView];
  [imageView setImage:v12];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  lineWidthTags = [(AKLineStylesViewController *)self lineWidthTags];
  v9 = [pathCopy row];

  v10 = [lineWidthTags objectAtIndex:v9];

  -[AKLineStylesViewController selectedLineWidthChanged:](self, "selectedLineWidthChanged:", [v10 integerValue]);
  [viewCopy reloadData];
}

+ (id)generateLineImageForTag:(int64_t)tag selected:(BOOL)selected
{
  selectedCopy = selected;
  v20.width = 38.0;
  v20.height = 38.0;
  UIGraphicsBeginImageContextWithOptions(v20, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v7 = CurrentContext;
  if (selectedCopy)
  {
    CGContextSaveGState(CurrentContext);
    v21.size.width = 36.0;
    v21.origin.x = 1.0;
    v21.origin.y = 1.0;
    v21.size.height = 36.0;
    v8 = CGPathCreateWithEllipseInRect(v21, 0);
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    CGContextSetStrokeColorWithColor(v7, [systemBlueColor CGColor]);

    CGContextSetLineWidth(v7, 2.0);
    CGContextAddPath(v7, v8);
    CGContextStrokePath(v7);
    CGPathRelease(v8);
    CGContextRestoreGState(v7);
  }

  CGContextSaveGState(v7);
  grayColor = [MEMORY[0x277D75348] grayColor];
  [grayColor set];

  v11 = (tag - 765000);
  v12 = v11 * 1.5;
  if (tag < 0xBAC4F)
  {
    v11 = v11 * 1.25;
  }

  if (tag >= 765003)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = (38.0 - v13) * 0.5;
  v15 = v14;
  v16 = v13;
  CGContextFillEllipseInRect(v7, *(&v13 - 2));
  CGContextRestoreGState(v7);
  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v17;
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end