@interface ADRapportLinkTransportOptions
+ (id)newWithBuilder:(id)builder;
- (ADRapportLinkTransportOptions)initWithAllowsAWDL:(int64_t)l allowsBLE:(int64_t)e allowsInfraWiFi:(int64_t)fi allowsBTPipe:(int64_t)pipe allowsForceBLE:(int64_t)lE allowsForceAWDL:(int64_t)dL noL2Cap:(int64_t)cap;
- (ADRapportLinkTransportOptions)initWithBuilder:(id)builder;
- (ADRapportLinkTransportOptions)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ADRapportLinkTransportOptions

- (void)encodeWithCoder:(id)coder
{
  allowsAWDL = self->_allowsAWDL;
  coderCopy = coder;
  v6 = [NSNumber numberWithInteger:allowsAWDL];
  [coderCopy encodeObject:v6 forKey:@"ADRapportLinkTransportOptions::allowsAWDL"];

  v7 = [NSNumber numberWithInteger:self->_allowsBLE];
  [coderCopy encodeObject:v7 forKey:@"ADRapportLinkTransportOptions::allowsBLE"];

  v8 = [NSNumber numberWithInteger:self->_allowsInfraWiFi];
  [coderCopy encodeObject:v8 forKey:@"ADRapportLinkTransportOptions::allowsInfraWiFi"];

  v9 = [NSNumber numberWithInteger:self->_allowsBTPipe];
  [coderCopy encodeObject:v9 forKey:@"ADRapportLinkTransportOptions::allowsBTPipe"];

  v10 = [NSNumber numberWithInteger:self->_allowsForceBLE];
  [coderCopy encodeObject:v10 forKey:@"ADRapportLinkTransportOptions::allowsForceBLE"];

  v11 = [NSNumber numberWithInteger:self->_allowsForceAWDL];
  [coderCopy encodeObject:v11 forKey:@"ADRapportLinkTransportOptions::allowsForceAWDL"];

  v12 = [NSNumber numberWithInteger:self->_noL2Cap];
  [coderCopy encodeObject:v12 forKey:@"ADRapportLinkTransportOptions::noL2Cap"];
}

- (ADRapportLinkTransportOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkTransportOptions::allowsAWDL"];
  integerValue = [v5 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkTransportOptions::allowsBLE"];
  integerValue2 = [v7 integerValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkTransportOptions::allowsInfraWiFi"];
  integerValue3 = [v9 integerValue];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkTransportOptions::allowsBTPipe"];
  integerValue4 = [v11 integerValue];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkTransportOptions::allowsForceBLE"];
  integerValue5 = [v13 integerValue];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkTransportOptions::allowsForceAWDL"];
  integerValue6 = [v15 integerValue];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkTransportOptions::noL2Cap"];

  integerValue7 = [v17 integerValue];
  return [(ADRapportLinkTransportOptions *)self initWithAllowsAWDL:integerValue allowsBLE:integerValue2 allowsInfraWiFi:integerValue3 allowsBTPipe:integerValue4 allowsForceBLE:integerValue5 allowsForceAWDL:integerValue6 noL2Cap:integerValue7];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      allowsAWDL = self->_allowsAWDL;
      if (allowsAWDL == [(ADRapportLinkTransportOptions *)v5 allowsAWDL]&& (allowsBLE = self->_allowsBLE, allowsBLE == [(ADRapportLinkTransportOptions *)v5 allowsBLE]) && (allowsInfraWiFi = self->_allowsInfraWiFi, allowsInfraWiFi == [(ADRapportLinkTransportOptions *)v5 allowsInfraWiFi]) && (allowsBTPipe = self->_allowsBTPipe, allowsBTPipe == [(ADRapportLinkTransportOptions *)v5 allowsBTPipe]) && (allowsForceBLE = self->_allowsForceBLE, allowsForceBLE == [(ADRapportLinkTransportOptions *)v5 allowsForceBLE]) && (allowsForceAWDL = self->_allowsForceAWDL, allowsForceAWDL == [(ADRapportLinkTransportOptions *)v5 allowsForceAWDL]))
      {
        noL2Cap = self->_noL2Cap;
        v13 = noL2Cap == [(ADRapportLinkTransportOptions *)v5 noL2Cap];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [NSNumber numberWithInteger:self->_allowsAWDL];
  v4 = [v3 hash];
  v5 = [NSNumber numberWithInteger:self->_allowsBLE];
  v6 = [v5 hash] ^ v4;
  v7 = [NSNumber numberWithInteger:self->_allowsInfraWiFi];
  v8 = [v7 hash];
  v9 = [NSNumber numberWithInteger:self->_allowsBTPipe];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [NSNumber numberWithInteger:self->_allowsForceBLE];
  v12 = [v11 hash];
  v13 = [NSNumber numberWithInteger:self->_allowsForceAWDL];
  v14 = v12 ^ [v13 hash];
  v15 = [NSNumber numberWithInteger:self->_noL2Cap];
  v16 = v14 ^ [v15 hash];

  return v10 ^ v16;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADRapportLinkTransportOptions;
  v5 = [(ADRapportLinkTransportOptions *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {allowsAWDL = %lld, allowsBLE = %lld, allowsInfraWiFi = %lld, allowsBTPipe = %lld, allowsForceBLE = %lld, allowsForceAWDL = %lld, noL2Cap = %lld}", v5, self->_allowsAWDL, self->_allowsBLE, self->_allowsInfraWiFi, self->_allowsBTPipe, self->_allowsForceBLE, self->_allowsForceAWDL, self->_noL2Cap];

  return v6;
}

- (ADRapportLinkTransportOptions)initWithAllowsAWDL:(int64_t)l allowsBLE:(int64_t)e allowsInfraWiFi:(int64_t)fi allowsBTPipe:(int64_t)pipe allowsForceBLE:(int64_t)lE allowsForceAWDL:(int64_t)dL noL2Cap:(int64_t)cap
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000726E0;
  v10[3] = &unk_10050F3C0;
  v10[4] = l;
  v10[5] = e;
  v10[6] = fi;
  v10[7] = pipe;
  v10[8] = lE;
  v10[9] = dL;
  v10[10] = cap;
  return [(ADRapportLinkTransportOptions *)self initWithBuilder:v10];
}

- (ADRapportLinkTransportOptions)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = ADRapportLinkTransportOptions;
  v5 = [(ADRapportLinkTransportOptions *)&v9 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADRapportLinkTransportOptionsMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADRapportLinkTransportOptionsMutation *)v7 isDirty])
    {
      v6->_allowsAWDL = [(_ADRapportLinkTransportOptionsMutation *)v7 getAllowsAWDL];
      v6->_allowsBLE = [(_ADRapportLinkTransportOptionsMutation *)v7 getAllowsBLE];
      v6->_allowsInfraWiFi = [(_ADRapportLinkTransportOptionsMutation *)v7 getAllowsInfraWiFi];
      v6->_allowsBTPipe = [(_ADRapportLinkTransportOptionsMutation *)v7 getAllowsBTPipe];
      v6->_allowsForceBLE = [(_ADRapportLinkTransportOptionsMutation *)v7 getAllowsForceBLE];
      v6->_allowsForceAWDL = [(_ADRapportLinkTransportOptionsMutation *)v7 getAllowsForceAWDL];
      v6->_noL2Cap = [(_ADRapportLinkTransportOptionsMutation *)v7 getNoL2Cap];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_ADRapportLinkTransportOptionsMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADRapportLinkTransportOptionsMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADRapportLinkTransportOptions);
      v6->_allowsAWDL = [(_ADRapportLinkTransportOptionsMutation *)v5 getAllowsAWDL];
      v6->_allowsBLE = [(_ADRapportLinkTransportOptionsMutation *)v5 getAllowsBLE];
      v6->_allowsInfraWiFi = [(_ADRapportLinkTransportOptionsMutation *)v5 getAllowsInfraWiFi];
      v6->_allowsBTPipe = [(_ADRapportLinkTransportOptionsMutation *)v5 getAllowsBTPipe];
      v6->_allowsForceBLE = [(_ADRapportLinkTransportOptionsMutation *)v5 getAllowsForceBLE];
      v6->_allowsForceAWDL = [(_ADRapportLinkTransportOptionsMutation *)v5 getAllowsForceAWDL];
      v6->_noL2Cap = [(_ADRapportLinkTransportOptionsMutation *)v5 getNoL2Cap];
    }

    else
    {
      v6 = [(ADRapportLinkTransportOptions *)self copy];
    }
  }

  else
  {
    v6 = [(ADRapportLinkTransportOptions *)self copy];
  }

  return v6;
}

@end