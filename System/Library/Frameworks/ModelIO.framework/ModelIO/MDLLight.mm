@interface MDLLight
- (MDLLight)init;
- (__n128)position;
- (void)dealloc;
- (void)setColorSpace:(NSString *)colorSpace;
- (void)setLightType:(MDLLightType)lightType;
- (void)setTransform:(id)transform;
@end

@implementation MDLLight

- (void)setColorSpace:(NSString *)colorSpace
{
  name = colorSpace;
  objc_storeStrong(&self->_colorSpace, colorSpace);
  cgColorSpace = self->_cgColorSpace;
  if (cgColorSpace)
  {
    CGColorSpaceRelease(cgColorSpace);
  }

  self->_cgColorSpace = CGColorSpaceCreateWithName(name);
}

- (MDLLight)init
{
  v12 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = MDLLight;
  v2 = [(MDLObject *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MDLTransform);
    objc_msgSend_setTransform_(v2, v4, v3);

    v5 = *MEMORY[0x277CBF4B8];
    objc_storeStrong(&v2->_colorSpace, *MEMORY[0x277CBF4B8]);
    v6 = CGColorSpaceCreateWithName(v5);
    v2->_cgColorSpace = v6;
    *components = xmmword_239F9C2B0;
    v11 = unk_239F9C2C0;
    CGColorCreate(v6, components);
    operator new();
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)dealloc
{
  light = self->_light;
  if (light)
  {
    (*(light->var0 + 1))(light, a2);
    self->_light = 0;
  }

  cgColorSpace = self->_cgColorSpace;
  if (cgColorSpace)
  {
    CGColorSpaceRelease(cgColorSpace);
    self->_cgColorSpace = 0;
  }

  v5.receiver = self;
  v5.super_class = MDLLight;
  [(MDLLight *)&v5 dealloc];
}

- (void)setLightType:(MDLLightType)lightType
{
  self->_lightType = lightType;
  if (lightType - 1 > 3)
  {
    v3 = 3;
  }

  else
  {
    v3 = dword_239F9C290[lightType - 1];
  }

  self->_light->var3 = v3;
}

- (void)setTransform:(id)transform
{
  transformCopy = transform;
  v6.receiver = self;
  v6.super_class = MDLLight;
  [(MDLObject *)&v6 setTransform:transformCopy];
  if (self->_light)
  {
    objc_storeStrong(&self->_light->var2, transform);
  }
}

- (__n128)position
{
  v6 = objc_msgSend_transform(self, a2, a3);
  if (v6)
  {
    v7 = objc_msgSend_transform(self, v4, v5);
    objc_msgSend_matrix(v7, v8, v9);
    v12 = v10;
  }

  else
  {
    v12 = *(MEMORY[0x277D860B8] + 48);
  }

  return v12;
}

@end