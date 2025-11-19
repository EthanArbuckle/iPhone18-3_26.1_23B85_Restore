@interface MKPlaceSectionRowView
- (void)_updateBackgroundColor:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation MKPlaceSectionRowView

- (void)_updateBackgroundColor:(BOOL)a3
{
  v3 = a3;
  if (*(&self->super._fullWidthHairline + 1) || *(&self->super._fullWidthHairline + 2))
  {
    v5 = [(UIView *)self mk_theme];
    v6 = [v5 selectedRowColor];
  }

  else
  {
    v5 = [(UIView *)self mk_theme];
    v6 = [v5 rowColor];
  }

  v7 = v6;

  if (v3)
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

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  if (*(&self->super._fullWidthHairline + 2) != a3)
  {
    *(&self->super._fullWidthHairline + 2) = a3;
    [(MKPlaceSectionRowView *)self _updateBackgroundColor:a4];
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  if (*(&self->super._fullWidthHairline + 1) != a3)
  {
    *(&self->super._fullWidthHairline + 1) = a3;
    [(MKPlaceSectionRowView *)self _updateBackgroundColor:a4];
  }
}

@end