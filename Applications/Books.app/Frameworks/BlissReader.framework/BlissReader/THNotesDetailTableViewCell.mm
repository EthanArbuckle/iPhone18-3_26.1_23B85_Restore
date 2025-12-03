@interface THNotesDetailTableViewCell
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGRect)editControlCenteringRect;
- (CGRect)p_getFrameForViewWithTag:(int64_t)tag parentView:(id)view;
- (THNotesDetailTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier tableView:(id)view sizingDelegate:(id)delegate;
- (void)copy:(id)copy;
- (void)dealloc;
- (void)p_handleGR:(id)r;
- (void)p_hideView:(BOOL)view withTag:(int64_t)tag subViewOf:(id)of;
- (void)p_setTransform:(CGAffineTransform *)transform onViewWithTag:(int64_t)tag parentView:(id)view;
- (void)populateWithCellController:(id)controller annotation:(id)annotation cellWidth:(double)width highlightLayer:(id)layer highlightTextFrame:(CGRect)frame editingHighlightLayer:(id)highlightLayer pageNumberString:(id)string topAdjustment:(double)self0 showDivider:(BOOL)self1;
- (void)returnToBook:(id)book;
- (void)searchText:(id)text;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)willTransitionToState:(unint64_t)state;
@end

@implementation THNotesDetailTableViewCell

- (THNotesDetailTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier tableView:(id)view sizingDelegate:(id)delegate
{
  v18.receiver = self;
  v18.super_class = THNotesDetailTableViewCell;
  v8 = [(THNotesDetailTableViewCell *)&v18 initWithStyle:style reuseIdentifier:identifier];
  v9 = v8;
  if (v8)
  {
    v8->mSizingDelegate = delegate;
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
    [view frame];
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

- (void)populateWithCellController:(id)controller annotation:(id)annotation cellWidth:(double)width highlightLayer:(id)layer highlightTextFrame:(CGRect)frame editingHighlightLayer:(id)highlightLayer pageNumberString:(id)string topAdjustment:(double)self0 showDivider:(BOOL)self1
{
  dividerCopy = divider;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(THNotesDetailTableViewCell *)self setTableViewCellController:controller];
  [(UIView *)[(THNotesDetailTableViewCell *)self myView] bounds];
  [-[THNotesDetailTableViewCellController view](self->mTableViewCellController "view")];
  [(UIView *)[(THNotesDetailTableViewCell *)self myView] addSubview:[(THNotesDetailTableViewCellController *)self->mTableViewCellController view]];
  [(THNotesDetailTableViewCellController *)self->mTableViewCellController populateWithAnnotation:annotation cellWidth:layer highlightLayer:highlightLayer highlightTextFrame:string editingHighlightLayer:dividerCopy pageNumberString:width topAdjustment:x showDivider:y, width, height, adjustment];
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
    longPressGR = [(THNotesDetailTableViewCell *)self longPressGR];

    [(THNotesDetailTableViewCell *)self addGestureRecognizer:longPressGR];
  }
}

- (void)copy:(id)copy
{
  if ([(THNotesDetailTableViewCell *)self highlightedText])
  {
    v4 = [(THBookViewController *)[(THNotesDetailTableViewController *)self->mMyTableViewController bookViewController] activityItemProviderWithCachedAnnotation:[(THNotesDetailTableViewCellController *)self->mTableViewCellController annotation]];
    if (!v4)
    {
      return;
    }

    pasteboardString = [v4 pasteboardString];
  }

  else
  {
    if (![(THNotesDetailTableViewCell *)self noteText])
    {
      return;
    }

    pasteboardString = [(THNotesDetailTableViewCell *)self noteText];
  }

  v6 = pasteboardString;
  if (pasteboardString)
  {
    v7 = +[UIPasteboard generalPasteboard];

    [(UIPasteboard *)v7 setString:v6];
  }
}

- (void)returnToBook:(id)book
{
  if ([(THNotesDetailTableViewCellController *)self->mTableViewCellController annotation]&& ([(THAnnotation *)[(THNotesDetailTableViewCellController *)self->mTableViewCellController annotation] annotationIsOrphan]& 1) == 0)
  {
    delegate = [(THNotesDetailTableViewController *)[(THNotesDetailTableViewCell *)self myTableViewController] delegate];
    myTableViewController = [(THNotesDetailTableViewCell *)self myTableViewController];
    annotation = [(THNotesDetailTableViewCellController *)self->mTableViewCellController annotation];

    [(THNotesDetailTableViewControllerDelegate *)delegate tableViewController:myTableViewController navigateToNote:annotation];
  }
}

- (void)searchText:(id)text
{
  if ([(THNotesDetailTableViewCell *)self highlightedText])
  {
    highlightedText = [(THNotesDetailTableViewCell *)self highlightedText];
  }

  else
  {
    highlightedText = [(THNotesDetailTableViewCell *)self noteText];
  }

  v5 = highlightedText;
  delegate = [(THNotesDetailTableViewController *)[(THNotesDetailTableViewCell *)self myTableViewController] delegate];
  myTableViewController = [(THNotesDetailTableViewCell *)self myTableViewController];

  [(THNotesDetailTableViewControllerDelegate *)delegate tableViewController:myTableViewController searchBookForText:v5];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if ([(THNotesDetailTableViewCell *)self longPressGR]!= recognizer)
  {
    return 1;
  }

  [(TSWButton *)[(THNotesDetailTableViewCellController *)self->mTableViewCellController returnToBook] bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [touch locationInView:{-[THNotesDetailTableViewCellController returnToBook](self->mTableViewCellController, "returnToBook")}];
  v18.x = v16;
  v18.y = v17;
  v19.origin.x = v9;
  v19.origin.y = v11;
  v19.size.width = v13;
  v19.size.height = v15;
  return !CGRectContainsPoint(v19, v18) && ([(THNotesDetailTableViewCell *)self isEditing]& 1) == 0 && [(THNotesDetailTableViewCell *)self longPressGR]== recognizer;
}

- (void)p_handleGR:(id)r
{
  self->mHighlightedText = 0;

  self->mNoteText = 0;
  [r locationInView:self];
  v6 = v5;
  v8 = v7;
  if ([(THNotesDetailTableViewCell *)self longPressGR]== r)
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
        text = [(UILabel *)[(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController] noteLabel] text];
        v33[0] = NSFontAttributeName;
        v33[1] = NSParagraphStyleAttributeName;
        v34[0] = [(UILabel *)[(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController] noteLabel] font];
        v34[1] = v25;
        [(NSString *)text boundingRectWithSize:1 options:[NSDictionary dictionaryWithObjects:v33 forKeys:2 count:?], 0, width, height];
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if ("copy:" != action)
  {
    return "searchText:" == action;
  }

  if (![(THNotesDetailTableViewCellController *)self->mTableViewCellController annotation])
  {
    return 1;
  }

  bookViewController = [(THNotesDetailTableViewController *)self->mMyTableViewController bookViewController];

  return [(THBookViewController *)bookViewController allowCopy];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v8.receiver = self;
  v8.super_class = THNotesDetailTableViewCell;
  [THNotesDetailTableViewCell setEditing:"setEditing:animated:" animated:?];
  objc_opt_class();
  [(THNotesDetailTableViewCell *)self viewWithTag:4];
  v7 = TSUDynamicCast();
  if (v7)
  {
    [v7 setEditing:editingCopy animated:animatedCopy];
  }

  [(THNotesDetailTableViewCell *)self setNeedsLayout];
}

- (void)p_hideView:(BOOL)view withTag:(int64_t)tag subViewOf:(id)of
{
  viewCopy = view;
  v6 = [of viewWithTag:tag];
  if (v6)
  {
    v7 = 1.0;
    if (viewCopy)
    {
      v7 = 0.0;
    }

    [v6 setAlpha:v7];
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  [CATransaction begin:highlighted];
  [CATransaction setDisableActions:1];
  [-[THNotesDetailTableViewCell selectedBackgroundView](self "selectedBackgroundView")];

  +[CATransaction commit];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selectedCopy = selected;
  backgroundColor = [(UIView *)[(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController:selected] highlightColorBar] backgroundColor];
  backgroundColor2 = [(UIImageView *)[(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController] divider] backgroundColor];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v8.receiver = self;
  v8.super_class = THNotesDetailTableViewCell;
  [(THNotesDetailTableViewCell *)&v8 setSelected:selectedCopy animated:0];
  [-[THNotesDetailTableViewCell selectedBackgroundView](self "selectedBackgroundView")];
  +[CATransaction commit];
  [(UIView *)[(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController] highlightColorBar] setBackgroundColor:backgroundColor];
  [(UIImageView *)[(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController] divider] setBackgroundColor:backgroundColor2];
}

- (void)willTransitionToState:(unint64_t)state
{
  v7.receiver = self;
  v7.super_class = THNotesDetailTableViewCell;
  [(THNotesDetailTableViewCell *)&v7 willTransitionToState:?];
  self->mCellState = state;
  if (state - 1 < 2)
  {
    v5 = 0;
    p_mTableViewCellController = &self->mTableViewCellController;
LABEL_3:
    [(TSWButton *)[(THNotesDetailTableViewCellController *)*p_mTableViewCellController returnToBook] setEnabled:v5];
    return;
  }

  if (!state)
  {
    p_mTableViewCellController = &self->mTableViewCellController;
    if (([(THAnnotation *)[(THNotesDetailTableViewCellController *)*p_mTableViewCellController annotation] annotationIsOrphan]& 1) == 0)
    {
      v5 = 1;
      goto LABEL_3;
    }
  }
}

- (CGRect)p_getFrameForViewWithTag:(int64_t)tag parentView:(id)view
{
  v4 = [view viewWithTag:tag];

  [v4 frame];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)p_setTransform:(CGAffineTransform *)transform onViewWithTag:(int64_t)tag parentView:(id)view
{
  v6 = [view viewWithTag:tag];
  v7 = *&transform->c;
  v8[0] = *&transform->a;
  v8[1] = v7;
  v8[2] = *&transform->tx;
  [v6 setTransform:v8];
}

- (CGRect)editControlCenteringRect
{
  highlightColorBar = [(THNotesDetailTableViewCellController *)[(THNotesDetailTableViewCell *)self tableViewCellController] highlightColorBar];

  [(UIView *)highlightColorBar frame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end