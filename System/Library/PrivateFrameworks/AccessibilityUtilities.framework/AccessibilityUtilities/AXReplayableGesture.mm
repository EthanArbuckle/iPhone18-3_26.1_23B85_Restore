@interface AXReplayableGesture
+ (id)tapGestureForInterfaceOrientedPoint:(CGPoint)point;
- (AXReplayableGesture)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (CGPoint)pointForFingerIdentifier:(id)identifier atEventIndex:(unint64_t)index;
- (double)forceForFingerIdentifier:(id)identifier atEventIndex:(unint64_t)index;
- (double)timeAtEventIndex:(unint64_t)index;
- (id)description;
- (id)fingerIdentifiersAtEventIndex:(unint64_t)index;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXReplayableGesture

+ (id)tapGestureForInterfaceOrientedPoint:(CGPoint)point
{
  v12[1] = *MEMORY[0x1E69E9840];
  pointCopy = point;
  v3 = objc_alloc_init(AXMutableReplayableGesture);
  v4 = [MEMORY[0x1E696B098] valueWithBytes:&pointCopy objCType:"{CGPoint=dd}"];
  v11 = &unk_1EFE96BB0;
  v12[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = &unk_1EFE96BB0;
  v10 = &unk_1EFE97650;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [(AXMutableReplayableGesture *)v3 addPointsByFingerIdentifier:v5 forces:v6 atTime:0.0];

  [(AXMutableReplayableGesture *)v3 addPointsByFingerIdentifier:MEMORY[0x1E695E0F8] forces:MEMORY[0x1E695E0F8] atTime:0.1];

  return v3;
}

- (id)fingerIdentifiersAtEventIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_allEvents objectAtIndexedSubscript:index];
  v4 = [v3 objectForKeyedSubscript:@"Fingers"];
  allKeys = [v4 allKeys];

  return allKeys;
}

- (double)timeAtEventIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_allEvents objectAtIndexedSubscript:index];
  v4 = [v3 objectForKeyedSubscript:@"Time"];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (CGPoint)pointForFingerIdentifier:(id)identifier atEventIndex:(unint64_t)index
{
  identifierCopy = identifier;
  v7 = [(NSArray *)self->_allEvents objectAtIndexedSubscript:index];
  v8 = [v7 objectForKeyedSubscript:@"Fingers"];
  v9 = [v8 objectForKeyedSubscript:identifierCopy];

  if (!v9)
  {
    v12 = identifierCopy;
    indexCopy = index;
    _AXAssert();
  }

  v14 = 0.0;
  v15 = 0.0;
  [v9 getValue:&v14 size:{16, v12, indexCopy}];

  v10 = v14;
  v11 = v15;
  result.y = v11;
  result.x = v10;
  return result;
}

- (double)forceForFingerIdentifier:(id)identifier atEventIndex:(unint64_t)index
{
  allEvents = self->_allEvents;
  identifierCopy = identifier;
  v7 = [(NSArray *)allEvents objectAtIndexedSubscript:index];
  v8 = [v7 objectForKeyedSubscript:@"Forces"];
  v9 = [v8 objectForKeyedSubscript:identifierCopy];

  [v9 floatValue];
  v11 = v10;

  return v11;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = AXReplayableGesture;
  v3 = [(AXReplayableGesture *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" - device relative: %i, data: %@", -[AXReplayableGesture arePointsDeviceRelative](self, "arePointsDeviceRelative"), self->_allEvents];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    allEvents = self->_allEvents;
    if (allEvents == v5[1] || [(NSArray *)allEvents isEqualToArray:?])
    {
      arePointsDeviceRelative = [(AXReplayableGesture *)self arePointsDeviceRelative];
      v8 = arePointsDeviceRelative ^ [v5 arePointsDeviceRelative] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  allEvents = self->_allEvents;
  coderCopy = coder;
  [coderCopy encodeObject:allEvents forKey:@"AllEvents"];
  [coderCopy encodeObject:&unk_1EFE96BC8 forKey:@"Version"];
  [coderCopy encodeBool:-[AXReplayableGesture arePointsDeviceRelative](self forKey:{"arePointsDeviceRelative"), @"ArePointsDeviceRelative"}];
}

- (AXReplayableGesture)initWithCoder:(id)coder
{
  v13[5] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = AXReplayableGesture;
  v5 = [(AXReplayableGesture *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v13[2] = objc_opt_class();
    v13[3] = objc_opt_class();
    v13[4] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:5];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"AllEvents"];
    allEvents = v5->_allEvents;
    v5->_allEvents = v9;

    -[AXReplayableGesture setArePointsDeviceRelative:](v5, "setArePointsDeviceRelative:", [coderCopy decodeBoolForKey:@"ArePointsDeviceRelative"]);
  }

  return v5;
}

@end