@interface SRElectrocardiogramSample
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSample:(id)sample;
- (NSMeasurement)frequency;
- (SRElectrocardiogramSample)init;
- (SRElectrocardiogramSample)initWithCoder:(id)coder;
- (SRElectrocardiogramSample)initWithHAECGSample:(id)sample;
- (SRElectrocardiogramSample)initWithTimestamp:(double)timestamp frequency:(double)frequency session:(id)session lead:(int64_t)lead data:(id)data;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRElectrocardiogramSample

- (SRElectrocardiogramSample)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRElectrocardiogramSample)initWithHAECGSample:(id)sample
{
  v32 = *MEMORY[0x1E69E9840];
  if ([sample flags])
  {
    v4 = 1;
  }

  else if (([sample flags] & 2) != 0)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  if (([sample flags] & 4) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v25 = -[SRElectrocardiogramSession initWithState:sessionGuidance:identifier:]([SRElectrocardiogramSession alloc], "initWithState:sessionGuidance:identifier:", v4, v5, [sample sessionIdentifier]);
  [objc_msgSend(sample "timestamp")];
  v7 = v6;
  [sample frequency];
  v9 = v8;
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(objc_msgSend(sample, "ecgData"), "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  ecgData = [sample ecgData];
  v12 = [ecgData countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(ecgData);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [SRElectrocardiogramData alloc];
        flags = [v16 flags];
        [v16 value];
        v20 = [(SRElectrocardiogramData *)v17 initWithFlags:flags value:v19];
        [v10 addObject:v20];
      }

      v13 = [ecgData countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  if (([sample flags] & 8) != 0)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  v22 = [(SRElectrocardiogramSample *)self initWithTimestamp:v25 frequency:v21 session:v10 lead:v7 data:v9];

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (SRElectrocardiogramSample)initWithTimestamp:(double)timestamp frequency:(double)frequency session:(id)session lead:(int64_t)lead data:(id)data
{
  v15.receiver = self;
  v15.super_class = SRElectrocardiogramSample;
  v12 = [(SRElectrocardiogramSample *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_time = timestamp;
    v12->_freq = frequency;
    v12->_lead = lead;
    v12->_session = session;
    v13->_data = [data copy];
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRElectrocardiogramSample;
  [(SRElectrocardiogramSample *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(SRElectrocardiogramSample *)self isEqualToSample:equal];
}

- (BOOL)isEqualToSample:(id)sample
{
  if ((!-[SRElectrocardiogramSample session](self, "session") && ![sample session] || (v5 = -[SRElectrocardiogramSession isEqual:](-[SRElectrocardiogramSample session](self, "session"), "isEqual:", objc_msgSend(sample, "session"))) != 0) && (!-[SRElectrocardiogramSample data](self, "data") && !objc_msgSend(sample, "data") || (v5 = -[NSArray isEqual:](-[SRElectrocardiogramSample data](self, "data"), "isEqual:", objc_msgSend(sample, "data"))) != 0))
  {
    v5 = -[NSDate isEqualToDate:](-[SRElectrocardiogramSample date](self, "date"), "isEqualToDate:", [sample date]);
    if (v5)
    {
      v5 = -[NSMeasurement isEqual:](-[SRElectrocardiogramSample frequency](self, "frequency"), "isEqual:", [sample frequency]);
      if (v5)
      {
        lead = [(SRElectrocardiogramSample *)self lead];
        LOBYTE(v5) = lead == [sample lead];
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)[(SRElectrocardiogramSample *)self date] hash];
  v4 = [(NSMeasurement *)[(SRElectrocardiogramSample *)self frequency] hash]^ v3;
  v5 = [(SRElectrocardiogramSession *)[(SRElectrocardiogramSample *)self session] hash];
  v6 = v4 ^ v5 ^ [(NSArray *)[(SRElectrocardiogramSample *)self data] hash];
  return v6 ^ [objc_msgSend(MEMORY[0x1E696AD98] numberWithInteger:{-[SRElectrocardiogramSample lead](self, "lead")), "hash"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ (%p): timestamp: %@, frequency: %@, session: %@, lead: %ld, data: %@", NSStringFromClass(v4), self, -[SRElectrocardiogramSample date](self, "date"), -[SRElectrocardiogramSample frequency](self, "frequency"), -[SRElectrocardiogramSample session](self, "session"), -[SRElectrocardiogramSample lead](self, "lead"), -[SRElectrocardiogramSample data](self, "data")];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeObject:self->_session forKey:@"session"];
  [coder encodeDouble:@"timestamp" forKey:self->_time];
  [coder encodeDouble:@"frequency" forKey:self->_freq];
  [coder encodeObject:self->_data forKey:@"data"];
  lead = self->_lead;

  [coder encodeInteger:lead forKey:@"lead"];
}

- (SRElectrocardiogramSample)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [coder decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, objc_opt_class(), 0), @"data"}];
  [coder decodeDoubleForKey:@"frequency"];
  v10 = v9;
  [coder decodeDoubleForKey:@"timestamp"];
  v12 = v11;
  v13 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"session"];
  v14 = [coder decodeIntegerForKey:@"lead"];

  return [(SRElectrocardiogramSample *)self initWithTimestamp:v13 frequency:v14 session:v8 lead:v12 data:v10];
}

- (NSMeasurement)frequency
{
  v3 = objc_alloc(MEMORY[0x1E696AD28]);
  v4 = [v3 initWithDoubleValue:objc_msgSend(MEMORY[0x1E696B038] unit:{"hertz"), self->_freq}];

  return v4;
}

@end