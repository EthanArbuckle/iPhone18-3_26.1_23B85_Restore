@interface ADRapportLinkConfiguration
+ (id)newWithBuilder:(id)builder;
- (ADRapportLinkConfiguration)initWithBuilder:(id)builder;
- (ADRapportLinkConfiguration)initWithCoder:(id)coder;
- (ADRapportLinkConfiguration)initWithDiscoveryOptions:(id)options transportOptions:(id)transportOptions connectionOptions:(id)connectionOptions enablesProximityTracking:(int64_t)tracking;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ADRapportLinkConfiguration

- (void)encodeWithCoder:(id)coder
{
  discoveryOptions = self->_discoveryOptions;
  coderCopy = coder;
  [coderCopy encodeObject:discoveryOptions forKey:@"ADRapportLinkConfiguration::discoveryOptions"];
  [coderCopy encodeObject:self->_transportOptions forKey:@"ADRapportLinkConfiguration::transportOptions"];
  [coderCopy encodeObject:self->_connectionOptions forKey:@"ADRapportLinkConfiguration::connectionOptions"];
  v6 = [NSNumber numberWithInteger:self->_enablesProximityTracking];
  [coderCopy encodeObject:v6 forKey:@"ADRapportLinkConfiguration::enablesProximityTracking"];
}

- (ADRapportLinkConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkConfiguration::discoveryOptions"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkConfiguration::transportOptions"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkConfiguration::connectionOptions"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkConfiguration::enablesProximityTracking"];

  integerValue = [v8 integerValue];
  v10 = [(ADRapportLinkConfiguration *)self initWithDiscoveryOptions:v5 transportOptions:v6 connectionOptions:v7 enablesProximityTracking:integerValue];

  return v10;
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
      enablesProximityTracking = self->_enablesProximityTracking;
      if (enablesProximityTracking == [(ADRapportLinkConfiguration *)v5 enablesProximityTracking])
      {
        discoveryOptions = [(ADRapportLinkConfiguration *)v5 discoveryOptions];
        discoveryOptions = self->_discoveryOptions;
        if (discoveryOptions == discoveryOptions || [(ADRapportLinkDiscoveryOptions *)discoveryOptions isEqual:discoveryOptions])
        {
          transportOptions = [(ADRapportLinkConfiguration *)v5 transportOptions];
          transportOptions = self->_transportOptions;
          if (transportOptions == transportOptions || [(ADRapportLinkTransportOptions *)transportOptions isEqual:transportOptions])
          {
            connectionOptions = [(ADRapportLinkConfiguration *)v5 connectionOptions];
            connectionOptions = self->_connectionOptions;
            v13 = connectionOptions == connectionOptions || [(ADRapportLinkConnectionOptions *)connectionOptions isEqual:connectionOptions];
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADRapportLinkConfiguration;
  v5 = [(ADRapportLinkConfiguration *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {discoveryOptions = %@, transportOptions = %@, connectionOptions = %@, enablesProximityTracking = %lld}", v5, self->_discoveryOptions, self->_transportOptions, self->_connectionOptions, self->_enablesProximityTracking];

  return v6;
}

- (ADRapportLinkConfiguration)initWithDiscoveryOptions:(id)options transportOptions:(id)transportOptions connectionOptions:(id)connectionOptions enablesProximityTracking:(int64_t)tracking
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001C86F8;
  v15[3] = &unk_100515818;
  optionsCopy = options;
  transportOptionsCopy = transportOptions;
  connectionOptionsCopy = connectionOptions;
  trackingCopy = tracking;
  v10 = connectionOptionsCopy;
  v11 = transportOptionsCopy;
  v12 = optionsCopy;
  v13 = [(ADRapportLinkConfiguration *)self initWithBuilder:v15];

  return v13;
}

- (ADRapportLinkConfiguration)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v18.receiver = self;
  v18.super_class = ADRapportLinkConfiguration;
  v5 = [(ADRapportLinkConfiguration *)&v18 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADRapportLinkConfigurationMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADRapportLinkConfigurationMutation *)v7 isDirty])
    {
      getDiscoveryOptions = [(_ADRapportLinkConfigurationMutation *)v7 getDiscoveryOptions];
      v9 = [getDiscoveryOptions copy];
      discoveryOptions = v6->_discoveryOptions;
      v6->_discoveryOptions = v9;

      getTransportOptions = [(_ADRapportLinkConfigurationMutation *)v7 getTransportOptions];
      v12 = [getTransportOptions copy];
      transportOptions = v6->_transportOptions;
      v6->_transportOptions = v12;

      getConnectionOptions = [(_ADRapportLinkConfigurationMutation *)v7 getConnectionOptions];
      v15 = [getConnectionOptions copy];
      connectionOptions = v6->_connectionOptions;
      v6->_connectionOptions = v15;

      v6->_enablesProximityTracking = [(_ADRapportLinkConfigurationMutation *)v7 getEnablesProximityTracking];
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
    v5 = [[_ADRapportLinkConfigurationMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADRapportLinkConfigurationMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADRapportLinkConfiguration);
      getDiscoveryOptions = [(_ADRapportLinkConfigurationMutation *)v5 getDiscoveryOptions];
      v8 = [getDiscoveryOptions copy];
      discoveryOptions = v6->_discoveryOptions;
      v6->_discoveryOptions = v8;

      getTransportOptions = [(_ADRapportLinkConfigurationMutation *)v5 getTransportOptions];
      v11 = [getTransportOptions copy];
      transportOptions = v6->_transportOptions;
      v6->_transportOptions = v11;

      getConnectionOptions = [(_ADRapportLinkConfigurationMutation *)v5 getConnectionOptions];
      v14 = [getConnectionOptions copy];
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