@interface UITableView
- (void)setEditorBackgroundColor:(id)a3;
@end

@implementation UITableView

- (void)setEditorBackgroundColor:(id)a3
{
  v4 = a3;
  if (!CalSplitViewEnabled() || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if ([(UITableView *)self style]== 1)
    {
      [(UITableView *)self setBackgroundColor:v4];
    }
  }
}

@end