@interface VNEspressoDetectedObject
- (CGPoint)center;
- (CGRect)bounds;
- (VNEspressoDetectedObject)initWithObjectType:(int64_t)a3 boundingBox:(CGRect)a4 confidence:(float)a5;
- (id)description;
@end

@implementation VNEspressoDetectedObject

- (CGRect)bounds
{
  objc_copyStruct(v6, &self->_bounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  [(VNEspressoDetectedObject *)self bounds];
  v8 = VNHumanReadableCGRect(v4, v5, v6, v7);
  v9 = [(VNEspressoDetectedObject *)self objectType];
  [(VNEspressoDetectedObject *)self confidence];
  v11 = [v3 initWithFormat:@"Bounding Box = %@; objectType = %ld; confidence = %f", v8, v9, v10];

  return v11;
}

- (CGPoint)center
{
  [(VNEspressoDetectedObject *)self bounds];
  v4 = v3 + v2 * 0.5;
  v7 = v6 + v5 * 0.5;
  result.y = v7;
  result.x = v4;
  return result;
}

- (VNEspressoDetectedObject)initWithObjectType:(int64_t)a3 boundingBox:(CGRect)a4 confidence:(float)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15.receiver = self;
  v15.super_class = VNEspressoDetectedObject;
  v11 = [(VNEspressoDetectedObject *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_objectType = a3;
    v11->_bounds.origin.x = x;
    v11->_bounds.origin.y = y;
    v11->_bounds.size.width = width;
    v11->_bounds.size.height = height;
    v11->_confidence = a5;
    v13 = v11;
  }

  return v12;
}

@end