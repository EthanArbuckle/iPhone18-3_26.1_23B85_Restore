@interface SCNLevelOfDetail
+ (SCNLevelOfDetail)levelOfDetailWithGeometry:(SCNGeometry *)geometry screenSpaceRadius:(CGFloat)radius;
+ (SCNLevelOfDetail)levelOfDetailWithGeometry:(SCNGeometry *)geometry worldSpaceDistance:(CGFloat)distance;
- (CGFloat)screenSpaceRadius;
- (CGFloat)worldSpaceDistance;
- (SCNLevelOfDetail)initWithCoder:(id)a3;
- (SCNLevelOfDetail)initWithGeometry:(id)a3 thresholdMode:(int64_t)a4 lod:(__C3DLOD *)a5;
- (SCNLevelOfDetail)initWithGeometry:(id)a3 thresholdMode:(int64_t)a4 thresholdValue:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)thresholdValue;
- (void)_customEncodingOfSCNLevelOfDetail:(id)a3;
- (void)_didDecodeSCNLevelOfDetail:(id)a3;
- (void)_setupWithGeometry:(id)a3 thresholdMode:(int64_t)a4 value:(double)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCNLevelOfDetail

- (void)dealloc
{
  lod = self->_lod;
  if (lod)
  {
    CFRelease(lod);
    self->_lod = 0;
  }

  v4.receiver = self;
  v4.super_class = SCNLevelOfDetail;
  [(SCNLevelOfDetail *)&v4 dealloc];
}

- (void)_setupWithGeometry:(id)a3 thresholdMode:(int64_t)a4 value:(double)a5
{
  geometry = self->_geometry;
  if (geometry != a3)
  {

    self->_geometry = a3;
  }

  self->_mode = a4;
  v10 = [a3 __CFObject];
  v11 = a5;
  self->_lod = C3DLODCreate(v10, a4, v11);
}

- (SCNLevelOfDetail)initWithGeometry:(id)a3 thresholdMode:(int64_t)a4 lod:(__C3DLOD *)a5
{
  v10.receiver = self;
  v10.super_class = SCNLevelOfDetail;
  v7 = [(SCNLevelOfDetail *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_mode = a4;
    if (a5)
    {
      v7->_lod = CFRetain(a5);
    }

    v8->_mode = a4;
  }

  return v8;
}

- (SCNLevelOfDetail)initWithGeometry:(id)a3 thresholdMode:(int64_t)a4 thresholdValue:(id)a5
{
  v10.receiver = self;
  v10.super_class = SCNLevelOfDetail;
  v8 = [(SCNLevelOfDetail *)&v10 init];
  if (v8)
  {
    [a5 doubleValue];
    [(SCNLevelOfDetail *)v8 _setupWithGeometry:a3 thresholdMode:a4 value:?];
  }

  return v8;
}

+ (SCNLevelOfDetail)levelOfDetailWithGeometry:(SCNGeometry *)geometry screenSpaceRadius:(CGFloat)radius
{
  v6 = objc_alloc_init(SCNLevelOfDetail);
  [(SCNLevelOfDetail *)v6 _setupWithGeometry:geometry thresholdMode:1 value:radius];

  return v6;
}

+ (SCNLevelOfDetail)levelOfDetailWithGeometry:(SCNGeometry *)geometry worldSpaceDistance:(CGFloat)distance
{
  v6 = objc_alloc_init(SCNLevelOfDetail);
  [(SCNLevelOfDetail *)v6 _setupWithGeometry:geometry thresholdMode:0 value:distance];

  return v6;
}

- (id)thresholdValue
{
  v2 = C3DLODGetThreshold(self->_lod);
  v3 = MEMORY[0x277CCABB0];

  return [v3 numberWithDouble:v2];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  mode = self->_mode;
  geometry = self->_geometry;
  lod = self->_lod;

  return [v4 initWithGeometry:geometry thresholdMode:mode lod:lod];
}

- (CGFloat)screenSpaceRadius
{
  result = 0.0;
  if (self->_mode == 1)
  {
    return C3DLODGetThreshold(self->_lod);
  }

  return result;
}

- (CGFloat)worldSpaceDistance
{
  result = 0.0;
  if (!self->_mode)
  {
    return C3DLODGetThreshold(self->_lod);
  }

  return result;
}

- (void)_customEncodingOfSCNLevelOfDetail:(id)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:C3DLODGetThreshold(self->_lod)];

  [a3 encodeObject:v4 forKey:@"threshold"];
}

- (void)_didDecodeSCNLevelOfDetail:(id)a3
{
  [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"threshold", "doubleValue"}];
  mode = self->_mode;
  geometry = self->_geometry;

  [(SCNLevelOfDetail *)self _setupWithGeometry:geometry thresholdMode:mode value:?];
}

- (void)encodeWithCoder:(id)a3
{
  [(SCNLevelOfDetail *)self _customEncodingOfSCNLevelOfDetail:?];
  [a3 encodeInteger:self->_mode forKey:@"mode"];
  if (self->_geometry)
  {

    [a3 encodeObject:? forKey:?];
  }
}

- (SCNLevelOfDetail)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SCNLevelOfDetail;
  v4 = [(SCNLevelOfDetail *)&v7 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v4->_mode = [a3 decodeIntegerForKey:@"mode"];
    v4->_geometry = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"geometry"];
    [(SCNLevelOfDetail *)v4 _didDecodeSCNLevelOfDetail:a3];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end