@interface AVTFunCamAvatarPickerStyle
+ (id)defaultLayoutStyle;
+ (id)insetProviderForConstant:(double)a3;
- (AVTFunCamAvatarPickerStyle)initWithCellSize:(CGSize)a3 engagedCellSize:(CGSize)a4 interitemSpacing:(double)a5 gridEdgeInsets:(UIEdgeInsets)a6;
- (CGSize)cellSize;
- (CGSize)engagedCellSize;
- (UIEdgeInsets)gridEdgeInsets;
- (double)edgeLengthFittingWidth:(double)a3 environment:(id)a4;
- (id)imageItemInsetsForGrid;
- (id)imageItemInsetsForList;
@end

@implementation AVTFunCamAvatarPickerStyle

+ (id)insetProviderForConstant:(double)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__AVTFunCamAvatarPickerStyle_insetProviderForConstant___block_invoke;
  v5[3] = &__block_descriptor_40_e8_d16__0d8l;
  *&v5[4] = a3;
  v3 = [v5 copy];

  return v3;
}

+ (id)defaultLayoutStyle
{
  v2 = [[AVTFunCamAvatarPickerStyle alloc] initWithCellSize:74.0 engagedCellSize:74.0 interitemSpacing:108.0 gridEdgeInsets:108.0, 16.0, 0, 0x4020000000000000, 0, 0x4020000000000000];

  return v2;
}

- (AVTFunCamAvatarPickerStyle)initWithCellSize:(CGSize)a3 engagedCellSize:(CGSize)a4 interitemSpacing:(double)a5 gridEdgeInsets:(UIEdgeInsets)a6
{
  height = a4.height;
  width = a4.width;
  v9 = a3.height;
  v10 = a3.width;
  v12.receiver = self;
  v12.super_class = AVTFunCamAvatarPickerStyle;
  result = [(AVTFunCamAvatarPickerStyle *)&v12 init];
  if (result)
  {
    result->_cellSize.height = v9 + 14.0;
    result->_engagedCellSize.width = width;
    result->_interitemSpacing = a5;
    result->_cellSize.width = v10;
    result->_engagedCellSize.height = height + 14.0;
    result->_gridEdgeInsets = a6;
  }

  return result;
}

- (double)edgeLengthFittingWidth:(double)a3 environment:(id)a4
{
  [(AVTFunCamAvatarPickerStyle *)self gridEdgeInsets];
  v7 = v6;
  [(AVTFunCamAvatarPickerStyle *)self gridEdgeInsets];
  result = floor((a3 - (v7 + v8)) * 0.25);
  if (result < 50.0)
  {
    return 50.0;
  }

  return result;
}

- (id)imageItemInsetsForList
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__AVTFunCamAvatarPickerStyle_imageItemInsetsForList__block_invoke;
  v4[3] = &unk_1E7F3CBB8;
  v4[4] = self;
  v2 = MEMORY[0x1BFB0DE80](v4, a2);

  return v2;
}

double __52__AVTFunCamAvatarPickerStyle_imageItemInsetsForList__block_invoke(uint64_t a1, double a2)
{
  [*(a1 + 32) cellSize];
  v5 = a2 - v4;
  [*(a1 + 32) engagedCellSize];
  v7 = v6;
  [*(a1 + 32) cellSize];
  return (a2 - (v5 / (v7 - v8) * -0.0445445445 + 0.72972973) * a2) * 0.5;
}

- (id)imageItemInsetsForGrid
{
  v2 = objc_opt_class();

  return [v2 insetProviderForConstant:18.0];
}

- (CGSize)cellSize
{
  width = self->_cellSize.width;
  height = self->_cellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)engagedCellSize
{
  width = self->_engagedCellSize.width;
  height = self->_engagedCellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)gridEdgeInsets
{
  top = self->_gridEdgeInsets.top;
  left = self->_gridEdgeInsets.left;
  bottom = self->_gridEdgeInsets.bottom;
  right = self->_gridEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end