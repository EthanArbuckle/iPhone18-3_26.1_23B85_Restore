@interface WFApertureIconAccessoryView
- (BOOL)isRunningFromActionButton;
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (WFApertureIconAccessoryView)initWithIcon:(id)icon runningContext:(id)context;
- (void)layoutSubviews;
- (void)openShortcutInEditor;
@end

@implementation WFApertureIconAccessoryView

- (BOOL)isRunningFromActionButton
{
  runningContext = [(WFApertureIconAccessoryView *)self runningContext];
  runSource = [runningContext runSource];
  v4 = [runSource isEqualToString:WFWorkflowRunSourceActionButton];

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  height = fits.height;
  width = fits.width;
  awaitingIconOwnershipSwap = [(WFApertureIconAccessoryView *)self awaitingIconOwnershipSwap];
  if (mode == 4 || !awaitingIconOwnershipSwap)
  {
    v11.receiver = self;
    v11.super_class = WFApertureIconAccessoryView;
    [(WFApertureIconAccessoryView *)&v11 sizeThatFits:width, height];
  }

  else
  {
    v9 = CGSizeZero.width;
    v10 = CGSizeZero.height;
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (void)openShortcutInEditor
{
  runningContext = [(WFApertureIconAccessoryView *)self runningContext];
  workflowIdentifier = [runningContext workflowIdentifier];

  if (workflowIdentifier)
  {
    runningContext2 = [(WFApertureIconAccessoryView *)self runningContext];
    workflowIdentifier2 = [runningContext2 workflowIdentifier];
    v7 = [NSString stringWithFormat:@"shortcuts://open-shortcut?id=%@", workflowIdentifier2];
    v9 = [NSURL URLWithString:v7];

    v8 = +[WFApplicationContext sharedContext];
    [v8 openURL:v9];
  }
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = WFApertureIconAccessoryView;
  [(WFApertureIconAccessoryView *)&v9 layoutSubviews];
  [(WFApertureIconAccessoryView *)self bounds];
  if (v3 <= 24.0)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = 1;
    v5 = 1;
  }

  [(WFApertureIconAccessoryView *)self setMode:v4 animated:v5];
  if ([(WFApertureIconAccessoryView *)self awaitingIconOwnershipSwap])
  {
    v6 = dispatch_time(0, 100000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005E18;
    block[3] = &unk_1000105A8;
    block[4] = self;
    dispatch_after(v6, &_dispatch_main_q, block);
  }

  else
  {
    systemApertureElementContext = [(WFApertureIconAccessoryView *)self systemApertureElementContext];
    [systemApertureElementContext setElementNeedsUpdate];
  }
}

- (WFApertureIconAccessoryView)initWithIcon:(id)icon runningContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = WFApertureIconAccessoryView;
  v8 = [(WFApertureIconAccessoryView *)&v13 initWithIcon:icon];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_runningContext, context);
    v9->_awaitingIconOwnershipSwap = [(WFApertureIconAccessoryView *)v9 isRunningFromActionButton];
    v10 = [[UITapGestureRecognizer alloc] initWithTarget:v9 action:"openShortcutInEditor"];
    [(WFApertureIconAccessoryView *)v9 addGestureRecognizer:v10];

    v11 = v9;
  }

  return v9;
}

@end