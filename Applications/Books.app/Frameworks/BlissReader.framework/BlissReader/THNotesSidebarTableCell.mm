@interface THNotesSidebarTableCell
- (BOOL)bottomBorderVisible;
- (BOOL)imageBorderVisible;
- (BOOL)topBorderVisible;
- (THNotesSidebarTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UILabel)noResultsLabel;
- (void)_updateCountLabel;
- (void)p_handleHighlightChange:(BOOL)change;
- (void)prepareForReuse;
- (void)setAnnotationCount:(unint64_t)count;
- (void)setBottomBorderVisible:(BOOL)visible;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setImageBorderVisible:(BOOL)visible;
- (void)setNeedsMigration:(BOOL)migration;
- (void)setSectionProvider:(id)provider;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setTopBorderVisible:(BOOL)visible;
@end

@implementation THNotesSidebarTableCell

- (THNotesSidebarTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = THNotesSidebarTableCell;
  v4 = [(THNotesSidebarTableCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(THNotesSidebarTableCell *)v4 p_borderWidth];
    v7 = v6;
    imageBorderWidthConstraint = [(THNotesSidebarTableCell *)v5 imageBorderWidthConstraint];
    [imageBorderWidthConstraint setConstant:v7];

    topBorderWidthConstraint = [(THNotesSidebarTableCell *)v5 topBorderWidthConstraint];
    [topBorderWidthConstraint setConstant:v7];

    bottomBorderWidthConstraint = [(THNotesSidebarTableCell *)v5 bottomBorderWidthConstraint];
    [bottomBorderWidthConstraint setConstant:v7];

    [(THNotesSidebarTableCell *)v5 p_handleHighlightChange:0];
  }

  return v5;
}

- (void)setNeedsMigration:(BOOL)migration
{
  if (self->_needsMigration != migration)
  {
    self->_needsMigration = migration;
    [(THNotesSidebarTableCell *)self _updateCountLabel];
  }
}

- (void)setAnnotationCount:(unint64_t)count
{
  if (self->_annotationCount != count)
  {
    self->_annotationCount = count;
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

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  isSelected = [(THNotesSidebarTableCell *)self isSelected];
  v9.receiver = self;
  v9.super_class = THNotesSidebarTableCell;
  [(THNotesSidebarTableCell *)&v9 setSelected:selectedCopy animated:animatedCopy];
  [(THNotesSidebarTableCell *)self p_handleHighlightChange:selectedCopy];
  if (isSelected != selectedCopy)
  {
    delegate = [(THNotesSidebarTableCell *)self delegate];
    [delegate notesSidebarCell:self selectionDidChange:selectedCopy];
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  highlightedCopy = highlighted;
  isHighlighted = [(THNotesSidebarTableCell *)self isHighlighted];
  v9.receiver = self;
  v9.super_class = THNotesSidebarTableCell;
  [(THNotesSidebarTableCell *)&v9 setHighlighted:highlightedCopy animated:animatedCopy];
  [(THNotesSidebarTableCell *)self p_handleHighlightChange:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    delegate = [(THNotesSidebarTableCell *)self delegate];
    [delegate notesSidebarCell:self highlightDidChange:highlightedCopy];
  }
}

- (void)setSectionProvider:(id)provider
{
  providerCopy = provider;
  -[THNotesSidebarTableCell setAnnotationCount:](self, "setAnnotationCount:", [providerCopy annotationCount]);
  -[THNotesSidebarTableCell setNeedsMigration:](self, "setNeedsMigration:", [providerCopy needsMigration]);
  subtitle = [providerCopy subtitle];

  if (subtitle)
  {
    subtitle2 = [providerCopy subtitle];
    chapterLabel = [(THNotesSidebarTableCell *)self chapterLabel];
    [chapterLabel setText:subtitle2];
  }

  else
  {
    subtitle2 = [(THNotesSidebarTableCell *)self chapterLabel];
    [subtitle2 setText:&stru_471858];
  }

  title = [providerCopy title];
  chapterName = [(THNotesSidebarTableCell *)self chapterName];
  [chapterName setText:title];

  image = [providerCopy image];

  chapterThumb = [(THNotesSidebarTableCell *)self chapterThumb];
  image2 = chapterThumb;
  if (image)
  {
    [chapterThumb setHidden:0];

    image2 = [providerCopy image];
    chapterThumb2 = [(THNotesSidebarTableCell *)self chapterThumb];
    [chapterThumb2 setImage:image2];
  }

  else
  {
    [chapterThumb setHidden:1];
  }
}

- (void)p_handleHighlightChange:(BOOL)change
{
  v4 = +[UIColor bc_booksSecondaryLabelColor];
  countLabel = [(THNotesSidebarTableCell *)self countLabel];
  [countLabel setTextColor:v4];

  v6 = +[UIColor bc_booksSecondaryLabelColor];
  chapterLabel = [(THNotesSidebarTableCell *)self chapterLabel];
  [chapterLabel setTextColor:v6];

  v8 = +[UIColor bc_booksLabelColor];
  chapterName = [(THNotesSidebarTableCell *)self chapterName];
  [chapterName setTextColor:v8];

  v10 = +[UIColor bc_booksSeparatorColor];
  topBorder = [(THNotesSidebarTableCell *)self topBorder];
  [topBorder setBackgroundColor:v10];

  v12 = +[UIColor bc_booksSeparatorColor];
  bottomBorder = [(THNotesSidebarTableCell *)self bottomBorder];
  [bottomBorder setBackgroundColor:v12];

  v15 = +[UIColor bc_booksSeparatorColor];
  imageBorder = [(THNotesSidebarTableCell *)self imageBorder];
  [imageBorder setBackgroundColor:v15];
}

- (BOOL)topBorderVisible
{
  topBorderWidthConstraint = [(THNotesSidebarTableCell *)self topBorderWidthConstraint];
  [topBorderWidthConstraint constant];
  v4 = v3 > 0.0;

  return v4;
}

- (void)setTopBorderVisible:(BOOL)visible
{
  v4 = 0.0;
  if (visible)
  {
    [(THNotesSidebarTableCell *)self p_borderWidth];
    v4 = v5;
  }

  topBorderWidthConstraint = [(THNotesSidebarTableCell *)self topBorderWidthConstraint];
  [topBorderWidthConstraint setConstant:v4];
}

- (BOOL)bottomBorderVisible
{
  bottomBorderWidthConstraint = [(THNotesSidebarTableCell *)self bottomBorderWidthConstraint];
  [bottomBorderWidthConstraint constant];
  v4 = v3 > 0.0;

  return v4;
}

- (void)setBottomBorderVisible:(BOOL)visible
{
  v4 = 0.0;
  if (visible)
  {
    [(THNotesSidebarTableCell *)self p_borderWidth];
    v4 = v5;
  }

  bottomBorderWidthConstraint = [(THNotesSidebarTableCell *)self bottomBorderWidthConstraint];
  [bottomBorderWidthConstraint setConstant:v4];
}

- (BOOL)imageBorderVisible
{
  imageBorderWidthConstraint = [(THNotesSidebarTableCell *)self imageBorderWidthConstraint];
  [imageBorderWidthConstraint constant];
  v4 = v3 > 0.0;

  return v4;
}

- (void)setImageBorderVisible:(BOOL)visible
{
  v4 = 0.0;
  if (visible)
  {
    [(THNotesSidebarTableCell *)self p_borderWidth];
    v4 = v5;
  }

  imageBorderWidthConstraint = [(THNotesSidebarTableCell *)self imageBorderWidthConstraint];
  [imageBorderWidthConstraint setConstant:v4];
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
  countLabel = [(THNotesSidebarTableCell *)self countLabel];
  [countLabel setText:v6];
}

- (UILabel)noResultsLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_noResultsLabel);

  return WeakRetained;
}

@end