@interface GCDevicePhysicalInputJoystickElementDescription(Client)
- (_BYTE)makeParameters;
@end

@implementation GCDevicePhysicalInputJoystickElementDescription(Client)

- (_BYTE)makeParameters
{
  v51.receiver = self;
  v51.super_class = &off_1F4EA9EB8;
  v4 = objc_msgSendSuper2(&v51, sel_makeParameters);
  xySources = [self xySources];
  v8 = xySources;
  if (xySources)
  {
    [OUTLINED_FUNCTION_22() xySources];
    objc_claimAutoreleasedReturnValue();
    xySources = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v9 = xySources;
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (v4)
  {
LABEL_3:
    OUTLINED_FUNCTION_36(xySources, v6, v7, 48);
  }

LABEL_4:
  if (v8)
  {
  }

  xSources = [self xSources];
  v13 = xSources;
  if (xSources)
  {
    [OUTLINED_FUNCTION_22() xSources];
    objc_claimAutoreleasedReturnValue();
    xSources = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v14 = xSources;
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = 0;
  if (v4)
  {
LABEL_8:
    OUTLINED_FUNCTION_36(xSources, v11, v12, 56);
  }

LABEL_9:
  if (v13)
  {
  }

  ySources = [self ySources];
  v18 = ySources;
  if (ySources)
  {
    [OUTLINED_FUNCTION_22() ySources];
    objc_claimAutoreleasedReturnValue();
    ySources = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v19 = ySources;
    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v19 = 0;
  if (v4)
  {
LABEL_13:
    OUTLINED_FUNCTION_36(ySources, v16, v17, 64);
  }

LABEL_14:
  if (v18)
  {
  }

  upSources = [self upSources];
  v23 = upSources;
  if (upSources)
  {
    [OUTLINED_FUNCTION_22() upSources];
    objc_claimAutoreleasedReturnValue();
    upSources = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v24 = upSources;
    if (!v4)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v24 = 0;
  if (v4)
  {
LABEL_18:
    OUTLINED_FUNCTION_36(upSources, v21, v22, 72);
  }

LABEL_19:
  if (v23)
  {
  }

  rightSources = [self rightSources];
  v28 = rightSources;
  if (rightSources)
  {
    [OUTLINED_FUNCTION_22() rightSources];
    objc_claimAutoreleasedReturnValue();
    rightSources = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v29 = rightSources;
    if (!v4)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v29 = 0;
  if (v4)
  {
LABEL_23:
    OUTLINED_FUNCTION_36(rightSources, v26, v27, 96);
  }

LABEL_24:
  if (v28)
  {
  }

  downSources = [self downSources];
  v33 = downSources;
  if (downSources)
  {
    [OUTLINED_FUNCTION_22() downSources];
    objc_claimAutoreleasedReturnValue();
    downSources = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v34 = downSources;
    if (!v4)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v34 = 0;
  if (v4)
  {
LABEL_28:
    OUTLINED_FUNCTION_36(downSources, v31, v32, 88);
  }

LABEL_29:
  if (v33)
  {
  }

  leftSources = [self leftSources];
  v38 = leftSources;
  if (leftSources)
  {
    [OUTLINED_FUNCTION_22() leftSources];
    objc_claimAutoreleasedReturnValue();
    leftSources = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v39 = leftSources;
    if (!v4)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v39 = 0;
  if (v4)
  {
LABEL_33:
    OUTLINED_FUNCTION_36(leftSources, v36, v37, 80);
  }

LABEL_34:
  if (v38)
  {
  }

  analogAxes = [self analogAxes];
  if (v4)
  {
    v4[40] = analogAxes;
    [self directionPressedThreshold];
    *(v4 + 11) = v41;
    *(v4 + 15) = [self eventXValueField];
    *(v4 + 16) = [self eventYValueField];
    *(v4 + 17) = [self eventPressValueField];
    *(v4 + 18) = [self eventTouchValueField];
  }

  else
  {
    [self directionPressedThreshold];
    [self eventXValueField];
    [self eventYValueField];
    [self eventPressValueField];
    [self eventTouchValueField];
  }

  if ([self supportsPress])
  {
    v43 = objc_opt_new();
    pressSources = [self pressSources];
    if (pressSources)
    {
      [OUTLINED_FUNCTION_22() pressSources];
      objc_claimAutoreleasedReturnValue();
      v47 = [OUTLINED_FUNCTION_33() setWithArray:v2];
      [(_GCDevicePhysicalInputPressInputParameters *)v43 setSources:v47];
    }

    else
    {
      [(_GCDevicePhysicalInputPressInputParameters *)v43 setSources:?];
    }

    -[_GCDevicePhysicalInputPressInputParameters setAnalog:](v43, [self analogPress]);
    [self pressedThreshold];
    [(_GCDevicePhysicalInputPressInputParameters *)v43 setPressedThreshold:v48];
    [(_GCDevicePhysicalInputJoystickElementParameters *)v4 setPress:v43];
  }

  if ([self supportsTouch])
  {
    v45 = objc_opt_new();
    touchSources = [self touchSources];
    if (touchSources)
    {
      [OUTLINED_FUNCTION_22() touchSources];
      objc_claimAutoreleasedReturnValue();
      v49 = [OUTLINED_FUNCTION_33() setWithArray:v2];
      [(_GCDevicePhysicalInputTouchInputParameters *)v45 setSources:v49];
    }

    else
    {
      [(_GCDevicePhysicalInputTouchInputParameters *)v45 setSources:?];
    }

    [self touchedThreshold];
    [(_GCDevicePhysicalInputTouchInputParameters *)v45 setTouchedThreshold:v50];
    [(_GCDevicePhysicalInputJoystickElementParameters *)v4 setTouch:v45];
  }

  return v4;
}

@end