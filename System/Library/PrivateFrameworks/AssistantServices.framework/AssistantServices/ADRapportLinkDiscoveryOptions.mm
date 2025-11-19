@interface ADRapportLinkDiscoveryOptions
+ (id)newWithBuilder:(id)a3;
- (ADRapportLinkDiscoveryOptions)initWithBuilder:(id)a3;
- (ADRapportLinkDiscoveryOptions)initWithCoder:(id)a3;
- (ADRapportLinkDiscoveryOptions)initWithIncludesFamily:(int64_t)a3 includesHome:(int64_t)a4 includesRemoraDevices:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ADRapportLinkDiscoveryOptions

- (void)encodeWithCoder:(id)a3
{
  includesFamily = self->_includesFamily;
  v5 = a3;
  v6 = [NSNumber numberWithInteger:includesFamily];
  [v5 encodeObject:v6 forKey:@"ADRapportLinkDiscoveryOptions::includesFamily"];

  v7 = [NSNumber numberWithInteger:self->_includesHome];
  [v5 encodeObject:v7 forKey:@"ADRapportLinkDiscoveryOptions::includesHome"];

  v8 = [NSNumber numberWithInteger:self->_includesRemoraDevices];
  [v5 encodeObject:v8 forKey:@"ADRapportLinkDiscoveryOptions::includesRemoraDevices"];
}

- (ADRapportLinkDiscoveryOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkDiscoveryOptions::includesFamily"];
  v6 = [v5 integerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkDiscoveryOptions::includesHome"];
  v8 = [v7 integerValue];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkDiscoveryOptions::includesRemoraDevices"];

  v10 = [v9 integerValue];

  return [(ADRapportLinkDiscoveryOptions *)self initWithIncludesFamily:v6 includesHome:v8 includesRemoraDevices:v10];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      includesFamily = self->_includesFamily;
      if (includesFamily == [(ADRapportLinkDiscoveryOptions *)v5 includesFamily]&& (includesHome = self->_includesHome, includesHome == [(ADRapportLinkDiscoveryOptions *)v5 includesHome]))
      {
        includesRemoraDevices = self->_includesRemoraDevices;
        v9 = includesRemoraDevices == [(ADRapportLinkDiscoveryOptions *)v5 includesRemoraDevices];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [NSNumber numberWithInteger:self->_includesFamily];
  v4 = [v3 hash];
  v5 = [NSNumber numberWithInteger:self->_includesHome];
  v6 = [v5 hash] ^ v4;
  v7 = [NSNumber numberWithInteger:self->_includesRemoraDevices];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADRapportLinkDiscoveryOptions;
  v5 = [(ADRapportLinkDiscoveryOptions *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {includesFamily = %lld, includesHome = %lld, includesRemoraDevices = %lld}", v5, self->_includesFamily, self->_includesHome, self->_includesRemoraDevices];

  return v6;
}

- (ADRapportLinkDiscoveryOptions)initWithIncludesFamily:(int64_t)a3 includesHome:(int64_t)a4 includesRemoraDevices:(int64_t)a5
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100133F50;
  v6[3] = &unk_1005129A8;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  return [(ADRapportLinkDiscoveryOptions *)self initWithBuilder:v6];
}

- (ADRapportLinkDiscoveryOptions)initWithBuilder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ADRapportLinkDiscoveryOptions;
  v5 = [(ADRapportLinkDiscoveryOptions *)&v9 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADRapportLinkDiscoveryOptionsMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADRapportLinkDiscoveryOptionsMutation *)v7 isDirty])
    {
      v6->_includesFamily = [(_ADRapportLinkDiscoveryOptionsMutation *)v7 getIncludesFamily];
      v6->_includesHome = [(_ADRapportLinkDiscoveryOptionsMutation *)v7 getIncludesHome];
      v6->_includesRemoraDevices = [(_ADRapportLinkDiscoveryOptionsMutation *)v7 getIncludesRemoraDevices];
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
    v5 = [[_ADRapportLinkDiscoveryOptionsMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADRapportLinkDiscoveryOptionsMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADRapportLinkDiscoveryOptions);
      v6->_includesFamily = [(_ADRapportLinkDiscoveryOptionsMutation *)v5 getIncludesFamily];
      v6->_includesHome = [(_ADRapportLinkDiscoveryOptionsMutation *)v5 getIncludesHome];
      v6->_includesRemoraDevices = [(_ADRapportLinkDiscoveryOptionsMutation *)v5 getIncludesRemoraDevices];
    }

    else
    {
      v6 = [(ADRapportLinkDiscoveryOptions *)self copy];
    }
  }

  else
  {
    v6 = [(ADRapportLinkDiscoveryOptions *)self copy];
  }

  return v6;
}

@end