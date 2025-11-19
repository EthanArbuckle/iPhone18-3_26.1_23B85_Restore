@interface AAUIPaneHeaderView_tvOS
- (AAUIPaneHeaderView_tvOS)initWithFrame:(CGRect)a3;
- (double)innerHeaderMaxY;
- (void)layoutSubviews;
- (void)makeAllTheTextFits;
@end

@implementation AAUIPaneHeaderView_tvOS

- (AAUIPaneHeaderView_tvOS)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = AAUIPaneHeaderView_tvOS;
  v3 = [(AAUIPaneHeaderView_tvOS *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v4 = getBFFPaneHeaderViewClass_softClass;
    v15 = getBFFPaneHeaderViewClass_softClass;
    if (!getBFFPaneHeaderViewClass_softClass)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __getBFFPaneHeaderViewClass_block_invoke;
      v11[3] = &unk_1E820BE08;
      v11[4] = &v12;
      __getBFFPaneHeaderViewClass_block_invoke(v11);
      v4 = v13[3];
    }

    v5 = v4;
    _Block_object_dispose(&v12, 8);
    v6 = [v4 alloc];
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    header = v3->_header;
    v3->_header = v7;

    [(AAUIPaneHeaderView_tvOS *)v3 addSubview:v3->_header];
  }

  return v3;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = AAUIPaneHeaderView_tvOS;
  [(AAUIPaneHeaderView_tvOS *)&v7 layoutSubviews];
  header = self->_header;
  [(AAUIPaneHeaderView_tvOS *)self bounds];
  [(BFFPaneHeaderView *)header setFrame:?];
  v4 = self->_header;
  [(AAUIPaneHeaderView_tvOS *)self bounds];
  [(BFFPaneHeaderView *)v4 sizeThatFits:v5, v6];
  [(BFFPaneHeaderView *)self->_header layoutSubviews];
}

- (double)innerHeaderMaxY
{
  v3 = [(BFFPaneHeaderView *)self->_header subLabel];
  v4 = [v3 text];

  v5 = [(AAUIPaneHeaderView_tvOS *)self superview];
  header = self->_header;
  if (v4)
  {
    v7 = [(BFFPaneHeaderView *)header subLabel];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(BFFPaneHeaderView *)self->_header subLabel];
  }

  else
  {
    v7 = [(BFFPaneHeaderView *)header detailTextLabel];
    [v7 bounds];
    v9 = v16;
    v11 = v17;
    v13 = v18;
    v15 = v19;
    [(BFFPaneHeaderView *)self->_header detailTextLabel];
  }
  v20 = ;
  [v5 convertRect:v20 fromView:{v9, v11, v13, v15}];
  MaxY = CGRectGetMaxY(v23);

  return MaxY;
}

- (void)makeAllTheTextFits
{
  v3 = [(AAUIPaneHeaderView_tvOS *)self textLabel];
  [v3 setNumberOfLines:2];

  v4 = [(AAUIPaneHeaderView_tvOS *)self textLabel];
  [v4 setAdjustsFontSizeToFitWidth:1];

  v5 = [(AAUIPaneHeaderView_tvOS *)self textLabel];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v6 = getBFFStyleClass_softClass;
  v20 = getBFFStyleClass_softClass;
  if (!getBFFStyleClass_softClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getBFFStyleClass_block_invoke;
    v16[3] = &unk_1E820BE08;
    v16[4] = &v17;
    __getBFFStyleClass_block_invoke(v16);
    v6 = v18[3];
  }

  v7 = v6;
  _Block_object_dispose(&v17, 8);
  v8 = [v6 sharedStyle];
  v9 = [v8 headerTitleFont];
  [v5 setFont:v9];

  v10 = [(AAUIPaneHeaderView_tvOS *)self detailTextLabel];
  v11 = MEMORY[0x1E69DB878];
  v12 = *MEMORY[0x1E69DDCF8];
  v13 = [MEMORY[0x1E69DCEB0] mainScreen];
  v14 = [v13 traitCollection];
  v15 = [v11 preferredFontForTextStyle:v12 compatibleWithTraitCollection:v14];
  [v10 setFont:v15];
}

@end