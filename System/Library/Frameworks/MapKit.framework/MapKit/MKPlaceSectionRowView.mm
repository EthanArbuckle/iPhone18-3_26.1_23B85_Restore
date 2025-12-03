@interface MKPlaceSectionRowView
- (void)_updateBackgroundColor:(BOOL)color;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation MKPlaceSectionRowView

- (void)_updateBackgroundColor:(BOOL)color
{
  colorCopy = color;
  if (*(&self->super._fullWidthHairline + 1) || *(&self->super._fullWidthHairline + 2))
  {
    mk_theme = [(UIView *)self mk_theme];
    selectedRowColor = [mk_theme selectedRowColor];
  }

  else
  {
    mk_theme = [(UIView *)self mk_theme];
    selectedRowColor = [mk_theme rowColor];
  }

  v7 = selectedRowColor;

  if (colorCopy)
  {
    v8 = MEMORY[0x1E69DD250];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__MKPlaceSectionRowView__updateBackgroundColor___block_invoke;
    v9[3] = &unk_1E76CD810;
    v9[4] = self;
    v10 = v7;
    [v8 _mapkit_animateWithDuration:v9 animations:0 completion:0.200000003];
  }

  else
  {
    [(UIView *)self _mapkit_setBackgroundColor:v7];
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  if (*(&self->super._fullWidthHairline + 2) != highlighted)
  {
    *(&self->super._fullWidthHairline + 2) = highlighted;
    [(MKPlaceSectionRowView *)self _updateBackgroundColor:animated];
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  if (*(&self->super._fullWidthHairline + 1) != selected)
  {
    *(&self->super._fullWidthHairline + 1) = selected;
    [(MKPlaceSectionRowView *)self _updateBackgroundColor:animated];
  }
}

@end