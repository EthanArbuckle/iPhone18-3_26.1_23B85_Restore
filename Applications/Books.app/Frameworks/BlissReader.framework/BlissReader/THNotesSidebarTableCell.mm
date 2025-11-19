@interface THNotesSidebarTableCell
- (BOOL)bottomBorderVisible;
- (BOOL)imageBorderVisible;
- (BOOL)topBorderVisible;
- (THNotesSidebarTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UILabel)noResultsLabel;
- (void)_updateCountLabel;
- (void)p_handleHighlightChange:(BOOL)a3;
- (void)prepareForReuse;
- (void)setAnnotationCount:(unint64_t)a3;
- (void)setBottomBorderVisible:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setImageBorderVisible:(BOOL)a3;
- (void)setNeedsMigration:(BOOL)a3;
- (void)setSectionProvider:(id)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setTopBorderVisible:(BOOL)a3;
@end

@implementation THNotesSidebarTableCell

- (THNotesSidebarTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = THNotesSidebarTableCell;
  v4 = [(THNotesSidebarTableCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(THNotesSidebarTableCell *)v4 p_borderWidth];
    v7 = v6;
    v8 = [(THNotesSidebarTableCell *)v5 imageBorderWidthConstraint];
    [v8 setConstant:v7];

    v9 = [(THNotesSidebarTableCell *)v5 topBorderWidthConstraint];
    [v9 setConstant:v7];

    v10 = [(THNotesSidebarTableCell *)v5 bottomBorderWidthConstraint];
    [v10 setConstant:v7];

    [(THNotesSidebarTableCell *)v5 p_handleHighlightChange:0];
  }

  return v5;
}

- (void)setNeedsMigration:(BOOL)a3
{
  if (self->_needsMigration != a3)
  {
    self->_needsMigration = a3;
    [(THNotesSidebarTableCell *)self _updateCountLabel];
  }
}

- (void)setAnnotationCount:(unint64_t)a3
{
  if (self->_annotationCount != a3)
  {
    self->_annotationCount = a3;
    [(THNotesSidebarTableCell *)self _updateCountLabel];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = THNotesSidebarTableCell;
  [(THNotesSidebarTableCell *)&v3 prepareForReuse];
  [(THNotesSidebarTableCell *)self setDelegate:0];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(THNotesSidebarTableCell *)self isSelected];
  v9.receiver = self;
  v9.super_class = THNotesSidebarTableCell;
  [(THNotesSidebarTableCell *)&v9 setSelected:v5 animated:v4];
  [(THNotesSidebarTableCell *)self p_handleHighlightChange:v5];
  if (v7 != v5)
  {
    v8 = [(THNotesSidebarTableCell *)self delegate];
    [v8 notesSidebarCell:self selectionDidChange:v5];
  }
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(THNotesSidebarTableCell *)self isHighlighted];
  v9.receiver = self;
  v9.super_class = THNotesSidebarTableCell;
  [(THNotesSidebarTableCell *)&v9 setHighlighted:v5 animated:v4];
  [(THNotesSidebarTableCell *)self p_handleHighlightChange:v5];
  if (v7 != v5)
  {
    v8 = [(THNotesSidebarTableCell *)self delegate];
    [v8 notesSidebarCell:self highlightDidChange:v5];
  }
}

- (void)setSectionProvider:(id)a3
{
  v13 = a3;
  -[THNotesSidebarTableCell setAnnotationCount:](self, "setAnnotationCount:", [v13 annotationCount]);
  -[THNotesSidebarTableCell setNeedsMigration:](self, "setNeedsMigration:", [v13 needsMigration]);
  v4 = [v13 subtitle];

  if (v4)
  {
    v5 = [v13 subtitle];
    v6 = [(THNotesSidebarTableCell *)self chapterLabel];
    [v6 setText:v5];
  }

  else
  {
    v5 = [(THNotesSidebarTableCell *)self chapterLabel];
    [v5 setText:&stru_471858];
  }

  v7 = [v13 title];
  v8 = [(THNotesSidebarTableCell *)self chapterName];
  [v8 setText:v7];

  v9 = [v13 image];

  v10 = [(THNotesSidebarTableCell *)self chapterThumb];
  v11 = v10;
  if (v9)
  {
    [v10 setHidden:0];

    v11 = [v13 image];
    v12 = [(THNotesSidebarTableCell *)self chapterThumb];
    [v12 setImage:v11];
  }

  else
  {
    [v10 setHidden:1];
  }
}

- (void)p_handleHighlightChange:(BOOL)a3
{
  v4 = +[UIColor bc_booksSecondaryLabelColor];
  v5 = [(THNotesSidebarTableCell *)self countLabel];
  [v5 setTextColor:v4];

  v6 = +[UIColor bc_booksSecondaryLabelColor];
  v7 = [(THNotesSidebarTableCell *)self chapterLabel];
  [v7 setTextColor:v6];

  v8 = +[UIColor bc_booksLabelColor];
  v9 = [(THNotesSidebarTableCell *)self chapterName];
  [v9 setTextColor:v8];

  v10 = +[UIColor bc_booksSeparatorColor];
  v11 = [(THNotesSidebarTableCell *)self topBorder];
  [v11 setBackgroundColor:v10];

  v12 = +[UIColor bc_booksSeparatorColor];
  v13 = [(THNotesSidebarTableCell *)self bottomBorder];
  [v13 setBackgroundColor:v12];

  v15 = +[UIColor bc_booksSeparatorColor];
  v14 = [(THNotesSidebarTableCell *)self imageBorder];
  [v14 setBackgroundColor:v15];
}

- (BOOL)topBorderVisible
{
  v2 = [(THNotesSidebarTableCell *)self topBorderWidthConstraint];
  [v2 constant];
  v4 = v3 > 0.0;

  return v4;
}

- (void)setTopBorderVisible:(BOOL)a3
{
  v4 = 0.0;
  if (a3)
  {
    [(THNotesSidebarTableCell *)self p_borderWidth];
    v4 = v5;
  }

  v6 = [(THNotesSidebarTableCell *)self topBorderWidthConstraint];
  [v6 setConstant:v4];
}

- (BOOL)bottomBorderVisible
{
  v2 = [(THNotesSidebarTableCell *)self bottomBorderWidthConstraint];
  [v2 constant];
  v4 = v3 > 0.0;

  return v4;
}

- (void)setBottomBorderVisible:(BOOL)a3
{
  v4 = 0.0;
  if (a3)
  {
    [(THNotesSidebarTableCell *)self p_borderWidth];
    v4 = v5;
  }

  v6 = [(THNotesSidebarTableCell *)self bottomBorderWidthConstraint];
  [v6 setConstant:v4];
}

- (BOOL)imageBorderVisible
{
  v2 = [(THNotesSidebarTableCell *)self imageBorderWidthConstraint];
  [v2 constant];
  v4 = v3 > 0.0;

  return v4;
}

- (void)setImageBorderVisible:(BOOL)a3
{
  v4 = 0.0;
  if (a3)
  {
    [(THNotesSidebarTableCell *)self p_borderWidth];
    v4 = v5;
  }

  v6 = [(THNotesSidebarTableCell *)self imageBorderWidthConstraint];
  [v6 setConstant:v4];
}

- (void)_updateCountLabel
{
  if (![(THNotesSidebarTableCell *)self annotationCount])
  {
    v3 = &stru_471858;
    goto LABEL_5;
  }

  if ([(THNotesSidebarTableCell *)self needsMigration])
  {
    v3 = [NSString stringWithUTF8String:"…"];
LABEL_5:
    v6 = v3;
    goto LABEL_7;
  }

  v4 = [NSNumber numberWithUnsignedInteger:[(THNotesSidebarTableCell *)self annotationCount]];
  v6 = [NSNumberFormatter localizedStringFromNumber:v4 numberStyle:1];

LABEL_7:
  v5 = [(THNotesSidebarTableCell *)self countLabel];
  [v5 setText:v6];
}

- (UILabel)noResultsLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_noResultsLabel);

  return WeakRetained;
}

@end