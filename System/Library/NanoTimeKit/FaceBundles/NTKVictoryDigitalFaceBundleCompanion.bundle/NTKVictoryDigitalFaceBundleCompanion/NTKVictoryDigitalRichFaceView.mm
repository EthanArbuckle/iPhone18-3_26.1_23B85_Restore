@interface NTKVictoryDigitalRichFaceView
- (void)_applyColor:(id)color platterColor:(id)platterColor toComplicationView:(id)view slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_setupLogoViews;
@end

@implementation NTKVictoryDigitalRichFaceView

- (void)_setupLogoViews
{
  v3 = [[NTKComplicationDisplayWrapperView alloc] initWithFamily:10];
  [(NTKVictoryDigitalFaceView *)self setLogoWrapperView:v3];

  device = [(NTKVictoryDigitalRichFaceView *)self device];
  NTKCircularMediumComplicationDiameter();
  v6 = v5;

  logoWrapperView = [(NTKVictoryDigitalFaceView *)self logoWrapperView];
  [logoWrapperView setBounds:{0.0, 0.0, v6, v6}];

  v8 = [NTKVictoryDigitalFaceBundle imageWithName:@"victoryNTK-complication-logo"];
  v9 = [CLKFullColorImageProvider providerWithFullColorImage:v8];

  v10 = [CLKComplicationTemplateGraphicCircularImage templateWithImageProvider:v9];
  v20 = NTKRichComplicationViewUsePlatterKey;
  v21 = &__kCFBooleanTrue;
  v11 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [v10 setMetadata:v11];

  logoWrapperView2 = [(NTKVictoryDigitalFaceView *)self logoWrapperView];
  [logoWrapperView2 setComplicationTemplate:v10 reason:0 animation:0];

  logoWrapperView3 = [(NTKVictoryDigitalFaceView *)self logoWrapperView];
  display = [logoWrapperView3 display];
  [(NTKVictoryDigitalRichFaceView *)self _configureComplicationView:display forSlot:0];

  logoWrapperView4 = [(NTKVictoryDigitalFaceView *)self logoWrapperView];
  [logoWrapperView4 setTapEnabled:1];

  logoWrapperView5 = [(NTKVictoryDigitalFaceView *)self logoWrapperView];
  [logoWrapperView5 addTarget:self action:"_logoTapped" forControlEvents:64];

  complicationContainerView = [(NTKVictoryDigitalRichFaceView *)self complicationContainerView];
  logoWrapperView6 = [(NTKVictoryDigitalFaceView *)self logoWrapperView];
  [complicationContainerView addSubview:logoWrapperView6];

  logoWrapperView7 = [(NTKVictoryDigitalFaceView *)self logoWrapperView];
  [logoWrapperView7 setFilterProvider:self];
}

- (void)_applyColor:(id)color platterColor:(id)platterColor toComplicationView:(id)view slot:(id)slot
{
  colorCopy = color;
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = NTKVictoryDigitalRichFaceView;
  [(NTKVictoryDigitalFaceView *)&v15 _applyColor:colorCopy platterColor:platterColor toComplicationView:viewCopy slot:slot];
  if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___NTKRichComplicationCircularView])
  {
    [viewCopy setAccentedAlternateBackground:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = viewCopy;
    [(NTKVictoryDigitalRichFaceView *)self setComplicationColor:colorCopy];
    [(NTKVictoryDigitalRichFaceView *)self setInterpolatedComplicationColor:colorCopy];
    palette = [(NTKVictoryDigitalFaceView *)self palette];
    alternateComplicationColor = [palette alternateComplicationColor];
    [(NTKVictoryDigitalRichFaceView *)self setAlternateComplicationColor:alternateComplicationColor];

    [v12 transitionToMonochromeWithFraction:1.0];
  }
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = NTKVictoryDigitalRichFaceView;
  [(NTKVictoryDigitalFaceView *)&v15 _configureComplicationView:viewCopy forSlot:slot];
  if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___NTKRichComplicationCircularView])
  {
    [viewCopy setAccentedAlternateBackground:1];
    v7 = +[UIColor clearColor];
    [viewCopy setPlatterColor:v7];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = viewCopy;
    palette = [(NTKVictoryDigitalFaceView *)self palette];
    complication = [palette complication];
    [(NTKVictoryDigitalRichFaceView *)self setComplicationColor:complication];

    palette2 = [(NTKVictoryDigitalFaceView *)self palette];
    complication2 = [palette2 complication];
    [(NTKVictoryDigitalRichFaceView *)self setInterpolatedComplicationColor:complication2];

    palette3 = [(NTKVictoryDigitalFaceView *)self palette];
    alternateComplicationColor = [palette3 alternateComplicationColor];
    [(NTKVictoryDigitalRichFaceView *)self setAlternateComplicationColor:alternateComplicationColor];

    [v8 transitionToMonochromeWithFraction:1.0];
  }
}

@end