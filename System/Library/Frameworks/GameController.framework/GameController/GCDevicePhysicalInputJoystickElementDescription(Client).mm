@interface GCDevicePhysicalInputJoystickElementDescription(Client)
- (_BYTE)makeParameters;
@end

@implementation GCDevicePhysicalInputJoystickElementDescription(Client)

- (_BYTE)makeParameters
{
  v51.receiver = a1;
  v51.super_class = &off_1F4EA9EB8;
  v4 = objc_msgSendSuper2(&v51, sel_makeParameters);
  v5 = [a1 xySources];
  v8 = v5;
  if (v5)
  {
    [OUTLINED_FUNCTION_22() xySources];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v9 = v5;
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
    OUTLINED_FUNCTION_36(v5, v6, v7, 48);
  }

LABEL_4:
  if (v8)
  {
  }

  v10 = [a1 xSources];
  v13 = v10;
  if (v10)
  {
    [OUTLINED_FUNCTION_22() xSources];
    objc_claimAutoreleasedReturnValue();
    v10 = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v14 = v10;
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
    OUTLINED_FUNCTION_36(v10, v11, v12, 56);
  }

LABEL_9:
  if (v13)
  {
  }

  v15 = [a1 ySources];
  v18 = v15;
  if (v15)
  {
    [OUTLINED_FUNCTION_22() ySources];
    objc_claimAutoreleasedReturnValue();
    v15 = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v19 = v15;
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
    OUTLINED_FUNCTION_36(v15, v16, v17, 64);
  }

LABEL_14:
  if (v18)
  {
  }

  v20 = [a1 upSources];
  v23 = v20;
  if (v20)
  {
    [OUTLINED_FUNCTION_22() upSources];
    objc_claimAutoreleasedReturnValue();
    v20 = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v24 = v20;
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
    OUTLINED_FUNCTION_36(v20, v21, v22, 72);
  }

LABEL_19:
  if (v23)
  {
  }

  v25 = [a1 rightSources];
  v28 = v25;
  if (v25)
  {
    [OUTLINED_FUNCTION_22() rightSources];
    objc_claimAutoreleasedReturnValue();
    v25 = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v29 = v25;
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
    OUTLINED_FUNCTION_36(v25, v26, v27, 96);
  }

LABEL_24:
  if (v28)
  {
  }

  v30 = [a1 downSources];
  v33 = v30;
  if (v30)
  {
    [OUTLINED_FUNCTION_22() downSources];
    objc_claimAutoreleasedReturnValue();
    v30 = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v34 = v30;
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
    OUTLINED_FUNCTION_36(v30, v31, v32, 88);
  }

LABEL_29:
  if (v33)
  {
  }

  v35 = [a1 leftSources];
  v38 = v35;
  if (v35)
  {
    [OUTLINED_FUNCTION_22() leftSources];
    objc_claimAutoreleasedReturnValue();
    v35 = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v39 = v35;
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
    OUTLINED_FUNCTION_36(v35, v36, v37, 80);
  }

LABEL_34:
  if (v38)
  {
  }

  v40 = [a1 analogAxes];
  if (v4)
  {
    v4[40] = v40;
    [a1 directionPressedThreshold];
    *(v4 + 11) = v41;
    *(v4 + 15) = [a1 eventXValueField];
    *(v4 + 16) = [a1 eventYValueField];
    *(v4 + 17) = [a1 eventPressValueField];
    *(v4 + 18) = [a1 eventTouchValueField];
  }

  else
  {
    [a1 directionPressedThreshold];
    [a1 eventXValueField];
    [a1 eventYValueField];
    [a1 eventPressValueField];
    [a1 eventTouchValueField];
  }

  if ([a1 supportsPress])
  {
    v43 = objc_opt_new();
    v44 = [a1 pressSources];
    if (v44)
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

    -[_GCDevicePhysicalInputPressInputParameters setAnalog:](v43, [a1 analogPress]);
    [a1 pressedThreshold];
    [(_GCDevicePhysicalInputPressInputParameters *)v43 setPressedThreshold:v48];
    [(_GCDevicePhysicalInputJoystickElementParameters *)v4 setPress:v43];
  }

  if ([a1 supportsTouch])
  {
    v45 = objc_opt_new();
    v46 = [a1 touchSources];
    if (v46)
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

    [a1 touchedThreshold];
    [(_GCDevicePhysicalInputTouchInputParameters *)v45 setTouchedThreshold:v50];
    [(_GCDevicePhysicalInputJoystickElementParameters *)v4 setTouch:v45];
  }

  return v4;
}

@end