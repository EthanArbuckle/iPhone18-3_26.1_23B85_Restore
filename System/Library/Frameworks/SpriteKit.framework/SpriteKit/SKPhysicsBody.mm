@interface SKPhysicsBody
+ (SKPhysicsBody)allocWithZone:(_NSZone *)zone;
+ (SKPhysicsBody)bodyWithBodies:(NSArray *)bodies;
+ (SKPhysicsBody)bodyWithCircleOfRadius:(CGFloat)r;
+ (SKPhysicsBody)bodyWithCircleOfRadius:(CGFloat)r center:(CGPoint)center;
+ (SKPhysicsBody)bodyWithEdgeChainFromPath:(CGPathRef)path;
+ (SKPhysicsBody)bodyWithEdgeFromPoint:(CGPoint)p1 toPoint:(CGPoint)p2;
+ (SKPhysicsBody)bodyWithEdgeLoopFromPath:(CGPathRef)path;
+ (SKPhysicsBody)bodyWithEdgeLoopFromRect:(CGRect)rect;
+ (SKPhysicsBody)bodyWithPolygonFromPath:(CGPathRef)path;
+ (SKPhysicsBody)bodyWithRectangleOfSize:(CGSize)s;
+ (SKPhysicsBody)bodyWithRectangleOfSize:(CGSize)s center:(CGPoint)center;
+ (SKPhysicsBody)bodyWithTexture:(SKTexture *)texture alphaThreshold:(float)alphaThreshold size:(CGSize)size;
+ (SKPhysicsBody)bodyWithTexture:(SKTexture *)texture size:(CGSize)size;
+ (SKPhysicsBody)bodyWithTexture:(id)texture alphaThreshold:(float)threshold size:(CGSize)size accuracy:(float)accuracy;
+ (id)copyWithZone:(_NSZone *)zone;
- (CGVector)velocity;
- (SKNode)node;
@end

@implementation SKPhysicsBody

+ (SKPhysicsBody)allocWithZone:(_NSZone *)zone
{
  v3 = [MEMORY[0x277D3D0D0] allocWithZone:zone];
  setSKPhysicsDefaults(v3);
  return v3;
}

+ (id)copyWithZone:(_NSZone *)zone
{
  v3 = [MEMORY[0x277D3D0D0] copyWithZone:zone];
  setSKPhysicsDefaults(v3);
  return v3;
}

+ (SKPhysicsBody)bodyWithCircleOfRadius:(CGFloat)r
{
  v3 = [MEMORY[0x277D3D0D0] bodyWithCircleOfRadius:r];
  setSKPhysicsDefaults(v3);

  return v3;
}

+ (SKPhysicsBody)bodyWithCircleOfRadius:(CGFloat)r center:(CGPoint)center
{
  v4 = [MEMORY[0x277D3D0D0] bodyWithCircleOfRadius:r center:{center.x, center.y}];
  setSKPhysicsDefaults(v4);

  return v4;
}

+ (SKPhysicsBody)bodyWithRectangleOfSize:(CGSize)s
{
  v3 = [MEMORY[0x277D3D0D0] bodyWithRectangleOfSize:s.width edgeRadius:{s.height, 0.001}];
  setSKPhysicsDefaults(v3);

  return v3;
}

+ (SKPhysicsBody)bodyWithRectangleOfSize:(CGSize)s center:(CGPoint)center
{
  v4 = [MEMORY[0x277D3D0D0] bodyWithRectangleOfSize:s.width center:s.height edgeRadius:{center.x, center.y, 0.001}];
  setSKPhysicsDefaults(v4);

  return v4;
}

+ (SKPhysicsBody)bodyWithPolygonFromPath:(CGPathRef)path
{
  v3 = [MEMORY[0x277D3D0D0] bodyWithPolygonFromPath:path];
  setSKPhysicsDefaults(v3);

  return v3;
}

+ (SKPhysicsBody)bodyWithEdgeFromPoint:(CGPoint)p1 toPoint:(CGPoint)p2
{
  v4 = [MEMORY[0x277D3D0D0] bodyWithEdgeFromPoint:p1.x toPoint:{p1.y, p2.x, p2.y}];
  setSKPhysicsDefaults(v4);

  return v4;
}

+ (SKPhysicsBody)bodyWithEdgeChainFromPath:(CGPathRef)path
{
  v3 = [MEMORY[0x277D3D0D0] bodyWithEdgeChainFromPath:path];
  setSKPhysicsDefaults(v3);

  return v3;
}

+ (SKPhysicsBody)bodyWithEdgeLoopFromPath:(CGPathRef)path
{
  v3 = [MEMORY[0x277D3D0D0] bodyWithEdgeLoopFromPath:path];
  setSKPhysicsDefaults(v3);

  return v3;
}

+ (SKPhysicsBody)bodyWithEdgeLoopFromRect:(CGRect)rect
{
  v3 = CGPathCreateWithRect(rect, 0);
  v4 = [MEMORY[0x277D3D0D0] bodyWithEdgeLoopFromPath:v3];
  CGPathRelease(v3);
  setSKPhysicsDefaults(v4);

  return v4;
}

+ (SKPhysicsBody)bodyWithTexture:(SKTexture *)texture size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = texture;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__5;
    v21 = __Block_byref_object_dispose__5;
    v22 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __38__SKPhysicsBody_bodyWithTexture_size___block_invoke;
    v12[3] = &unk_278310468;
    v14 = &v17;
    v9 = v8;
    v13 = v9;
    v15 = width;
    v16 = height;
    [(SKTexture *)v9 modifyPixelDataWithBlock:v12];
    setSKPhysicsDefaults(v18[5]);
    height = v18[5];

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    LODWORD(v7) = 1028443341;
    height = [SKPhysicsBody bodyWithTexture:v6 alphaThreshold:v7 size:width, height];
  }

  return height;
}

void __38__SKPhysicsBody_bodyWithTexture_size___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D3D138];
  [*(a1 + 32) size];
  v6 = v5;
  [*(a1 + 32) size];
  v11 = [v4 gridFromOccupancyArray:a2 bytePitch:4 width:v6 height:v7];
  v8 = [v11 physicsBodyFromLVS0:{0.0, 0.0, *(a1 + 48), *(a1 + 56)}];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

+ (SKPhysicsBody)bodyWithTexture:(SKTexture *)texture alphaThreshold:(float)alphaThreshold size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = [SKPhysicsGrid gridFromTexture:"gridFromTexture:alphaThreshold:accuracy:" alphaThreshold:texture accuracy:?];
  v8 = [v7 physicsBodyFromSmoothedOutline:1.0 size:{width, height}];
  setSKPhysicsDefaults(v8);

  return v8;
}

+ (SKPhysicsBody)bodyWithTexture:(id)texture alphaThreshold:(float)threshold size:(CGSize)size accuracy:(float)accuracy
{
  height = size.height;
  width = size.width;
  v8 = [SKPhysicsGrid gridFromTexture:"gridFromTexture:alphaThreshold:accuracy:" alphaThreshold:texture accuracy:?];
  v9 = [v8 physicsBodyFromSmoothedOutline:1.0 size:{width, height}];
  setSKPhysicsDefaults(v9);

  return v9;
}

+ (SKPhysicsBody)bodyWithBodies:(NSArray *)bodies
{
  v3 = [MEMORY[0x277D3D0D0] bodyWithBodies:bodies];
  setSKPhysicsDefaults(v3);

  return v3;
}

- (SKNode)node
{
  WeakRetained = objc_loadWeakRetained(&self->_node);

  return WeakRetained;
}

- (CGVector)velocity
{
  dx = self->_velocity.dx;
  dy = self->_velocity.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

@end