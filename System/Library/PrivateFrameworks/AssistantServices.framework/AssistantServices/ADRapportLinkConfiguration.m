@interface ADRapportLinkConfiguration
+ (id)newWithBuilder:(id)a3;
- (ADRapportLinkConfiguration)initWithBuilder:(id)a3;
- (ADRapportLinkConfiguration)initWithCoder:(id)a3;
- (ADRapportLinkConfiguration)initWithDiscoveryOptions:(id)a3 transportOptions:(id)a4 connectionOptions:(id)a5 enablesProximityTracking:(int64_t)a6;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ADRapportLinkConfiguration

- (void)encodeWithCoder:(id)a3
{
  discoveryOptions = self->_discoveryOptions;
  v5 = a3;
  [v5 encodeObject:discoveryOptions forKey:@"ADRapportLinkConfiguration::discoveryOptions"];
  [v5 encodeObject:self->_transportOptions forKey:@"ADRapportLinkConfiguration::transportOptions"];
  [v5 encodeObject:self->_connectionOptions forKey:@"ADRapportLinkConfiguration::connectionOptions"];
  v6 = [NSNumber numberWithInteger:self->_enablesProximityTracking];
  [v5 encodeObject:v6 forKey:@"ADRapportLinkConfiguration::enablesProximityTracking"];
}

- (ADRapportLinkConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkConfiguration::discoveryOptions"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkConfiguration::transportOptions"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkConfiguration::connectionOptions"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkConfiguration::enablesProximityTracking"];

  v9 = [v8 integerValue];
  v10 = [(ADRapportLinkConfiguration *)self initWithDiscoveryOptions:v5 transportOptions:v6 connectionOptions:v7 enablesProximityTracking:v9];

  return v10;
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
      enablesProximityTracking = self->_enablesProximityTracking;
      if (enablesProximityTracking == [(ADRapportLinkConfiguration *)v5 enablesProximityTracking])
      {
        v7 = [(ADRapportLinkConfiguration *)v5 discoveryOptions];
        discoveryOptions = self->_discoveryOptions;
        if (discoveryOptions == v7 || [(ADRapportLinkDiscoveryOptions *)discoveryOptions isEqual:v7])
        {
          v9 = [(ADRapportLinkConfiguration *)v5 transportOptions];
          transportOptions = self->_transportOptions;
          if (transportOptions == v9 || [(ADRapportLinkTransportOptions *)transportOptions isEqual:v9])
          {
            v11 = [(ADRapportLinkConfiguration *)v5 connectionOptions];
            connectionOptions = self->_connectionOptions;
            v13 = connectionOptions == v11 || [(ADRapportLinkConnectionOptions *)connectionOptions isEqual:v11];
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
  v3 = [(ADRapportLinkDiscoveryOptions *)self->_discoveryOptions hash];
  v4 = [(ADRapportLinkTransportOptions *)self->_transportOptions hash]^ v3;
  v5 = v4 ^ [(ADRapportLinkConnectionOptions *)self->_connectionOptions hash];
  v6 = [NSNumber numberWithInteger:self->_enablesProximityTracking];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADRapportLinkConfiguration;
  v5 = [(ADRapportLinkConfiguration *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {discoveryOptions = %@, transportOptions = %@, connectionOptions = %@, enablesProximityTracking = %lld}", v5, self->_discoveryOptions, self->_transportOptions, self->_connectionOptions, self->_enablesProximityTracking];

  return v6;
}

- (ADRapportLinkConfiguration)initWithDiscoveryOptions:(id)a3 transportOptions:(id)a4 connectionOptions:(id)a5 enablesProximityTracking:(int64_t)a6
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001C86F8;
  v15[3] = &unk_100515818;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v10 = v18;
  v11 = v17;
  v12 = v16;
  v13 = [(ADRapportLinkConfiguration *)self initWithBuilder:v15];

  return v13;
}

- (ADRapportLinkConfiguration)initWithBuilder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ADRapportLinkConfiguration;
  v5 = [(ADRapportLinkConfiguration *)&v18 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADRapportLinkConfigurationMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADRapportLinkConfigurationMutation *)v7 isDirty])
    {
      v8 = [(_ADRapportLinkConfigurationMutation *)v7 getDiscoveryOptions];
      v9 = [v8 copy];
      discoveryOptions = v6->_discoveryOptions;
      v6->_discoveryOptions = v9;

      v11 = [(_ADRapportLinkConfigurationMutation *)v7 getTransportOptions];
      v12 = [v11 copy];
      transportOptions = v6->_transportOptions;
      v6->_transportOptions = v12;

      v14 = [(_ADRapportLinkConfigurationMutation *)v7 getConnectionOptions];
      v15 = [v14 copy];
      connectionOptions = v6->_connectionOptions;
      v6->_connectionOptions = v15;

      v6->_enablesProximityTracking = [(_ADRapportLinkConfigurationMutation *)v7 getEnablesProximityTracking];
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
    v5 = [[_ADRapportLinkConfigurationMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADRapportLinkConfigurationMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADRapportLinkConfiguration);
      v7 = [(_ADRapportLinkConfigurationMutation *)v5 getDiscoveryOptions];
      v8 = [v7 copy];
      discoveryOptions = v6->_discoveryOptions;
      v6->_discoveryOptions = v8;

      v10 = [(_ADRapportLinkConfigurationMutation *)v5 getTransportOptions];
      v11 = [v10 copy];
      transportOptions = v6->_transportOptions;
      v6->_transportOptions = v11;

      v13 = [(_ADRapportLinkConfigurationMutation *)v5 getConnectionOptions];
      v14 = [v13 copy];
      connectionOptions = v6->_connectionOptions;
      v6->_connectionOptions = v14;

      v6->_enablesProximityTracking = [(_ADRapportLinkConfigurationMutation *)v5 getEnablesProximityTracking];
    }

    else
    {
      v6 = [(ADRapportLinkConfiguration *)self copy];
    }
  }

  else
  {
    v6 = [(ADRapportLinkConfiguration *)self copy];
  }

  return v6;
}

@end