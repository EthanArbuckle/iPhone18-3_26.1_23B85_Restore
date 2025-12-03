@interface AMUIBatteryChargingRingView
- (AMUIBatteryChargingRingView)initWithFrame:(CGRect)frame;
- (AMUIBatteryChargingRingView)initWithFrame:(CGRect)frame configuration:(id)configuration;
- (BOOL)_layerHasGaussianBlurFilter:(id)filter;
- (CGPath)_pathForRingConfiguration:(id)configuration;
- (CGPoint)_initialRingCenterPosition;
- (CGPoint)_ringOrigin;
- (id)_powerStatusForBattery:(id)battery;
- (id)_ringLayerForRingConfiguration:(id)configuration;
- (id)_springAnimationForKeyPath:(id)path duration:(double)duration delay:(double)delay fromValue:(id)value toValue:(id)toValue fillMode:(id)mode stiffness:(double)stiffness mass:(double)self0 damping:(double)self1;
- (id)_trackRingForRingConfiguration:(id)configuration withBlendMode:(id)mode;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_addGaussianBlurToLayerIfNeeded:(id)needed inputRadius:(double)radius;
- (void)_removeAllAnimations;
- (void)_runBatteryLevelAnimation;
- (void)_updateForPowerStatus:(id)status;
- (void)layoutSubviews;
- (void)presentChargingViewWithCompletionHandler:(id)handler;
- (void)setLegibilitySettings:(id)settings;
- (void)updateWithBattery:(id)battery;
@end

@implementation AMUIBatteryChargingRingView

- (AMUIBatteryChargingRingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = +[AMUIBatteryChargingUIConfiguration defaultConfiguration];
  height = [(AMUIBatteryChargingRingView *)self initWithFrame:v8 configuration:x, y, width, height];

  return height;
}

- (AMUIBatteryChargingRingView)initWithFrame:(CGRect)frame configuration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v81[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v80.receiver = self;
  v80.super_class = AMUIBatteryChargingRingView;
  height = [(AMUIBatteryChargingView *)&v80 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_configuration, configuration);
    v13 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{x, y, width, height}];
    chargingContainerView = v12->_chargingContainerView;
    v12->_chargingContainerView = v13;

    layer = [(UIView *)v12->_chargingContainerView layer];
    [layer setAllowsGroupBlending:0];

    layer2 = [MEMORY[0x277CD9ED0] layer];
    magSafeLayer = v12->_magSafeLayer;
    v12->_magSafeLayer = layer2;

    [(CALayer *)v12->_magSafeLayer setAllowsEdgeAntialiasing:1];
    [(CALayer *)v12->_magSafeLayer setDoubleSided:1];
    [(CALayer *)v12->_magSafeLayer setSortsSublayers:1];
    [(CALayer *)v12->_magSafeLayer setOpacity:0.0];
    v18 = v12->_magSafeLayer;
    [(AMUIBatteryChargingUIConfiguration *)v12->_configuration ringDiameter];
    v20 = v19;
    [(AMUIBatteryChargingUIConfiguration *)v12->_configuration ringDiameter];
    [(CALayer *)v18 setBounds:0.0, 0.0, v20, v21];
    layer3 = [MEMORY[0x277CD9ED0] layer];
    chargeRingLayer = v12->_chargeRingLayer;
    v12->_chargeRingLayer = layer3;

    [(CALayer *)v12->_chargeRingLayer setAllowsEdgeAntialiasing:1];
    [(CALayer *)v12->_chargeRingLayer setDoubleSided:1];
    [(CALayer *)v12->_chargeRingLayer setSortsSublayers:1];
    LODWORD(v24) = 1.0;
    [(CALayer *)v12->_chargeRingLayer setOpacity:v24];
    v25 = v12->_chargeRingLayer;
    [(AMUIBatteryChargingUIConfiguration *)v12->_configuration ringDiameter];
    v27 = v26;
    [(AMUIBatteryChargingUIConfiguration *)v12->_configuration ringDiameter];
    [(CALayer *)v25 setBounds:0.0, 0.0, v27, v28];
    layer4 = [MEMORY[0x277CD9ED0] layer];
    ringContainerLayer = v12->_ringContainerLayer;
    v12->_ringContainerLayer = layer4;

    [(CALayer *)v12->_ringContainerLayer setAllowsEdgeAntialiasing:1];
    [(CALayer *)v12->_ringContainerLayer setDoubleSided:1];
    [(CALayer *)v12->_ringContainerLayer setSortsSublayers:1];
    LODWORD(v31) = 1.0;
    [(CALayer *)v12->_ringContainerLayer setOpacity:v31];
    v32 = v12->_ringContainerLayer;
    [(AMUIBatteryChargingUIConfiguration *)v12->_configuration ringDiameter];
    v34 = v33;
    [(AMUIBatteryChargingUIConfiguration *)v12->_configuration ringDiameter];
    [(CALayer *)v32 setBounds:0.0, 0.0, v34, v35];
    layer5 = [MEMORY[0x277CD9ED0] layer];
    ringLayer = v12->_ringLayer;
    v12->_ringLayer = layer5;

    [(CALayer *)v12->_ringLayer setAllowsEdgeAntialiasing:1];
    [(CALayer *)v12->_ringLayer setDoubleSided:1];
    [(CALayer *)v12->_ringLayer setSortsSublayers:1];
    LODWORD(v38) = 1.0;
    [(CALayer *)v12->_ringLayer setOpacity:v38];
    v39 = v12->_ringLayer;
    [(AMUIBatteryChargingUIConfiguration *)v12->_configuration ringDiameter];
    v41 = v40;
    [(AMUIBatteryChargingUIConfiguration *)v12->_configuration ringDiameter];
    [(CALayer *)v39 setBounds:0.0, 0.0, v41, v42];
    _isDarkerSystemColorsEnabled = [(AMUIBatteryChargingRingView *)v12 _isDarkerSystemColorsEnabled];
    v44 = MEMORY[0x277CDA5C0];
    if (!_isDarkerSystemColorsEnabled)
    {
      v44 = MEMORY[0x277CDA5E8];
    }

    v45 = *v44;
    v46 = [(AMUIBatteryChargingRingView *)v12 _trackRingForRingConfiguration:configurationCopy withBlendMode:v45];
    trackFillRingLayer = v12->_trackFillRingLayer;
    v12->_trackFillRingLayer = v46;

    v48 = [MEMORY[0x277D755B8] systemImageNamed:@"bolt.fill"];
    [MEMORY[0x277D75348] whiteColor];
    v49 = v79 = configurationCopy;
    v50 = [v48 _flatImageWithColor:v49];

    v51 = [v50 imageWithRenderingMode:2];

    layer6 = [MEMORY[0x277CD9ED0] layer];
    chargingBoltGlyph = v12->_chargingBoltGlyph;
    v12->_chargingBoltGlyph = layer6;

    -[CALayer setContents:](v12->_chargingBoltGlyph, "setContents:", [v51 CGImage]);
    v54 = v12->_chargingBoltGlyph;
    v55 = [MEMORY[0x277CD9EA0] brightnessFilterWithAmount:0.1];
    v81[0] = v55;
    v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:1];
    [(CALayer *)v54 setFilters:v56];

    v57 = [(AMUIBatteryChargingRingView *)v12 _ringLayerForRingConfiguration:v79];

    batteryLevelRing = v12->_batteryLevelRing;
    v12->_batteryLevelRing = v57;

    v59 = [(AMUIBatteryChargingRingView *)v12 _pathForRingConfiguration:v12->_configuration];
    [(AMUIRingLayer *)v12->_batteryLevelRing setPath:v59];
    CGPathRelease(v59);
    v60 = objc_alloc(MEMORY[0x277D756B8]);
    v61 = [v60 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    chargePercentLabel = v12->_chargePercentLabel;
    v12->_chargePercentLabel = v61;

    v63 = MEMORY[0x277D74300];
    [(AMUIBatteryChargingUIConfiguration *)v12->_configuration chargingTextFontSize];
    v78 = [v63 boldSystemFontOfSize:?];
    [(UILabel *)v12->_chargePercentLabel setFont:v78];
    v64 = [objc_alloc(MEMORY[0x277D3D328]) initWithRecipe:6];
    platterView = v12->_platterView;
    v12->_platterView = v64;

    [(PLPlatterView *)v12->_platterView setUsesBackgroundView:1];
    [(PLPlatterView *)v12->_platterView setMaterialGroupNameBase:@"AMUIChargingViewMaterialGroup"];
    v66 = v12->_platterView;
    [(AMUIBatteryChargingUIConfiguration *)v12->_configuration ringDiameter];
    [(PLPlatterView *)v66 _setContinuousCornerRadius:v67 * 0.5];
    v68 = [objc_alloc(MEMORY[0x277D3D328]) initWithRecipe:19];
    grabberView = v12->_grabberView;
    v12->_grabberView = v68;

    [(PLPlatterView *)v12->_grabberView setRecipeDynamic:0];
    layer7 = [(UIView *)v12->_chargingContainerView layer];
    [layer7 addSublayer:v12->_magSafeLayer];

    [(CALayer *)v12->_magSafeLayer addSublayer:v12->_chargeRingLayer];
    [(CALayer *)v12->_magSafeLayer addSublayer:v12->_chargingBoltGlyph];
    [(CALayer *)v12->_chargeRingLayer addSublayer:v12->_ringContainerLayer];
    v71 = v12->_chargeRingLayer;
    layer8 = [(UILabel *)v12->_chargePercentLabel layer];
    [(CALayer *)v71 addSublayer:layer8];

    [(CALayer *)v12->_ringContainerLayer addSublayer:v12->_ringLayer];
    v73 = v12->_ringLayer;
    layer9 = [(PLPlatterView *)v12->_platterView layer];
    v75 = v73;
    configurationCopy = v79;
    [(CALayer *)v75 addSublayer:layer9];

    [(CALayer *)v12->_ringLayer addSublayer:v12->_trackFillRingLayer];
    [(CALayer *)v12->_ringLayer addSublayer:v12->_batteryLevelRing];
    [(AMUIBatteryChargingRingView *)v12 addSubview:v12->_chargingContainerView];
    [(AMUIBatteryChargingRingView *)v12 addSubview:v12->_grabberView];
  }

  v76 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = AMUIBatteryChargingRingView;
  [(AMUIBatteryChargingRingView *)&v30 layoutSubviews];
  [(AMUIBatteryChargingRingView *)self frame];
  [(UIView *)self->_chargingContainerView setFrame:?];
  [(AMUIBatteryChargingUIConfiguration *)self->_configuration ringDiameter];
  v4 = v3;
  [(AMUIBatteryChargingUIConfiguration *)self->_configuration ringDiameter];
  v6 = v5;
  [(AMUIBatteryChargingRingView *)self _ringOrigin];
  v8 = v7;
  v10 = v9;
  [(CALayer *)self->_magSafeLayer setFrame:?];
  [(CALayer *)self->_magSafeLayer setBounds:v8, v10, v4, v6];
  [(CALayer *)self->_chargeRingLayer setFrame:v8, v10, v4, v6];
  [(CALayer *)self->_chargeRingLayer setBounds:v8, v10, v4, v6];
  [(CALayer *)self->_ringContainerLayer setFrame:v8, v10, v4, v6];
  [(CALayer *)self->_ringContainerLayer setBounds:v8, v10, v4, v6];
  [(CALayer *)self->_ringLayer setFrame:v8, v10, v4, v6];
  [(CALayer *)self->_ringLayer setBounds:v8, v10, v4, v6];
  [(AMUIRingLayer *)self->_trackFillRingLayer setFrame:v8, v10, v4, v6];
  [(AMUIRingLayer *)self->_batteryLevelRing setFrame:v8, v10, v4, v6];
  [(AMUIBatteryChargingUIConfiguration *)self->_configuration boltSize];
  v12 = v11;
  v14 = v13;
  [(AMUIBatteryChargingRingView *)self _ringOrigin];
  v16 = v15 - v12 * 0.5;
  [(AMUIBatteryChargingRingView *)self _ringOrigin];
  [(CALayer *)self->_chargingBoltGlyph setFrame:v16, v17 - v14 * 0.5, v12, v14];
  chargingBoltGlyph = self->_chargingBoltGlyph;
  [(AMUIBatteryChargingRingView *)self _initialRingCenterPosition];
  [(CALayer *)chargingBoltGlyph setPosition:?];
  [(UILabel *)self->_chargePercentLabel sizeToFit];
  chargePercentLabel = self->_chargePercentLabel;
  [(AMUIBatteryChargingRingView *)self _initialRingCenterPosition];
  [(UILabel *)chargePercentLabel setCenter:?];
  layer = [(UILabel *)self->_chargePercentLabel layer];
  [layer setOpacity:0.0];

  [(PLPlatterView *)self->_platterView setFrame:v8, v10, v4, v6];
  [(PLPlatterView *)self->_platterView setBounds:v8, v10, v4, v6];
  LODWORD(layer) = [(AMUIBatteryChargingRingView *)self _isRTL];
  [(AMUIBatteryChargingRingView *)self _initialRingCenterPosition];
  if (layer)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 - v4;
  }

  [(AMUIBatteryChargingRingView *)self _initialRingCenterPosition];
  [(PLPlatterView *)self->_grabberView setFrame:v22];
  grabberView = self->_grabberView;
  [(PLPlatterView *)grabberView frame];
  [(PLPlatterView *)grabberView _setContinuousCornerRadius:CGRectGetHeight(v31) * 0.5];
  LODWORD(v24) = 1036831949;
  [(AMUIRingLayer *)self->_trackFillRingLayer setOpacity:v24];
  [(CALayer *)self->_chargingBoltGlyph setOpacity:0.0];
  LODWORD(v25) = 1.0;
  [(AMUIRingLayer *)self->_batteryLevelRing setOpacity:v25];
  layer2 = [(UILabel *)self->_chargePercentLabel layer];
  [layer2 setOpacity:0.0];

  layer3 = [(PLPlatterView *)self->_platterView layer];
  LODWORD(v28) = 1.0;
  [layer3 setOpacity:v28];

  layer4 = [(PLPlatterView *)self->_grabberView layer];
  [layer4 setOpacity:0.0];
}

- (void)updateWithBattery:(id)battery
{
  objc_storeStrong(&self->_internalBattery, battery);
  batteryCopy = battery;
  v5 = [(AMUIBatteryChargingRingView *)self _powerStatusForBattery:batteryCopy];
  internalStatus = self->_internalStatus;
  self->_internalStatus = v5;

  [(AMUIBatteryChargingRingView *)self _updateForPowerStatus:self->_internalStatus];
}

- (void)presentChargingViewWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [MEMORY[0x277CD9FF0] begin];
  v5 = MEMORY[0x277CD9FF0];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __72__AMUIBatteryChargingRingView_presentChargingViewWithCompletionHandler___block_invoke;
  v10 = &unk_278C766E0;
  selfCopy = self;
  v12 = handlerCopy;
  v6 = handlerCopy;
  [v5 setCompletionBlock:&v7];
  [(AMUIBatteryChargingRingView *)self _runBatteryLevelAnimation:v7];
  [MEMORY[0x277CD9FF0] commit];
}

uint64_t __72__AMUIBatteryChargingRingView_presentChargingViewWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeAllAnimations];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_updateForPowerStatus:(id)status
{
  statusCopy = status;
  v19 = AMUIRingColorForPowerStatus(statusCopy);
  chargingBoltGlyph = self->_chargingBoltGlyph;
  v6 = v19;
  -[CALayer setContentsMultiplyColor:](chargingBoltGlyph, "setContentsMultiplyColor:", [v19 CGColor]);
  batteryLevelRing = self->_batteryLevelRing;
  v8 = v19;
  -[AMUIRingLayer setContentsMultiplyColor:](batteryLevelRing, "setContentsMultiplyColor:", [v19 CGColor]);
  v9 = self->_batteryLevelRing;
  v10 = v19;
  -[AMUIRingLayer setStrokeColor:](v9, "setStrokeColor:", [v19 CGColor]);
  v11 = self->_batteryLevelRing;
  [statusCopy powerPercent];
  [(AMUIRingLayer *)v11 setStrokeEnd:v12 / 100.0];
  v13 = MEMORY[0x277CCABB8];
  v14 = MEMORY[0x277CCABB0];
  [statusCopy powerPercent];
  v16 = v15;

  v17 = [v14 numberWithDouble:v16];
  v18 = [v13 localizedStringFromNumber:v17 numberStyle:0];

  [(UILabel *)self->_chargePercentLabel setText:v18];
  [(UILabel *)self->_chargePercentLabel setTextColor:v19];
  [(AMUIBatteryChargingRingView *)self setNeedsLayout];
}

- (id)_powerStatusForBattery:(id)battery
{
  batteryCopy = battery;
  v5 = objc_alloc_init(AMUIPowerStatus);
  -[AMUIPowerStatus setPowerPercent:](v5, "setPowerPercent:", [batteryCopy percentCharge]);
  if ([batteryCopy isLowPowerModeActive])
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  [batteryCopy percentCharge];
  [MEMORY[0x277D75A78] lowBatteryLevel];
  if (BSFloatLessThanOrEqualToFloat())
  {
    v6 |= 2uLL;
  }

  -[AMUIPowerStatus setPowerStatus:](v5, "setPowerStatus:", v6 | [batteryCopy isCharging]);
  if ([batteryCopy isCharging])
  {
    if ([batteryCopy powerSourceState] == 2)
    {
      v7 = 4;
    }

    else
    {
      v7 = 3;
    }
  }

  else if (([batteryCopy isInternal] & 1) != 0 || (objc_msgSend(batteryCopy, "isCharging") & 1) != 0 || !-[BCBatteryDevice isCharging](self->_internalBattery, "isCharging") || -[BCBatteryDevice powerSourceState](self->_internalBattery, "powerSourceState") != 2)
  {
    v7 = 0;
  }

  else if (([(BCBatteryDevice *)self->_internalBattery isWirelesslyCharging]& 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  [(AMUIPowerStatus *)v5 setChargeState:v7];

  return v5;
}

- (CGPoint)_ringOrigin
{
  [(AMUIBatteryChargingUIConfiguration *)self->_configuration ringDiameter];
  [(AMUIBatteryChargingRingView *)self frame];
  [(AMUIBatteryChargingRingView *)self _isRTL];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  BSFloatRoundForScale();
  v5 = v4;

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  BSFloatRoundForScale();
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)_initialRingCenterPosition
{
  [(AMUIBatteryChargingUIConfiguration *)self->_configuration ringDiameter];
  _ringOrigin = [(AMUIBatteryChargingRingView *)self _ringOrigin];

  MEMORY[0x2821DE7B8](_ringOrigin);
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)_removeAllAnimations
{
  layer = [(AMUIBatteryChargingRingView *)self layer];
  [layer removeAllAnimations];

  [(CALayer *)self->_magSafeLayer removeAllAnimations];
  [(CALayer *)self->_ringContainerLayer removeAllAnimations];
  [(CALayer *)self->_ringLayer removeAllAnimations];
  [(CALayer *)self->_chargingBoltGlyph removeAllAnimations];
  [(AMUIRingLayer *)self->_trackFillRingLayer removeAllAnimations];
  [(AMUIRingLayer *)self->_batteryLevelRing removeAllAnimations];
  [(AMUIRingLayer *)self->_trackFillRingLayer removeAllAnimations];
  layer2 = [(UILabel *)self->_chargePercentLabel layer];
  [layer2 removeAllAnimations];

  layer3 = [(PLPlatterView *)self->_platterView layer];
  [layer3 removeAllAnimations];

  layer4 = [(PLPlatterView *)self->_grabberView layer];
  [layer4 removeAllAnimations];
}

- (BOOL)_layerHasGaussianBlurFilter:(id)filter
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  filters = [filter filters];
  v4 = [filters countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = *MEMORY[0x277CDA328];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(filters);
        }

        name = [*(*(&v14 + 1) + 8 * i) name];
        v10 = [name isEqualToString:v7];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v5 = [filters countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_addGaussianBlurToLayerIfNeeded:(id)needed inputRadius:(double)radius
{
  v14[1] = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  if (![(AMUIBatteryChargingRingView *)self _layerHasGaussianBlurFilter:neededCopy])
  {
    v7 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v7 setName:@"gaussianBlur"];
    [v7 setValue:@"default" forKey:@"inputQuality"];
    [v7 setValue:@"default" forKey:@"inputIntermediateBitDepth"];
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
    [v7 setValue:v8 forKey:@"inputRadius"];

    v9 = MEMORY[0x277CBEC28];
    [v7 setValue:MEMORY[0x277CBEC28] forKey:@"inputNormalizeEdges"];
    [v7 setValue:v9 forKey:@"inputHardEdges"];
    filters = [neededCopy filters];
    v11 = [filters mutableCopy];

    [v11 addObject:v7];
    v14[0] = v7;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [neededCopy setFilters:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setLegibilitySettings:(id)settings
{
  v6.receiver = self;
  v6.super_class = AMUIBatteryChargingRingView;
  settingsCopy = settings;
  [(AMUIBatteryChargingView *)&v6 setLegibilitySettings:settingsCopy];
  primaryColor = [settingsCopy primaryColor];

  -[AMUIRingLayer setStrokeColor:](self->_trackFillRingLayer, "setStrokeColor:", [primaryColor CGColor]);
}

- (void)_runBatteryLevelAnimation
{
  [(AMUIRingLayer *)self->_batteryLevelRing setStrokeEnd:0.0];
  [(AMUIPowerStatus *)self->_internalStatus powerPercent];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:v3 / 100.0];
  v5 = *MEMORY[0x277CDA238];
  v46 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"strokeEnd" duration:&unk_28519CD60 delay:v4 fromValue:*MEMORY[0x277CDA238] toValue:2.1 fillMode:0.1236 stiffness:300.0 mass:2.0 damping:50.0];

  v45 = [AMUIBatteryChargingRingView _springAnimationForKeyPath:"_springAnimationForKeyPath:duration:delay:fromValue:toValue:fillMode:stiffness:mass:damping:" duration:@"transform.scale.xy" delay:1.1993 fromValue:0.25 toValue:200.0 fillMode:2.0 stiffness:25.0 mass:? damping:?];
  v42 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"opacity" duration:&unk_28519CD60 delay:&unk_28519CD80 fromValue:v5 toValue:0.8 fillMode:0.25 stiffness:300.0 mass:2.0 damping:50.0];
  v43 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"transform.scale.xy" duration:&unk_28519CD60 delay:&unk_28519CD90 fromValue:v5 toValue:1.1993 fillMode:0.0 stiffness:200.0 mass:2.0 damping:25.0];
  v44 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"opacity" duration:&unk_28519CD60 delay:&unk_28519CD80 fromValue:v5 toValue:0.8 fillMode:0.25 stiffness:300.0 mass:2.0 damping:50.0];
  v40 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"filters.gaussianBlur.inputRadius" duration:&unk_28519CDA0 delay:&unk_28519CD60 fromValue:v5 toValue:0.8 fillMode:0.0 stiffness:300.0 mass:2.0 damping:50.0];
  v39 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"filters.gaussianBlur.inputRadius" duration:&unk_28519CD60 delay:&unk_28519CDB0 fromValue:v5 toValue:0.8 fillMode:3.0 stiffness:300.0 mass:2.0 damping:50.0];
  v38 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"transform.scale.xy" duration:&unk_28519CD90 delay:&unk_28519CD60 fromValue:v5 toValue:1.1993 fillMode:3.0 stiffness:200.0 mass:2.0 damping:25.0];
  v34 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"opacity" duration:&unk_28519CD80 delay:&unk_28519CD60 fromValue:v5 toValue:0.907 fillMode:3.0 stiffness:120.0 mass:1.0 damping:17.0];
  v37 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"transform.scale.xy" duration:&unk_28519CD80 delay:&unk_28519CDC0 fromValue:v5 toValue:1.1877 fillMode:3.28 stiffness:100.0 mass:0.8 damping:10.0];
  v41 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"transform.scale.xy" duration:&unk_28519CD80 delay:&unk_28519CD70 fromValue:v5 toValue:1.1877 fillMode:3.0 stiffness:100.0 mass:0.8 damping:10.0];
  v33 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"opacity" duration:&unk_28519CD60 delay:&unk_28519CD80 fromValue:v5 toValue:1.0 fillMode:3.1 stiffness:200.0 mass:2.0 damping:100.0];
  v32 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"filters.gaussianBlur.inputRadius" duration:&unk_28519CDD0 delay:&unk_28519CD60 fromValue:v5 toValue:0.8 fillMode:3.1 stiffness:300.0 mass:2.0 damping:50.0];
  v31 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"transform.scale.xy" duration:&unk_28519CD70 delay:&unk_28519CD80 fromValue:v5 toValue:1.1993 fillMode:3.1 stiffness:200.0 mass:2.0 damping:25.0];
  [(AMUIBatteryChargingRingView *)self _initialRingCenterPosition];
  v7 = v6;
  layer = [(PLPlatterView *)self->_grabberView layer];
  v9 = [layer valueForKeyPath:@"position.y"];
  [v9 floatValue];
  v28 = v10;

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v7 + -200.0];
  v36 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"position.y" duration:v11 delay:v12 fromValue:v5 toValue:1.277 fillMode:6.33 stiffness:300.0 mass:3.0 damping:35.0];

  v35 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"shadownOpacity" duration:&unk_28519CDE0 delay:&unk_28519CD60 fromValue:v5 toValue:0.8 fillMode:6.2 stiffness:300.0 mass:2.0 damping:50.0];
  v25 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"filters.gaussianBlur.inputRadius" duration:&unk_28519CD60 delay:&unk_28519CDA0 fromValue:v5 toValue:1.277 fillMode:6.3035 stiffness:300.0 mass:3.0 damping:35.0];
  v24 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"transform.scale.xy" duration:&unk_28519CD80 delay:&unk_28519CDE0 fromValue:v5 toValue:0.9392 fillMode:6.23778 stiffness:300.0 mass:3.0 damping:50.0];
  v30 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"transform.scale.xy" duration:&unk_28519CD80 delay:&unk_28519CD60 fromValue:v5 toValue:0.9392 fillMode:6.2 stiffness:300.0 mass:3.0 damping:50.0];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
  v29 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"position.y" duration:v13 delay:&unk_28519CDF0 fromValue:v5 toValue:2.2328 fillMode:6.33 stiffness:100.0 mass:3.0 damping:20.0];

  v27 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"opacity" duration:&unk_28519CD60 delay:&unk_28519CD80 fromValue:v5 toValue:1.0 fillMode:6.4023 stiffness:200.0 mass:2.0 damping:100.0];
  v26 = [(AMUIBatteryChargingRingView *)self _springAnimationForKeyPath:@"opacity" duration:&unk_28519CD80 delay:&unk_28519CD60 fromValue:v5 toValue:1.6 fillMode:8.2 stiffness:300.0 mass:8.0 damping:100.0];
  [(AMUIBatteryChargingRingView *)self _addGaussianBlurToLayerIfNeeded:self->_magSafeLayer inputRadius:0.0];
  [(AMUIBatteryChargingRingView *)self _addGaussianBlurToLayerIfNeeded:self->_chargingBoltGlyph inputRadius:50.0];
  [(AMUIBatteryChargingRingView *)self _addGaussianBlurToLayerIfNeeded:self->_batteryLevelRing inputRadius:0.0];
  layer2 = [(UILabel *)self->_chargePercentLabel layer];
  [(AMUIBatteryChargingRingView *)self _addGaussianBlurToLayerIfNeeded:layer2 inputRadius:40.0];

  [(CALayer *)self->_magSafeLayer setValue:&unk_28519CD70 forKey:@"transform.scale.xy"];
  layer3 = [(UILabel *)self->_chargePercentLabel layer];
  [layer3 setValue:&unk_28519CD60 forKey:@"transform.scale.xy"];

  layer4 = [(PLPlatterView *)self->_grabberView layer];
  [layer4 setOpacity:0.0];

  [(CALayer *)self->_magSafeLayer addAnimation:v44 forKey:@"magSafeFadeInAnimation"];
  [(CALayer *)self->_magSafeLayer addAnimation:v45 forKey:@"magSafeScaleAnimation"];
  [(CALayer *)self->_magSafeLayer addAnimation:v36 forKey:@"magSafeMoveUpAnimation"];
  [(CALayer *)self->_magSafeLayer addAnimation:v25 forKey:@"dissappearBlurAnimation"];
  [(CALayer *)self->_magSafeLayer addAnimation:v24 forKey:@"dissappearScaleOutAnimation"];
  [(CALayer *)self->_magSafeLayer addAnimation:v35 forKey:@"shadowFadeOutAnimation"];
  [(CALayer *)self->_ringContainerLayer addAnimation:v37 forKey:@"containerRingScaleInAnimation"];
  [(CALayer *)self->_ringLayer addAnimation:v41 forKey:@"ringScaleOutAnimation"];
  [(CALayer *)self->_chargingBoltGlyph addAnimation:v43 forKey:@"chargingBoltScaleAnimation"];
  [(CALayer *)self->_chargingBoltGlyph addAnimation:v42 forKey:@"chargingBoltFadeInAnimation"];
  [(CALayer *)self->_chargingBoltGlyph addAnimation:v40 forKey:@"chargingBoltBlurInAnimation"];
  [(CALayer *)self->_chargingBoltGlyph addAnimation:v39 forKey:@"chargingBoltBlurOutAnimation"];
  [(CALayer *)self->_chargingBoltGlyph addAnimation:v38 forKey:@"chargingBoltScaleOutAnimation"];
  [(CALayer *)self->_chargingBoltGlyph addAnimation:v34 forKey:@"chargingBoltFadeOutAnimation"];
  [(AMUIRingLayer *)self->_batteryLevelRing setValue:&unk_28519CD60 forKey:@"strokeEnd"];
  [(AMUIRingLayer *)self->_batteryLevelRing addAnimation:v46 forKey:@"levelRingStrokeEndAnimation"];
  layer5 = [(UILabel *)self->_chargePercentLabel layer];
  [layer5 addAnimation:v33 forKey:@"chargingLabelFadeInAnimation"];

  layer6 = [(UILabel *)self->_chargePercentLabel layer];
  [layer6 addAnimation:v32 forKey:@"chargingLabelBlurInAnimation"];

  layer7 = [(UILabel *)self->_chargePercentLabel layer];
  [layer7 addAnimation:v31 forKey:@"chargingLabelScaleInAnimation"];

  layer8 = [(UILabel *)self->_chargePercentLabel layer];
  [layer8 addAnimation:v30 forKey:@"chargingLabelDissappearScaleOutAnimation"];

  layer9 = [(PLPlatterView *)self->_grabberView layer];
  [layer9 addAnimation:v29 forKey:@"grabberMoveUpAnimation"];

  layer10 = [(PLPlatterView *)self->_grabberView layer];
  [layer10 addAnimation:v27 forKey:@"grabberFadeInAnimation"];

  layer11 = [(PLPlatterView *)self->_grabberView layer];
  [layer11 addAnimation:v26 forKey:@"grabberFadeOutAnimation"];
}

- (id)_ringLayerForRingConfiguration:(id)configuration
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (configuration)
  {
    configurationCopy = configuration;
    [configurationCopy ringDiameter];
    v6 = v5;
    [configurationCopy lineWidth];
    v8 = v7;

    v9 = [AMUIRingLayer ringWithDiameter:v6 lineWidth:v8];
    [v9 setStrokeStart:0.0];
    [v9 setStrokeEnd:0.0];
    [v9 setLineCap:*MEMORY[0x277CDA780]];
    if ([(AMUIBatteryChargingRingView *)self _isReduceMotionEnabled])
    {
      [v9 setOpacity:0.0];
    }

    else
    {
      LODWORD(v10) = 1.0;
      [v9 setOpacity:v10];
      Mutable = CGPathCreateMutable();
      [v9 setPath:Mutable];
      CGPathRelease(Mutable);
    }

    v12 = [MEMORY[0x277CD9EA0] brightnessFilterWithAmount:0.1];
    v16[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [v9 setFilters:v13];
  }

  else
  {
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

- (CGPath)_pathForRingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy ringDiameter];
  v5 = v4;
  [configurationCopy lineWidth];
  v7 = v6;

  return [AMUIRingLayer newPathForDiameter:v5 lineWidth:v7];
}

- (id)_trackRingForRingConfiguration:(id)configuration withBlendMode:(id)mode
{
  modeCopy = mode;
  configurationCopy = configuration;
  [configurationCopy ringDiameter];
  v8 = v7;
  [configurationCopy lineWidth];
  v10 = v9;

  v11 = [AMUIRingLayer ringLayerWithBlendMode:modeCopy diameter:v8 lineWidth:v10 brightnessAmount:0.2 saturationAmount:1.25];

  return v11;
}

- (id)_springAnimationForKeyPath:(id)path duration:(double)duration delay:(double)delay fromValue:(id)value toValue:(id)toValue fillMode:(id)mode stiffness:(double)stiffness mass:(double)self0 damping:(double)self1
{
  v19 = MEMORY[0x277CD9FA0];
  modeCopy = mode;
  toValueCopy = toValue;
  valueCopy = value;
  v23 = [v19 animationWithKeyPath:path];
  v24 = CACurrentMediaTime();
  if (delay != 0.0)
  {
    v24 = v24 + delay;
  }

  [v23 setBeginTime:v24];
  [v23 setFillMode:modeCopy];

  [v23 setRemovedOnCompletion:0];
  [v23 setFromValue:valueCopy];

  [v23 setToValue:toValueCopy];
  [v23 setMass:mass];
  [v23 setStiffness:stiffness];
  [v23 setDamping:damping];
  [v23 setDuration:duration];

  return v23;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = AMUIBatteryChargingRingView;
  v5 = [(AMUIBatteryChargingView *)&v10 hitTest:event withEvent:test.x, test.y];
  layer = [v5 layer];
  v7 = layer;
  if (layer == self->_chargingBoltGlyph || layer == self->_batteryLevelRing || layer == self->_trackFillRingLayer)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end