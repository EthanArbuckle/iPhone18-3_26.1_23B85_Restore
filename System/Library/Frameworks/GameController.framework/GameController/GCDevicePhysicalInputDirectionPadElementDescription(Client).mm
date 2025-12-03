@interface GCDevicePhysicalInputDirectionPadElementDescription(Client)
- (_BYTE)makeParameters;
@end

@implementation GCDevicePhysicalInputDirectionPadElementDescription(Client)

- (_BYTE)makeParameters
{
  v43.receiver = self;
  v43.super_class = &off_1F4EAA8B0;
  v3 = objc_msgSendSuper2(&v43, sel_makeParameters);
  xySources = [self xySources];
  v7 = xySources;
  if (xySources)
  {
    [OUTLINED_FUNCTION_16_1() xySources];
    objc_claimAutoreleasedReturnValue();
    xySources = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v8 = xySources;
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (v3)
  {
LABEL_3:
    OUTLINED_FUNCTION_21_0(xySources, v5, v6, 48);
  }

LABEL_4:
  if (v7)
  {
  }

  xSources = [self xSources];
  v12 = xSources;
  if (xSources)
  {
    [OUTLINED_FUNCTION_16_1() xSources];
    objc_claimAutoreleasedReturnValue();
    xSources = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v13 = xSources;
    if (!v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = 0;
  if (v3)
  {
LABEL_8:
    OUTLINED_FUNCTION_21_0(xSources, v10, v11, 56);
  }

LABEL_9:
  if (v12)
  {
  }

  ySources = [self ySources];
  v17 = ySources;
  if (ySources)
  {
    [OUTLINED_FUNCTION_16_1() ySources];
    objc_claimAutoreleasedReturnValue();
    ySources = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v18 = ySources;
    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v18 = 0;
  if (v3)
  {
LABEL_13:
    OUTLINED_FUNCTION_21_0(ySources, v15, v16, 64);
  }

LABEL_14:
  if (v17)
  {
  }

  upSources = [self upSources];
  v22 = upSources;
  if (upSources)
  {
    [OUTLINED_FUNCTION_16_1() upSources];
    objc_claimAutoreleasedReturnValue();
    upSources = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v23 = upSources;
    if (!v3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v23 = 0;
  if (v3)
  {
LABEL_18:
    OUTLINED_FUNCTION_21_0(upSources, v20, v21, 72);
  }

LABEL_19:
  if (v22)
  {
  }

  rightSources = [self rightSources];
  v27 = rightSources;
  if (rightSources)
  {
    [OUTLINED_FUNCTION_16_1() rightSources];
    objc_claimAutoreleasedReturnValue();
    rightSources = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v28 = rightSources;
    if (!v3)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v28 = 0;
  if (v3)
  {
LABEL_23:
    OUTLINED_FUNCTION_21_0(rightSources, v25, v26, 96);
  }

LABEL_24:
  if (v27)
  {
  }

  downSources = [self downSources];
  v32 = downSources;
  if (downSources)
  {
    [OUTLINED_FUNCTION_16_1() downSources];
    objc_claimAutoreleasedReturnValue();
    downSources = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v33 = downSources;
    if (!v3)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v33 = 0;
  if (v3)
  {
LABEL_28:
    OUTLINED_FUNCTION_21_0(downSources, v30, v31, 88);
  }

LABEL_29:
  if (v32)
  {
  }

  leftSources = [self leftSources];
  v37 = leftSources;
  if (leftSources)
  {
    [OUTLINED_FUNCTION_16_1() leftSources];
    objc_claimAutoreleasedReturnValue();
    leftSources = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v38 = leftSources;
    if (!v3)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v38 = 0;
  if (v3)
  {
LABEL_33:
    OUTLINED_FUNCTION_21_0(leftSources, v35, v36, 80);
  }

LABEL_34:
  if (v37)
  {
  }

  isAnalog = [self isAnalog];
  if (v3)
  {
    v3[40] = isAnalog;
    v40 = [OUTLINED_FUNCTION_29(objc_msgSend(self "eventUpValueField")];
    v41 = [OUTLINED_FUNCTION_29(v40 128)];
    *(v3 + 15) = [OUTLINED_FUNCTION_29(v41 112)];
  }

  else
  {
    [self eventUpValueField];
    [self eventRightValueField];
    [self eventDownValueField];
    [self eventLeftValueField];
  }

  return v3;
}

@end