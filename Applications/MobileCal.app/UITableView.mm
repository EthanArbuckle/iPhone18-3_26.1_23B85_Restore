@interface UITableView
- (void)setEditorBackgroundColor:(id)color;
@end

@implementation UITableView

- (void)setEditorBackgroundColor:(id)color
{
  colorCopy = color;
  if (!CalSplitViewEnabled() || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if ([(UITableView *)self style]== 1)
    {
      [(UITableView *)self setBackgroundColor:colorCopy];
    }
  }
}

@end