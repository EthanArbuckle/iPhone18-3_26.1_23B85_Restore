@interface MFDynamicCellOffsetRepresentation
- (BOOL)isEqual:(id)equal;
- (MFDynamicCellOffsetRepresentation)initWithCoder:(id)coder;
- (MFDynamicCellOffsetRepresentation)initWithRelativeCellAnchor:(double)anchor relativeDistanceFromTop:(double)top;
- (NSString)ef_publicDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MFDynamicCellOffsetRepresentation

- (MFDynamicCellOffsetRepresentation)initWithRelativeCellAnchor:(double)anchor relativeDistanceFromTop:(double)top
{
  v7.receiver = self;
  v7.super_class = MFDynamicCellOffsetRepresentation;
  result = [(MFDynamicCellOffsetRepresentation *)&v7 init];
  if (result)
  {
    result->_relativeCellAnchor = anchor;
    result->_relativeDistanceFromTop = top;
  }

  return result;
}

- (MFDynamicCellOffsetRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MFDynamicCellOffsetRepresentation;
  v5 = [(MFDynamicCellOffsetRepresentation *)&v13 init];
  if (v5)
  {
    v6 = [NSSet setWithObjects:objc_opt_class(), 0];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"EFPropertyKey_relativeCellAnchor"];
    [v7 floatValue];
    v5->_relativeCellAnchor = v8;

    v9 = [NSSet setWithObjects:objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"EFPropertyKey_relativeDistanceFromTop"];
    [v10 floatValue];
    v5->_relativeDistanceFromTop = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(MFDynamicCellOffsetRepresentation *)self relativeCellAnchor];
  v4 = [NSNumber numberWithDouble:?];
  [coderCopy encodeObject:v4 forKey:@"EFPropertyKey_relativeCellAnchor"];

  [(MFDynamicCellOffsetRepresentation *)self relativeDistanceFromTop];
  v5 = [NSNumber numberWithDouble:?];
  [coderCopy encodeObject:v5 forKey:@"EFPropertyKey_relativeDistanceFromTop"];
}

- (NSString)ef_publicDescription
{
  v3 = objc_opt_class();
  [(MFDynamicCellOffsetRepresentation *)self relativeCellAnchor];
  v5 = v4 * 100.0;
  [(MFDynamicCellOffsetRepresentation *)self relativeDistanceFromTop];
  return [NSString stringWithFormat:@"<%@:%p cellAnchor=%.02f%% distanceFromTop=%.02f%%>", v3, self, *&v5, v6 * 100.0];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(MFDynamicCellOffsetRepresentation *)self relativeCellAnchor];
    v7 = v6;
    [v5 relativeCellAnchor];
    if (v7 == v8)
    {
      [(MFDynamicCellOffsetRepresentation *)self relativeDistanceFromTop];
      v10 = v9;
      [v5 relativeDistanceFromTop];
      v12 = v10 == v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end