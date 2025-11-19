@interface AKLineStylesViewController
+ (id)generateLineImageForTag:(int64_t)a3 selected:(BOOL)a4;
- (AKController)controller;
- (AKLineStylesViewController)initWithController:(id)a3;
- (id)indexPathForLineWidthTag:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)currentLineWidthTag;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)selectRowForTag:(int64_t)a3;
- (void)selectedLineWidthChanged:(int64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AKLineStylesViewController

- (AKLineStylesViewController)initWithController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AKLineStylesViewController;
  v5 = [(AKLineStylesViewController *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(AKLineStylesViewController *)v5 setController:v4];
    [(AKLineStylesViewController *)v6 setLineWidthTags:&unk_2851BAB90];
    v7 = [(AKLineStylesViewController *)v6 lineWidthTags];
    -[AKLineStylesViewController setPreferredContentSize:](v6, "setPreferredContentSize:", 60.0, (48 * [v7 count]));
  }

  return v6;
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = AKLineStylesViewController;
  [(AKLineStylesViewController *)&v23 viewDidLoad];
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [(AKLineStylesViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc(MEMORY[0x277D75B40]);
  v6 = [v5 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(AKLineStylesViewController *)self setTableView:v6];

  v7 = [(AKLineStylesViewController *)self tableView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [MEMORY[0x277D75348] clearColor];
  v9 = [(AKLineStylesViewController *)self tableView];
  [v9 setBackgroundColor:v8];

  v10 = [(AKLineStylesViewController *)self tableView];
  [v10 setAlwaysBounceVertical:0];

  v11 = [(AKLineStylesViewController *)self tableView];
  [v11 setSeparatorStyle:0];

  v12 = [(AKLineStylesViewController *)self tableView];
  [v12 setRowHeight:48.0];

  v13 = [(AKLineStylesViewController *)self tableView];
  [v13 setDelegate:self];

  v14 = [(AKLineStylesViewController *)self tableView];
  [v14 setDataSource:self];

  v15 = [(AKLineStylesViewController *)self tableView];
  [v15 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKLineStylesRowIdentifier"];

  v16 = [(AKLineStylesViewController *)self view];
  v17 = [(AKLineStylesViewController *)self tableView];
  [v16 addSubview:v17];

  v18 = _NSDictionaryOfVariableBindings(&cfstr_Tableview.isa, self->_tableView, 0);
  v19 = MEMORY[0x277CCAAD0];
  v20 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_tableView]|" options:0 metrics:0 views:v18];
  [v19 activateConstraints:v20];

  v21 = MEMORY[0x277CCAAD0];
  v22 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_tableView]|" options:0 metrics:0 views:v18];
  [v21 activateConstraints:v22];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AKLineStylesViewController;
  [(AKLineStylesViewController *)&v4 viewWillAppear:a3];
  [(AKLineStylesViewController *)self selectRowForTag:[(AKLineStylesViewController *)self currentLineWidthTag]];
}

- (id)indexPathForLineWidthTag:(int64_t)a3
{
  v4 = [(AKLineStylesViewController *)self lineWidthTags];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [v4 indexOfObject:v5];

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

- (void)selectRowForTag:(int64_t)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = [(AKLineStylesViewController *)self indexPathForLineWidthTag:a3];
  if (v4)
  {
    v5 = [(AKLineStylesViewController *)self tableView];
    v7[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [v5 reloadRowsAtIndexPaths:v6 withRowAnimation:0];
  }
}

- (int64_t)currentLineWidthTag
{
  v2 = [(AKLineStylesViewController *)self controller];
  v3 = [v2 attributeController];
  v4 = [v2 currentPageController];
  v5 = [v2 currentPageController];
  v6 = [v5 pageModelController];

  [v3 strokeWidth];
  v8 = round(v7);
  v9 = [v6 selectedAnnotations];
  [v4 modelBaseScaleFactor];
  v11 = v10;
  if ([v9 count] == 1)
  {
    v12 = [v9 anyObject];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [v9 anyObject];
      [v14 strokeWidth];
      v8 = round(v15 / v11);
    }
  }

  return v8 + 765000;
}

- (void)selectedLineWidthChanged:(int64_t)a3
{
  v5 = [(AKLineStylesViewController *)self tableView];
  v8 = [v5 selectedCell];

  if (v8)
  {
    v6 = (a3 - 765000);
    if ((a3 - 765001) >= 0xF)
    {
      v6 = a3;
    }

    [v8 setLineWidth:v6];
    [v8 setTag:a3];
    v7 = [(AKLineStylesViewController *)self controller];
    [v7 performActionForSender:v8];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(AKLineStylesViewController *)self lineWidthTags:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"AKLineStylesRowIdentifier" forIndexPath:v6];
  v8 = [(AKLineStylesViewController *)self lineWidthTags];
  v9 = [v6 row];

  v10 = [v8 objectAtIndex:v9];
  v11 = [v10 integerValue];

  v12 = [objc_opt_class() generateLineImageForTag:v11 selected:{v11 == -[AKLineStylesViewController currentLineWidthTag](self, "currentLineWidthTag")}];
  v13 = [v7 imageView];
  [v13 setImage:v12];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AKLineStylesViewController *)self lineWidthTags];
  v9 = [v6 row];

  v10 = [v8 objectAtIndex:v9];

  -[AKLineStylesViewController selectedLineWidthChanged:](self, "selectedLineWidthChanged:", [v10 integerValue]);
  [v7 reloadData];
}

+ (id)generateLineImageForTag:(int64_t)a3 selected:(BOOL)a4
{
  v4 = a4;
  v20.width = 38.0;
  v20.height = 38.0;
  UIGraphicsBeginImageContextWithOptions(v20, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v7 = CurrentContext;
  if (v4)
  {
    CGContextSaveGState(CurrentContext);
    v21.size.width = 36.0;
    v21.origin.x = 1.0;
    v21.origin.y = 1.0;
    v21.size.height = 36.0;
    v8 = CGPathCreateWithEllipseInRect(v21, 0);
    v9 = [MEMORY[0x277D75348] systemBlueColor];
    CGContextSetStrokeColorWithColor(v7, [v9 CGColor]);

    CGContextSetLineWidth(v7, 2.0);
    CGContextAddPath(v7, v8);
    CGContextStrokePath(v7);
    CGPathRelease(v8);
    CGContextRestoreGState(v7);
  }

  CGContextSaveGState(v7);
  v10 = [MEMORY[0x277D75348] grayColor];
  [v10 set];

  v11 = (a3 - 765000);
  v12 = v11 * 1.5;
  if (a3 < 0xBAC4F)
  {
    v11 = v11 * 1.25;
  }

  if (a3 >= 765003)
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