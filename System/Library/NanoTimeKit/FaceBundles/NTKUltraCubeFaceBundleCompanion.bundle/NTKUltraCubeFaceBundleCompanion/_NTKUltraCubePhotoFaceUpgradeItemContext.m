@interface _NTKUltraCubePhotoFaceUpgradeItemContext
- (CGRect)originalCrop;
- (NSURL)maskURL;
- (_NTKUltraCubePhotoFaceUpgradeItemContext)initWithPhoto:(id)a3;
- (int64_t)timeAlignment;
@end

@implementation _NTKUltraCubePhotoFaceUpgradeItemContext

- (_NTKUltraCubePhotoFaceUpgradeItemContext)initWithPhoto:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _NTKUltraCubePhotoFaceUpgradeItemContext;
  v6 = [(_NTKUltraCubePhotoFaceUpgradeItemContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photo, a3);
  }

  return v7;
}

- (CGRect)originalCrop
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NSURL)maskURL
{
  [(NTKUltraCubePhoto *)self->_photo maskedImageZorder];
  v4 = v3;
  [(NTKUltraCubePhoto *)self->_photo timeElementZorder];
  if (v4 <= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NTKUltraCubePhoto *)self->_photo maskImageURL];
  }

  return v6;
}

- (int64_t)timeAlignment
{
  [(NTKUltraCubePhoto *)self->_photo timeElementUnitBaseline];
  if (v2 < 0.5)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

@end