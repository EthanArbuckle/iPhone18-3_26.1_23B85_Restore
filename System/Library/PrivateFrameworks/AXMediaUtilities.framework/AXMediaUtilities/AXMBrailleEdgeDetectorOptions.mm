@interface AXMBrailleEdgeDetectorOptions
- (AXMBrailleEdgeDetectorOptions)initWithCanvasDescription:(id)description;
- (AXMBrailleEdgeDetectorOptions)initWithCoder:(id)coder;
- (CGPoint)origin;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXMBrailleEdgeDetectorOptions

- (AXMBrailleEdgeDetectorOptions)initWithCanvasDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = AXMBrailleEdgeDetectorOptions;
  v6 = [(AXMBrailleEdgeDetectorOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_canvasDescription, description);
    v7->_zoomLevel = 1.0;
    v7->_origin.x = 0.0;
    v7->_origin.y = 0.0;
  }

  return v7;
}

- (AXMBrailleEdgeDetectorOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = AXMBrailleEdgeDetectorOptions;
  v5 = [(AXMBrailleEdgeDetectorOptions *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"canvasDescription"];
    canvasDescription = v5->_canvasDescription;
    v5->_canvasDescription = v6;

    [coderCopy decodeDoubleForKey:@"zoomLevel"];
    v5->_zoomLevel = v8;
    [coderCopy axmDecodePointForKey:@"origin"];
    v5->_origin.x = v9;
    v5->_origin.y = v10;
    [coderCopy decodeDoubleForKey:@"edgeStrength"];
    v5->_edgeStrength = v11;
    v5->_invert = [coderCopy decodeBoolForKey:@"invert"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  canvasDescription = self->_canvasDescription;
  coderCopy = coder;
  [coderCopy encodeObject:canvasDescription forKey:@"canvasDescription"];
  [coderCopy encodeDouble:@"zoomLevel" forKey:self->_zoomLevel];
  [coderCopy axmEncodePoint:@"origin" forKey:{self->_origin.x, self->_origin.y}];
  [coderCopy encodeDouble:@"edgeStrength" forKey:self->_edgeStrength];
  [coderCopy encodeBool:self->_invert forKey:@"invert"];
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