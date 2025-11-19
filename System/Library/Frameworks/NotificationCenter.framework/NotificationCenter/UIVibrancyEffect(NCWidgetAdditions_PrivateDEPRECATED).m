@interface UIVibrancyEffect(NCWidgetAdditions_PrivateDEPRECATED)
+ (id)widgetPrimaryHighlightVibrancyEffect;
+ (id)widgetQuaternaryVibrancyEffect;
+ (id)widgetSecondaryHighlightVibrancyEffect;
+ (id)widgetTertiaryVibrancyEffect;
@end

@implementation UIVibrancyEffect(NCWidgetAdditions_PrivateDEPRECATED)

+ (id)widgetTertiaryVibrancyEffect
{
  v0 = [MEMORY[0x277D26740] _visualStylingProviderForStyleSetNamed:@"platterClientStyle" inBundle:0];
  v1 = [v0 _visualStylingForStyle:2];
  v2 = [v1 visualEffect];

  return v2;
}

+ (id)widgetQuaternaryVibrancyEffect
{
  v0 = [MEMORY[0x277D26740] _visualStylingProviderForStyleSetNamed:@"platterClientStyle" inBundle:0];
  v1 = [v0 _visualStylingForStyle:3];
  v2 = [v1 visualEffect];

  return v2;
}

+ (id)widgetPrimaryHighlightVibrancyEffect
{
  v0 = [MEMORY[0x277D26740] _visualStylingProviderForStyleSetNamed:@"platterClientStyle" inBundle:0];
  v1 = [v0 _visualStylingForStyleNamed:@"platterClientPrimaryHighlight"];
  v2 = [v1 visualEffect];

  return v2;
}

+ (id)widgetSecondaryHighlightVibrancyEffect
{
  v0 = [MEMORY[0x277D26740] _visualStylingProviderForStyleSetNamed:@"platterClientStyle" inBundle:0];
  v1 = [v0 _visualStylingForStyleNamed:@"platterClientSecondaryHighlight"];
  v2 = [v1 visualEffect];

  return v2;
}

@end