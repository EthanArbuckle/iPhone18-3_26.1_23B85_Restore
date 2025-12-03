@interface GCControllerView
- (GCControllerView)initWithCoder:(id)coder;
- (GCControllerView)initWithFrame:(CGRect)frame;
- (GCControllerView)initWithFrame:(CGRect)frame configuration:(id)configuration;
- (id)applyPadLayout;
- (id)getConfigurationForElement:(id)element;
- (id)getUIControlForName:(id)name;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)applyPhoneLayout;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setConfigurationForElement:(id)element configuration:(id)configuration;
- (void)setController:(id)controller;
- (void)setupPositions;
- (void)setupSide:(id)side thumbstick:(id)thumbstick buttons:(id)buttons;
@end

@implementation GCControllerView

- (GCControllerView)initWithFrame:(CGRect)frame configuration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  v76.receiver = self;
  v76.super_class = GCControllerView;
  height = [(GCControllerView *)&v76 initWithFrame:x, y, width, height];
  if (!height)
  {
    goto LABEL_33;
  }

  v11 = [[UIView alloc] initWithFrame:{0.0, 0.0, 190.0, 190.0}];
  leftSide = height->_leftSide;
  height->_leftSide = v11;

  v13 = [[UIView alloc] initWithFrame:{0.0, 0.0, 190.0, 190.0}];
  rightSide = height->_rightSide;
  height->_rightSide = v13;

  [(GCControllerView *)height addSubview:height->_leftSide];
  [(GCControllerView *)height addSubview:height->_rightSide];
  if (GCCurrentProcessLinkedOnAfter())
  {
    v15 = [NSSet setWithObjects:GCInputButtonA, GCInputButtonB, GCInputButtonX, GCInputButtonY, GCInputLeftShoulder, GCInputRightShoulder, GCInputLeftTrigger, GCInputRightTrigger, GCInputDirectionPad, GCInputLeftThumbstick, GCInputRightThumbstick, 0];
    elements = [configurationCopy elements];
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = __48__GCControllerView_initWithFrame_configuration___block_invoke;
    v74[3] = &unk_10518;
    v17 = v15;
    v75 = v17;
    v18 = [elements objectsPassingTest:v74];

    if ([v18 count])
    {
      v70 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"*** The configuration contains %zu elements that are not supported by the Apple touch controller.", [v18 count]);
      v77 = @"UnsupportedElements";
      v78 = v18;
      v71 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1];
      v72 = [NSException exceptionWithName:NSInvalidArgumentException reason:v70 userInfo:v71];
      v73 = v72;

      objc_exception_throw(v72);
    }

    elements2 = [configurationCopy elements];
    if ([elements2 containsObject:GCInputLeftThumbstick])
    {
      elements3 = [configurationCopy elements];
      v21 = [elements3 containsObject:GCInputDirectionPad];

      if (v21)
      {
        v22 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"*** The configuration requests both 'Left Thumbstick' (GCInputLeftThumbstick) and 'Direction Pad' (GCInputDirectionPad) elements.  The Apple touch controller does not support both of these elements simultaneously." userInfo:0];
        objc_exception_throw(v22);
      }
    }

    else
    {
    }
  }

  elements4 = [configurationCopy elements];
  v24 = [elements4 member:GCInputLeftThumbstick];

  if (v24)
  {
    v25 = objc_alloc_init(GCControllerThumbstickInputView);
    v26 = &OBJC_IVAR___GCControllerView__leftThumbstick;
LABEL_13:
    v30 = *v26;
    v31 = *(&height->super.super.super.isa + v30);
    *(&height->super.super.super.isa + v30) = v25;

    [(UIView *)height->_leftSide addSubview:*(&height->super.super.super.isa + v30)];
    goto LABEL_14;
  }

  elements5 = [configurationCopy elements];
  v28 = [elements5 member:GCInputDirectionPad];

  if (v28)
  {
    v29 = [GCControllerDpadInputView alloc];
    [(UIView *)height->_leftSide frame];
    v25 = [(GCControllerDpadInputView *)v29 initWithFrame:?];
    v26 = &OBJC_IVAR___GCControllerView__dpad;
    goto LABEL_13;
  }

LABEL_14:
  elements6 = [configurationCopy elements];
  v33 = [elements6 member:GCInputRightThumbstick];

  if (v33)
  {
    v34 = objc_alloc_init(GCControllerThumbstickInputView);
    rightThumbstick = height->_rightThumbstick;
    height->_rightThumbstick = v34;

    [(UIView *)height->_rightSide addSubview:height->_rightThumbstick];
  }

  elements7 = [configurationCopy elements];
  v37 = [elements7 member:GCInputButtonA];

  if (v37)
  {
    v38 = [[GCControllerButtonInputView alloc] initWithText:@"A"];
    buttonA = height->_buttonA;
    height->_buttonA = v38;

    [(UIView *)height->_rightSide addSubview:height->_buttonA];
  }

  elements8 = [configurationCopy elements];
  v41 = [elements8 member:GCInputButtonB];

  if (v41)
  {
    v42 = [[GCControllerButtonInputView alloc] initWithText:@"B"];
    buttonB = height->_buttonB;
    height->_buttonB = v42;

    [(UIView *)height->_rightSide addSubview:height->_buttonB];
  }

  elements9 = [configurationCopy elements];
  v45 = [elements9 member:GCInputButtonX];

  if (v45)
  {
    v46 = [[GCControllerButtonInputView alloc] initWithText:@"X"];
    buttonX = height->_buttonX;
    height->_buttonX = v46;

    [(UIView *)height->_rightSide addSubview:height->_buttonX];
  }

  elements10 = [configurationCopy elements];
  v49 = [elements10 member:GCInputButtonY];

  if (v49)
  {
    v50 = [[GCControllerButtonInputView alloc] initWithText:@"Y"];
    buttonY = height->_buttonY;
    height->_buttonY = v50;

    [(UIView *)height->_rightSide addSubview:height->_buttonY];
  }

  elements11 = [configurationCopy elements];
  v53 = [elements11 member:GCInputLeftShoulder];

  if (v53)
  {
    v54 = [[GCControllerButtonInputView alloc] initWithText:0];
    leftShoulder = height->_leftShoulder;
    height->_leftShoulder = v54;

    [(UIView *)height->_leftSide addSubview:height->_leftShoulder];
  }

  elements12 = [configurationCopy elements];
  v57 = [elements12 member:GCInputRightShoulder];

  if (v57)
  {
    v58 = [[GCControllerButtonInputView alloc] initWithText:0];
    rightShoulder = height->_rightShoulder;
    height->_rightShoulder = v58;

    [(UIView *)height->_leftSide addSubview:height->_rightShoulder];
  }

  elements13 = [configurationCopy elements];
  v61 = [elements13 member:GCInputLeftTrigger];

  if (v61)
  {
    v62 = [[GCControllerButtonInputView alloc] initWithText:0];
    leftTrigger = height->_leftTrigger;
    height->_leftTrigger = v62;

    [(UIView *)height->_leftSide addSubview:height->_leftTrigger];
  }

  elements14 = [configurationCopy elements];
  v65 = [elements14 member:GCInputRightTrigger];

  if (v65)
  {
    v66 = [[GCControllerButtonInputView alloc] initWithText:0];
    rightTrigger = height->_rightTrigger;
    height->_rightTrigger = v66;

    [(UIView *)height->_leftSide addSubview:height->_rightTrigger];
  }

  [(GCControllerView *)height setOpaque:0];
  [(GCControllerView *)height setupPositions];
  v68 = +[GCControllerViewFeedback sharedInstance];
LABEL_33:

  return height;
}

- (GCControllerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = objc_opt_new();
  height = [(GCControllerView *)self initWithFrame:v8 configuration:x, y, width, height];

  return height;
}

- (void)setController:(id)controller
{
  controllerCopy = controller;
  objc_storeStrong(&self->_controller, controller);
  newValue[0] = _NSConcreteStackBlock;
  newValue[1] = 3221225472;
  newValue[2] = __34__GCControllerView_setController___block_invoke;
  newValue[3] = &unk_10540;
  v6 = controllerCopy;
  v39 = v6;
  [(GCControllerThumbstickInputView *)self->_leftThumbstick setValueChangedHandler:?];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = __34__GCControllerView_setController___block_invoke_2;
  v36[3] = &unk_10540;
  v7 = v6;
  v37 = v7;
  [(GCControllerThumbstickInputView *)self->_rightThumbstick setValueChangedHandler:v36];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = __34__GCControllerView_setController___block_invoke_3;
  v34[3] = &unk_10540;
  v8 = v7;
  v35 = v8;
  [(GCControllerDpadInputView *)self->_dpad setValueChangedHandler:v34];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = __34__GCControllerView_setController___block_invoke_4;
  v32[3] = &unk_10568;
  v9 = v8;
  v33 = v9;
  [(GCControllerButtonInputView *)self->_buttonA setValueChangedHandler:v32];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = __34__GCControllerView_setController___block_invoke_5;
  v30[3] = &unk_10568;
  v10 = v9;
  v31 = v10;
  [(GCControllerButtonInputView *)self->_buttonB setValueChangedHandler:v30];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __34__GCControllerView_setController___block_invoke_6;
  v28[3] = &unk_10568;
  v11 = v10;
  v29 = v11;
  [(GCControllerButtonInputView *)self->_buttonX setValueChangedHandler:v28];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = __34__GCControllerView_setController___block_invoke_7;
  v26[3] = &unk_10568;
  v12 = v11;
  v27 = v12;
  [(GCControllerButtonInputView *)self->_buttonY setValueChangedHandler:v26];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __34__GCControllerView_setController___block_invoke_8;
  v24[3] = &unk_10568;
  v13 = v12;
  v25 = v13;
  [(GCControllerButtonInputView *)self->_leftShoulder setValueChangedHandler:v24];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __34__GCControllerView_setController___block_invoke_9;
  v22[3] = &unk_10568;
  v14 = v13;
  v23 = v14;
  [(GCControllerButtonInputView *)self->_rightShoulder setValueChangedHandler:v22];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __34__GCControllerView_setController___block_invoke_10;
  v20[3] = &unk_10568;
  v15 = v14;
  v21 = v15;
  [(GCControllerButtonInputView *)self->_leftTrigger setValueChangedHandler:v20];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __34__GCControllerView_setController___block_invoke_11;
  v18[3] = &unk_10568;
  v19 = v15;
  rightTrigger = self->_rightTrigger;
  v17 = v15;
  [(GCControllerButtonInputView *)rightTrigger setValueChangedHandler:v18];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = GCControllerView;
  [(GCControllerView *)&v4 layoutSubviews];
  v3 = +[UIDevice currentDevice];
  if ([v3 userInterfaceIdiom])
  {
    [(GCControllerView *)self applyPadLayout];
  }

  else
  {
    [(GCControllerView *)self applyPhoneLayout];
  }
}

- (void)setupSide:(id)side thumbstick:(id)thumbstick buttons:(id)buttons
{
  sideCopy = side;
  thumbstickCopy = thumbstick;
  buttonsCopy = buttons;
  v9 = [buttonsCopy count];
  [sideCopy frame];
  v11 = v10 * 0.5;
  [sideCopy frame];
  v13 = v12 * 0.5;
  if (!thumbstickCopy)
  {
    if (v9 > 2)
    {
      if (v9 == (&dword_0 + 3))
      {
        v41 = [buttonsCopy objectAtIndexedSubscript:0];
        [v41 setCenter:{v11 + -47.6314011, v13 + 27.4999943}];

        v42 = [buttonsCopy objectAtIndexedSubscript:1];
        [v42 setCenter:{v11 + 47.6313972, v13 + 27.5000038}];

        v11 = v11 + 0.0;
        v13 = v13 + -55.0;
        v36 = buttonsCopy;
        v37 = 2;
      }

      else
      {
        if (v9 != &dword_4)
        {
          goto LABEL_18;
        }

        v38 = [buttonsCopy objectAtIndexedSubscript:0];
        [v38 setCenter:{v11, v13 + 55.0}];

        v39 = [buttonsCopy objectAtIndexedSubscript:1];
        [v39 setCenter:{v11 + 55.0, v13}];

        v40 = [buttonsCopy objectAtIndexedSubscript:2];
        [v40 setCenter:{v11 + -55.0, v13}];

        v13 = v13 + -55.0;
        v36 = buttonsCopy;
        v37 = 3;
      }
    }

    else if (v9 == (&dword_0 + 1))
    {
      v36 = buttonsCopy;
      v37 = 0;
    }

    else
    {
      if (v9 != (&dword_0 + 2))
      {
        goto LABEL_18;
      }

      v35 = [buttonsCopy objectAtIndexedSubscript:0];
      [v35 setCenter:{v11 + -38.890873, v13 + 38.890873}];

      v11 = v11 + 38.890873;
      v13 = v13 + -38.890873;
      v36 = buttonsCopy;
      v37 = 1;
    }

    v31 = [v36 objectAtIndexedSubscript:v37];
    v32 = v31;
    v33 = v11;
    v34 = v13;
    goto LABEL_17;
  }

  [thumbstickCopy setCenter:{v11, v13}];
  if (v9)
  {
    v14 = [buttonsCopy objectAtIndexedSubscript:0];
    [v14 frame];
    v16 = v15 * 0.5;
    v17 = [buttonsCopy objectAtIndexedSubscript:0];
    [v17 frame];
    v19 = v18 * 0.5;

    [sideCopy frame];
    v21 = v20 - v19;
    v22 = [buttonsCopy objectAtIndexedSubscript:0];
    [v22 setCenter:{v16, v21}];

    if (v9 != (&dword_0 + 1))
    {
      [sideCopy frame];
      v24 = v23 - v16;
      [sideCopy frame];
      v26 = v25 - v19;
      v27 = [buttonsCopy objectAtIndexedSubscript:1];
      [v27 setCenter:{v24, v26}];

      if (v9 >= 3)
      {
        v28 = [buttonsCopy objectAtIndexedSubscript:2];
        [v28 setCenter:{v16, v19}];

        if (v9 != (&dword_0 + 3))
        {
          [sideCopy frame];
          v30 = v29 - v16;
          v31 = [buttonsCopy objectAtIndexedSubscript:3];
          v32 = v31;
          v33 = v30;
          v34 = v19;
LABEL_17:
          [v31 setCenter:{v33, v34}];
        }
      }
    }
  }

LABEL_18:
}

- (void)setupPositions
{
  v3 = [[NSMutableArray alloc] initWithCapacity:4];
  v4 = v3;
  v8 = v3;
  if (self->_buttonA)
  {
    [v3 addObject:?];
    v4 = v8;
  }

  if (self->_buttonB)
  {
    [v4 addObject:?];
    v4 = v8;
  }

  if (self->_buttonX)
  {
    [v4 addObject:?];
    v4 = v8;
  }

  if (self->_buttonY)
  {
    [v4 addObject:?];
    v4 = v8;
  }

  [(GCControllerView *)self setupSide:self->_rightSide thumbstick:self->_rightThumbstick buttons:v4];
  v5 = [[NSMutableArray alloc] initWithCapacity:4];
  v6 = v5;
  if (self->_leftShoulder)
  {
    [v5 addObject:?];
  }

  if (self->_rightShoulder)
  {
    [v6 addObject:?];
  }

  if (self->_leftTrigger)
  {
    [v6 addObject:?];
  }

  if (self->_rightTrigger)
  {
    [v6 addObject:?];
  }

  leftThumbstick = self->_leftThumbstick;
  if (!leftThumbstick)
  {
    leftThumbstick = self->_dpad;
  }

  [(GCControllerView *)self setupSide:self->_leftSide thumbstick:leftThumbstick buttons:v6];
}

- (id)getUIControlForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:GCInputButtonA])
  {
    v5 = &OBJC_IVAR___GCControllerView__buttonA;
LABEL_23:
    v6 = *(&self->super.super.super.isa + *v5);
    goto LABEL_24;
  }

  if ([nameCopy isEqualToString:GCInputButtonB])
  {
    v5 = &OBJC_IVAR___GCControllerView__buttonB;
    goto LABEL_23;
  }

  if ([nameCopy isEqualToString:GCInputButtonX])
  {
    v5 = &OBJC_IVAR___GCControllerView__buttonX;
    goto LABEL_23;
  }

  if ([nameCopy isEqualToString:GCInputButtonY])
  {
    v5 = &OBJC_IVAR___GCControllerView__buttonY;
    goto LABEL_23;
  }

  if ([nameCopy isEqualToString:GCInputDirectionPad])
  {
    v5 = &OBJC_IVAR___GCControllerView__dpad;
    goto LABEL_23;
  }

  if ([nameCopy isEqualToString:GCInputLeftThumbstick])
  {
    v5 = &OBJC_IVAR___GCControllerView__leftThumbstick;
    goto LABEL_23;
  }

  if ([nameCopy isEqualToString:GCInputRightThumbstick])
  {
    v5 = &OBJC_IVAR___GCControllerView__rightThumbstick;
    goto LABEL_23;
  }

  if ([nameCopy isEqualToString:GCInputLeftShoulder])
  {
    v5 = &OBJC_IVAR___GCControllerView__leftShoulder;
    goto LABEL_23;
  }

  if ([nameCopy isEqualToString:GCInputRightShoulder])
  {
    v5 = &OBJC_IVAR___GCControllerView__rightShoulder;
    goto LABEL_23;
  }

  if ([nameCopy isEqualToString:GCInputLeftTrigger])
  {
    v5 = &OBJC_IVAR___GCControllerView__leftTrigger;
    goto LABEL_23;
  }

  if ([nameCopy isEqualToString:GCInputRightTrigger])
  {
    v5 = &OBJC_IVAR___GCControllerView__rightTrigger;
    goto LABEL_23;
  }

  v6 = 0;
LABEL_24:

  return v6;
}

- (id)getConfigurationForElement:(id)element
{
  v3 = [(GCControllerView *)self getUIControlForName:element];
  if (v3)
  {
    v4 = objc_opt_new();
    [v4 setHidden:{objc_msgSend(v3, "isHidden")}];
    [v4 setPath:0];
    [v4 setActsAsTouchpad:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      customImage = [v3 customImage];
      [v4 setPath:customImage];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v4 setActsAsTouchpad:{objc_msgSend(v3, "actsAsTouchpad")}];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setConfigurationForElement:(id)element configuration:(id)configuration
{
  configurationCopy = configuration;
  v6 = [(GCControllerView *)self getUIControlForName:element];
  if (v6)
  {
    [v6 setHidden:{objc_msgSend(configurationCopy, "isHidden")}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      path = [configurationCopy path];
      [v7 setCustomImage:path];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_7;
      }

      path = v6;
      [path setActsAsTouchpad:{objc_msgSend(configurationCopy, "actsAsTouchpad")}];
    }
  }

LABEL_7:
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = GCControllerView;
  v5 = [(GCControllerView *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self || v5 == self->_leftSide || v5 == self->_rightSide)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (GCControllerView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"GCControllerView shoukd not be encoded!" userInfo:0];
  objc_exception_throw(v4);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"GCControllerView shoukd not be encoded!" userInfo:0];
  objc_exception_throw(v4);
}

- (id)applyPadLayout
{
  if (result)
  {
    [result bounds];
    OUTLINED_FUNCTION_4();
    MaxX = CGRectGetMaxX(v8);
    v9.origin.x = OUTLINED_FUNCTION_0();
    CGRectGetMaxY(v9);
    v10.origin.x = OUTLINED_FUNCTION_0();
    CGRectGetWidth(v10);
    [OUTLINED_FUNCTION_3() frame];
    CGRectGetWidth(v11);
    [OUTLINED_FUNCTION_1() frame];
    CGRectGetWidth(v12);
    [OUTLINED_FUNCTION_1() setHidden:?];
    [OUTLINED_FUNCTION_3() frame];
    v3 = MaxX - v2 * 0.5 + -50.0;
    [OUTLINED_FUNCTION_3() frame];
    [OUTLINED_FUNCTION_3() setCenter:v3];
    [OUTLINED_FUNCTION_1() frame];
    v5 = v4 * 0.5 + 0.0 + 50.0;
    [OUTLINED_FUNCTION_1() frame];
    v6 = OUTLINED_FUNCTION_1();

    return [v6 setCenter:v5];
  }

  return result;
}

- (void)applyPhoneLayout
{
  if (self)
  {
    [self bounds];
    OUTLINED_FUNCTION_4();
    superview = [self superview];
    [superview frame];
    [self setFrame:?];
    window = [superview window];
    [window safeAreaInsets];
    *(self + 24) = v3;
    *(self + 32) = v4;
    *(self + 40) = v5;
    *(self + 48) = v6;

    __asm { FMOV            V0.2D, #4.0 }

    v12 = vaddq_f64(*(self + 24), _Q0);
    v13 = vaddq_f64(*(self + 40), _Q0);
    *(self + 24) = v12;
    *(self + 40) = v13;
    v31.origin.x = OUTLINED_FUNCTION_0();
    MaxX = CGRectGetMaxX(v31);
    v32.origin.x = OUTLINED_FUNCTION_0();
    MaxY = CGRectGetMaxY(v32);
    v33.origin.x = OUTLINED_FUNCTION_0();
    Height = CGRectGetHeight(v33);
    v34.origin.x = OUTLINED_FUNCTION_0();
    Width = CGRectGetWidth(v34);
    [*(self + 16) frame];
    v19 = MaxX - v18 * 0.5 - *(self + 48);
    v20 = MaxY;
    [*(self + 16) frame];
    OUTLINED_FUNCTION_2(MaxY - v21 * 0.5);
    [*(self + 16) setCenter:v19];
    v22 = OUTLINED_FUNCTION_1();
    if (Height <= Width)
    {
      [v22 setHidden:0];
      [OUTLINED_FUNCTION_1() frame];
      v27 = *(self + 32) + v26 * 0.5 + 0.0;
      [OUTLINED_FUNCTION_1() frame];
      OUTLINED_FUNCTION_2(v20 - v28 * 0.5);
      v24 = OUTLINED_FUNCTION_1();
      v25 = v27;
    }

    else
    {
      [v22 setHidden:1];
      [OUTLINED_FUNCTION_1() frame];
      OUTLINED_FUNCTION_2(v20 + v23 * -0.5);
      v24 = OUTLINED_FUNCTION_1();
      v25 = -100.0;
    }

    [v24 setCenter:v25];
  }
}

@end