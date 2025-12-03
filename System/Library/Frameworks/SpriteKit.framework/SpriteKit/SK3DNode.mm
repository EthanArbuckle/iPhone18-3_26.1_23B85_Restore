@interface SK3DNode
+ (SK3DNode)nodeWithViewportSize:(CGSize)viewportSize;
- (CGSize)viewportSize;
- (NSArray)hitTest:(CGPoint)point options:(NSDictionary *)options;
- (SK3DNode)init;
- (SK3DNode)initWithCoder:(NSCoder *)aDecoder;
- (SK3DNode)initWithViewportSize:(CGSize)viewportSize;
- (id)copyWithZone:(_NSZone *)zone;
- (vector_float3)projectPoint:(vector_float3)point;
- (vector_float3)unprojectPoint:(vector_float3)point;
- (void)_didMakeBackingNode;
- (void)encodeWithCoder:(id)coder;
- (void)setScnScene:(SCNScene *)scnScene;
- (void)setViewportSize:(CGSize)viewportSize;
@end

@implementation SK3DNode

- (void)_didMakeBackingNode
{
  v3.receiver = self;
  v3.super_class = SK3DNode;
  [(SKNode *)&v3 _didMakeBackingNode];
  self->_skc3DNode = [(SKNode *)self _backingNode];
}

- (SK3DNode)init
{
  v2 = [(SK3DNode *)self initWithViewportSize:1.0, 1.0];
  [(SK3DNode *)v2 commonInit];
  return v2;
}

- (SK3DNode)initWithViewportSize:(CGSize)viewportSize
{
  height = viewportSize.height;
  width = viewportSize.width;
  v8.receiver = self;
  v8.super_class = SK3DNode;
  v5 = [(SKNode *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SK3DNode *)v5 commonInit];
    [(SKNode *)v6 set_anchorPoint:0.5, 0.5];
    [(SK3DNode *)v6 setViewportSize:width, height];
  }

  return v6;
}

- (SK3DNode)initWithCoder:(NSCoder *)aDecoder
{
  v4 = aDecoder;
  v9.receiver = self;
  v9.super_class = SK3DNode;
  v5 = [(SKNode *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(SK3DNode *)v5 commonInit];
    [(NSCoder *)v4 decodeCGSizeForKey:@"viewportSize"];
    [(SK3DNode *)v6 setViewportSize:?];
    v7 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_scene"];
    [(SK3DNode *)v6 setScnScene:v7];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = SK3DNode;
  [(SKNode *)&v6 encodeWithCoder:coderCopy];
  [(SK3DNode *)self viewportSize];
  [coderCopy encodeCGSize:@"viewportSize" forKey:?];
  scnScene = [(SK3DNode *)self scnScene];
  [coderCopy encodeObject:scnScene forKey:@"_scene"];
}

- (void)setViewportSize:(CGSize)viewportSize
{
  height = viewportSize.height;
  width = viewportSize.width;
  Scale = SKCNode::getScale(self->_skc3DNode);
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
  SKCNode::setSize(self->_skc3DNode, &v14);
}

- (CGSize)viewportSize
{
  v2 = vcvtq_f64_f32(vmul_f32(SKCNode::getScale(self->_skc3DNode).n128_u64[0], *(self->_skc3DNode + 336)));
  v3 = v2.f64[1];
  result.width = v2.f64[0];
  result.height = v3;
  return result;
}

+ (SK3DNode)nodeWithViewportSize:(CGSize)viewportSize
{
  v3 = [objc_alloc(objc_opt_class()) initWithViewportSize:{viewportSize.width, viewportSize.height}];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SK3DNode;
  v4 = [(SKNode *)&v8 copyWithZone:zone];
  [(SK3DNode *)self viewportSize];
  [v4 setViewportSize:?];
  scnScene = [(SK3DNode *)self scnScene];
  v6 = [scnScene copy];
  [v4 setScnScene:v6];

  return v4;
}

- (void)setScnScene:(SCNScene *)scnScene
{
  v13 = scnScene;
  skc3DNode = self->_skc3DNode;
  if (*(skc3DNode + 73))
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"kC3DSceneDidUpdateNotification" object:*(self->_skc3DNode + 73)];

    skc3DNode = self->_skc3DNode;
  }

  objc_storeStrong(skc3DNode + 73, scnScene);
  [*(self->_skc3DNode + 70) setScene:*(self->_skc3DNode + 73)];
  pointOfView = [*(self->_skc3DNode + 70) pointOfView];
  [pointOfView position];
  v8 = self->_skc3DNode;
  v8[142] = v9;
  v8[143] = v10;
  v8[144] = v11;

  if (v13)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__scnSceneDidUpdate_ name:@"kC3DSceneDidUpdateNotification" object:v13];
  }
}

- (NSArray)hitTest:(CGPoint)point options:(NSDictionary *)options
{
  v4 = [*(self->_skc3DNode + 70) hitTest:options options:{point.x, point.y}];

  return v4;
}

- (vector_float3)projectPoint:(vector_float3)point
{
  LODWORD(v4) = DWORD1(v3);
  LODWORD(v5) = DWORD2(v3);
  v6 = [*(self->_skc3DNode + 70) projectPoint:{point.i64[0], point.i64[1], *&v3, v4, v5}];
  result.i64[1] = v7;
  result.i64[0] = v6;
  return result;
}

- (vector_float3)unprojectPoint:(vector_float3)point
{
  LODWORD(v4) = DWORD1(v3);
  LODWORD(v5) = DWORD2(v3);
  v6 = [*(self->_skc3DNode + 70) unprojectPoint:{point.i64[0], point.i64[1], *&v3, v4, v5}];
  result.i64[1] = v7;
  result.i64[0] = v6;
  return result;
}

@end