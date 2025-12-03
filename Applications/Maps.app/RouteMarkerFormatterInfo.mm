@interface RouteMarkerFormatterInfo
- (RouteMarkerFormatterInfo)initWithRouteDescription:(id)description etaType:(int64_t)type etaComparison:(unsigned __int8)comparison tollCurrency:(unsigned __int8)currency styleAttributes:(id)attributes;
- (id)description;
@end

@implementation RouteMarkerFormatterInfo

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = v3;
  etaType = self->_etaType;
  if (etaType > 2)
  {
    if (etaType <= 4)
    {
      if (etaType == 3)
      {
        v6 = @"VKRouteLegEta";
      }

      else
      {
        v6 = @"VKRouteName";
      }

      goto LABEL_16;
    }

    if (etaType == 5)
    {
      v6 = @"VKTravelDirection";
      goto LABEL_16;
    }

    if (etaType == 6)
    {
      v6 = @"VKDebugAnnotation";
      goto LABEL_16;
    }

LABEL_12:
    v6 = @"VKRouteEtaUnknown";
    goto LABEL_16;
  }

  if (!etaType)
  {
    goto LABEL_17;
  }

  if (etaType == 1)
  {
    v6 = @"VKExitSign";
    goto LABEL_16;
  }

  if (etaType != 2)
  {
    goto LABEL_12;
  }

  v6 = @"VKTrafficDelay";
LABEL_16:
  [v3 appendFormat:@", etaType: %@", v6];
LABEL_17:
  etaComparison = self->_etaComparison;
  if (etaComparison > 1)
  {
    if (etaComparison == 3)
    {
      v8 = @"Faster";
      goto LABEL_26;
    }

    if (etaComparison == 2)
    {
      v8 = @"Slower";
      goto LABEL_26;
    }

LABEL_24:
    v8 = [NSString stringWithFormat:@"VKEtaComparison (%u)", self->_etaComparison];
    goto LABEL_26;
  }

  if (!self->_etaComparison)
  {
    goto LABEL_27;
  }

  if (etaComparison != 1)
  {
    goto LABEL_24;
  }

  v8 = @"Same";
LABEL_26:
  [v4 appendFormat:@", etaComparison: %@", v8];

LABEL_27:
  tollCurrency = self->_tollCurrency;
  if (tollCurrency > 3)
  {
    if (self->_tollCurrency > 5u)
    {
      if (tollCurrency == 6)
      {
        v10 = @"Rupee";
        goto LABEL_45;
      }

      if (tollCurrency == 7)
      {
        v10 = @"Ruble";
        goto LABEL_45;
      }
    }

    else
    {
      if (tollCurrency == 4)
      {
        v10 = @"Pound";
        goto LABEL_45;
      }

      if (tollCurrency == 5)
      {
        v10 = @"Won";
        goto LABEL_45;
      }
    }

LABEL_44:
    v10 = [NSString stringWithFormat:@"VKEtaTollCurrencyType (%u)", self->_tollCurrency];
    goto LABEL_45;
  }

  if (self->_tollCurrency > 1u)
  {
    if (tollCurrency == 2)
    {
      v10 = @"Yen";
      goto LABEL_45;
    }

    if (tollCurrency == 3)
    {
      v10 = @"Euro";
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (!self->_tollCurrency)
  {
    goto LABEL_46;
  }

  v10 = @"Usd";
LABEL_45:
  [v4 appendFormat:@", tollCurrency: %@", v10];

LABEL_46:
  v11 = @"YES";
  if (!self->_styleAttributes)
  {
    v11 = @"NO";
  }

  [v4 appendFormat:@", hasStyleAttributes: %@, routeDescription: %@>", v11, self->_routeDescription];

  return v4;
}

- (RouteMarkerFormatterInfo)initWithRouteDescription:(id)description etaType:(int64_t)type etaComparison:(unsigned __int8)comparison tollCurrency:(unsigned __int8)currency styleAttributes:(id)attributes
{
  descriptionCopy = description;
  attributesCopy = attributes;
  v18.receiver = self;
  v18.super_class = RouteMarkerFormatterInfo;
  v14 = [(RouteMarkerFormatterInfo *)&v18 init];
  if (v14)
  {
    v15 = [descriptionCopy copy];
    routeDescription = v14->_routeDescription;
    v14->_routeDescription = v15;

    v14->_etaType = type;
    v14->_etaComparison = comparison;
    v14->_tollCurrency = currency;
    objc_storeStrong(&v14->_styleAttributes, attributes);
  }

  return v14;
}

@end