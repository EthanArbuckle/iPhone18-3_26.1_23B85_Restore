@interface WFApertureIconAccessoryView
- (BOOL)isRunningFromActionButton;
- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4;
- (WFApertureIconAccessoryView)initWithIcon:(id)a3 runningContext:(id)a4;
- (void)layoutSubviews;
- (void)openShortcutInEditor;
@end

@implementation WFApertureIconAccessoryView

- (BOOL)isRunningFromActionButton
{
  v2 = [(WFApertureIconAccessoryView *)self runningContext];
  v3 = [v2 runSource];
  v4 = [v3 isEqualToString:WFWorkflowRunSourceActionButton];

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [(WFApertureIconAccessoryView *)self awaitingIconOwnershipSwap];
  if (a4 == 4 || !v8)
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
  v3 = [(WFApertureIconAccessoryView *)self runningContext];
  v4 = [v3 workflowIdentifier];

  if (v4)
  {
    v5 = [(WFApertureIconAccessoryView *)self runningContext];
    v6 = [v5 workflowIdentifier];
    v7 = [NSString stringWithFormat:@"shortcuts://open-shortcut?id=%@", v6];
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
    v7 = [(WFApertureIconAccessoryView *)self systemApertureElementContext];
    [v7 setElementNeedsUpdate];
  }
}

- (WFApertureIconAccessoryView)initWithIcon:(id)a3 runningContext:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = WFApertureIconAccessoryView;
  v8 = [(WFApertureIconAccessoryView *)&v13 initWithIcon:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_runningContext, a4);
    v9->_awaitingIconOwnershipSwap = [(WFApertureIconAccessoryView *)v9 isRunningFromActionButton];
    v10 = [[UITapGestureRecognizer alloc] initWithTarget:v9 action:"openShortcutInEditor"];
    [(WFApertureIconAccessoryView *)v9 addGestureRecognizer:v10];

    v11 = v9;
  }

  return v9;
}

@end