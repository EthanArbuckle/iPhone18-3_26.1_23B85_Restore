@interface PKStrokeProviderSliceIdentifier
- (BOOL)isEqual:(id)equal;
- (PKStrokeProviderSliceIdentifier)initWithCoder:(id)coder;
- (PKStrokeProviderSliceIdentifier)initWithUUID:(id)d tStart:(double)start tEnd:(double)end;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKStrokeProviderSliceIdentifier

- (PKStrokeProviderSliceIdentifier)initWithUUID:(id)d tStart:(double)start tEnd:(double)end
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = PKStrokeProviderSliceIdentifier;
  v9 = [(PKStrokeProviderSliceIdentifier *)&v12 init];
  strokeUUID = v9->_strokeUUID;
  v9->_strokeUUID = dCopy;

  v9->_tStart = start;
  v9->_tEnd = end;
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      strokeUUID = [(PKStrokeProviderSliceIdentifier *)self strokeUUID];
      strokeUUID2 = [(PKStrokeProviderSliceIdentifier *)v6 strokeUUID];
      if ([strokeUUID isEqual:strokeUUID2] && ((-[PKStrokeProviderSliceIdentifier tStart](self, "tStart"), v10 = v9, -[PKStrokeProviderSliceIdentifier tStart](v6, "tStart"), v10 == v11) || vabdd_f64(v10, v11) < fabs(v11 * 0.000000999999997)))
      {
        [(PKStrokeProviderSliceIdentifier *)self tEnd];
        v13 = v12;
        [(PKStrokeProviderSliceIdentifier *)v6 tEnd];
        v15 = v13 == v14 || vabdd_f64(v13, v14) < fabs(v14 * 0.000000999999997);
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  strokeUUID = [(PKStrokeProviderSliceIdentifier *)self strokeUUID];
  v4 = [strokeUUID hash];
  v5 = PKHashBytes(&self->_tStart, 8);
  v6 = PKHashBytes(&self->_tEnd, 8);

  return v5 ^ v4 ^ v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  strokeUUID = [(PKStrokeProviderSliceIdentifier *)self strokeUUID];
  [coderCopy encodeObject:strokeUUID forKey:@"strokeUUIDKey"];

  [(PKStrokeProviderSliceIdentifier *)self tStart];
  [coderCopy encodeDouble:@"tStart" forKey:?];
  [(PKStrokeProviderSliceIdentifier *)self tEnd];
  [coderCopy encodeDouble:@"tEnd" forKey:?];
}

- (PKStrokeProviderSliceIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"strokeUUIDKey"];
  [coderCopy decodeDoubleForKey:@"tStart"];
  v7 = v6;
  [coderCopy decodeDoubleForKey:@"tEnd"];
  v9 = v8;
  strokeUUID = self->_strokeUUID;
  self->_strokeUUID = v5;

  self->_tStart = v7;
  self->_tEnd = v9;

  return self;
}

@end