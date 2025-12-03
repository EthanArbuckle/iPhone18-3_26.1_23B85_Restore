@interface ADRapportLinkDiscoveryOptions
+ (id)newWithBuilder:(id)builder;
- (ADRapportLinkDiscoveryOptions)initWithBuilder:(id)builder;
- (ADRapportLinkDiscoveryOptions)initWithCoder:(id)coder;
- (ADRapportLinkDiscoveryOptions)initWithIncludesFamily:(int64_t)family includesHome:(int64_t)home includesRemoraDevices:(int64_t)devices;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ADRapportLinkDiscoveryOptions

- (void)encodeWithCoder:(id)coder
{
  includesFamily = self->_includesFamily;
  coderCopy = coder;
  v6 = [NSNumber numberWithInteger:includesFamily];
  [coderCopy encodeObject:v6 forKey:@"ADRapportLinkDiscoveryOptions::includesFamily"];

  v7 = [NSNumber numberWithInteger:self->_includesHome];
  [coderCopy encodeObject:v7 forKey:@"ADRapportLinkDiscoveryOptions::includesHome"];

  v8 = [NSNumber numberWithInteger:self->_includesRemoraDevices];
  [coderCopy encodeObject:v8 forKey:@"ADRapportLinkDiscoveryOptions::includesRemoraDevices"];
}

- (ADRapportLinkDiscoveryOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkDiscoveryOptions::includesFamily"];
  integerValue = [v5 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkDiscoveryOptions::includesHome"];
  integerValue2 = [v7 integerValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkDiscoveryOptions::includesRemoraDevices"];

  integerValue3 = [v9 integerValue];

  return [(ADRapportLinkDiscoveryOptions *)self initWithIncludesFamily:integerValue includesHome:integerValue2 includesRemoraDevices:integerValue3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADRapportLinkDiscoveryOptions;
  v5 = [(ADRapportLinkDiscoveryOptions *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {includesFamily = %lld, includesHome = %lld, includesRemoraDevices = %lld}", v5, self->_includesFamily, self->_includesHome, self->_includesRemoraDevices];

  return v6;
}

- (ADRapportLinkDiscoveryOptions)initWithIncludesFamily:(int64_t)family includesHome:(int64_t)home includesRemoraDevices:(int64_t)devices
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100133F50;
  v6[3] = &unk_1005129A8;
  v6[4] = family;
  v6[5] = home;
  v6[6] = devices;
  return [(ADRapportLinkDiscoveryOptions *)self initWithBuilder:v6];
}

- (ADRapportLinkDiscoveryOptions)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = ADRapportLinkDiscoveryOptions;
  v5 = [(ADRapportLinkDiscoveryOptions *)&v9 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADRapportLinkDiscoveryOptionsMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADRapportLinkDiscoveryOptionsMutation *)v7 isDirty])
    {
      v6->_includesFamily = [(_ADRapportLinkDiscoveryOptionsMutation *)v7 getIncludesFamily];
      v6->_includesHome = [(_ADRapportLinkDiscoveryOptionsMutation *)v7 getIncludesHome];
      v6->_includesRemoraDevices = [(_ADRapportLinkDiscoveryOptionsMutation *)v7 getIncludesRemoraDevices];
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
    v5 = [[_ADRapportLinkDiscoveryOptionsMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
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