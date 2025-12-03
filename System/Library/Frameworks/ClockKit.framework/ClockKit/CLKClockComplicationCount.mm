@interface CLKClockComplicationCount
- (BOOL)isEqual:(id)equal;
- (CLKClockComplicationCount)initWithApplicationIdentifier:(id)identifier countOnFace:(int64_t)face isWidget:(BOOL)widget;
- (CLKClockComplicationCount)initWithCoder:(id)coder;
- (id)description;
- (id)mergedWith:(id)with;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLKClockComplicationCount

- (CLKClockComplicationCount)initWithApplicationIdentifier:(id)identifier countOnFace:(int64_t)face isWidget:(BOOL)widget
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = CLKClockComplicationCount;
  v9 = [(CLKClockComplicationCount *)&v13 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    applicationIdentifier = v9->_applicationIdentifier;
    v9->_applicationIdentifier = v10;

    v9->_countOnFace = face;
    v9->_widget = widget;
  }

  return v9;
}

- (id)mergedWith:(id)with
{
  withCopy = with;
  v5 = objc_alloc_init(CLKClockComplicationCount);
  objc_storeStrong(&v5->_applicationIdentifier, self->_applicationIdentifier);
  v5->_countOnFace = self->_countOnFace + withCopy[3];
  v6 = *(withCopy + 8);

  v7 = (v6 & 1) != 0 || self->_widget;
  v5->_widget = v7;

  return v5;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendString:self->_applicationIdentifier];
  v5 = [builder appendInteger:self->_countOnFace];
  v6 = [builder appendBool:self->_widget];
  v7 = [builder hash];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_applicationIdentifier isEqualToString:equalCopy->_applicationIdentifier]&& self->_countOnFace == equalCopy->_countOnFace && self->_widget == equalCopy->_widget;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_applicationIdentifier withName:@"applicationIdentifier"];
  v4 = [v3 appendInteger:self->_countOnFace withName:@"countOnFace"];
  v5 = [v3 appendBool:self->_widget withName:@"widget"];
  build = [v3 build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  applicationIdentifier = self->_applicationIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:applicationIdentifier forKey:@"applicationIdentifier"];
  [coderCopy encodeInteger:self->_countOnFace forKey:@"countOnFace"];
  [coderCopy encodeBool:self->_widget forKey:@"widget"];
}

- (CLKClockComplicationCount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CLKClockComplicationCount;
  v5 = [(CLKClockComplicationCount *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v5->_countOnFace = [coderCopy decodeIntegerForKey:@"countOnFace"];
    v5->_widget = [coderCopy decodeBoolForKey:@"widget"];
  }

  return v5;
}

@end