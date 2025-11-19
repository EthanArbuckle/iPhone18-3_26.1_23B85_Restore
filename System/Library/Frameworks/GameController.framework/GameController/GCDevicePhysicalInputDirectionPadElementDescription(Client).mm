@interface GCDevicePhysicalInputDirectionPadElementDescription(Client)
- (_BYTE)makeParameters;
@end

@implementation GCDevicePhysicalInputDirectionPadElementDescription(Client)

- (_BYTE)makeParameters
{
  v43.receiver = a1;
  v43.super_class = &off_1F4EAA8B0;
  v3 = objc_msgSendSuper2(&v43, sel_makeParameters);
  v4 = [a1 xySources];
  v7 = v4;
  if (v4)
  {
    [OUTLINED_FUNCTION_16_1() xySources];
    objc_claimAutoreleasedReturnValue();
    v4 = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v8 = v4;
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
    OUTLINED_FUNCTION_21_0(v4, v5, v6, 48);
  }

LABEL_4:
  if (v7)
  {
  }

  v9 = [a1 xSources];
  v12 = v9;
  if (v9)
  {
    [OUTLINED_FUNCTION_16_1() xSources];
    objc_claimAutoreleasedReturnValue();
    v9 = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v13 = v9;
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
    OUTLINED_FUNCTION_21_0(v9, v10, v11, 56);
  }

LABEL_9:
  if (v12)
  {
  }

  v14 = [a1 ySources];
  v17 = v14;
  if (v14)
  {
    [OUTLINED_FUNCTION_16_1() ySources];
    objc_claimAutoreleasedReturnValue();
    v14 = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v18 = v14;
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
    OUTLINED_FUNCTION_21_0(v14, v15, v16, 64);
  }

LABEL_14:
  if (v17)
  {
  }

  v19 = [a1 upSources];
  v22 = v19;
  if (v19)
  {
    [OUTLINED_FUNCTION_16_1() upSources];
    objc_claimAutoreleasedReturnValue();
    v19 = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v23 = v19;
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
    OUTLINED_FUNCTION_21_0(v19, v20, v21, 72);
  }

LABEL_19:
  if (v22)
  {
  }

  v24 = [a1 rightSources];
  v27 = v24;
  if (v24)
  {
    [OUTLINED_FUNCTION_16_1() rightSources];
    objc_claimAutoreleasedReturnValue();
    v24 = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v28 = v24;
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
    OUTLINED_FUNCTION_21_0(v24, v25, v26, 96);
  }

LABEL_24:
  if (v27)
  {
  }

  v29 = [a1 downSources];
  v32 = v29;
  if (v29)
  {
    [OUTLINED_FUNCTION_16_1() downSources];
    objc_claimAutoreleasedReturnValue();
    v29 = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v33 = v29;
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
    OUTLINED_FUNCTION_21_0(v29, v30, v31, 88);
  }

LABEL_29:
  if (v32)
  {
  }

  v34 = [a1 leftSources];
  v37 = v34;
  if (v34)
  {
    [OUTLINED_FUNCTION_16_1() leftSources];
    objc_claimAutoreleasedReturnValue();
    v34 = [OUTLINED_FUNCTION_5_4() setWithArray:?];
    v38 = v34;
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
    OUTLINED_FUNCTION_21_0(v34, v35, v36, 80);
  }

LABEL_34:
  if (v37)
  {
  }

  v39 = [a1 isAnalog];
  if (v3)
  {
    v3[40] = v39;
    v40 = [OUTLINED_FUNCTION_29(objc_msgSend(a1 "eventUpValueField")];
    v41 = [OUTLINED_FUNCTION_29(v40 128)];
    *(v3 + 15) = [OUTLINED_FUNCTION_29(v41 112)];
  }

  else
  {
    [a1 eventUpValueField];
    [a1 eventRightValueField];
    [a1 eventDownValueField];
    [a1 eventLeftValueField];
  }

  return v3;
}

@end