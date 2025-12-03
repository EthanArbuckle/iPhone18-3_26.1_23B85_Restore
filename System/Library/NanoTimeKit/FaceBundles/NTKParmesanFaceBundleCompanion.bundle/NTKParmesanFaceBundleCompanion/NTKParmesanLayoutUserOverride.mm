@interface NTKParmesanLayoutUserOverride
- (CGRect)crop;
- (NTKParmesanLayoutUserOverride)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NTKParmesanLayoutUserOverride

- (NTKParmesanLayoutUserOverride)init
{
  v7.receiver = self;
  v7.super_class = NTKParmesanLayoutUserOverride;
  v2 = [(NTKParmesanLayoutUserOverride *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = *(MEMORY[0x277CBF398] + 16);
    *(v2 + 24) = *MEMORY[0x277CBF398];
    *(v2 + 40) = v4;
    v5 = *(v2 + 2);
    *(v2 + 2) = 0;

    v3->_useDepthEffect = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_init(v8, v9, v10, v11);
  objc_msgSend_setCrop_(v12, v13, v14, v15, self->_crop.origin.x, self->_crop.origin.y, self->_crop.size.width, self->_crop.size.height);
  objc_msgSend_setTimeLayout_(v12, v16, self->_timeLayout, v17);
  objc_msgSend_setUseDepthEffect_(v12, v18, self->_useDepthEffect, v19);
  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromCGRect(self->_crop);
  v7 = objc_msgSend_stringWithFormat_(v3, v5, @"[UserOverride: crop=%@, timeLayout=%@, depthEffect=%d]", v6, v4, self->_timeLayout, self->_useDepthEffect);

  return v7;
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