@interface _NTKLayoutDescriptor
- (CGRect)crop;
- (_NTKLayoutDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)position;
- (void)setPosition:(int64_t)a3;
@end

@implementation _NTKLayoutDescriptor

- (_NTKLayoutDescriptor)init
{
  v4.receiver = self;
  v4.super_class = _NTKLayoutDescriptor;
  result = [(_NTKLayoutDescriptor *)&v4 init];
  if (result)
  {
    size = CGRectNull.size;
    result->_crop.origin = CGRectNull.origin;
    result->_crop.size = size;
    result->_timeElementZorder = 0.0;
    result->_maskedImageZorder = 0.0;
    result->_baseline = 0.0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setCrop:{self->_crop.origin.x, self->_crop.origin.y, self->_crop.size.width, self->_crop.size.height}];
  [v4 setBaseline:self->_baseline];
  [v4 setMaskedImageZorder:self->_maskedImageZorder];
  [v4 setTimeElementZorder:self->_timeElementZorder];
  return v4;
}

- (int64_t)position
{
  [(_NTKLayoutDescriptor *)self maskedImageZorder];
  v4 = v3;
  [(_NTKLayoutDescriptor *)self timeElementZorder];
  if (v4 > v5)
  {
    return 3;
  }

  [(_NTKLayoutDescriptor *)self baseline];
  if (v7 == 0.328125)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)setPosition:(int64_t)a3
{
  v4 = a3 - 1;
  if ((a3 - 1) > 3)
  {
    v7 = &NTKUltraCubePhotoTimeElementBelowUnitBaseY;
    v6 = 2.0;
    v5 = 1.0;
  }

  else
  {
    v5 = dbl_42E00[v4];
    v6 = dbl_42E20[v4];
    v7 = off_49448[v4];
  }

  [(_NTKLayoutDescriptor *)self setMaskedImageZorder:v5];
  [(_NTKLayoutDescriptor *)self setTimeElementZorder:v6];
  v8 = *v7;

  [(_NTKLayoutDescriptor *)self setBaseline:v8];
}

- (CGRect)crop
{
  x = self->_crop.origin.x;
  y = self->_crop.origin.y;
  width = self->_crop.size.width;
  height = self->_crop.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end