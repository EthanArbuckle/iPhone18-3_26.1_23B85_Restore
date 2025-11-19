@interface CLKClockComplicationCount
- (BOOL)isEqual:(id)a3;
- (CLKClockComplicationCount)initWithApplicationIdentifier:(id)a3 countOnFace:(int64_t)a4 isWidget:(BOOL)a5;
- (CLKClockComplicationCount)initWithCoder:(id)a3;
- (id)description;
- (id)mergedWith:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLKClockComplicationCount

- (CLKClockComplicationCount)initWithApplicationIdentifier:(id)a3 countOnFace:(int64_t)a4 isWidget:(BOOL)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = CLKClockComplicationCount;
  v9 = [(CLKClockComplicationCount *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    applicationIdentifier = v9->_applicationIdentifier;
    v9->_applicationIdentifier = v10;

    v9->_countOnFace = a4;
    v9->_widget = a5;
  }

  return v9;
}

- (id)mergedWith:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CLKClockComplicationCount);
  objc_storeStrong(&v5->_applicationIdentifier, self->_applicationIdentifier);
  v5->_countOnFace = self->_countOnFace + v4[3];
  v6 = *(v4 + 8);

  v7 = (v6 & 1) != 0 || self->_widget;
  v5->_widget = v7;

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendString:self->_applicationIdentifier];
  v5 = [v3 appendInteger:self->_countOnFace];
  v6 = [v3 appendBool:self->_widget];
  v7 = [v3 hash];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_applicationIdentifier isEqualToString:v4->_applicationIdentifier]&& self->_countOnFace == v4->_countOnFace && self->_widget == v4->_widget;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_applicationIdentifier withName:@"applicationIdentifier"];
  v4 = [v3 appendInteger:self->_countOnFace withName:@"countOnFace"];
  v5 = [v3 appendBool:self->_widget withName:@"widget"];
  v6 = [v3 build];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  applicationIdentifier = self->_applicationIdentifier;
  v5 = a3;
  [v5 encodeObject:applicationIdentifier forKey:@"applicationIdentifier"];
  [v5 encodeInteger:self->_countOnFace forKey:@"countOnFace"];
  [v5 encodeBool:self->_widget forKey:@"widget"];
}

- (CLKClockComplicationCount)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CLKClockComplicationCount;
  v5 = [(CLKClockComplicationCount *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v5->_countOnFace = [v4 decodeIntegerForKey:@"countOnFace"];
    v5->_widget = [v4 decodeBoolForKey:@"widget"];
  }

  return v5;
}

@end