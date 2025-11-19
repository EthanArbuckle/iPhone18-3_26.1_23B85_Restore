@interface ADRapportLinkTransportOptions
+ (id)newWithBuilder:(id)a3;
- (ADRapportLinkTransportOptions)initWithAllowsAWDL:(int64_t)a3 allowsBLE:(int64_t)a4 allowsInfraWiFi:(int64_t)a5 allowsBTPipe:(int64_t)a6 allowsForceBLE:(int64_t)a7 allowsForceAWDL:(int64_t)a8 noL2Cap:(int64_t)a9;
- (ADRapportLinkTransportOptions)initWithBuilder:(id)a3;
- (ADRapportLinkTransportOptions)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ADRapportLinkTransportOptions

- (void)encodeWithCoder:(id)a3
{
  allowsAWDL = self->_allowsAWDL;
  v5 = a3;
  v6 = [NSNumber numberWithInteger:allowsAWDL];
  [v5 encodeObject:v6 forKey:@"ADRapportLinkTransportOptions::allowsAWDL"];

  v7 = [NSNumber numberWithInteger:self->_allowsBLE];
  [v5 encodeObject:v7 forKey:@"ADRapportLinkTransportOptions::allowsBLE"];

  v8 = [NSNumber numberWithInteger:self->_allowsInfraWiFi];
  [v5 encodeObject:v8 forKey:@"ADRapportLinkTransportOptions::allowsInfraWiFi"];

  v9 = [NSNumber numberWithInteger:self->_allowsBTPipe];
  [v5 encodeObject:v9 forKey:@"ADRapportLinkTransportOptions::allowsBTPipe"];

  v10 = [NSNumber numberWithInteger:self->_allowsForceBLE];
  [v5 encodeObject:v10 forKey:@"ADRapportLinkTransportOptions::allowsForceBLE"];

  v11 = [NSNumber numberWithInteger:self->_allowsForceAWDL];
  [v5 encodeObject:v11 forKey:@"ADRapportLinkTransportOptions::allowsForceAWDL"];

  v12 = [NSNumber numberWithInteger:self->_noL2Cap];
  [v5 encodeObject:v12 forKey:@"ADRapportLinkTransportOptions::noL2Cap"];
}

- (ADRapportLinkTransportOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkTransportOptions::allowsAWDL"];
  v6 = [v5 integerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkTransportOptions::allowsBLE"];
  v8 = [v7 integerValue];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkTransportOptions::allowsInfraWiFi"];
  v10 = [v9 integerValue];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkTransportOptions::allowsBTPipe"];
  v12 = [v11 integerValue];

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkTransportOptions::allowsForceBLE"];
  v14 = [v13 integerValue];

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkTransportOptions::allowsForceAWDL"];
  v16 = [v15 integerValue];

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkTransportOptions::noL2Cap"];

  v18 = [v17 integerValue];
  return [(ADRapportLinkTransportOptions *)self initWithAllowsAWDL:v6 allowsBLE:v8 allowsInfraWiFi:v10 allowsBTPipe:v12 allowsForceBLE:v14 allowsForceAWDL:v16 noL2Cap:v18];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADRapportLinkTransportOptions;
  v5 = [(ADRapportLinkTransportOptions *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {allowsAWDL = %lld, allowsBLE = %lld, allowsInfraWiFi = %lld, allowsBTPipe = %lld, allowsForceBLE = %lld, allowsForceAWDL = %lld, noL2Cap = %lld}", v5, self->_allowsAWDL, self->_allowsBLE, self->_allowsInfraWiFi, self->_allowsBTPipe, self->_allowsForceBLE, self->_allowsForceAWDL, self->_noL2Cap];

  return v6;
}

- (ADRapportLinkTransportOptions)initWithAllowsAWDL:(int64_t)a3 allowsBLE:(int64_t)a4 allowsInfraWiFi:(int64_t)a5 allowsBTPipe:(int64_t)a6 allowsForceBLE:(int64_t)a7 allowsForceAWDL:(int64_t)a8 noL2Cap:(int64_t)a9
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000726E0;
  v10[3] = &unk_10050F3C0;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  v10[7] = a6;
  v10[8] = a7;
  v10[9] = a8;
  v10[10] = a9;
  return [(ADRapportLinkTransportOptions *)self initWithBuilder:v10];
}

- (ADRapportLinkTransportOptions)initWithBuilder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ADRapportLinkTransportOptions;
  v5 = [(ADRapportLinkTransportOptions *)&v9 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADRapportLinkTransportOptionsMutation alloc] initWithBase:0];
    v4[2](v4, v7);
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

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_ADRapportLinkTransportOptionsMutation alloc] initWithBase:self];
    v4[2](v4, v5);
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