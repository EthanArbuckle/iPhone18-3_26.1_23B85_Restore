@interface THNotesDetailTableViewCell
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGRect)editControlCenteringRect;
- (CGRect)p_getFrameForViewWithTag:(int64_t)a3 parentView:(id)a4;
- (THNotesDetailTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 tableView:(id)a5 sizingDelegate:(id)a6;
- (void)copy:(id)a3;
- (void)dealloc;
- (void)p_handleGR:(id)a3;
- (void)p_hideView:(BOOL)a3 withTag:(int64_t)a4 subViewOf:(id)a5;
- (void)p_setTransform:(CGAffineTransform *)a3 onViewWithTag:(int64_t)a4 parentView:(id)a5;
- (void)populateWithCellController:(id)a3 annotation:(id)a4 cellWidth:(double)a5 highlightLayer:(id)a6 highlightTextFrame:(CGRect)a7 editingHighlightLayer:(id)a8 pageNumberString:(id)a9 topAdjustment:(double)a10 showDivider:(BOOL)a11;
- (void)returnToBook:(id)a3;
- (void)searchText:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)willTransitionToState:(unint64_t)a3;
@end

@implementation THNotesDetailTableViewCell

- (THNotesDetailTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 tableView:(id)a5 sizingDelegate:(id)a6
{
  v18.receiver = self;
  v18.super_class = THNotesDetailTableViewCell;
  v8 = [(THNotesDetailTableViewCell *)&v18 initWithStyle:a3 reuseIdentifier:a4];
  v9 = v8;
  if (v8)
  {
    v8->mSizingDelegate = a6;
    [(THNotesDetailTableViewCell *)v8 setAutoresizesSubviews:1];
    [(THNotesDetailTableViewCell *)v9 setAutoresizingMask:18];
    [-[THNotesDetailTableViewCell contentView](v9 "contentView")];
    [-[THNotesDetailTableViewCell contentView](v9 "contentView")];
    [-[THNotesDetailTableViewCell contentView](v9 "contentView")];
    v10 = [UIView alloc];
    [(THNotesDetailTableViewCell *)v9 bounds];
    v11 = [v10 initWithFrame:?];
    v9->mMyView = v11;
    [(UIView *)v11 setTag:12];
    [(UIView *)v9->mMyView setAutoresizingMask:18];
    [(UIView *)v9->mMyView setAutoresizesSubviews:1];
    [(UIView *)v9->mMyView setBackgroundColor:+[UIColor bc_booksBackground]];
    [-[THNotesDetailTableViewCell contentView](v9 "contentView")];
    [(THNotesDetailTableViewCell *)v9 frame];
    v13 = v12;
    v15 = v14;
    [a5 frame];
    [(THNotesDetailTableViewCell *)v9 setFrame:v13, v15];
    v16 = objc_alloc_init(THNotesDetailTableViewCellLayoutManager);
    [(THNotesDetailTableViewCellLayoutManager *)v16 setDelegate:v9];
    [(THNotesDetailTableViewCell *)v9 setLayoutManager:v16];
  }

  return v9;
}

- (void)dealloc
{
  self->mIndexPath = 0;

  self->mMyView = 0;
  self->mTableViewCellController = 0;

  self->mLongPressGR = 0;
  self->mHighlightedText = 0;

  self->mNoteText = 0;
  v3.receiver = self;
  v3.super_class = THNotesDetailTableViewCell;
  [(THNotesDetailTableViewCell *)&v3 dealloc];
}

- (void)populateWithCellController:(id)a3 annotation:(id)a4 cellWidth:(double)a5 highlightLayer:(id)a6 highlightTextFrame:(CGRect)a7 editingHighlightLayer:(id)a8 pageNumberString:(id)a9 topAdjustment:(double)a10 showDivider:(BOOL)a11
{
  v11 = a11;
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  [(THNotesDetailTableViewCell *)self setTableViewCellController:a3];
  [(UIView *)[(THNotesDetailTableViewCell *)self myView] bounds];
  [-[THNotesDetailTableViewCellController view](self->mTableViewCellController "view")];
  [(UIView *)[(THNotesDetailTableViewCell *)self myView] addSubview:[(THNotesDetailTableViewCellController *)self->mTableViewCellController view]];
  [(THNotesDetailTableViewCellController *)self->mTableViewCellController populateWithAnnotation:a4 cellWidth:a6 highlightLayer:a8 highlightTextFrame:a9 editingHighlightLayer:v11 pageNumberString:a5 topAdjustment:x showDivider:y, width, height, a10];
  [-[THNotesDetailTableViewCellController view](self->mTableViewCellController "view")];
  [(THNotesDetailTableViewCell *)self frame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [-[THNotesDetailTableViewCellController view](self->mTableViewCellController "view")];
  [(THNotesDetailTableViewCell *)self setFrame:v26, v28, v30];
  [(TSWButton *)[(THNotesDetailTableViewCellController *)self->mTableViewCellController returnToBook] frame];
  v31 = v42.origin.x;
  v32 = v42.origin.y;
  v33 = v42.size.width;
  v34 = v42.size.height;
  v35 = CGRectGetHeight(v42);
  v43.origin.x = v31;
  v43.origin.y = v32;
  v43.size.width = v33;
  v43.size.height = v34;
  v36 = CGRectGetWidth(v43);
  v37 = v35 * 0.5 + -60.0;
  if (v35 >= 60.0)
  {
    v37 = v35;
  }

  if (v36 < 60.0)
  {
    v36 = v36 * 0.5 + -60.0;
  }

  [(TSWButton *)[(THNotesDetailTableViewCellController *)self->mTableViewCellController returnToBook] setHitRegionEdgeInsets:floor(v37), floor(v36), ceil(v37), ceil(v36)];
  [(TSWButton *)[(THNotesDetailTableViewCellController *)self->mTableViewCellController returnToBook] addTarget:self action:"returnToBook:" forControlEvents:64];
  if (isPhone())
  {
    -[THNotesDetailTableViewCell setLongPressGR:](self, "setLongPressGR:", [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"p_handleGR:"]);
    [(UILongPressGestureRecognizer *)[(THNotesDetailTableViewCell *)self longPressGR] setDelegate:self];
    v38 = [(THNotesDetailTableViewCell *)self longPressGR];

    [(THNotesDetailTableViewCell *)self addGestureRecognizer:v38];
  }
}

- (void)copy:(id)a3
{
  if ([(THNotesDetailTableViewCell *)self highlightedText])
  {
    v4 = [(THBookViewController *)[(THNotesDetailTableViewController *)self->mMyTableViewController bookViewController] activityItemProviderWithCachedAnnotation:[(THNotesDetailTableViewCellController *)self->mTableViewCellController annotation]];
    if (!v4)
    {
      return;
    }

    v5 = [v4 pasteboardString];
  }

  else
  {
    if (![(THNotesDetailTableViewCell *)self noteText])
    {
      return;
    }

    v5 = [(THNotesDetailTableViewCell *)self noteText];
  }

  v6 = v5;
  if (v5)
  {
    v7 = +[UIPasteboard generalPasteboard];

    [(UIPasteboard *)v7 setString:v6];
  }
}

- (void)returnToBook:(id)a3
{
  if ([(THNotesDetailTableViewCellController *)self->mTableViewCellController annotation]&& ([(THAnnotation *)[(THNotesDetailTableViewCellController *)self->mTableViewCellController annotation] annotationIsOrphan]& 1) == 0)
  {
    v4 = [(THNotesDetailTableViewController *)[(THNotesDetailTableViewCell *)self myTableViewController] delegate];
    v5 = [(THNotesDetailTableViewCell *)self myTableViewController];
    v6 = [(THNotesDetailTableViewCellController *)self->mTableViewCellController annotation];

    [(THNotesDetailTableViewControllerDelegate *)v4 tableViewController:v5 navigateToNote:v6];
  }
}

- (void)searchText:(id)a3
{
  if ([(THNotesDetailTableViewCell *)self highlightedText])
  {
    v4 = [(THNotesDetailTableViewCell *)self highlightedText];
  }

  else
  {
    v4 = [(THNotesDetailTableViewCell *)self noteText];
  }

  v5 = v4;
  v6 = [(THNotesDetailTableViewController *)[(THNotesDetailTableViewCell *)self myTableViewController] delegate];
  v7 = [(THNotesDetailTableViewCell *)self myTableViewController];

  [(THNotesDetailTableViewControllerDelegate *)v6 tableViewController:v7 searchBookForText:v5];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  if ([(THNotesDetailTableViewCell *)self longPressGR]!= a3)
  {
    return 1;
  }

  [(TSWButton *)[(THNotesDetailTableViewCellController *)self->mTableViewCellController returnToBook] bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [a4 locationInView:{-[THNotesDetailTableViewCellController returnToBook](self->mTableViewCellController, "returnToBook")}];
  v18.x = v16;
  v18.y = v17;
  v19.origin.x = v9;
  v19.origin.y = v11;
  v19.size.width = v13;
  v19.size.height = v15;
  return !CGRectContainsPoint(v19, v18) && ([(THNotesDetailTableViewCell *)self isEditing]& 1) == 0 && [(THNotesDetailTableViewCell *)self longPressGR]== a3;
}

- (void)p_handleGR:(id)a3
{
  self->mHighlightedText = 0;

  self->mNoteText = 0;
  [a3 locationInView:self];
  v6 = v5;
  v8 = v7;
  if ([(THNotesDetailTableViewCell *)self longPressGR]== a3)
  {
    [(THNotesDetailTableViewCellHighlightView *)[(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController] highlightView] frame];
    v35.x = v6;
    v35.y = v8;
    if (CGRectContainsPoint(v37, v35) && [-[THAnnotation annotationRepresentativeText](-[THNotesDetailTableViewCellController annotation](-[THNotesDetailTableViewCell tableViewCellController](self "tableViewCellController")])
    {
      [(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController] highlightTextFrame];
      [(THNotesDetailTableViewCell *)self convertRect:[(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController] highlightView] fromView:v9, v10, v11, v12];
      x = v13;
      y = v15;
      width = v17;
      height = v19;
      [(THNotesDetailTableViewCell *)self setHighlightedText:[(THAnnotation *)[(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController] annotation] annotationRepresentativeText]];
    }

    else
    {
      x = CGRectZero.origin.x;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      [(UILabel *)[(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController] noteLabel] frame];
      v36.x = v6;
      v36.y = v8;
      if (CGRectContainsPoint(v38, v36) && [-[THAnnotation annotationNote](-[THNotesDetailTableViewCellController annotation](-[THNotesDetailTableViewCell tableViewCellController](self "tableViewCellController")])
      {
        [(UILabel *)[(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController] noteLabel] frame];
        x = v21;
        y = v22;
        width = v23;
        height = v24;
        v25 = [+[NSParagraphStyle defaultParagraphStyle](NSParagraphStyle mutableCopy];
        [v25 setLineBreakMode:{-[UILabel lineBreakMode](-[THNotesDetailTableViewCellController noteLabel](-[THNotesDetailTableViewCell tableViewCellController](self, "tableViewCellController"), "noteLabel"), "lineBreakMode")}];
        v26 = [(UILabel *)[(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController] noteLabel] text];
        v33[0] = NSFontAttributeName;
        v33[1] = NSParagraphStyleAttributeName;
        v34[0] = [(UILabel *)[(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController] noteLabel] font];
        v34[1] = v25;
        [(NSString *)v26 boundingRectWithSize:1 options:[NSDictionary dictionaryWithObjects:v33 forKeys:2 count:?], 0, width, height];
        v28 = v27;
        v30 = v29;

        if (v28 < width)
        {
          height = v30;
          width = v28;
        }

        [(THNotesDetailTableViewCell *)self setNoteText:[(THAnnotation *)[(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController] annotation] annotationNote]];
      }
    }

    if ([(THNotesDetailTableViewCell *)self highlightedText]|| [(THNotesDetailTableViewCell *)self noteText])
    {
      [(THNotesDetailTableViewCell *)self becomeFirstResponder];
      v31 = +[UIMenuController sharedMenuController];
      v32 = [[UIMenuItem alloc] initWithTitle:objc_msgSend(THBundle() action:{"localizedStringForKey:value:table:", @"Search", &stru_471858, 0), "searchText:"}];
      [(UIMenuController *)v31 setMenuItems:[NSArray arrayWithObject:v32]];

      [(UIMenuController *)v31 setTargetRect:self inView:x, y, width, height];
      [(UIMenuController *)v31 setMenuVisible:1 animated:1];
    }
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if ("copy:" != a3)
  {
    return "searchText:" == a3;
  }

  if (![(THNotesDetailTableViewCellController *)self->mTableViewCellController annotation])
  {
    return 1;
  }

  v6 = [(THNotesDetailTableViewController *)self->mMyTableViewController bookViewController];

  return [(THBookViewController *)v6 allowCopy];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v8.receiver = self;
  v8.super_class = THNotesDetailTableViewCell;
  [THNotesDetailTableViewCell setEditing:"setEditing:animated:" animated:?];
  objc_opt_class();
  [(THNotesDetailTableViewCell *)self viewWithTag:4];
  v7 = TSUDynamicCast();
  if (v7)
  {
    [v7 setEditing:v5 animated:v4];
  }

  [(THNotesDetailTableViewCell *)self setNeedsLayout];
}

- (void)p_hideView:(BOOL)a3 withTag:(int64_t)a4 subViewOf:(id)a5
{
  v5 = a3;
  v6 = [a5 viewWithTag:a4];
  if (v6)
  {
    v7 = 1.0;
    if (v5)
    {
      v7 = 0.0;
    }

    [v6 setAlpha:v7];
  }
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  [CATransaction begin:a3];
  [CATransaction setDisableActions:1];
  [-[THNotesDetailTableViewCell selectedBackgroundView](self "selectedBackgroundView")];

  +[CATransaction commit];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6 = [(UIView *)[(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController:a3] highlightColorBar] backgroundColor];
  v7 = [(UIImageView *)[(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController] divider] backgroundColor];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v8.receiver = self;
  v8.super_class = THNotesDetailTableViewCell;
  [(THNotesDetailTableViewCell *)&v8 setSelected:v4 animated:0];
  [-[THNotesDetailTableViewCell selectedBackgroundView](self "selectedBackgroundView")];
  +[CATransaction commit];
  [(UIView *)[(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController] highlightColorBar] setBackgroundColor:v6];
  [(UIImageView *)[(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController] divider] setBackgroundColor:v7];
}

- (void)willTransitionToState:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = THNotesDetailTableViewCell;
  [(THNotesDetailTableViewCell *)&v7 willTransitionToState:?];
  self->mCellState = a3;
  if (a3 - 1 < 2)
  {
    v5 = 0;
    p_mTableViewCellController = &self->mTableViewCellController;
LABEL_3:
    [(TSWButton *)[(THNotesDetailTableViewCellController *)*p_mTableViewCellController returnToBook] setEnabled:v5];
    return;
  }

  if (!a3)
  {
    p_mTableViewCellController = &self->mTableViewCellController;
    if (([(THAnnotation *)[(THNotesDetailTableViewCellController *)*p_mTableViewCellController annotation] annotationIsOrphan]& 1) == 0)
    {
      v5 = 1;
      goto LABEL_3;
    }
  }
}

- (CGRect)p_getFrameForViewWithTag:(int64_t)a3 parentView:(id)a4
{
  v4 = [a4 viewWithTag:a3];

  [v4 frame];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)p_setTransform:(CGAffineTransform *)a3 onViewWithTag:(int64_t)a4 parentView:(id)a5
{
  v6 = [a5 viewWithTag:a4];
  v7 = *&a3->c;
  v8[0] = *&a3->a;
  v8[1] = v7;
  v8[2] = *&a3->tx;
  [v6 setTransform:v8];
}

- (CGRect)editControlCenteringRect
{
  v2 = [(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController] highlightColorBar];

  [(UIView *)v2 frame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end