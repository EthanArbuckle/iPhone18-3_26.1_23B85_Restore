@interface _CNAvatarView
- (_CNAvatarViewDelegate)delegate;
- (void)setLikenessProviders:(id)providers;
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
  array = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  likenessViews = [(_CNAvatarView *)selfCopy likenessViews];
  v6 = [likenessViews count];

  if (v6)
  {
    likenessViews2 = [(_CNAvatarView *)selfCopy likenessViews];
    v8 = [likenessViews2 objectAtIndexedSubscript:0];

    v9 = 1.0;
    v10 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:6 relatedBy:0 toItem:selfCopy attribute:6 multiplier:1.0 constant:0.0];
    [array addObject:v10];

    v11 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:4 relatedBy:0 toItem:selfCopy attribute:4 multiplier:1.0 constant:0.0];
    [array addObject:v11];

    v12 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:7 relatedBy:0 toItem:v8 attribute:8 multiplier:1.0 constant:0.0];
    [array addObject:v12];

    likenessViews3 = [(_CNAvatarView *)selfCopy likenessViews];
    if ([likenessViews3 count] > 1)
    {
      v9 = 0.666666667;
    }

    v14 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:7 relatedBy:0 toItem:selfCopy attribute:7 multiplier:v9 constant:0.0];
    [array addObject:v14];
  }

  likenessViews4 = [(_CNAvatarView *)selfCopy likenessViews];
  v16 = [likenessViews4 count];

  if (v16 >= 2)
  {
    likenessViews5 = [(_CNAvatarView *)selfCopy likenessViews];
    v18 = [likenessViews5 objectAtIndexedSubscript:1];

    v19 = [MEMORY[0x1E696ACD8] constraintWithItem:v18 attribute:5 relatedBy:0 toItem:selfCopy attribute:5 multiplier:1.0 constant:0.0];
    [array addObject:v19];

    v20 = [MEMORY[0x1E696ACD8] constraintWithItem:v18 attribute:3 relatedBy:0 toItem:selfCopy attribute:3 multiplier:1.0 constant:0.0];
    [array addObject:v20];

    v21 = [MEMORY[0x1E696ACD8] constraintWithItem:v18 attribute:7 relatedBy:0 toItem:v18 attribute:8 multiplier:1.0 constant:0.0];
    [array addObject:v21];

    v22 = [MEMORY[0x1E696ACD8] constraintWithItem:v18 attribute:7 relatedBy:0 toItem:selfCopy attribute:7 multiplier:0.666666667 constant:0.0];
    [array addObject:v22];
  }

  [(_CNAvatarView *)selfCopy setSubviewsConstraints:array];
  [MEMORY[0x1E696ACD8] activateConstraints:array];
  v23.receiver = selfCopy;
  v23.super_class = _CNAvatarView;
  [(_CNAvatarView *)&v23 updateConstraints];
}

- (void)setupSubviews
{
  subviewsConstraints = [(_CNAvatarView *)self subviewsConstraints];

  if (subviewsConstraints)
  {
    v4 = MEMORY[0x1E696ACD8];
    subviewsConstraints2 = [(_CNAvatarView *)self subviewsConstraints];
    [v4 deactivateConstraints:subviewsConstraints2];
  }

  array = [MEMORY[0x1E695DF70] array];
  likenessProviders = [(_CNAvatarView *)self likenessProviders];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __30___CNAvatarView_setupSubviews__block_invoke;
  v12 = &unk_1E74E2D30;
  selfCopy = self;
  v14 = array;
  v8 = array;
  [likenessProviders enumerateObjectsUsingBlock:&v9];

  [(_CNAvatarView *)self setLikenessViews:v8, v9, v10, v11, v12, selfCopy];
  [(_CNAvatarView *)self setNeedsUpdateConstraints];
}

- (void)setLikenessProviders:(id)providers
{
  providersCopy = providers;
  if (self->_likenessProviders != providersCopy)
  {
    v6 = providersCopy;
    objc_storeStrong(&self->_likenessProviders, providers);
    [(_CNAvatarView *)self setupSubviews];
    providersCopy = v6;
  }
}

@end