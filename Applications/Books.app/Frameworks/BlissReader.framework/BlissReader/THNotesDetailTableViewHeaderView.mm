@interface THNotesDetailTableViewHeaderView
- (CGSize)editControlImageSize;
- (THNotesDetailTableViewHeaderView)initWithReuseIdentifier:(id)a3;
- (id)backgroundView;
- (void)addChapterLabel:(id)a3;
- (void)addSectionLabel:(id)a3;
- (void)dealloc;
- (void)p_positionViewsForEditing:(BOOL)a3;
- (void)prepareForReuse;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setFrame:(CGRect)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation THNotesDetailTableViewHeaderView

- (THNotesDetailTableViewHeaderView)initWithReuseIdentifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = THNotesDetailTableViewHeaderView;
  v3 = [(THNotesDetailTableViewHeaderView *)&v8 initWithReuseIdentifier:a3];
  if (v3)
  {
    v3->_cellView = objc_alloc_init(UIView);
    [-[THNotesDetailTableViewHeaderView contentView](v3 "contentView")];
    v3->_editControlView = objc_alloc_init(UIView);
    [-[THNotesDetailTableViewHeaderView contentView](v3 "contentView")];
    v3->_editControlImage = [[UIImageView alloc] initWithImage:+[UIImage th_imageNamed:](UIImage highlightedImage:{"th_imageNamed:", @"notes-detail-header-edit-N", objc_msgSend(+[UIImage th_imageNamed:](UIImage, "th_imageNamed:", @"notes-detail-header-edit-A", "imageWithRenderingMode:", 2)}];
    [(UIImageView *)v3->_editControlImage setTintColor:+[UIColor bc_booksBlue]];
    [(UIImageView *)v3->_editControlImage setContentMode:4];
    [(UIView *)v3->_editControlView addSubview:v3->_editControlImage];
    [[(UIImageView *)v3->_editControlImage image] size];
    v3->_editControlImageSize.width = v4;
    v3->_editControlImageSize.height = v5;
    v3->_separator = objc_alloc_init(UIView);
    [(UIView *)v3->_separator setBackgroundColor:+[UIColor bc_booksSeparatorColor]];
    [-[THNotesDetailTableViewHeaderView contentView](v3 "contentView")];
    v6 = objc_alloc_init(UIButton);
    v3->_selectionButton = v6;
    [(UIButton *)v6 addTarget:v3 action:"headerCellPressed:" forControlEvents:64];
    [-[THNotesDetailTableViewHeaderView contentView](v3 "contentView")];
  }

  return v3;
}

- (void)prepareForReuse
{
  v12.receiver = self;
  v12.super_class = THNotesDetailTableViewHeaderView;
  [(THNotesDetailTableViewHeaderView *)&v12 prepareForReuse];
  self->_editing = 0;
  self->_selected = 0;
  self->_section = 0x7FFFFFFFFFFFFFFFLL;
  [(UIImageView *)self->_editControlImage setHighlighted:0];
  v3 = [(NSArray *)[(UIView *)[(THNotesDetailTableViewHeaderView *)self cellView] subviews] copy];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) removeFromSuperview];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)dealloc
{
  self->_cellView = 0;

  self->_editControlView = 0;
  self->_editControlImage = 0;

  self->_separator = 0;
  self->_selectionButton = 0;

  self->_chapterLabel = 0;
  self->_sectionLabel = 0;
  v3.receiver = self;
  v3.super_class = THNotesDetailTableViewHeaderView;
  [(THNotesDetailTableViewHeaderView *)&v3 dealloc];
}

- (id)backgroundView
{
  v6.receiver = self;
  v6.super_class = THNotesDetailTableViewHeaderView;
  v3 = [(THNotesDetailTableViewHeaderView *)&v6 backgroundView];
  if (!v3 || (NSClassFromString(@"_UITableViewHeaderFooterViewBackground"), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [UIView alloc];
    [v3 frame];
    v3 = [v4 initWithFrame:?];
    [(THNotesDetailTableViewHeaderView *)self setBackgroundView:v3];
  }

  return v3;
}

- (void)addChapterLabel:(id)a3
{
  [(UILabel *)[(THNotesDetailTableViewHeaderView *)self chapterLabel] removeFromSuperview];
  [(THNotesDetailTableViewHeaderView *)self setChapterLabel:a3];
  if (a3)
  {
    cellView = self->_cellView;

    [(UIView *)cellView addSubview:a3];
  }
}

- (void)addSectionLabel:(id)a3
{
  [(UILabel *)[(THNotesDetailTableViewHeaderView *)self sectionLabel] removeFromSuperview];
  [(THNotesDetailTableViewHeaderView *)self setSectionLabel:a3];
  if (a3)
  {
    cellView = self->_cellView;

    [(UIView *)cellView addSubview:a3];
  }
}

- (void)p_positionViewsForEditing:(BOOL)a3
{
  v3 = a3;
  [(THNotesDetailTableViewHeaderView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (v3)
  {
    if ([UIView userInterfaceLayoutDirectionForSemanticContentAttribute:[(THNotesDetailTableViewHeaderView *)self semanticContentAttribute]]== UIUserInterfaceLayoutDirectionLeftToRight)
    {
      v6 = 35.0;
    }

    v13 = 0.0;
    v14 = 1.0;
    v15 = -50.0;
  }

  else
  {
    v15 = -15.0;
    v13 = -55.0;
    v14 = 0.0;
  }

  v16 = v10 + v15;
  [(UIView *)self->_cellView setFrame:v6, v8, v16, v12];
  [(UIView *)self->_editControlView setFrame:v13, 0.0, 35.0, v12];
  [(UIImageView *)self->_editControlImage setAlpha:v14];
  [(UIImageView *)self->_editControlImage setFrame:15.0, 0.0, self->_editControlImageSize.width, v12];
  v30.origin.x = v6;
  v30.origin.y = v8;
  v30.size.width = v16;
  v30.size.height = v12;
  Width = CGRectGetWidth(v30);
  if ([(THNotesDetailTableViewHeaderView *)self chapterLabel])
  {
    [(UILabel *)[(THNotesDetailTableViewHeaderView *)self chapterLabel] frame];
    [(UILabel *)[(THNotesDetailTableViewHeaderView *)self chapterLabel] setFrame:v18, v19, Width - v18, v20];
  }

  if ([(THNotesDetailTableViewHeaderView *)self sectionLabel])
  {
    [(UILabel *)[(THNotesDetailTableViewHeaderView *)self sectionLabel] frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = Width - v21;
    v28 = [(THNotesDetailTableViewHeaderView *)self sectionLabel];

    [(UILabel *)v28 setFrame:v22, v24, v27, v26];
  }
}

- (void)setFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = THNotesDetailTableViewHeaderView;
  [(THNotesDetailTableViewHeaderView *)&v13 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(THNotesDetailTableViewHeaderView *)self p_positionViewsForEditing:self->_editing];
  [(THNotesDetailTableViewHeaderView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  TSUScreenScale();
  [(UIView *)self->_separator setFrame:0.0, v11 - 1.0 / v12, v9];
  [(UIButton *)self->_selectionButton setFrame:v5, v7, v9, v11];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_editing != a3)
  {
    v7[7] = v4;
    v7[8] = v5;
    self->_editing = a3;
    if (a4)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_6320;
      v7[3] = &unk_45AE00;
      v7[4] = self;
      [UIView animateWithDuration:v7 animations:0.3];
    }

    else
    {
      [(THNotesDetailTableViewHeaderView *)self p_positionViewsForEditing:?];
    }

    [(THNotesDetailTableViewHeaderView *)self setSelected:0];
    [(THNotesDetailTableViewHeaderView *)self setNeedsLayout];
  }
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    [(UIImageView *)self->_editControlImage setHighlighted:?];
  }
}

- (CGSize)editControlImageSize
{
  width = self->_editControlImageSize.width;
  height = self->_editControlImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end