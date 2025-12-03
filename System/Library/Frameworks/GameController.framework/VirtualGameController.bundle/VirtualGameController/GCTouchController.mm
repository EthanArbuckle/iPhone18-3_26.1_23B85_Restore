@interface GCTouchController
- (GCTouchController)initWithConfiguration:(id)configuration;
- (void)setPosition:(CGPoint)position forDirectionPadElement:(id)element;
- (void)setValue:(double)value forButtonElement:(id)element;
@end

@implementation GCTouchController

- (GCTouchController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = objc_opt_new();
  [v5 setProductCategory:@"Touch Controller"];
  isHidden = [configurationCopy isHidden];
  v7 = GCCurrentProcessLinkedOnAfter();
  v8 = @"Apple Touch Controller";
  if (isHidden)
  {
    v8 = @"Touch Controller";
  }

  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"Apple";
  }

  [v5 setVendorName:v9];
  if (GCCurrentProcessLinkedOnAfter())
  {
    nSSet = [NSSet setWithObjects:GCInputButtonA, GCInputButtonB, GCInputButtonX, GCInputButtonY, GCInputLeftShoulder, GCInputRightShoulder, GCInputLeftBumper, GCInputRightBumper, GCInputLeftTrigger, GCInputRightTrigger, GCInputLeftThumbstickButton, GCInputRightThumbstickButton, GCInputBackLeftPrimaryButton, GCInputBackLeftSecondaryButton, GCInputBackRightPrimaryButton, GCInputBackRightSecondaryButton, GCInputXboxPaddleOne, GCInputXboxPaddleTwo, GCInputXboxPaddleThree, GCInputXboxPaddleFour, GCInputButtonMenu, GCInputButtonOptions, GCInputButtonShare, GCInputDirectionPad, GCInputLeftThumbstick, GCInputRightThumbstick, 0, GCInputButtonX, GCInputButtonB, GCInputButtonA, NSSet];
    elements = [configurationCopy elements];
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = __43__GCTouchController_initWithConfiguration___block_invoke;
    v67[3] = &unk_10518;
    v12 = nSSet;
    v68 = v12;
    v13 = [elements objectsPassingTest:v67];

    if ([v13 count])
    {
      v43 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"*** The configuration contains %zu elements that are not supported on a touch controller.", [v13 count]);
      v70 = @"UnsupportedElements";
      v71 = v13;
      v44 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v45 = [NSException exceptionWithName:NSInvalidArgumentException reason:v43 userInfo:v44];
      v46 = v45;

      objc_exception_throw(v45);
    }
  }

  memset(v55, 0, sizeof(v55));
  memset(v54, 0, sizeof(v54));
  v52 = 0u;
  memset(v53, 0, sizeof(v53));
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  memset(v48, 0, sizeof(v48));
  GCExtendedGamepadInitInfoMake();
  v14 = 0;
  v15 = xmmword_A4A0;
  v16 = xmmword_A4B0;
  v17 = xmmword_A4C0;
  v18 = xmmword_A4D0;
  v19 = vdupq_n_s64(0x16uLL);
  v20 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v19, v18)), *v15.i8), *v15.i8).u8[0])
    {
      BYTE8(v48[v14]) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v18)), *&v15), *&v15).i8[1])
    {
      LOBYTE(v48[v14 + 5]) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v17))), *&v15).i8[2])
    {
      BYTE8(v53[v14]) = 0;
      LOBYTE(v54[v14]) = 0;
    }

    if (vuzp1_s8(*&v15, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v16)), *&v15)).i32[1])
    {
      BYTE8(v54[v14 + 4]) = 0;
    }

    if (vuzp1_s8(*&v15, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v16)), *&v15)).i8[5])
    {
      LOBYTE(v55[v14]) = 0;
    }

    if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x16uLL), *&v15)))).i8[6])
    {
      BYTE8(v55[v14 + 4]) = 0;
      v56[v14 * 16] = 0;
    }

    v16 = vaddq_s64(v16, v20);
    v17 = vaddq_s64(v17, v20);
    v18 = vaddq_s64(v18, v20);
    v15 = vaddq_s64(v15, v20);
    v14 += 36;
  }

  while (v14 != 108);
  LOBYTE(v49) = 1;
  v21 = isHidden ^ 1;
  BYTE1(v49) = isHidden ^ 1;
  BYTE8(v53[0]) = 1;
  BYTE9(v53[0]) = isHidden ^ 1;
  LOBYTE(v54[0]) = 1;
  BYTE1(v54[0]) = isHidden ^ 1;
  BYTE8(v54[4]) = 1;
  BYTE9(v54[4]) = isHidden ^ 1;
  v56[144] = 1;
  v56[145] = isHidden ^ 1;
  v56[216] = 1;
  v56[217] = isHidden ^ 1;
  v56[0] = 1;
  v56[1] = isHidden ^ 1;
  v56[72] = 1;
  v56[73] = isHidden ^ 1;
  elements2 = [configurationCopy elements];
  v56[648] = [elements2 containsObject:GCInputLeftBumper];

  v56[649] = v21;
  elements3 = [configurationCopy elements];
  v56[720] = [elements3 containsObject:GCInputRightBumper];

  v56[721] = v21;
  v56[504] = 1;
  v56[505] = v21;
  elements4 = [configurationCopy elements];
  v56[576] = [elements4 containsObject:GCInputButtonOptions];

  v56[577] = v21;
  elements5 = [configurationCopy elements];
  v65 = [elements5 containsObject:GCInputButtonShare];

  v66 = v65;
  BYTE8(v48[0]) = 1;
  BYTE9(v48[0]) = v21;
  LOWORD(v55[0]) = 1;
  WORD4(v55[4]) = 1;
  elements6 = [configurationCopy elements];
  if ([elements6 containsObject:GCInputBackLeftPrimaryButton])
  {
    v57 = 1;
  }

  else
  {
    elements7 = [configurationCopy elements];
    v57 = [elements7 containsObject:GCInputXboxPaddleThree];
  }

  v58 = v21;
  elements8 = [configurationCopy elements];
  if ([elements8 containsObject:GCInputBackLeftSecondaryButton])
  {
    v59 = 1;
  }

  else
  {
    elements9 = [configurationCopy elements];
    v59 = [elements9 containsObject:GCInputXboxPaddleFour];
  }

  v60 = v21;
  elements10 = [configurationCopy elements];
  if ([elements10 containsObject:GCInputBackRightPrimaryButton])
  {
    v61 = 1;
  }

  else
  {
    elements11 = [configurationCopy elements];
    v61 = [elements11 containsObject:GCInputXboxPaddleOne];
  }

  v62 = v21;
  elements12 = [configurationCopy elements];
  if ([elements12 containsObject:GCInputBackRightSecondaryButton])
  {
    v63 = 1;
  }

  else
  {
    elements13 = [configurationCopy elements];
    v63 = [elements13 containsObject:GCInputXboxPaddleTwo];
  }

  v64 = v21;
  v34 = [[GCExtendedGamepad alloc] initWithController:0 initInfo:v48];
  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(v48 + i);
  }

  v69[0] = v5;
  v69[1] = v34;
  v36 = [NSArray arrayWithObjects:v69 count:2];
  v47.receiver = self;
  v47.super_class = GCTouchController;
  v37 = [(GCTouchController *)&v47 initWithComponents:v36];

  extendedGamepad = v37->_extendedGamepad;
  v37->_extendedGamepad = v34;
  v39 = v34;

  v40 = objc_opt_new();
  event = v37->_event;
  v37->_event = v40;

  return v37;
}

- (void)setValue:(double)value forButtonElement:(id)element
{
  elementCopy = element;
  if ([elementCopy isEqualToString:GCInputButtonA])
  {
    *&v6 = value;
    [(_GCGamepadEventImpl *)self->_event setButtonAValue:v6];
  }

  else if ([elementCopy isEqualToString:GCInputButtonB])
  {
    *&v7 = value;
    [(_GCGamepadEventImpl *)self->_event setButtonBValue:v7];
  }

  else if ([elementCopy isEqualToString:GCInputButtonX])
  {
    *&v8 = value;
    [(_GCGamepadEventImpl *)self->_event setButtonXValue:v8];
  }

  else if ([elementCopy isEqualToString:GCInputButtonY])
  {
    *&v9 = value;
    [(_GCGamepadEventImpl *)self->_event setButtonYValue:v9];
  }

  else if ([elementCopy isEqualToString:GCInputLeftShoulder])
  {
    *&v10 = value;
    [(_GCGamepadEventImpl *)self->_event setButtonLeftShoulder:v10];
  }

  else if ([elementCopy isEqualToString:GCInputRightShoulder])
  {
    *&v11 = value;
    [(_GCGamepadEventImpl *)self->_event setButtonRightShoulder:v11];
  }

  else if ([elementCopy isEqualToString:GCInputLeftBumper])
  {
    *&v12 = value;
    [(_GCGamepadEventImpl *)self->_event setButtonLeftBumper:v12];
  }

  else if ([elementCopy isEqualToString:GCInputRightBumper])
  {
    *&v13 = value;
    [(_GCGamepadEventImpl *)self->_event setButtonRightBumper:v13];
  }

  else if ([elementCopy isEqualToString:GCInputLeftTrigger])
  {
    *&v14 = value;
    [(_GCGamepadEventImpl *)self->_event setLeftTrigger:v14];
  }

  else if ([elementCopy isEqualToString:GCInputRightTrigger])
  {
    *&v15 = value;
    [(_GCGamepadEventImpl *)self->_event setRightTrigger:v15];
  }

  else if ([elementCopy isEqualToString:GCInputLeftThumbstickButton])
  {
    *&v16 = value;
    [(_GCGamepadEventImpl *)self->_event setLeftThumbstickButton:v16];
  }

  else if ([elementCopy isEqualToString:GCInputRightThumbstickButton])
  {
    *&v17 = value;
    [(_GCGamepadEventImpl *)self->_event setRightThumbstickButton:v17];
  }

  else if ([elementCopy isEqualToString:GCInputButtonMenu])
  {
    *&v18 = value;
    [(_GCGamepadEventImpl *)self->_event setButtonMenu:v18];
  }

  else if ([elementCopy isEqualToString:GCInputButtonOptions])
  {
    *&v19 = value;
    [(_GCGamepadEventImpl *)self->_event setButtonOptions:v19];
  }

  else if ([elementCopy isEqualToString:GCInputButtonShare])
  {
    *&v20 = value;
    [(_GCGamepadEventImpl *)self->_event setButtonSpecial15:v20];
  }

  else if (([elementCopy isEqualToString:GCInputBackLeftPrimaryButton] & 1) != 0 || objc_msgSend(elementCopy, "isEqualToString:", GCInputXboxPaddleThree))
  {
    *&v21 = value;
    [(_GCGamepadEventImpl *)self->_event setButtonBackLeftPrimary:v21];
  }

  else if (([elementCopy isEqualToString:GCInputBackLeftSecondaryButton] & 1) != 0 || objc_msgSend(elementCopy, "isEqualToString:", GCInputXboxPaddleFour))
  {
    *&v22 = value;
    [(_GCGamepadEventImpl *)self->_event setButtonBackLeftSecondary:v22];
  }

  else if (([elementCopy isEqualToString:GCInputBackRightPrimaryButton] & 1) != 0 || objc_msgSend(elementCopy, "isEqualToString:", GCInputXboxPaddleOne))
  {
    *&v23 = value;
    [(_GCGamepadEventImpl *)self->_event setButtonBackRightPrimary:v23];
  }

  else
  {
    if (([elementCopy isEqualToString:GCInputBackRightSecondaryButton] & 1) == 0 && !objc_msgSend(elementCopy, "isEqualToString:", GCInputXboxPaddleTwo))
    {
      [NSString stringWithFormat:@"*** Unknown button element '%@'.", elementCopy];
      v25 = [NSException exceptionWithName:NSInvalidArgumentException reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v25);
    }

    *&v24 = value;
    [(_GCGamepadEventImpl *)self->_event setButtonBackRightSecondary:v24];
  }

  [(GCExtendedGamepad *)self->_extendedGamepad handleGamepadEvent:self->_event];
}

- (void)setPosition:(CGPoint)position forDirectionPadElement:(id)element
{
  x = position.x;
  y = position.y;
  elementCopy = element;
  if ([elementCopy isEqualToString:GCInputLeftThumbstick])
  {
    *&v7 = fmaxf(y, 0.0);
    [(_GCGamepadEventImpl *)self->_event setLeftThumbstickUp:v7];
    *&v8 = fmaxf(x, 0.0);
    [(_GCGamepadEventImpl *)self->_event setLeftThumbstickRight:v8];
    *&v9 = -y;
    if (y > 0.0)
    {
      *&v9 = -0.0;
    }

    [(_GCGamepadEventImpl *)self->_event setLeftThumbstickDown:v9];
    *&v10 = -x;
    if (x > 0.0)
    {
      *&v10 = -0.0;
    }

    [(_GCGamepadEventImpl *)self->_event setLeftThumbstickLeft:v10];
  }

  else if ([elementCopy isEqualToString:GCInputDirectionPad])
  {
    *&v11 = fmaxf(y, 0.0);
    [(_GCGamepadEventImpl *)self->_event setDpadUpValue:v11];
    *&v12 = fmaxf(x, 0.0);
    [(_GCGamepadEventImpl *)self->_event setDpadRightValue:v12];
    *&v13 = -y;
    if (y > 0.0)
    {
      *&v13 = -0.0;
    }

    [(_GCGamepadEventImpl *)self->_event setDpadDownValue:v13];
    *&v14 = -x;
    if (x > 0.0)
    {
      *&v14 = -0.0;
    }

    [(_GCGamepadEventImpl *)self->_event setDpadLeftValue:v14];
  }

  else
  {
    if (![elementCopy isEqualToString:GCInputRightThumbstick])
    {
      [NSString stringWithFormat:@"*** Unknown direction pad element '%@'.", elementCopy];
      v19 = [NSException exceptionWithName:NSInvalidArgumentException reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v19);
    }

    *&v15 = fmaxf(y, 0.0);
    [(_GCGamepadEventImpl *)self->_event setRightThumbstickUp:v15];
    *&v16 = fmaxf(x, 0.0);
    [(_GCGamepadEventImpl *)self->_event setRightThumbstickRight:v16];
    *&v17 = -y;
    if (y > 0.0)
    {
      *&v17 = -0.0;
    }

    [(_GCGamepadEventImpl *)self->_event setRightThumbstickDown:v17];
    *&v18 = -x;
    if (x > 0.0)
    {
      *&v18 = -0.0;
    }

    [(_GCGamepadEventImpl *)self->_event setRightThumbstickLeft:v18];
  }

  [(GCExtendedGamepad *)self->_extendedGamepad handleGamepadEvent:self->_event];
}

@end