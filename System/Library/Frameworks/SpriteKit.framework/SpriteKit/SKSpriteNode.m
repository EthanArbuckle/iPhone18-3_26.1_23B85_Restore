@interface SKSpriteNode
+ (SKSpriteNode)spriteNodeWithColor:(UIColor *)color size:(CGSize)size;
+ (SKSpriteNode)spriteNodeWithImageNamed:(NSString *)name;
+ (SKSpriteNode)spriteNodeWithImageNamed:(NSString *)name normalMapped:(BOOL)generateNormalMap;
+ (SKSpriteNode)spriteNodeWithTexture:(SKTexture *)texture;
+ (SKSpriteNode)spriteNodeWithTexture:(SKTexture *)texture normalMap:(SKTexture *)normalMap;
+ (SKSpriteNode)spriteNodeWithTexture:(SKTexture *)texture size:(CGSize)size;
+ (id)debugHierarchyPropertyDescriptions;
+ (id)debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)Mutable;
- (BOOL)_pathFromTextureToPoints:(SKSpriteNode *)self outSize:(SEL)a2 accuracy:;
- (BOOL)isEqualToNode:(id)a3;
- (CGPoint)anchorPoint;
- (CGRect)centerRect;
- (CGSize)repeatTextureSize;
- (CGSize)size;
- (NSString)description;
- (SKAttributeValue)valueForAttributeNamed:(NSString *)key;
- (SKSpriteNode)init;
- (SKSpriteNode)initWithCoder:(NSCoder *)aDecoder;
- (SKSpriteNode)initWithImageNamed:(NSString *)name;
- (SKSpriteNode)initWithTexture:(SKTexture *)texture;
- (SKSpriteNode)initWithTexture:(SKTexture *)texture color:(UIColor *)color size:(CGSize)size;
- (SKTexture)normalTexture;
- (SKTexture)texture;
- (UIColor)color;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_didMakeBackingNode;
- (void)encodeWithCoder:(id)a3;
- (void)scaleToSize:(CGSize)size;
- (void)setAnchorPoint:(CGPoint)anchorPoint;
- (void)setBounds:(CGRect)a3;
- (void)setCenterRect:(CGRect)centerRect;
- (void)setColor:(UIColor *)color;
- (void)setColorBlendFactor:(CGFloat)colorBlendFactor;
- (void)setNormalTexture:(SKTexture *)normalTexture;
- (void)setShader:(SKShader *)shader;
- (void)setSize:(CGSize)size;
- (void)setTexture:(SKTexture *)texture;
- (void)setValue:(SKAttributeValue *)value forAttributeNamed:(NSString *)key;
@end

@implementation SKSpriteNode

- (SKSpriteNode)initWithTexture:(SKTexture *)texture color:(UIColor *)color size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v9 = texture;
  v10 = color;
  v15.receiver = self;
  v15.super_class = SKSpriteNode;
  v11 = [(SKNode *)&v15 init];
  if (v11)
  {
    if (width < 0.0 || height < 0.0)
    {
      v12 = MEMORY[0x277CBEAD8];
      v16.width = width;
      v16.height = height;
      v13 = NSStringFromCGSize(v16);
      [v12 raise:*MEMORY[0x277CBE660] format:{@"Invalid size specified: %@", v13}];
    }

    [(SKSpriteNode *)v11 setColor:v10];
    [(SKSpriteNode *)v11 setSize:width, height];
    [(SKSpriteNode *)v11 setTexture:v9];
    [(SKSpriteNode *)v11 setLightingBitMask:0];
    [(SKSpriteNode *)v11 setShadowCastBitMask:0];
    [(SKSpriteNode *)v11 setShadowedBitMask:0];
  }

  return v11;
}

- (void)_didMakeBackingNode
{
  v3.receiver = self;
  v3.super_class = SKSpriteNode;
  [(SKNode *)&v3 _didMakeBackingNode];
  self->_skcSpriteNode = [(SKNode *)self _backingNode];
}

- (SKSpriteNode)init
{
  v3 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
  v4 = [(SKSpriteNode *)self initWithTexture:0 color:v3 size:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];

  return v4;
}

- (SKSpriteNode)initWithCoder:(NSCoder *)aDecoder
{
  v4 = aDecoder;
  v5 = self;
  v43.receiver = v5;
  v43.super_class = SKSpriteNode;
  v6 = [(SKNode *)&v43 initWithCoder:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6 == v5;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_shader"];
    [(SKSpriteNode *)v7 setShader:v9];

    v10 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_normalTexture"];
    [(SKSpriteNode *)v7 setNormalTexture:v10];

    [(SKSpriteNode *)v7 setLightingBitMask:[(NSCoder *)v4 decodeInt32ForKey:@"_lightingBitMask"]];
    [(SKSpriteNode *)v7 setShadowCastBitMask:[(NSCoder *)v4 decodeInt32ForKey:@"_shadowCastBitMask"]];
    [(SKSpriteNode *)v7 setShadowedBitMask:[(NSCoder *)v4 decodeInt32ForKey:@"_shadowedBitMask"]];
    v11 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_centerRect"];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = CGRectFromString(v11);
      }

      else
      {
        [(NSString *)v11 CGRectValue];
      }

      [(SKSpriteNode *)v7 setCenterRect:v44.origin.x, v44.origin.y, v44.size.width, v44.size.height];
    }

    v12 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_texture"];
    [(SKSpriteNode *)v7 setTexture:v12];

    v13 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bounds"];
    [v13 CGRectValue];
    v15 = v14;
    v17 = v16;

    skcSpriteNode = v7->_skcSpriteNode;
    *&v19 = v15;
    *&v20 = v17;
    v42 = __PAIR64__(v20, v19);
    SKCNode::setSize(skcSpriteNode, &v42);
    v21 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_colorMix"];
    [v21 doubleValue];
    [(SKSpriteNode *)v7 setColorBlendFactor:?];

    v22 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_blendMode"];
    -[SKSpriteNode setBlendMode:](v7, "setBlendMode:", [v22 intValue]);

    v23 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_baseColorR"];
    [v23 doubleValue];
    v25 = v24;
    v26 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_baseColorG"];
    [v26 doubleValue];
    v28 = v27;
    v29 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_baseColorB"];
    [v29 doubleValue];
    v31 = v30;
    v32 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_baseColorA"];
    [v32 doubleValue];
    v34 = v33;

    *&v25 = v25;
    LODWORD(v35) = LODWORD(v25);
    *&v28 = v28;
    LODWORD(v36) = LODWORD(v28);
    *&v31 = v31;
    LODWORD(v37) = LODWORD(v31);
    *&v38 = v34;
    v39 = [MEMORY[0x277D75348] colorWithComponentRGBA:{v35, v36, v37, v38}];
    [(SKSpriteNode *)v7 setColor:v39];

    v40 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_warpGeometry"];
    [(SKSpriteNode *)v7 setWarpGeometry:v40];

    [(SKSpriteNode *)v7 setSubdivisionLevels:[(NSCoder *)v4 decodeIntegerForKey:@"_subdivisionLevels"]];
  }

  return v7;
}

- (SKSpriteNode)initWithImageNamed:(NSString *)name
{
  v4 = [SKTexture textureWithImageNamed:name];
  v5 = [(SKSpriteNode *)self initWithTexture:v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SKSpriteNode;
  [(SKNode *)&v25 encodeWithCoder:v4];
  skcSpriteNode = self->_skcSpriteNode;
  v23 = skcSpriteNode[21];
  v6 = vmlsq_f32(SKCNode::getTranslation(skcSpriteNode), skcSpriteNode[22], v23).u64[0];
  v7 = [MEMORY[0x277CCAE60] valueWithCGRect:{*&v6, *(&v6 + 1), v23.f32[0], v23.f32[1]}];
  [v4 encodeObject:v7 forKey:@"_bounds"];

  v8 = [MEMORY[0x277CCABB0] numberWithLong:{-[SKSpriteNode blendMode](self, "blendMode")}];
  [v4 encodeObject:v8 forKey:@"_blendMode"];

  v9 = [(SKSpriteNode *)self shader];
  [v4 encodeObject:v9 forKey:@"_shader"];

  v10 = [(SKSpriteNode *)self normalTexture];
  [v4 encodeObject:v10 forKey:@"_normalTexture"];

  [v4 encodeInt32:-[SKSpriteNode lightingBitMask](self forKey:{"lightingBitMask"), @"_lightingBitMask"}];
  [v4 encodeInt32:-[SKSpriteNode shadowCastBitMask](self forKey:{"shadowCastBitMask"), @"_shadowCastBitMask"}];
  [v4 encodeInt32:-[SKSpriteNode shadowedBitMask](self forKey:{"shadowedBitMask"), @"_shadowedBitMask"}];
  v11 = [(SKSpriteNode *)self texture];
  [v4 encodeObject:v11 forKey:@"_texture"];

  v12 = MEMORY[0x277CCABB0];
  [(SKSpriteNode *)self colorBlendFactor];
  v13 = [v12 numberWithDouble:?];
  [v4 encodeObject:v13 forKey:@"_colorMix"];

  v14 = MEMORY[0x277CCAE60];
  [(SKSpriteNode *)self anchorPoint];
  v15 = [v14 valueWithCGPoint:?];
  [v4 encodeObject:v15 forKey:@"_anchorPoint"];

  v24 = *(self->_skcSpriteNode + 19);
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:{*&v24, v24}];
  [v4 encodeObject:v16 forKey:@"_baseColorR"];

  v17 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v24 + 1)];
  [v4 encodeObject:v17 forKey:@"_baseColorG"];

  v18 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v24 + 2)];
  [v4 encodeObject:v18 forKey:@"_baseColorB"];

  v19 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v24 + 3)];
  [v4 encodeObject:v19 forKey:@"_baseColorA"];

  v20 = MEMORY[0x277CCAE60];
  [(SKSpriteNode *)self centerRect];
  v21 = [v20 valueWithCGRect:?];
  [v4 encodeObject:v21 forKey:@"_centerRect"];

  v22 = [(SKSpriteNode *)self warpGeometry];
  [v4 encodeObject:v22 forKey:@"_warpGeometry"];

  [v4 encodeInteger:-[SKSpriteNode subdivisionLevels](self forKey:{"subdivisionLevels"), @"_subdivisionLevels"}];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SKSpriteNode *)self anchorPoint];
  v9 = v8;
  v11 = v10;
  [(SKSpriteNode *)self setSize:width, height];

  [(SKNode *)self setPosition:x + v9 * width, y + v11 * height];
}

- (SKSpriteNode)initWithTexture:(SKTexture *)texture
{
  v4 = texture;
  v5 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
  [(SKTexture *)v4 size];
  v6 = [(SKSpriteNode *)self initWithTexture:v4 color:v5 size:?];

  return v6;
}

+ (SKSpriteNode)spriteNodeWithImageNamed:(NSString *)name
{
  v3 = name;
  v4 = objc_opt_class();
  v5 = [SKTexture textureWithImageNamed:v3];
  v6 = [v4 spriteNodeWithTexture:v5];

  return v6;
}

+ (SKSpriteNode)spriteNodeWithImageNamed:(NSString *)name normalMapped:(BOOL)generateNormalMap
{
  v4 = generateNormalMap;
  v5 = [SKTexture textureWithImageNamed:name];
  v6 = [objc_opt_class() spriteNodeWithTexture:v5];
  if (v4)
  {
    v7 = [v5 textureByGeneratingNormalMap];
    [v6 setNormalTexture:v7];
  }

  return v6;
}

+ (SKSpriteNode)spriteNodeWithTexture:(SKTexture *)texture
{
  v3 = texture;
  v4 = [objc_alloc(objc_opt_class()) initWithTexture:v3];

  return v4;
}

+ (SKSpriteNode)spriteNodeWithTexture:(SKTexture *)texture size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = texture;
  v7 = [objc_opt_class() spriteNodeWithTexture:v6];
  if (width < 0.0 || height < 0.0)
  {
    v8 = MEMORY[0x277CBEAD8];
    v12.width = width;
    v12.height = height;
    v9 = NSStringFromCGSize(v12);
    [v8 raise:*MEMORY[0x277CBE660] format:{@"Invalid bounds specified: %@", v9}];
  }

  [v7 setSize:{width, height}];

  return v7;
}

+ (SKSpriteNode)spriteNodeWithTexture:(SKTexture *)texture normalMap:(SKTexture *)normalMap
{
  v5 = texture;
  v6 = normalMap;
  v7 = [objc_opt_class() spriteNodeWithTexture:v5];
  [v7 setNormalTexture:v6];

  return v7;
}

+ (SKSpriteNode)spriteNodeWithColor:(UIColor *)color size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = color;
  v7 = [objc_alloc(objc_opt_class()) initWithColor:v6 size:{width, height}];

  return v7;
}

- (NSString)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [(SKNode *)self name];
  v6 = [(SKSpriteNode *)self texture];
  if (v6)
  {
    v2 = [(SKSpriteNode *)self texture];
    v7 = [v2 description];
  }

  else
  {
    v7 = @"'nil'";
  }

  [(SKNode *)self position];
  v8 = NSStringFromCGPoint(v19);
  [(SKNode *)self xScale];
  v10 = v9;
  [(SKNode *)self yScale];
  v12 = v11;
  [(SKSpriteNode *)self size];
  v13 = NSStringFromCGSize(v20);
  [(SKSpriteNode *)self anchorPoint];
  v14 = NSStringFromCGPoint(v21);
  [(SKNode *)self zRotation];
  v16 = [v4 stringWithFormat:@"<SKSpriteNode> name:'%@' texture:[%@] position:%@ scale:{%.2f, %.2f} size:%@ anchor:%@ rotation:%.2f", v5, v7, v8, v10, v12, v13, v14, v15];

  if (v6)
  {
  }

  return v16;
}

- (SKTexture)texture
{

  return v2;
}

- (void)setTexture:(SKTexture *)texture
{
  v4 = texture;
  skcNode = self->super._skcNode;
  v6 = v4;
  if (skcNode)
  {
    v4 = v6;
  }

  SKCSpriteNode::setPrimaryTexture(skcNode, v4);
}

- (void)setNormalTexture:(SKTexture *)normalTexture
{
  v4 = normalTexture;
  skcNode = self->super._skcNode;
  v6 = v4;
  if (skcNode)
  {
    v4 = v6;
  }

  SKCSpriteNode::setSecondaryTexture(skcNode, v4);
}

- (SKTexture)normalTexture
{

  return v2;
}

- (void)setShader:(SKShader *)shader
{
  v4 = shader;
  [*(self->_skcSpriteNode + 74) _removeTargetNode:self];
  SKCSpriteNode::setShader(self->_skcSpriteNode, v4);
  [(SKShader *)v4 _addTargetNode:self];
}

- (void)setColorBlendFactor:(CGFloat)colorBlendFactor
{
  skcSpriteNode = self->_skcSpriteNode;
  v4 = colorBlendFactor;
  v5 = fminf(fmaxf(v4, 0.0), 1.0);
  (*(*skcSpriteNode + 192))(skcSpriteNode, &v5);
}

- (UIColor)color
{
  LODWORD(v2) = HIDWORD(*(self->_skcSpriteNode + 38));
  LODWORD(v3) = *(self->_skcSpriteNode + 39);
  LODWORD(v4) = HIDWORD(*(self->_skcSpriteNode + 19));
  return [MEMORY[0x277D75348] colorWithComponentRGBA:{*(self->_skcSpriteNode + 38), v2, v3, v4}];
}

- (void)setColor:(UIColor *)color
{
  v4 = color;
  [(UIColor *)v4 componentRGBA];
  skcSpriteNode = self->_skcSpriteNode;
  DWORD1(v7) = v6;
  *(&v7 + 1) = __PAIR64__(v9, v8);
  v10 = v7;
  (*(*skcSpriteNode + 184))(skcSpriteNode, &v10);
}

- (CGPoint)anchorPoint
{
  v2 = vcvtq_f64_f32(*(self->_skcSpriteNode + 352));
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (void)setAnchorPoint:(CGPoint)anchorPoint
{
  *&v3 = anchorPoint.x;
  *&v4 = anchorPoint.y;
  v5 = __PAIR64__(v4, v3);
  SKCNode::setAnchor(self->_skcSpriteNode, &v5);
}

- (CGSize)size
{
  v2 = vcvtq_f64_f32(vmul_f32(*&vabsq_f32(SKCNode::getScale(self->_skcSpriteNode)), *(self->_skcSpriteNode + 336)));
  v3 = v2.f64[1];
  result.width = v2.f64[0];
  result.height = v3;
  return result;
}

- (void)setSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  Scale = SKCNode::getScale(self->_skcSpriteNode);
  v7.i32[0] = 0;
  *&v8 = width;
  *&v9 = height;
  v10 = __PAIR64__(v9, v8);
  v11 = vandq_s8(vclezq_f32(Scale), xmmword_21C4B90D0);
  v11.i32[0] = vaddvq_s32(v11);
  v12.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v12.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v7.i64[0] = vceqq_s8(vandq_s8(v11, v12), vandq_s8(v7, v12)).u64[0];
  v13 = vdupq_lane_s8(*v7.i8, 0);
  v14 = vbslq_s8(vdupq_n_s64(v7.i8[0] & 0xF | (16 * (v13.i8[1] & 0xF)) | ((v13.i8[2] & 0xF) << 8) & 0xFFF | ((v13.i8[3] & 0xFu) << 12) | ((v13.i8[4] & 0xF) << 16) & 0xFFFFFFFFFF0FFFFFLL | ((v13.i8[5] & 0xF) << 20) | ((v13.i8[6] & 0xF) << 24) | ((v13.i8[7] & 0xF) << 28) | ((v13.i8[8] & 0xF) << 32) | ((v13.i8[9] & 0xF) << 36) | ((v13.i8[10] & 0xF) << 40) | ((v13.i8[11] & 0xF) << 44) | ((v13.i8[12] & 0xF) << 48) | ((v13.i8[13] & 0xF) << 52) | ((v13.i8[14] & 0xF) << 56) | (v13.u8[15] << 60)), vdivq_f32(v10, Scale), v10);
  SKCNode::setSize(self->_skcSpriteNode, &v14);
}

- (void)scaleToSize:(CGSize)size
{
  skcSpriteNode = self->_skcSpriteNode;
  v4 = *(skcSpriteNode + 21);
  v5 = vceqz_s32(vand_s8(*&v4, 0x6000000060000000));
  if (((v5.i32[0] | v5.i32[1]) & 1) == 0)
  {
    height = size.height;
    *&size.width = vdiv_f32(vcvt_f32_f64(size), *&v4);
    SKCNode::setScale(skcSpriteNode, size);
  }
}

- (CGRect)centerRect
{
  skcSpriteNode = self->_skcSpriteNode;
  v3 = COERCE_FLOAT(skcSpriteNode[36]);
  v4 = COERCE_FLOAT(HIDWORD(*(skcSpriteNode + 72)));
  v5 = COERCE_FLOAT(*(skcSpriteNode + 73));
  v6 = COERCE_FLOAT(HIDWORD(skcSpriteNode[36]));
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setCenterRect:(CGRect)centerRect
{
  height = centerRect.size.height;
  y = centerRect.origin.y;
  *(self->_skcSpriteNode + 36) = vcvt_hight_f32_f64(vcvt_f32_f64(centerRect.origin), centerRect.size);
}

- (CGSize)repeatTextureSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)copy
{
  v3 = MEMORY[0x21CF09E30](self, a2);

  return [(SKSpriteNode *)self copyWithZone:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = SKSpriteNode;
  v4 = [(SKNode *)&v10 copyWithZone:a3];
  v5 = [(SKSpriteNode *)self texture];
  [v4 setTexture:v5];

  [(SKSpriteNode *)self size];
  [v4 setSize:?];
  v6 = [(SKSpriteNode *)self color];
  [v4 setColor:v6];

  [(SKSpriteNode *)self colorBlendFactor];
  [v4 setColorBlendFactor:?];
  [v4 setBlendMode:{-[SKSpriteNode blendMode](self, "blendMode")}];
  [v4 setLightingBitMask:{-[SKSpriteNode lightingBitMask](self, "lightingBitMask")}];
  [v4 setShadowCastBitMask:{-[SKSpriteNode shadowCastBitMask](self, "shadowCastBitMask")}];
  [v4 setShadowedBitMask:{-[SKSpriteNode shadowedBitMask](self, "shadowedBitMask")}];
  v7 = [(SKSpriteNode *)self normalTexture];
  [v4 setNormalTexture:v7];

  v8 = [(SKSpriteNode *)self shader];
  [v4 setShader:v8];

  [(SKSpriteNode *)self centerRect];
  [v4 setCenterRect:?];
  return v4;
}

- (BOOL)isEqualToNode:(id)a3
{
  v8 = a3;
  if (self == v8)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v48.receiver = self;
      v48.super_class = SKSpriteNode;
      if ([(SKNode *)&v48 isEqualToNode:v9])
      {
        [(SKSpriteNode *)self size];
        v11 = v10;
        v13 = v12;
        [(SKSpriteNode *)v9 size];
        LOBYTE(v15) = 0;
        if (v11 == v16 && v13 == v14)
        {
          [(SKSpriteNode *)self anchorPoint];
          v18 = v17;
          v20 = v19;
          [(SKSpriteNode *)v9 anchorPoint];
          v15 = SKBlendModeAlpha;
          if (v18 == v22 && v20 == v21)
          {
            v23 = [(SKSpriteNode *)self texture];
            v24 = [v23 imageNameOrPath];
            if (v24 || (-[SKSpriteNode texture](v9, "texture"), v45 = objc_claimAutoreleasedReturnValue(), [v45 imageNameOrPath], (v15 = objc_claimAutoreleasedReturnValue()) != SKBlendModeAlpha))
            {
              v4 = [(SKSpriteNode *)self texture];
              v5 = [v4 imageNameOrPath];
              v6 = [(SKSpriteNode *)v9 texture];
              v3 = [v6 imageNameOrPath];
              if (![v5 isEqualToString:v3])
              {
                v47 = v15;
                LOBYTE(v15) = 0;
                goto LABEL_23;
              }

              v46 = 1;
            }

            else
            {
              v46 = 0;
            }

            v47 = v15;
            [(SKSpriteNode *)self centerRect];
            v27 = v26;
            v29 = v28;
            v31 = v30;
            v33 = v32;
            [(SKSpriteNode *)v9 centerRect];
            v50.origin.x = v34;
            v50.origin.y = v35;
            v50.size.width = v36;
            v50.size.height = v37;
            v49.origin.x = v27;
            v49.origin.y = v29;
            v49.size.width = v31;
            v49.size.height = v33;
            if (CGRectEqualToRect(v49, v50) && ([(SKSpriteNode *)self colorBlendFactor], v39 = v38, [(SKSpriteNode *)v9 colorBlendFactor], v40 = v39, *&v41 = v41, (COERCE_UNSIGNED_INT(v40 - *&v41) & 0x60000000) == 0))
            {
              v44 = [(SKSpriteNode *)self color];
              v42 = [v44 CGColor];
              v43 = [(SKSpriteNode *)v9 color];
              if (!CGColorEqualToColor(v42, [v43 CGColor]))
              {

                LOBYTE(v15) = 0;
                if (!v46)
                {
                  goto LABEL_24;
                }

                goto LABEL_23;
              }

              v15 = [(SKSpriteNode *)self blendMode];
              LOBYTE(v15) = v15 == [(SKSpriteNode *)v9 blendMode];
            }

            else
            {
              LOBYTE(v15) = 0;
            }

            if ((v46 & 1) == 0)
            {
LABEL_24:
              if (!v24)
              {
              }

              goto LABEL_15;
            }

LABEL_23:

            goto LABEL_24;
          }
        }
      }

      else
      {
        LOBYTE(v15) = 0;
      }

LABEL_15:

      goto LABEL_16;
    }

    LOBYTE(v15) = 0;
  }

LABEL_16:

  return v15;
}

- (BOOL)_pathFromTextureToPoints:(SKSpriteNode *)self outSize:(SEL)a2 accuracy:
{
  v5 = 0;
  if (v2)
  {
    v6 = v3;
    if (v3)
    {
      v7 = v4;
      v8 = v2;
      v10 = [(SKSpriteNode *)self texture];
      [(SKSpriteNode *)self size];
      v12 = v11;
      v14 = v13;
      LODWORD(v11) = 998277249;
      v15 = v12;
      v16 = v14;
      LODWORD(v14) = v7;
      v17 = [SKPhysicsBody bodyWithTexture:v10 alphaThreshold:v11 size:v15 accuracy:v16, v14];

      v18 = [v17 volume];
      v19 = v18;
      v5 = v18 != 0;
      if (v18)
      {
        v20 = *(v18 + 16) - *(v18 + 8);
        *v6 = v20 >> 3;
        *v8 = malloc_type_malloc(v20, 0x100004000313F17uLL);
        v21 = *(v19 + 8);
        if (*(v19 + 16) != v21)
        {
          v22 = 0;
          do
          {
            *(*v8 + v22) = *(v21 + 8 * v22);
            ++v22;
            v21 = *(v19 + 8);
          }

          while (v22 < (*(v19 + 16) - v21) >> 3);
        }

        PKPath::~PKPath(v19);
        MEMORY[0x21CF0A160]();
      }
    }
  }

  return v5;
}

- (SKAttributeValue)valueForAttributeNamed:(NSString *)key
{
  v5.receiver = self;
  v5.super_class = SKSpriteNode;
  v3 = [(SKNode *)&v5 valueForAttributeNamed:key];

  return v3;
}

- (void)setValue:(SKAttributeValue *)value forAttributeNamed:(NSString *)key
{
  v4.receiver = self;
  v4.super_class = SKSpriteNode;
  [(SKNode *)&v4 setValue:value forAttributeNamed:key];
}

+ (id)debugHierarchyPropertyDescriptions
{
  v28[13] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBED60];
  v3 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"propertyName", @"anchorPoint");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"CGPoint");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypePoint");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"CGf, CGf");
  v26 = Mutable;
  v28[0] = Mutable;
  v5 = CFDictionaryCreateMutable(0, 7, v2, v3);
  CFDictionaryAddValue(v5, @"propertyName", @"centerRect");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"CGRect");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeRect");
  CFDictionaryAddValue(v5, @"propertyFormat", @"CGf, CGf, CGf, CGf");
  v25 = v5;
  v28[1] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v6, @"propertyName", @"shader");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v6, @"propertyFormat", @"objectInfo");
  v24 = v6;
  v28[2] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v7, @"propertyName", @"size");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"CGSize");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeSize");
  CFDictionaryAddValue(v7, @"propertyFormat", @"CGf, CGf");
  v23 = v7;
  v28[3] = v7;
  v8 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v8, @"propertyName", @"lightingBitMask");
  CFDictionaryAddValue(v8, @"propertyRuntimeType", @"unsigned long");
  CFDictionaryAddValue(v8, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v8, @"propertyFormat", @"ul");
  v28[4] = v8;
  v9 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v9, @"propertyName", @"shadowCastBitMask");
  CFDictionaryAddValue(v9, @"propertyRuntimeType", @"unsigned long");
  CFDictionaryAddValue(v9, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v9, @"propertyFormat", @"ul");
  v28[5] = v9;
  v10 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v10, @"propertyName", @"shadowedBitMask");
  CFDictionaryAddValue(v10, @"propertyRuntimeType", @"unsigned long");
  CFDictionaryAddValue(v10, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v10, @"propertyFormat", @"ul");
  v28[6] = v10;
  v11 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v11, @"propertyName", @"colorBlendFactor");
  CFDictionaryAddValue(v11, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v11, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v11, @"propertyFormat", @"CGf");
  v28[7] = v11;
  v12 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v12, @"propertyName", @"color");
  CFDictionaryAddValue(v12, @"propertyRuntimeType", @"CGColor");
  CFDictionaryAddValue(v12, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  CFDictionaryAddValue(v12, @"propertyFormat", @"color");
  v28[8] = v12;
  v13 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v13, @"propertyName", @"blendMode");
  CFDictionaryAddValue(v13, @"propertyRuntimeType", @"SKBlendMode");
  CFDictionaryAddValue(v13, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v13, @"propertyFormat", @"integer");
  v28[9] = v13;
  v14 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v14, @"propertyName", @"texture");
  CFDictionaryAddValue(v14, @"propertyRuntimeType", @"CGImage");
  CFDictionaryAddValue(v14, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  CFDictionaryAddValue(v14, @"propertyFormat", @"public.data");
  valuePtr = 1;
  v15 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v14, @"propertyOptions", v15);
  CFRelease(v15);
  v28[10] = v14;
  v16 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v16, @"propertyName", @"normalTexture");
  CFDictionaryAddValue(v16, @"propertyRuntimeType", @"CGImage");
  CFDictionaryAddValue(v16, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  CFDictionaryAddValue(v16, @"propertyFormat", @"public.data");
  valuePtr = 1;
  v17 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v16, @"propertyOptions", v17);
  CFRelease(v17);
  v28[11] = v16;
  v18 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v18, @"propertyName", @"visualRepresentation");
  CFDictionaryAddValue(v18, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeCustom");
  valuePtr = 8;
  v19 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v18, @"visibility", v19);
  CFRelease(v19);
  valuePtr = 1;
  v20 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v18, @"propertyOptions", v20);
  CFRelease(v20);
  v28[12] = v18;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:13];

  return v21;
}

+ (id)debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)Mutable
{
  keys[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v84 = a4;
  if ([v8 isEqualToString:@"texture"])
  {
    Mutable = [v84 texture];

    if (!Mutable)
    {
      goto LABEL_76;
    }

    v9 = [v84 texture];
    v10 = [v9 CGImage];

    if (v10)
    {
      v11 = *MEMORY[0x277CE1E10];
      v12 = [*MEMORY[0x277CE1E10] identifier];
      valuePtr = 1065353216;
      Mutable = CFDataCreateMutable(0, 0);
      v13 = CGImageDestinationCreateWithData(Mutable, v12, 1uLL, 0);
      v14 = *MEMORY[0x277CBECE8];
      v15 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &valuePtr);
      keys[0] = *MEMORY[0x277CD2D48];
      values[0] = v15;
      v16 = CFDictionaryCreate(v14, keys, values, 1, 0, 0);
      CGImageDestinationAddImage(v13, v10, v16);
      CGImageDestinationFinalize(v13);
      CFRelease(v16);
      CFRelease(v15);
      CFRelease(v13);

      v92 = @"propertyFormat";
      v17 = [v11 identifier];
      v93 = v17;
      *a5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
    }

    else
    {
      Mutable = 0;
    }

LABEL_23:
    CGImageRelease(v10);
    goto LABEL_76;
  }

  if ([v8 isEqualToString:@"normalTexture"])
  {
    Mutable = [v84 normalTexture];

    if (!Mutable)
    {
      goto LABEL_76;
    }

    v18 = [v84 normalTexture];
    v10 = [v18 CGImage];

    if (v10)
    {
      v19 = *MEMORY[0x277CE1E10];
      v20 = [*MEMORY[0x277CE1E10] identifier];
      valuePtr = 1065353216;
      Mutable = CFDataCreateMutable(0, 0);
      v21 = CGImageDestinationCreateWithData(Mutable, v20, 1uLL, 0);
      v22 = *MEMORY[0x277CBECE8];
      v23 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &valuePtr);
      keys[0] = *MEMORY[0x277CD2D48];
      values[0] = v23;
      v24 = CFDictionaryCreate(v22, keys, values, 1, 0, 0);
      CGImageDestinationAddImage(v21, v10, v24);
      CGImageDestinationFinalize(v21);
      CFRelease(v24);
      CFRelease(v23);
      CFRelease(v21);

      v90 = @"propertyFormat";
      v25 = [v19 identifier];
      v91 = v25;
      *a5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
    }

    else
    {
      Mutable = 0;
    }

    goto LABEL_23;
  }

  if ([v8 isEqualToString:@"color"])
  {
    v26 = [v84 color];
    v27 = [v26 CGColor];
    if (v27)
    {
      Mutable = CFDictionaryCreateMutable(0, 20, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      space = CGColorGetColorSpace(v27);
      valuea = CGColorSpaceCopyName(space);
      NumberOfComponents = CGColorGetNumberOfComponents(v27);
      v29 = NumberOfComponents << 32;
      v30 = NumberOfComponents;
      if (NumberOfComponents << 32)
      {
        v31 = CFStringCreateMutable(0, 0);
        v32 = v30 - 1;
        if (v30 <= 1)
        {
          v33 = 1;
        }

        else
        {
          v33 = v30;
        }

        do
        {
          CFStringAppend(v31, @"CGf");
          if (v32)
          {
            CFStringAppend(v31, @", ");
          }

          --v32;
          --v33;
        }

        while (v33);
      }

      else
      {
        v31 = &stru_282E190D8;
      }

      Components = CGColorGetComponents(v27);
      v39 = malloc_type_malloc(v29 >> 29, 0x6004044C4A2DFuLL);
      v40 = v39;
      if (v29)
      {
        if (v30 <= 1)
        {
          v41 = 1;
        }

        else
        {
          v41 = v30;
        }

        v42 = v39;
        do
        {
          *v42++ = CFNumberCreate(0, kCFNumberCGFloatType, Components++);
          --v41;
        }

        while (v41);
      }

      v43 = CFArrayCreate(0, v40, v30, MEMORY[0x277CBF128]);
      if (v29)
      {
        if (v30 <= 1)
        {
          v44 = 1;
        }

        else
        {
          v44 = v30;
        }

        v45 = v40;
        do
        {
          CFRelease(*v45++);
          --v44;
        }

        while (v44);
      }

      free(v40);
      CGColorSpaceGetModel(space);
      if (v43)
      {
        CFDictionaryAddValue(Mutable, @"componentValues", v43);
      }

      if (v31)
      {
        CFDictionaryAddValue(Mutable, @"componentValuesFormat", v31);
      }

      if (valuea)
      {
        CFDictionaryAddValue(Mutable, @"colorSpaceName", valuea);
      }

      if (v43)
      {
        CFRelease(v43);
      }

      if (valuea)
      {
        CFRelease(valuea);
      }

      if (v31)
      {
        CFRelease(v31);
      }
    }

    else
    {
      Mutable = 0;
    }

    goto LABEL_76;
  }

  if (![v8 isEqualToString:@"visualRepresentation"])
  {
    v35 = v84;
    v36 = v8;
    if (![v36 length])
    {
      goto LABEL_66;
    }

    NSSelectorFromString(v36);
    if (objc_opt_respondsToSelector())
    {
      v37 = v36;
    }

    else
    {
      if ([v36 length] < 2)
      {
        v51 = [v36 uppercaseString];
      }

      else
      {
        v48 = [v36 substringToIndex:1];
        v49 = [v48 uppercaseString];
        v50 = [v36 substringFromIndex:1];
        v51 = [v49 stringByAppendingString:v50];
      }

      v52 = [@"is" stringByAppendingString:v51];
      NSSelectorFromString(v52);
      v37 = (objc_opt_respondsToSelector() & 1) != 0 ? v52 : 0;
    }

    if (v37)
    {
      Mutable = [v35 valueForKey:v37];
    }

    else
    {
LABEL_66:
      if (Mutable)
      {
        v53 = v35;
        v54 = v36;
        if (v53)
        {
          v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v53];
        }

        else
        {
          v55 = &stru_282E190D8;
        }

        if (v54)
        {
          v56 = v54;
        }

        else
        {
          v56 = &stru_282E190D8;
        }

        v57 = v56;
        values[0] = @"propertyName";
        values[1] = @"objectDescription";
        values[2] = @"errorDescription";
        keys[0] = v57;
        keys[1] = v55;
        keys[2] = &stru_282E190D8;
        v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:keys forKeys:values count:3];
        v59 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v58];

        v60 = v59;
        *Mutable = v59;

        v37 = 0;
        Mutable = 0;
      }

      else
      {
        v37 = 0;
      }
    }

    goto LABEL_76;
  }

  v34 = [v84 texture];
  if (v34)
  {

LABEL_56:
    Mutable = [v84 createDebugHierarchyVisualRepresentation];
    v89[0] = @"SKTexture";
    v88[0] = @"propertyRuntimeType";
    v88[1] = @"propertyFormat";
    v47 = [*MEMORY[0x277CE1E10] identifier];
    v88[2] = @"propertyLogicalType";
    v89[1] = v47;
    v89[2] = @"DebugHierarchyLogicalPropertyTypeImage";
    *a5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:3];

    goto LABEL_76;
  }

  v46 = [v84 shader];

  if (v46)
  {
    goto LABEL_56;
  }

  v62 = [v84 color];
  v63 = [v62 CGColor];
  if (v63)
  {
    v64 = CFDictionaryCreateMutable(0, 20, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
    ColorSpace = CGColorGetColorSpace(v63);
    spacea = CGColorSpaceCopyName(ColorSpace);
    v65 = CGColorGetNumberOfComponents(v63);
    v66 = v65;
    v79 = v65 << 32;
    if (v65 << 32)
    {
      v67 = CFStringCreateMutable(0, 0);
      v68 = v66 - 1;
      if (v66 <= 1)
      {
        v69 = 1;
      }

      else
      {
        v69 = v66;
      }

      do
      {
        CFStringAppend(v67, @"CGf");
        if (v68)
        {
          CFStringAppend(v67, @", ");
        }

        --v68;
        --v69;
      }

      while (v69);
    }

    else
    {
      v67 = &stru_282E190D8;
    }

    v70 = CGColorGetComponents(v63);
    v71 = malloc_type_malloc(v79 >> 29, 0x6004044C4A2DFuLL);
    v72 = v71;
    if (v79)
    {
      if (v66 <= 1)
      {
        v73 = 1;
      }

      else
      {
        v73 = v66;
      }

      v74 = v71;
      do
      {
        *v74++ = CFNumberCreate(0, kCFNumberCGFloatType, v70++);
        --v73;
      }

      while (v73);
    }

    v75 = CFArrayCreate(0, v72, v66, MEMORY[0x277CBF128]);
    if (v79)
    {
      if (v66 <= 1)
      {
        v76 = 1;
      }

      else
      {
        v76 = v66;
      }

      v77 = v72;
      do
      {
        CFRelease(*v77++);
        --v76;
      }

      while (v76);
    }

    free(v72);
    CGColorSpaceGetModel(ColorSpace);
    if (v75)
    {
      CFDictionaryAddValue(v64, @"componentValues", v75);
    }

    if (v67)
    {
      CFDictionaryAddValue(v64, @"componentValuesFormat", v67);
    }

    if (spacea)
    {
      CFDictionaryAddValue(v64, @"colorSpaceName", spacea);
    }

    if (v75)
    {
      CFRelease(v75);
    }

    if (spacea)
    {
      CFRelease(spacea);
    }

    if (v67)
    {
      CFRelease(v67);
    }
  }

  else
  {
    v64 = 0;
  }

  v86[0] = @"propertyRuntimeType";
  v86[1] = @"propertyFormat";
  v87[0] = @"CGColorRef";
  v87[1] = @"color";
  v86[2] = @"propertyLogicalType";
  v87[2] = @"DebugHierarchyLogicalPropertyTypeColor";
  *a5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:3];
  Mutable = v64;
LABEL_76:

  return Mutable;
}

@end