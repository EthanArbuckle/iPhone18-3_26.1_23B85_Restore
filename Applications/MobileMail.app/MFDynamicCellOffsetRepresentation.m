@interface MFDynamicCellOffsetRepresentation
- (BOOL)isEqual:(id)a3;
- (MFDynamicCellOffsetRepresentation)initWithCoder:(id)a3;
- (MFDynamicCellOffsetRepresentation)initWithRelativeCellAnchor:(double)a3 relativeDistanceFromTop:(double)a4;
- (NSString)ef_publicDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MFDynamicCellOffsetRepresentation

- (MFDynamicCellOffsetRepresentation)initWithRelativeCellAnchor:(double)a3 relativeDistanceFromTop:(double)a4
{
  v7.receiver = self;
  v7.super_class = MFDynamicCellOffsetRepresentation;
  result = [(MFDynamicCellOffsetRepresentation *)&v7 init];
  if (result)
  {
    result->_relativeCellAnchor = a3;
    result->_relativeDistanceFromTop = a4;
  }

  return result;
}

- (MFDynamicCellOffsetRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MFDynamicCellOffsetRepresentation;
  v5 = [(MFDynamicCellOffsetRepresentation *)&v13 init];
  if (v5)
  {
    v6 = [NSSet setWithObjects:objc_opt_class(), 0];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"EFPropertyKey_relativeCellAnchor"];
    [v7 floatValue];
    v5->_relativeCellAnchor = v8;

    v9 = [NSSet setWithObjects:objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"EFPropertyKey_relativeDistanceFromTop"];
    [v10 floatValue];
    v5->_relativeDistanceFromTop = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [(MFDynamicCellOffsetRepresentation *)self relativeCellAnchor];
  v4 = [NSNumber numberWithDouble:?];
  [v6 encodeObject:v4 forKey:@"EFPropertyKey_relativeCellAnchor"];

  [(MFDynamicCellOffsetRepresentation *)self relativeDistanceFromTop];
  v5 = [NSNumber numberWithDouble:?];
  [v6 encodeObject:v5 forKey:@"EFPropertyKey_relativeDistanceFromTop"];
}

- (NSString)ef_publicDescription
{
  v3 = objc_opt_class();
  [(MFDynamicCellOffsetRepresentation *)self relativeCellAnchor];
  v5 = v4 * 100.0;
  [(MFDynamicCellOffsetRepresentation *)self relativeDistanceFromTop];
  return [NSString stringWithFormat:@"<%@:%p cellAnchor=%.02f%% distanceFromTop=%.02f%%>", v3, self, *&v5, v6 * 100.0];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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