@interface GKPolygonObstacle
+ (GKPolygonObstacle)obstacleWithPoints:(vector_float2 *)points count:(size_t)numPoints;
- (GKPolygonObstacle)initWithCoder:(id)coder;
- (GKPolygonObstacle)initWithPoints:(vector_float2 *)points count:(size_t)numPoints;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GKPolygonObstacle

+ (GKPolygonObstacle)obstacleWithPoints:(vector_float2 *)points count:(size_t)numPoints
{
  v4 = [[GKPolygonObstacle alloc] initWithPoints:points count:numPoints];

  return v4;
}

- (GKPolygonObstacle)initWithPoints:(vector_float2 *)points count:(size_t)numPoints
{
  v5.receiver = self;
  v5.super_class = GKPolygonObstacle;
  if ([(GKPolygonObstacle *)&v5 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  cPolygonObstacle = self->_cPolygonObstacle;
  if (cPolygonObstacle)
  {
    (*(*cPolygonObstacle + 8))(cPolygonObstacle, a2);
  }

  v4.receiver = self;
  v4.super_class = GKPolygonObstacle;
  [(GKPolygonObstacle *)&v4 dealloc];
}

- (GKPolygonObstacle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntForKey:@"numVertices"];
  if ((v5 & 0x80000000) != 0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Serialization error!  Value (%i) for key 'numVertices' can not be negative.", v5];
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v9);
  }

  v11 = 0;
  v6 = [coderCopy decodeBytesForKey:@"vertices" returnedLength:&v11];
  if (v11 < 8 * v5)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Serialization error!  Expected to decode %zu bytes for key 'vertices'.  Got %zu.", 8 * v5, v11];
    v10 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v10);
  }

  v7 = [(GKPolygonObstacle *)self initWithPoints:v6 count:v5];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:(*(self->_cPolygonObstacle + 2) - *(self->_cPolygonObstacle + 1)) >> 3 forKey:@"numVertices"];
  [coderCopy encodeBytes:*(self->_cPolygonObstacle + 1) length:*(self->_cPolygonObstacle + 2) - *(self->_cPolygonObstacle + 1) forKey:@"vertices"];
}

@end