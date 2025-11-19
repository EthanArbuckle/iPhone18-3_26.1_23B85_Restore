@interface TSWTableView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation TSWTableView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v17.receiver = self;
  v17.super_class = TSWTableView;
  v5 = [(TSWTableView *)&v17 hitTest:a4 withEvent:a3.x, a3.y];
  if ([-[TSWTableView subviews](self "subviews")] && (objc_msgSend(objc_msgSend(-[TSWTableView subviews](self, "subviews"), "firstObject"), "bounds"), v7 = v6, v9 = v8, v11 = v10, v13 = v12, -[TSWTableView bounds](self, "bounds"), v19.origin.x = v7, v19.origin.y = v9, v19.size.width = v11, v19.size.height = v13, CGRectEqualToRect(v18, v19)))
  {
    v14 = [-[TSWTableView subviews](self "subviews")];
  }

  else
  {
    v14 = 0;
  }

  if ([(TSWTableView *)self ignoresEventsOutsideCells])
  {
    if (v5 == self || v5 == v14)
    {
      return 0;
    }
  }

  return v5;
}

@end