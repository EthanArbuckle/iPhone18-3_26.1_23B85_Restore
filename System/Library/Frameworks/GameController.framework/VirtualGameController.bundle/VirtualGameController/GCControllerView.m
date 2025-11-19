@interface GCControllerView
- (GCControllerView)initWithCoder:(id)a3;
- (GCControllerView)initWithFrame:(CGRect)a3;
- (GCControllerView)initWithFrame:(CGRect)a3 configuration:(id)a4;
- (id)applyPadLayout;
- (id)getConfigurationForElement:(id)a3;
- (id)getUIControlForName:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)applyPhoneLayout;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setConfigurationForElement:(id)a3 configuration:(id)a4;
- (void)setController:(id)a3;
- (void)setupPositions;
- (void)setupSide:(id)a3 thumbstick:(id)a4 buttons:(id)a5;
@end

@implementation GCControllerView

- (GCControllerView)initWithFrame:(CGRect)a3 configuration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v76.receiver = self;
  v76.super_class = GCControllerView;
  v10 = [(GCControllerView *)&v76 initWithFrame:x, y, width, height];
  if (!v10)
  {
    goto LABEL_33;
  }

  v11 = [[UIView alloc] initWithFrame:{0.0, 0.0, 190.0, 190.0}];
  leftSide = v10->_leftSide;
  v10->_leftSide = v11;

  v13 = [[UIView alloc] initWithFrame:{0.0, 0.0, 190.0, 190.0}];
  rightSide = v10->_rightSide;
  v10->_rightSide = v13;

  [(GCControllerView *)v10 addSubview:v10->_leftSide];
  [(GCControllerView *)v10 addSubview:v10->_rightSide];
  if (GCCurrentProcessLinkedOnAfter())
  {
    v15 = [NSSet setWithObjects:GCInputButtonA, GCInputButtonB, GCInputButtonX, GCInputButtonY, GCInputLeftShoulder, GCInputRightShoulder, GCInputLeftTrigger, GCInputRightTrigger, GCInputDirectionPad, GCInputLeftThumbstick, GCInputRightThumbstick, 0];
    v16 = [v9 elements];
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = __48__GCControllerView_initWithFrame_configuration___block_invoke;
    v74[3] = &unk_10518;
    v17 = v15;
    v75 = v17;
    v18 = [v16 objectsPassingTest:v74];

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

    v19 = [v9 elements];
    if ([v19 containsObject:GCInputLeftThumbstick])
    {
      v20 = [v9 elements];
      v21 = [v20 containsObject:GCInputDirectionPad];

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

  v23 = [v9 elements];
  v24 = [v23 member:GCInputLeftThumbstick];

  if (v24)
  {
    v25 = objc_alloc_init(GCControllerThumbstickInputView);
    v26 = &OBJC_IVAR___GCControllerView__leftThumbstick;
LABEL_13:
    v30 = *v26;
    v31 = *(&v10->super.super.super.isa + v30);
    *(&v10->super.super.super.isa + v30) = v25;

    [(UIView *)v10->_leftSide addSubview:*(&v10->super.super.super.isa + v30)];
    goto LABEL_14;
  }

  v27 = [v9 elements];
  v28 = [v27 member:GCInputDirectionPad];

  if (v28)
  {
    v29 = [GCControllerDpadInputView alloc];
    [(UIView *)v10->_leftSide frame];
    v25 = [(GCControllerDpadInputView *)v29 initWithFrame:?];
    v26 = &OBJC_IVAR___GCControllerView__dpad;
    goto LABEL_13;
  }

LABEL_14:
  v32 = [v9 elements];
  v33 = [v32 member:GCInputRightThumbstick];

  if (v33)
  {
    v34 = objc_alloc_init(GCControllerThumbstickInputView);
    rightThumbstick = v10->_rightThumbstick;
    v10->_rightThumbstick = v34;

    [(UIView *)v10->_rightSide addSubview:v10->_rightThumbstick];
  }

  v36 = [v9 elements];
  v37 = [v36 member:GCInputButtonA];

  if (v37)
  {
    v38 = [[GCControllerButtonInputView alloc] initWithText:@"A"];
    buttonA = v10->_buttonA;
    v10->_buttonA = v38;

    [(UIView *)v10->_rightSide addSubview:v10->_buttonA];
  }

  v40 = [v9 elements];
  v41 = [v40 member:GCInputButtonB];

  if (v41)
  {
    v42 = [[GCControllerButtonInputView alloc] initWithText:@"B"];
    buttonB = v10->_buttonB;
    v10->_buttonB = v42;

    [(UIView *)v10->_rightSide addSubview:v10->_buttonB];
  }

  v44 = [v9 elements];
  v45 = [v44 member:GCInputButtonX];

  if (v45)
  {
    v46 = [[GCControllerButtonInputView alloc] initWithText:@"X"];
    buttonX = v10->_buttonX;
    v10->_buttonX = v46;

    [(UIView *)v10->_rightSide addSubview:v10->_buttonX];
  }

  v48 = [v9 elements];
  v49 = [v48 member:GCInputButtonY];

  if (v49)
  {
    v50 = [[GCControllerButtonInputView alloc] initWithText:@"Y"];
    buttonY = v10->_buttonY;
    v10->_buttonY = v50;

    [(UIView *)v10->_rightSide addSubview:v10->_buttonY];
  }

  v52 = [v9 elements];
  v53 = [v52 member:GCInputLeftShoulder];

  if (v53)
  {
    v54 = [[GCControllerButtonInputView alloc] initWithText:0];
    leftShoulder = v10->_leftShoulder;
    v10->_leftShoulder = v54;

    [(UIView *)v10->_leftSide addSubview:v10->_leftShoulder];
  }

  v56 = [v9 elements];
  v57 = [v56 member:GCInputRightShoulder];

  if (v57)
  {
    v58 = [[GCControllerButtonInputView alloc] initWithText:0];
    rightShoulder = v10->_rightShoulder;
    v10->_rightShoulder = v58;

    [(UIView *)v10->_leftSide addSubview:v10->_rightShoulder];
  }

  v60 = [v9 elements];
  v61 = [v60 member:GCInputLeftTrigger];

  if (v61)
  {
    v62 = [[GCControllerButtonInputView alloc] initWithText:0];
    leftTrigger = v10->_leftTrigger;
    v10->_leftTrigger = v62;

    [(UIView *)v10->_leftSide addSubview:v10->_leftTrigger];
  }

  v64 = [v9 elements];
  v65 = [v64 member:GCInputRightTrigger];

  if (v65)
  {
    v66 = [[GCControllerButtonInputView alloc] initWithText:0];
    rightTrigger = v10->_rightTrigger;
    v10->_rightTrigger = v66;

    [(UIView *)v10->_leftSide addSubview:v10->_rightTrigger];
  }

  [(GCControllerView *)v10 setOpaque:0];
  [(GCControllerView *)v10 setupPositions];
  v68 = +[GCControllerViewFeedback sharedInstance];
LABEL_33:

  return v10;
}

- (GCControllerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_opt_new();
  v9 = [(GCControllerView *)self initWithFrame:v8 configuration:x, y, width, height];

  return v9;
}

- (void)setController:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_controller, a3);
  newValue[0] = _NSConcreteStackBlock;
  newValue[1] = 3221225472;
  newValue[2] = __34__GCControllerView_setController___block_invoke;
  newValue[3] = &unk_10540;
  v6 = v5;
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

- (void)setupSide:(id)a3 thumbstick:(id)a4 buttons:(id)a5
{
  v43 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 count];
  [v43 frame];
  v11 = v10 * 0.5;
  [v43 frame];
  v13 = v12 * 0.5;
  if (!v7)
  {
    if (v9 > 2)
    {
      if (v9 == (&dword_0 + 3))
      {
        v41 = [v8 objectAtIndexedSubscript:0];
        [v41 setCenter:{v11 + -47.6314011, v13 + 27.4999943}];

        v42 = [v8 objectAtIndexedSubscript:1];
        [v42 setCenter:{v11 + 47.6313972, v13 + 27.5000038}];

        v11 = v11 + 0.0;
        v13 = v13 + -55.0;
        v36 = v8;
        v37 = 2;
      }

      else
      {
        if (v9 != &dword_4)
        {
          goto LABEL_18;
        }

        v38 = [v8 objectAtIndexedSubscript:0];
        [v38 setCenter:{v11, v13 + 55.0}];

        v39 = [v8 objectAtIndexedSubscript:1];
        [v39 setCenter:{v11 + 55.0, v13}];

        v40 = [v8 objectAtIndexedSubscript:2];
        [v40 setCenter:{v11 + -55.0, v13}];

        v13 = v13 + -55.0;
        v36 = v8;
        v37 = 3;
      }
    }

    else if (v9 == (&dword_0 + 1))
    {
      v36 = v8;
      v37 = 0;
    }

    else
    {
      if (v9 != (&dword_0 + 2))
      {
        goto LABEL_18;
      }

      v35 = [v8 objectAtIndexedSubscript:0];
      [v35 setCenter:{v11 + -38.890873, v13 + 38.890873}];

      v11 = v11 + 38.890873;
      v13 = v13 + -38.890873;
      v36 = v8;
      v37 = 1;
    }

    v31 = [v36 objectAtIndexedSubscript:v37];
    v32 = v31;
    v33 = v11;
    v34 = v13;
    goto LABEL_17;
  }

  [v7 setCenter:{v11, v13}];
  if (v9)
  {
    v14 = [v8 objectAtIndexedSubscript:0];
    [v14 frame];
    v16 = v15 * 0.5;
    v17 = [v8 objectAtIndexedSubscript:0];
    [v17 frame];
    v19 = v18 * 0.5;

    [v43 frame];
    v21 = v20 - v19;
    v22 = [v8 objectAtIndexedSubscript:0];
    [v22 setCenter:{v16, v21}];

    if (v9 != (&dword_0 + 1))
    {
      [v43 frame];
      v24 = v23 - v16;
      [v43 frame];
      v26 = v25 - v19;
      v27 = [v8 objectAtIndexedSubscript:1];
      [v27 setCenter:{v24, v26}];

      if (v9 >= 3)
      {
        v28 = [v8 objectAtIndexedSubscript:2];
        [v28 setCenter:{v16, v19}];

        if (v9 != (&dword_0 + 3))
        {
          [v43 frame];
          v30 = v29 - v16;
          v31 = [v8 objectAtIndexedSubscript:3];
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

- (id)getUIControlForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:GCInputButtonA])
  {
    v5 = &OBJC_IVAR___GCControllerView__buttonA;
LABEL_23:
    v6 = *(&self->super.super.super.isa + *v5);
    goto LABEL_24;
  }

  if ([v4 isEqualToString:GCInputButtonB])
  {
    v5 = &OBJC_IVAR___GCControllerView__buttonB;
    goto LABEL_23;
  }

  if ([v4 isEqualToString:GCInputButtonX])
  {
    v5 = &OBJC_IVAR___GCControllerView__buttonX;
    goto LABEL_23;
  }

  if ([v4 isEqualToString:GCInputButtonY])
  {
    v5 = &OBJC_IVAR___GCControllerView__buttonY;
    goto LABEL_23;
  }

  if ([v4 isEqualToString:GCInputDirectionPad])
  {
    v5 = &OBJC_IVAR___GCControllerView__dpad;
    goto LABEL_23;
  }

  if ([v4 isEqualToString:GCInputLeftThumbstick])
  {
    v5 = &OBJC_IVAR___GCControllerView__leftThumbstick;
    goto LABEL_23;
  }

  if ([v4 isEqualToString:GCInputRightThumbstick])
  {
    v5 = &OBJC_IVAR___GCControllerView__rightThumbstick;
    goto LABEL_23;
  }

  if ([v4 isEqualToString:GCInputLeftShoulder])
  {
    v5 = &OBJC_IVAR___GCControllerView__leftShoulder;
    goto LABEL_23;
  }

  if ([v4 isEqualToString:GCInputRightShoulder])
  {
    v5 = &OBJC_IVAR___GCControllerView__rightShoulder;
    goto LABEL_23;
  }

  if ([v4 isEqualToString:GCInputLeftTrigger])
  {
    v5 = &OBJC_IVAR___GCControllerView__leftTrigger;
    goto LABEL_23;
  }

  if ([v4 isEqualToString:GCInputRightTrigger])
  {
    v5 = &OBJC_IVAR___GCControllerView__rightTrigger;
    goto LABEL_23;
  }

  v6 = 0;
LABEL_24:

  return v6;
}

- (id)getConfigurationForElement:(id)a3
{
  v3 = [(GCControllerView *)self getUIControlForName:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    [v4 setHidden:{objc_msgSend(v3, "isHidden")}];
    [v4 setPath:0];
    [v4 setActsAsTouchpad:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 customImage];
      [v4 setPath:v5];
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

- (void)setConfigurationForElement:(id)a3 configuration:(id)a4
{
  v9 = a4;
  v6 = [(GCControllerView *)self getUIControlForName:a3];
  if (v6)
  {
    [v6 setHidden:{objc_msgSend(v9, "isHidden")}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [v9 path];
      [v7 setCustomImage:v8];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_7;
      }

      v8 = v6;
      [v8 setActsAsTouchpad:{objc_msgSend(v9, "actsAsTouchpad")}];
    }
  }

LABEL_7:
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = GCControllerView;
  v5 = [(GCControllerView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
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

- (GCControllerView)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"GCControllerView shoukd not be encoded!" userInfo:0];
  objc_exception_throw(v4);
}

- (void)encodeWithCoder:(id)a3
{
  v3 = a3;
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
  if (a1)
  {
    [a1 bounds];
    OUTLINED_FUNCTION_4();
    v29 = [a1 superview];
    [v29 frame];
    [a1 setFrame:?];
    v2 = [v29 window];
    [v2 safeAreaInsets];
    *(a1 + 24) = v3;
    *(a1 + 32) = v4;
    *(a1 + 40) = v5;
    *(a1 + 48) = v6;

    __asm { FMOV            V0.2D, #4.0 }

    v12 = vaddq_f64(*(a1 + 24), _Q0);
    v13 = vaddq_f64(*(a1 + 40), _Q0);
    *(a1 + 24) = v12;
    *(a1 + 40) = v13;
    v31.origin.x = OUTLINED_FUNCTION_0();
    MaxX = CGRectGetMaxX(v31);
    v32.origin.x = OUTLINED_FUNCTION_0();
    MaxY = CGRectGetMaxY(v32);
    v33.origin.x = OUTLINED_FUNCTION_0();
    Height = CGRectGetHeight(v33);
    v34.origin.x = OUTLINED_FUNCTION_0();
    Width = CGRectGetWidth(v34);
    [*(a1 + 16) frame];
    v19 = MaxX - v18 * 0.5 - *(a1 + 48);
    v20 = MaxY;
    [*(a1 + 16) frame];
    OUTLINED_FUNCTION_2(MaxY - v21 * 0.5);
    [*(a1 + 16) setCenter:v19];
    v22 = OUTLINED_FUNCTION_1();
    if (Height <= Width)
    {
      [v22 setHidden:0];
      [OUTLINED_FUNCTION_1() frame];
      v27 = *(a1 + 32) + v26 * 0.5 + 0.0;
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