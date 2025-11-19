id sub_2392D869C(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 1)
  {
    v26[0] = 0;
    v27[0] = 0;
    v29[0] = 0;
    v13 = sub_238F22D98(v26, a2);
    *a3 = v13;
    a3[1] = v14;
    if (!v13)
    {
      v15 = objc_opt_new();
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v26[0]];
      [v15 setCompletionErrorCode:v16];

      if (v27[0] == 1 && (sub_2392C83B0(v27)[4] & 1) != 0)
      {
        v17 = MEMORY[0x277CCABB0];
        v18 = sub_2392C83B0(v27);
        if ((v18[4] & 1) == 0)
        {
          sub_238EA195C();
        }

        v19 = [v17 numberWithUnsignedInt:*v18];
      }

      else
      {
        v19 = 0;
      }

      [v15 setTotalOperationalTime:v19];

      if (v29[0] == 1 && (sub_2392C83B0(v29)[4] & 1) != 0)
      {
        v20 = MEMORY[0x277CCABB0];
        v21 = sub_2392C83B0(v29);
        if ((v21[4] & 1) == 0)
        {
          sub_238EA195C();
        }

        v6 = [v20 numberWithUnsignedInt:*v21];
      }

      else
      {
        v6 = 0;
      }

      [v15 setPausedTime:v6];
      goto LABEL_28;
    }

LABEL_8:
    v15 = 0;
    goto LABEL_29;
  }

  if (a1)
  {
    v15 = 0;
    *a3 = 0x91E000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
    goto LABEL_29;
  }

  v26[0] = 0;
  v28[0] = 0;
  v30[0] = 0;
  v4 = sub_238F22C0C(v26, a2);
  *a3 = v4;
  a3[1] = v5;
  if (v4)
  {
    goto LABEL_8;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v26[0]];
  [v7 setErrorStateID:v8];

  if (v28[0] != 1)
  {
    [v7 setErrorStateLabel:0];
LABEL_22:
    if (v30[0] == 1)
    {
      v22 = sub_239289A18(v30);
      v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v22 length:v22[1] encoding:4];
      [v7 setErrorStateDetails:v23];

      v24 = [v7 errorStateDetails];

      if (!v24)
      {
        v12 = &xmmword_278A752A8;
        goto LABEL_25;
      }
    }

    else
    {
      [v7 setErrorStateDetails:0];
    }

    [v6 setErrorState:v7];

    v15 = v6;
    goto LABEL_28;
  }

  v9 = sub_239289A18(v28);
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v9 length:v9[1] encoding:4];
  [v7 setErrorStateLabel:v10];

  v11 = [v7 errorStateLabel];

  if (v11)
  {
    goto LABEL_22;
  }

  v12 = &xmmword_278A75298;
LABEL_25:
  *a3 = *v12;

  v15 = 0;
LABEL_28:

LABEL_29:

  return v15;
}

id sub_2392D8A2C(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 1)
  {
    v26[0] = 0;
    v27[0] = 0;
    v29[0] = 0;
    v13 = sub_238F22D98(v26, a2);
    *a3 = v13;
    a3[1] = v14;
    if (!v13)
    {
      v15 = objc_opt_new();
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v26[0]];
      [v15 setCompletionErrorCode:v16];

      if (v27[0] == 1 && (sub_2392C83B0(v27)[4] & 1) != 0)
      {
        v17 = MEMORY[0x277CCABB0];
        v18 = sub_2392C83B0(v27);
        if ((v18[4] & 1) == 0)
        {
          sub_238EA195C();
        }

        v19 = [v17 numberWithUnsignedInt:*v18];
      }

      else
      {
        v19 = 0;
      }

      [v15 setTotalOperationalTime:v19];

      if (v29[0] == 1 && (sub_2392C83B0(v29)[4] & 1) != 0)
      {
        v20 = MEMORY[0x277CCABB0];
        v21 = sub_2392C83B0(v29);
        if ((v21[4] & 1) == 0)
        {
          sub_238EA195C();
        }

        v6 = [v20 numberWithUnsignedInt:*v21];
      }

      else
      {
        v6 = 0;
      }

      [v15 setPausedTime:v6];
      goto LABEL_28;
    }

LABEL_8:
    v15 = 0;
    goto LABEL_29;
  }

  if (a1)
  {
    v15 = 0;
    *a3 = 0x97C000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
    goto LABEL_29;
  }

  v26[0] = 0;
  v28[0] = 0;
  v30[0] = 0;
  v4 = sub_238F22C0C(v26, a2);
  *a3 = v4;
  a3[1] = v5;
  if (v4)
  {
    goto LABEL_8;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v26[0]];
  [v7 setErrorStateID:v8];

  if (v28[0] != 1)
  {
    [v7 setErrorStateLabel:0];
LABEL_22:
    if (v30[0] == 1)
    {
      v22 = sub_239289A18(v30);
      v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v22 length:v22[1] encoding:4];
      [v7 setErrorStateDetails:v23];

      v24 = [v7 errorStateDetails];

      if (!v24)
      {
        v12 = &xmmword_278A752C8;
        goto LABEL_25;
      }
    }

    else
    {
      [v7 setErrorStateDetails:0];
    }

    [v6 setErrorState:v7];

    v15 = v6;
    goto LABEL_28;
  }

  v9 = sub_239289A18(v28);
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v9 length:v9[1] encoding:4];
  [v7 setErrorStateLabel:v10];

  v11 = [v7 errorStateLabel];

  if (v11)
  {
    goto LABEL_22;
  }

  v12 = &xmmword_278A752B8;
LABEL_25:
  *a3 = *v12;

  v15 = 0;
LABEL_28:

LABEL_29:

  return v15;
}

id sub_2392D8DBC(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 != 1)
  {
    if (a1)
    {
      v6 = 0;
      *a3 = 0x9DB000000B6;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
      goto LABEL_13;
    }

    v13 = 0;
    v4 = sub_238F02680(&v13, a2);
    *a3 = v4;
    a3[1] = v5;
    if (!v4)
    {
      v6 = objc_opt_new();
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v13];
      [v6 setAlarmsActive:v7];

      if (HIBYTE(v13) == 1)
      {
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_2392C86E0(&v13 + 1)];
      }

      else
      {
        v8 = 0;
      }

      [v6 setAlarmsSuppressed:v8];
      goto LABEL_12;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_13;
  }

  v12 = 0;
  v9 = sub_238F02794(&v12, a2);
  *a3 = v9;
  a3[1] = v10;
  if (v9)
  {
    goto LABEL_7;
  }

  v6 = objc_opt_new();
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v12];
  [v6 setSensorFault:v8];
LABEL_12:

LABEL_13:

  return v6;
}

id sub_2392D8F58(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 != 1)
  {
    if (a1)
    {
      v6 = 0;
      *a3 = 0xA13000000B6;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
      goto LABEL_13;
    }

    v13 = 0;
    v4 = sub_238F32A88(&v13, a2);
    *a3 = v4;
    a3[1] = v5;
    if (!v4)
    {
      v6 = objc_opt_new();
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v13];
      [v6 setValveState:v7];

      if (HIBYTE(v13) == 1)
      {
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_2392C86E0(&v13 + 1)];
      }

      else
      {
        v8 = 0;
      }

      [v6 setValveLevel:v8];
      goto LABEL_12;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_13;
  }

  v12 = 0;
  v9 = sub_238F02794(&v12, a2);
  *a3 = v9;
  a3[1] = v10;
  if (v9)
  {
    goto LABEL_7;
  }

  v6 = objc_opt_new();
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v12];
  [v6 setValveFault:v8];
LABEL_12:

LABEL_13:

  return v6;
}

id sub_2392D90F4(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0xA6B000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v37);
    sub_2393C5ADC(v6, 0, 0);
    v7 = sub_238EFD1FC(v37, a2);
    v4 = 0;
    *a3 = v7;
    a3[1] = v8;
    if (!v7)
    {
      v9 = objc_opt_new();
      v10 = objc_opt_new();
      sub_2392C82D8(v25, v37);
      while (sub_238EA1A80(v25) && sub_2392C8340(v25))
      {
        v11 = objc_opt_new();
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v26];
        [v11 setMeasurementType:v12];

        v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v27];
        [v11 setMin:v13];

        v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v28];
        [v11 setMax:v14];

        if (v29[0] == 1)
        {
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v29)];
          [v11 setStartTimestamp:v15];
        }

        else
        {
          [v11 setStartTimestamp:0];
        }

        if (v30[0] == 1)
        {
          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v30)];
          [v11 setEndTimestamp:v16];
        }

        else
        {
          [v11 setEndTimestamp:0];
        }

        if (v31[0] == 1)
        {
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v31)];
          [v11 setMinTimestamp:v17];
        }

        else
        {
          [v11 setMinTimestamp:0];
        }

        if (v32[0] == 1)
        {
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v32)];
          [v11 setMaxTimestamp:v18];
        }

        else
        {
          [v11 setMaxTimestamp:0];
        }

        if (v33[0] == 1)
        {
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_238DE36B8(v33)];
          [v11 setStartSystime:v19];
        }

        else
        {
          [v11 setStartSystime:0];
        }

        if (v34[0] == 1)
        {
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_238DE36B8(v34)];
          [v11 setEndSystime:v20];
        }

        else
        {
          [v11 setEndSystime:0];
        }

        if (v35[0] == 1)
        {
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_238DE36B8(v35)];
          [v11 setMinSystime:v21];
        }

        else
        {
          [v11 setMinSystime:0];
        }

        if (v36[0] == 1)
        {
          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_238DE36B8(v36)];
          [v11 setMaxSystime:v22];
        }

        else
        {
          [v11 setMaxSystime:0];
        }

        [v10 addObject:v11];
      }

      if (LODWORD(v25[0]) == 33 || !LODWORD(v25[0]))
      {
        [v9 setRanges:v10];

        v4 = v9;
      }

      else
      {
        v23 = v25[1];
        *a3 = v25[0];
        a3[1] = v23;

        v4 = 0;
      }
    }
  }

  return v4;
}

id sub_2392D958C(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 != 1)
  {
    if (a1)
    {
      v6 = 0;
      *a3 = 0xB30000000B6;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
      goto LABEL_87;
    }

    v86[0] = 0;
    v87[0] = 0;
    v4 = sub_238F14F0C(v86, a2);
    *a3 = v4;
    a3[1] = v5;
    if (!v4)
    {
      v6 = objc_opt_new();
      if (v86[0] == 1)
      {
        v7 = objc_opt_new();
        v8 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_239289A18(v86)];
        [v7 setEnergy:v8];

        if (sub_239289A18(v86)[8] == 1)
        {
          v9 = MEMORY[0x277CCABB0];
          v10 = sub_239289A18(v86);
          v11 = [v9 numberWithUnsignedInt:*sub_238F41E94(v10 + 8)];
          [v7 setStartTimestamp:v11];
        }

        else
        {
          [v7 setStartTimestamp:0];
        }

        if (sub_239289A18(v86)[16] == 1)
        {
          v19 = MEMORY[0x277CCABB0];
          v20 = sub_239289A18(v86);
          v21 = [v19 numberWithUnsignedInt:*sub_238F41E94(v20 + 16)];
          [v7 setEndTimestamp:v21];
        }

        else
        {
          [v7 setEndTimestamp:0];
        }

        if (sub_239289A18(v86)[24] == 1)
        {
          v25 = MEMORY[0x277CCABB0];
          v26 = sub_239289A18(v86);
          v27 = [v25 numberWithUnsignedLongLong:*sub_239289A18(v26 + 24)];
          [v7 setStartSystime:v27];
        }

        else
        {
          [v7 setStartSystime:0];
        }

        if (sub_239289A18(v86)[40] == 1)
        {
          v31 = MEMORY[0x277CCABB0];
          v32 = sub_239289A18(v86);
          v33 = [v31 numberWithUnsignedLongLong:*sub_239289A18(v32 + 40)];
          [v7 setEndSystime:v33];
        }

        else
        {
          [v7 setEndSystime:0];
        }

        if (sub_239289A18(v86)[56] == 1)
        {
          v37 = MEMORY[0x277CCABB0];
          v38 = sub_239289A18(v86);
          v39 = [v37 numberWithLongLong:*sub_239289A18(v38 + 56)];
          [v7 setApparentEnergy:v39];
        }

        else
        {
          [v7 setApparentEnergy:0];
        }

        if (sub_239289A18(v86)[72] == 1)
        {
          v43 = MEMORY[0x277CCABB0];
          v44 = sub_239289A18(v86);
          v45 = [v43 numberWithLongLong:*sub_239289A18(v44 + 72)];
          [v7 setReactiveEnergy:v45];
        }

        else
        {
          [v7 setReactiveEnergy:0];
        }
      }

      else
      {
        v7 = 0;
      }

      [v6 setEnergyImported:v7];

      if (v87[0] == 1)
      {
        v49 = objc_opt_new();
        v50 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_239289A18(v87)];
        [v49 setEnergy:v50];

        if (sub_239289A18(v87)[8] == 1)
        {
          v51 = MEMORY[0x277CCABB0];
          v52 = sub_239289A18(v87);
          v53 = [v51 numberWithUnsignedInt:*sub_238F41E94(v52 + 8)];
          [v49 setStartTimestamp:v53];
        }

        else
        {
          [v49 setStartTimestamp:0];
        }

        if (sub_239289A18(v87)[16] == 1)
        {
          v54 = MEMORY[0x277CCABB0];
          v55 = sub_239289A18(v87);
          v56 = [v54 numberWithUnsignedInt:*sub_238F41E94(v55 + 16)];
          [v49 setEndTimestamp:v56];
        }

        else
        {
          [v49 setEndTimestamp:0];
        }

        if (sub_239289A18(v87)[24] == 1)
        {
          v57 = MEMORY[0x277CCABB0];
          v58 = sub_239289A18(v87);
          v59 = [v57 numberWithUnsignedLongLong:*sub_239289A18(v58 + 24)];
          [v49 setStartSystime:v59];
        }

        else
        {
          [v49 setStartSystime:0];
        }

        if (sub_239289A18(v87)[40] == 1)
        {
          v70 = MEMORY[0x277CCABB0];
          v71 = sub_239289A18(v87);
          v72 = [v70 numberWithUnsignedLongLong:*sub_239289A18(v71 + 40)];
          [v49 setEndSystime:v72];
        }

        else
        {
          [v49 setEndSystime:0];
        }

        if (sub_239289A18(v87)[56] == 1)
        {
          v76 = MEMORY[0x277CCABB0];
          v77 = sub_239289A18(v87);
          v78 = [v76 numberWithLongLong:*sub_239289A18(v77 + 56)];
          [v49 setApparentEnergy:v78];
        }

        else
        {
          [v49 setApparentEnergy:0];
        }

        if (sub_239289A18(v87)[72] == 1)
        {
LABEL_84:
          v82 = MEMORY[0x277CCABB0];
          v83 = sub_239289A18(v87);
          v84 = [v82 numberWithLongLong:*sub_239289A18(v83 + 72)];
          [v49 setReactiveEnergy:v84];

          goto LABEL_86;
        }

LABEL_85:
        [v49 setReactiveEnergy:0];
        goto LABEL_86;
      }

      v49 = 0;
      goto LABEL_86;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_87;
  }

  v86[0] = 0;
  v87[0] = 0;
  v12 = sub_238F14F0C(v86, a2);
  *a3 = v12;
  a3[1] = v13;
  if (v12)
  {
    goto LABEL_8;
  }

  v6 = objc_opt_new();
  if (v86[0] == 1)
  {
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_239289A18(v86)];
    [v14 setEnergy:v15];

    if (sub_239289A18(v86)[8] == 1)
    {
      v16 = MEMORY[0x277CCABB0];
      v17 = sub_239289A18(v86);
      v18 = [v16 numberWithUnsignedInt:*sub_238F41E94(v17 + 8)];
      [v14 setStartTimestamp:v18];
    }

    else
    {
      [v14 setStartTimestamp:0];
    }

    if (sub_239289A18(v86)[16] == 1)
    {
      v22 = MEMORY[0x277CCABB0];
      v23 = sub_239289A18(v86);
      v24 = [v22 numberWithUnsignedInt:*sub_238F41E94(v23 + 16)];
      [v14 setEndTimestamp:v24];
    }

    else
    {
      [v14 setEndTimestamp:0];
    }

    if (sub_239289A18(v86)[24] == 1)
    {
      v28 = MEMORY[0x277CCABB0];
      v29 = sub_239289A18(v86);
      v30 = [v28 numberWithUnsignedLongLong:*sub_239289A18(v29 + 24)];
      [v14 setStartSystime:v30];
    }

    else
    {
      [v14 setStartSystime:0];
    }

    if (sub_239289A18(v86)[40] == 1)
    {
      v34 = MEMORY[0x277CCABB0];
      v35 = sub_239289A18(v86);
      v36 = [v34 numberWithUnsignedLongLong:*sub_239289A18(v35 + 40)];
      [v14 setEndSystime:v36];
    }

    else
    {
      [v14 setEndSystime:0];
    }

    if (sub_239289A18(v86)[56] == 1)
    {
      v40 = MEMORY[0x277CCABB0];
      v41 = sub_239289A18(v86);
      v42 = [v40 numberWithLongLong:*sub_239289A18(v41 + 56)];
      [v14 setApparentEnergy:v42];
    }

    else
    {
      [v14 setApparentEnergy:0];
    }

    if (sub_239289A18(v86)[72] == 1)
    {
      v46 = MEMORY[0x277CCABB0];
      v47 = sub_239289A18(v86);
      v48 = [v46 numberWithLongLong:*sub_239289A18(v47 + 72)];
      [v14 setReactiveEnergy:v48];
    }

    else
    {
      [v14 setReactiveEnergy:0];
    }
  }

  else
  {
    v14 = 0;
  }

  [v6 setEnergyImported:v14];

  if (v87[0] == 1)
  {
    v49 = objc_opt_new();
    v60 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_239289A18(v87)];
    [v49 setEnergy:v60];

    if (sub_239289A18(v87)[8] == 1)
    {
      v61 = MEMORY[0x277CCABB0];
      v62 = sub_239289A18(v87);
      v63 = [v61 numberWithUnsignedInt:*sub_238F41E94(v62 + 8)];
      [v49 setStartTimestamp:v63];
    }

    else
    {
      [v49 setStartTimestamp:0];
    }

    if (sub_239289A18(v87)[16] == 1)
    {
      v64 = MEMORY[0x277CCABB0];
      v65 = sub_239289A18(v87);
      v66 = [v64 numberWithUnsignedInt:*sub_238F41E94(v65 + 16)];
      [v49 setEndTimestamp:v66];
    }

    else
    {
      [v49 setEndTimestamp:0];
    }

    if (sub_239289A18(v87)[24] == 1)
    {
      v67 = MEMORY[0x277CCABB0];
      v68 = sub_239289A18(v87);
      v69 = [v67 numberWithUnsignedLongLong:*sub_239289A18(v68 + 24)];
      [v49 setStartSystime:v69];
    }

    else
    {
      [v49 setStartSystime:0];
    }

    if (sub_239289A18(v87)[40] == 1)
    {
      v73 = MEMORY[0x277CCABB0];
      v74 = sub_239289A18(v87);
      v75 = [v73 numberWithUnsignedLongLong:*sub_239289A18(v74 + 40)];
      [v49 setEndSystime:v75];
    }

    else
    {
      [v49 setEndSystime:0];
    }

    if (sub_239289A18(v87)[56] == 1)
    {
      v79 = MEMORY[0x277CCABB0];
      v80 = sub_239289A18(v87);
      v81 = [v79 numberWithLongLong:*sub_239289A18(v80 + 56)];
      [v49 setApparentEnergy:v81];
    }

    else
    {
      [v49 setApparentEnergy:0];
    }

    if (sub_239289A18(v87)[72] == 1)
    {
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  v49 = 0;
LABEL_86:
  [v6 setEnergyExported:v49];

LABEL_87:

  return v6;
}

void sub_2392DA0B4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_2392DA150(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 1)
  {
    v10 = sub_238EFFF1C(&v17, a2);
    *a3 = v10;
    a3[1] = v11;
    if (v10)
    {
LABEL_7:
      v6 = 0;
      goto LABEL_24;
    }

    v6 = objc_opt_new();
  }

  else
  {
    if (!a1)
    {
      v17 = 0;
      v18[0] = 0;
      v19[0] = 0;
      v20[0] = 0;
      v21[0] = 0;
      v22[0] = 0;
      v4 = sub_238F32E20(&v17, a2);
      *a3 = v4;
      a3[1] = v5;
      if (!v4)
      {
        v6 = objc_opt_new();
        v7 = objc_opt_new();
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
        [v7 setDuration:v8];

        if (v18[0] == 1)
        {
          v9 = [MEMORY[0x277CCABB0] numberWithBool:*sub_2392C86E0(v18)];
          [v7 setOneShot:v9];
        }

        else
        {
          [v7 setOneShot:0];
        }

        if (v19[0] == 1)
        {
          v12 = [MEMORY[0x277CCABB0] numberWithBool:*sub_2392C86E0(v19)];
          [v7 setEmergencyBoost:v12];
        }

        else
        {
          [v7 setEmergencyBoost:0];
        }

        if (v20[0] == 1)
        {
          v13 = [MEMORY[0x277CCABB0] numberWithShort:*sub_2392C83D0(v20)];
          [v7 setTemporarySetpoint:v13];
        }

        else
        {
          [v7 setTemporarySetpoint:0];
        }

        if (v21[0] == 1)
        {
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_2392C86E0(v21)];
          [v7 setTargetPercentage:v14];
        }

        else
        {
          [v7 setTargetPercentage:0];
        }

        if (v22[0] == 1)
        {
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_2392C86E0(v22)];
          [v7 setTargetReheat:v15];
        }

        else
        {
          [v7 setTargetReheat:0];
        }

        [v6 setBoostInfo:v7];

        goto LABEL_24;
      }

      goto LABEL_7;
    }

    v6 = 0;
    *a3 = 0xB73000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
  }

LABEL_24:

  return v6;
}

void sub_2392DA3F8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_2392DA430(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0xBD4000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
    goto LABEL_46;
  }

  LOBYTE(v34[0]) = 0;
  v40 = 0;
  v5 = sub_238F0AD84(v34, a2);
  *a3 = v5;
  a3[1] = v6;
  if (v5)
  {
    v4 = 0;
    goto LABEL_46;
  }

  v7 = objc_opt_new();
  if (v40)
  {
    v8 = objc_opt_new();
    if (v40 != 1)
    {
      goto LABEL_51;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v34[0]];
    [v8 setPeriodStart:v9];

    if (v40 != 1)
    {
      goto LABEL_51;
    }

    if (v35)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v34[1]];
      [v8 setPeriodEnd:v10];
    }

    else
    {
      [v8 setPeriodEnd:0];
    }

    if (v40 != 1)
    {
      goto LABEL_51;
    }

    if (v36[0] == 1)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_239289A18(v36)];
      [v8 setPrice:v11];
    }

    else
    {
      [v8 setPrice:0];
    }

    if (v40 != 1)
    {
      goto LABEL_51;
    }

    if (v37[0] == 1)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithShort:*sub_2392C83D0(v37)];
      [v8 setPriceLevel:v12];
    }

    else
    {
      [v8 setPriceLevel:0];
    }

    if (v40 != 1)
    {
      goto LABEL_51;
    }

    if (v38[0] == 1)
    {
      v13 = sub_239289A18(v38);
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v13 length:v13[1] encoding:4];
      [v8 setDescriptionString:v14];

      v15 = [v8 descriptionString];

      if (!v15)
      {
        *a3 = xmmword_278A752D8;
LABEL_50:

        v4 = 0;
        goto LABEL_45;
      }
    }

    else
    {
      [v8 setDescriptionString:0];
    }

    if ((v40 & 1) == 0)
    {
LABEL_51:
      sub_238EA195C();
    }

    if (v39[0] == 1)
    {
      v16 = objc_opt_new();
      if ((v40 & 1) == 0)
      {
        sub_238EA195C();
      }

      v17 = sub_239289A18(v39);
      sub_2393C5AAC(v29);
      v27 = 0;
      v28 = 0;
      sub_2393C5BDC(v29, v17);
      v30 = 0;
      v31 = 0;
      v32[0] = 0;
      v33[0] = 0;
      while (sub_238EA1A80(&v27) && sub_238EA2704(&v27))
      {
        v18 = objc_opt_new();
        v19 = [MEMORY[0x277CCABB0] numberWithLongLong:v30];
        [v18 setPrice:v19];

        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v31];
        [v18 setSource:v20];

        if (v32[0] == 1)
        {
          v21 = sub_238DE36B8(v32);
          v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v21 length:v21[1] encoding:4];
          [v18 setDescriptionString:v22];

          v23 = [v18 descriptionString];

          if (!v23)
          {
            *a3 = xmmword_278A752E8;

            goto LABEL_49;
          }
        }

        else
        {
          [v18 setDescriptionString:0];
        }

        if (v33[0] == 1)
        {
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v33)];
          [v18 setTariffComponentID:v24];
        }

        else
        {
          [v18 setTariffComponentID:0];
        }

        [v16 addObject:v18];
      }

      if (v27 == 33 || !v27)
      {
        [v8 setComponents:v16];

        goto LABEL_44;
      }

      v25 = v28;
      *a3 = v27;
      a3[1] = v25;
LABEL_49:

      goto LABEL_50;
    }

    [v8 setComponents:0];
  }

  else
  {
    v8 = 0;
  }

LABEL_44:
  [v7 setCurrentPrice:v8];

  v4 = v7;
LABEL_45:

LABEL_46:

  return v4;
}

id sub_2392DA96C(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 2)
  {
    v21[0] = 0;
    v22 = 0;
    v19 = 0uLL;
    v20[0] = 0;
    v10 = sub_238F1EF10(&v19, a2);
    v5 = 0;
    *a3 = v10;
    a3[1] = v11;
    if (v10)
    {
      goto LABEL_26;
    }

    v7 = objc_opt_new();
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:?];
    [v7 setMessageID:v12];

    if (v20[0] == 1 && (sub_2392C83B0(v20)[4] & 1) != 0)
    {
      v13 = MEMORY[0x277CCABB0];
      v14 = sub_2392C83B0(v20);
      if ((v14[4] & 1) == 0)
      {
        sub_238EA195C();
      }

      v15 = [v13 numberWithUnsignedInt:*v14];
    }

    else
    {
      v15 = 0;
    }

    [v7 setResponseID:v15];

    if (v21[0] == 1 && (sub_239289A18(v21)[16] & 1) != 0)
    {
      v16 = sub_239289A18(v21);
      if ((v16[16] & 1) == 0)
      {
        sub_238EA195C();
      }

      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v16 length:*(v16 + 1) encoding:4];
      if (!v5)
      {
        *a3 = xmmword_278A752F8;
        goto LABEL_25;
      }
    }

    else
    {
      v5 = 0;
    }

    [v7 setReply:v5];

    if ((v22 & 0x100) != 0)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v22];
    }

    else
    {
      v17 = 0;
    }

    [v7 setFutureMessagesPreference:v17];

    v5 = v7;
    goto LABEL_25;
  }

  if (a1 == 1)
  {
    v19 = 0uLL;
    v8 = sub_238F16E50(&v19, a2);
    v5 = 0;
    *a3 = v8;
    a3[1] = v9;
    if (v8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0;
      *a3 = 0xC3C000000B6;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
      goto LABEL_26;
    }

    v19 = 0uLL;
    v4 = sub_238F16E50(&v19, a2);
    v5 = 0;
    *a3 = v4;
    a3[1] = v6;
    if (v4)
    {
      goto LABEL_26;
    }
  }

  v5 = objc_opt_new();
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:?];
  [v5 setMessageID:v7];
LABEL_25:

LABEL_26:

  return v5;
}

id sub_2392DAC94(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v17[0] = 0;
        v18 = 0;
        v19 = 0;
        v4 = sub_238F0EFA8(v17, a2);
        v5 = 0;
        *a3 = v4;
        a3[1] = v6;
        if (v4)
        {
          goto LABEL_17;
        }

        v5 = objc_opt_new();
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v17[0]];
        [v5 setCause:v7];

        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18];
        [v5 setDuration:v8];

        v9 = [MEMORY[0x277CCABB0] numberWithLongLong:v19];
        [v5 setEnergyUse:v9];
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    v12 = sub_238EFFF1C(v17, a2);
    *a3 = v12;
    a3[1] = v13;
    if (!v12)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
LABEL_11:
      v5 = 0;
      *a3 = 0xC8B000000B6;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
      goto LABEL_17;
    }

    v17[0] = 0;
    v10 = sub_238F0F0E4(v17, a2);
    *a3 = v10;
    a3[1] = v11;
    if (!v10)
    {
      v5 = objc_opt_new();
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v17[0]];
      [v5 setCause:v9];
LABEL_10:

      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v14 = sub_238EFFF1C(v17, a2);
  *a3 = v14;
  a3[1] = v15;
  if (v14)
  {
LABEL_15:
    v5 = 0;
    goto LABEL_17;
  }

LABEL_16:
  v5 = objc_opt_new();
LABEL_17:

  return v5;
}

id sub_2392DAE90(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      LODWORD(v34) = 0;
      WORD2(v34) = 0;
      *(&v34 + 1) = 0;
      LOBYTE(v35) = 0;
      v16 = sub_238F16AF4(&v34, a2);
      v5 = 0;
      *a3 = v16;
      a3[1] = v17;
      if (v16)
      {
        goto LABEL_36;
      }

      v5 = objc_opt_new();
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v34];
      [v5 setSessionID:v18];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE4(v34)];
      [v5 setState:v19];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE5(v34)];
      [v5 setReason:v20];

      v21 = [MEMORY[0x277CCABB0] numberWithLongLong:*(&v34 + 1)];
      [v5 setEnergyTransferred:v21];

      if (v35 == 1)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_239289A18(&v35)];
      }

      else
      {
        v10 = 0;
      }

      [v5 setEnergyDischarged:v10];
      goto LABEL_35;
    }

    if (a1 != 4)
    {
      if (a1 != 5)
      {
        goto LABEL_18;
      }

      v34 = 0uLL;
      v11 = sub_238F16E50(&v34, a2);
      v5 = 0;
      *a3 = v11;
      a3[1] = v12;
      if (v11)
      {
        goto LABEL_36;
      }

      v5 = objc_opt_new();
      v13 = [MEMORY[0x277CBEA90] dataWithBytes:v34 length:?];
      [v5 setUid:v13];
LABEL_28:

      goto LABEL_36;
    }

    LOBYTE(v34) = 0;
    BYTE4(v34) = 0;
    WORD4(v34) = 0;
    BYTE10(v34) = 0;
    v28 = sub_238F16D18(&v34, a2);
    *a3 = v28;
    a3[1] = v29;
    if (!v28)
    {
      v5 = objc_opt_new();
      if (BYTE4(v34) == 1)
      {
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v34];
      }

      else
      {
        v30 = 0;
      }

      [v5 setSessionID:v30];

      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE8(v34)];
      [v5 setState:v31];

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE9(v34)];
      [v5 setFaultStatePreviousState:v32];

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE10(v34)];
      [v5 setFaultStateCurrentState:v13];
      goto LABEL_28;
    }

LABEL_23:
    v5 = 0;
    goto LABEL_36;
  }

  if (!a1)
  {
    LODWORD(v34) = 0;
    v14 = sub_238F01A6C(&v34, a2);
    *a3 = v14;
    a3[1] = v15;
    if (!v14)
    {
      v5 = objc_opt_new();
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v34];
      [v5 setSessionID:v13];
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if (a1 == 1)
  {
    LODWORD(v34) = 0;
    BYTE4(v34) = 0;
    DWORD2(v34) = 0;
    v35 = 0;
    v36[0] = 0;
    v22 = sub_238F16778(&v34, a2);
    v5 = 0;
    *a3 = v22;
    a3[1] = v23;
    if (v22)
    {
      goto LABEL_36;
    }

    v5 = objc_opt_new();
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v34];
    [v5 setSessionID:v24];

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE4(v34)];
    [v5 setState:v25];

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD2(v34)];
    [v5 setSessionDuration:v26];

    v27 = [MEMORY[0x277CCABB0] numberWithLongLong:v35];
    [v5 setSessionEnergyCharged:v27];

    if (v36[0] == 1)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_239289A18(v36)];
    }

    else
    {
      v10 = 0;
    }

    [v5 setSessionEnergyDischarged:v10];
    goto LABEL_35;
  }

  if (a1 != 2)
  {
LABEL_18:
    v5 = 0;
    *a3 = 0xD54000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
    goto LABEL_36;
  }

  LODWORD(v34) = 0;
  BYTE4(v34) = 0;
  *(&v34 + 1) = 0;
  LOBYTE(v35) = 0;
  v4 = sub_238F16930(&v34, a2);
  v5 = 0;
  *a3 = v4;
  a3[1] = v6;
  if (v4)
  {
    goto LABEL_36;
  }

  v5 = objc_opt_new();
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v34];
  [v5 setSessionID:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE4(v34)];
  [v5 setState:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:*(&v34 + 1)];
  [v5 setMaximumCurrent:v9];

  if (v35 == 1)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_239289A18(&v35)];
  }

  else
  {
    v10 = 0;
  }

  [v5 setMaximumDischargeCurrent:v10];
LABEL_35:

LABEL_36:

  return v5;
}

id sub_2392DB4BC(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0xDC1000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
  }

  else
  {
    LOBYTE(v15[0]) = 0;
    v21 = 0;
    v5 = sub_238F155EC(v15, a2);
    *a3 = v5;
    a3[1] = v6;
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v4 = objc_opt_new();
      if (v21)
      {
        v7 = objc_opt_new();
        if (v21 != 1)
        {
          goto LABEL_21;
        }

        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15[0]];
        [v7 setPeriodStart:v8];

        if (v21 != 1)
        {
          goto LABEL_21;
        }

        if (v16)
        {
          v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15[1]];
          [v7 setPeriodEnd:v9];
        }

        else
        {
          [v7 setPeriodEnd:0];
        }

        if (v21 != 1)
        {
          goto LABEL_21;
        }

        v10 = [MEMORY[0x277CCABB0] numberWithShort:v17];
        [v7 setGridCarbonIntensity:v10];

        if (v21 != 1)
        {
          goto LABEL_21;
        }

        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v18];
        [v7 setGridCarbonLevel:v11];

        if (v21 != 1 || ([MEMORY[0x277CCABB0] numberWithShort:v19], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "setLocalCarbonIntensity:", v12), v12, (v21 & 1) == 0))
        {
LABEL_21:
          sub_238EA195C();
        }

        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v20];
        [v7 setLocalCarbonLevel:v13];
      }

      else
      {
        v7 = 0;
      }

      [v4 setCurrentConditions:v7];
    }
  }

  return v4;
}

void sub_2392DB6C8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_2392DB700(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        LOBYTE(v71) = 0;
        v25 = sub_238F1310C(&v71, a2);
        *a3 = v25;
        a3[1] = v26;
        if (!v25)
        {
          v6 = objc_opt_new();
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v71];
          [v6 setAlarmCode:v7];
          goto LABEL_24;
        }

        goto LABEL_32;
      }

      if (a1 == 1)
      {
        LOBYTE(v71) = 0;
        v4 = sub_238F1327C(&v71, a2);
        *a3 = v4;
        a3[1] = v5;
        if (!v4)
        {
          v6 = objc_opt_new();
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v71];
          [v6 setDoorState:v7];
LABEL_24:

          goto LABEL_115;
        }

        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (a1 != 2)
    {
      LOWORD(v71) = 0;
      BYTE2(v71) = 0;
      BYTE4(v71) = 0;
      BYTE6(v71) = 0;
      LOWORD(v72) = 0;
      LOBYTE(v73) = 0;
      v74[0] = 0;
      LOBYTE(v75) = 0;
      v13 = sub_238F136E8(&v71, a2);
      *a3 = v13;
      a3[1] = v14;
      if (!v13)
      {
        v10 = objc_opt_new();
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v71];
        [v10 setLockOperationType:v15];

        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v71)];
        [v10 setOperationSource:v16];

        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v71)];
        [v10 setOperationError:v17];

        if ((v71 & 0x1000000000000) != 0)
        {
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v71)];
        }

        else
        {
          v18 = 0;
        }

        [v10 setUserIndex:v18];

        if (BYTE1(v72) == 1)
        {
          v55 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v72];
        }

        else
        {
          v55 = 0;
        }

        [v10 setFabricIndex:v55];

        if (v74[0] == 1)
        {
          v62 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v73];
        }

        else
        {
          v62 = 0;
        }

        [v10 setSourceNode:v62];

        if (v75 == 1 && (sub_239289A18(&v75)[72] & 1) != 0)
        {
          v44 = objc_opt_new();
          v64 = sub_239289A18(&v75);
          if ((v64[72] & 1) == 0)
          {
            sub_238EA195C();
          }

          sub_2392DEA70(v64, &v79);
          while (sub_2392DEAB4(&v79))
          {
            v65 = objc_opt_new();
            v66 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v82];
            [v65 setCredentialType:v66];

            v67 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v83];
            [v65 setCredentialIndex:v67];

            [v44 addObject:v65];
          }

          if (v79 != 33)
          {
            v68 = v79;
            if (v79)
            {
LABEL_123:
              v69 = v80[0];
              goto LABEL_124;
            }
          }
        }

        else
        {
          v44 = 0;
        }

        goto LABEL_113;
      }

LABEL_32:
      v6 = 0;
      goto LABEL_115;
    }

    LOWORD(v71) = 0;
    BYTE2(v71) = 0;
    BYTE4(v71) = 0;
    HIWORD(v71) = 0;
    LOBYTE(v72) = 0;
    LOBYTE(v73) = 0;
    v74[0] = 0;
    v33 = sub_238F134B0(&v71, a2);
    *a3 = v33;
    a3[1] = v34;
    if (v33)
    {
      goto LABEL_32;
    }

    v10 = objc_opt_new();
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v71];
    [v10 setLockOperationType:v35];

    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v71)];
    [v10 setOperationSource:v36];

    if ((v71 & 0x100000000) != 0)
    {
      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v71)];
    }

    else
    {
      v37 = 0;
    }

    [v10 setUserIndex:v37];

    if (HIBYTE(v71) == 1)
    {
      v48 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE6(v71)];
    }

    else
    {
      v48 = 0;
    }

    [v10 setFabricIndex:v48];

    if (v73 == 1)
    {
      v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v72];
    }

    else
    {
      v50 = 0;
    }

    [v10 setSourceNode:v50];

    if (v74[0] == 1 && (sub_239289A18(v74)[72] & 1) != 0)
    {
      v44 = objc_opt_new();
      v57 = sub_239289A18(v74);
      if ((v57[72] & 1) == 0)
      {
        sub_238EA195C();
      }

      sub_2392DEA70(v57, &v79);
      while (sub_2392DEAB4(&v79))
      {
        v58 = objc_opt_new();
        v59 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v82];
        [v58 setCredentialType:v59];

        v60 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v83];
        [v58 setCredentialIndex:v60];

        [v44 addObject:v58];
      }

      if (v79 != 33)
      {
        v68 = v79;
        if (v79)
        {
          goto LABEL_123;
        }
      }
    }

    else
    {
      v44 = 0;
    }

LABEL_113:
    [v10 setCredentials:v44];

    v6 = v10;
    goto LABEL_114;
  }

  if (a1 > 323551232)
  {
    if (a1 == 323551233)
    {
      LOWORD(v79) = 0;
      BYTE2(v79) = 0;
      BYTE4(v79) = 0;
      HIWORD(v79) = 0;
      LOBYTE(v80[0]) = 0;
      v81 = 0;
      v38 = sub_238F13DD8(&v79, a2);
      *a3 = v38;
      a3[1] = v39;
      if (v38)
      {
        goto LABEL_32;
      }

      v10 = objc_opt_new();
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v79];
      [v10 setLockOperationType:v40];

      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v79)];
      [v10 setOperationError:v41];

      if ((v79 & 0x100000000) != 0)
      {
        v42 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v79)];
      }

      else
      {
        v42 = 0;
      }

      [v10 setUserIndex:v42];

      if (HIBYTE(v79) == 1)
      {
        v49 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE6(v79)];
      }

      else
      {
        v49 = 0;
      }

      [v10 setFabricIndex:v49];

      if ((v81 & 1) == 0)
      {
        v44 = 0;
        goto LABEL_113;
      }

      v44 = objc_opt_new();
      if ((v81 & 1) == 0)
      {
        sub_238EA195C();
      }

      sub_2393C5AAC(&v73);
      v71 = 0;
      v72 = 0;
      sub_2393C5BDC(&v73, v80);
      v77 = 0;
      v78 = 0;
      while (sub_2392DEB08(&v71))
      {
        v51 = objc_opt_new();
        v52 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v77];
        [v51 setCredentialType:v52];

        v53 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v78];
        [v51 setCredentialIndex:v53];

        [v44 addObject:v51];
      }

      if (v71 == 33)
      {
        goto LABEL_113;
      }

      v68 = v71;
      if (!v71)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }

    if (a1 != 323551234)
    {
LABEL_33:
      v6 = 0;
      *a3 = 0xF90000000B6;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
      goto LABEL_115;
    }

    LOWORD(v71) = 0;
    BYTE2(v71) = 0;
    BYTE4(v71) = 0;
    BYTE6(v71) = 0;
    LOWORD(v72) = 0;
    LOBYTE(v73) = 0;
    v74[0] = 0;
    LOBYTE(v75) = 0;
    v76 = 0;
    v19 = sub_238F13FCC(&v71, a2);
    *a3 = v19;
    a3[1] = v20;
    if (v19)
    {
      goto LABEL_32;
    }

    v6 = objc_opt_new();
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v71];
    [v6 setLockDataType:v21];

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v71)];
    [v6 setDataOperationType:v22];

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v71)];
    [v6 setOperationSource:v23];

    if ((v71 & 0x1000000000000) != 0)
    {
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v71)];
    }

    else
    {
      v24 = 0;
    }

    [v6 setUserIndex:v24];

    if (BYTE1(v72) == 1)
    {
      v56 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v72];
    }

    else
    {
      v56 = 0;
    }

    [v6 setFabricIndex:v56];

    if (v74[0] == 1)
    {
      v63 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v73];
    }

    else
    {
      v63 = 0;
    }

    [v6 setSourceNode:v63];

    if (v76 != 1)
    {
      v10 = 0;
      goto LABEL_105;
    }
  }

  else
  {
    if (a1 != 4)
    {
      if (a1 == 323551232)
      {
        LOBYTE(v79) = 0;
        BYTE2(v79) = 0;
        BYTE4(v79) = 0;
        HIWORD(v79) = 0;
        LOBYTE(v80[0]) = 0;
        v81 = 0;
        v8 = sub_238F13C20(&v79, a2);
        *a3 = v8;
        a3[1] = v9;
        if (v8)
        {
          goto LABEL_32;
        }

        v10 = objc_opt_new();
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v79];
        [v10 setLockOperationType:v11];

        if ((v79 & 0x100000000) != 0)
        {
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v79)];
        }

        else
        {
          v12 = 0;
        }

        [v10 setUserIndex:v12];

        if (HIBYTE(v79) == 1)
        {
          v43 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE6(v79)];
        }

        else
        {
          v43 = 0;
        }

        [v10 setFabricIndex:v43];

        if ((v81 & 1) == 0)
        {
          v44 = 0;
          goto LABEL_113;
        }

        v44 = objc_opt_new();
        if ((v81 & 1) == 0)
        {
          sub_238EA195C();
        }

        sub_2393C5AAC(&v73);
        v71 = 0;
        v72 = 0;
        sub_2393C5BDC(&v73, v80);
        v77 = 0;
        v78 = 0;
        while (sub_2392DEB08(&v71))
        {
          v45 = objc_opt_new();
          v46 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v77];
          [v45 setCredentialType:v46];

          v47 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v78];
          [v45 setCredentialIndex:v47];

          [v44 addObject:v45];
        }

        if (v71 == 33)
        {
          goto LABEL_113;
        }

        v68 = v71;
        if (!v71)
        {
          goto LABEL_113;
        }

LABEL_112:
        v69 = v72;
LABEL_124:
        *a3 = v68;
        a3[1] = v69;

        v6 = 0;
        goto LABEL_114;
      }

      goto LABEL_33;
    }

    LOWORD(v71) = 0;
    BYTE2(v71) = 0;
    BYTE4(v71) = 0;
    BYTE6(v71) = 0;
    LOWORD(v72) = 0;
    LOBYTE(v73) = 0;
    v74[0] = 0;
    LOBYTE(v75) = 0;
    v76 = 0;
    v27 = sub_238F13948(&v71, a2);
    *a3 = v27;
    a3[1] = v28;
    if (v27)
    {
      goto LABEL_32;
    }

    v6 = objc_opt_new();
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v71];
    [v6 setLockDataType:v29];

    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v71)];
    [v6 setDataOperationType:v30];

    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v71)];
    [v6 setOperationSource:v31];

    if ((v71 & 0x1000000000000) != 0)
    {
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v71)];
    }

    else
    {
      v32 = 0;
    }

    [v6 setUserIndex:v32];

    if (BYTE1(v72) == 1)
    {
      v54 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v72];
    }

    else
    {
      v54 = 0;
    }

    [v6 setFabricIndex:v54];

    if (v74[0] == 1)
    {
      v61 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v73];
    }

    else
    {
      v61 = 0;
    }

    [v6 setSourceNode:v61];

    if (v76 != 1)
    {
      v10 = 0;
      goto LABEL_105;
    }
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v75];
LABEL_105:
  [v6 setDataIndex:v10];
LABEL_114:

LABEL_115:

  return v6;
}

id sub_2392DC61C(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      LOBYTE(v23) = 0;
      v19 = sub_238F01C20(&v23, a2);
      *a3 = v19;
      a3[1] = v20;
      if (!v19)
      {
        v7 = objc_opt_new();
        v10 = [MEMORY[0x277CCABB0] numberWithBool:v23];
        [v7 setEngageValue:v10];
        goto LABEL_21;
      }
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_10;
      }

      LOBYTE(v23) = 0;
      v8 = sub_238F01C20(&v23, a2);
      *a3 = v8;
      a3[1] = v9;
      if (!v8)
      {
        v7 = objc_opt_new();
        v10 = [MEMORY[0x277CCABB0] numberWithBool:v23];
        [v7 setSecureValue:v10];
LABEL_21:

        goto LABEL_27;
      }
    }

LABEL_19:
    v7 = 0;
    goto LABEL_27;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v5 = sub_238EFFF1C(&v23, a2);
      *a3 = v5;
      a3[1] = v6;
      if (!v5)
      {
        v7 = objc_opt_new();
        goto LABEL_27;
      }

      goto LABEL_19;
    }

LABEL_10:
    v7 = 0;
    *a3 = 0xFF7000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
    goto LABEL_27;
  }

  sub_2393C5AAC(v27);
  sub_2393C5ADC(v27, 0, 0);
  v11 = sub_238EFD1FC(v27, a2);
  v7 = 0;
  *a3 = v11;
  a3[1] = v12;
  if (!v11)
  {
    v13 = objc_opt_new();
    v14 = objc_opt_new();
    sub_2393C5AAC(v25);
    v23 = 0;
    v24 = 0;
    sub_2393C5BDC(v25, v27);
    while (1)
    {
      v15 = sub_238EA1A80(&v23);
      LODWORD(v16) = v23;
      if (v23)
      {
        v15 = 0;
      }

      if (!v15)
      {
        break;
      }

      v26[0] = 0;
      v16 = sub_238F000A4(v25, v26);
      v23 = v16;
      v24 = v17;
      if (v16)
      {
        break;
      }

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v26[0]];
      [v14 addObject:v18];
    }

    if (v16 == 33 || !v23)
    {
      [v13 setErrorState:v14];

      v7 = v13;
    }

    else
    {
      v21 = v24;
      *a3 = v23;
      a3[1] = v21;

      v7 = 0;
    }
  }

LABEL_27:

  return v7;
}

id sub_2392DC904(int a1, uint64_t a2, unint64_t *a3)
{
  switch(a1)
  {
    case 0:
      v4 = sub_238EFFF1C(&v40, a2);
      *a3 = v4;
      a3[1] = v5;
      if (v4)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    case 1:
      v26 = sub_238EFFF1C(&v40, a2);
      *a3 = v26;
      a3[1] = v27;
      if (!v26)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    case 2:
      v18 = sub_238EFFF1C(&v40, a2);
      *a3 = v18;
      a3[1] = v19;
      if (!v18)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    case 3:
      v22 = sub_238EFFF1C(&v40, a2);
      *a3 = v22;
      a3[1] = v23;
      if (!v22)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    case 4:
      v12 = sub_238EFFF1C(&v40, a2);
      *a3 = v12;
      a3[1] = v13;
      if (!v12)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    case 5:
      v29 = sub_238EFFF1C(&v40, a2);
      *a3 = v29;
      a3[1] = v30;
      if (!v29)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    case 6:
      v33 = sub_238EFFF1C(&v40, a2);
      *a3 = v33;
      a3[1] = v34;
      if (!v33)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    case 7:
      v24 = sub_238EFFF1C(&v40, a2);
      *a3 = v24;
      a3[1] = v25;
      if (!v24)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    case 8:
      v37 = sub_238EFFF1C(&v40, a2);
      *a3 = v37;
      a3[1] = v38;
      if (v37)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    case 9:
      v16 = sub_238EFFF1C(&v40, a2);
      *a3 = v16;
      a3[1] = v17;
      if (!v16)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    case 10:
      v35 = sub_238EFFF1C(&v40, a2);
      *a3 = v35;
      a3[1] = v36;
      if (!v35)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    case 11:
      v10 = sub_238EFFF1C(&v40, a2);
      *a3 = v10;
      a3[1] = v11;
      if (!v10)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    case 12:
      v14 = sub_238EFFF1C(&v40, a2);
      *a3 = v14;
      a3[1] = v15;
      if (!v14)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    case 13:
      v31 = sub_238EFFF1C(&v40, a2);
      *a3 = v31;
      a3[1] = v32;
      if (!v31)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    case 14:
      v8 = sub_238EFFF1C(&v40, a2);
      *a3 = v8;
      a3[1] = v9;
      if (!v8)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    case 15:
      v20 = sub_238EFFF1C(&v40, a2);
      *a3 = v20;
      a3[1] = v21;
      if (!v20)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    case 16:
      v6 = sub_238EFFF1C(&v40, a2);
      *a3 = v6;
      a3[1] = v7;
      if (v6)
      {
LABEL_36:
        v28 = 0;
      }

      else
      {
LABEL_37:
        v28 = objc_opt_new();
      }

      break;
    default:
      v28 = 0;
      *a3 = 0x10D9000000B6;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
      break;
  }

  return v28;
}

id sub_2392DCB6C(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        LOBYTE(v35) = 0;
        LOBYTE(v39) = 0;
        v41 = 0;
        v28 = sub_238F2AE08(&v35, a2);
        *a3 = v28;
        a3[1] = v29;
        if (!v28)
        {
          v6 = objc_opt_new();
          if (v35 == 1 && (sub_239289A18(&v35)[16] & 1) != 0)
          {
            v30 = sub_239289A18(&v35);
            if ((v30[16] & 1) == 0)
            {
              sub_238EA195C();
            }

            v31 = [MEMORY[0x277CBEA90] dataWithBytes:*v30 length:*(v30 + 1)];
          }

          else
          {
            v31 = 0;
          }

          [v6 setPreviousScheduleHandle:v31];

          if (v41)
          {
            v7 = [MEMORY[0x277CBEA90] dataWithBytes:v39 length:v40];
          }

          else
          {
            v7 = 0;
          }

          [v6 setCurrentScheduleHandle:v7];
          goto LABEL_63;
        }

        goto LABEL_34;
      }

      if (a1 == 7)
      {
        LOBYTE(v35) = 0;
        LOBYTE(v39) = 0;
        v41 = 0;
        v15 = sub_238F2AE08(&v35, a2);
        *a3 = v15;
        a3[1] = v16;
        if (!v15)
        {
          v6 = objc_opt_new();
          if (v35 == 1 && (sub_239289A18(&v35)[16] & 1) != 0)
          {
            v17 = sub_239289A18(&v35);
            if ((v17[16] & 1) == 0)
            {
              sub_238EA195C();
            }

            v18 = [MEMORY[0x277CBEA90] dataWithBytes:*v17 length:*(v17 + 1)];
          }

          else
          {
            v18 = 0;
          }

          [v6 setPreviousPresetHandle:v18];

          if (v41)
          {
            v7 = [MEMORY[0x277CBEA90] dataWithBytes:v39 length:v40];
          }

          else
          {
            v7 = 0;
          }

          [v6 setCurrentPresetHandle:v7];
          goto LABEL_63;
        }

LABEL_34:
        v6 = 0;
        goto LABEL_67;
      }

LABEL_35:
      v6 = 0;
      *a3 = 0x11CF000000B6;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
      goto LABEL_67;
    }

    if (a1 == 4)
    {
      LOBYTE(v35) = 0;
      v37 = 0;
      v22 = sub_238F2AA9C(&v35, a2);
      *a3 = v22;
      a3[1] = v23;
      if (v22)
      {
        goto LABEL_34;
      }

      v6 = objc_opt_new();
      if (v35 == 1)
      {
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_2392C83D0(&v35)];
      }

      else
      {
        v24 = 0;
      }

      [v6 setPreviousRunningState:v24];

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v37];
      [v6 setCurrentRunningState:v32];
    }

    else
    {
      LOBYTE(v35) = 0;
      v36 = 0;
      v8 = sub_238F2AC64(&v35, a2);
      *a3 = v8;
      a3[1] = v9;
      if (v8)
      {
        goto LABEL_34;
      }

      v6 = objc_opt_new();
      if (v35 == 1)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_2392C86E0(&v35)];
      }

      else
      {
        v10 = 0;
      }

      [v6 setPreviousRunningMode:v10];

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v36];
      [v6 setCurrentRunningMode:v32];
    }
  }

  else if (a1 > 1)
  {
    if (a1 == 2)
    {
      LOBYTE(v35) = 0;
      v36 = 0;
      v25 = sub_238F2A710(&v35, a2);
      *a3 = v25;
      a3[1] = v26;
      if (v25)
      {
        goto LABEL_34;
      }

      v6 = objc_opt_new();
      if (v35 == 1)
      {
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_2392C86E0(&v35)];
      }

      else
      {
        v27 = 0;
      }

      [v6 setPreviousOccupancy:v27];

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v36];
      [v6 setCurrentOccupancy:v32];
    }

    else
    {
      v35 = 0;
      LOBYTE(v37) = 0;
      v38 = 0;
      v11 = sub_238F2A8E0(&v35, a2);
      *a3 = v11;
      a3[1] = v12;
      if (v11)
      {
        goto LABEL_34;
      }

      v6 = objc_opt_new();
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v35];
      [v6 setSystemMode:v13];

      if (HIBYTE(v35) == 1)
      {
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_2392C86E0(&v35 + 1)];
      }

      else
      {
        v14 = 0;
      }

      [v6 setOccupancy:v14];

      if (v37 == 1)
      {
        v33 = [MEMORY[0x277CCABB0] numberWithShort:*sub_2392C83D0(&v37)];
      }

      else
      {
        v33 = 0;
      }

      [v6 setPreviousSetpoint:v33];

      v32 = [MEMORY[0x277CCABB0] numberWithShort:v38];
      [v6 setCurrentSetpoint:v32];
    }
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        LOBYTE(v35) = 0;
        v36 = 0;
        v4 = sub_238F2A600(&v35, a2);
        *a3 = v4;
        a3[1] = v5;
        if (!v4)
        {
          v6 = objc_opt_new();
          if (v36)
          {
            v7 = [MEMORY[0x277CCABB0] numberWithShort:v35];
          }

          else
          {
            v7 = 0;
          }

          [v6 setCurrentLocalTemperature:v7];
LABEL_63:

          goto LABEL_67;
        }

        goto LABEL_34;
      }

      goto LABEL_35;
    }

    LOBYTE(v35) = 0;
    v36 = 0;
    v19 = sub_238F2A48C(&v35, a2);
    *a3 = v19;
    a3[1] = v20;
    if (v19)
    {
      goto LABEL_34;
    }

    v6 = objc_opt_new();
    if (v35 == 1)
    {
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_2392C86E0(&v35)];
    }

    else
    {
      v21 = 0;
    }

    [v6 setPreviousSystemMode:v21];

    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v36];
    [v6 setCurrentSystemMode:v32];
  }

LABEL_67:

  return v6;
}

id sub_2392DD268(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x1262000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
  }

  else
  {
    v9 = 0;
    v5 = sub_238F02518(&v9, a2);
    *a3 = v5;
    a3[1] = v6;
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v4 = objc_opt_new();
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v9];
      [v4 setOccupancy:v7];
    }
  }

  return v4;
}

id sub_2392DD340(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x1370000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v29);
    sub_2393C5ADC(v29, 0, 0);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v6 = sub_238F28EC8(v29, a2);
    v4 = 0;
    *a3 = v6;
    a3[1] = v7;
    if (!v6)
    {
      v21 = objc_opt_new();
      v8 = objc_opt_new();
      sub_2393C5AAC(v25);
      v23 = 0;
      v24 = 0;
      sub_2393C5BDC(v25, v29);
      LOBYTE(v26) = 0;
      v27 = 0;
      v28 = 0;
      while (1)
      {
        v9 = sub_238EA1A80(&v23);
        LODWORD(v10) = v23;
        if (v23)
        {
          v9 = 0;
        }

        if (!v9)
        {
          break;
        }

        v26 = 0;
        v27 = 0;
        v28 = 0;
        v10 = sub_238F013DC(&v26, v25);
        v23 = v10;
        v24 = v11;
        if (v10)
        {
          break;
        }

        v12 = objc_opt_new();
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v26];
        [v12 setIdentifier:v13];

        v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v27 length:v28 encoding:4];
        [v12 setName:v14];

        v15 = [v12 name];

        if (!v15)
        {
          *a3 = xmmword_278A75308;

          goto LABEL_16;
        }

        [v8 addObject:v12];
      }

      if (v10 == 33 || !v23)
      {
        [v21 setTargetList:{v8, v21}];

        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v30];
        [v22 setCurrentTarget:v17];

        v18 = v22;
        v19 = [MEMORY[0x277CBEA90] dataWithBytes:v31 length:v32];
        [v22 setData:v19];

        v4 = v22;
        goto LABEL_17;
      }

      v16 = v24;
      *a3 = v23;
      a3[1] = v16;
LABEL_16:

      v4 = 0;
      v18 = v21;
LABEL_17:
    }
  }

  return v4;
}

id sub_2392DD648(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x13C0000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
  }

  else
  {
    v21[0] = 0;
    v26 = 0;
    v27 = 0;
    v31 = 0;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    LOBYTE(v25) = 0;
    v28 = 0;
    v29 = 0;
    v30[0] = 0;
    v5 = sub_238F1E52C(v21, a2);
    v4 = 0;
    *a3 = v5;
    a3[1] = v6;
    if (!v5)
    {
      v4 = objc_opt_new();
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v21[0]];
      [v4 setCurrentState:v7];

      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v22];
      [v4 setStartTime:v8];

      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23];
      [v4 setDuration:v9];

      v10 = objc_opt_new();
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v24];
      [v10 setUpdatedAt:v11];

      if (v26)
      {
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v25];
        [v10 setPosition:v12];
      }

      else
      {
        [v10 setPosition:0];
      }

      [v4 setSampledPosition:v10];

      LODWORD(v13) = v27;
      v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
      [v4 setPlaybackSpeed:v14];

      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v28];
      [v4 setSeekRangeEnd:v15];

      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v29];
      [v4 setSeekRangeStart:v16];

      if (v30[0] == 1)
      {
        v17 = sub_239289A18(v30);
        v18 = [MEMORY[0x277CBEA90] dataWithBytes:*v17 length:v17[1]];
      }

      else
      {
        v18 = 0;
      }

      [v4 setData:v18];

      v19 = [MEMORY[0x277CCABB0] numberWithBool:v31];
      [v4 setAudioAdvanceUnmuted:v19];
    }
  }

  return v4;
}

void sub_2392DD904(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_2392DD94C(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x1442000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
  }

  else
  {
    v10[0] = 0;
    v11 = 0;
    v5 = sub_238EFF008(v10, a2);
    *a3 = v5;
    a3[1] = v6;
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v4 = objc_opt_new();
      if (v10[0] == 1)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_239289A18(v10)];
      }

      else
      {
        v7 = 0;
      }

      [v4 setNode:v7];

      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v11];
      [v4 setFabricIndex:v8];
    }
  }

  return v4;
}

id sub_2392DDA78(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x145A000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
  }

  else
  {
    v5 = sub_238EFFF1C(&v8, a2);
    *a3 = v5;
    a3[1] = v6;
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v4 = objc_opt_new();
    }
  }

  return v4;
}

id sub_2392DDAF8(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 1)
  {
    v13 = 0;
    v14 = 0;
    v9 = sub_238F34A4C(&v13, a2);
    *a3 = v9;
    a3[1] = v10;
    if (!v9)
    {
      v6 = objc_opt_new();
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v13];
      [v6 setZone:v11];

      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v14];
      [v6 setReason:v8];
      goto LABEL_9;
    }

LABEL_6:
    v6 = 0;
    goto LABEL_10;
  }

  if (a1)
  {
    v6 = 0;
    *a3 = 0x14A0000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
    goto LABEL_10;
  }

  v15 = 0;
  v16 = 0;
  v4 = sub_238F34914(&v15, a2);
  *a3 = v4;
  a3[1] = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  v6 = objc_opt_new();
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v15];
  [v6 setZone:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v16];
  [v6 setReason:v8];
LABEL_9:

LABEL_10:

  return v6;
}

id sub_2392DDC98(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 1)
  {
    v15 = 0;
    v10 = sub_238F25348(&v15, a2);
    *a3 = v10;
    a3[1] = v11;
    if (!v10)
    {
      v6 = objc_opt_new();
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v15];
      [v6 setConnectionID:v12];

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v15)];
      [v6 setTriggerType:v13];

      if (HIBYTE(v15) == 1)
      {
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_2392C86E0(&v15 + 3)];
      }

      else
      {
        v9 = 0;
      }

      [v6 setActivationReason:v9];
      goto LABEL_15;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_16;
  }

  if (a1)
  {
    v6 = 0;
    *a3 = 0x151F000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
    goto LABEL_16;
  }

  v16 = 0;
  v4 = sub_238F25348(&v16, a2);
  *a3 = v4;
  a3[1] = v5;
  if (v4)
  {
    goto LABEL_7;
  }

  v6 = objc_opt_new();
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16];
  [v6 setConnectionID:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v16)];
  [v6 setTriggerType:v8];

  if (HIBYTE(v16) == 1)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_2392C86E0(&v16 + 3)];
  }

  else
  {
    v9 = 0;
  }

  [v6 setActivationReason:v9];
LABEL_15:

LABEL_16:

  return v6;
}

id sub_2392DDEE0(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x1573000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v5 = sub_238F0A6E8(&v12, a2);
    v4 = 0;
    *a3 = v5;
    a3[1] = v6;
    if (!v5)
    {
      v4 = objc_opt_new();
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
      [v4 setRequestID:v7];

      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v13];
      [v4 setClientNodeID:v8];

      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v14];
      [v4 setStatusCode:v9];

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:HIBYTE(v14)];
      [v4 setFabricIndex:v10];
    }
  }

  return v4;
}

id sub_2392DE048(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == -917266)
  {
    LOBYTE(v61) = 0;
    v26 = sub_238F31BB8(&v61, a2);
    *a3 = v26;
    a3[1] = v27;
    if (!v26)
    {
      v6 = objc_opt_new();
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v61];
      [v6 setArg1:v25];
      goto LABEL_39;
    }

    goto LABEL_11;
  }

  if (a1 == 2)
  {
    LOBYTE(v61) = 0;
    v23 = sub_238F31AB8(&v61, a2);
    *a3 = v23;
    a3[1] = v24;
    if (!v23)
    {
      v6 = objc_opt_new();
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v61];
      [v6 setFabricIndex:v25];
      goto LABEL_39;
    }

LABEL_11:
    v6 = 0;
    goto LABEL_40;
  }

  if (a1 != 1)
  {
    v6 = 0;
    *a3 = 0x1674000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
    goto LABEL_40;
  }

  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v68 = 0;
  v69 = 0.0;
  v70[0] = 0;
  v65 = 0u;
  v66 = 0u;
  v67 = 0;
  sub_2393C5AAC(v71);
  sub_2393C5ADC(v71, 0, 0);
  sub_2393C5AAC(v72);
  sub_2393C5ADC(v72, 0, 0);
  v5 = sub_238F3194C(&v61, a2);
  v6 = 0;
  *a3 = v5;
  a3[1] = v7;
  if (v5)
  {
    goto LABEL_40;
  }

  v48 = objc_opt_new();
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v61];
  [v48 setArg1:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:HIBYTE(v61)];
  [v48 setArg2:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:v62];
  [v48 setArg3:v10];

  v11 = objc_opt_new();
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v63];
  [v11 setA:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:HIBYTE(v63)];
  [v11 setB:v13];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v64];
  [v11 setC:v14];

  v15 = [MEMORY[0x277CBEA90] dataWithBytes:v65 length:?];
  [v11 setD:v15];

  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v66 length:*(&v66 + 1) encoding:4];
  [v11 setE:v16];

  v17 = [v11 e];

  if (v17)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v67];
    [v11 setF:v18];

    LODWORD(v19) = v68;
    v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
    [v11 setG:v20];

    v21 = [MEMORY[0x277CCABB0] numberWithDouble:v69];
    [v11 setH:v21];

    if (v70[0] == 1)
    {
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_2392C86E0(v70)];
      [v11 setI:v22];
    }

    else
    {
      [v11 setI:0];
    }

    [v48 setArg4:v11];

    v11 = objc_opt_new();
    sub_238EA4C98(&v49, v71);
    while (sub_238EA1A80(&v49) && sub_238EA4CF8(&v49))
    {
      v28 = objc_opt_new();
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v52[0]];
      [v28 setA:v29];

      v30 = [MEMORY[0x277CCABB0] numberWithBool:v52[1]];
      [v28 setB:v30];

      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v52[2]];
      [v28 setC:v31];

      v32 = [MEMORY[0x277CBEA90] dataWithBytes:v53 length:v54];
      [v28 setD:v32];

      v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v55 length:v56 encoding:4];
      [v28 setE:v33];

      v34 = [v28 e];

      if (!v34)
      {
        *a3 = xmmword_278A75328;

        goto LABEL_37;
      }

      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v57];
      [v28 setF:v35];

      LODWORD(v36) = v58;
      v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
      [v28 setG:v37];

      v38 = [MEMORY[0x277CCABB0] numberWithDouble:v59];
      [v28 setH:v38];

      if (v60[0] == 1)
      {
        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(v60)];
        [v28 setI:v39];
      }

      else
      {
        [v28 setI:0];
      }

      [v11 addObject:v28];
    }

    if (v49 != 33 && v49)
    {
      v40 = v50;
      *a3 = v49;
      a3[1] = v40;
      goto LABEL_37;
    }

    [v48 setArg5:v11];

    v41 = objc_opt_new();
    sub_2393C5AAC(v51);
    v49 = 0;
    v50 = 0;
    sub_2393C5BDC(v51, v72);
    while (1)
    {
      v42 = sub_238EA1A80(&v49);
      LODWORD(v43) = v49;
      if (v49)
      {
        v42 = 0;
      }

      if (!v42)
      {
        break;
      }

      v52[0] = 0;
      v43 = sub_238EA4D5C(v51, v52);
      v49 = v43;
      v50 = v44;
      if (v43)
      {
        break;
      }

      v45 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v52[0]];
      [v41 addObject:v45];
    }

    v25 = v48;
    if (v43 == 33 || !v49)
    {
      [v48 setArg6:v41];

      v6 = v48;
    }

    else
    {
      v46 = v50;
      *a3 = v49;
      a3[1] = v46;

      v6 = 0;
    }
  }

  else
  {
    *a3 = xmmword_278A75318;
LABEL_37:

    v6 = 0;
    v25 = v48;
  }

LABEL_39:

LABEL_40:

  return v6;
}

id sub_2392DE868(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x1697000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v5 = sub_238F26680(&v10, a2);
    *a3 = v5;
    a3[1] = v6;
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v4 = objc_opt_new();
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
      [v4 setCount:v7];

      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v11];
      [v4 setFabricIndex:v8];
    }
  }

  return v4;
}

BOOL sub_2392DE974(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      *(a1 + 88) = 0;
      v3 = sub_238EFD7D0(a1 + 16, (a1 + 88));
      *a1 = v3;
      *(a1 + 8) = v4;
      return v3 == 0;
    }
  }

  return result;
}

BOOL sub_2392DE9C8(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      *(a1 + 88) = 0;
      v3 = sub_238F07C44(a1 + 16, (a1 + 88));
      *a1 = v3;
      *(a1 + 8) = v4;
      return v3 == 0;
    }
  }

  return result;
}

BOOL sub_2392DEA1C(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      *(a1 + 88) = 0;
      v3 = sub_238EFFAE8(a1 + 16, (a1 + 88));
      *a1 = v3;
      *(a1 + 8) = v4;
      return v3 == 0;
    }
  }

  return result;
}

uint64_t sub_2392DEA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2393C5AAC(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  result = sub_2393C5BDC(a2 + 16, a1);
  *(a2 + 88) = 0;
  *(a2 + 90) = 0;
  return result;
}

BOOL sub_2392DEAB4(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      *(a1 + 88) = 0;
      v3 = sub_238F142FC(a1 + 88, a1 + 16);
      *a1 = v3;
      *(a1 + 8) = v4;
      return v3 == 0;
    }
  }

  return result;
}

BOOL sub_2392DEB08(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      *(a1 + 88) = 0;
      v3 = sub_238F141D0(a1 + 88, a1 + 16);
      *a1 = v3;
      *(a1 + 8) = v4;
      return v3 == 0;
    }
  }

  return result;
}

uint64_t sub_2392DEB5C(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 unsignedLongLongValue];
  v5 = [v3 unsignedLongLongValue];
  if (v4 <= 259)
  {
    if (v4 > 152)
    {
      if (v4 == 153)
      {
        v11 = v5 - 1 < 7;
      }

      else if (v4 == 257)
      {
        v11 = sub_2392DEC94(v5);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v12 = v5 < 3;
      if (v4 != 60)
      {
        v12 = 0;
      }

      if (v4 == -918523)
      {
        v11 = ((v5 - 18) & 0xFFFFFFF7) == 0;
      }

      else
      {
        v11 = v12;
      }
    }
  }

  else
  {
    v6 = v5 - 3 < 2;
    v7 = v5 < 2;
    v8 = 0xDu >> (v5 & 0xF);
    if (v5 >= 4)
    {
      LOBYTE(v8) = 0;
    }

    if (v4 != 1294)
    {
      LOBYTE(v8) = 0;
    }

    if (v4 != 1107)
    {
      v7 = v8;
    }

    if (v4 != 1106)
    {
      v6 = v7;
    }

    v9 = v5 - 1 < 2;
    v10 = v5 < 2;
    if (v4 != 261)
    {
      v10 = 0;
    }

    if (v4 != 260)
    {
      v9 = v10;
    }

    if (v4 <= 1105)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }
  }

  return v11 & 1;
}

uint64_t sub_2392DEC94(unsigned int a1)
{
  result = 1;
  if (a1 > 0x29 || ((1 << a1) & 0x3C42400000BLL) == 0)
  {
    v3 = a1 - 323551232;
    if (v3 > 4 || v3 == 1)
    {
      return 0;
    }
  }

  return result;
}

void sub_2392DEF80(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock(v2 + 2);
  _Unwind_Resume(a1);
}

void sub_2392DF284(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 2);

  _Unwind_Resume(a1);
}

void -[MTRAsyncCallbackQueueWorkItem setCancelHandler:](MTRAsyncCallbackQueueWorkItem *self, SEL a2, dispatch_block_t cancelHandler)
{
  v6 = cancelHandler;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_enqueued)
  {
    v4 = MEMORY[0x23EE78590](v6);
    v5 = self->_cancelHandler;
    self->_cancelHandler = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

void sub_2392DF818(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = MEMORY[0x23EE78590](*(*(a1 + 32) + 16));
  v3 = *(a1 + 32);
  v5 = v2;
  if (v2)
  {
    v4 = *(v3 + 40);
    *(v3 + 40) = v4 + 1;
    os_unfair_lock_unlock((*(a1 + 32) + 12));
    v5[2](v5, *(a1 + 40), v4);
  }

  else
  {
    os_unfair_lock_unlock((v3 + 12));
    [*(a1 + 32) endWork];
  }
}

uint64_t sub_2392DFAF8(void *a1)
{
  v1 = a1;
  v2 = [v1 integerValue];
  if (!v1 || (v3 = v2, (v2 & 0xFFFFFFFFFFFFFF80) != 0x80))
  {
    sub_23921D8FC(@"tag must be a vendor tag (0x80 - 0xFF)");
  }

  return v3;
}

char *sub_2392DFC3C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = MTROptionalQRCodeInfo;
    v3 = objc_msgSendSuper2(&v6, sel_init);
    *(v3 + 1) = *a2;
    std::string::operator=((v3 + 16), (a2 + 8));
    *(v3 + 10) = *(a2 + 32);
    if (v3[8] < 0 && [v3 type])
    {
      v3 = v3;
      v4 = v3;
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = 0;
LABEL_6:

  return v4;
}

unint64_t sub_2392DFD00(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a1 + 12);
    if (v3 == 2)
    {
      v5 = sub_23948FD68(a2, *(a1 + 8), *(a1 + 40));
      v6 = v5;
      v7 = HIDWORD(v5);
    }

    else if (v3 == 1)
    {
      v4 = *(a1 + 8);
      if (*(a1 + 39) < 0)
      {
        sub_238DCEA9C(__p, *(a1 + 16), *(a1 + 24));
      }

      else
      {
        *__p = *(a1 + 16);
        v11 = *(a1 + 32);
      }

      v8 = sub_23948FC60(a2, v4, __p);
      v6 = v8;
      v7 = HIDWORD(v8);
      if (SHIBYTE(v11) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      LODWORD(v7) = 84;
      v6 = 3;
    }
  }

  else
  {
    v6 = 0;
    LODWORD(v7) = 0;
  }

  return v6 | (v7 << 32);
}

void sub_2392DFDF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_2392E01C4(id a1, void *a2)
{
  v3 = a2;
  if (a1 && (v6.receiver = a1, v6.super_class = MTRSetupPayload, a1 = objc_msgSendSuper2(&v6, sel_init), !sub_2392E0530(a1, v3, 1)))
  {
    a1 = a1;
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

char *sub_2392E026C(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!a1)
  {
    v8 = 0;
    goto LABEL_27;
  }

  v17.receiver = a1;
  v17.super_class = MTRSetupPayload;
  v4 = objc_msgSendSuper2(&v17, sel_init);
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_284BD0DD8;
  }

  sub_238DD0E08(v15, [(__CFString *)v5 UTF8String]);
  if (SHIBYTE(v16) < 0)
  {
    sub_238DCEA9C(__p, v15[0], v15[1]);
  }

  else
  {
    *__p = *v15;
    v13 = v16;
  }

  sub_2392E31B4(&v14, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_23948D204(&v14, (v4 + 8)))
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_2393C9138();
      *buf = 136315138;
      v19 = v7;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Failed to parse Manual Pairing Code: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }

LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  if ((sub_23948FB5C(v4 + 8, 1) & 1) == 0)
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Invalid Manual Pairing Code", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    goto LABEL_21;
  }

  v8 = v4;
LABEL_22:
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

LABEL_27:
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_2392E04C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_2392E0530(unint64_t a1, void *a2, int a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    v8 = 0;
    goto LABEL_40;
  }

  if (!v5)
  {
    v5 = &stru_284BD0DD8;
  }

  sub_238DD0E08(v29, [(__CFString *)v5 UTF8String]);
  if (SHIBYTE(v30) < 0)
  {
    sub_238DCEA9C(&__dst, v29[0], v29[1]);
  }

  else
  {
    __dst = *v29;
    v26 = v30;
  }

  *__p = __dst;
  v28 = v26;
  v26 = 0;
  v24 = 0;
  __dst = 0uLL;
  v22 = 0;
  v23 = 0;
  v7 = sub_23948F374(__p, &v22);
  v8 = v7;
  if (v7)
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_2393C9138();
      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Failed to parse QR Code payload: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }

    a1 = v7 & 0xFFFFFFFF00000000;
  }

  else
  {
    v11 = v22;
    v12 = v23;
    if (v22 == v23)
    {
      v18 = sub_2393D9044(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "Parsing setup payload succeeded but resulted in no payloads", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      a1 = 0xF900000000;
    }

    else
    {
      if (!a3)
      {
LABEL_18:
        v13 = *(v11 + 3);
        *(a1 + 8) = *v11;
        *(a1 + 11) = v13;
        v14 = *(v11 + 7);
        *(a1 + 15) = v14;
        if (v14 == 1)
        {
          *(a1 + 16) = *(v11 + 8);
        }

        v15 = *(v11 + 10);
        *(a1 + 26) = *(v11 + 18);
        *(a1 + 18) = v15;
        if (a1 + 8 != v11)
        {
          sub_2392E2C80((a1 + 32), *(v11 + 24), (v11 + 32));
          sub_2392E2FA0((a1 + 56), *(v11 + 48), (v11 + 56));
          v11 = v22;
        }

        if (0x8E38E38E38E38E39 * ((v23 - v11) >> 3) >= 2)
        {
          v16 = [(__CFString *)v6 copy];
          v17 = *(a1 + 88);
          *(a1 + 88) = v16;
        }

        a1 = 0;
        v8 = 0;
        goto LABEL_36;
      }

      while ((sub_23948FA64(v11, 1) & 1) != 0)
      {
        v11 += 72;
        if (v11 == v12)
        {
          v11 = v22;
          goto LABEL_18;
        }
      }

      v19 = sub_2393D9044(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Invalid QR Code payload", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      a1 = 0x10000000000;
    }

    v8 = 47;
  }

LABEL_36:
  *buf = &v22;
  sub_239227730(buf);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }

LABEL_40:

  v20 = *MEMORY[0x277D85DE8];
  return v8 | a1;
}

void sub_2392E08C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  *(v29 - 80) = &a10;
  sub_239227730((v29 - 80));
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t **sub_2392E09E0(void *a1, char *a2)
{
  if (!a1)
  {
    return 0;
  }

  v9.receiver = a1;
  v9.super_class = MTRSetupPayload;
  v3 = objc_msgSendSuper2(&v9, sel_init);
  v4 = v3;
  v5 = *(a2 + 3);
  *(v3 + 2) = *a2;
  *(v3 + 11) = v5;
  v6 = a2[7];
  v3[15] = v6;
  if (v6 == 1)
  {
    v3[16] = a2[8];
  }

  v7 = *(a2 + 10);
  *(v3 + 13) = *(a2 + 9);
  *(v3 + 18) = v7;
  if (v3 + 8 != a2)
  {
    sub_2392E2C80(v3 + 4, *(a2 + 3), a2 + 4);
    sub_2392E2FA0(v4 + 7, *(a2 + 6), a2 + 7);
  }

  return v4;
}

_BYTE *sub_2392E0F30(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952C11C();
  }

  return a1 + 1;
}

uint64_t sub_2392E10A8(_BYTE *a1)
{
  if (a1[2] == 1)
  {
    sub_23952D770();
  }

  return *a1;
}

uint64_t sub_2392E10CC(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x10)
  {
    sub_23952D810();
  }

  *result = a2;
  *(result + 2) = 1;
  return result;
}

uint64_t sub_2392E10F4(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x1000)
  {
    sub_23952D8B0();
  }

  *result = a2;
  *(result + 2) = 0;
  return result;
}

void sub_2392E14A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2392E1804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_2392E32D4(&a12);
  _Unwind_Resume(a1);
}

void sub_2392E18D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2392E1C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_2392E1CC0(char *a1, int a2)
{
  v2 = a1;
  v25 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_26;
  }

  v3 = *(a1 + 11);
  if (v3)
  {
    v2 = v3;
    goto LABEL_26;
  }

  *v15 = *(a1 + 2);
  *&v15[3] = *(a1 + 11);
  v16 = a1[15];
  if (v16 == 1)
  {
    v17 = a1[16];
  }

  v18 = *(a1 + 18);
  v19 = *(a1 + 13);
  sub_238EF5AB4(v20, (a1 + 32));
  sub_238EF5F84(v21, v2 + 56);
  v22 = a2;
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  v5 = sub_23948DA14(v15, __p);
  if (a2)
  {
    if (v5)
    {
      v6 = sub_2393D9044(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = sub_2393C9138();
        *buf = 136315138;
        v24 = v7;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Internal error: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0, 1);
      }

      abort();
    }
  }

  else if (v5)
  {
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_2393C9138();
      *buf = 136315138;
      v24 = v9;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed to generate QR code string for payload: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }

    v2 = 0;
    goto LABEL_23;
  }

  if (v14 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
LABEL_23:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  sub_238EF5F20(v21, v21[1]);
  sub_238EF5F20(v20, v20[1]);
LABEL_26:
  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_2392E1F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_238EED304(&a16);
  _Unwind_Resume(a1);
}

void sub_2392E20C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_238EED304(va);
  _Unwind_Resume(a1);
}

void sub_2392E2878(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t **sub_2392E2C80(uint64_t **result, const std::string **a2, const std::string **a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_2392E2E70(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[1].__r_.__value_.__s.__data_[8] = v9[1].__r_.__value_.__s.__data_[8];
          v8[1].__r_.__value_.__r.__words[2] = v9[1].__r_.__value_.__r.__words[2];
          std::string::operator=(v8 + 2, v9 + 2);
          LODWORD(v8[3].__r_.__value_.__l.__data_) = v9[3].__r_.__value_.__l.__data_;
          sub_2392E2E00(v5, v14);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_2392E2E70(v13);
          }

          size = v9->__r_.__value_.__l.__size_;
          if (size)
          {
            do
            {
              a2 = size;
              size = size->__r_.__value_.__r.__words[0];
            }

            while (size);
          }

          else
          {
            do
            {
              a2 = v9->__r_.__value_.__r.__words[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_2392E2EC4(&v12);
  }

  if (a2 != a3)
  {
    sub_2392E2F1C();
  }

  return result;
}

void sub_2392E2DEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2392E2EC4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2392E2E00(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 32))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_238DCE9D8(a1, v3, v5, a2);
  return a2;
}

void *sub_2392E2E70(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_2392E2EC4(uint64_t a1)
{
  sub_238EF5F20(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_238EF5F20(*a1, v2);
  }

  return a1;
}

uint64_t **sub_2392E2FA0(uint64_t **result, const std::string **a2, const std::string **a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_2392E2E70(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[1].__r_.__value_.__s.__data_[8] = v9[1].__r_.__value_.__s.__data_[8];
          v8[1].__r_.__value_.__r.__words[2] = v9[1].__r_.__value_.__r.__words[2];
          std::string::operator=(v8 + 2, v9 + 2);
          LODWORD(v8[3].__r_.__value_.__l.__data_) = v9[3].__r_.__value_.__l.__data_;
          v10 = *&v9[3].__r_.__value_.__r.__words[1];
          v8[4].__r_.__value_.__r.__words[0] = v9[4].__r_.__value_.__r.__words[0];
          *&v8[3].__r_.__value_.__r.__words[1] = v10;
          sub_2392E2E00(v5, v15);
          v8 = v14;
          v15 = v14;
          if (v14)
          {
            v14 = sub_2392E2E70(v14);
          }

          size = v9->__r_.__value_.__l.__size_;
          if (size)
          {
            do
            {
              a2 = size;
              size = size->__r_.__value_.__r.__words[0];
            }

            while (size);
          }

          else
          {
            do
            {
              a2 = v9->__r_.__value_.__r.__words[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_2392E2EC4(&v13);
  }

  if (a2 != a3)
  {
    sub_2392E3130();
  }

  return result;
}

void sub_2392E311C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2392E2EC4(va);
  _Unwind_Resume(a1);
}

std::string *sub_2392E31B4(std::string *a1, __int128 *a2)
{
  v2 = a1;
  v3 = *a2;
  a1->__r_.__value_.__r.__words[2] = *(a2 + 2);
  *&a1->__r_.__value_.__l.__data_ = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    a1 = a1->__r_.__value_.__r.__words[0];
    size = v2->__r_.__value_.__l.__size_;
  }

  v10 = 45;
  v5 = sub_2392E326C(a1, a1 + size, &v10);
  v6 = SHIBYTE(v2->__r_.__value_.__r.__words[2]);
  if (v6 < 0)
  {
    v8 = v2->__r_.__value_.__r.__words[0];
    v7 = (v2->__r_.__value_.__r.__words[0] + v2->__r_.__value_.__l.__size_);
  }

  else
  {
    v7 = v2 + v6;
    v8 = v2;
  }

  std::string::erase(v2, v5 - v8, v7 - v5);
  return v2;
}

void sub_2392E324C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_2392E326C(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = memchr(a1, *a3, a2 - a1);
  if (!result)
  {
    result = a2;
  }

  v6 = result + 1;
  if (result != a2 && v6 != a2)
  {
    do
    {
      v8 = *v6;
      if (v8 != *a3)
      {
        *result++ = v8;
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return result;
}

void sub_2392E32D4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2392E3328(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2392E3328(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

void *sub_2392E3478(void *result, void *a2)
{
  *result = &unk_284BB7310;
  result[1] = *a2;
  result[2] = 0;
  return result;
}

uint64_t sub_2392E34B4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = 0x5500000000;
    v3 = 44;
  }

  else
  {
    *(a1 + 16) = a2;
    v5 = sub_2393F56E0();
    v2 = 0;
    v3 = 0;
    *(a1 + 24) = v5;
  }

  return v3 | v2;
}

uint64_t sub_2392E3518(uint64_t result, int a2)
{
  ++*(result + 24);
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(*(v2 + 24) + 8);
    v4 = *(result + 8);
    v5[0] = *(result + 12);
    v5[1] = a2;
    v6 = v4;
    v7 = -1;
    return (*(*v3 + 16))(v3, v5);
  }

  return result;
}

void sub_2392E35A0(uint64_t a1@<X8>)
{
  *a1 = 136;
  *(a1 + 2) = 0;
  *(a1 + 16) = 1;
}

void sub_2392E35B8(uint64_t a1@<X8>)
{
  *a1 = 129;
  *(a1 + 2) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 1;
}

__n128 sub_2392E35EC@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (sub_2394C3F10(a3))
  {
    sub_2392E3518(a1, a2);
  }

  result = *a3;
  *a4 = *a3;
  *(a4 + 16) = *(a3 + 16);
  return result;
}

void sub_2392E3C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392E4154(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392E53A0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392E6788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392E6954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392E6B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392E6FA0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392E8A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392E8BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392E8DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392E8F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392E9144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392E9310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392E94DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392E995C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392EA620(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392EA7F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392EAC78(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392EB058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392EB224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392EBA64(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392EDAB8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392EE288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392EE454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392EECE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392EF6A0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392F01A0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392F0738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392F0DF8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392F0FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392F151C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392F16C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392F1894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392F1DD4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392F1F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392F24C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392F29E0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392F4640(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392F50D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392F5E50(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392F753C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2392F7E3C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392F8A28(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392F9CC8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392FA68C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392FD14C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392FDDF8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392FEEBC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392FFC80(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239301B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393029D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239303078(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239303DB0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239305CA4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239306D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23930740C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239307AFC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239307CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239308128(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239308648(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23930BD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23930C800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23930C9CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23930CE4C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23930DFA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23930E170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239311D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239317F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239318AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239319564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23931A558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23931ABA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239321F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23932214C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239322618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393231A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393234F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239325618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239329910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239329ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239329CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23932A774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23932A940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23932AB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23932ACD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23932AEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23932B1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23932B3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23932B588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23932B754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23932B920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23932BAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23932BCB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23932BE84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23932C050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23932C21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23932D41C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23932F96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23932FEAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239333AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239333D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239333F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23933411C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23933459C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239336178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239336344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239336510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393366DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393368A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239336A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239336C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239336E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239336FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393371A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239337370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23933753C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239337708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393378D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239337DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239337F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239338138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239338604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239338950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239338C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239338E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239339034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239339200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393393CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239339598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239339764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393399F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23933A1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23933A388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23933ABC8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23933B098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23933B264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23933B430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23933B77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23933BAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23933BD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23933BF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23933C3A0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23933C54C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23933C718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23933C8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23933CD64(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23933FE30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239341EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23934233C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239342774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239342940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239342B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239342CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239342F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239343130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393432FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393434C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239343694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239343860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239343CE0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239344534(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239344C94(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2393457B4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239345F14(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239346674(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239346A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239346CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239346EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239347084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239347250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23934741C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393475E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393477B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239347980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239347B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239347FCC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239351E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393529D0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239353D6C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23935466C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239357340(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239358C34(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239359300(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2393599AC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23935A164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23935A5E4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23935B1CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23935BB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23935BF98(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23935CCA4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23935D7B0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239360E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393633EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239363978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239363B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239363DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239363F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239364168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239364334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239364500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23936484C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239364A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239364D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239364F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393650FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393652C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239365494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239365660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23936582C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393659F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23936AB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23936ACFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239375B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239379E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937A064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937A230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937A3FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937A5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937A794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937A960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937AB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937ACF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937AEC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937B090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937B25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937B428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937B5F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937B7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937B98C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937BB58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937BD24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937BEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937C0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937C288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937C454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937C620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937C7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937C9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937CB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937CD50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937CF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937D0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937D2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937D480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937D64C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937D818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937D9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937DBB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937DD7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937DF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937E114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937E2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937E4AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937E678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937E844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937EA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937EBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937EDB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937EF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937F14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937F318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937F4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937F6B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937F87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937FA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937FC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937FDE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23937FFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239380178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239380344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239380510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393806DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393808A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239380A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239380C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239380E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239380FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393811A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239381370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23938153C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239381708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393818D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239381AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239381C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239381E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239382004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393821D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23938239C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239382568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239382734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239382900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239382ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239382C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239382E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239383030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393831FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2393833C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239383594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239383760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_23938392C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239383AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239383CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239384250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239384310(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2393858E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_239385CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v66 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceAttestationDelegateBridge.mm", 34);
  sub_238DB6950(buf, *(a4 + 16), *(a4 + 24));
  v38 = [MEMORY[0x277CBEA90] dataWithBytes:*buf length:v56];
  sub_238DB6950(buf, *a4, *(a4 + 8));
  v37 = [MEMORY[0x277CBEA90] dataWithBytes:*buf length:v56];
  if (*(a4 + 32))
  {
    v10 = *(a4 + 40);
    *&v56 = *(a4 + 32);
    *(&v56 + 1) = v10;
    buf[0] = 1;
    v11 = sub_238DE36B8(buf);
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:*v11 length:v11[1]];
  }

  else
  {
    v12 = 0;
  }

  (*(*a3 + 48))(&v53, a3);
  if (v53 == 1)
  {
    v13 = sub_238EA9094(&v53);
    v14 = [MEMORY[0x277CBEA90] dataWithBytes:sub_239495304(*v13) + 216 length:16];
  }

  else
  {
    v15 = sub_2393D9044(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "OnDeviceAttestationCompleted for a device with no PASE session, making up fake attestation challenge", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v14 = [MEMORY[0x277CBEA90] data];
  }

  v35 = v14;
  sub_23929093C(a2, buf);
  v16 = sub_238DE36B8(buf);
  sub_239293360(v58, v16);
  if (buf[0] == 1)
  {
    sub_239293190(v57);
  }

  buf[0] = v59;
  if (v59 == 1)
  {
    v56 = v60;
  }

  v17 = sub_238DE36B8(buf);
  v18 = [MEMORY[0x277CBEA90] dataWithBytes:*v17 length:v17[1]];
  buf[0] = v62;
  if (v62 == 1)
  {
    v56 = v63;
  }

  v19 = sub_238DE36B8(buf);
  v20 = [MEMORY[0x277CBEA90] dataWithBytes:*v19 length:v19[1]];
  v21 = a5;
  buf[0] = v64;
  if (v64 == 1)
  {
    v56 = v65;
  }

  v22 = sub_238DE36B8(buf);
  v23 = [MEMORY[0x277CBEA90] dataWithBytes:*v22 length:v22[1]];
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a4 + 48)];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a4 + 50)];
  v26 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23938623C;
  block[3] = &unk_278A75340;
  v50 = a1;
  v52 = v21;
  v36 = v35;
  v41 = v36;
  v42 = v18;
  v43 = v20;
  v44 = v23;
  v34 = v38;
  v45 = v34;
  v39 = v37;
  v46 = v39;
  v27 = v12;
  v47 = v27;
  v48 = v24;
  v49 = v25;
  v51 = a3;
  v28 = v25;
  v29 = v24;
  v30 = v23;
  v31 = v20;
  v32 = v18;
  dispatch_async(v26, block);

  sub_239293190(v61);
  if (v53 == 1)
  {
    (*(*v54 + 32))(v54);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void sub_239386170(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_238DC7854(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23938623C(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 104);
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 120);
    *buf = 67109378;
    v16 = v4;
    v17 = 2080;
    v18 = sub_2394B9798(v4);
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "MTRDeviceAttestationDelegateBridge::OnDeviceAttestationCompleted with result: %hu (%s)", buf, 0x12u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2394B9798(*(a1 + 120));
    sub_2393D5320(0, 2);
  }

  *(v2 + 8) = *(a1 + 120);
  v5 = *(v2 + 24);
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
    if (WeakRetained)
    {
      v7 = [[MTRDeviceAttestationDeviceInfo alloc] initWithAttestationChallenge:*(a1 + 32) attestationNonce:*(a1 + 40) elementsTLV:*(a1 + 48) elementsSignature:*(a1 + 56) dacCertificate:*(a1 + 64) dacPAICertificate:*(a1 + 72) certificationDeclaration:*(a1 + 80) basicInformationVendorID:*(a1 + 88) basicInformationProductID:*(a1 + 96)];
      if (*(a1 + 120))
      {
        v8 = sub_23921C1E4(MTRError, 0x6100000013, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceAttestationDelegateBridge.mm");
      }

      else
      {
        v8 = 0;
      }

      v11 = objc_opt_respondsToSelector();
      v12 = objc_loadWeakRetained((v2 + 16));
      v13 = *(a1 + 112);
      if (v11)
      {
        [v5 deviceAttestationCompletedForController:v12 opaqueDeviceHandle:v13 attestationDeviceInfo:v7 error:v8];
      }

      else
      {
        [v5 deviceAttestation:v12 completedForDevice:v13 attestationDeviceInfo:v7 error:v8];
      }

      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (*(a1 + 120) && ((objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0))
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
    if (WeakRetained)
    {
      v7 = sub_23921C1E4(MTRError, 0x7400000013, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceAttestationDelegateBridge.mm");
      v9 = objc_opt_respondsToSelector();
      v8 = objc_loadWeakRetained((v2 + 16));
      v10 = *(a1 + 112);
      if (v9)
      {
        [v5 deviceAttestationFailedForController:v8 opaqueDeviceHandle:v10 error:v7];
      }

      else
      {
        [v5 deviceAttestation:v8 failedForDevice:v10 error:v7];
      }

LABEL_21:
    }

LABEL_22:
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_239386590(id *a1)
{
  sub_2393865EC(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2393865C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 40);
  *a2 = v2;
  if (v2 == 1)
  {
    *(a2 + 2) = *(result + 42);
  }

  return result;
}

void sub_23938699C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = v8[7];
      v10 = [v8 controllerID];
      v11 = [*(a1 + 40) nodeID];
      [v7 setXPCConnection:v9 controllerID:v10 deviceID:v11];
    }

    v19 = [v5 proxy];
    v18 = [*(a1 + 40) controllerID];
    v12 = [*(a1 + 40) nodeID];
    v13 = [v12 unsignedLongLongValue];
    v14 = [*(a1 + 48) minInterval];
    v15 = [*(a1 + 48) maxInterval];
    v16 = [MTRDeviceController encodeXPCSubscribeParams:*(a1 + 48)];
    v17 = *(a1 + 32) != 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_239386C5C;
    v20[3] = &unk_278A75368;
    v21 = *(a1 + 56);
    v23 = *(a1 + 64);
    v24 = *(a1 + 72);
    v22 = v5;
    [v19 subscribeWithController:v18 nodeId:v13 minInterval:v14 maxInterval:v15 params:v16 shouldCache:v17 completion:v20];
  }
}

void sub_239386C5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239386D28;
  block[3] = &unk_278A74198;
  v7 = v3;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t sub_239386D28(void *a1)
{
  if (a1[4])
  {
    return (*(a1[5] + 16))();
  }

  else
  {
    return (*(a1[6] + 16))();
  }
}

void sub_239386FC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 80) + 16))();
  }

  else
  {
    v14 = [v5 proxy];
    v13 = [*(a1 + 32) controllerID];
    v7 = [*(a1 + 32) nodeID];
    v8 = [v7 unsignedLongLongValue];
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = [MTRDeviceController encodeXPCReadParams:*(a1 + 64)];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2393871C0;
    v15[3] = &unk_278A753E0;
    v16 = *(a1 + 72);
    v18 = *(a1 + 80);
    v17 = v5;
    [v14 readAttributeWithController:v13 nodeId:v8 endpointId:v9 clusterId:v10 attributeId:v11 params:v12 completion:v15];
  }
}

void sub_2393871C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2393872AC;
  v10[3] = &unk_278A753B8;
  v14 = *(a1 + 48);
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_2393872AC(void *a1)
{
  v2 = sub_2393D9044(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Attribute read", v5, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

  v3 = a1[7];
  v4 = [MTRDeviceController decodeXPCResponseValues:a1[4]];
  (*(v3 + 16))(v3, v4, a1[5]);
}

void sub_23938771C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);

  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_2393877DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

void sub_23938786C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = v5;
  v7 = *(*(a1 + 48) + 8);
  if ((*(v7 + 24) & 1) == 0)
  {
    if (v5)
    {
      *(v7 + 24) = 1;
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      [*(a1 + 32) addObjectsFromArray:v10];
      if (++*(*(*(a1 + 56) + 8) + 24) == *(a1 + 64))
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
        v8 = *(a1 + 40);
        v9 = [*(a1 + 32) copy];
        (*(v8 + 16))(v8, v9, 0);
      }
    }
  }
}

void sub_239387BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28)
{
  v32 = v30;

  _Unwind_Resume(a1);
}

void sub_239387C44(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 88) + 16))();
  }

  else
  {
    v15 = [v5 proxy];
    v14 = [*(a1 + 32) controllerID];
    v13 = [*(a1 + 32) nodeID];
    v7 = [v13 unsignedLongLongValue];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = *(a1 + 56);
    v10 = *(a1 + 64);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_239387E28;
    v16[3] = &unk_278A753E0;
    v12 = *(a1 + 72);
    v17 = *(a1 + 80);
    v19 = *(a1 + 88);
    v18 = v5;
    [v15 writeAttributeWithController:v14 nodeId:v7 endpointId:v8 clusterId:v9 attributeId:v11 value:v10 timedWriteTimeout:v12 completion:v16];
  }
}

void sub_239387E28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_239387F14;
  v10[3] = &unk_278A753B8;
  v14 = *(a1 + 48);
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_239387F14(void *a1)
{
  v2 = sub_2393D9044(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Attribute written", v5, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

  v3 = a1[7];
  v4 = [MTRDeviceController decodeXPCResponseValues:a1[4]];
  (*(v3 + 16))(v3, v4, a1[5]);
}

void sub_239388218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28)
{
  v32 = v30;

  _Unwind_Resume(a1);
}

void sub_2393882A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 88) + 16))();
  }

  else
  {
    v15 = [v5 proxy];
    v14 = [*(a1 + 32) controllerID];
    v13 = [*(a1 + 32) nodeID];
    v7 = [v13 unsignedLongLongValue];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = *(a1 + 56);
    v10 = *(a1 + 64);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_239388484;
    v16[3] = &unk_278A753E0;
    v12 = *(a1 + 72);
    v17 = *(a1 + 80);
    v19 = *(a1 + 88);
    v18 = v5;
    [v15 invokeCommandWithController:v14 nodeId:v7 endpointId:v8 clusterId:v9 commandId:v11 fields:v10 timedInvokeTimeout:v12 completion:v16];
  }
}

void sub_239388484(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_239388570;
  v10[3] = &unk_278A753B8;
  v14 = *(a1 + 48);
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_239388570(void *a1)
{
  v2 = sub_2393D9044(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Command invoked", v5, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

  v3 = a1[7];
  v4 = [MTRDeviceController decodeXPCResponseValues:a1[4]];
  (*(v3 + 16))(v3, v4, a1[5]);
}

void sub_239388820(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

void sub_239388AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28)
{
  v31 = v30;

  _Unwind_Resume(a1);
}

void sub_239388B64(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_2393D9044(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "Setup report handler", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

  if (v6)
  {
    (*(a1[10] + 2))();
    (*(a1[11] + 2))();
  }

  else
  {
    v8 = [a1[4] xpcConnection];
    v28 = v5;
    v9 = [a1[4] controllerID];
    v10 = [a1[4] nodeID];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_239388FB8;
    v33[3] = &unk_278A75480;
    v11 = a1[5];
    v36 = a1[11];
    v12 = a1[6];
    v13 = a1[7];
    v14 = a1[8];
    *&v15 = v13;
    *(&v15 + 1) = v14;
    *&v16 = v11;
    *(&v16 + 1) = v12;
    v34 = v16;
    v35 = v15;
    [v8 registerReportHandlerWithController:v9 nodeID:v10 handler:v33];

    v27 = [v5 proxy];
    v26 = [a1[4] controllerID];
    v25 = [a1[4] nodeID];
    v17 = [v25 unsignedLongLongValue];
    v19 = a1[6];
    v18 = a1[7];
    v20 = a1[8];
    v21 = [a1[9] minInterval];
    v22 = [a1[9] maxInterval];
    v23 = [MTRDeviceController encodeXPCSubscribeParams:a1[9]];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_239389598;
    v29[3] = &unk_278A73DE0;
    v24 = a1[5];
    v29[4] = a1[4];
    v30 = v24;
    v32 = a1[10];
    v31 = v28;
    [v27 subscribeAttributeWithController:v26 nodeId:v17 endpointId:v19 clusterId:v18 attributeId:v20 minInterval:v21 maxInterval:v22 params:v23 establishedHandler:v29];

    v5 = v28;
  }
}

void sub_239388FB8(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v25 = a3;
  v26 = v6;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [MTRDeviceController decodeXPCResponseValues:v6];
      v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v24, "count")}];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = v24;
      v7 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (!v7)
      {
        goto LABEL_27;
      }

      v29 = *v36;
      while (1)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v36 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v35 + 1) + 8 * i);
          v10 = [v9 objectForKeyedSubscript:@"attributePath"];
          v11 = v10;
          v12 = a1;
          v13 = *(a1 + 40);
          if (v13)
          {
            v3 = [v10 endpoint];
            v12 = a1;
            if (![v3 isEqualToNumber:*(a1 + 40)])
            {
              goto LABEL_20;
            }
          }

          v14 = *(v12 + 48);
          if (v14)
          {
            v4 = [v11 cluster];
            if (([v4 isEqualToNumber:*(v12 + 48)] & 1) == 0)
            {

              if (!v13)
              {
                goto LABEL_25;
              }

LABEL_20:

              goto LABEL_25;
            }

            if (!*(v12 + 56))
            {
              v15 = 1;
LABEL_16:

              if (!v13)
              {
                goto LABEL_23;
              }

              goto LABEL_17;
            }
          }

          else if (!*(v12 + 56))
          {
            v15 = 1;
            goto LABEL_22;
          }

          v16 = [v11 attribute];
          v15 = [v16 isEqualToNumber:*(v12 + 56)];

          if (v14)
          {
            goto LABEL_16;
          }

LABEL_22:
          if (!v13)
          {
LABEL_23:
            if (!v15)
            {
              goto LABEL_25;
            }

LABEL_24:
            [v27 addObject:v9];
            goto LABEL_25;
          }

LABEL_17:

          if (v15)
          {
            goto LABEL_24;
          }

LABEL_25:
        }

        v7 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (!v7)
        {
LABEL_27:

          if ([v27 count])
          {
            v17 = sub_2393D9044(0);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_INFO, "Report received", buf, 2u);
            }

            if (sub_2393D5398(3u))
            {
              sub_2393D5320(0, 3);
            }

            v18 = *(a1 + 32);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = sub_239389580;
            block[3] = &unk_278A72D48;
            v34 = *(a1 + 64);
            v32 = v27;
            v33 = v25;
            dispatch_async(v18, block);
          }

          v19 = obj;
          goto LABEL_39;
        }
      }
    }

    v23 = sub_2393D9044(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "Unsupported report format", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  else
  {
    v20 = sub_2393D9044(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_INFO, "Error report received", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }

    v21 = *(a1 + 32);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_239389568;
    v39[3] = &unk_278A72D48;
    v42 = *(a1 + 64);
    v40 = 0;
    v41 = v25;
    dispatch_async(v21, v39);

    v19 = v42;
LABEL_39:
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_239389598(id *a1)
{
  v2 = [a1[4] xpcConnection];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_239389688;
  v3[3] = &unk_278A72F88;
  v4 = a1[5];
  v6 = a1[7];
  v5 = a1[6];
  [v2 callSubscriptionEstablishedHandler:v3];
}

void sub_239389688(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_23938972C;
  v3[3] = &unk_278A71698;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);
}

uint64_t sub_23938972C(uint64_t a1)
{
  v2 = sub_2393D9044(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Subscription established", v4, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_239389A00(id *a1)
{
  v2 = a1[4];
  v3 = v2[7];
  v4 = [v2 controllerID];
  v5 = [a1[4] nodeID];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239389B10;
  v6[3] = &unk_278A72D98;
  v7 = a1[5];
  v8 = a1[6];
  [v3 deregisterReportHandlersWithController:v4 nodeID:v5 completion:v6];
}

void sub_239389B1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (a4)
  {
    v7 = 40;
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 32), a2);
    v7 = 48;
  }

  (*(*(a1 + v7) + 16))();
}

void sub_239389D20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

void sub_239389F00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

void sub_23938A118(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = [v5 proxy];
    v8 = [*(a1 + 32) controllerID];
    v9 = [*(a1 + 32) nodeID];
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_23938A2C8;
    v12[3] = &unk_278A754F8;
    v13 = *(a1 + 40);
    v15 = *(a1 + 48);
    v14 = v5;
    [v7 downloadLogWithController:v8 nodeId:v9 type:v10 timeout:v12 completion:v11];
  }
}

void sub_23938A2C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23938A3B4;
  v10[3] = &unk_278A753B8;
  v14 = *(a1 + 48);
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_23938A3B4(void *a1)
{
  v2 = sub_2393D9044(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Download log", v5, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

  v3 = a1[7];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:a1[4]];
  (*(v3 + 16))(v3, v4, a1[5]);
}

void sub_23938A630(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23938A6E4;
  v7[3] = &unk_278A72D98;
  v8 = v4;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v6 = v4;
  dispatch_async(v5, v7);
}

void sub_23938A6E4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Failed to obtain XPC connection", v7, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:1 userInfo:0];
    (*(v5 + 16))(v5, 0, v6);
  }
}

void sub_23938A7FC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    objc_storeStrong((*(a1 + 32) + 32), a2);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_23938A994(void *a1)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v15 = a1;
  if ((atomic_load_explicit(&qword_27DF776A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF776A8))
  {
    v25[0] = @"attributePath";
    v25[1] = @"data";
    v26[0] = &unk_284BB7410;
    v26[1] = &unk_284BB7430;
    qword_27DF776A0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    __cxa_guard_release(&qword_27DF776A8);
  }

  if ((atomic_load_explicit(&qword_27DF776B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF776B8))
  {
    v23[0] = @"attributePath";
    v23[1] = @"error";
    v24[0] = &unk_284BB7450;
    v24[1] = &unk_284BB7470;
    qword_27DF776B0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    __cxa_guard_release(&qword_27DF776B8);
  }

  objc_opt_class();
  if (((v15 != 0) & objc_opt_isKindOfClass()) != 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v1 = v15;
    v2 = [v1 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v2)
    {
      v3 = *v17;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v17 != v3)
          {
            objc_enumerationMutation(v1);
          }

          v5 = *(*(&v16 + 1) + 8 * i);
          if ((sub_23938AF58(v5, qword_27DF776A0) & 1) == 0 && (sub_23938AF58(v5, qword_27DF776B0) & 1) == 0)
          {
            v12 = sub_2393D9044(0);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v22 = v5;
              _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "Attribute report contains a weird entry: %@", buf, 0xCu);
            }

            if (sub_2393D5398(1u))
            {
LABEL_28:
              sub_2393D5320(0, 1);
            }

LABEL_29:
            v9 = 0;
            goto LABEL_30;
          }

          v6 = [v5 objectForKeyedSubscript:@"data"];
          if (v6)
          {
            v7 = [v5 objectForKeyedSubscript:@"error"];
            v8 = v7 == 0;

            if (!v8)
            {
              v11 = sub_2393D9044(0);
              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v22 = v5;
                _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Attribute report contains an entry that claims to be both data and error: %@", buf, 0xCu);
              }

              if (sub_2393D5398(1u))
              {
                goto LABEL_28;
              }

              goto LABEL_29;
            }
          }
        }

        v2 = [v1 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

    v9 = 1;
LABEL_30:
  }

  else
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Attribute report is not an array: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_23938ADB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  __cxa_guard_abort(&qword_27DF776B8);

  _Unwind_Resume(a1);
}

uint64_t sub_23938AE18(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (v2 != 0) & isKindOfClass;
}

uint64_t sub_23938AE88(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (v2 != 0) & isKindOfClass;
}

uint64_t sub_23938AEF0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (v2 != 0) & isKindOfClass;
}

uint64_t sub_23938AF58(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (((v3 != 0) & objc_opt_isKindOfClass()) != 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = *v16;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [v3 objectForKeyedSubscript:{v9, v15}];
        if (!v10)
        {
          break;
        }

        v11 = [v5 objectForKeyedSubscript:v9];
        v12 = v11[2](v11, v10);

        if (!v12)
        {
          v10 = 0;
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
          v10 = 1;
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_23938B148(void *a1)
{
  v39[6] = *MEMORY[0x277D85DE8];
  v28 = a1;
  if ((atomic_load_explicit(&qword_27DF776C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF776C8))
  {
    v38[0] = @"eventPath";
    v38[1] = @"data";
    v39[0] = &unk_284BB7490;
    v39[1] = &unk_284BB74B0;
    v38[2] = @"eventIsHistorical";
    v38[3] = @"eventNumber";
    v39[2] = &unk_284BB74D0;
    v39[3] = &unk_284BB74F0;
    v38[4] = @"eventPriority";
    v38[5] = @"eventTimeType";
    v39[4] = &unk_284BB7510;
    v39[5] = &unk_284BB7530;
    qword_27DF776C0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:6];
    __cxa_guard_release(&qword_27DF776C8);
  }

  if ((atomic_load_explicit(&qword_27DF776D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF776D8))
  {
    v36[0] = @"eventPath";
    v36[1] = @"error";
    v37[0] = &unk_284BB7550;
    v37[1] = &unk_284BB7570;
    v36[2] = @"eventIsHistorical";
    v37[2] = &unk_284BB7590;
    qword_27DF776D0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
    __cxa_guard_release(&qword_27DF776D8);
  }

  objc_opt_class();
  if (((v28 != 0) & objc_opt_isKindOfClass()) != 0)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v28;
    v1 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v1)
    {
      v2 = *v30;
      while (2)
      {
        for (i = 0; i != v1; ++i)
        {
          if (*v30 != v2)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v29 + 1) + 8 * i);
          if ((sub_23938AF58(v4, qword_27DF776C0) & 1) == 0 && (sub_23938AF58(v4, qword_27DF776D0) & 1) == 0)
          {
            v21 = sub_2393D9044(0);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v35 = v4;
              _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Event report contains a weird entry: %@", buf, 0xCu);
            }

            if (!sub_2393D5398(1u))
            {
              goto LABEL_52;
            }

            goto LABEL_51;
          }

          v5 = [v4 objectForKeyedSubscript:@"data"];
          if (v5)
          {
            v6 = [v4 objectForKeyedSubscript:@"error"];
            v7 = v6 == 0;

            if (!v7)
            {
              v20 = sub_2393D9044(0);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v35 = v4;
                _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "Event report contains an entry that claims to be both data and error: %@", buf, 0xCu);
              }

              if (sub_2393D5398(1u))
              {
                goto LABEL_51;
              }

LABEL_52:
              v18 = 0;
              goto LABEL_53;
            }
          }

          v8 = [v4 objectForKeyedSubscript:@"data"];
          v9 = v8 == 0;

          if (!v9)
          {
            v10 = [v4 objectForKeyedSubscript:@"eventTimeType"];
            v11 = [v10 unsignedLongLongValue];

            if (v11)
            {
              if (v11 != 1)
              {
                v22 = sub_2393D9044(0);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v35 = v4;
                  _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "Unknown time type for event report: %@", buf, 0xCu);
                }

                if (sub_2393D5398(1u))
                {
                  goto LABEL_51;
                }

                goto LABEL_52;
              }

              v12 = [v4 objectForKeyedSubscript:@"eventTimestampDate"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

LABEL_48:
                v24 = sub_2393D9044(0);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v35 = v4;
                  _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "Event report claims epoch timing but does not have the time: %@", buf, 0xCu);
                }

                if (!sub_2393D5398(1u))
                {
                  goto LABEL_52;
                }

                goto LABEL_51;
              }

              v13 = [v4 objectForKeyedSubscript:@"eventTimestampDate"];
              v14 = v13 == 0;

              if (v14)
              {
                goto LABEL_48;
              }
            }

            else
            {
              v15 = [v4 objectForKeyedSubscript:@"eventSystemUpTime"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

LABEL_43:
                v23 = sub_2393D9044(0);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v35 = v4;
                  _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "Event report claims system uptime timing but does not have the time: %@", buf, 0xCu);
                }

                if (!sub_2393D5398(1u))
                {
                  goto LABEL_52;
                }

LABEL_51:
                sub_2393D5320(0, 1);
                goto LABEL_52;
              }

              v16 = [v4 objectForKeyedSubscript:@"eventSystemUpTime"];
              v17 = v16 == 0;

              if (v17)
              {
                goto LABEL_43;
              }
            }
          }
        }

        v1 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        v18 = 1;
        if (v1)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v18 = 1;
    }

LABEL_53:
  }

  else
  {
    v19 = sub_2393D9044(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = v28;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Event report is not an array: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v18 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_23938B864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  __cxa_guard_abort(&qword_27DF776D8);

  _Unwind_Resume(a1);
}

uint64_t sub_23938B8F4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (v2 != 0) & isKindOfClass;
}

uint64_t sub_23938B964(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (v2 != 0) & isKindOfClass;
}

uint64_t sub_23938B9CC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (v2 != 0) & isKindOfClass;
}

uint64_t sub_23938BA34(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (v2 != 0) & isKindOfClass;
}

uint64_t sub_23938BA9C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (v2 != 0) & isKindOfClass;
}

uint64_t sub_23938BB04(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (v2 != 0) & isKindOfClass;
}

uint64_t sub_23938BB6C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (v2 != 0) & isKindOfClass;
}

uint64_t sub_23938BBD4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (v2 != 0) & isKindOfClass;
}

uint64_t sub_23938BC3C(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ((sub_23938BD48(v1) & 1) == 0)
  {
LABEL_8:
    v2 = 0;
    goto LABEL_9;
  }

  if ([v1 count] != 1)
  {
    v3 = sub_2393D9044(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v7 = v1;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Invoke response is not an array with exactly one entry: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    goto LABEL_8;
  }

  v2 = 1;
LABEL_9:

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_23938BD48(void *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v24 = v1;
  objc_opt_class();
  if (((v1 != 0) & objc_opt_isKindOfClass()) == 0)
  {
    v15 = sub_2393D9044(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v1;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Invoke responses are not an array: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v14 = 0;
    goto LABEL_52;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v1;
  v2 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (!v2)
  {
    v14 = 1;
    goto LABEL_51;
  }

  v3 = *v27;
  while (2)
  {
    for (i = 0; i != v2; ++i)
    {
      if (*v27 != v3)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v26 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & (v5 != 0)) != 1)
      {
        goto LABEL_28;
      }

      v6 = [v5 objectForKeyedSubscript:@"commandPath"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

LABEL_28:
        v16 = sub_2393D9044(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v31 = v5;
          _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Invoke response has an invalid array entry: %@", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1);
        }

        goto LABEL_50;
      }

      v7 = [v5 objectForKeyedSubscript:@"commandPath"];
      v8 = v7 == 0;

      if (v8)
      {
        goto LABEL_28;
      }

      v9 = [v5 objectForKeyedSubscript:@"data"];
      v10 = [v5 objectForKeyedSubscript:@"error"];
      v11 = v10;
      if (v9 && v10)
      {
        v17 = sub_2393D9044(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v31 = v5;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Invoke response claims to have both data and error: %@", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
LABEL_35:
          sub_2393D5320(0, 1);
        }

LABEL_49:

LABEL_50:
        v14 = 0;
        goto LABEL_51;
      }

      if (v10)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v18 = sub_2393D9044(0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v31 = v5;
            v32 = 2112;
            v33 = v11;
            _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "Invoke response %@ has %@ instead of an NSError", buf, 0x16u);
          }

          if (sub_2393D5398(1u))
          {
            goto LABEL_35;
          }

          goto LABEL_49;
        }
      }

      else
      {
        if (!v9)
        {
          goto LABEL_18;
        }

        if (!sub_238EE7184(v9))
        {
          v20 = sub_2393D9044(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v31 = v9;
            _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "Invoke response claims to have data that is not a data-value: %@", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            goto LABEL_47;
          }

          goto LABEL_48;
        }

        v12 = [v9 objectForKeyedSubscript:@"type"];
        v13 = [@"Structure" isEqual:v12];

        if ((v13 & 1) == 0)
        {
          v21 = sub_2393D9044(0);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v31 = v9;
            _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Invoke response data is not of structure type: %@", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
LABEL_47:
            v11 = 0;
            sub_2393D5320(0, 1);
            goto LABEL_49;
          }

LABEL_48:
          v11 = 0;
          goto LABEL_49;
        }
      }

LABEL_18:
    }

    v2 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    v14 = 1;
    if (v2)
    {
      continue;
    }

    break;
  }

LABEL_51:

LABEL_52:
  v22 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_23938C630(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_23938CAF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    [(os_unfair_lock_s *)v2 _resetStorageBehaviorState];
    os_unfair_lock_unlock(v2 + 2);
  }

  else
  {
    v3 = sub_2393D9044(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "NSNotificationCenter addObserverForName called back with nil MTRDevice", v4, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }
}

void sub_23938CDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  a10.super_class = MTRDevice_Concrete;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_23938D538(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2);

  _Unwind_Resume(a1);
}

void sub_23938D790(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [v3 _internalProperties];
    [v5 performSelector:sel_device_internalStateUpdated_ withObject:v3 withObject:v4];
  }
}

void sub_23938E1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, id location)
{
  objc_destroyWeak((v19 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23938E1E0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  dispatch_source_cancel(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v6 = WeakRetained;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "%@ Timer expired, start Device Time Update", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3);
  }

  if (WeakRetained)
  {
    [WeakRetained _performScheduledTimeUpdate];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v6 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "%@ MTRDevice no longer valid. No Timer Scheduled will be scheduled for a Device Time Update.", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_23938EC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, id location)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_23938EC94(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v4)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 138413058;
      v13 = WeakRetained;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ _setUTCTime failed on endpoint %@, with parameters %@, error: %@", buf, 0x2Au);
    }

    if (sub_2393D5398(1u))
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 32);
      sub_2393D5320(0, 1);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23938EFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, id location)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_23938F068(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v4)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 138413058;
      v13 = WeakRetained;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ _setDSTOffsets failed on endpoint %@, with parameters %@, error: %@", buf, 0x2Au);
    }

    if (sub_2393D5398(1u))
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 32);
      sub_2393D5320(0, 1);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23938F920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  objc_destroyWeak((v22 + 40));

  objc_destroyWeak((v23 - 72));
  _Unwind_Resume(a1);
}

void sub_23938F980(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 4);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_23938FB40;
    v8[3] = &unk_278A75698;
    objc_copyWeak(&v10, (a1 + 40));
    v9 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_23938FC64;
    v6[3] = &unk_278A756C0;
    objc_copyWeak(&v7, (a1 + 40));
    [v4 asyncDispatchToMatterQueue:v8 errorHandler:v6];
    objc_destroyWeak(&v7);

    objc_destroyWeak(&v10);
  }

  else
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "_ensureSubscriptionForExistingDelegates _scheduleSubscriptionPoolWork called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }
}

void sub_23938FB40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ and scheduled subscription is happening", *(a1 + 32)];
    [(os_unfair_lock_s *)v3 _setupSubscriptionWithReason:v4];

    os_unfair_lock_unlock(v3 + 2);
  }

  else
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "_ensureSubscriptionForExistingDelegates asyncDispatchToMatterQueue called back with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }
}

void sub_23938FC64(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = sub_2393D9044(0);
  v6 = v5;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v9 = WeakRetained;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ could not dispatch to matter queue for resubscription - error %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    os_unfair_lock_lock(WeakRetained + 2);
    [(os_unfair_lock_s *)WeakRetained _clearSubscriptionPoolWork];
    os_unfair_lock_unlock(WeakRetained + 2);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "_ensureSubscriptionForExistingDelegates asyncDispatchToMatterQueue errored with nil MTRDevice", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}