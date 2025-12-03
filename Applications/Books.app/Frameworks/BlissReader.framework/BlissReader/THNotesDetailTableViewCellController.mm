@interface THNotesDetailTableViewCellController
- (CGRect)highlightTextFrame;
- (THNotesDetailTableViewCellController)initWithSizingDelegate:(id)delegate;
- (void)dealloc;
- (void)populateWithAnnotation:(id)annotation cellWidth:(double)width highlightLayer:(id)layer highlightTextFrame:(CGRect)frame editingHighlightLayer:(id)highlightLayer pageNumberString:(id)string topAdjustment:(double)adjustment showDivider:(BOOL)self0;
@end

@implementation THNotesDetailTableViewCellController

- (THNotesDetailTableViewCellController)initWithSizingDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = THNotesDetailTableViewCellController;
  result = [(THNotesDetailTableViewCellController *)&v5 init];
  if (result)
  {
    result->mSizingDelegate = delegate;
  }

  return result;
}

- (void)dealloc
{
  self->mNoteLabel = 0;

  self->mReturnToBook = 0;
  self->mDateLabel = 0;

  self->mDivider = 0;
  self->mAnnotation = 0;

  v3.receiver = self;
  v3.super_class = THNotesDetailTableViewCellController;
  [(THNotesDetailTableViewCellController *)&v3 dealloc];
}

- (void)populateWithAnnotation:(id)annotation cellWidth:(double)width highlightLayer:(id)layer highlightTextFrame:(CGRect)frame editingHighlightLayer:(id)highlightLayer pageNumberString:(id)string topAdjustment:(double)adjustment showDivider:(BOOL)self0
{
  dividerCopy = divider;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (!qword_567880)
  {
    qword_567880 = objc_alloc_init(NSDateFormatter);
    [qword_567880 setDateStyle:2];
    [qword_567880 setTimeStyle:1];
    [qword_567880 setDoesRelativeDateFormatting:1];
  }

  [(THNotesDetailTableViewCellController *)self setAnnotation:annotation, width, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height, adjustment];
  [(THNotesDetailTableViewCellHighlightView *)[(THNotesDetailTableViewCellController *)self highlightView] populateWithHighlgihtLayer:layer editingHighlightLayer:highlightLayer];
  [(THNotesDetailTableViewCellHighlightView *)[(THNotesDetailTableViewCellController *)self highlightView] setTag:4];
  [(THNotesDetailTableViewCellHighlightView *)[(THNotesDetailTableViewCellController *)self highlightView] setBackgroundColor:+[UIColor bc_booksBackground]];
  [(THNotesDetailTableViewCellHighlightView *)[(THNotesDetailTableViewCellController *)self highlightView] frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [(THNotesDetailTableViewCellHighlightView *)[(THNotesDetailTableViewCellController *)self highlightView] intrinsicContentSize];
  v27 = v26;
  [(THNotesDetailTableViewCellHighlightView *)[(THNotesDetailTableViewCellController *)self highlightView] setFrame:v21, v23, v25, v26];
  [(THNotesDetailTableViewCellController *)self setHighlightTextFrame:x, y, width, height];
  v28 = [objc_msgSend(annotation "annotationNote")];
  if (v28)
  {
    -[UILabel setText:](-[THNotesDetailTableViewCellController noteLabel](self, "noteLabel"), "setText:", [annotation annotationNote]);
    [(UILabel *)[(THNotesDetailTableViewCellController *)self noteLabel] setNumberOfLines:[(THNotesDetailSizingDelegate *)self->mSizingDelegate maxNoteLabelLines]];
    [(THNotesDetailSizingDelegate *)self->mSizingDelegate noteLabelHorizontalInset];
    v30 = v29;
    v82.origin.x = v21;
    v82.origin.y = v23;
    v82.size.width = v25;
    v82.size.height = v27;
    MaxY = CGRectGetMaxY(v82);
    [(THNotesDetailSizingDelegate *)self->mSizingDelegate marginAboveNote];
    v33 = MaxY + v32;
    [(THNotesDetailSizingDelegate *)self->mSizingDelegate rightMargin];
    v35 = width - v30 - v34;
    [(UILabel *)[(THNotesDetailTableViewCellController *)self noteLabel] sizeThatFits:v35, 100000.0];
    v37 = v36;
  }

  else
  {
    [(UILabel *)[(THNotesDetailTableViewCellController *)self noteLabel] frame];
    v30 = v38;
    v33 = v39;
    v35 = v40;
    v37 = 0.0;
  }

  [(UILabel *)[(THNotesDetailTableViewCellController *)self noteLabel] setFrame:v30, v33, v35, v37];
  [(UILabel *)[(THNotesDetailTableViewCellController *)self noteLabel] setTag:6];
  [(UILabel *)[(THNotesDetailTableViewCellController *)self noteLabel] setTextColor:+[UIColor bc_booksLabelColor]];
  -[UIView setBackgroundColor:](-[THNotesDetailTableViewCellController highlightColorBar](self, "highlightColorBar"), "setBackgroundColor:", [+[AEAnnotationTheme themeForAnnotationStyle:pageTheme:isUnderline:](AEAnnotationTheme themeForAnnotationStyle:objc_msgSend(annotation pageTheme:"annotationStyle") isUnderline:{4, objc_msgSend(annotation, "annotationIsUnderline")), "notesSidebarBarColor"}]);
  [(UIView *)[(THNotesDetailTableViewCellController *)self highlightColorBar] frame];
  v42 = v41;
  v44 = v43;
  [(THNotesDetailSizingDelegate *)self->mSizingDelegate colorBarHorizontalInset];
  v46 = v45;
  v83.origin.x = v21;
  v83.origin.y = v23;
  v83.size.width = v25;
  v83.size.height = v27;
  v47 = CGRectGetMaxY(v83);
  [(THNotesDetailSizingDelegate *)self->mSizingDelegate highlightColorBarDescent];
  [(UIView *)[(THNotesDetailTableViewCellController *)self highlightColorBar] setFrame:v46, v42, v44, v47 + v48 - v42];
  annotationCreationDate = [annotation annotationCreationDate];
  -[UILabel setText:](-[THNotesDetailTableViewCellController dateLabel](self, "dateLabel"), "setText:", [qword_567880 stringFromDate:annotationCreationDate]);
  [(UILabel *)[(THNotesDetailTableViewCellController *)self dateLabel] sizeToFit];
  [(UILabel *)[(THNotesDetailTableViewCellController *)self dateLabel] setTag:7];
  [(UILabel *)[(THNotesDetailTableViewCellController *)self dateLabel] frame];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  [(THNotesDetailSizingDelegate *)self->mSizingDelegate dateLabelHorizontalInset];
  [(UILabel *)[(THNotesDetailTableViewCellController *)self dateLabel] setFrame:v56, v51, v53, v55];
  if (!string)
  {
    string = &stru_471858;
  }

  [(TSWButton *)[(THNotesDetailTableViewCellController *)self returnToBook] setTitle:string forState:0];
  annotationIsOrphan = [(THAnnotation *)[(THNotesDetailTableViewCellController *)self annotation] annotationIsOrphan];
  returnToBook = [(THNotesDetailTableViewCellController *)self returnToBook];
  if (annotationIsOrphan)
  {
    [(TSWButton *)returnToBook setEnabled:0];
    [(TSWButton *)[(THNotesDetailTableViewCellController *)self returnToBook] setAlpha:0.0];
  }

  else
  {
    [(TSWButton *)returnToBook setTag:5];
    [(TSWButton *)[(THNotesDetailTableViewCellController *)self returnToBook] frame];
    v60 = fmin(v59 + -32.0, 0.0) * 0.5;
    [(TSWButton *)[(THNotesDetailTableViewCellController *)self returnToBook] frame];
    [(TSWButton *)[(THNotesDetailTableViewCellController *)self returnToBook] setHitRegionEdgeInsets:v60, fmin(v61 + -32.0, 0.0), v60, 0.0];
  }

  v62 = !dividerCopy;
  [(UIImageView *)[(THNotesDetailTableViewCellController *)self divider] setHidden:v62];
  if (!v62)
  {
    [(UIImageView *)[(THNotesDetailTableViewCellController *)self divider] setBackgroundColor:+[UIColor bc_booksSeparatorColor]];
    [(UIImageView *)[(THNotesDetailTableViewCellController *)self divider] frame];
    v64 = v63;
    v66 = v65;
    v68 = v67;
    TSUScreenScale();
    [(UIImageView *)[(THNotesDetailTableViewCellController *)self divider] setFrame:v64, v66 - 1.0 / v69, v68, 1.0 / v69];
  }

  [(UIImageView *)[(THNotesDetailTableViewCellController *)self divider] setTag:3];
  [-[THNotesDetailTableViewCellController view](self "view")];
  v71 = v70;
  v73 = v72;
  v75 = v74;
  if (v28)
  {
    noteLabel = [(THNotesDetailTableViewCellController *)self noteLabel];
  }

  else
  {
    noteLabel = [(THNotesDetailTableViewCellController *)self highlightView];
  }

  [(UILabel *)noteLabel frame];
  v77 = CGRectGetMaxY(v84);
  [(THNotesDetailSizingDelegate *)self->mSizingDelegate marginAboveSeparator];
  [-[THNotesDetailTableViewCellController view](self "view")];
  view = [(THNotesDetailTableViewCellController *)self view];

  [view setTag:9];
}

- (CGRect)highlightTextFrame
{
  x = self->mHighlightTextFrame.origin.x;
  y = self->mHighlightTextFrame.origin.y;
  width = self->mHighlightTextFrame.size.width;
  height = self->mHighlightTextFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end