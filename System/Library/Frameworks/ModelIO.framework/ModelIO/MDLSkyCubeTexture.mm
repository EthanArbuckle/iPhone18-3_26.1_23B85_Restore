@interface MDLSkyCubeTexture
- (void)dealloc;
- (void)setGroundColor:(CGColorRef)groundColor;
- (void)updateTexture;
@end

@implementation MDLSkyCubeTexture

- (void)setGroundColor:(CGColorRef)groundColor
{
  v5 = self->_groundColor;
  if (v5)
  {
    CGColorRelease(v5);
  }

  self->_groundColor = CGColorCreateCopy(groundColor);
}

- (void)dealloc
{
  sky = self->_sky;
  if (sky)
  {
    v4 = sub_239EB93A0(sky);
    MEMORY[0x23EE802C0](v4, 0x10A0C401EE0EB22);
  }

  self->_sky = 0;
  groundColor = self->_groundColor;
  if (groundColor)
  {
    CFRelease(groundColor);
    self->_groundColor = 0;
  }

  v6.receiver = self;
  v6.super_class = MDLSkyCubeTexture;
  [(MDLSkyCubeTexture *)&v6 dealloc];
}

- (void)updateTexture
{
  v3 = self->_groundAlbedo + 0.298437;
  sky = self->_sky;
  sky->var12 = v3;
  v5 = self->_groundAlbedo + 0.298437;
  sky->var13 = v5;
  v6 = self->_groundAlbedo + 0.298437;
  sky->var14 = v6;
  v7 = self->_gamma + -0.139942;
  sky->var15 = v7;
  *&sky->var16 = xmmword_239F9EB60;
  sky->var19 = *self->_highDynamicRangeCompression;
  sky->var20 = *&self->_highDynamicRangeCompression[4];
  sky->var21 = self->_exposure + 1.25;
  v8 = self->_contrast + 4.4;
  sky->var22 = v8;
  sky->var23 = self->_brightness + 1.0;
  sky->var0 = *(&self->super._hasAlphaValues + 2) * 4.5;
  v9 = (1.0 - self->_turbidity) * 3.14159265;
  sky->var2 = v9;
  sky->var1 = self->_sunAzimuth * 1.25;
  sky->var3 = self->_sunElevation;
  sky->var4 = self->_upperAtmosphereScattering + self->_upperAtmosphereScattering;
  NumberOfComponents = CGColorGetNumberOfComponents(self->_groundColor);
  Components = CGColorGetComponents(self->_groundColor);
  if (NumberOfComponents <= 2)
  {
    if (NumberOfComponents != 1)
    {
      if (NumberOfComponents == 2)
      {
        for (i = 0; i != 3; ++i)
        {
          v13 = *Components;
          *(&self->_sky->var8 + (i & 3)) = v13;
        }

        v14 = Components[1];
        goto LABEL_21;
      }

      goto LABEL_12;
    }

    for (j = 0; j != 3; ++j)
    {
      v19 = *Components;
      *(&self->_sky->var8 + (j & 3)) = v19;
    }

LABEL_20:
    v14 = 0.0;
LABEL_21:
    self->_sky->var11 = v14;
    goto LABEL_22;
  }

  if (NumberOfComponents == 3)
  {
    for (k = 0; k != 3; ++k)
    {
      v21 = Components[k];
      *(&self->_sky->var8 + (k & 3)) = v21;
    }

    goto LABEL_20;
  }

  if (NumberOfComponents != 4)
  {
LABEL_12:
    for (m = 0; m != 4; ++m)
    {
      *(&self->_sky->var8 + (m & 3)) = 0;
    }

    goto LABEL_22;
  }

  for (n = 0; n != 4; ++n)
  {
    v16 = Components[n];
    *(&self->_sky->var8 + (n & 3)) = v16;
  }

LABEL_22:
  v22 = *&self->super._anon_118[8] * *&self->super._anon_118[4];
  v23 = objc_alloc(MEMORY[0x277CBEB28]);
  v25 = objc_msgSend_initWithLength_(v23, v24, 6 * (v22 / 6));
  if (v25)
  {
    v33 = v25;
    objc_storeStrong(self->super._topLeftOriginData, v25);
    v26 = self->super._topLeftOriginData[0];
    self->super._textureData.topLeftBytesForMip[0] = objc_msgSend_bytes(v26, v27, v28);
    if (malloc_type_malloc(16 * HIDWORD(*self->super._anon_118) * *self->super._anon_118, 0x1000040451B5BE8uLL))
    {
      v29 = v33;
      objc_msgSend_mutableBytes(v33, v30, v31);
      self->super._channelEncoding;
      v32 = *self->super._anon_118;
      sub_239EB9B34(self->_sky, 0);
    }
  }

  MEMORY[0x2821F96F8]();
}

@end