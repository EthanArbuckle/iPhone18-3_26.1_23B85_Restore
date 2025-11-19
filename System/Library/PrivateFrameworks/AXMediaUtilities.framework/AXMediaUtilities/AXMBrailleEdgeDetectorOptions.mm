@interface AXMBrailleEdgeDetectorOptions
- (AXMBrailleEdgeDetectorOptions)initWithCanvasDescription:(id)a3;
- (AXMBrailleEdgeDetectorOptions)initWithCoder:(id)a3;
- (CGPoint)origin;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXMBrailleEdgeDetectorOptions

- (AXMBrailleEdgeDetectorOptions)initWithCanvasDescription:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AXMBrailleEdgeDetectorOptions;
  v6 = [(AXMBrailleEdgeDetectorOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_canvasDescription, a3);
    v7->_zoomLevel = 1.0;
    v7->_origin.x = 0.0;
    v7->_origin.y = 0.0;
  }

  return v7;
}

- (AXMBrailleEdgeDetectorOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AXMBrailleEdgeDetectorOptions;
  v5 = [(AXMBrailleEdgeDetectorOptions *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"canvasDescription"];
    canvasDescription = v5->_canvasDescription;
    v5->_canvasDescription = v6;

    [v4 decodeDoubleForKey:@"zoomLevel"];
    v5->_zoomLevel = v8;
    [v4 axmDecodePointForKey:@"origin"];
    v5->_origin.x = v9;
    v5->_origin.y = v10;
    [v4 decodeDoubleForKey:@"edgeStrength"];
    v5->_edgeStrength = v11;
    v5->_invert = [v4 decodeBoolForKey:@"invert"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  canvasDescription = self->_canvasDescription;
  v5 = a3;
  [v5 encodeObject:canvasDescription forKey:@"canvasDescription"];
  [v5 encodeDouble:@"zoomLevel" forKey:self->_zoomLevel];
  [v5 axmEncodePoint:@"origin" forKey:{self->_origin.x, self->_origin.y}];
  [v5 encodeDouble:@"edgeStrength" forKey:self->_edgeStrength];
  [v5 encodeBool:self->_invert forKey:@"invert"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"AXMBrailleEdgeDetectorOptions<%p>\n", self];
  [v3 appendFormat:@"  Options: \n"];
  [v3 appendFormat:@"    CanvasDescription: %@\n", self->_canvasDescription];
  [v3 appendFormat:@"    zoomLevel: %.2f\n", *&self->_zoomLevel];
  v4 = AXMStringFromCGPoint(self->_origin.x, self->_origin.y);
  [v3 appendFormat:@"    origin: %@\n", v4];

  [v3 appendFormat:@"    edgeStrength: %.2f\n", *&self->_edgeStrength];

  return v3;
}

- (CGPoint)origin
{
  x = self->_origin.x;
  y = self->_origin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end