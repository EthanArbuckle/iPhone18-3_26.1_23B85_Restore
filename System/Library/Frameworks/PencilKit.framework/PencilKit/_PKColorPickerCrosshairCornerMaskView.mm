@interface _PKColorPickerCrosshairCornerMaskView
- (_PKColorPickerCrosshairCornerMaskView)initWithFrame:(CGRect)frame;
- (id)maskPath;
- (void)_setFillColor:(id)color;
- (void)_setPath:(id)path;
- (void)layoutSubviews;
@end

@implementation _PKColorPickerCrosshairCornerMaskView

- (_PKColorPickerCrosshairCornerMaskView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _PKColorPickerCrosshairCornerMaskView;
  result = [(_PKColorPickerCrosshairCornerMaskView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  result->_cornerPosition = 0;
  result->_excludeCorner = 0;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _PKColorPickerCrosshairCornerMaskView;
  [(_PKColorPickerCrosshairCornerMaskView *)&v5 layoutSubviews];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [(_PKColorPickerCrosshairCornerMaskView *)self _setFillColor:blackColor];

  maskPath = [(_PKColorPickerCrosshairCornerMaskView *)self maskPath];
  [(_PKColorPickerCrosshairCornerMaskView *)self _setPath:maskPath];
}

- (void)_setPath:(id)path
{
  pathCopy = path;
  _shapeLayer = [(_PKColorPickerCrosshairCornerMaskView *)self _shapeLayer];
  cGPath = [pathCopy CGPath];

  [_shapeLayer setPath:cGPath];
}

- (void)_setFillColor:(id)color
{
  colorCopy = color;
  _shapeLayer = [(_PKColorPickerCrosshairCornerMaskView *)self _shapeLayer];
  cGColor = [colorCopy CGColor];

  [_shapeLayer setFillColor:cGColor];
}

- (id)maskPath
{
  [(_PKColorPickerCrosshairCornerMaskView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(_PKColorPickerCrosshairCornerMaskView *)self cornerPosition])
  {
    CGAffineTransformMakeScale(&v25, 0.5, 0.5);
    v24 = v10 * v25.c;
    a = v25.a;
    b = v25.b;
    v13 = v10 * v25.d;
    if ([(_PKColorPickerCrosshairCornerMaskView *)self cornerPosition]== 3 || [(_PKColorPickerCrosshairCornerMaskView *)self cornerPosition]== 4)
    {
      v27.origin.x = v4;
      v27.origin.y = v6;
      v27.size.width = v8;
      v27.size.height = v10;
      MidY = CGRectGetMidY(v27);
    }

    else
    {
      v28.origin.x = v4;
      v28.origin.y = v6;
      v28.size.width = v8;
      v28.size.height = v10;
      MidY = CGRectGetMinY(v28);
    }

    v16 = MidY;
    v17 = v24 + a * v8;
    v18 = v13 + b * v8;
    if ([(_PKColorPickerCrosshairCornerMaskView *)self cornerPosition]== 2 || [(_PKColorPickerCrosshairCornerMaskView *)self cornerPosition]== 4)
    {
      v29.origin.x = v4;
      v29.origin.y = v6;
      v29.size.width = v8;
      v29.size.height = v10;
      MidX = CGRectGetMidX(v29);
    }

    else
    {
      v30.origin.x = v4;
      v30.origin.y = v6;
      v30.size.width = v8;
      v30.size.height = v10;
      MidX = CGRectGetMinX(v30);
    }
  }

  else
  {
    MidX = *MEMORY[0x1E695F058];
    v16 = *(MEMORY[0x1E695F058] + 8);
    v17 = *(MEMORY[0x1E695F058] + 16);
    v18 = *(MEMORY[0x1E695F058] + 24);
  }

  v19 = [MEMORY[0x1E69DC728] bezierPathWithRect:{MidX, v16, v17, v18}];
  if ([(_PKColorPickerCrosshairCornerMaskView *)self excludeCorner])
  {
    v20 = MEMORY[0x1E69DC728];
    [(_PKColorPickerCrosshairCornerMaskView *)self bounds];
    v21 = [v20 bezierPathWithRect:?];
    bezierPathByReversingPath = [v19 bezierPathByReversingPath];
    [v21 appendPath:bezierPathByReversingPath];
  }

  else
  {
    v21 = v19;
  }

  return v21;
}

@end