@interface AXHearingProgramCell
- (AXHearingProgramCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setChecked:(BOOL)a3;
@end

@implementation AXHearingProgramCell

- (AXHearingProgramCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = AXHearingProgramCell;
  v4 = [(AXHearingProgramCell *)&v7 initWithStyle:3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(AXHearingProgramCell *)v4 setSelectionStyle:1];
  }

  return v5;
}

- (void)dealloc
{
  [(UIImageView *)self->_checkedView removeFromSuperview];
  v3.receiver = self;
  v3.super_class = AXHearingProgramCell;
  [(AXHearingProgramCell *)&v3 dealloc];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = AXHearingProgramCell;
  v4 = a3;
  [(AXHearingProgramCell *)&v6 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 userInfo];

  self->_showStreamingIcon = [v5 isStreamOrMixingStream];
  -[AXHearingProgramCell setChecked:](self, "setChecked:", [v5 isSelected]);
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = AXHearingProgramCell;
  [(AXHearingProgramCell *)&v5 prepareForReuse];
  self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__checked] = 0;
  checkedView = self->_checkedView;
  if (checkedView)
  {
    [(UIImageView *)checkedView removeFromSuperview];
    v4 = self->_checkedView;
    self->_checkedView = 0;
  }
}

- (void)setChecked:(BOOL)a3
{
  if (self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__checked] != a3)
  {
    self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__checked] = a3;
    if (a3)
    {
      if (self->_showStreamingIcon)
      {
        v4 = accessibilityHearingAidImageNamed();
        v5 = [v4 imageWithRenderingMode:2];

        v6 = [[UIImageView alloc] initWithImage:v5 highlightedImage:v5];
        checkedView = self->_checkedView;
        self->_checkedView = v6;

        v8 = self->_checkedView;
        v9 = +[UIColor systemGrayColor];
        [(UIImageView *)v8 setTintColor:v9];
      }

      else
      {
        v11 = [UIImage kitImageNamed:@"UIPreferencesBlueCheck.png"];
        v5 = [v11 imageWithRenderingMode:2];

        v12 = [UIImage kitImageNamed:@"UIPreferencesWhiteCheck.png"];
        v9 = [v12 imageWithRenderingMode:2];

        v13 = [[UIImageView alloc] initWithImage:v5 highlightedImage:v9];
        v14 = self->_checkedView;
        self->_checkedView = v13;

        v15 = self->_checkedView;
        v16 = +[UIColor systemBlueColor];
        [(UIImageView *)v15 setTintColor:v16];
      }

      v17 = [(AXHearingProgramCell *)self contentView];
      [v17 addSubview:self->_checkedView];

      [(AXHearingProgramCell *)self setNeedsLayout];
    }

    else
    {
      [(UIImageView *)self->_checkedView removeFromSuperview];
      v10 = self->_checkedView;
      self->_checkedView = 0;
    }
  }
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = AXHearingProgramCell;
  [(AXHearingProgramCell *)&v30 layoutSubviews];
  checkedView = self->_checkedView;
  if (checkedView)
  {
    [(UIImageView *)checkedView frame];
    v5 = v4;
    v7 = v6;
    v8 = [(AXHearingProgramCell *)self contentView];
    [v8 frame];
    v10 = floor(v9 * 0.5);
    v11 = floor(v7 * 0.5);
    v12 = (v10 - v11);

    v13 = [UIApp userInterfaceLayoutDirection];
    v14 = 10.0;
    if (!v13)
    {
      [(AXHearingProgramCell *)self bounds];
      v14 = v15 - v5 + -10.0;
    }

    [(UIImageView *)self->_checkedView setFrame:v14, v12, v5, v7];
  }

  v16 = [(AXHearingProgramCell *)self titleLabel];
  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [(AXHearingProgramCell *)self contentView];
  [v23 frame];
  v25 = v24;
  [(UIImageView *)self->_checkedView frame];
  v27 = v25 - v26 + -30.0;

  if ([UIApp userInterfaceLayoutDirection])
  {
    [(AXHearingProgramCell *)self bounds];
    v18 = v28 - v27 + -14.0 + -10.0;
  }

  v29 = [(AXHearingProgramCell *)self titleLabel];
  [v29 setFrame:{v18, v20, v27, v22}];
}

@end