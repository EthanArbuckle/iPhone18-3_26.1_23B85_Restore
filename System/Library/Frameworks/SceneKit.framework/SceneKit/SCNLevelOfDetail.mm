@interface SCNLevelOfDetail
+ (SCNLevelOfDetail)levelOfDetailWithGeometry:(SCNGeometry *)geometry screenSpaceRadius:(CGFloat)radius;
+ (SCNLevelOfDetail)levelOfDetailWithGeometry:(SCNGeometry *)geometry worldSpaceDistance:(CGFloat)distance;
- (CGFloat)screenSpaceRadius;
- (CGFloat)worldSpaceDistance;
- (SCNLevelOfDetail)initWithCoder:(id)coder;
- (SCNLevelOfDetail)initWithGeometry:(id)geometry thresholdMode:(int64_t)mode lod:(__C3DLOD *)lod;
- (SCNLevelOfDetail)initWithGeometry:(id)geometry thresholdMode:(int64_t)mode thresholdValue:(id)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)thresholdValue;
- (void)_customEncodingOfSCNLevelOfDetail:(id)detail;
- (void)_didDecodeSCNLevelOfDetail:(id)detail;
- (void)_setupWithGeometry:(id)geometry thresholdMode:(int64_t)mode value:(double)value;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (void)_setupWithGeometry:(id)geometry thresholdMode:(int64_t)mode value:(double)value
{
  geometry = self->_geometry;
  if (geometry != geometry)
  {

    self->_geometry = geometry;
  }

  self->_mode = mode;
  __CFObject = [geometry __CFObject];
  valueCopy = value;
  self->_lod = C3DLODCreate(__CFObject, mode, valueCopy);
}

- (SCNLevelOfDetail)initWithGeometry:(id)geometry thresholdMode:(int64_t)mode lod:(__C3DLOD *)lod
{
  v10.receiver = self;
  v10.super_class = SCNLevelOfDetail;
  v7 = [(SCNLevelOfDetail *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_mode = mode;
    if (lod)
    {
      v7->_lod = CFRetain(lod);
    }

    v8->_mode = mode;
  }

  return v8;
}

- (SCNLevelOfDetail)initWithGeometry:(id)geometry thresholdMode:(int64_t)mode thresholdValue:(id)value
{
  v10.receiver = self;
  v10.super_class = SCNLevelOfDetail;
  v8 = [(SCNLevelOfDetail *)&v10 init];
  if (v8)
  {
    [value doubleValue];
    [(SCNLevelOfDetail *)v8 _setupWithGeometry:geometry thresholdMode:mode value:?];
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

- (id)copyWithZone:(_NSZone *)zone
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

- (void)_customEncodingOfSCNLevelOfDetail:(id)detail
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:C3DLODGetThreshold(self->_lod)];

  [detail encodeObject:v4 forKey:@"threshold"];
}

- (void)_didDecodeSCNLevelOfDetail:(id)detail
{
  [objc_msgSend(detail decodeObjectOfClass:objc_opt_class() forKey:{@"threshold", "doubleValue"}];
  mode = self->_mode;
  geometry = self->_geometry;

  [(SCNLevelOfDetail *)self _setupWithGeometry:geometry thresholdMode:mode value:?];
}

- (void)encodeWithCoder:(id)coder
{
  [(SCNLevelOfDetail *)self _customEncodingOfSCNLevelOfDetail:?];
  [coder encodeInteger:self->_mode forKey:@"mode"];
  if (self->_geometry)
  {

    [coder encodeObject:? forKey:?];
  }
}

- (SCNLevelOfDetail)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SCNLevelOfDetail;
  v4 = [(SCNLevelOfDetail *)&v7 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v4->_mode = [coder decodeIntegerForKey:@"mode"];
    v4->_geometry = [coder decodeObjectOfClass:objc_opt_class() forKey:@"geometry"];
    [(SCNLevelOfDetail *)v4 _didDecodeSCNLevelOfDetail:coder];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end