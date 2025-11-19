@interface _CNAvatarView
- (_CNAvatarViewDelegate)delegate;
- (void)setLikenessProviders:(id)a3;
- (void)setupSubviews;
- (void)updateConstraints;
@end

@implementation _CNAvatarView

- (_CNAvatarViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateConstraints
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = self;
  v5 = [(_CNAvatarView *)v4 likenessViews];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(_CNAvatarView *)v4 likenessViews];
    v8 = [v7 objectAtIndexedSubscript:0];

    v9 = 1.0;
    v10 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:6 relatedBy:0 toItem:v4 attribute:6 multiplier:1.0 constant:0.0];
    [v3 addObject:v10];

    v11 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:4 relatedBy:0 toItem:v4 attribute:4 multiplier:1.0 constant:0.0];
    [v3 addObject:v11];

    v12 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:7 relatedBy:0 toItem:v8 attribute:8 multiplier:1.0 constant:0.0];
    [v3 addObject:v12];

    v13 = [(_CNAvatarView *)v4 likenessViews];
    if ([v13 count] > 1)
    {
      v9 = 0.666666667;
    }

    v14 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:7 relatedBy:0 toItem:v4 attribute:7 multiplier:v9 constant:0.0];
    [v3 addObject:v14];
  }

  v15 = [(_CNAvatarView *)v4 likenessViews];
  v16 = [v15 count];

  if (v16 >= 2)
  {
    v17 = [(_CNAvatarView *)v4 likenessViews];
    v18 = [v17 objectAtIndexedSubscript:1];

    v19 = [MEMORY[0x1E696ACD8] constraintWithItem:v18 attribute:5 relatedBy:0 toItem:v4 attribute:5 multiplier:1.0 constant:0.0];
    [v3 addObject:v19];

    v20 = [MEMORY[0x1E696ACD8] constraintWithItem:v18 attribute:3 relatedBy:0 toItem:v4 attribute:3 multiplier:1.0 constant:0.0];
    [v3 addObject:v20];

    v21 = [MEMORY[0x1E696ACD8] constraintWithItem:v18 attribute:7 relatedBy:0 toItem:v18 attribute:8 multiplier:1.0 constant:0.0];
    [v3 addObject:v21];

    v22 = [MEMORY[0x1E696ACD8] constraintWithItem:v18 attribute:7 relatedBy:0 toItem:v4 attribute:7 multiplier:0.666666667 constant:0.0];
    [v3 addObject:v22];
  }

  [(_CNAvatarView *)v4 setSubviewsConstraints:v3];
  [MEMORY[0x1E696ACD8] activateConstraints:v3];
  v23.receiver = v4;
  v23.super_class = _CNAvatarView;
  [(_CNAvatarView *)&v23 updateConstraints];
}

- (void)setupSubviews
{
  v3 = [(_CNAvatarView *)self subviewsConstraints];

  if (v3)
  {
    v4 = MEMORY[0x1E696ACD8];
    v5 = [(_CNAvatarView *)self subviewsConstraints];
    [v4 deactivateConstraints:v5];
  }

  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [(_CNAvatarView *)self likenessProviders];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __30___CNAvatarView_setupSubviews__block_invoke;
  v12 = &unk_1E74E2D30;
  v13 = self;
  v14 = v6;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:&v9];

  [(_CNAvatarView *)self setLikenessViews:v8, v9, v10, v11, v12, v13];
  [(_CNAvatarView *)self setNeedsUpdateConstraints];
}

- (void)setLikenessProviders:(id)a3
{
  v5 = a3;
  if (self->_likenessProviders != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_likenessProviders, a3);
    [(_CNAvatarView *)self setupSubviews];
    v5 = v6;
  }
}

@end