@interface NTKCharacterRenderer
+ (id)rendererWithCharacter:(unint64_t)character loader:(id)loader;
- (NTKCharacterRenderer)initWithCharacter:(unint64_t)character loader:(id)loader prefix:(id)prefix;
- (float)_getElbowScaleForPosition:(float)position;
- (void)_applyClothingColorWithEncoder:(id)encoder;
- (void)_doneWaitingForFootRaise;
- (void)_drawBackgroundWithEncoder:(id)encoder;
- (void)_drawBodyWithEncoder:(id)encoder;
- (void)_drawCharacterWithEncoder:(id)encoder;
- (void)_drawHeadWithEncoder:(id)encoder;
- (void)_drawHourHandWithEncoder:(id)encoder;
- (void)_drawMinuteHandWithEncoder:(id)encoder;
- (void)_drawTappingFootWithEncoder:(id)encoder;
- (void)_idleBodyAfterAnimation;
- (void)_lowerFootAfterBodyAnimation;
- (void)_raiseFootForBodyAnimation;
- (void)_setPoseSpecs:(CharacterPoseSpecs)specs[2];
- (void)_setStateSpecs:(CharacterStateSpecs)specs[4];
- (void)_updateStateAndPose;
- (void)_updateTimeVariables;
- (void)_updateWaitingForFootRaise;
- (void)activate;
- (void)bindPipelineState:(unint64_t)state withEncoder:(id)encoder;
- (void)copyStateFrom:(id)from;
- (void)dealloc;
- (void)loadBackgroundTextures;
- (void)loadBodyTextures;
- (void)loadFootTextures;
- (void)loadHeadBlinkTextures;
- (void)loadHeadTextures;
- (void)loadNumbersTexture;
- (void)loadShiftTextures;
- (void)prepareToAnimateToDate:(id)date forOrb:(BOOL)orb;
- (void)renderWithEncoder:(id)encoder;
- (void)scrubToDate:(id)date;
- (void)setupBodyState;
- (void)setupGeometry;
- (void)setupPipelineState;
- (void)setupTextures;
- (void)significantTimeChanged:(id)changed;
@end

@implementation NTKCharacterRenderer

+ (id)rendererWithCharacter:(unint64_t)character loader:(id)loader
{
  loaderCopy = loader;
  if (!character)
  {
    v6 = off_1C308;
    goto LABEL_5;
  }

  if (character == 1)
  {
    v6 = &off_1C310;
LABEL_5:
    v7 = [objc_alloc(*v6) initWithLoader:loaderCopy];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (void)copyStateFrom:(id)from
{
  self->_hourHandPos = *(from + 22);
  self->_minHandPos = *(from + 23);
  self->_applyInstantTimeWarp = *(from + 138);
  self->_prevState = *(from + 14);
  self->_idealState = *(from + 15);
  self->_curState = *(from + 16);
  self->_endState = *(from + 17);
  self->_prevPose = *(from + 18);
  self->_idealPose = *(from + 19);
  self->_curPose = *(from + 20);
  self->_endPose = *(from + 21);
  v5 = *(from + 3);
  overrideDate = self->_overrideDate;
  self->_overrideDate = v5;
  fromCopy = from;

  self->_overrideDateFraction = *(fromCopy + 8);
  self->_fromHourPercent = *(fromCopy + 9);
  self->_fromMinutePercent = *(fromCopy + 10);
  self->_toHourPercent = *(fromCopy + 11);
  self->_toMinutePercent = *(fromCopy + 12);
  self->_animationFrameInterval = *(fromCopy + 13);
  self->_animatingToNewDate = *(fromCopy + 136);
  self->_animatingIntoOrb = *(fromCopy + 137);
  self->_pinHandsBrightnessToMax = *(fromCopy + 139);
  self->_sayCheese = *(fromCopy + 140);
  self->_scrubOffset = *(fromCopy + 37);
  self->_inTimeTravel = *(fromCopy + 152);
  objc_storeStrong(&self->_timeTravelEnterDate, *(fromCopy + 20));
  [*(fromCopy + 59) curHeadX];
  [(_Head *)self->_head setCurHeadX:?];
  -[_Head setInAnimation:](self->_head, "setInAnimation:", [*(fromCopy + 59) inAnimation]);
  [*(fromCopy + 59) bone];
  [(_Head *)self->_head setBone:?];
  [*(fromCopy + 59) curHeadTilt];
  [(_Head *)self->_head setCurHeadTilt:?];
  [*(fromCopy + 60) bone];
  [(_Body *)self->_body setBone:?];
  -[_Body setAnimationDirection:](self->_body, "setAnimationDirection:", [*(fromCopy + 60) animationDirection]);
  -[_Body setAnimationFrame:](self->_body, "setAnimationFrame:", [*(fromCopy + 60) animationFrame]);
  -[_Body setFrameDisplayTime60th:](self->_body, "setFrameDisplayTime60th:", [*(fromCopy + 60) frameDisplayTime60th]);
  -[_Body setWaitingForFootRaise:](self->_body, "setWaitingForFootRaise:", [*(fromCopy + 60) waitingForFootRaise]);
  -[_Body setState:](self->_body, "setState:", [*(fromCopy + 60) state]);
  [*(fromCopy + 62) curLeftBend];
  [(_Arms *)self->_arms setCurLeftBend:?];
  [*(fromCopy + 62) curRightBend];
  [(_Arms *)self->_arms setCurRightBend:?];
  -[_Foot setState:](self->_foot, "setState:", [*(fromCopy + 61) state]);
  -[_Foot setAnimFrame:](self->_foot, "setAnimFrame:", [*(fromCopy + 61) animFrame]);
  -[_Foot setFrameDisplayTime60th:](self->_foot, "setFrameDisplayTime60th:", [*(fromCopy + 61) frameDisplayTime60th]);
}

- (void)prepareToAnimateToDate:(id)date forOrb:(BOOL)orb
{
  orbCopy = orb;
  overrideDate = self->_overrideDate;
  self->_overrideDate = 0;
  dateCopy = date;

  self->_animatingToNewDate = 1;
  self->_overrideDateFraction = 0.0;
  if (orbCopy)
  {
    self->_animatingIntoOrb = 1;
    [(NTKCharacterRenderer *)self _raiseFootForBodyAnimation];
  }

  else
  {
    self->_animatingIntoOrb = 0;
    [(NTKCharacterRenderer *)self _lowerFootAfterBodyAnimation];
  }

  *&self->_fromHourPercent = *&self->_hourHandPos;
  p_toMinutePercent = &self->_toMinutePercent;
  sub_92BC(&self->_toHourPercent, &self->_toMinutePercent, dateCopy, self->_cal);

  fromHourPercent = self->_fromHourPercent;
  toHourPercent = self->_toHourPercent;
  if (fromHourPercent < 0.5 == toHourPercent >= 0.5)
  {
    fromMinutePercent = self->_fromMinutePercent;
    if (fromMinutePercent < 0.5 == *p_toMinutePercent >= 0.5)
    {
      self->_fromHourPercent = fromMinutePercent;
      self->_fromMinutePercent = fromHourPercent;
      [(_Arms *)self->_arms curLeftBend];
      v13 = v12;
      [(_Arms *)self->_arms curRightBend];
      [(_Arms *)self->_arms setCurLeftBend:?];
      LODWORD(v14) = v13;
      [(_Arms *)self->_arms setCurRightBend:v14];
      toHourPercent = self->_toHourPercent;
      fromHourPercent = self->_fromHourPercent;
    }
  }

  if (vabds_f32(toHourPercent, fromHourPercent) > 0.5)
  {
    v15 = fromHourPercent < toHourPercent;
    v16 = 1.0;
    if (v15)
    {
      v16 = -1.0;
    }

    self->_toHourPercent = toHourPercent + v16;
  }

  toMinutePercent = self->_toMinutePercent;
  v18 = self->_fromMinutePercent;
  if (vabds_f32(toMinutePercent, v18) > 0.5)
  {
    v15 = v18 < toMinutePercent;
    v19 = 1.0;
    if (v15)
    {
      v19 = -1.0;
    }

    *p_toMinutePercent = toMinutePercent + v19;
  }
}

- (NTKCharacterRenderer)initWithCharacter:(unint64_t)character loader:(id)loader prefix:(id)prefix
{
  loaderCopy = loader;
  prefixCopy = prefix;
  v38.receiver = self;
  v38.super_class = NTKCharacterRenderer;
  v10 = [(NTKCharacterRenderer *)&v38 init];
  if (v10)
  {
    v11 = +[CLKUIMetalResourceManager sharedDevice];
    v12 = *(v10 + 1);
    *(v10 + 1) = v11;

    objc_storeStrong(v10 + 55, prefix);
    objc_storeStrong(v10 + 21, loader);
    v13 = +[UIColor redColor];
    v14 = *(v10 + 64);
    *(v10 + 64) = v13;

    v15 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    v16 = *(v10 + 2);
    *(v10 + 2) = v15;

    v17 = *(v10 + 3);
    *(v10 + 3) = 0;

    v18 = objc_opt_new();
    v19 = *(v10 + 59);
    *(v10 + 59) = v18;

    v20 = objc_opt_new();
    v21 = *(v10 + 60);
    *(v10 + 60) = v20;

    v22 = objc_opt_new();
    v23 = *(v10 + 62);
    *(v10 + 62) = v22;

    v24 = objc_opt_new();
    v25 = *(v10 + 61);
    *(v10 + 61) = v24;

    v26 = objc_opt_new();
    v27 = *(v10 + 63);
    *(v10 + 63) = v26;

    [v10 setupGeometry];
    [v10 setupPipelineState];
    [v10 setupBodyState];
    *(v10 + 137) = 0;
    v10[140] = 0;
    __asm { FMOV            V0.2S, #1.0 }

    *(v10 + 57) = _D0;
    *(v10 + 56) = 0;
    *(v10 + 106) = 1065353216;
    *(v10 + 103) = 1065353216;
    *(v10 + 65) = 0;
    __asm { FMOV            V0.4S, #1.0 }

    *(v10 + 396) = _Q0;
    *(v10 + 13) = 1065353216;
    v34 = +[NSNotificationCenter defaultCenter];
    [v34 addObserver:v10 selector:"significantTimeChanged:" name:UIApplicationSignificantTimeChangeNotification object:0];

    v35 = +[NSNotificationCenter defaultCenter];
    [v35 addObserver:v10 selector:"_localeChanged" name:NSCurrentLocaleDidChangeNotification object:0];

    v36 = v10;
  }

  return v10;
}

- (void)_setPoseSpecs:(CharacterPoseSpecs)specs[2]
{
  v3 = *&specs->bodyOffsetX;
  self->_poseSpecs[0].headOffsetX = specs->headOffsetX;
  *&self->_poseSpecs[0].bodyOffsetX = v3;
  v4 = *&specs[1].bodyOffsetX;
  self->_poseSpecs[1].headOffsetX = specs[1].headOffsetX;
  *&self->_poseSpecs[1].bodyOffsetX = v4;
}

- (void)_setStateSpecs:(CharacterStateSpecs)specs[4]
{
  for (i = 0; i != 4; ++i)
  {
    v4 = &self->_stateSpecs[i];
    v5 = *&specs[i].bodyTexIdx;
    v6 = *&specs[i].leftShoulderX;
    *&v4->xFlipFoot = *&specs[i].xFlipFoot;
    *&v4->leftShoulderX = v6;
    *&v4->bodyTexIdx = v5;
  }
}

- (void)significantTimeChanged:(id)changed
{
  v4 = +[NSTimeZone systemTimeZone];
  [(NSCalendar *)self->_cal setTimeZone:v4];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationSignificantTimeChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:NSCurrentLocaleDidChangeNotification object:0];

  v5.receiver = self;
  v5.super_class = NTKCharacterRenderer;
  [(NTKCharacterRenderer *)&v5 dealloc];
}

- (void)activate
{
  if (!self->_active)
  {
    [(NTKCharacterRenderer *)self setupTextures];
    self->_active = 1;
  }
}

- (void)setupGeometry
{
  loader = [(NTKCharacterRenderer *)self loader];
  mtlBuffer = [loader mtlBuffer];
  geometryMtlBuffer = self->_geometryMtlBuffer;
  self->_geometryMtlBuffer = mtlBuffer;

  -[_Geometry setMtlBufOffset:](self->_background, "setMtlBufOffset:", [loader bufferOffsetBackground]);
  -[_Geometry setMtlBufOffset:](self->_body, "setMtlBufOffset:", [loader bufferOffsetBody]);
  -[_Geometry setMtlBufOffset:](self->_foot, "setMtlBufOffset:", [loader bufferOffsetFoot]);
  -[_Arms setMtlBufArmOffset:](self->_arms, "setMtlBufArmOffset:", [loader bufferOffsetArm]);
  -[_Arms setMtlBufHandOffset:](self->_arms, "setMtlBufHandOffset:", [loader bufferOffsetHand]);
  -[_Geometry setMtlBufOffset:](self->_head, "setMtlBufOffset:", [loader bufferOffsetHead]);
  LODWORD(v5) = 1058938398;
  [(_Head *)self->_head setWidth:v5];
  LODWORD(v6) = 1056224437;
  [(_Head *)self->_head setHeight:v6];
  LODWORD(v7) = 1060727145;
  [(_Body *)self->_body setWidth:v7];
  LODWORD(v8) = 1058136546;
  [(_Body *)self->_body setHeight:v8];
}

- (void)setupPipelineState
{
  loader = [(NTKCharacterRenderer *)self loader];
  v3 = 0;
  pipelines = self->_pipelines;
  do
  {
    v5 = [loader getPipelineForProgramType:v3];
    v6 = pipelines[v3];
    pipelines[v3] = v5;

    ++v3;
  }

  while (v3 != 4);
  self->_currentPipeline = 5;
}

- (void)setupBodyState
{
  *&self->_hourHandPos = 0x3E1999B03F588889;
  self->_applyInstantTimeWarp = 1;
  [(NTKCharacterRenderer *)self _updateStateAndPose];
  self->_applyInstantTimeWarp = 0;
  *&v3 = self->_poseSpecs[self->_curPose].headOffsetX * self->_stateSpecs[self->_curState].xFlipFace;
  [(_Head *)self->_head setCurHeadX:v3];
  [(_Head *)self->_head setInAnimation:0];
  [(_Head *)self->_head setOffset:0.00000538545646];
  [(_Head *)self->_head setBone:0.0];
  [(_Head *)self->_head setCurHeadTilt:0.0];
  [(_Body *)self->_body setBone:0.0];
  v4 = &unk_1556C;
  v5 = (self->_stateSpecs[self->_curState].xFlipBody * 0.0) + 0.0183823529;
  *&v6 = vld1_dup_f32(v4);
  *&v6 = v5;
  [(_Body *)self->_body setOffset:v6];
  [(_Body *)self->_body setAnimationDirection:0];
  [(_Body *)self->_body setAnimationFrame:0];
  [(_Body *)self->_body setFrameDisplayTime60th:0];
  [(_Body *)self->_body setWaitingForFootRaise:0];
  [(_Body *)self->_body setState:0];
  hourElbowBend = self->_stateSpecs[self->_curState].hourElbowBend;
  *&v8 = self->_hourHandPos;
  [(NTKCharacterRenderer *)self _getElbowScaleForPosition:v8];
  *&v10 = hourElbowBend * v9;
  [(_Arms *)self->_arms setCurLeftBend:v10];
  minuteElbowBend = self->_stateSpecs[self->_curState].minuteElbowBend;
  *&v12 = self->_minHandPos;
  [(NTKCharacterRenderer *)self _getElbowScaleForPosition:v12];
  *&v14 = minuteElbowBend * v13;
  [(_Arms *)self->_arms setCurRightBend:v14];
  [(_Foot *)self->_foot setAnimFrame:11];
  [(_Foot *)self->_foot setFrameDisplayTime60th:0];
  foot = self->_foot;

  [(_Foot *)foot setState:4];
}

- (void)loadBackgroundTextures
{
  v3 = [(NTKCharacterResourceLoader *)self->_loader mtlTextureWithName:@"Background"];
  [(_Background *)self->_background setGlowTex:v3];
}

- (void)loadNumbersTexture
{
  v3 = [(NTKCharacterResourceLoader *)self->_loader mtlTextureWithName:@"Numbers"];
  [(_Background *)self->_background setNumbersTex:v3];
}

- (void)loadBodyTextures
{
  v3 = [(NTKCharacterResourceLoader *)self->_loader textureWithName:@"BodyPose1_4" prefix:self->_prefix];
  v12[0] = v3;
  v4 = [(NTKCharacterResourceLoader *)self->_loader textureWithName:@"BodyPose2_3" prefix:self->_prefix];
  v12[1] = v4;
  v5 = [NSArray arrayWithObjects:v12 count:2];
  [(_Body *)self->_body setTexs:v5];

  v6 = [(NTKCharacterResourceLoader *)self->_loader textureWithName:@"HandArm"];
  [(_Arms *)self->_arms setTexArm:v6];

  v7 = [(NTKCharacterResourceLoader *)self->_loader textureWithName:@"HandMinute_0"];
  v11[0] = v7;
  v8 = [(NTKCharacterResourceLoader *)self->_loader textureWithName:@"HandMinute_1"];
  v11[1] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:2];
  [(_Arms *)self->_arms setTexHandMnut:v9];

  v10 = [(NTKCharacterResourceLoader *)self->_loader textureWithName:@"HandHour_0"];
  [(_Arms *)self->_arms setTexHandHour:v10];
}

- (void)loadHeadTextures
{
  v3 = [NSMutableArray arrayWithCapacity:6];
  [(_Head *)self->_head setTexs:v3];

  for (i = 0; i != 6; ++i)
  {
    loader = self->_loader;
    v6 = [NSString stringWithFormat:@"Head_%d", i];
    v7 = [(NTKCharacterResourceLoader *)loader textureWithName:v6 prefix:self->_prefix];
    texs = [(_Head *)self->_head texs];
    [texs setObject:v7 atIndexedSubscript:i];
  }
}

- (void)loadHeadBlinkTextures
{
  v3 = [NSMutableArray arrayWithCapacity:3];
  [(_Head *)self->_head setBlinkTexs:v3];

  for (i = 0; i != 3; ++i)
  {
    loader = self->_loader;
    v6 = [NSString stringWithFormat:@"HeadBlink_%d", i];
    v7 = [(NTKCharacterResourceLoader *)loader textureWithName:v6 prefix:self->_prefix];
    blinkTexs = [(_Head *)self->_head blinkTexs];
    [blinkTexs setObject:v7 atIndexedSubscript:i];
  }
}

- (void)loadFootTextures
{
  v3 = [NSMutableArray arrayWithCapacity:12];
  [(_Foot *)self->_foot setTexs:v3];

  for (i = 0; i != 12; ++i)
  {
    loader = self->_loader;
    v6 = [NSString stringWithFormat:@"Foot_%02d", i];
    v7 = [(NTKCharacterResourceLoader *)loader textureWithName:v6 prefix:self->_prefix];
    texs = [(_Foot *)self->_foot texs];
    [texs setObject:v7 atIndexedSubscript:i];
  }
}

- (void)loadShiftTextures
{
  v3 = [NSMutableArray arrayWithCapacity:17];
  [(_Body *)self->_body setShiftTexs12:v3];

  v4 = [NSMutableArray arrayWithCapacity:10];
  [(_Body *)self->_body setShiftTexs14:v4];

  v5 = [NSMutableArray arrayWithCapacity:14];
  [(_Body *)self->_body setShiftTexs23:v5];

  v6 = [NSMutableArray arrayWithCapacity:9];
  [(_Body *)self->_body setShiftTexs13:v6];

  for (i = 0; i != 17; ++i)
  {
    loader = self->_loader;
    v9 = [NSString stringWithFormat:@"Shift-1-2_%02d", i];
    v10 = [(NTKCharacterResourceLoader *)loader textureWithName:v9 prefix:self->_prefix];
    shiftTexs12 = [(_Body *)self->_body shiftTexs12];
    [shiftTexs12 setObject:v10 atIndexedSubscript:i];
  }

  for (j = 0; j != 10; ++j)
  {
    v13 = self->_loader;
    v14 = [NSString stringWithFormat:@"Shift-1-4_%02d", j];
    v15 = [(NTKCharacterResourceLoader *)v13 textureWithName:v14 prefix:self->_prefix];
    shiftTexs14 = [(_Body *)self->_body shiftTexs14];
    [shiftTexs14 setObject:v15 atIndexedSubscript:j];
  }

  for (k = 0; k != 14; ++k)
  {
    v18 = self->_loader;
    v19 = [NSString stringWithFormat:@"Shift-2-3_%02d", k];
    v20 = [(NTKCharacterResourceLoader *)v18 textureWithName:v19 prefix:self->_prefix];
    shiftTexs23 = [(_Body *)self->_body shiftTexs23];
    [shiftTexs23 setObject:v20 atIndexedSubscript:k];
  }

  for (m = 0; m != 9; ++m)
  {
    v23 = self->_loader;
    v24 = [NSString stringWithFormat:@"Shift-1-3_%02d", m];
    v25 = [(NTKCharacterResourceLoader *)v23 textureWithName:v24 prefix:self->_prefix];
    shiftTexs13 = [(_Body *)self->_body shiftTexs13];
    [shiftTexs13 setObject:v25 atIndexedSubscript:m];
  }
}

- (void)setupTextures
{
  [(NTKCharacterRenderer *)self loadNumbersTexture];
  [(NTKCharacterRenderer *)self loadBackgroundTextures];
  [(NTKCharacterRenderer *)self loadBodyTextures];
  [(NTKCharacterRenderer *)self loadHeadTextures];
  [(NTKCharacterRenderer *)self loadFootTextures];
  [(NTKCharacterRenderer *)self loadHeadBlinkTextures];

  [(NTKCharacterRenderer *)self loadShiftTextures];
}

- (void)_updateTimeVariables
{
  v3 = CFAbsoluteTimeGetCurrent() + 0.05;
  overrideDateFraction = self->_overrideDateFraction;
  if (self->_animatingIntoOrb)
  {
    overrideDateFraction = overrideDateFraction * 1.29999995;
    if (overrideDateFraction > 1.0)
    {
      overrideDateFraction = 1.0;
    }
  }

  if (self->_animatingToNewDate)
  {
    v5 = overrideDateFraction;
    v6 = vmla_n_f32(*&self->_fromHourPercent, vsub_f32(*&self->_toHourPercent, *&self->_fromHourPercent), v5);
    __asm { FMOV            V2.2S, #-1.0 }

    v12 = vmla_f32(v6, _D2, vrndm_f32(v6));
  }

  else
  {
    v13 = [NTKDate faceDate:15.0];
    overrideDate = self->_overrideDate;
    if (overrideDate)
    {
      v15 = overrideDate;

      v13 = v15;
    }

    v21 = 0;
    v22 = 0;
    sub_92BC(&v22, &v21, v13, self->_cal);

    v12 = __PAIR64__(v21, v22);
  }

  *&self->_hourHandPos = v12;
  v16 = v3 - floor(v3);
  self->_curTimeMod1Sec = v16;
  v17 = (v3 / 15.0 - floor(v3 / 15.0)) * 15.0;
  self->_curTimeMod15Sec = v17;
  if (!self->_overrideDate && !self->_animatingToNewDate)
  {
    scrubOffset = self->_scrubOffset;
    if (scrubOffset != 0.0)
    {
      v19 = modff(*&v12 + scrubOffset, &v23);
      if (v19 < 0.0)
      {
        v19 = v19 + 1.0;
      }

      v20 = -(floor(v19 * 12.0) - v19 * 12.0);
      self->_hourHandPos = v19;
      self->_minHandPos = v20;
    }
  }
}

- (void)scrubToDate:(id)date
{
  dateCopy = date;
  v9 = dateCopy;
  if (dateCopy)
  {
    if (!self->_inTimeTravel)
    {
      [(NTKCharacterRenderer *)self _raiseFootForBodyAnimation];
      self->_inTimeTravel = 1;
      v5 = +[NTKDate faceDate];
      timeTravelEnterDate = self->_timeTravelEnterDate;
      self->_timeTravelEnterDate = v5;

      dateCopy = v9;
    }

    [dateCopy timeIntervalSinceDate:self->_timeTravelEnterDate];
    v8 = v7 / 43200.0;
    *&v8 = v8;
  }

  else
  {
    self->_inTimeTravel = 0;
    v8 = 0.0;
  }

  [(NTKCharacterRenderer *)self setScrubOffset:v8];
}

- (void)_updateStateAndPose
{
  v3 = (self->_minHandPos >= 0.5) | (2 * (self->_hourHandPos >= 0.5));
  bodyTexIdx = self->_stateSpecs[v3].bodyTexIdx;
  if (self->_applyInstantTimeWarp)
  {
    [(_Body *)self->_body setState:0];
    [(_Body *)self->_body setFrameDisplayTime60th:0];
    [(_Body *)self->_body setAnimationFrame:0];
    [(_Body *)self->_body setWaitingForFootRaise:0];
    self->_curState = v3;
    self->_curPose = bodyTexIdx;
    curState = v3;
    curPose = bodyTexIdx;
  }

  else
  {
    curState = self->_curState;
    curPose = self->_curPose;
  }

  self->_prevState = curState;
  self->_idealState = v3;
  self->_prevPose = curPose;
  self->_idealPose = bodyTexIdx;
}

- (void)bindPipelineState:(unint64_t)state withEncoder:(id)encoder
{
  if (self->_currentPipeline != state)
  {
    self->_currentPipeline = state;
    [encoder setRenderPipelineState:self->_pipelines[state]];
  }
}

- (void)_drawBackgroundWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  [(NTKCharacterRenderer *)self bindPipelineState:1 withEncoder:encoderCopy];
  [encoderCopy setVertexBufferOffset:-[_Geometry mtlBufOffset](self->_background atIndex:{"mtlBufOffset"), 0}];
  v5 = *self->_globalOffset;
  v21 = *self->_globalScale;
  v22 = v5;
  [encoderCopy setVertexBytes:&v21 length:16 atIndex:1];
  _D0.i32[0] = LODWORD(self->_glowBrightness);
  __asm { FCVT            H0, S0 }

  v11 = vdup_lane_s16(_D0, 0);
  v11.i16[3] = COERCE_UNSIGNED_INT(1.0);
  v20 = v11;
  [encoderCopy setFragmentBytes:&v20 length:8 atIndex:0];
  glowTex = [(_Background *)self->_background glowTex];
  [encoderCopy setFragmentTexture:glowTex atIndex:0];

  [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
  numbersScale = self->_numbersScale;
  numbersAlpha = self->_numbersAlpha;
  [(NTKCharacterRenderer *)self bindPipelineState:2 withEncoder:encoderCopy];
  v13 = *self->_globalOffset;
  v21 = vmul_n_f32(*self->_globalScale, numbersScale);
  v22 = v13;
  [encoderCopy setVertexBytes:&v21 length:16 atIndex:1];
  v14.i32[0] = LODWORD(self->_numbersBrightness);
  v14.f32[1] = numbersAlpha;
  *v14.f32 = vcvt_f16_f32(v14);
  v15 = vzip1_s16(*v14.f32, *v14.f32);
  v15.i16[2] = v14.i16[0];
  v20 = v15;
  [encoderCopy setFragmentBytes:&v20 length:8 atIndex:0];
  numbersTex = [(_Background *)self->_background numbersTex];

  if (!numbersTex)
  {
    [(NTKCharacterRenderer *)self loadNumbersTexture];
  }

  numbersTex2 = [(_Background *)self->_background numbersTex];
  [encoderCopy setFragmentTexture:numbersTex2 atIndex:0];

  [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
}

- (void)_idleBodyAfterAnimation
{
  [(_Body *)self->_body setState:0];
  [(_Body *)self->_body setFrameDisplayTime60th:0];
  [(_Body *)self->_body setAnimationFrame:0];
  if (!self->_animatingIntoOrb && !self->_inTimeTravel)
  {

    [(NTKCharacterRenderer *)self _lowerFootAfterBodyAnimation];
  }
}

- (void)_drawBodyWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  stateSpecs = self->_stateSpecs;
  xFlipBody = self->_stateSpecs[self->_curState].xFlipBody;
  if ([(_Body *)self->_body state])
  {
    goto LABEL_2;
  }

  idealState = self->_idealState;
  curState = self->_curState;
  if (curState == idealState)
  {
    idealPose = self->_idealPose;
    curPose = self->_curPose;
    if (curPose == idealPose)
    {
      goto LABEL_2;
    }
  }

  else
  {
    idealPose = self->_idealPose;
    curPose = self->_curPose;
  }

  self->_endState = idealState;
  self->_endPose = idealPose;
  v21 = (&animSpecs + 4 * ((8 * (stateSpecs[curState].xFlipBody < 0.0)) | (4 * curPose) | (2 * (stateSpecs[idealState].xFlipBody < 0.0)) | idealPose));
  v22 = *v21;
  if (!*v21)
  {
    self->_curState = idealState;
    self->_curPose = idealPose;
    goto LABEL_2;
  }

  v23 = v21[1];
  [(_Body *)self->_body setAnimationFrame:0];
  [(_Body *)self->_body setAnimationDirection:v23];
  [(_Body *)self->_body setFrameDisplayTime60th:0];
  if (v22 > 2)
  {
    if (v22 == 3)
    {
      body = self->_body;
      v25 = 3;
      goto LABEL_49;
    }

    if (v22 != 4)
    {
LABEL_44:
      self->_curState = self->_endState;
      self->_curPose = self->_endPose;
      goto LABEL_50;
    }

    [(_Body *)self->_body setState:4];
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    v54 = self->_body;
    v55 = 8;
LABEL_47:
    [(_Body *)v54 setAnimationFrame:v55];
    goto LABEL_50;
  }

  if (v22 == 1)
  {
    [(_Body *)self->_body setState:1];
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    v54 = self->_body;
    v55 = 16;
    goto LABEL_47;
  }

  if (v22 != 2)
  {
    goto LABEL_44;
  }

  body = self->_body;
  v25 = 2;
LABEL_49:
  [(_Body *)body setState:v25];
LABEL_50:
  if ([(_Body *)self->_body state])
  {
    [(NTKCharacterRenderer *)self _raiseFootForBodyAnimation];
  }

LABEL_2:
  if (![(_Body *)self->_body state])
  {
LABEL_23:
    *&v7 = stateSpecs[self->_curState].leftShoulderX;
    [(_Arms *)self->_arms setLeftShoulderX:v7];
    *&v29 = stateSpecs[self->_curState].rightShoulderX;
    [(_Arms *)self->_arms setRightShoulderX:v29];
    goto LABEL_24;
  }

  [(NTKCharacterRenderer *)self _updateWaitingForFootRaise];
  if ([(_Body *)self->_body waitingForFootRaise])
  {
    loader = self->_loader;
    texs = [(_Body *)self->_body texs];
    v10 = [texs objectAtIndexedSubscript:self->_curPose];
    v11 = [(NTKCharacterResourceLoader *)loader getMTLTexture:v10];

    [encoderCopy setFragmentTexture:v11 atIndex:0];
    goto LABEL_23;
  }

  endState = self->_endState;
  self->_curState = endState;
  self->_curPose = self->_endPose;
  xFlipBody = stateSpecs[endState].xFlipBody;
  v17 = self->_body;
  if (self->_animatingIntoOrb)
  {
    [(_Body *)v17 setFrameDisplayTime60th:0];
    v18 = self->_body;
    animationDirection = [(_Body *)v18 animationDirection];
    v20 = [(_Body *)v18 animationFrame]+ 2 * animationDirection;
  }

  else
  {
    if ([(_Body *)v17 frameDisplayTime60th]< 2)
    {
      goto LABEL_19;
    }

    [(_Body *)self->_body setFrameDisplayTime60th:0];
    v18 = self->_body;
    animationDirection2 = [(_Body *)v18 animationDirection];
    v20 = [(_Body *)v18 animationFrame]+ animationDirection2;
  }

  [(_Body *)v18 setAnimationFrame:v20];
LABEL_19:
  [(_Body *)self->_body setFrameDisplayTime60th:(self->_animationFrameInterval + [(_Body *)self->_body frameDisplayTime60th])];
  if ([(_Body *)self->_body animationFrame]< 0)
  {
LABEL_22:
    [(NTKCharacterRenderer *)self _idleBodyAfterAnimation];
    goto LABEL_23;
  }

  state = [(_Body *)self->_body state];
  v28 = self->_body;
  if (state == 1)
  {
    if ([(_Body *)v28 animationFrame]>= 17)
    {
      goto LABEL_22;
    }

    xFlipBody = xFlipBody * [(_Body *)self->_body];
    animationFrame = [(_Body *)self->_body animationFrame];
    if (xFlipBody >= 0.0)
    {
      *&v62 = shoulderX_12Anim[2 * animationFrame];
      [(_Arms *)self->_arms setLeftShoulderX:v62];
      *&v63 = shoulderX_12Anim[2 * [(_Body *)self->_body animationFrame]+ 1];
    }

    else
    {
      *&v62 = -shoulderX_12Anim[2 * animationFrame + 1];
      [(_Arms *)self->_arms setLeftShoulderX:v62];
      *&v63 = -shoulderX_12Anim[2 * [(_Body *)self->_body animationFrame]];
    }

    [(_Arms *)self->_arms setRightShoulderX:v63];
    v69 = self->_loader;
    shiftTexs12 = [(_Body *)self->_body shiftTexs12];
    goto LABEL_56;
  }

  state2 = [(_Body *)v28 state];
  v57 = self->_body;
  if (state2 == 2)
  {
    if ([(_Body *)v57 animationFrame]>= 10)
    {
      [(_Body *)self->_body setAnimationFrame:8];
      [(_Body *)self->_body setAnimationDirection:0xFFFFFFFFLL];
    }

    xFlipBody = xFlipBody * [(_Body *)self->_body];
    animationFrame2 = [(_Body *)self->_body animationFrame];
    if (xFlipBody >= 0.0)
    {
      *&v59 = shoulderX_14Anim[2 * animationFrame2];
      [(_Arms *)self->_arms setLeftShoulderX:v59];
      *&v60 = shoulderX_14Anim[2 * [(_Body *)self->_body animationFrame]+ 1];
    }

    else
    {
      *&v59 = -shoulderX_14Anim[2 * animationFrame2 + 1];
      [(_Arms *)self->_arms setLeftShoulderX:v59];
      *&v60 = -shoulderX_14Anim[2 * [(_Body *)self->_body animationFrame]];
    }

    [(_Arms *)self->_arms setRightShoulderX:v60];
    v69 = self->_loader;
    shiftTexs12 = [(_Body *)self->_body shiftTexs14];
LABEL_56:
    v71 = shiftTexs12;
    v72 = [shiftTexs12 objectAtIndexedSubscript:{-[_Body animationFrame](self->_body, "animationFrame")}];
    v73 = [(NTKCharacterResourceLoader *)v69 getMTLTexture:v72];

    [encoderCopy setFragmentTexture:v73 atIndex:0];
    goto LABEL_24;
  }

  state3 = [(_Body *)v57 state];
  v65 = self->_body;
  if (state3 != 3)
  {
    if ([(_Body *)v65 state]!= 4)
    {
      goto LABEL_23;
    }

    if ([(_Body *)self->_body animationFrame]>= 9)
    {
      goto LABEL_22;
    }

    animationFrame3 = [(_Body *)self->_body animationFrame];
    if (xFlipBody >= 0.0)
    {
      *&v75 = shoulderX_13Anim[2 * animationFrame3];
      [(_Arms *)self->_arms setLeftShoulderX:v75];
      *&v76 = shoulderX_13Anim[2 * [(_Body *)self->_body animationFrame]+ 1];
    }

    else
    {
      *&v75 = -shoulderX_13Anim[2 * animationFrame3 + 1];
      [(_Arms *)self->_arms setLeftShoulderX:v75];
      *&v76 = -shoulderX_13Anim[2 * [(_Body *)self->_body animationFrame]];
    }

    [(_Arms *)self->_arms setRightShoulderX:v76];
    v69 = self->_loader;
    shiftTexs12 = [(_Body *)self->_body shiftTexs13];
    goto LABEL_56;
  }

  if ([(_Body *)v65 animationFrame]>= 14)
  {
    [(_Body *)self->_body setAnimationFrame:4];
    [(_Body *)self->_body setAnimationDirection:0xFFFFFFFFLL];
  }

  xFlipBody = xFlipBody * [(_Body *)self->_body animationDirection];
  animationFrame4 = [(_Body *)self->_body animationFrame];
  if (xFlipBody >= 0.0)
  {
    *&v67 = shoulderX_23Anim[2 * animationFrame4];
    [(_Arms *)self->_arms setLeftShoulderX:v67];
    *&v68 = shoulderX_23Anim[2 * [(_Body *)self->_body animationFrame]+ 1];
  }

  else
  {
    *&v67 = -shoulderX_23Anim[2 * animationFrame4 + 1];
    [(_Arms *)self->_arms setLeftShoulderX:v67];
    *&v68 = -shoulderX_23Anim[2 * [(_Body *)self->_body animationFrame]];
  }

  [(_Arms *)self->_arms setRightShoulderX:v68];
  v77 = self->_loader;
  shiftTexs23 = [(_Body *)self->_body shiftTexs23];
  if ([(_Body *)self->_body animationFrame]== 1)
  {
    animationFrame5 = 0;
  }

  else
  {
    animationFrame5 = [(_Body *)self->_body animationFrame];
  }

  v80 = [shiftTexs23 objectAtIndexedSubscript:animationFrame5];
  v81 = [(NTKCharacterResourceLoader *)v77 getMTLTexture:v80];

  [encoderCopy setFragmentTexture:v81 atIndex:0];
LABEL_24:
  arms = self->_arms;
  [(_Arms *)arms leftShoulderAdjustment];
  v32 = v31;
  [(_Arms *)arms leftShoulderX];
  *&v34 = v32 + v33;
  [(_Arms *)arms setLeftShoulderX:v34];
  v35 = self->_arms;
  [(_Arms *)v35 rightShoulderAdjustment];
  v37 = v36;
  [(_Arms *)v35 rightShoulderX];
  *&v39 = v37 + v38;
  [(_Arms *)v35 setRightShoulderX:v39];
  if (![(_Body *)self->_body state])
  {
    v40 = self->_loader;
    texs2 = [(_Body *)self->_body texs];
    v42 = [texs2 objectAtIndexedSubscript:self->_curPose];
    v43 = [(NTKCharacterResourceLoader *)v40 getMTLTexture:v42];

    [encoderCopy setFragmentTexture:v43 atIndex:0];
  }

  [(NTKCharacterRenderer *)self bindPipelineState:3 withEncoder:encoderCopy];
  [encoderCopy setVertexBufferOffset:-[_Geometry mtlBufOffset](self->_body atIndex:{"mtlBufOffset"), 0}];
  [(NTKCharacterRenderer *)self _applyClothingColorWithEncoder:encoderCopy];
  v44 = *self->_globalOffset;
  v45 = *self->_globalScale;
  characterScale = self->_characterScale;
  v46 = matrix_identity_float4x4.columns[1];
  v85[0] = matrix_identity_float4x4.columns[0];
  v85[1] = v46;
  v47 = matrix_identity_float4x4.columns[3];
  v85[2] = matrix_identity_float4x4.columns[2];
  v85[3] = v47;
  [(_Body *)self->_body bone];
  v86 = vmul_n_f32(v48, characterScale);
  v87 = 0;
  v88 = v45;
  [(_Body *)self->_body width];
  v82 = (xFlipBody * characterScale) * v49;
  [(_Body *)self->_body height];
  *&v50 = v82;
  *(&v50 + 1) = characterScale * v51;
  v89 = v50;
  [(_Body *)self->_body offset];
  v83 = v52;
  [(_Body *)self->_body offset];
  v90 = vmla_f32(v44, __PAIR64__(v53, v83), vmul_n_f32(v45, characterScale));
  v91 = 0;
  [encoderCopy setVertexBytes:v85 length:112 atIndex:1];
  [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
}

- (void)_applyClothingColorWithEncoder:(id)encoder
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  clothingColor = self->_clothingColor;
  encoderCopy = encoder;
  [(UIColor *)clothingColor getHue:&v18 saturation:&v17 brightness:&v16 alpha:&v15];
  _D1 = v17;
  _D0 = v18;
  _D2 = v16;
  _D3 = 1.0 - self->_desaturation;
  __asm
  {
    FCVT            H1, D1
    FCVT            H0, D0
  }

  WORD1(_D0) = _D1;
  __asm { FCVT            H1, D2 }

  WORD2(_D0) = _D1;
  __asm { FCVT            H1, D3 }

  HIWORD(_D0) = _D1;
  v14 = _D0;
  [encoderCopy setFragmentBytes:&v14 length:8 atIndex:1];
}

- (void)_doneWaitingForFootRaise
{
  [(_Body *)self->_body setWaitingForFootRaise:0];
  [(_Foot *)self->_foot setState:4];
  [(_Foot *)self->_foot setAnimFrame:11];
  foot = self->_foot;

  [(_Foot *)foot setFrameDisplayTime60th:0];
}

- (void)_updateWaitingForFootRaise
{
  if ([(_Body *)self->_body waitingForFootRaise]&& [(NTKCharacterRenderer *)self _footIsRaisedEnoughToStartAnimation])
  {

    [(NTKCharacterRenderer *)self _doneWaitingForFootRaise];
  }
}

- (void)_raiseFootForBodyAnimation
{
  if ([(NTKCharacterRenderer *)self _footIsRaisedEnoughToStartAnimation])
  {

    [(NTKCharacterRenderer *)self _doneWaitingForFootRaise];
  }

  else
  {
    [(_Foot *)self->_foot setState:3];
    [(_Foot *)self->_foot setAnimFrame:([(_Foot *)self->_foot animFrame]+ 1)];
    [(_Foot *)self->_foot setFrameDisplayTime60th:0];
    body = self->_body;

    [(_Body *)body setWaitingForFootRaise:1];
  }
}

- (void)_lowerFootAfterBodyAnimation
{
  [(_Foot *)self->_foot setState:2];
  [(_Foot *)self->_foot setAnimFrame:10];
  foot = self->_foot;

  [(_Foot *)foot setFrameDisplayTime60th:0];
}

- (void)_drawTappingFootWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  if ([(_Foot *)self->_foot state]== 4 && [(_Body *)self->_body state])
  {
    goto LABEL_52;
  }

  if (![(_Foot *)self->_foot state])
  {
    curTimeMod1Sec = self->_curTimeMod1Sec;
    if (curTimeMod1Sec < 0.23333)
    {
      foot = self->_foot;
      v7 = 0;
LABEL_48:
      [(_Foot *)foot setAnimFrame:v7];
      goto LABEL_49;
    }

    if (curTimeMod1Sec < 0.26667)
    {
      foot = self->_foot;
LABEL_16:
      v7 = 1;
      goto LABEL_48;
    }

    if (curTimeMod1Sec >= 0.3)
    {
      if (curTimeMod1Sec < 0.33333)
      {
        goto LABEL_31;
      }

      if (curTimeMod1Sec < 0.36667)
      {
        goto LABEL_33;
      }

      if (curTimeMod1Sec < 0.4)
      {
        goto LABEL_35;
      }

      if (curTimeMod1Sec < 0.43333)
      {
        goto LABEL_37;
      }

      if (curTimeMod1Sec < 0.46667)
      {
        goto LABEL_39;
      }

      if (curTimeMod1Sec < 0.5)
      {
        goto LABEL_41;
      }

      if (curTimeMod1Sec < 0.53333)
      {
        goto LABEL_43;
      }

      if (curTimeMod1Sec < 0.56667)
      {
        goto LABEL_45;
      }

      if (curTimeMod1Sec < 0.66667)
      {
        foot = self->_foot;
        v7 = 11;
        goto LABEL_48;
      }

      if (curTimeMod1Sec < 0.7)
      {
LABEL_45:
        foot = self->_foot;
        v7 = 10;
        goto LABEL_48;
      }

      if (curTimeMod1Sec < 0.73333)
      {
LABEL_43:
        foot = self->_foot;
        v7 = 9;
        goto LABEL_48;
      }

      if (curTimeMod1Sec < 0.76667)
      {
LABEL_41:
        foot = self->_foot;
        v7 = 8;
        goto LABEL_48;
      }

      if (curTimeMod1Sec < 0.8)
      {
LABEL_39:
        foot = self->_foot;
        v7 = 7;
        goto LABEL_48;
      }

      if (curTimeMod1Sec < 0.83333)
      {
LABEL_37:
        foot = self->_foot;
        v7 = 6;
        goto LABEL_48;
      }

      if (curTimeMod1Sec < 0.86667)
      {
LABEL_35:
        foot = self->_foot;
        v7 = 5;
        goto LABEL_48;
      }

      if (curTimeMod1Sec < 0.9)
      {
LABEL_33:
        foot = self->_foot;
        v7 = 4;
        goto LABEL_48;
      }

      if (curTimeMod1Sec < 0.93333)
      {
LABEL_31:
        foot = self->_foot;
        v7 = 3;
        goto LABEL_48;
      }

      foot = self->_foot;
      if (curTimeMod1Sec >= 0.96667)
      {
        goto LABEL_16;
      }
    }

    else
    {
      foot = self->_foot;
    }

    v7 = 2;
    goto LABEL_48;
  }

  if ([(_Foot *)self->_foot state]== 1)
  {
    if (self->_curTimeMod1Sec < 0.23333)
    {
      [(_Foot *)self->_foot setFrameDisplayTime60th:0];
      [(_Foot *)self->_foot setAnimFrame:0];
      [(_Foot *)self->_foot setState:0];
    }

    goto LABEL_49;
  }

  if ([(_Foot *)self->_foot state]== 3)
  {
    if (self->_animatingIntoOrb || [(_Foot *)self->_foot frameDisplayTime60th]>= 2)
    {
      [(_Foot *)self->_foot setAnimFrame:([(_Foot *)self->_foot animFrame]+ 1)];
      [(_Foot *)self->_foot setFrameDisplayTime60th:0];
      if ([(_Foot *)self->_foot animFrame]>= 11)
      {
        [(NTKCharacterRenderer *)self _doneWaitingForFootRaise];
      }
    }

LABEL_29:
    [(_Foot *)self->_foot setFrameDisplayTime60th:(self->_animationFrameInterval + [(_Foot *)self->_foot frameDisplayTime60th])];
    goto LABEL_49;
  }

  if ([(_Foot *)self->_foot state]== 4)
  {
    if (self->_animatingIntoOrb || self->_inTimeTravel)
    {
      goto LABEL_49;
    }

    if ([(_Foot *)self->_foot frameDisplayTime60th]>= 4)
    {
      [(_Foot *)self->_foot setFrameDisplayTime60th:0];
      [(_Foot *)self->_foot setState:2];
      [(_Foot *)self->_foot setAnimFrame:10];
    }

    goto LABEL_29;
  }

  if ([(_Foot *)self->_foot state]== 2)
  {
    if ([(_Foot *)self->_foot frameDisplayTime60th]>= 2)
    {
      [(_Foot *)self->_foot setFrameDisplayTime60th:0];
      [(_Foot *)self->_foot setAnimFrame:([(_Foot *)self->_foot animFrame]- 1)];
      if (![(_Foot *)self->_foot animFrame])
      {
        [(_Foot *)self->_foot setState:1];
      }
    }

    goto LABEL_29;
  }

LABEL_49:
  if (self->_sayCheese)
  {
    [(_Foot *)self->_foot setAnimFrame:11];
    [(_Foot *)self->_foot setFrameDisplayTime60th:0];
    [(_Foot *)self->_foot setState:4];
  }

  [(NTKCharacterRenderer *)self bindPipelineState:3 withEncoder:encoderCopy];
  [encoderCopy setVertexBufferOffset:-[_Geometry mtlBufOffset](self->_foot atIndex:{"mtlBufOffset"), 0}];
  v22 = *self->_globalScale;
  v20 = COERCE_FLOAT(*self->_globalOffset);
  LODWORD(v8) = HIDWORD(*self->_globalOffset);
  characterScale = self->_characterScale;
  xFlipFoot = self->_stateSpecs[self->_curState].xFlipFoot;
  loader = self->_loader;
  texs = [(_Foot *)self->_foot texs];
  v12 = [texs objectAtIndexedSubscript:{-[_Foot animFrame](self->_foot, "animFrame")}];
  v13 = [(NTKCharacterResourceLoader *)loader getMTLTexture:v12];

  [encoderCopy setFragmentTexture:v13 atIndex:0];
  v14 = matrix_identity_float4x4.columns[1];
  v23[0] = matrix_identity_float4x4.columns[0];
  v23[1] = v14;
  v15 = matrix_identity_float4x4.columns[3];
  v23[2] = matrix_identity_float4x4.columns[2];
  v23[3] = v15;
  [(_Body *)self->_body bone];
  v24 = vmul_n_f32(v16, characterScale);
  v25 = 0;
  v16.f32[0] = characterScale * xFlipFoot;
  v16.f32[1] = characterScale;
  v26 = v22;
  v27 = vcvt_f32_f64(vmulq_f64(vmulq_f64(vcvtq_f64_f32(v16), xmmword_155E0), xmmword_155F0));
  [(_Body *)self->_body offset];
  *&v18 = v20 + ((characterScale * v22.f32[0]) * (v17 + ((xFlipFoot * self->_poseSpecs[self->_curPose].footOffsetX) * 0.97)));
  v19 = v8 + vmuls_lane_f32(characterScale, v22, 1) * -0.650735294 * 0.980000019;
  *(&v18 + 1) = v19;
  v28 = v18;
  v29 = 0;
  [encoderCopy setVertexBytes:v23 length:112 atIndex:1];
  [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];

LABEL_52:
}

- (void)_drawHeadWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  stateSpecs = self->_stateSpecs;
  xFlipFace = self->_stateSpecs[self->_curState].xFlipFace;
  if (xFlipFace >= 0.0)
  {
    v7 = 60.0 - (self->_minHandPos * 60.0);
  }

  else
  {
    v7 = self->_minHandPos * 60.0;
  }

  if (![(_Head *)self->_head inAnimation]&& xFlipFace != stateSpecs[self->_prevState].xFlipFace)
  {
    [(_Head *)self->_head setInAnimation:1];
  }

  if (self->_applyInstantTimeWarp)
  {
    [(_Head *)self->_head setInAnimation:0];
  }

  if (![(_Head *)self->_head inAnimation])
  {
LABEL_28:
    v9 = 0;
    goto LABEL_29;
  }

  [(_Head *)self->_head setInAnimation:(self->_animationFrameInterval + [(_Head *)self->_head inAnimation])];
  inAnimation = [(_Head *)self->_head inAnimation];
  if (inAnimation > 9)
  {
    if (inAnimation < 0xC)
    {
      v9 = 5;
      goto LABEL_29;
    }

    if (inAnimation < 0xE)
    {
      v9 = 4;
      goto LABEL_29;
    }

    if (inAnimation < 0x10)
    {
      v9 = 3;
      goto LABEL_29;
    }

    if (inAnimation < 0x12)
    {
      v9 = 2;
      goto LABEL_29;
    }

    if (inAnimation < 0x14)
    {
      goto LABEL_12;
    }

    [(_Head *)self->_head setInAnimation:0];
    goto LABEL_28;
  }

  xFlipFace = -xFlipFace;
  if (inAnimation < 4)
  {
LABEL_12:
    v9 = 1;
    goto LABEL_29;
  }

  v10 = 3;
  if (inAnimation >= 8)
  {
    v10 = 4;
  }

  if (inAnimation >= 6)
  {
    v9 = v10;
  }

  else
  {
    v9 = 2;
  }

LABEL_29:
  [(NTKCharacterRenderer *)self bindPipelineState:3 withEncoder:encoderCopy];
  [(NTKCharacterRenderer *)self _applyClothingColorWithEncoder:encoderCopy];
  [encoderCopy setVertexBufferOffset:-[_Geometry mtlBufOffset](self->_head atIndex:{"mtlBufOffset"), 0}];
  v11 = 0.0;
  if (v7 >= 5.0 && v7 < 20.0)
  {
    v11 = (v7 + -12.5) / 7.5 * 0.6 + 0.0;
    *&v11 = v11;
  }

  hourHandPos = self->_hourHandPos;
  if (hourHandPos <= 0.833333333 || (v14 = 0.0, self->_minHandPos > 0.75))
  {
    if (hourHandPos >= 0.166666667)
    {
      v14 = *&v11;
    }

    else if (self->_minHandPos >= 0.25)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = *&v11;
    }
  }

  if (self->_applyInstantTimeWarp)
  {
    *&v11 = self->_poseSpecs[self->_curPose].headOffsetX * stateSpecs[self->_curState].xFlipFace;
  }

  else
  {
    v15 = 0.05;
    if (self->_animatingIntoOrb)
    {
      v15 = 0.3;
    }

    v16 = self->_animationFrameInterval * v15;
    headOffsetX = self->_poseSpecs[self->_curPose].headOffsetX;
    v18 = stateSpecs[self->_curState].xFlipFace;
    [(_Head *)self->_head curHeadX];
    v20 = -(v19 - (headOffsetX * v18));
    [(_Head *)self->_head curHeadX];
    *&v11 = *&v11 + (v16 * v20);
  }

  [(_Head *)self->_head setCurHeadX:v11];
  if (!self->_applyInstantTimeWarp)
  {
    v22 = self->_animationFrameInterval * 0.07;
    [(_Head *)self->_head curHeadTilt];
    v24 = (v14 - v23);
    [(_Head *)self->_head curHeadTilt];
    v21 = v25 + v22 * v24;
    v14 = v21;
  }

  *&v21 = v14;
  [(_Head *)self->_head setCurHeadTilt:v21];
  [(_Head *)self->_head curHeadTilt];
  v26 = 0.0;
  if (v27 > 0.0)
  {
    [(_Head *)self->_head curHeadTilt];
    v26 = v28 * -0.00320512821 * 30.0;
  }

  v60 = v26;
  [(_Head *)self->_head curHeadTilt];
  v30 = v29;
  [(_Head *)self->_head curHeadTilt];
  v32 = __sincosf_stret(xFlipFace * v31);
  *&v33 = -v32.__sinval;
  HIDWORD(v33) = LODWORD(v32.__cosval);
  *&self[1].super.isa = __PAIR64__(LODWORD(v32.__sinval), LODWORD(v32.__cosval));
  *&self[1]._cal = v33;
  *&self[1]._overrideDateFraction = xmmword_15600;
  *&self[1]._toMinutePercent = xmmword_15610;
  v34 = *self->_globalOffset;
  v35 = *self->_globalScale;
  characterScale = self->_characterScale;
  if (self->_sayCheese || [(_Head *)self->_head inAnimation]|| self->_curTimeMod15Sec > self->_blinkDuration)
  {
    loader = self->_loader;
    texs = [(_Head *)self->_head texs];
    v38 = texs;
    v39 = v9;
  }

  else
  {
    v54 = [(NTKCharacterRenderer *)self getBlinkFrameFor15sTime:?];
    loader = self->_loader;
    texs = [(_Head *)self->_head blinkTexs];
    v38 = texs;
    v39 = v54;
  }

  v40 = [texs objectAtIndexedSubscript:v39];
  v41 = [(NTKCharacterResourceLoader *)loader getMTLTexture:v40];

  [encoderCopy setFragmentTexture:v41 atIndex:0];
  v42 = (xFlipFace * v30) * -0.3;
  v43 = *&self[1]._cal;
  v62[0] = *&self[1].super.isa;
  v62[1] = v43;
  v44 = *&self[1]._toMinutePercent;
  v62[2] = *&self[1]._overrideDateFraction;
  v62[3] = v44;
  [(_Head *)self->_head bone];
  v57 = v45;
  [(_Head *)self->_head bone];
  v63 = vmul_n_f32(__PAIR64__(v46, v57), characterScale);
  v64 = 0;
  v65 = *self->_globalScale;
  [(_Head *)self->_head width];
  v58 = (xFlipFace * characterScale) * v47;
  [(_Head *)self->_head height];
  *&v48 = v58;
  *(&v48 + 1) = characterScale * v49;
  v66 = v48;
  [(_Body *)self->_body offset];
  *&v59 = v50 + v42;
  [(_Head *)self->_head curHeadX];
  v56 = v51;
  v55 = *self->_neckBone;
  [(_Head *)self->_head offset];
  v52.i32[0] = v55;
  v52.i32[1] = *&self->_neckBone[4];
  v53.i32[0] = v56;
  v67 = vmla_f32(v34, vadd_f32(__PAIR64__(LODWORD(v60), v59), vmla_f32(v53, vdup_n_s32(0x3D4CCCCDu), v52)), vmul_n_f32(v35, characterScale));
  v68 = 0;
  [encoderCopy setVertexBytes:v62 length:112 atIndex:1];
  [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
}

- (float)_getElbowScaleForPosition:(float)position
{
  v3 = (position * -4.0) + 1.25;
  if (position >= 0.5)
  {
    v3 = (position * 4.0) + -2.7;
  }

  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  if (v3 < 0.0)
  {
    v4 = position < 0.5;
    v5 = 0.0;
    if (v4)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v3;
    }

    if (v4)
    {
      v5 = v3;
    }

    if (self->_stateSpecs[self->_curState].hourArmOnLeftShoulder)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  return v3;
}

- (void)_drawHourHandWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  characterScale = self->_characterScale;
  hourHandPos = self->_hourHandPos;
  v6 = __sincosf_stret(hourHandPos * -6.2832);
  v7 = 0;
  *&v8 = -v6.__sinval;
  HIDWORD(v8) = LODWORD(v6.__cosval);
  v66[0] = __PAIR64__(LODWORD(v6.__sinval), LODWORD(v6.__cosval));
  v66[1] = v8;
  v66[2] = xmmword_15600;
  v66[3] = xmmword_15610;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  do
  {
    *(&v56 + v7 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_15640, COERCE_FLOAT(v66[v7])), xmmword_15650, *&v66[v7], 1), xmmword_15600, v66[v7], 2), xmmword_15610, v66[v7], 3);
    ++v7;
  }

  while (v7 != 4);
  v9 = characterScale * 43.1176471;
  v10.i64[0] = vaddq_f32(v59, vaddq_f32(v58, vmlaq_f32(vmulq_n_f32(v57, v9), 0, v56))).u64[0];
  v10.i64[1] = v59.i64[1];
  v52 = v57;
  v53 = v56;
  v11 = vdupq_n_s32(0x427C7878u);
  v50 = v10;
  v51 = v58;
  *&v49 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v56, 0), v11, v57), 0, v58), 0, v10).u64[0];
  v11.f32[0] = hourHandPos;
  [(NTKCharacterRenderer *)self _getElbowScaleForPosition:*v11.i64];
  v13 = v12;
  if (self->_animatingIntoOrb)
  {
    v14 = 0.22;
  }

  else
  {
    v14 = 0.08;
  }

  stateSpecs = self->_stateSpecs;
  arms = self->_arms;
  if (self->_stateSpecs[self->_curState].hourArmOnLeftShoulder)
  {
    [(_Arms *)arms leftShoulderX];
    v18 = *&v17;
    if (self->_applyInstantTimeWarp)
    {
      *&v17 = v13 * stateSpecs[self->_curState].hourElbowBend;
    }

    else
    {
      v20 = v14 * self->_animationFrameInterval;
      hourElbowBend = stateSpecs[self->_curState].hourElbowBend;
      [(_Arms *)self->_arms curLeftBend];
      v23 = -(v22 - (hourElbowBend * v13));
      [(_Arms *)self->_arms curLeftBend];
      *&v17 = *&v17 + (v20 * v23);
    }

    [(_Arms *)self->_arms setCurLeftBend:v17];
    [(_Arms *)self->_arms curLeftBend];
  }

  else
  {
    [(_Arms *)arms rightShoulderX];
    v18 = *&v19;
    if (self->_applyInstantTimeWarp)
    {
      *&v19 = v13 * stateSpecs[self->_curState].hourElbowBend;
    }

    else
    {
      v26 = v14 * self->_animationFrameInterval;
      v27 = stateSpecs[self->_curState].hourElbowBend;
      [(_Arms *)self->_arms curRightBend];
      v29 = -(v28 - (v27 * v13));
      [(_Arms *)self->_arms curRightBend];
      *&v19 = *&v19 + (v26 * v29);
    }

    [(_Arms *)self->_arms setCurRightBend:v19];
    [(_Arms *)self->_arms curRightBend];
  }

  LODWORD(v25) = v24;
  v30 = *self->_neckBone;
  *&v31 = v18 + v30.f32[0];
  HIDWORD(v31) = vmuls_lane_f32(0.75, v30, 1);
  [(NTKCharacterRenderer *)self _drawArmFromShoulder:encoderCopy toWrist:v31 withBend:v49 withEncoder:v25];
  [(NTKCharacterRenderer *)self bindPipelineState:3 withEncoder:encoderCopy];
  [encoderCopy setVertexBufferOffset:-[_Arms mtlBufHandOffset](self->_arms atIndex:{"mtlBufHandOffset"), 0}];
  if (self->_pinHandsBrightnessToMax)
  {
    v56.i64[0] = 0x3C003C003C003C00;
    [encoderCopy setFragmentBytes:&v56 length:8 atIndex:0];
  }

  loader = self->_loader;
  texHandHour = [(_Arms *)self->_arms texHandHour];
  v34 = [(NTKCharacterResourceLoader *)loader getMTLTexture:texHandHour];

  [encoderCopy setFragmentTexture:v34 atIndex:0];
  v56 = v53;
  v57 = v52;
  v58 = v51;
  v59 = v50;
  v54 = COERCE_FLOAT(*self->_neckBone);
  v35 = COERCE_FLOAT(HIDWORD(*self->_neckBone)) * 34.0;
  v36 = self->_hourHandPos;
  v37 = v36 * -2.0 * 3.14159265;
  v38 = sinf(v37);
  v39 = (v36 * -2.0) * 3.14159265;
  *&v40 = v54 * 68.0 * cosf(v39) + v35 * v38;
  v60 = v40;
  v61 = 0;
  *&v41 = characterScale * stateSpecs[self->_idealState].xFlipHourHand;
  *(&v41 + 1) = characterScale;
  v42 = *self->_globalOffset;
  v62 = *self->_globalScale;
  v63 = v41;
  v64 = v42;
  v65 = 0;
  [encoderCopy setVertexBytes:&v56 length:112 atIndex:1];
  [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
  if (self->_pinHandsBrightnessToMax)
  {
    _D0.i32[0] = LODWORD(self->_characterBrightness);
    __asm { FCVT            H0, S0 }

    v48 = vdup_lane_s16(_D0, 0);
    v48.i16[3] = COERCE_UNSIGNED_INT(1.0);
    *&v66[0] = v48;
    [encoderCopy setFragmentBytes:v66 length:8 atIndex:0];
  }
}

- (void)_drawMinuteHandWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  characterScale = self->_characterScale;
  minHandPos = self->_minHandPos;
  v6 = minHandPos * -6.28318531;
  v7 = __sincosf_stret(v6);
  v8 = 0;
  *&v9 = -v7.__sinval;
  HIDWORD(v9) = LODWORD(v7.__cosval);
  v65[0] = __PAIR64__(LODWORD(v7.__sinval), LODWORD(v7.__cosval));
  v65[1] = v9;
  v65[2] = xmmword_15600;
  v65[3] = xmmword_15610;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  do
  {
    *(&v55 + v8 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_15640, COERCE_FLOAT(v65[v8])), xmmword_15650, *&v65[v8], 1), xmmword_15600, v65[v8], 2), xmmword_15610, v65[v8], 3);
    ++v8;
  }

  while (v8 != 4);
  v10 = characterScale * 63.1176471;
  v11.i64[0] = vaddq_f32(v58, vaddq_f32(v57, vmlaq_f32(vmulq_n_f32(v56, v10), 0, v55))).u64[0];
  v11.i64[1] = v58.i64[1];
  v51 = v56;
  v52 = v55;
  v49 = v11;
  v50 = v57;
  v12 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v55, 0), vdupq_n_s32(0x422C7878u), v56), 0, v57), 0, v11).u64[0];
  v13 = COERCE_DOUBLE(vadd_f32(v12, v12));
  v12.f32[0] = minHandPos;
  [(NTKCharacterRenderer *)self _getElbowScaleForPosition:*&v12];
  v15 = v14;
  if (self->_animatingIntoOrb)
  {
    v16 = 0.22;
  }

  else
  {
    v16 = 0.08;
  }

  stateSpecs = self->_stateSpecs;
  arms = self->_arms;
  if (self->_stateSpecs[self->_curState].hourArmOnLeftShoulder)
  {
    [(_Arms *)arms rightShoulderX];
    v20 = *&v19;
    if (self->_applyInstantTimeWarp)
    {
      *&v19 = v15 * stateSpecs[self->_curState].minuteElbowBend;
    }

    else
    {
      v22 = v16 * self->_animationFrameInterval;
      minuteElbowBend = stateSpecs[self->_curState].minuteElbowBend;
      [(_Arms *)self->_arms curRightBend];
      v25 = -(v24 - (minuteElbowBend * v15));
      [(_Arms *)self->_arms curRightBend];
      *&v19 = *&v19 + (v22 * v25);
    }

    [(_Arms *)self->_arms setCurRightBend:v19];
    [(_Arms *)self->_arms curRightBend];
  }

  else
  {
    [(_Arms *)arms leftShoulderX];
    v20 = *&v21;
    if (self->_applyInstantTimeWarp)
    {
      *&v21 = v15 * stateSpecs[self->_curState].minuteElbowBend;
    }

    else
    {
      v28 = v16 * self->_animationFrameInterval;
      v29 = stateSpecs[self->_curState].minuteElbowBend;
      [(_Arms *)self->_arms curLeftBend];
      v31 = -(v30 - (v29 * v15));
      [(_Arms *)self->_arms curLeftBend];
      *&v21 = *&v21 + (v28 * v31);
    }

    [(_Arms *)self->_arms setCurLeftBend:v21];
    [(_Arms *)self->_arms curLeftBend];
  }

  LODWORD(v27) = v26;
  v32 = *self->_neckBone;
  *&v33 = v20 + v32.f32[0];
  HIDWORD(v33) = vmuls_lane_f32(0.75, v32, 1);
  [(NTKCharacterRenderer *)self _drawArmFromShoulder:encoderCopy toWrist:v33 withBend:v13 withEncoder:v27];
  [(NTKCharacterRenderer *)self bindPipelineState:3 withEncoder:encoderCopy];
  [encoderCopy setVertexBufferOffset:-[_Arms mtlBufHandOffset](self->_arms atIndex:{"mtlBufHandOffset"), 0}];
  if (self->_pinHandsBrightnessToMax)
  {
    v55.i64[0] = 0x3C003C003C003C00;
    [encoderCopy setFragmentBytes:&v55 length:8 atIndex:0];
  }

  loader = self->_loader;
  texHandMnut = [(_Arms *)self->_arms texHandMnut];
  v36 = [texHandMnut objectAtIndexedSubscript:stateSpecs[self->_idealState].minuteTexIdx];
  v37 = [(NTKCharacterResourceLoader *)loader getMTLTexture:v36];

  [encoderCopy setFragmentTexture:v37 atIndex:0];
  v55 = v52;
  v56 = v51;
  v57 = v50;
  v58 = v49;
  v53 = COERCE_FLOAT(*self->_neckBone);
  v38 = COERCE_FLOAT(HIDWORD(*self->_neckBone)) * 34.0;
  v39 = __sincos_stret(self->_minHandPos * -2.0 * 3.14159265);
  *&v40 = v53 * 68.0 * v39.__cosval + v38 * v39.__sinval;
  v59 = v40;
  v60 = 0;
  *&v41 = characterScale * stateSpecs[self->_idealState].xFlipMinuteHand;
  *(&v41 + 1) = characterScale;
  v42 = *self->_globalOffset;
  v61 = *self->_globalScale;
  v62 = v41;
  v63 = v42;
  v64 = 0;
  [encoderCopy setVertexBytes:&v55 length:112 atIndex:1];
  [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
  if (self->_pinHandsBrightnessToMax)
  {
    _D0.i32[0] = LODWORD(self->_characterBrightness);
    __asm { FCVT            H0, S0 }

    v48 = vdup_lane_s16(_D0, 0);
    v48.i16[3] = COERCE_UNSIGNED_INT(1.0);
    *&v65[0] = v48;
    [encoderCopy setFragmentBytes:v65 length:8 atIndex:0];
  }
}

- (void)renderWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  [(NTKCharacterRenderer *)self activate];
  self->_currentPipeline = 5;
  [encoderCopy setVertexBuffer:self->_geometryMtlBuffer offset:0 atIndex:0];
  if (self->_overrideDate || self->_animatingIntoOrb && self->_overrideDateFraction > 0.95)
  {
    self->_sayCheese = 1;
    self->_applyInstantTimeWarp = 1;
    [(NTKCharacterRenderer *)self _resetTimeVariable];
  }

  else
  {
    [(NTKCharacterRenderer *)self _updateTimeVariables];
  }

  [(NTKCharacterRenderer *)self _updateStateAndPose];
  curTimeMod1Sec = self->_curTimeMod1Sec;
  if (self->_animatingToNewDate)
  {
    overrideDateFraction = self->_overrideDateFraction;
    if (self->_animatingIntoOrb)
    {
      overrideDateFraction = 1.0 - overrideDateFraction;
    }

    self->_dampenBones = overrideDateFraction;
    if (overrideDateFraction < 0.0)
    {
      self->_dampenBones = 0.0;
      overrideDateFraction = 0.0;
    }
  }

  else
  {
    self->_dampenBones = 1.0;
    overrideDateFraction = 1.0;
  }

  v11 = overrideDateFraction;
  v6.f32[0] = curTimeMod1Sec + 0.25;
  v6.f32[1] = curTimeMod1Sec;
  v7 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(v6), xmmword_15660));
  v9 = v7.f32[0];
  v10 = cosf(v7.f32[1]);
  v8.f32[0] = cosf(v9);
  v8.f32[1] = v10;
  *self->_neckBone = vmul_n_f32(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(v8), xmmword_15670)), v11);
  [(_Body *)self->_body setBone:?];
  [(_Head *)self->_head setBone:COERCE_DOUBLE(vmul_f32(*self->_neckBone, vdup_n_s32(0x3F59999Au)))];
  [(NTKCharacterRenderer *)self _drawBackgroundWithEncoder:encoderCopy];
  [(NTKCharacterRenderer *)self _drawCharacterWithEncoder:encoderCopy];
  self->_applyInstantTimeWarp = 0;
  self->_sayCheese = 0;
}

- (void)_drawCharacterWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  _D0.i32[0] = LODWORD(self->_characterBrightness);
  __asm { FCVT            H0, S0 }

  v9 = vdup_lane_s16(_D0, 0);
  v9.i16[3] = COERCE_UNSIGNED_INT(1.0);
  v12 = v9;
  [encoderCopy setFragmentBytes:&v12 length:8 atIndex:0];
  [(NTKCharacterRenderer *)self _drawBodyWithEncoder:encoderCopy];
  [(NTKCharacterRenderer *)self _drawTappingFootWithEncoder:encoderCopy];
  [(NTKCharacterRenderer *)self _drawHourHandWithEncoder:encoderCopy];
  minHandPos = self->_minHandPos;
  if (minHandPos > 0.25 && minHandPos < 0.75)
  {
    [(NTKCharacterRenderer *)self _drawMinuteHandWithEncoder:encoderCopy];
    [(NTKCharacterRenderer *)self _drawHeadWithEncoder:encoderCopy];
  }

  else
  {
    [(NTKCharacterRenderer *)self _drawHeadWithEncoder:encoderCopy];
    [(NTKCharacterRenderer *)self _drawMinuteHandWithEncoder:encoderCopy];
  }
}

@end