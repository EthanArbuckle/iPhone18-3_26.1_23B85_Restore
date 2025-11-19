@interface NTKVictoryDigitalRichFaceView
- (void)_applyColor:(id)a3 platterColor:(id)a4 toComplicationView:(id)a5 slot:(id)a6;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_setupLogoViews;
@end

@implementation NTKVictoryDigitalRichFaceView

- (void)_setupLogoViews
{
  v3 = [[NTKComplicationDisplayWrapperView alloc] initWithFamily:10];
  [(NTKVictoryDigitalFaceView *)self setLogoWrapperView:v3];

  v4 = [(NTKVictoryDigitalRichFaceView *)self device];
  NTKCircularMediumComplicationDiameter();
  v6 = v5;

  v7 = [(NTKVictoryDigitalFaceView *)self logoWrapperView];
  [v7 setBounds:{0.0, 0.0, v6, v6}];

  v8 = [NTKVictoryDigitalFaceBundle imageWithName:@"victoryNTK-complication-logo"];
  v9 = [CLKFullColorImageProvider providerWithFullColorImage:v8];

  v10 = [CLKComplicationTemplateGraphicCircularImage templateWithImageProvider:v9];
  v20 = NTKRichComplicationViewUsePlatterKey;
  v21 = &__kCFBooleanTrue;
  v11 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [v10 setMetadata:v11];

  v12 = [(NTKVictoryDigitalFaceView *)self logoWrapperView];
  [v12 setComplicationTemplate:v10 reason:0 animation:0];

  v13 = [(NTKVictoryDigitalFaceView *)self logoWrapperView];
  v14 = [v13 display];
  [(NTKVictoryDigitalRichFaceView *)self _configureComplicationView:v14 forSlot:0];

  v15 = [(NTKVictoryDigitalFaceView *)self logoWrapperView];
  [v15 setTapEnabled:1];

  v16 = [(NTKVictoryDigitalFaceView *)self logoWrapperView];
  [v16 addTarget:self action:"_logoTapped" forControlEvents:64];

  v17 = [(NTKVictoryDigitalRichFaceView *)self complicationContainerView];
  v18 = [(NTKVictoryDigitalFaceView *)self logoWrapperView];
  [v17 addSubview:v18];

  v19 = [(NTKVictoryDigitalFaceView *)self logoWrapperView];
  [v19 setFilterProvider:self];
}

- (void)_applyColor:(id)a3 platterColor:(id)a4 toComplicationView:(id)a5 slot:(id)a6
{
  v10 = a3;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = NTKVictoryDigitalRichFaceView;
  [(NTKVictoryDigitalFaceView *)&v15 _applyColor:v10 platterColor:a4 toComplicationView:v11 slot:a6];
  if ([v11 conformsToProtocol:&OBJC_PROTOCOL___NTKRichComplicationCircularView])
  {
    [v11 setAccentedAlternateBackground:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
    [(NTKVictoryDigitalRichFaceView *)self setComplicationColor:v10];
    [(NTKVictoryDigitalRichFaceView *)self setInterpolatedComplicationColor:v10];
    v13 = [(NTKVictoryDigitalFaceView *)self palette];
    v14 = [v13 alternateComplicationColor];
    [(NTKVictoryDigitalRichFaceView *)self setAlternateComplicationColor:v14];

    [v12 transitionToMonochromeWithFraction:1.0];
  }
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = NTKVictoryDigitalRichFaceView;
  [(NTKVictoryDigitalFaceView *)&v15 _configureComplicationView:v6 forSlot:a4];
  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___NTKRichComplicationCircularView])
  {
    [v6 setAccentedAlternateBackground:1];
    v7 = +[UIColor clearColor];
    [v6 setPlatterColor:v7];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [(NTKVictoryDigitalFaceView *)self palette];
    v10 = [v9 complication];
    [(NTKVictoryDigitalRichFaceView *)self setComplicationColor:v10];

    v11 = [(NTKVictoryDigitalFaceView *)self palette];
    v12 = [v11 complication];
    [(NTKVictoryDigitalRichFaceView *)self setInterpolatedComplicationColor:v12];

    v13 = [(NTKVictoryDigitalFaceView *)self palette];
    v14 = [v13 alternateComplicationColor];
    [(NTKVictoryDigitalRichFaceView *)self setAlternateComplicationColor:v14];

    [v8 transitionToMonochromeWithFraction:1.0];
  }
}

@end