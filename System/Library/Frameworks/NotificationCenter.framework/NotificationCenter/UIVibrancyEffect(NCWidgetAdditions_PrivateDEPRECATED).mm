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
  visualEffect = [v1 visualEffect];

  return visualEffect;
}

+ (id)widgetQuaternaryVibrancyEffect
{
  v0 = [MEMORY[0x277D26740] _visualStylingProviderForStyleSetNamed:@"platterClientStyle" inBundle:0];
  v1 = [v0 _visualStylingForStyle:3];
  visualEffect = [v1 visualEffect];

  return visualEffect;
}

+ (id)widgetPrimaryHighlightVibrancyEffect
{
  v0 = [MEMORY[0x277D26740] _visualStylingProviderForStyleSetNamed:@"platterClientStyle" inBundle:0];
  v1 = [v0 _visualStylingForStyleNamed:@"platterClientPrimaryHighlight"];
  visualEffect = [v1 visualEffect];

  return visualEffect;
}

+ (id)widgetSecondaryHighlightVibrancyEffect
{
  v0 = [MEMORY[0x277D26740] _visualStylingProviderForStyleSetNamed:@"platterClientStyle" inBundle:0];
  v1 = [v0 _visualStylingForStyleNamed:@"platterClientSecondaryHighlight"];
  visualEffect = [v1 visualEffect];

  return visualEffect;
}

@end