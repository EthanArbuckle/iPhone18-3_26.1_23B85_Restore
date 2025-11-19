@interface SRUserUtteranceContainerView
- (BOOL)isFirstResponder;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SRUserUtteranceView)displayView;
- (UIView)tableView;
- (double)baselineOffsetFromBottom;
- (double)firstLineBaselineOffsetFromTop;
- (void)animateToDisplayWithDuration:(double)a3 completion:(id)a4;
- (void)animateToEditWithDuration:(double)a3 completion:(id)a4;
- (void)layoutSubviews;
@end

@implementation SRUserUtteranceContainerView

- (BOOL)isFirstResponder
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(SRUserUtteranceContainerView *)self subviews];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v3)
  {
    v4 = *v13;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v13 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v6 = *(*(&v12 + 1) + 8 * v5);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_10004C324;
        v11[3] = &unk_100167A58;
        v11[4] = &v16;
        [v7 _enumerateDescendentViews:v11];
        v8 = *(v17 + 24);

        if (v8)
        {
          break;
        }
      }

      if (v3 == ++v5)
      {
        v3 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v9 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return v9;
}

- (void)animateToEditWithDuration:(double)a3 completion:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  [WeakRetained setAlpha:0.0];

  v8 = objc_loadWeakRetained(&self->_tableView);
  [(SRUserUtteranceContainerView *)self addSubview:v8];

  self->_showEditingView = 1;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004C4F0;
  v12[3] = &unk_100167010;
  v12[4] = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004C570;
  v10[3] = &unk_100167A80;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [UIView animateWithDuration:v12 animations:v10 completion:a3];
}

- (void)animateToDisplayWithDuration:(double)a3 completion:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_displayView);
  [WeakRetained setChevronHidden:0];

  v8 = objc_loadWeakRetained(&self->_displayView);
  [v8 setAlpha:0.0];

  v9 = objc_loadWeakRetained(&self->_displayView);
  [(SRUserUtteranceContainerView *)self addSubview:v9];

  self->_showEditingView = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004C728;
  v13[3] = &unk_100167010;
  v13[4] = self;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004C7A8;
  v11[3] = &unk_100167A80;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [UIView animateWithDuration:v13 animations:v11 completion:a3];
}

- (double)firstLineBaselineOffsetFromTop
{
  WeakRetained = objc_loadWeakRetained(&self->_displayView);
  [WeakRetained firstLineBaselineOffsetFromTop];
  v4 = v3;

  return v4;
}

- (double)baselineOffsetFromBottom
{
  if (self->_showEditingView)
  {
    WeakRetained = +[UIFont siriui_userUtteranceFont];
    [WeakRetained descender];
    v4 = -v3;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_displayView);
    [WeakRetained baselineOffsetFromBottom];
    v4 = v5;
  }

  return v4;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = SRUserUtteranceContainerView;
  [(SRUserUtteranceContainerView *)&v15 layoutSubviews];
  [(SRUserUtteranceContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (self->_showEditingView)
  {
    v11 = &OBJC_IVAR___SRUserUtteranceContainerView__tableView;
  }

  else
  {
    v11 = &OBJC_IVAR___SRUserUtteranceContainerView__displayView;
  }

  if (self->_showEditingView)
  {
    v12 = -8.0;
  }

  else
  {
    v12 = 0.0;
  }

  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *v11));
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  Width = CGRectGetWidth(v16);
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  [WeakRetained setFrame:{0.0, v12, Width, CGRectGetHeight(v17)}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (self->_showEditingView)
  {
    WeakRetained = objc_loadWeakRetained(&self->_tableView);
    [WeakRetained sizeThatFits:{width, height}];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_displayView);
    [WeakRetained sizeThatFits:{width, height}];
    width = v7;
  }

  v8 = v6;

  v9 = width;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (SRUserUtteranceView)displayView
{
  WeakRetained = objc_loadWeakRetained(&self->_displayView);

  return WeakRetained;
}

- (UIView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end