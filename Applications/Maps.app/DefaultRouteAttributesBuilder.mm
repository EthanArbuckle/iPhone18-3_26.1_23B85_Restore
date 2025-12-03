@interface DefaultRouteAttributesBuilder
- (DefaultRouteAttributesBuilder)initWithDestination:(id)destination countryConfiguration:(id)configuration voiceLanguageIdentifier:(id)identifier useMetricSystem:(BOOL)system;
- (void)fillRouteAttributes:(id)attributes;
@end

@implementation DefaultRouteAttributesBuilder

- (void)fillRouteAttributes:(id)attributes
{
  attributesCopy = attributes;
  configuration = [(DefaultRouteAttributesBuilder *)self configuration];
  [attributesCopy setRoutePointTypeForTransportType:4 countryConfiguration:configuration];

  [attributesCopy setIncludeManeuverIcons:1];
  [attributesCopy setIncludeTrafficAlongRoute:1];
  [attributesCopy setIncludeTrafficIncidents:1];
  [attributesCopy setIncludeLaneGuidance:1];
  v5 = +[GEOPlatform sharedPlatform];
  if ([v5 supportsAdvancedMap])
  {
    IsEnabled = MapsFeature_IsEnabled();

    [attributesCopy setIncludeLaneWidths:IsEnabled];
    if (IsEnabled)
    {
      BOOL = GEOConfigGetBOOL();
      goto LABEL_6;
    }
  }

  else
  {

    [attributesCopy setIncludeLaneWidths:0];
  }

  BOOL = 0;
LABEL_6:
  [attributesCopy setDirectZilchByLaneFlowlines:BOOL];
  [attributesCopy addUiContext:2];
  [attributesCopy addUiContext:1];
  voiceLanguageIdentifier = [(DefaultRouteAttributesBuilder *)self voiceLanguageIdentifier];
  [attributesCopy setPhoneticLocaleIdentifier:voiceLanguageIdentifier];

  [attributesCopy setIncludeCrossLanguagePhonetics:GEOConfigGetBOOL()];
  [attributesCopy setUseMetricThreshold:{-[DefaultRouteAttributesBuilder useMetricSystem](self, "useMetricSystem")}];
}

- (DefaultRouteAttributesBuilder)initWithDestination:(id)destination countryConfiguration:(id)configuration voiceLanguageIdentifier:(id)identifier useMetricSystem:(BOOL)system
{
  destinationCopy = destination;
  configurationCopy = configuration;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = DefaultRouteAttributesBuilder;
  v13 = [(DefaultRouteAttributesBuilder *)&v19 init];
  if (v13)
  {
    v14 = [destinationCopy copy];
    destinationWaypoint = v13->_destinationWaypoint;
    v13->_destinationWaypoint = v14;

    objc_storeStrong(&v13->_configuration, configuration);
    v16 = [identifierCopy copy];
    voiceLanguageIdentifier = v13->_voiceLanguageIdentifier;
    v13->_voiceLanguageIdentifier = v16;

    v13->_useMetricSystem = system;
  }

  return v13;
}

@end