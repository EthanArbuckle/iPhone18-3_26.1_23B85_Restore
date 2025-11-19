@interface GLKBaseEffect
- (BOOL)perPixelLightingEnabled;
- (BOOL)perVertexLightingEnabled;
- (GLKBaseEffect)init;
- (GLKEffectPropertyFog)fog;
- (GLKEffectPropertyLight)light0;
- (GLKEffectPropertyLight)light1;
- (GLKEffectPropertyLight)light2;
- (GLKEffectPropertyMaterial)material;
- (GLKEffectPropertyTexture)texture2d0;
- (GLKEffectPropertyTexture)texture2d1;
- (GLKVector4)constantColor;
- (GLKVector4)lightModelAmbientColor;
- (id)description;
- (void)dealloc;
- (void)prepareToDraw;
- (void)setColorMaterialEnabled:(GLBOOLean)colorMaterialEnabled;
- (void)setLightModelAmbientColor:(GLKVector4)lightModelAmbientColor;
- (void)setLightModelTwoSided:(GLBOOLean)lightModelTwoSided;
- (void)setTextureOrder:(NSArray *)textureOrder;
- (void)setUseConstantColor:(GLBOOLean)useConstantColor;
- (void)updateBaseEffect;
@end

@implementation GLKBaseEffect

- (GLKBaseEffect)init
{
  v5.receiver = self;
  v5.super_class = GLKBaseEffect;
  v2 = [(GLKBaseEffect *)&v5 init];
  if (v2)
  {
    v2->_propertyArray = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_transform = objc_alloc_init(GLKEffectPropertyTransform);
    v3 = objc_alloc_init(GLKEffectPropertyConstantColor);
    v2->_constantColorProp = v3;
    [(NSMutableArray *)v2->_propertyArray addObject:v3];
    *&v2->_lightModelTwoSided = 16843008;
    *&v2->_colorMaterialEnabled = 0;
    v2->_lightModelAmbientColor = xmmword_238915090;
    v2->_lightingType = 0;
    v2->_fog = 0;
    *&v2->_light0 = 0u;
    *&v2->_light2 = 0u;
    *&v2->_texture2d0 = 0u;
    v2->_textureOrder = 0;
    -[GLKBaseEffect setLabel:](v2, "setLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"GLKBaseEffect"]);
    v2->_effect = 0;
  }

  return v2;
}

- (void)setTextureOrder:(NSArray *)textureOrder
{
  v11 = self->_textureOrder;
  if (v11 != textureOrder)
  {
    v19 = v8;
    v20 = v7;
    v21 = v6;
    v22 = v5;
    v23 = v4;
    v24 = v3;
    v25 = v9;
    v26 = v10;
    if (!textureOrder)
    {

      v18 = 0;
LABEL_13:
      self->_textureOrder = v18;
      self->_effectStale = 1;
      return;
    }

    v14 = [(NSArray *)textureOrder count];
    v15 = self->_textureOrder;
    if (!v15 || [(NSArray *)v15 count]!= v14)
    {
      goto LABEL_12;
    }

    if (v14)
    {
      v16 = 0;
      while (1)
      {
        v17 = [(NSArray *)textureOrder objectAtIndex:v16, v19, v20, v21, v22, v23, v24, v25, v26];
        if (v17 != [(NSArray *)self->_textureOrder objectAtIndex:v16])
        {
          break;
        }

        if (v14 == ++v16)
        {
          return;
        }
      }

      if (v14 != v16)
      {
LABEL_12:

        v18 = textureOrder;
        goto LABEL_13;
      }
    }
  }
}

- (GLKEffectPropertyLight)light0
{
  result = self->_light0;
  if (!result)
  {
    v4 = [[GLKEffectPropertyLight alloc] initWithTransform:self->_transform lightingType:self->_lightingType firstLight:1];
    self->_light0 = v4;
    [(NSMutableArray *)self->_propertyArray addObject:v4];
    self->_material = [(GLKBaseEffect *)self material];
    *&self->_propertyArrayStale = 257;
    return self->_light0;
  }

  return result;
}

- (GLKEffectPropertyLight)light1
{
  result = self->_light1;
  if (!result)
  {
    v4 = [[GLKEffectPropertyLight alloc] initWithTransform:self->_transform lightingType:self->_lightingType firstLight:0];
    self->_light1 = v4;
    [(NSMutableArray *)self->_propertyArray addObject:v4];
    self->_material = [(GLKBaseEffect *)self material];
    *&self->_propertyArrayStale = 257;
    return self->_light1;
  }

  return result;
}

- (GLKEffectPropertyLight)light2
{
  result = self->_light2;
  if (!result)
  {
    v4 = [[GLKEffectPropertyLight alloc] initWithTransform:self->_transform lightingType:self->_lightingType firstLight:0];
    self->_light2 = v4;
    [(NSMutableArray *)self->_propertyArray addObject:v4];
    self->_material = [(GLKBaseEffect *)self material];
    *&self->_propertyArrayStale = 257;
    return self->_light2;
  }

  return result;
}

- (GLKEffectPropertyMaterial)material
{
  result = self->_material;
  if (!result)
  {
    v4 = objc_alloc_init(GLKEffectPropertyMaterial);
    self->_material = v4;
    [(NSMutableArray *)self->_propertyArray addObject:v4];
    result = [(GLKBaseEffect *)self material];
    self->_material = result;
    *&self->_propertyArrayStale = 257;
  }

  return result;
}

- (GLKEffectPropertyTexture)texture2d0
{
  result = self->_texture2d0;
  if (!result)
  {
    v4 = objc_alloc_init(GLKEffectPropertyTexture);
    self->_texture2d0 = v4;
    [(NSMutableArray *)self->_propertyArray addObject:v4];
    *&self->_propertyArrayStale = 257;
    return self->_texture2d0;
  }

  return result;
}

- (GLKEffectPropertyTexture)texture2d1
{
  result = self->_texture2d1;
  if (!result)
  {
    v4 = objc_alloc_init(GLKEffectPropertyTexture);
    self->_texture2d1 = v4;
    [(NSMutableArray *)self->_propertyArray addObject:v4];
    *&self->_propertyArrayStale = 257;
    return self->_texture2d1;
  }

  return result;
}

- (GLKEffectPropertyFog)fog
{
  result = self->_fog;
  if (!result)
  {
    v4 = objc_alloc_init(GLKEffectPropertyFog);
    self->_fog = v4;
    [(NSMutableArray *)self->_propertyArray addObject:v4];
    *&self->_propertyArrayStale = 257;
    return self->_fog;
  }

  return result;
}

- (GLKVector4)constantColor
{
  v2 = [(GLKEffectPropertyConstantColor *)self->_constantColorProp color];
  *&result.v[2] = v3;
  *&result.x = v2;
  return result;
}

- (void)setLightModelAmbientColor:(GLKVector4)lightModelAmbientColor
{
  v7.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
  v7.i64[1] = __PAIR64__(LODWORD(v6), LODWORD(v5));
  v8 = vceqq_f32(v7, self->_lightModelAmbientColor);
  *v8.i8 = vand_s8(*&vextq_s8(v8, v8, 8uLL), vand_s8(*v8.i8, 0x100000001));
  if (!vand_s8(vdup_lane_s32(*v8.i8, 1), *v8.i8).u32[0])
  {
    self->_lightModelAmbientColor.x = v3;
    self->_lightModelAmbientColor.y = v4;
    self->_lightModelAmbientColor.z = v5;
    self->_lightModelAmbientColor.w = v6;
    effect = self->_effect;
    if (effect)
    {
      [(GLKEffect *)effect setLightModelAmbientColor:*&lightModelAmbientColor.x, *&lightModelAmbientColor.v[2]];
    }
  }
}

- (void)setColorMaterialEnabled:(GLBOOLean)colorMaterialEnabled
{
  if (self->_colorMaterialEnabled != colorMaterialEnabled)
  {
    self->_colorMaterialEnabled = colorMaterialEnabled;
    effect = self->_effect;
    if (effect)
    {
      [(GLKEffect *)effect setColorMaterialEnabled:?];
    }
  }
}

- (void)setLightModelTwoSided:(GLBOOLean)lightModelTwoSided
{
  if (self->_lightModelTwoSided != lightModelTwoSided)
  {
    self->_lightModelTwoSided = lightModelTwoSided;
    effect = self->_effect;
    if (effect)
    {
      [(GLKEffect *)effect setLightModelTwoSided:?];
    }
  }
}

- (void)setUseConstantColor:(GLBOOLean)useConstantColor
{
  if (self->_useConstantColor != useConstantColor)
  {
    self->_useConstantColor = useConstantColor;
    self->_effectStale = 1;
  }
}

- (BOOL)perVertexLightingEnabled
{
  if (self->_lightingType)
  {
    return 0;
  }

  if ([(GLKEffectPropertyLight *)self->_light0 enabled]|| [(GLKEffectPropertyLight *)self->_light1 enabled])
  {
    return 1;
  }

  return [(GLKEffectPropertyLight *)self->_light2 enabled]!= 0;
}

- (BOOL)perPixelLightingEnabled
{
  if (self->_lightingType != 1)
  {
    return 0;
  }

  if ([(GLKEffectPropertyLight *)self->_light0 enabled]|| [(GLKEffectPropertyLight *)self->_light1 enabled])
  {
    return 1;
  }

  return [(GLKEffectPropertyLight *)self->_light2 enabled]!= 0;
}

- (void)updateBaseEffect
{
  effect = self->_effect;
  if (effect)
  {
    if (self->_propertyArrayStale)
    {

      self->_effect = [[GLKEffect alloc] initWithPropertyArray:self->_propertyArray];
    }
  }

  else
  {
    [(NSMutableArray *)self->_propertyArray insertObject:self->_transform atIndex:0];
    v4 = [[GLKEffect alloc] initWithPropertyArray:self->_propertyArray];
    self->_effect = v4;
    *&v5 = self->_lightModelAmbientColor.x;
    *&v6 = self->_lightModelAmbientColor.y;
    *&v7 = self->_lightModelAmbientColor.z;
    *&v8 = self->_lightModelAmbientColor.w;
    [(GLKEffect *)v4 setLightModelAmbientColor:v5, v6, v7, v8];
    [(GLKEffect *)self->_effect setColorMaterialEnabled:self->_colorMaterialEnabled];
    [(GLKEffect *)self->_effect setLightModelTwoSided:self->_lightModelTwoSided];
  }

  [(GLKEffect *)self->_effect setLabel:[(GLKBaseEffect *)self label]];
  [(GLKEffectPropertyConstantColor *)self->_constantColorProp setEnabled:self->_useConstantColor];
  if (self->_textureOrder)
  {
    v9 = self->_effect;

    [(GLKEffect *)v9 setTextureOrder:?];
  }
}

- (void)prepareToDraw
{
  if (self->_effectStale)
  {
    [(GLKBaseEffect *)self updateBaseEffect];
    *&self->_propertyArrayStale = 0;
  }

  effect = self->_effect;

  [(GLKEffect *)effect bind];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"self = %p - %@\n{\n", self, self->_label];
  if (self->_lightingType)
  {
    v4 = "GLKLightingTypePerPixel";
  }

  else
  {
    v4 = "GLKLightingTypePerVertex";
  }

  [v3 appendFormat:@"lightingType:       %s\n", v4];
  if (self->_lightModelTwoSided)
  {
    v5 = "GL_TRUE";
  }

  else
  {
    v5 = "GL_FALSE";
  }

  [v3 appendFormat:@"lightModelTwoSided: %s\n", v5];
  if (self->_transform)
  {
    [v3 appendFormat:@"%@\n", -[GLKEffectPropertyTransform description](-[GLKBaseEffect transform](self, "transform"), "description")];
  }

  else
  {
    [v3 appendFormat:@"transform = \t\t\tNULL\n", v12];
  }

  if (self->_light0)
  {
    [v3 appendFormat:@"light0 = %p\n", -[GLKBaseEffect light0](self, "light0")];
    [v3 appendFormat:@"%@\n", -[GLKEffectPropertyLight description](-[GLKBaseEffect light0](self, "light0"), "description")];
  }

  else
  {
    [v3 appendFormat:@"light0 = \tNULL\n", v13];
  }

  if (self->_light1)
  {
    [v3 appendFormat:@"light1 = %p\n", -[GLKBaseEffect light1](self, "light1")];
    [v3 appendFormat:@"%@\n", -[GLKEffectPropertyLight description](-[GLKBaseEffect light1](self, "light1"), "description")];
  }

  else
  {
    [v3 appendFormat:@"light1 = \tNULL\n", v14];
  }

  if (self->_light2)
  {
    [v3 appendFormat:@"light2 = %p\n", -[GLKBaseEffect light2](self, "light2")];
    [v3 appendFormat:@"%@\n", -[GLKEffectPropertyLight description](-[GLKBaseEffect light2](self, "light2"), "description")];
  }

  else
  {
    [v3 appendFormat:@"light2 = \tNULL\n", v15];
  }

  if (self->_material)
  {
    [v3 appendFormat:@"material = %p\n", -[GLKBaseEffect material](self, "material")];
    [v3 appendFormat:@"%@\n", -[GLKEffectPropertyMaterial description](-[GLKBaseEffect material](self, "material"), "description")];
  }

  else
  {
    [v3 appendFormat:@"material = \tNULL\n", v16];
  }

  if (self->_texture2d0)
  {
    [v3 appendFormat:@"texture2d0 = %p\n", -[GLKBaseEffect texture2d0](self, "texture2d0")];
    [v3 appendFormat:@"%@\n", -[GLKEffectPropertyTexture description](-[GLKBaseEffect texture2d0](self, "texture2d0"), "description")];
  }

  else
  {
    [v3 appendFormat:@"texture2d0 = \t\tNULL\n", v17];
  }

  if (self->_texture2d1)
  {
    [v3 appendFormat:@"texture2d1 = %p\n", -[GLKBaseEffect texture2d1](self, "texture2d1")];
    [v3 appendFormat:@"%@\n", -[GLKEffectPropertyTexture description](-[GLKBaseEffect texture2d1](self, "texture2d1"), "description")];
  }

  else
  {
    [v3 appendFormat:@"texture2d1 = \t\tNULL\n", v18];
  }

  constantColorProp = self->_constantColorProp;
  if (constantColorProp)
  {
    [(GLKEffectPropertyConstantColor *)constantColorProp color];
    [v3 appendFormat:@"constantColor = {%f, %f, %f, %f}\n", v9, v10, v7, v8];
  }

  else
  {
    [v3 appendFormat:@"constantColor = \tNULL\n", v19, v21, v22, v23];
  }

  if (self->_fog)
  {
    [v3 appendFormat:@"fog = %p\n", -[GLKBaseEffect fog](self, "fog")];
    [v3 appendFormat:@"%@\n", -[GLKEffectPropertyFog description](-[GLKBaseEffect fog](self, "fog"), "description")];
  }

  else
  {
    [v3 appendFormat:@"fog = \t\t\t\tNULL\n", v20];
  }

  [v3 appendFormat:@"}"];
  return v3;
}

- (void)dealloc
{
  effect = self->_effect;
  if (effect)
  {
  }

  v4.receiver = self;
  v4.super_class = GLKBaseEffect;
  [(GLKBaseEffect *)&v4 dealloc];
}

- (GLKVector4)lightModelAmbientColor
{
  x = self->_lightModelAmbientColor.x;
  y = self->_lightModelAmbientColor.y;
  z = self->_lightModelAmbientColor.z;
  w = self->_lightModelAmbientColor.w;
  *&result.v[2] = a2;
  *&result.x = self;
  return result;
}

@end