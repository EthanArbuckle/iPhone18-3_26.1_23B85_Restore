@interface PKStrokeProviderSliceIdentifier
- (BOOL)isEqual:(id)a3;
- (PKStrokeProviderSliceIdentifier)initWithCoder:(id)a3;
- (PKStrokeProviderSliceIdentifier)initWithUUID:(id)a3 tStart:(double)a4 tEnd:(double)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKStrokeProviderSliceIdentifier

- (PKStrokeProviderSliceIdentifier)initWithUUID:(id)a3 tStart:(double)a4 tEnd:(double)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = PKStrokeProviderSliceIdentifier;
  v9 = [(PKStrokeProviderSliceIdentifier *)&v12 init];
  strokeUUID = v9->_strokeUUID;
  v9->_strokeUUID = v8;

  v9->_tStart = a4;
  v9->_tEnd = a5;
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(PKStrokeProviderSliceIdentifier *)self strokeUUID];
      v8 = [(PKStrokeProviderSliceIdentifier *)v6 strokeUUID];
      if ([v7 isEqual:v8] && ((-[PKStrokeProviderSliceIdentifier tStart](self, "tStart"), v10 = v9, -[PKStrokeProviderSliceIdentifier tStart](v6, "tStart"), v10 == v11) || vabdd_f64(v10, v11) < fabs(v11 * 0.000000999999997)))
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
  v3 = [(PKStrokeProviderSliceIdentifier *)self strokeUUID];
  v4 = [v3 hash];
  v5 = PKHashBytes(&self->_tStart, 8);
  v6 = PKHashBytes(&self->_tEnd, 8);

  return v5 ^ v4 ^ v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(PKStrokeProviderSliceIdentifier *)self strokeUUID];
  [v5 encodeObject:v4 forKey:@"strokeUUIDKey"];

  [(PKStrokeProviderSliceIdentifier *)self tStart];
  [v5 encodeDouble:@"tStart" forKey:?];
  [(PKStrokeProviderSliceIdentifier *)self tEnd];
  [v5 encodeDouble:@"tEnd" forKey:?];
}

- (PKStrokeProviderSliceIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"strokeUUIDKey"];
  [v4 decodeDoubleForKey:@"tStart"];
  v7 = v6;
  [v4 decodeDoubleForKey:@"tEnd"];
  v9 = v8;
  strokeUUID = self->_strokeUUID;
  self->_strokeUUID = v5;

  self->_tStart = v7;
  self->_tEnd = v9;

  return self;
}

@end