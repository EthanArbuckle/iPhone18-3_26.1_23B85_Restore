id sub_2392A8728(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        LOWORD(v21) = 0;
        v5 = sub_238F00228(a2, &v21);
        *a3 = v5;
        a3[1] = v6;
        if (v5 || BYTE1(v21) != 1)
        {
          goto LABEL_31;
        }

        goto LABEL_23;
      }

      goto LABEL_16;
    }

    sub_2393C5AAC(v26);
    sub_2393C5ADC(v26, 0, 0);
    v14 = sub_238F36BB4(v26, a2);
    v8 = 0;
    *a3 = v14;
    a3[1] = v15;
    if (v14)
    {
      goto LABEL_32;
    }

    v8 = objc_opt_new();
    sub_2393C5AAC(v23);
    v21 = 0;
    v22 = 0;
    sub_2393C5BDC(v23, v26);
    v24 = 0;
    v25 = 0;
    while (sub_238E43364(&v21))
    {
      v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v24 length:v25 encoding:4];
      if (!v16)
      {
        *a3 = xmmword_278A74998;
        goto LABEL_30;
      }

      [v8 addObject:v16];
    }

    if (v21 == 33)
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  if (a1 == 2)
  {
    LOBYTE(v21) = 0;
    v17 = sub_238EA4D5C(a2, &v21);
    *a3 = v17;
    a3[1] = v18;
    if (v17)
    {
LABEL_31:
      v8 = 0;
      goto LABEL_32;
    }

LABEL_23:
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v21];
    goto LABEL_32;
  }

  if (a1 != 3)
  {
LABEL_16:
    v8 = 0;
    *a3 = 0x1784000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_32;
  }

  sub_2393C5AAC(v26);
  sub_2393C5ADC(v26, 0, 0);
  v7 = sub_238F36BB4(v26, a2);
  v8 = 0;
  *a3 = v7;
  a3[1] = v9;
  if (!v7)
  {
    v8 = objc_opt_new();
    sub_2393C5AAC(v23);
    v21 = 0;
    v22 = 0;
    sub_2393C5BDC(v23, v26);
    while (1)
    {
      v10 = sub_238EA1A80(&v21);
      LODWORD(v11) = v21;
      if (v21)
      {
        v10 = 0;
      }

      if (!v10)
      {
        break;
      }

      LOBYTE(v24) = 0;
      v11 = sub_238EA4D5C(v23, &v24);
      v21 = v11;
      v22 = v12;
      if (v11)
      {
        break;
      }

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v24];
      [v8 addObject:v13];
    }

    if (v11 != 33)
    {
LABEL_27:
      if (!v21)
      {
        goto LABEL_32;
      }

      v19 = v22;
      *a3 = v21;
      a3[1] = v19;
LABEL_30:

      goto LABEL_31;
    }
  }

LABEL_32:

  return v8;
}

id sub_2392A8A24(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    LOBYTE(v28[0]) = 0;
    v18 = sub_2393C5ED0(a2, v28);
    *a3 = v18;
    a3[1] = v19;
    if (v18)
    {
LABEL_28:
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v28[0])];
    }
  }

  else if (a1)
  {
    v7 = 0;
    *a3 = 0x17D3000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v31);
    sub_2393C5ADC(v5, 0, 0);
    v6 = sub_238F36BB4(v31, a2);
    v7 = 0;
    *a3 = v6;
    a3[1] = v8;
    if (!v6)
    {
      v7 = objc_opt_new();
      sub_2392C7EFC(v28, v31);
      while (sub_238EA1A80(v28) && sub_2392C7F5C(v28))
      {
        v9 = objc_opt_new();
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v28[11] length:v28[12] encoding:4];
        [v9 setLabel:v10];

        v11 = [v9 label];

        if (!v11)
        {
          *a3 = xmmword_278A749A8;
          goto LABEL_26;
        }

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
        [v9 setMode:v12];

        v13 = objc_opt_new();
        sub_2393C5AAC(v25);
        v23 = 0;
        v24 = 0;
        sub_2393C5BDC(v25, &v30);
        v26[0] = 0;
        v27 = 0;
        while (sub_238EA1A80(&v23) && sub_2392C8000(&v23))
        {
          v14 = objc_opt_new();
          v15 = v14;
          if (v26[0] == 1)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v26)];
            [v15 setMfgCode:v16];
          }

          else
          {
            [v14 setMfgCode:0];
          }

          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v27];
          [v15 setValue:v17];

          [v13 addObject:v15];
        }

        if (v23 != 33 && v23)
        {
          v21 = v24;
          *a3 = v23;
          a3[1] = v21;

LABEL_26:
LABEL_27:

          goto LABEL_28;
        }

        [v9 setModeTags:v13];

        [v7 addObject:v9];
      }

      if (LODWORD(v28[0]) != 33 && LODWORD(v28[0]))
      {
        v20 = v28[1];
        *a3 = v28[0];
        a3[1] = v20;
        goto LABEL_27;
      }
    }
  }

  return v7;
}

id sub_2392A8DAC(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    LOBYTE(v28[0]) = 0;
    v18 = sub_2393C5ED0(a2, v28);
    *a3 = v18;
    a3[1] = v19;
    if (v18)
    {
LABEL_28:
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v28[0])];
    }
  }

  else if (a1)
  {
    v7 = 0;
    *a3 = 0x1822000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v31);
    sub_2393C5ADC(v5, 0, 0);
    v6 = sub_238F36BB4(v31, a2);
    v7 = 0;
    *a3 = v6;
    a3[1] = v8;
    if (!v6)
    {
      v7 = objc_opt_new();
      sub_2392C7EFC(v28, v31);
      while (sub_238EA1A80(v28) && sub_2392C7F5C(v28))
      {
        v9 = objc_opt_new();
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v28[11] length:v28[12] encoding:4];
        [v9 setLabel:v10];

        v11 = [v9 label];

        if (!v11)
        {
          *a3 = xmmword_278A749B8;
          goto LABEL_26;
        }

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
        [v9 setMode:v12];

        v13 = objc_opt_new();
        sub_2393C5AAC(v25);
        v23 = 0;
        v24 = 0;
        sub_2393C5BDC(v25, &v30);
        v26[0] = 0;
        v27 = 0;
        while (sub_238EA1A80(&v23) && sub_2392C8000(&v23))
        {
          v14 = objc_opt_new();
          v15 = v14;
          if (v26[0] == 1)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v26)];
            [v15 setMfgCode:v16];
          }

          else
          {
            [v14 setMfgCode:0];
          }

          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v27];
          [v15 setValue:v17];

          [v13 addObject:v15];
        }

        if (v23 != 33 && v23)
        {
          v21 = v24;
          *a3 = v23;
          a3[1] = v21;

LABEL_26:
LABEL_27:

          goto LABEL_28;
        }

        [v9 setModeTags:v13];

        [v7 addObject:v9];
      }

      if (LODWORD(v28[0]) != 33 && LODWORD(v28[0]))
      {
        v20 = v28[1];
        *a3 = v28[0];
        a3[1] = v20;
        goto LABEL_27;
      }
    }
  }

  return v7;
}

id sub_2392A9134(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 <= 2)
  {
    if (a1 > 2)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (a1 == 3)
  {
LABEL_12:
    LOWORD(v16) = 0;
    v9 = sub_2393C5E20(a2, &v16);
    *a3 = v9;
    a3[1] = v10;
    if (v9)
    {
LABEL_13:
      v6 = 0;
      goto LABEL_17;
    }

    v11 = [MEMORY[0x277CCABB0] numberWithShort:v16];
LABEL_15:
    v6 = v11;
    goto LABEL_17;
  }

  if (a1 == 4)
  {
    LOBYTE(v16) = 0;
    v13 = sub_2393C5ED0(a2, &v16);
    *a3 = v13;
    a3[1] = v14;
    if (v13)
    {
      goto LABEL_13;
    }

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v16];
    goto LABEL_15;
  }

  if (a1 != 5)
  {
LABEL_16:
    v6 = 0;
    *a3 = 0x1885000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_17;
  }

  sub_2393C5AAC(v21);
  sub_2393C5ADC(v21, 0, 0);
  v5 = sub_238F36BB4(v21, a2);
  v6 = 0;
  *a3 = v5;
  a3[1] = v7;
  if (!v5)
  {
    v6 = objc_opt_new();
    sub_2393C5AAC(v18);
    v16 = 0;
    v17 = 0;
    sub_2393C5BDC(v18, v21);
    v19 = 0;
    v20 = 0;
    while (sub_238E43364(&v16))
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v19 length:v20 encoding:4];
      if (!v8)
      {
        *a3 = xmmword_278A749C8;
        goto LABEL_26;
      }

      [v6 addObject:v8];
    }

    if (v16 != 33 && v16)
    {
      v15 = v17;
      *a3 = v16;
      a3[1] = v15;
LABEL_26:

      goto LABEL_13;
    }
  }

LABEL_17:

  return v6;
}

id sub_2392A9350(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 3)
  {
    v14 = 0;
    v10 = sub_238F37278(a2, &v14);
    *a3 = v10;
    a3[1] = v11;
    if (!v10)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v14;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (a1 == 2)
  {
    v15 = 0;
    v8 = sub_238F37278(a2, &v15);
    *a3 = v8;
    a3[1] = v9;
    if (!v8)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v15;
      goto LABEL_12;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_13;
  }

  if (a1)
  {
    v12 = 0;
    *a3 = 0x18B3000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_13;
  }

  v16 = 0;
  v4 = sub_238F37278(a2, &v16);
  *a3 = v4;
  a3[1] = v5;
  if (v4)
  {
    goto LABEL_9;
  }

  v6 = MEMORY[0x277CCABB0];
  v7 = v16;
LABEL_12:
  v12 = [v6 numberWithUnsignedInt:v7];
LABEL_13:

  return v12;
}

id sub_2392A9444(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    LOBYTE(v28[0]) = 0;
    v18 = sub_2393C5ED0(a2, v28);
    *a3 = v18;
    a3[1] = v19;
    if (v18)
    {
LABEL_28:
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v28[0])];
    }
  }

  else if (a1)
  {
    v7 = 0;
    *a3 = 0x1902000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v31);
    sub_2393C5ADC(v5, 0, 0);
    v6 = sub_238F36BB4(v31, a2);
    v7 = 0;
    *a3 = v6;
    a3[1] = v8;
    if (!v6)
    {
      v7 = objc_opt_new();
      sub_2392C7EFC(v28, v31);
      while (sub_238EA1A80(v28) && sub_2392C7F5C(v28))
      {
        v9 = objc_opt_new();
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v28[11] length:v28[12] encoding:4];
        [v9 setLabel:v10];

        v11 = [v9 label];

        if (!v11)
        {
          *a3 = xmmword_278A749D8;
          goto LABEL_26;
        }

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
        [v9 setMode:v12];

        v13 = objc_opt_new();
        sub_2393C5AAC(v25);
        v23 = 0;
        v24 = 0;
        sub_2393C5BDC(v25, &v30);
        v26[0] = 0;
        v27 = 0;
        while (sub_238EA1A80(&v23) && sub_2392C8000(&v23))
        {
          v14 = objc_opt_new();
          v15 = v14;
          if (v26[0] == 1)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v26)];
            [v15 setMfgCode:v16];
          }

          else
          {
            [v14 setMfgCode:0];
          }

          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v27];
          [v15 setValue:v17];

          [v13 addObject:v15];
        }

        if (v23 != 33 && v23)
        {
          v21 = v24;
          *a3 = v23;
          a3[1] = v21;

LABEL_26:
LABEL_27:

          goto LABEL_28;
        }

        [v9 setModeTags:v13];

        [v7 addObject:v9];
      }

      if (LODWORD(v28[0]) != 33 && LODWORD(v28[0]))
      {
        v20 = v28[1];
        *a3 = v28[0];
        a3[1] = v20;
        goto LABEL_27;
      }
    }
  }

  return v7;
}

id sub_2392A97CC(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x191A000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    v8 = 0;
    v5 = sub_238EFFAE8(a2, &v8);
    *a3 = v5;
    a3[1] = v6;
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v8];
    }
  }

  return v4;
}

id sub_2392A9860(int a1, uint64_t a2, void *a3)
{
  switch(a1)
  {
    case 0:
      LOBYTE(v12) = 0;
      v4 = sub_238F1439C(a2, &v12);
      goto LABEL_3;
    case 1:
    case 2:
    case 3:
    case 8:
    case 9:
    case 11:
      LOBYTE(v12) = 0;
      v4 = sub_238EFD7D0(a2, &v12);
      goto LABEL_3;
    case 4:
    case 7:
      LOBYTE(v12) = 0;
      v4 = sub_238EFF894(a2, &v12);
      goto LABEL_3;
    case 5:
    case 6:
      LOBYTE(v12) = 0;
      v7 = sub_2393C5CE4(a2, &v12);
      *a3 = v7;
      a3[1] = v8;
      if (v7)
      {
        goto LABEL_4;
      }

      v6 = [MEMORY[0x277CCABB0] numberWithBool:v12];
      break;
    case 10:
      LOBYTE(v12) = 0;
      v4 = sub_238EA4D5C(a2, &v12);
LABEL_3:
      *a3 = v4;
      a3[1] = v5;
      if (v4)
      {
        goto LABEL_4;
      }

      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v12];
      break;
    case 12:
      v12 = 0;
      v9 = sub_2393C5FC8(a2, &v12);
      *a3 = v9;
      a3[1] = v10;
      if (v9)
      {
LABEL_4:
        v6 = 0;
      }

      else
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
      }

      break;
    default:
      v6 = 0;
      *a3 = 0x19B6000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      break;
  }

  return v6;
}

id sub_2392A99E0(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 > 1)
  {
    if (a1 != 2 && a1 != 3)
    {
      goto LABEL_9;
    }
  }

  else if (a1 >= 2)
  {
LABEL_9:
    v6 = 0;
    *a3 = 0x19EF000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_10;
  }

  v8 = 0;
  v4 = sub_238F37278(a2, &v8);
  *a3 = v4;
  a3[1] = v5;
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  }

LABEL_10:

  return v6;
}

id sub_2392A9A98(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    LOBYTE(v28[0]) = 0;
    v18 = sub_2393C5ED0(a2, v28);
    *a3 = v18;
    a3[1] = v19;
    if (v18)
    {
LABEL_28:
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v28[0])];
    }
  }

  else if (a1)
  {
    v7 = 0;
    *a3 = 0x1A3E000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v31);
    sub_2393C5ADC(v5, 0, 0);
    v6 = sub_238F36BB4(v31, a2);
    v7 = 0;
    *a3 = v6;
    a3[1] = v8;
    if (!v6)
    {
      v7 = objc_opt_new();
      sub_2392C7EFC(v28, v31);
      while (sub_238EA1A80(v28) && sub_2392C7F5C(v28))
      {
        v9 = objc_opt_new();
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v28[11] length:v28[12] encoding:4];
        [v9 setLabel:v10];

        v11 = [v9 label];

        if (!v11)
        {
          *a3 = xmmword_278A749E8;
          goto LABEL_26;
        }

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
        [v9 setMode:v12];

        v13 = objc_opt_new();
        sub_2393C5AAC(v25);
        v23 = 0;
        v24 = 0;
        sub_2393C5BDC(v25, &v30);
        v26[0] = 0;
        v27 = 0;
        while (sub_238EA1A80(&v23) && sub_2392C8000(&v23))
        {
          v14 = objc_opt_new();
          v15 = v14;
          if (v26[0] == 1)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v26)];
            [v15 setMfgCode:v16];
          }

          else
          {
            [v14 setMfgCode:0];
          }

          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v27];
          [v15 setValue:v17];

          [v13 addObject:v15];
        }

        if (v23 != 33 && v23)
        {
          v21 = v24;
          *a3 = v23;
          a3[1] = v21;

LABEL_26:
LABEL_27:

          goto LABEL_28;
        }

        [v9 setModeTags:v13];

        [v7 addObject:v9];
      }

      if (LODWORD(v28[0]) != 33 && LODWORD(v28[0]))
      {
        v20 = v28[1];
        *a3 = v28[0];
        a3[1] = v20;
        goto LABEL_27;
      }
    }
  }

  return v7;
}

id sub_2392A9E20(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (a1 <= 1)
      {
        LODWORD(v18) = 0;
        v8 = sub_2393C5FC8(a2, &v18);
        *a3 = v8;
        a3[1] = v9;
        if (!v8)
        {
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18];
          goto LABEL_15;
        }

LABEL_13:
        v12 = 0;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_12:
    LOBYTE(v18) = 0;
    v10 = sub_2393C5ED0(a2, &v18);
    *a3 = v10;
    a3[1] = v11;
    if (!v10)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v18];
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (a1 <= 5)
  {
    goto LABEL_12;
  }

  if (a1 != 6)
  {
    if (a1 != 7)
    {
      if (a1 == 8)
      {
        LOWORD(v18) = 0;
        v5 = sub_2393C5F70(a2, &v18);
        *a3 = v5;
        a3[1] = v6;
        if (!v5)
        {
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v18];
LABEL_15:
          v12 = v7;
          goto LABEL_21;
        }

        goto LABEL_13;
      }

LABEL_20:
      v12 = 0;
      *a3 = 0x1ABD000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  sub_2393C5AAC(v21);
  sub_2393C5ADC(v21, 0, 0);
  v13 = sub_238F36BB4(v21, a2);
  v12 = 0;
  *a3 = v13;
  a3[1] = v14;
  if (!v13)
  {
    v12 = objc_opt_new();
    sub_2393C5AAC(v20);
    v18 = 0;
    v19 = 0;
    sub_2393C5BDC(v20, v21);
    while (sub_238DD5C4C(&v18))
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v20[36]];
      [v12 addObject:v15];
    }

    if (v18 != 33 && v18)
    {
      v17 = v19;
      *a3 = v18;
      a3[1] = v17;

      goto LABEL_13;
    }
  }

LABEL_21:

  return v12;
}

id sub_2392AA068(int a1, uint64_t a2, void *a3)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      sub_2393C5AAC(v40);
      sub_2393C5ADC(v40, 0, 0);
      v19 = sub_238F36BB4(v40, a2);
      v14 = 0;
      *a3 = v19;
      a3[1] = v20;
      if (v19)
      {
        goto LABEL_52;
      }

      v14 = objc_opt_new();
      sub_2393C5AAC(v36);
      v34 = 0;
      v35 = 0;
      sub_2393C5BDC(v36, v40);
      LOBYTE(v38) = 0;
      LOBYTE(v39[0]) = 0;
      while (sub_238EA1A80(&v34) && sub_2392C7EAC(&v34))
      {
        v21 = objc_opt_new();
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v38];
        [v21 setOperationalStateID:v22];

        if (LOBYTE(v39[0]) == 1)
        {
          v23 = sub_238DE36B8(v39);
          v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v23 length:v23[1] encoding:4];
          [v21 setOperationalStateLabel:v24];

          v25 = [v21 operationalStateLabel];

          if (!v25)
          {
            *a3 = xmmword_278A74A08;

            goto LABEL_50;
          }
        }

        else
        {
          [v21 setOperationalStateLabel:0];
        }

        [v14 addObject:v21];
      }

      goto LABEL_38;
    }

    if (a1 == 4)
    {
      LOBYTE(v34) = 0;
      v28 = sub_238EA4D5C(a2, &v34);
      *a3 = v28;
      a3[1] = v29;
      if (v28)
      {
        goto LABEL_51;
      }

      goto LABEL_36;
    }

    if (a1 != 5)
    {
      goto LABEL_31;
    }

    LOBYTE(v34) = 0;
    LOBYTE(v35) = 0;
    v37[0] = 0;
    v8 = sub_238F357FC(&v34, a2);
    *a3 = v8;
    a3[1] = v9;
    if (v8)
    {
      goto LABEL_51;
    }

    v10 = objc_opt_new();
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v34];
    [v10 setErrorStateID:v11];

    if (v35 == 1)
    {
      v12 = sub_239289A18(&v35);
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v12 length:v12[1] encoding:4];
      [v10 setErrorStateLabel:v13];

      v14 = [v10 errorStateLabel];

      if (!v14)
      {
        v15 = &xmmword_278A74A18;
LABEL_45:
        *a3 = *v15;
LABEL_48:

        goto LABEL_52;
      }
    }

    else
    {
      [v10 setErrorStateLabel:0];
    }

    if (v37[0] == 1)
    {
      v31 = sub_239289A18(v37);
      v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v31 length:v31[1] encoding:4];
      [v10 setErrorStateDetails:v32];

      v14 = [v10 errorStateDetails];

      if (!v14)
      {
        v15 = &xmmword_278A74A28;
        goto LABEL_45;
      }
    }

    else
    {
      [v10 setErrorStateDetails:0];
    }

    v14 = v10;
    goto LABEL_48;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        LOBYTE(v34) = 0;
        BYTE4(v34) = 0;
        v5 = sub_238EFDEB0(a2, &v34);
        *a3 = v5;
        a3[1] = v6;
        if (!v5 && BYTE4(v34) == 1)
        {
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v34];
LABEL_37:
          v14 = v7;
          goto LABEL_52;
        }

        goto LABEL_51;
      }

LABEL_31:
      v14 = 0;
      *a3 = 0x1B5B000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_52;
    }

    LOWORD(v34) = 0;
    v26 = sub_238F00228(a2, &v34);
    *a3 = v26;
    a3[1] = v27;
    if (v26 || BYTE1(v34) != 1)
    {
LABEL_51:
      v14 = 0;
      goto LABEL_52;
    }

LABEL_36:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v34];
    goto LABEL_37;
  }

  v40[0] = 0;
  v41 = 0;
  v16 = sub_238EFE808(a2, v40);
  *a3 = v16;
  a3[1] = v17;
  if (v16 || v41 != 1)
  {
    goto LABEL_51;
  }

  v14 = objc_opt_new();
  if ((v41 & 1) == 0)
  {
    sub_238EA195C();
  }

  sub_2393C5AAC(v36);
  v34 = 0;
  v35 = 0;
  sub_2393C5BDC(v36, v40);
  v38 = 0;
  v39[0] = 0;
  while (sub_238E43364(&v34))
  {
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v38 length:v39[0] encoding:4];
    if (!v18)
    {
      *a3 = xmmword_278A749F8;
      goto LABEL_50;
    }

    [v14 addObject:v18];
  }

LABEL_38:
  if (v34 != 33 && v34)
  {
    v30 = v35;
    *a3 = v34;
    a3[1] = v30;
LABEL_50:

    goto LABEL_51;
  }

LABEL_52:

  return v14;
}

id sub_2392AA60C(int a1, uint64_t a2, void *a3)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      sub_2393C5AAC(v40);
      sub_2393C5ADC(v40, 0, 0);
      v19 = sub_238F36BB4(v40, a2);
      v14 = 0;
      *a3 = v19;
      a3[1] = v20;
      if (v19)
      {
        goto LABEL_52;
      }

      v14 = objc_opt_new();
      sub_2393C5AAC(v36);
      v34 = 0;
      v35 = 0;
      sub_2393C5BDC(v36, v40);
      LOBYTE(v38) = 0;
      LOBYTE(v39[0]) = 0;
      while (sub_238EA1A80(&v34) && sub_2392C7EAC(&v34))
      {
        v21 = objc_opt_new();
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v38];
        [v21 setOperationalStateID:v22];

        if (LOBYTE(v39[0]) == 1)
        {
          v23 = sub_238DE36B8(v39);
          v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v23 length:v23[1] encoding:4];
          [v21 setOperationalStateLabel:v24];

          v25 = [v21 operationalStateLabel];

          if (!v25)
          {
            *a3 = xmmword_278A74A48;

            goto LABEL_50;
          }
        }

        else
        {
          [v21 setOperationalStateLabel:0];
        }

        [v14 addObject:v21];
      }

      goto LABEL_38;
    }

    if (a1 == 4)
    {
      LOBYTE(v34) = 0;
      v28 = sub_2393C5ED0(a2, &v34);
      *a3 = v28;
      a3[1] = v29;
      if (v28)
      {
        goto LABEL_51;
      }

      goto LABEL_36;
    }

    if (a1 != 5)
    {
      goto LABEL_31;
    }

    LOBYTE(v34) = 0;
    LOBYTE(v35) = 0;
    v37[0] = 0;
    v8 = sub_238F357FC(&v34, a2);
    *a3 = v8;
    a3[1] = v9;
    if (v8)
    {
      goto LABEL_51;
    }

    v10 = objc_opt_new();
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v34];
    [v10 setErrorStateID:v11];

    if (v35 == 1)
    {
      v12 = sub_239289A18(&v35);
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v12 length:v12[1] encoding:4];
      [v10 setErrorStateLabel:v13];

      v14 = [v10 errorStateLabel];

      if (!v14)
      {
        v15 = &xmmword_278A74A58;
LABEL_45:
        *a3 = *v15;
LABEL_48:

        goto LABEL_52;
      }
    }

    else
    {
      [v10 setErrorStateLabel:0];
    }

    if (v37[0] == 1)
    {
      v31 = sub_239289A18(v37);
      v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v31 length:v31[1] encoding:4];
      [v10 setErrorStateDetails:v32];

      v14 = [v10 errorStateDetails];

      if (!v14)
      {
        v15 = &xmmword_278A74A68;
        goto LABEL_45;
      }
    }

    else
    {
      [v10 setErrorStateDetails:0];
    }

    v14 = v10;
    goto LABEL_48;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        LOBYTE(v34) = 0;
        BYTE4(v34) = 0;
        v5 = sub_238EFDEB0(a2, &v34);
        *a3 = v5;
        a3[1] = v6;
        if (!v5 && BYTE4(v34) == 1)
        {
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v34];
LABEL_37:
          v14 = v7;
          goto LABEL_52;
        }

        goto LABEL_51;
      }

LABEL_31:
      v14 = 0;
      *a3 = 0x1BF9000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_52;
    }

    LOWORD(v34) = 0;
    v26 = sub_238F00228(a2, &v34);
    *a3 = v26;
    a3[1] = v27;
    if (v26 || BYTE1(v34) != 1)
    {
LABEL_51:
      v14 = 0;
      goto LABEL_52;
    }

LABEL_36:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v34];
    goto LABEL_37;
  }

  v40[0] = 0;
  v41 = 0;
  v16 = sub_238EFE808(a2, v40);
  *a3 = v16;
  a3[1] = v17;
  if (v16 || v41 != 1)
  {
    goto LABEL_51;
  }

  v14 = objc_opt_new();
  if ((v41 & 1) == 0)
  {
    sub_238EA195C();
  }

  sub_2393C5AAC(v36);
  v34 = 0;
  v35 = 0;
  sub_2393C5BDC(v36, v40);
  v38 = 0;
  v39[0] = 0;
  while (sub_238E43364(&v34))
  {
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v38 length:v39[0] encoding:4];
    if (!v18)
    {
      *a3 = xmmword_278A74A38;
      goto LABEL_50;
    }

    [v14 addObject:v18];
  }

LABEL_38:
  if (v34 != 33 && v34)
  {
    v30 = v35;
    *a3 = v34;
    a3[1] = v30;
LABEL_50:

    goto LABEL_51;
  }

LABEL_52:

  return v14;
}

id sub_2392AABB0(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 2)
  {
    sub_2393C5AAC(v21);
    sub_2393C5ADC(v21, 0, 0);
    v22 = 0;
    v8 = sub_238F36BB4(v21, a2);
    v7 = 0;
    *a3 = v8;
    a3[1] = v9;
    if (!v8)
    {
      v7 = objc_opt_new();
      v24[0] = v22;
      if (v22 == 1)
      {
        v24[1] = v23;
      }

      sub_238EA4630(v19, v21, v24);
      *(v20 + 3) = 0;
      v20[0] = 0;
      while (sub_2392C8050(v19))
      {
        v10 = objc_opt_new();
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v20[0])];
        [v10 setSceneCount:v11];

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v20[0])];
        [v10 setCurrentScene:v12];

        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:HIWORD(v20[0])];
        [v10 setCurrentGroup:v13];

        v14 = [MEMORY[0x277CCABB0] numberWithBool:LOBYTE(v20[1])];
        [v10 setSceneValid:v14];

        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v20[1])];
        [v10 setRemainingCapacity:v15];

        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v20[1])];
        [v10 setFabricIndex:v16];

        [v7 addObject:v10];
      }

      if (LODWORD(v19[0]) != 33 && LODWORD(v19[0]))
      {
        v17 = v19[1];
        *a3 = v19[0];
        a3[1] = v17;

        goto LABEL_4;
      }
    }
  }

  else if (a1 == 1)
  {
    LOWORD(v19[0]) = 0;
    v5 = sub_2393C5F70(a2, v19);
    *a3 = v5;
    a3[1] = v6;
    if (v5)
    {
LABEL_4:
      v7 = 0;
      goto LABEL_16;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:LOWORD(v19[0])];
  }

  else
  {
    v7 = 0;
    *a3 = 0x1C31000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

LABEL_16:

  return v7;
}

id sub_2392AAE7C(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          LOBYTE(v24) = 0;
          v5 = sub_238EFD7D0(a2, &v24);
          goto LABEL_22;
        }

LABEL_20:
        v8 = 0;
        *a3 = 0x1C9A000000B5;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
        goto LABEL_34;
      }

      LOBYTE(v24) = 0;
      v5 = sub_238EFF894(a2, &v24);
    }

    else
    {
      LOBYTE(v24) = 0;
      v5 = sub_2393C5ED0(a2, &v24);
    }

LABEL_22:
    *a3 = v5;
    a3[1] = v6;
    if (!v5)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v24];
      goto LABEL_24;
    }

    goto LABEL_33;
  }

  if (a1 == 3)
  {
    LOBYTE(v24) = 0;
    v17 = sub_2393C5CE4(a2, &v24);
    *a3 = v17;
    a3[1] = v18;
    if (!v17)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithBool:v24];
LABEL_24:
      v8 = v19;
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (a1 == 4)
  {
    LOBYTE(v24) = 0;
    BYTE4(v24) = 0;
    v20 = sub_238EFDEB0(a2, &v24);
    *a3 = v20;
    a3[1] = v21;
    if (!v20 && BYTE4(v24) == 1)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24];
      goto LABEL_24;
    }

LABEL_33:
    v8 = 0;
    goto LABEL_34;
  }

  if (a1 != 5)
  {
    goto LABEL_20;
  }

  sub_2393C5AAC(v30);
  sub_2393C5ADC(v30, 0, 0);
  v7 = sub_238F36BB4(v30, a2);
  v8 = 0;
  *a3 = v7;
  a3[1] = v9;
  if (!v7)
  {
    v8 = objc_opt_new();
    sub_2393C5AAC(v26);
    v24 = 0;
    v25 = 0;
    sub_2393C5BDC(v26, v30);
    LOBYTE(v27) = 0;
    v28 = 0;
    v29 = 0;
    while (1)
    {
      v10 = sub_238EA1A80(&v24);
      LODWORD(v11) = v24;
      if (v24)
      {
        v10 = 0;
      }

      if (!v10)
      {
        break;
      }

      v27 = 0;
      v28 = 0;
      v29 = 0;
      v11 = sub_238F00004(&v27, v26);
      v24 = v11;
      v25 = v12;
      if (v11)
      {
        break;
      }

      v13 = objc_opt_new();
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v27];
      [v13 setProductIdentifierType:v14];

      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v28 length:v29 encoding:4];
      [v13 setProductIdentifierValue:v15];

      v16 = [v13 productIdentifierValue];

      if (!v16)
      {
        *a3 = xmmword_278A74A78;

        goto LABEL_32;
      }

      [v8 addObject:v13];
    }

    if (v11 != 33 && v24)
    {
      v22 = v25;
      *a3 = v24;
      a3[1] = v22;
LABEL_32:

      goto LABEL_33;
    }
  }

LABEL_34:

  return v8;
}

id sub_2392AB1BC(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          LOBYTE(v24) = 0;
          v5 = sub_238EFD7D0(a2, &v24);
          goto LABEL_22;
        }

LABEL_20:
        v8 = 0;
        *a3 = 0x1D03000000B5;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
        goto LABEL_34;
      }

      LOBYTE(v24) = 0;
      v5 = sub_238EFF894(a2, &v24);
    }

    else
    {
      LOBYTE(v24) = 0;
      v5 = sub_2393C5ED0(a2, &v24);
    }

LABEL_22:
    *a3 = v5;
    a3[1] = v6;
    if (!v5)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v24];
      goto LABEL_24;
    }

    goto LABEL_33;
  }

  if (a1 == 3)
  {
    LOBYTE(v24) = 0;
    v17 = sub_2393C5CE4(a2, &v24);
    *a3 = v17;
    a3[1] = v18;
    if (!v17)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithBool:v24];
LABEL_24:
      v8 = v19;
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (a1 == 4)
  {
    LOBYTE(v24) = 0;
    BYTE4(v24) = 0;
    v20 = sub_238EFDEB0(a2, &v24);
    *a3 = v20;
    a3[1] = v21;
    if (!v20 && BYTE4(v24) == 1)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24];
      goto LABEL_24;
    }

LABEL_33:
    v8 = 0;
    goto LABEL_34;
  }

  if (a1 != 5)
  {
    goto LABEL_20;
  }

  sub_2393C5AAC(v30);
  sub_2393C5ADC(v30, 0, 0);
  v7 = sub_238F36BB4(v30, a2);
  v8 = 0;
  *a3 = v7;
  a3[1] = v9;
  if (!v7)
  {
    v8 = objc_opt_new();
    sub_2393C5AAC(v26);
    v24 = 0;
    v25 = 0;
    sub_2393C5BDC(v26, v30);
    LOBYTE(v27) = 0;
    v28 = 0;
    v29 = 0;
    while (1)
    {
      v10 = sub_238EA1A80(&v24);
      LODWORD(v11) = v24;
      if (v24)
      {
        v10 = 0;
      }

      if (!v10)
      {
        break;
      }

      v27 = 0;
      v28 = 0;
      v29 = 0;
      v11 = sub_238F00004(&v27, v26);
      v24 = v11;
      v25 = v12;
      if (v11)
      {
        break;
      }

      v13 = objc_opt_new();
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v27];
      [v13 setProductIdentifierType:v14];

      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v28 length:v29 encoding:4];
      [v13 setProductIdentifierValue:v15];

      v16 = [v13 productIdentifierValue];

      if (!v16)
      {
        *a3 = xmmword_278A74A88;

        goto LABEL_32;
      }

      [v8 addObject:v13];
    }

    if (v11 != 33 && v24)
    {
      v22 = v25;
      *a3 = v24;
      a3[1] = v22;
LABEL_32:

      goto LABEL_33;
    }
  }

LABEL_34:

  return v8;
}

id sub_2392AB4FC(int a1, uint64_t a2, void *a3)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 != 6)
      {
        if (a1 == 7)
        {
          v24 = 0;
          v12 = sub_238F36E54(a2, &v24);
          *a3 = v12;
          a3[1] = v13;
          if (!v12)
          {
            v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v24];
            goto LABEL_29;
          }

          goto LABEL_25;
        }

LABEL_26:
        v14 = 0;
        *a3 = 0x1D68000000B5;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
        goto LABEL_29;
      }

      v25 = 0;
      v21 = sub_238EA4DB4(a2, &v25);
      *a3 = v21;
      a3[1] = v22;
      if (!v21)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v25;
        goto LABEL_28;
      }
    }

    else if (a1 == 4)
    {
      v27 = 0;
      v17 = sub_238EA4DB4(a2, &v27);
      *a3 = v17;
      a3[1] = v18;
      if (!v17)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v27;
        goto LABEL_28;
      }
    }

    else
    {
      v26 = 0;
      v8 = sub_238EA4DB4(a2, &v26);
      *a3 = v8;
      a3[1] = v9;
      if (!v8)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v26;
        goto LABEL_28;
      }
    }

LABEL_25:
    v14 = 0;
    goto LABEL_29;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v29 = 0;
      v19 = sub_2393C5ED0(a2, &v29);
      *a3 = v19;
      a3[1] = v20;
      if (!v19)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v29;
        goto LABEL_28;
      }
    }

    else
    {
      v28 = 0;
      v10 = sub_238EA4DB4(a2, &v28);
      *a3 = v10;
      a3[1] = v11;
      if (!v10)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v28;
        goto LABEL_28;
      }
    }

    goto LABEL_25;
  }

  if (!a1)
  {
    v31 = 0;
    v15 = sub_2393C5ED0(a2, &v31);
    *a3 = v15;
    a3[1] = v16;
    if (!v15)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v31;
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (a1 != 1)
  {
    goto LABEL_26;
  }

  v30 = 0;
  v4 = sub_2393C5ED0(a2, &v30);
  *a3 = v4;
  a3[1] = v5;
  if (v4)
  {
    goto LABEL_25;
  }

  v6 = MEMORY[0x277CCABB0];
  v7 = v30;
LABEL_28:
  v14 = [v6 numberWithUnsignedChar:v7];
LABEL_29:

  return v14;
}

id sub_2392AB700(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 4)
  {
    if (a1 <= 1)
    {
      if (a1 > 1)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (a1 == 2)
      {
        LOBYTE(v16) = 0;
        v17 = 0;
        v13 = sub_238EFD658(a2, &v16);
        *a3 = v13;
        a3[1] = v14;
        if (!v13 && v17 == 1)
        {
          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16];
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (a1 != 3)
      {
        goto LABEL_8;
      }
    }

    LOBYTE(v16) = 0;
    BYTE4(v16) = 0;
    v9 = sub_238EFDEB0(a2, &v16);
    *a3 = v9;
    a3[1] = v10;
    if (!v9 && BYTE4(v16) == 1)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (a1 <= 7)
  {
    if (a1 != 5)
    {
      LOWORD(v16) = 0;
      v4 = sub_238F00228(a2, &v16);
LABEL_9:
      *a3 = v4;
      a3[1] = v5;
      if (v4 || BYTE1(v16) != 1)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

LABEL_8:
    LOWORD(v16) = 0;
    v4 = sub_238F0C9D0(a2, &v16);
    goto LABEL_9;
  }

  switch(a1)
  {
    case 8:
      goto LABEL_15;
    case 9:
      LOWORD(v16) = 0;
      v11 = sub_238F36E54(a2, &v16);
      *a3 = v11;
      a3[1] = v12;
      if (!v11)
      {
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16];
        goto LABEL_27;
      }

      goto LABEL_26;
    case 10:
LABEL_15:
      LOBYTE(v16) = 0;
      v6 = sub_2393C5ED0(a2, &v16);
      *a3 = v6;
      a3[1] = v7;
      if (v6)
      {
LABEL_26:
        v8 = 0;
        goto LABEL_27;
      }

LABEL_16:
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v16];
      goto LABEL_27;
  }

LABEL_30:
  v8 = 0;
  *a3 = 0x1E0E000000B5;
  a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
LABEL_27:

  return v8;
}

id sub_2392AB8E8(int a1, uint64_t a2, void *a3)
{
  switch(a1)
  {
    case 0:
      LOBYTE(v56) = 0;
      v41 = sub_238EFD7D0(a2, &v56);
      goto LABEL_65;
    case 1:
      LOBYTE(v56) = 0;
      v41 = sub_2393C5ED0(a2, &v56);
LABEL_65:
      *a3 = v41;
      a3[1] = v42;
      if (v41)
      {
        goto LABEL_90;
      }

      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v56];
      goto LABEL_67;
    case 2:
      sub_2393C5AAC(v82);
      sub_2393C5ADC(v8, 0, 0);
      v9 = sub_238F36BB4(v82, a2);
      v10 = 0;
      *a3 = v9;
      a3[1] = v11;
      if (v9)
      {
        goto LABEL_91;
      }

      v10 = objc_opt_new();
      sub_2392C8168(&v56, v82);
      break;
    case 3:
      sub_2393C5AAC(&v70);
      sub_2393C5ADC(&v70, 0, 0);
      v27 = sub_238F36BB4(&v70, a2);
      v10 = 0;
      *a3 = v27;
      a3[1] = v28;
      if (v27)
      {
        goto LABEL_91;
      }

      v10 = objc_opt_new();
      sub_2392C82D8(&v56, &v70);
      while (sub_238EA1A80(&v56) && sub_2392C8340(&v56))
      {
        v29 = objc_opt_new();
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v58];
        [v29 setMeasurementType:v30];

        v31 = [MEMORY[0x277CCABB0] numberWithLongLong:v60];
        [v29 setMin:v31];

        v32 = [MEMORY[0x277CCABB0] numberWithLongLong:v61];
        [v29 setMax:v32];

        if (v62[0] == 1)
        {
          v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v62)];
          [v29 setStartTimestamp:v33];
        }

        else
        {
          [v29 setStartTimestamp:0];
        }

        if (v63[0] == 1)
        {
          v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v63)];
          [v29 setEndTimestamp:v34];
        }

        else
        {
          [v29 setEndTimestamp:0];
        }

        if (v64[0] == 1)
        {
          v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v64)];
          [v29 setMinTimestamp:v35];
        }

        else
        {
          [v29 setMinTimestamp:0];
        }

        if (v65[0] == 1)
        {
          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v65)];
          [v29 setMaxTimestamp:v36];
        }

        else
        {
          [v29 setMaxTimestamp:0];
        }

        if (v66[0] == 1)
        {
          v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_238DE36B8(v66)];
          [v29 setStartSystime:v37];
        }

        else
        {
          [v29 setStartSystime:0];
        }

        if (v67[0] == 1)
        {
          v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_238DE36B8(v67)];
          [v29 setEndSystime:v38];
        }

        else
        {
          [v29 setEndSystime:0];
        }

        if (v68[0] == 1)
        {
          v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_238DE36B8(v68)];
          [v29 setMinSystime:v39];
        }

        else
        {
          [v29 setMinSystime:0];
        }

        if (v69[0] == 1)
        {
          v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_238DE36B8(v69)];
          [v29 setMaxSystime:v40];
        }

        else
        {
          [v29 setMaxSystime:0];
        }

        [v10 addObject:v29];
      }

      goto LABEL_86;
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 17:
    case 18:
      LOBYTE(v56) = 0;
      LOBYTE(v57) = 0;
      v5 = sub_238F0C244(a2, &v56);
      *a3 = v5;
      a3[1] = v6;
      if (v5 || v57 != 1)
      {
        goto LABEL_90;
      }

      v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v56];
LABEL_67:
      v10 = v7;
      goto LABEL_91;
    case 15:
      LOBYTE(v70) = 0;
      v73 = 0;
      v43 = sub_238EFE808(a2, &v70);
      *a3 = v43;
      a3[1] = v44;
      if (v43 || v73 != 1)
      {
        goto LABEL_90;
      }

      v10 = objc_opt_new();
      if ((v73 & 1) == 0)
      {
        sub_238EA195C();
      }

      sub_2392C80C8(&v70, &v56);
      while (sub_2392C8110(&v56))
      {
        v45 = objc_opt_new();
        v46 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v58];
        [v45 setOrder:v46];

        if (v61)
        {
          v47 = [MEMORY[0x277CCABB0] numberWithLongLong:v60];
          [v45 setMeasurement:v47];
        }

        else
        {
          [v45 setMeasurement:0];
        }

        [v10 addObject:v45];
      }

      goto LABEL_86;
    case 16:
      LOBYTE(v70) = 0;
      v73 = 0;
      v48 = sub_238EFE808(a2, &v70);
      *a3 = v48;
      a3[1] = v49;
      if (v48 || v73 != 1)
      {
        goto LABEL_90;
      }

      v10 = objc_opt_new();
      if ((v73 & 1) == 0)
      {
        sub_238EA195C();
      }

      sub_2392C80C8(&v70, &v56);
      while (sub_2392C8110(&v56))
      {
        v50 = objc_opt_new();
        v51 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v58];
        [v50 setOrder:v51];

        if (v61)
        {
          v52 = [MEMORY[0x277CCABB0] numberWithLongLong:v60];
          [v50 setMeasurement:v52];
        }

        else
        {
          [v50 setMeasurement:0];
        }

        [v10 addObject:v50];
      }

      goto LABEL_86;
    default:
      v10 = 0;
      *a3 = 0x1FCF000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_91;
  }

  while (sub_238EA1A80(&v56) && sub_2392C81CC(&v56))
  {
    v12 = objc_opt_new();
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v58];
    [v12 setMeasurementType:v13];

    v14 = [MEMORY[0x277CCABB0] numberWithBool:v59];
    [v12 setMeasured:v14];

    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v60];
    [v12 setMinMeasuredValue:v15];

    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v61];
    [v12 setMaxMeasuredValue:v16];

    v17 = objc_opt_new();
    sub_2393C5AAC(v72);
    v70 = 0;
    v71 = 0;
    sub_2393C5BDC(v72, v62);
    v77[0] = 0;
    v78[0] = 0;
    v79[0] = 0;
    v80[0] = 0;
    v81[0] = 0;
    v74 = 0;
    v75 = 0;
    v76[0] = 0;
    while (sub_238EA1A80(&v70) && sub_2392C8270(&v70))
    {
      v18 = objc_opt_new();
      v19 = [MEMORY[0x277CCABB0] numberWithLongLong:v74];
      [v18 setRangeMin:v19];

      v20 = [MEMORY[0x277CCABB0] numberWithLongLong:v75];
      [v18 setRangeMax:v20];

      if (v76[0] == 1)
      {
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v76)];
        [v18 setPercentMax:v21];
      }

      else
      {
        [v18 setPercentMax:0];
      }

      if (v77[0] == 1)
      {
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v77)];
        [v18 setPercentMin:v22];
      }

      else
      {
        [v18 setPercentMin:0];
      }

      if (v78[0] == 1)
      {
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v78)];
        [v18 setPercentTypical:v23];
      }

      else
      {
        [v18 setPercentTypical:0];
      }

      if (v79[0] == 1)
      {
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_238DE36B8(v79)];
        [v18 setFixedMax:v24];
      }

      else
      {
        [v18 setFixedMax:0];
      }

      if (v80[0] == 1)
      {
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_238DE36B8(v80)];
        [v18 setFixedMin:v25];
      }

      else
      {
        [v18 setFixedMin:0];
      }

      if (v81[0] == 1)
      {
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_238DE36B8(v81)];
        [v18 setFixedTypical:v26];
      }

      else
      {
        [v18 setFixedTypical:0];
      }

      [v17 addObject:v18];
    }

    if (v70 != 33 && v70)
    {
      v55 = v71;
      *a3 = v70;
      a3[1] = v55;

      goto LABEL_89;
    }

    [v12 setAccuracyRanges:v17];

    [v10 addObject:v12];
  }

LABEL_86:
  if (v56 == 33 || !v56)
  {
    goto LABEL_91;
  }

  v53 = v57;
  *a3 = v56;
  a3[1] = v53;
LABEL_89:

LABEL_90:
  v10 = 0;
LABEL_91:

  return v10;
}

id sub_2392AC470(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      LOBYTE(v70) = 0;
      LOBYTE(v78) = 0;
      v32 = sub_238F14CF8(a2, &v70);
      *a3 = v32;
      a3[1] = v33;
      if (!v32 && (v78 & 1) != 0)
      {
        v7 = objc_opt_new();
        if (v78 != 1)
        {
          goto LABEL_177;
        }

        v34 = [MEMORY[0x277CCABB0] numberWithLongLong:v70];
        [v7 setEnergy:v34];

        if (v78 != 1)
        {
          goto LABEL_177;
        }

        if (v71 == 1)
        {
          v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238F41E94(&v71)];
          [v7 setStartTimestamp:v35];
        }

        else
        {
          [v7 setStartTimestamp:0];
        }

        if (v78 != 1)
        {
          goto LABEL_177;
        }

        if (v72[0] == 1)
        {
          v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238F41E94(v72)];
          [v7 setEndTimestamp:v54];
        }

        else
        {
          [v7 setEndTimestamp:0];
        }

        if (v78 != 1)
        {
          goto LABEL_177;
        }

        if (v73[0] == 1)
        {
          v58 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_239289A18(v73)];
          [v7 setStartSystime:v58];
        }

        else
        {
          [v7 setStartSystime:0];
        }

        if (v78 != 1)
        {
          goto LABEL_177;
        }

        if (v74[0] == 1)
        {
          v62 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_239289A18(v74)];
          [v7 setEndSystime:v62];
        }

        else
        {
          [v7 setEndSystime:0];
        }

        if (v78 != 1)
        {
          goto LABEL_177;
        }

        if (v76[0] == 1)
        {
          v66 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_239289A18(v76)];
          [v7 setApparentEnergy:v66];
        }

        else
        {
          [v7 setApparentEnergy:0];
        }

        if ((v78 & 1) == 0)
        {
LABEL_177:
          sub_238EA195C();
        }

        if (v77[0] == 1)
        {
          goto LABEL_173;
        }

        goto LABEL_175;
      }

      goto LABEL_64;
    }

    if (a1 == 4)
    {
      LOBYTE(v70) = 0;
      LOBYTE(v78) = 0;
      v40 = sub_238F14CF8(a2, &v70);
      *a3 = v40;
      a3[1] = v41;
      if (!v40 && (v78 & 1) != 0)
      {
        v7 = objc_opt_new();
        if (v78 != 1)
        {
          goto LABEL_180;
        }

        v42 = [MEMORY[0x277CCABB0] numberWithLongLong:v70];
        [v7 setEnergy:v42];

        if (v78 != 1)
        {
          goto LABEL_180;
        }

        if (v71 == 1)
        {
          v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238F41E94(&v71)];
          [v7 setStartTimestamp:v43];
        }

        else
        {
          [v7 setStartTimestamp:0];
        }

        if (v78 != 1)
        {
          goto LABEL_180;
        }

        if (v72[0] == 1)
        {
          v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238F41E94(v72)];
          [v7 setEndTimestamp:v57];
        }

        else
        {
          [v7 setEndTimestamp:0];
        }

        if (v78 != 1)
        {
          goto LABEL_180;
        }

        if (v73[0] == 1)
        {
          v61 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_239289A18(v73)];
          [v7 setStartSystime:v61];
        }

        else
        {
          [v7 setStartSystime:0];
        }

        if (v78 != 1)
        {
          goto LABEL_180;
        }

        if (v74[0] == 1)
        {
          v65 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_239289A18(v74)];
          [v7 setEndSystime:v65];
        }

        else
        {
          [v7 setEndSystime:0];
        }

        if (v78 != 1)
        {
          goto LABEL_180;
        }

        if (v76[0] == 1)
        {
          v69 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_239289A18(v76)];
          [v7 setApparentEnergy:v69];
        }

        else
        {
          [v7 setApparentEnergy:0];
        }

        if ((v78 & 1) == 0)
        {
LABEL_180:
          sub_238EA195C();
        }

        if (v77[0] == 1)
        {
          goto LABEL_173;
        }

        goto LABEL_175;
      }

      goto LABEL_64;
    }

    if (a1 != 5)
    {
      goto LABEL_51;
    }

    LOBYTE(v70) = 0;
    v77[0] = 0;
    v10 = sub_238F14D9C(a2, &v70);
    *a3 = v10;
    a3[1] = v11;
    if (v10 || (v77[0] & 1) == 0)
    {
      goto LABEL_64;
    }

    v7 = objc_opt_new();
    if (v77[0] == 1)
    {
      if (v70 == 1 && sub_2392C83B0(&v70)[4] == 1)
      {
        if (v77[0] != 1)
        {
          goto LABEL_181;
        }

        v12 = MEMORY[0x277CCABB0];
        v13 = sub_2392C83B0(&v70);
        if (v13[4] != 1)
        {
          goto LABEL_181;
        }

        v14 = [v12 numberWithUnsignedInt:*v13];
        [v7 setImportedResetTimestamp:v14];
      }

      else
      {
        [v7 setImportedResetTimestamp:0];
      }

      if (v77[0] != 1)
      {
        goto LABEL_181;
      }

      if (BYTE4(v71) == 1 && sub_2392C83B0(&v71 + 4)[4] == 1)
      {
        if (v77[0] != 1)
        {
          goto LABEL_181;
        }

        v46 = MEMORY[0x277CCABB0];
        v47 = sub_2392C83B0(&v71 + 4);
        if (v47[4] != 1)
        {
          goto LABEL_181;
        }

        v48 = [v46 numberWithUnsignedInt:*v47];
        [v7 setExportedResetTimestamp:v48];
      }

      else
      {
        [v7 setExportedResetTimestamp:0];
      }

      if (v77[0] != 1)
      {
        goto LABEL_181;
      }

      if (v73[0] == 1 && sub_239289A18(v73)[8] == 1)
      {
        if (v77[0] != 1)
        {
          goto LABEL_181;
        }

        v49 = MEMORY[0x277CCABB0];
        v50 = sub_239289A18(v73);
        if (v50[8] != 1)
        {
          goto LABEL_181;
        }

        v51 = [v49 numberWithUnsignedLongLong:*v50];
        [v7 setImportedResetSystime:v51];
      }

      else
      {
        [v7 setImportedResetSystime:0];
      }

      if (v77[0] == 1)
      {
        if (v75[0] != 1 || sub_239289A18(v75)[8] != 1)
        {
          [v7 setExportedResetSystime:0];
          goto LABEL_65;
        }

        if (v77[0] == 1)
        {
          v52 = MEMORY[0x277CCABB0];
          v53 = sub_239289A18(v75);
          if (v53[8])
          {
            v17 = [v52 numberWithUnsignedLongLong:*v53];
            [v7 setExportedResetSystime:v17];
LABEL_174:

            goto LABEL_65;
          }
        }
      }
    }

LABEL_181:
    sub_238EA195C();
  }

  if (!a1)
  {
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    sub_2393C5AAC(v90);
    sub_2393C5ADC(v90, 0, 0);
    v15 = sub_238F35690(&v86, a2);
    v7 = 0;
    *a3 = v15;
    a3[1] = v16;
    if (v15)
    {
      goto LABEL_65;
    }

    v17 = objc_opt_new();
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v86];
    [v17 setMeasurementType:v18];

    v19 = [MEMORY[0x277CCABB0] numberWithBool:v87];
    [v17 setMeasured:v19];

    v20 = [MEMORY[0x277CCABB0] numberWithLongLong:v88];
    [v17 setMinMeasuredValue:v20];

    v21 = [MEMORY[0x277CCABB0] numberWithLongLong:v89];
    [v17 setMaxMeasuredValue:v21];

    v22 = objc_opt_new();
    sub_2393C5AAC(v72);
    v70 = 0;
    v71 = 0;
    sub_2393C5BDC(v72, v90);
    v81[0] = 0;
    v82[0] = 0;
    v83[0] = 0;
    v84[0] = 0;
    v85[0] = 0;
    v78 = 0;
    v79 = 0;
    v80[0] = 0;
    while (sub_238EA1A80(&v70) && sub_2392C8270(&v70))
    {
      v23 = objc_opt_new();
      v24 = [MEMORY[0x277CCABB0] numberWithLongLong:v78];
      [v23 setRangeMin:v24];

      v25 = [MEMORY[0x277CCABB0] numberWithLongLong:v79];
      [v23 setRangeMax:v25];

      if (v80[0] == 1)
      {
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v80)];
        [v23 setPercentMax:v26];
      }

      else
      {
        [v23 setPercentMax:0];
      }

      if (v81[0] == 1)
      {
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v81)];
        [v23 setPercentMin:v27];
      }

      else
      {
        [v23 setPercentMin:0];
      }

      if (v82[0] == 1)
      {
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v82)];
        [v23 setPercentTypical:v28];
      }

      else
      {
        [v23 setPercentTypical:0];
      }

      if (v83[0] == 1)
      {
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_238DE36B8(v83)];
        [v23 setFixedMax:v29];
      }

      else
      {
        [v23 setFixedMax:0];
      }

      if (v84[0] == 1)
      {
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_238DE36B8(v84)];
        [v23 setFixedMin:v30];
      }

      else
      {
        [v23 setFixedMin:0];
      }

      if (v85[0] == 1)
      {
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_238DE36B8(v85)];
        [v23 setFixedTypical:v31];
      }

      else
      {
        [v23 setFixedTypical:0];
      }

      [v22 addObject:v23];
    }

    if (v70 == 33 || !v70)
    {
      [v17 setAccuracyRanges:v22];

      v7 = v17;
    }

    else
    {
      v45 = v71;
      *a3 = v70;
      a3[1] = v45;

      v7 = 0;
    }

    goto LABEL_174;
  }

  if (a1 == 1)
  {
    LOBYTE(v70) = 0;
    LOBYTE(v78) = 0;
    v36 = sub_238F14CF8(a2, &v70);
    *a3 = v36;
    a3[1] = v37;
    if (!v36 && (v78 & 1) != 0)
    {
      v7 = objc_opt_new();
      if (v78 != 1)
      {
        goto LABEL_179;
      }

      v38 = [MEMORY[0x277CCABB0] numberWithLongLong:v70];
      [v7 setEnergy:v38];

      if (v78 != 1)
      {
        goto LABEL_179;
      }

      if (v71 == 1)
      {
        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238F41E94(&v71)];
        [v7 setStartTimestamp:v39];
      }

      else
      {
        [v7 setStartTimestamp:0];
      }

      if (v78 != 1)
      {
        goto LABEL_179;
      }

      if (v72[0] == 1)
      {
        v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238F41E94(v72)];
        [v7 setEndTimestamp:v56];
      }

      else
      {
        [v7 setEndTimestamp:0];
      }

      if (v78 != 1)
      {
        goto LABEL_179;
      }

      if (v73[0] == 1)
      {
        v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_239289A18(v73)];
        [v7 setStartSystime:v60];
      }

      else
      {
        [v7 setStartSystime:0];
      }

      if (v78 != 1)
      {
        goto LABEL_179;
      }

      if (v74[0] == 1)
      {
        v64 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_239289A18(v74)];
        [v7 setEndSystime:v64];
      }

      else
      {
        [v7 setEndSystime:0];
      }

      if (v78 != 1)
      {
        goto LABEL_179;
      }

      if (v76[0] == 1)
      {
        v68 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_239289A18(v76)];
        [v7 setApparentEnergy:v68];
      }

      else
      {
        [v7 setApparentEnergy:0];
      }

      if ((v78 & 1) == 0)
      {
LABEL_179:
        sub_238EA195C();
      }

      if (v77[0] == 1)
      {
        goto LABEL_173;
      }

      goto LABEL_175;
    }

LABEL_64:
    v7 = 0;
    goto LABEL_65;
  }

  if (a1 != 2)
  {
LABEL_51:
    v7 = 0;
    *a3 = 0x2106000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_65;
  }

  LOBYTE(v70) = 0;
  LOBYTE(v78) = 0;
  v5 = sub_238F14CF8(a2, &v70);
  *a3 = v5;
  a3[1] = v6;
  if (v5 || (v78 & 1) == 0)
  {
    goto LABEL_64;
  }

  v7 = objc_opt_new();
  if (v78 != 1)
  {
    goto LABEL_178;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:v70];
  [v7 setEnergy:v8];

  if (v78 != 1)
  {
    goto LABEL_178;
  }

  if (v71 == 1)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238F41E94(&v71)];
    [v7 setStartTimestamp:v9];
  }

  else
  {
    [v7 setStartTimestamp:0];
  }

  if (v78 != 1)
  {
    goto LABEL_178;
  }

  if (v72[0] == 1)
  {
    v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238F41E94(v72)];
    [v7 setEndTimestamp:v55];
  }

  else
  {
    [v7 setEndTimestamp:0];
  }

  if (v78 != 1)
  {
    goto LABEL_178;
  }

  if (v73[0] == 1)
  {
    v59 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_239289A18(v73)];
    [v7 setStartSystime:v59];
  }

  else
  {
    [v7 setStartSystime:0];
  }

  if (v78 != 1)
  {
    goto LABEL_178;
  }

  if (v74[0] == 1)
  {
    v63 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_239289A18(v74)];
    [v7 setEndSystime:v63];
  }

  else
  {
    [v7 setEndSystime:0];
  }

  if (v78 != 1)
  {
    goto LABEL_178;
  }

  if (v76[0] == 1)
  {
    v67 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_239289A18(v76)];
    [v7 setApparentEnergy:v67];
  }

  else
  {
    [v7 setApparentEnergy:0];
  }

  if ((v78 & 1) == 0)
  {
LABEL_178:
    sub_238EA195C();
  }

  if (v77[0] == 1)
  {
LABEL_173:
    v17 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_239289A18(v77)];
    [v7 setReactiveEnergy:v17];
    goto LABEL_174;
  }

LABEL_175:
  [v7 setReactiveEnergy:0];
LABEL_65:

  return v7;
}

id sub_2392AD6E4(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          v23 = 0;
          v4 = sub_2393C5F70(a2, &v23);
          *a3 = v4;
          a3[1] = v5;
          if (!v4)
          {
            v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v23];
            goto LABEL_23;
          }

          goto LABEL_20;
        }

LABEL_16:
        v6 = 0;
        *a3 = 0x2155000000B5;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
        goto LABEL_23;
      }

      v24 = 0;
      v15 = sub_238EA4DB4(a2, &v24);
      *a3 = v15;
      a3[1] = v16;
      if (!v15)
      {
        v9 = MEMORY[0x277CCABB0];
        v10 = v24;
        goto LABEL_22;
      }

LABEL_20:
      v6 = 0;
      goto LABEL_23;
    }

    v25 = 0;
    v11 = sub_238EA4DB4(a2, &v25);
    *a3 = v11;
    a3[1] = v12;
    if (v11)
    {
      goto LABEL_20;
    }

    v9 = MEMORY[0x277CCABB0];
    v10 = v25;
    goto LABEL_22;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      v21 = 0;
      v17 = sub_2393C5ED0(a2, &v21);
      *a3 = v17;
      a3[1] = v18;
      if (!v17)
      {
        v9 = MEMORY[0x277CCABB0];
        v10 = v21;
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (a1 != 5)
    {
      goto LABEL_16;
    }

    v20 = 0;
    v7 = sub_238EFF894(a2, &v20);
    *a3 = v7;
    a3[1] = v8;
    if (v7)
    {
      goto LABEL_20;
    }

    v9 = MEMORY[0x277CCABB0];
    v10 = v20;
LABEL_22:
    v6 = [v9 numberWithUnsignedChar:v10];
    goto LABEL_23;
  }

  v22 = 0;
  v13 = sub_2393C5DA0(a2, &v22);
  v6 = 0;
  *a3 = v13;
  a3[1] = v14;
  if (!v13)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:v22];
  }

LABEL_23:

  return v6;
}

id sub_2392AD888(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v52) = 0;
      v29 = sub_238EFF894(a2, &v52);
      *a3 = v29;
      a3[1] = v30;
      if (!v29)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v52];
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    if (a1 == 1)
    {
      LOBYTE(v52) = 0;
      BYTE4(v52) = 0;
      v5 = sub_238F0ABF0(a2, &v52);
      *a3 = v5;
      a3[1] = v6;
      if (!v5 && (v52 & 0x100000000) != 0)
      {
        v7 = objc_opt_new();
        if (BYTE4(v52) != 1 || ([MEMORY[0x277CCABB0] numberWithUnsignedShort:v52], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "setCurrency:", v8), v8, (v52 & 0x100000000) == 0))
        {
          sub_238EA195C();
        }

        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v52)];
        [v7 setDecimalPoints:v9];
        goto LABEL_99;
      }

LABEL_57:
      v7 = 0;
      goto LABEL_58;
    }

LABEL_45:
    v7 = 0;
    *a3 = 0x2225000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_58;
  }

  if (a1 == 2)
  {
    LOBYTE(v52) = 0;
    v64 = 0;
    v31 = sub_238F0AC84(a2, &v52);
    *a3 = v31;
    a3[1] = v32;
    if (v31)
    {
      goto LABEL_57;
    }

    if (v64)
    {
      v9 = objc_opt_new();
      if (v64 != 1)
      {
        goto LABEL_102;
      }

      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v52];
      [v9 setPeriodStart:v33];

      if (v64 != 1)
      {
        goto LABEL_102;
      }

      if (v53)
      {
        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v52)];
        [v9 setPeriodEnd:v34];
      }

      else
      {
        [v9 setPeriodEnd:0];
      }

      if (v64 != 1)
      {
        goto LABEL_102;
      }

      if (v54[0] == 1)
      {
        v37 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_239289A18(v54)];
        [v9 setPrice:v37];
      }

      else
      {
        [v9 setPrice:0];
      }

      if (v64 != 1)
      {
        goto LABEL_102;
      }

      if (v55[0] == 1)
      {
        v38 = [MEMORY[0x277CCABB0] numberWithShort:*sub_2392C83D0(v55)];
        [v9 setPriceLevel:v38];
      }

      else
      {
        [v9 setPriceLevel:0];
      }

      if (v64 != 1)
      {
        goto LABEL_102;
      }

      if (v56[0] == 1)
      {
        v39 = sub_239289A18(v56);
        v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v39 length:v39[1] encoding:4];
        [v9 setDescriptionString:v40];

        v7 = [v9 descriptionString];

        if (!v7)
        {
          *a3 = xmmword_278A74A98;
LABEL_99:

          goto LABEL_58;
        }
      }

      else
      {
        [v9 setDescriptionString:0];
      }

      if ((v64 & 1) == 0)
      {
LABEL_102:
        sub_238EA195C();
      }

      if (v57[0] == 1)
      {
        v41 = objc_opt_new();
        if ((v64 & 1) == 0)
        {
          sub_238EA195C();
        }

        v42 = sub_239289A18(v57);
        sub_2393C5AAC(v69);
        v67 = 0;
        v68 = 0;
        sub_2393C5BDC(v69, v42);
        v70 = 0;
        v71 = 0;
        v72[0] = 0;
        v73[0] = 0;
        while (sub_238EA1A80(&v67) && sub_238EA2704(&v67))
        {
          v43 = objc_opt_new();
          v44 = [MEMORY[0x277CCABB0] numberWithLongLong:v70];
          [v43 setPrice:v44];

          v45 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v71];
          [v43 setSource:v45];

          if (v72[0] == 1)
          {
            v46 = sub_238DE36B8(v72);
            v47 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v46 length:v46[1] encoding:4];
            [v43 setDescriptionString:v47];

            v48 = [v43 descriptionString];

            if (!v48)
            {
              *a3 = xmmword_278A74AA8;

              goto LABEL_100;
            }
          }

          else
          {
            [v43 setDescriptionString:0];
          }

          if (v73[0] == 1)
          {
            v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v73)];
            [v43 setTariffComponentID:v49];
          }

          else
          {
            [v43 setTariffComponentID:0];
          }

          [v41 addObject:v43];
        }

        if (v67 == 33 || !v67)
        {
          [v9 setComponents:v41];

          goto LABEL_98;
        }

        v50 = v68;
        *a3 = v67;
        a3[1] = v50;
LABEL_100:

        v7 = 0;
        goto LABEL_99;
      }

      [v9 setComponents:0];
    }

    else
    {
      v9 = 0;
    }

LABEL_98:
    v9 = v9;
    v7 = v9;
    goto LABEL_99;
  }

  if (a1 != 3)
  {
    goto LABEL_45;
  }

  sub_2393C5AAC(v66);
  sub_2393C5ADC(v66, 0, 0);
  v10 = sub_238F36BB4(v66, a2);
  v7 = 0;
  *a3 = v10;
  a3[1] = v11;
  if (!v10)
  {
    v7 = objc_opt_new();
    sub_238EA275C(&v52, v66);
    while (sub_238EA1A80(&v52) && sub_238EA27B8(&v52))
    {
      v12 = objc_opt_new();
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v58];
      [v12 setPeriodStart:v13];

      if (v60)
      {
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v59];
        [v12 setPeriodEnd:v14];
      }

      else
      {
        [v12 setPeriodEnd:0];
      }

      if (v61[0] == 1)
      {
        v15 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_238DE36B8(v61)];
        [v12 setPrice:v15];
      }

      else
      {
        [v12 setPrice:0];
      }

      if (v62[0] == 1)
      {
        v16 = [MEMORY[0x277CCABB0] numberWithShort:*sub_238E0A934(v62)];
        [v12 setPriceLevel:v16];
      }

      else
      {
        [v12 setPriceLevel:0];
      }

      if (v63[0] == 1)
      {
        v17 = sub_238DE36B8(v63);
        v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v17 length:v17[1] encoding:4];
        [v12 setDescriptionString:v18];

        v19 = [v12 descriptionString];

        if (!v19)
        {
          *a3 = xmmword_278A74AB8;
          goto LABEL_55;
        }
      }

      else
      {
        [v12 setDescriptionString:0];
      }

      if (v65[0] == 1)
      {
        v20 = objc_opt_new();
        v21 = sub_238DE36B8(v65);
        sub_2393C5AAC(v69);
        v67 = 0;
        v68 = 0;
        sub_2393C5BDC(v69, v21);
        v70 = 0;
        v71 = 0;
        v72[0] = 0;
        v73[0] = 0;
        while (sub_238EA1A80(&v67) && sub_238EA2704(&v67))
        {
          v22 = objc_opt_new();
          v23 = [MEMORY[0x277CCABB0] numberWithLongLong:v70];
          [v22 setPrice:v23];

          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v71];
          [v22 setSource:v24];

          if (v72[0] == 1)
          {
            v25 = sub_238DE36B8(v72);
            v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v25 length:v25[1] encoding:4];
            [v22 setDescriptionString:v26];

            v27 = [v22 descriptionString];

            if (!v27)
            {
              *a3 = xmmword_278A74AC8;

              goto LABEL_54;
            }
          }

          else
          {
            [v22 setDescriptionString:0];
          }

          if (v73[0] == 1)
          {
            v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v73)];
            [v22 setTariffComponentID:v28];
          }

          else
          {
            [v22 setTariffComponentID:0];
          }

          [v20 addObject:v22];
        }

        if (v67 == 33 || !v67)
        {
          [v12 setComponents:v20];

          goto LABEL_44;
        }

        v51 = v68;
        *a3 = v67;
        a3[1] = v51;
LABEL_54:

LABEL_55:
LABEL_56:

        goto LABEL_57;
      }

      [v12 setComponents:0];
LABEL_44:
      [v7 addObject:v12];
    }

    if (v52 != 33 && v52)
    {
      v36 = v53;
      *a3 = v52;
      a3[1] = v36;
      goto LABEL_56;
    }
  }

LABEL_58:

  return v7;
}

id sub_2392AE350(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    sub_2393C5AAC(&v31);
    sub_2393C5ADC(&v31, 0, 0);
    v25 = sub_238F36BB4(&v31, a2);
    v7 = 0;
    *a3 = v25;
    a3[1] = v26;
    if (!v25)
    {
      v7 = objc_opt_new();
      sub_2393C5AAC(v38);
      v36 = 0;
      v37 = 0;
      sub_2393C5BDC(v38, &v31);
      v39 = 0;
      v40 = 0;
      while (sub_238EA1A80(&v36) && sub_238EA49F4(&v36))
      {
        v27 = [MEMORY[0x277CBEA90] dataWithBytes:v39 length:v40];
        [v7 addObject:v27];
      }

LABEL_37:
      if (v36 != 33 && v36)
      {
        v28 = v37;
        *a3 = v36;
        a3[1] = v28;
LABEL_43:

        v7 = 0;
      }
    }
  }

  else if (a1)
  {
    v7 = 0;
    *a3 = 0x229C000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v49);
    sub_2393C5ADC(v5, 0, 0);
    v6 = sub_238F36BB4(v49, a2);
    v7 = 0;
    *a3 = v6;
    a3[1] = v8;
    if (!v6)
    {
      v7 = objc_opt_new();
      sub_2393C5AAC(v38);
      v36 = 0;
      v37 = 0;
      sub_2393C5BDC(v38, v49);
      LOBYTE(v42) = 0;
      v43 = 0;
      LOBYTE(v44) = 0;
      v45 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v46 = 0;
      v47 = 0;
      v48[0] = 0;
      while (1)
      {
        if (!sub_238EA1A80(&v36) || !sub_2392C83F0(&v36))
        {
          goto LABEL_37;
        }

        v9 = objc_opt_new();
        v10 = [MEMORY[0x277CBEA90] dataWithBytes:v39 length:v40];
        [v9 setMessageID:v10];

        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v41];
        [v9 setPriority:v11];

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:HIBYTE(v41)];
        [v9 setMessageControl:v12];

        if (v43)
        {
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v42];
          [v9 setStartTime:v13];
        }

        else
        {
          [v9 setStartTime:0];
        }

        if (v45)
        {
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v44];
          [v9 setDuration:v14];
        }

        else
        {
          [v9 setDuration:0];
        }

        v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v46 length:v47 encoding:4];
        [v9 setMessageText:v15];

        v16 = [v9 messageText];

        if (!v16)
        {
          break;
        }

        if (v48[0] == 1)
        {
          v17 = objc_opt_new();
          v18 = sub_238DE36B8(v48);
          sub_2393C5AAC(v33);
          v31 = 0;
          v32 = 0;
          sub_2393C5BDC(v33, v18);
          v34[0] = 0;
          v35[0] = 0;
          while (sub_238EA1A80(&v31) && sub_2392C84A0(&v31))
          {
            v19 = objc_opt_new();
            v20 = v19;
            if (v34[0] == 1)
            {
              v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v34)];
              [v20 setMessageResponseID:v21];
            }

            else
            {
              [v19 setMessageResponseID:0];
            }

            if (v35[0] == 1)
            {
              v22 = sub_238DE36B8(v35);
              v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v22 length:v22[1] encoding:4];
              [v20 setLabel:v23];

              v24 = [v20 label];

              if (!v24)
              {
                *a3 = xmmword_278A74AE8;

                goto LABEL_40;
              }
            }

            else
            {
              [v20 setLabel:0];
            }

            [v17 addObject:v20];
          }

          if (v31 == 33 || !v31)
          {
            [v9 setResponses:v17];

            goto LABEL_30;
          }

          v30 = v32;
          *a3 = v31;
          a3[1] = v30;
LABEL_40:

          goto LABEL_42;
        }

        [v9 setResponses:0];
LABEL_30:
        [v7 addObject:v9];
      }

      *a3 = xmmword_278A74AD8;
LABEL_42:

      goto LABEL_43;
    }
  }

  return v7;
}

id sub_2392AE8E8(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          LOBYTE(v79) = 0;
          v4 = sub_2393C5CE4(a2, &v79);
          *a3 = v4;
          a3[1] = v5;
          if (!v4)
          {
            v6 = [MEMORY[0x277CCABB0] numberWithBool:v79];
LABEL_31:
            v21 = v6;
            goto LABEL_126;
          }

          goto LABEL_33;
        }

LABEL_34:
        v21 = 0;
        *a3 = 0x23A7000000B5;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
        goto LABEL_126;
      }

      LOBYTE(v79) = 0;
      v23 = sub_238F0E6BC(a2, &v79);
LABEL_29:
      *a3 = v23;
      a3[1] = v24;
      if (!v23)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v79];
        goto LABEL_31;
      }

LABEL_33:
      v21 = 0;
      goto LABEL_126;
    }

    if (a1 == 2)
    {
      LOBYTE(v79) = 0;
      v23 = sub_238F000A4(a2, &v79);
      goto LABEL_29;
    }

LABEL_22:
    v79 = 0;
    v20 = sub_2393C5DA0(a2, &v79);
    v21 = 0;
    *a3 = v20;
    a3[1] = v22;
    if (v20)
    {
      goto LABEL_126;
    }

    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:v79];
    goto LABEL_31;
  }

  if (a1 <= 5)
  {
    if (a1 == 4)
    {
      goto LABEL_22;
    }

    LOBYTE(v97) = 0;
    v107 = 0;
    v7 = sub_238F0E718(a2, &v97);
    *a3 = v7;
    a3[1] = v8;
    if (v7)
    {
      goto LABEL_33;
    }

    if (v107)
    {
      v9 = objc_opt_new();
      v10 = v9;
      if (v107 != 1)
      {
        goto LABEL_132;
      }

      if (v105)
      {
        v11 = objc_opt_new();
        if ((v107 & 1) == 0 || v105 != 1)
        {
          sub_238EA195C();
        }

        sub_2392C84F0(&v97, &v79);
        while (1)
        {
          v12 = sub_238EA1A80(&v79);
          LODWORD(v13) = v79;
          if (v79)
          {
            v12 = 0;
          }

          if (!v12)
          {
            break;
          }

          v82 = 0;
          v83 = 0;
          v84 = 0;
          v13 = sub_238F0F3BC(&v82, &v81);
          v79 = v13;
          v80 = v14;
          if (v13)
          {
            break;
          }

          v15 = objc_opt_new();
          v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v82];
          [v15 setMinPower:v16];

          v17 = [MEMORY[0x277CCABB0] numberWithLongLong:v83];
          [v15 setMaxPower:v17];

          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v84];
          [v15 setMinDuration:v18];

          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v84)];
          [v15 setMaxDuration:v19];

          [v11 addObject:v15];
        }

        if (v13 != 33 && v79)
        {
          v66 = v80;
          *a3 = v79;
          a3[1] = v66;

          v21 = 0;
LABEL_125:

          goto LABEL_126;
        }

        [v10 setPowerAdjustCapability:v11];
      }

      else
      {
        [v9 setPowerAdjustCapability:0];
      }

      if ((v107 & 1) == 0)
      {
LABEL_132:
        sub_238EA195C();
      }

      v67 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v106];
      [v10 setCause:v67];
    }

    else
    {
      v10 = 0;
    }

    v10 = v10;
    v21 = v10;
    goto LABEL_125;
  }

  if (a1 != 6)
  {
    if (a1 != 7)
    {
      goto LABEL_34;
    }

    LOBYTE(v79) = 0;
    v23 = sub_238EA4D5C(a2, &v79);
    goto LABEL_29;
  }

  LOBYTE(v97) = 0;
  v109 = 0;
  v25 = sub_238F0E7BC(a2, &v97);
  *a3 = v25;
  a3[1] = v26;
  if (v25)
  {
    goto LABEL_33;
  }

  if ((v109 & 1) == 0)
  {
    v29 = 0;
LABEL_116:
    v65 = v29;
    v21 = v65;
    goto LABEL_117;
  }

  v70 = objc_opt_new();
  if (v109 != 1)
  {
    goto LABEL_131;
  }

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v97];
  [v70 setForecastID:v27];

  if (v109 != 1)
  {
    goto LABEL_131;
  }

  if (v99)
  {
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v98];
    [v70 setActiveSlotNumber:v28];
  }

  else
  {
    [v70 setActiveSlotNumber:0];
  }

  if (v109 != 1)
  {
    goto LABEL_131;
  }

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v100];
  [v70 setStartTime:v30];

  if (v109 != 1)
  {
    goto LABEL_131;
  }

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v101];
  [v70 setEndTime:v31];

  if (v109 != 1)
  {
    goto LABEL_131;
  }

  if (v102[0] == 1 && (sub_2392C83B0(v102)[4] & 1) != 0)
  {
    if (v109 != 1)
    {
      goto LABEL_131;
    }

    v32 = MEMORY[0x277CCABB0];
    v33 = sub_2392C83B0(v102);
    if (v33[4] != 1)
    {
      goto LABEL_131;
    }

    v34 = [v32 numberWithUnsignedInt:*v33];
    [v70 setEarliestStartTime:v34];
  }

  else
  {
    [v70 setEarliestStartTime:{0, v70}];
  }

  if (v109 != 1)
  {
    goto LABEL_131;
  }

  if (v103[0] == 1)
  {
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238F41E94(v103)];
    [v70 setLatestEndTime:v35];
  }

  else
  {
    [v70 setLatestEndTime:0];
  }

  if (v109 != 1)
  {
LABEL_131:
    sub_238EA195C();
  }

  v36 = [MEMORY[0x277CCABB0] numberWithBool:v103[8]];
  [v70 setIsPausable:v36];

  v37 = objc_opt_new();
  if ((v109 & 1) == 0)
  {
    sub_238EA195C();
  }

  sub_2392C8534(&v79, &v104);
  while (1)
  {
    if (!sub_238EA1A80(&v79) || !sub_2392C85AC(&v79))
    {
      if (v79 != 33 && v79)
      {
        v63 = v80;
        *a3 = v79;
        a3[1] = v63;
        goto LABEL_130;
      }

      [v70 setSlots:{v37, v70}];

      if (v109)
      {
        v64 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v108];
        [v71 setForecastUpdateReason:v64];

        v29 = v71;
        goto LABEL_116;
      }

      goto LABEL_131;
    }

    v38 = objc_opt_new();
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v82];
    [v38 setMinDuration:v39];

    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v82)];
    [v38 setMaxDuration:v40];

    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v83];
    [v38 setDefaultDuration:v41];

    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v83)];
    [v38 setElapsedSlotTime:v42];

    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v84];
    [v38 setRemainingSlotTime:v43];

    if (BYTE4(v84) == 1)
    {
      v44 = [MEMORY[0x277CCABB0] numberWithBool:*sub_238DE36D8(&v84 + 4)];
      [v38 setSlotIsPausable:v44];
    }

    else
    {
      [v38 setSlotIsPausable:0];
    }

    if (v85[0] == 1)
    {
      v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v85)];
      [v38 setMinPauseDuration:v45];
    }

    else
    {
      [v38 setMinPauseDuration:0];
    }

    if (v86[0] == 1)
    {
      v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v86)];
      [v38 setMaxPauseDuration:v46];
    }

    else
    {
      [v38 setMaxPauseDuration:0];
    }

    if (v87[0] == 1)
    {
      v47 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v87)];
      [v38 setManufacturerESAState:v47];
    }

    else
    {
      [v38 setManufacturerESAState:0];
    }

    if (v88[0] == 1)
    {
      v48 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_238DE36B8(v88)];
      [v38 setNominalPower:v48];
    }

    else
    {
      [v38 setNominalPower:0];
    }

    if (v89[0] == 1)
    {
      v49 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_238DE36B8(v89)];
      [v38 setMinPower:v49];
    }

    else
    {
      [v38 setMinPower:0];
    }

    if (v90[0] == 1)
    {
      v50 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_238DE36B8(v90)];
      [v38 setMaxPower:v50];
    }

    else
    {
      [v38 setMaxPower:0];
    }

    if (v91[0] == 1)
    {
      v51 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_238DE36B8(v91)];
      [v38 setNominalEnergy:v51];
    }

    else
    {
      [v38 setNominalEnergy:0];
    }

    if (v92[0] != 1)
    {
      [v38 setCosts:0];
      goto LABEL_98;
    }

    v52 = objc_opt_new();
    v53 = sub_238DE36B8(v92);
    sub_2393C5AAC(v74);
    v72 = 0;
    v73 = 0;
    sub_2393C5BDC(v74, v53);
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78[0] = 0;
    while (sub_238EA1A80(&v72) && sub_2392C8630(&v72))
    {
      v54 = objc_opt_new();
      v55 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v75];
      [v54 setCostType:v55];

      v56 = [MEMORY[0x277CCABB0] numberWithInt:v76];
      [v54 setValue:v56];

      v57 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v77];
      [v54 setDecimalPoints:v57];

      if (v78[0] == 1)
      {
        v58 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v78)];
        [v54 setCurrency:v58];
      }

      else
      {
        [v54 setCurrency:0];
      }

      [v52 addObject:{v54, v70}];
    }

    if (v72 != 33 && v72)
    {
      break;
    }

    [v38 setCosts:{v52, v70}];

LABEL_98:
    if (v93[0] == 1)
    {
      v59 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_238DE36B8(v93)];
      [v38 setMinPowerAdjustment:v59];
    }

    else
    {
      [v38 setMinPowerAdjustment:0];
    }

    if (v94[0] == 1)
    {
      v60 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_238DE36B8(v94)];
      [v38 setMaxPowerAdjustment:v60];
    }

    else
    {
      [v38 setMaxPowerAdjustment:0];
    }

    if (v95[0] == 1)
    {
      v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v95)];
      [v38 setMinDurationAdjustment:v61];
    }

    else
    {
      [v38 setMinDurationAdjustment:0];
    }

    if (v96[0] == 1)
    {
      v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v96)];
      [v38 setMaxDurationAdjustment:v62];
    }

    else
    {
      [v38 setMaxDurationAdjustment:0];
    }

    [v37 addObject:{v38, v70}];
  }

  v69 = v73;
  *a3 = v72;
  a3[1] = v69;

LABEL_130:
  v21 = 0;
  v65 = v70;
LABEL_117:

LABEL_126:

  return v21;
}

id sub_2392AF6D0(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 47)
  {
    switch(a1)
    {
      case 0:
        LOWORD(v22) = 0;
        v13 = sub_238F161A0(a2, &v22);
        goto LABEL_24;
      case 1:
        LOBYTE(v22) = 0;
        v15 = sub_238F01014(a2, &v22);
        goto LABEL_29;
      case 2:
        LOBYTE(v22) = 0;
        v15 = sub_238F16258(a2, &v22);
LABEL_29:
        *a3 = v15;
        a3[1] = v16;
        if (!v15)
        {
          goto LABEL_30;
        }

        goto LABEL_36;
      case 3:
      case 4:
      case 35:
      case 36:
        goto LABEL_7;
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        v22 = 0;
        v4 = sub_2393C5DA0(a2, &v22);
        v5 = 0;
        *a3 = v4;
        a3[1] = v6;
        if (!v4)
        {
          goto LABEL_21;
        }

        goto LABEL_37;
      case 10:
        LODWORD(v22) = 0;
        v17 = sub_2393C5FC8(a2, &v22);
        *a3 = v17;
        a3[1] = v18;
        if (!v17)
        {
          goto LABEL_32;
        }

        goto LABEL_36;
      case 37:
        goto LABEL_19;
      case 38:
        goto LABEL_22;
      case 39:
        LOBYTE(v22) = 0;
        BYTE2(v22) = 0;
        v19 = sub_238EFD714(a2, &v22);
        *a3 = v19;
        a3[1] = v20;
        if (v19 || BYTE2(v22) != 1)
        {
          goto LABEL_36;
        }

        v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v22];
        goto LABEL_37;
      default:
        goto LABEL_40;
    }
  }

  if (a1 > 63)
  {
    if (a1 <= 65)
    {
LABEL_7:
      LOBYTE(v22) = 0;
      BYTE4(v22) = 0;
      v7 = sub_238EFDEB0(a2, &v22);
      *a3 = v7;
      a3[1] = v8;
      if (!v7 && BYTE4(v22) == 1)
      {
LABEL_32:
        v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v22];
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    if (a1 == 66 || a1 == 67)
    {
LABEL_19:
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      v11 = sub_238F0C244(a2, &v22);
      *a3 = v11;
      a3[1] = v12;
      if (!v11 && v23 == 1)
      {
LABEL_21:
        v5 = [MEMORY[0x277CCABB0] numberWithLongLong:v22];
        goto LABEL_37;
      }

      goto LABEL_36;
    }

LABEL_40:
    v5 = 0;
    *a3 = 0x24F2000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_37;
  }

  if (a1 == 48)
  {
LABEL_22:
    LOWORD(v22) = 0;
    v13 = sub_238F00228(a2, &v22);
LABEL_24:
    *a3 = v13;
    a3[1] = v14;
    if (!v13 && BYTE1(v22) == 1)
    {
LABEL_30:
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v22];
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (a1 == 49)
  {
    goto LABEL_19;
  }

  if (a1 != 50)
  {
    goto LABEL_40;
  }

  LOBYTE(v22) = 0;
  v24 = 0;
  v9 = sub_238F0BA3C(a2, &v22);
  *a3 = v9;
  a3[1] = v10;
  if (v9 || v24 != 1)
  {
LABEL_36:
    v5 = 0;
    goto LABEL_37;
  }

  v5 = sub_2392C6E08(v22, v23);
  if (!v5)
  {
    *a3 = xmmword_278A74AF8;
  }

LABEL_37:

  return v5;
}

id sub_2392AF978(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
LABEL_5:
        LOBYTE(v30) = 0;
        v5 = sub_2393C5ED0(a2, &v30);
        *a3 = v5;
        a3[1] = v6;
        if (!v5)
        {
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v30];
          goto LABEL_43;
        }

LABEL_42:
        v7 = 0;
        goto LABEL_43;
      }

LABEL_9:
      v7 = 0;
      *a3 = 0x2579000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_43;
    }

    sub_2393C5AAC(v35);
    sub_2393C5ADC(v35, 0, 0);
    v21 = sub_238F36BB4(v35, a2);
    v7 = 0;
    *a3 = v21;
    a3[1] = v22;
    if (v21)
    {
      goto LABEL_43;
    }

    v7 = objc_opt_new();
    sub_2393C5AAC(v32);
    v30 = 0;
    v31 = 0;
    sub_2393C5BDC(v32, v35);
    v33[0] = 0;
    v34[0] = 0;
    while (sub_238EA1A80(&v30) && sub_2392C7EAC(&v30))
    {
      v16 = objc_opt_new();
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v33[0]];
      [v16 setStep:v23];

      if (v34[0] == 1)
      {
        v24 = sub_238DE36B8(v34);
        v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v24 length:v24[1] encoding:4];
        [v16 setLabel:v25];

        v26 = [v16 label];

        if (!v26)
        {
          v28 = &xmmword_278A74B08;
LABEL_40:
          *a3 = *v28;

          goto LABEL_41;
        }
      }

      else
      {
        [v16 setLabel:0];
      }

      [v7 addObject:{v16, v30}];
    }

LABEL_35:
    if (v30 == 33)
    {
      goto LABEL_43;
    }

LABEL_38:
    if (!v30)
    {
      goto LABEL_43;
    }

    v27 = v31;
    *a3 = v30;
    a3[1] = v27;
LABEL_41:

    goto LABEL_42;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

    sub_2393C5AAC(v35);
    sub_2393C5ADC(v35, 0, 0);
    v14 = sub_238F36BB4(v35, a2);
    v7 = 0;
    *a3 = v14;
    a3[1] = v15;
    if (v14)
    {
      goto LABEL_43;
    }

    v7 = objc_opt_new();
    sub_2393C5AAC(v32);
    v30 = 0;
    v31 = 0;
    sub_2393C5BDC(v32, v35);
    v33[0] = 0;
    v34[0] = 0;
    while (sub_238EA1A80(&v30) && sub_2392C7EAC(&v30))
    {
      v16 = objc_opt_new();
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v33[0]];
      [v16 setStep:v17];

      if (v34[0] == 1)
      {
        v18 = sub_238DE36B8(v34);
        v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v18 length:v18[1] encoding:4];
        [v16 setLabel:v19];

        v20 = [v16 label];

        if (!v20)
        {
          v28 = &xmmword_278A74B18;
          goto LABEL_40;
        }
      }

      else
      {
        [v16 setLabel:0];
      }

      [v7 addObject:{v16, v30}];
    }

    goto LABEL_35;
  }

  sub_2393C5AAC(v35);
  sub_2393C5ADC(v35, 0, 0);
  v8 = sub_238F36BB4(v35, a2);
  v7 = 0;
  *a3 = v8;
  a3[1] = v9;
  if (!v8)
  {
    v7 = objc_opt_new();
    sub_2393C5AAC(v32);
    v30 = 0;
    v31 = 0;
    sub_2393C5BDC(v32, v35);
    while (1)
    {
      v10 = sub_238EA1A80(&v30);
      LODWORD(v11) = v30;
      if (v30)
      {
        v10 = 0;
      }

      if (!v10)
      {
        break;
      }

      v33[0] = 0;
      v11 = sub_238EA4D5C(v32, v33);
      v30 = v11;
      v31 = v12;
      if (v11)
      {
        break;
      }

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v33[0]];
      [v7 addObject:v13];
    }

    if (v11 != 33)
    {
      goto LABEL_38;
    }
  }

LABEL_43:

  return v7;
}

id sub_2392AFE60(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    sub_2393C5AAC(v18);
    sub_2393C5ADC(v18, 0, 0);
    v9 = sub_238F36BB4(v18, a2);
    v6 = 0;
    *a3 = v9;
    a3[1] = v10;
    if (v9)
    {
      goto LABEL_15;
    }

    v6 = objc_opt_new();
    sub_2393C5AAC(v16);
    v14 = 0;
    v15 = 0;
    sub_2393C5BDC(v16, v18);
    while (sub_238DD5C4C(&v14))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v17];
      [v6 addObject:v11];
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0;
      *a3 = 0x25BA000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_15;
    }

    sub_2393C5AAC(v18);
    sub_2393C5ADC(v18, 0, 0);
    v5 = sub_238F36BB4(v18, a2);
    v6 = 0;
    *a3 = v5;
    a3[1] = v7;
    if (v5)
    {
      goto LABEL_15;
    }

    v6 = objc_opt_new();
    sub_2393C5AAC(v16);
    v14 = 0;
    v15 = 0;
    sub_2393C5BDC(v16, v18);
    while (sub_238DD5C4C(&v14))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v17];
      [v6 addObject:v8];
    }
  }

  if (v14 != 33 && v14)
  {
    v12 = v15;
    *a3 = v14;
    a3[1] = v12;

    v6 = 0;
  }

LABEL_15:

  return v6;
}

id sub_2392B0070(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    LOBYTE(v28[0]) = 0;
    v18 = sub_2393C5ED0(a2, v28);
    *a3 = v18;
    a3[1] = v19;
    if (v18)
    {
LABEL_28:
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v28[0])];
    }
  }

  else if (a1)
  {
    v7 = 0;
    *a3 = 0x2609000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v31);
    sub_2393C5ADC(v5, 0, 0);
    v6 = sub_238F36BB4(v31, a2);
    v7 = 0;
    *a3 = v6;
    a3[1] = v8;
    if (!v6)
    {
      v7 = objc_opt_new();
      sub_2392C7EFC(v28, v31);
      while (sub_238EA1A80(v28) && sub_2392C7F5C(v28))
      {
        v9 = objc_opt_new();
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v28[11] length:v28[12] encoding:4];
        [v9 setLabel:v10];

        v11 = [v9 label];

        if (!v11)
        {
          *a3 = xmmword_278A74B28;
          goto LABEL_26;
        }

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
        [v9 setMode:v12];

        v13 = objc_opt_new();
        sub_2393C5AAC(v25);
        v23 = 0;
        v24 = 0;
        sub_2393C5BDC(v25, &v30);
        v26[0] = 0;
        v27 = 0;
        while (sub_238EA1A80(&v23) && sub_2392C8000(&v23))
        {
          v14 = objc_opt_new();
          v15 = v14;
          if (v26[0] == 1)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v26)];
            [v15 setMfgCode:v16];
          }

          else
          {
            [v14 setMfgCode:0];
          }

          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v27];
          [v15 setValue:v17];

          [v13 addObject:v15];
        }

        if (v23 != 33 && v23)
        {
          v21 = v24;
          *a3 = v23;
          a3[1] = v21;

LABEL_26:
LABEL_27:

          goto LABEL_28;
        }

        [v9 setModeTags:v13];

        [v7 addObject:v9];
      }

      if (LODWORD(v28[0]) != 33 && LODWORD(v28[0]))
      {
        v20 = v28[1];
        *a3 = v28[0];
        a3[1] = v20;
        goto LABEL_27;
      }
    }
  }

  return v7;
}

id sub_2392B03F8(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    LOBYTE(v28[0]) = 0;
    v18 = sub_2393C5ED0(a2, v28);
    *a3 = v18;
    a3[1] = v19;
    if (v18)
    {
LABEL_28:
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v28[0])];
    }
  }

  else if (a1)
  {
    v7 = 0;
    *a3 = 0x2658000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v31);
    sub_2393C5ADC(v5, 0, 0);
    v6 = sub_238F36BB4(v31, a2);
    v7 = 0;
    *a3 = v6;
    a3[1] = v8;
    if (!v6)
    {
      v7 = objc_opt_new();
      sub_2392C7EFC(v28, v31);
      while (sub_238EA1A80(v28) && sub_2392C7F5C(v28))
      {
        v9 = objc_opt_new();
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v28[11] length:v28[12] encoding:4];
        [v9 setLabel:v10];

        v11 = [v9 label];

        if (!v11)
        {
          *a3 = xmmword_278A74B38;
          goto LABEL_26;
        }

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
        [v9 setMode:v12];

        v13 = objc_opt_new();
        sub_2393C5AAC(v25);
        v23 = 0;
        v24 = 0;
        sub_2393C5BDC(v25, &v30);
        v26[0] = 0;
        v27 = 0;
        while (sub_238EA1A80(&v23) && sub_2392C8000(&v23))
        {
          v14 = objc_opt_new();
          v15 = v14;
          if (v26[0] == 1)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v26)];
            [v15 setMfgCode:v16];
          }

          else
          {
            [v14 setMfgCode:0];
          }

          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v27];
          [v15 setValue:v17];

          [v13 addObject:v15];
        }

        if (v23 != 33 && v23)
        {
          v21 = v24;
          *a3 = v23;
          a3[1] = v21;

LABEL_26:
LABEL_27:

          goto LABEL_28;
        }

        [v9 setModeTags:v13];

        [v7 addObject:v9];
      }

      if (LODWORD(v28[0]) != 33 && LODWORD(v28[0]))
      {
        v20 = v28[1];
        *a3 = v28[0];
        a3[1] = v20;
        goto LABEL_27;
      }
    }
  }

  return v7;
}

id sub_2392B0780(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    LOBYTE(v28[0]) = 0;
    v18 = sub_2393C5ED0(a2, v28);
    *a3 = v18;
    a3[1] = v19;
    if (v18)
    {
LABEL_28:
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v28[0])];
    }
  }

  else if (a1)
  {
    v7 = 0;
    *a3 = 0x26A7000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v31);
    sub_2393C5ADC(v5, 0, 0);
    v6 = sub_238F36BB4(v31, a2);
    v7 = 0;
    *a3 = v6;
    a3[1] = v8;
    if (!v6)
    {
      v7 = objc_opt_new();
      sub_2392C7EFC(v28, v31);
      while (sub_238EA1A80(v28) && sub_2392C7F5C(v28))
      {
        v9 = objc_opt_new();
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v28[11] length:v28[12] encoding:4];
        [v9 setLabel:v10];

        v11 = [v9 label];

        if (!v11)
        {
          *a3 = xmmword_278A74B48;
          goto LABEL_26;
        }

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
        [v9 setMode:v12];

        v13 = objc_opt_new();
        sub_2393C5AAC(v25);
        v23 = 0;
        v24 = 0;
        sub_2393C5BDC(v25, &v30);
        v26[0] = 0;
        v27 = 0;
        while (sub_238EA1A80(&v23) && sub_2392C8000(&v23))
        {
          v14 = objc_opt_new();
          v15 = v14;
          if (v26[0] == 1)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v26)];
            [v15 setMfgCode:v16];
          }

          else
          {
            [v14 setMfgCode:0];
          }

          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v27];
          [v15 setValue:v17];

          [v13 addObject:v15];
        }

        if (v23 != 33 && v23)
        {
          v21 = v24;
          *a3 = v23;
          a3[1] = v21;

LABEL_26:
LABEL_27:

          goto LABEL_28;
        }

        [v9 setModeTags:v13];

        [v7 addObject:v9];
      }

      if (LODWORD(v28[0]) != 33 && LODWORD(v28[0]))
      {
        v20 = v28[1];
        *a3 = v28[0];
        a3[1] = v20;
        goto LABEL_27;
      }
    }
  }

  return v7;
}

id sub_2392B0B08(int a1, uint64_t a2, void *a3)
{
  if (a1 != 2)
  {
    if (a1 != 1)
    {
      if (a1)
      {
        v7 = 0;
        *a3 = 0x2700000000B5;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
        goto LABEL_28;
      }

      LOWORD(v30) = 0;
      v5 = sub_238F076A4(a2, &v30);
      *a3 = v5;
      a3[1] = v6;
      if (!v5 && BYTE1(v30) == 1)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithBool:v30];
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    LOBYTE(v30) = 0;
    v34 = 0;
    v8 = sub_238F154C4(a2, &v30);
    *a3 = v8;
    a3[1] = v9;
    if (!v8 && (v34 & 1) != 0)
    {
      v7 = objc_opt_new();
      if (v34 != 1)
      {
        goto LABEL_37;
      }

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v30];
      [v7 setPeriodStart:v10];

      if (v34 != 1)
      {
        goto LABEL_37;
      }

      if (v31)
      {
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v30)];
        [v7 setPeriodEnd:v11];
      }

      else
      {
        [v7 setPeriodEnd:0];
      }

      if (v34 != 1)
      {
        goto LABEL_37;
      }

      v26 = [MEMORY[0x277CCABB0] numberWithShort:SWORD2(v31)];
      [v7 setGridCarbonIntensity:v26];

      if (v34 != 1)
      {
        goto LABEL_37;
      }

      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE6(v31)];
      [v7 setGridCarbonLevel:v27];

      if (v34 != 1 || ([MEMORY[0x277CCABB0] numberWithShort:v32], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "setLocalCarbonIntensity:", v28), v28, (v34 & 1) == 0))
      {
LABEL_37:
        sub_238EA195C();
      }

      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v33];
      [v7 setLocalCarbonLevel:v29];

      goto LABEL_28;
    }

LABEL_27:
    v7 = 0;
    goto LABEL_28;
  }

  sub_2393C5AAC(v36);
  sub_2393C5ADC(v36, 0, 0);
  v12 = sub_238F36BB4(v36, a2);
  v7 = 0;
  *a3 = v12;
  a3[1] = v13;
  if (!v12)
  {
    v7 = objc_opt_new();
    sub_2392C8684(&v30, v36);
    while (1)
    {
      v14 = sub_238EA1A80(&v30);
      LODWORD(v15) = v30;
      if (v30)
      {
        v14 = 0;
      }

      if (!v14)
      {
        break;
      }

      memset(v35, 0, 19);
      v15 = sub_238F15778(v35, &v32);
      v30 = v15;
      v31 = v16;
      if (v15)
      {
        break;
      }

      v17 = objc_opt_new();
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v35[0]];
      [v17 setPeriodStart:v18];

      if (v35[2])
      {
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v35[1]];
        [v17 setPeriodEnd:v19];
      }

      else
      {
        [v17 setPeriodEnd:0];
      }

      v20 = [MEMORY[0x277CCABB0] numberWithShort:SLOWORD(v35[3])];
      [v17 setGridCarbonIntensity:v20];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v35[3])];
      [v17 setGridCarbonLevel:v21];

      v22 = [MEMORY[0x277CCABB0] numberWithShort:SLOWORD(v35[4])];
      [v17 setLocalCarbonIntensity:v22];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v35[4])];
      [v17 setLocalCarbonLevel:v23];

      [v7 addObject:v17];
    }

    if (v15 != 33 && v30)
    {
      v24 = v31;
      *a3 = v30;
      a3[1] = v24;

      goto LABEL_27;
    }
  }

LABEL_28:

  return v7;
}

id sub_2392B0F7C(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 127)
  {
    switch(a1)
    {
      case 0:
        LOWORD(v39) = 0;
        v32 = sub_238F10BDC(a2, &v39);
        goto LABEL_68;
      case 1:
        LOBYTE(v39) = 0;
        v5 = sub_238F07BEC(a2, &v39);
        goto LABEL_4;
      case 2:
      case 40:
      case 41:
      case 42:
      case 43:
      case 50:
      case 51:
        LOBYTE(v39) = 0;
        v10 = sub_2393C5CE4(a2, &v39);
        *a3 = v10;
        a3[1] = v11;
        if (v10)
        {
          goto LABEL_70;
        }

        v7 = [MEMORY[0x277CCABB0] numberWithBool:v39];
        goto LABEL_58;
      case 3:
        LOWORD(v39) = 0;
        v32 = sub_238F10C94(a2, &v39);
LABEL_68:
        *a3 = v32;
        a3[1] = v33;
        if (v32 || BYTE1(v39) != 1)
        {
          goto LABEL_70;
        }

        goto LABEL_5;
      case 4:
      case 5:
      case 35:
        LODWORD(v39) = 0;
        v12 = sub_2393C5FC8(a2, &v39);
        *a3 = v12;
        a3[1] = v13;
        if (v12)
        {
          goto LABEL_70;
        }

        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v39];
        goto LABEL_58;
      case 6:
      case 17:
      case 18:
      case 19:
      case 53:
        goto LABEL_18;
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 28:
      case 34:
      case 36:
      case 48:
      case 49:
        goto LABEL_3;
      case 27:
      case 44:
        LOBYTE(v39) = 0;
        v5 = sub_238EA4DB4(a2, &v39);
        goto LABEL_4;
      case 33:
        v39 = 0uLL;
        v35 = sub_2393C61E0(a2, &v39);
        v16 = 0;
        *a3 = v35;
        a3[1] = v36;
        if (!v35)
        {
          v37 = sub_2392C6E08(v39, *(&v39 + 1));
          v16 = v37;
          if (v37)
          {
            v38 = v37;
          }

          else
          {
            *a3 = xmmword_278A74B58;
          }
        }

        goto LABEL_71;
      case 37:
        LOBYTE(v39) = 0;
        v5 = sub_238F000A4(a2, &v39);
        goto LABEL_4;
      case 38:
      case 39:
        LOWORD(v39) = 0;
        v8 = sub_238F36E54(a2, &v39);
        goto LABEL_19;
      default:
        goto LABEL_77;
    }
  }

  if (a1 > 323551231)
  {
    if (a1 > 323551235)
    {
      if (a1 > 323551237)
      {
        if (a1 != 323551238)
        {
          if (a1 != 323551239 && a1 != 323551240)
          {
            goto LABEL_77;
          }

          goto LABEL_18;
        }

LABEL_3:
        LOBYTE(v39) = 0;
        v5 = sub_2393C5ED0(a2, &v39);
LABEL_4:
        *a3 = v5;
        a3[1] = v6;
        if (!v5)
        {
LABEL_5:
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v39];
LABEL_58:
          v16 = v7;
          goto LABEL_71;
        }

LABEL_70:
        v16 = 0;
        goto LABEL_71;
      }

      if (a1 != 323551236)
      {
        sub_2392C77A0(v43);
        v18 = sub_238F36BB4(v43, a2);
        *a3 = v18;
        a3[1] = v19;
        if (v18)
        {
          goto LABEL_70;
        }

        v16 = objc_opt_new();
        sub_2392C76E0(v43, &v39);
        while (sub_238EA1A80(&v39) && sub_238EA49F4(&v39))
        {
          v20 = [MEMORY[0x277CBEA90] dataWithBytes:v41 length:v42];
          [v16 addObject:v20];
        }

        goto LABEL_59;
      }

      goto LABEL_41;
    }

    if (a1 <= 323551233)
    {
LABEL_41:
      LOBYTE(v39) = 0;
      v40 = 0;
      v21 = sub_238F10D4C(a2, &v39);
      *a3 = v21;
      a3[1] = v22;
      if (v21 || v40 != 1)
      {
        goto LABEL_70;
      }

LABEL_57:
      v7 = [MEMORY[0x277CBEA90] dataWithBytes:v39 length:?];
      goto LABEL_58;
    }

    if (a1 != 323551234)
    {
      sub_2392C77A0(v43);
      v26 = sub_238F36BB4(v43, a2);
      *a3 = v26;
      a3[1] = v27;
      if (v26)
      {
        goto LABEL_70;
      }

      v16 = objc_opt_new();
      sub_2392C76E0(v43, &v39);
      while (sub_238EA1A80(&v39) && sub_238EA49F4(&v39))
      {
        v28 = [MEMORY[0x277CBEA90] dataWithBytes:v41 length:v42];
        [v16 addObject:v28];
      }

      goto LABEL_59;
    }

LABEL_56:
    v39 = 0uLL;
    v29 = sub_238EFEA98(a2, &v39);
    v16 = 0;
    *a3 = v29;
    a3[1] = v30;
    if (v29)
    {
      goto LABEL_71;
    }

    goto LABEL_57;
  }

  if (a1 <= 131)
  {
    if (a1 <= 129)
    {
      goto LABEL_41;
    }

    if (a1 != 130)
    {
      sub_2392C77A0(v43);
      v23 = sub_238F36BB4(v43, a2);
      *a3 = v23;
      a3[1] = v24;
      if (v23)
      {
        goto LABEL_70;
      }

      v16 = objc_opt_new();
      sub_2392C76E0(v43, &v39);
      while (sub_238EA1A80(&v39) && sub_238EA49F4(&v39))
      {
        v25 = [MEMORY[0x277CBEA90] dataWithBytes:v41 length:v42];
        [v16 addObject:v25];
      }

      goto LABEL_59;
    }

    goto LABEL_56;
  }

  if (a1 > 133)
  {
    if (a1 != 134)
    {
      if (a1 != 135 && a1 != 136)
      {
LABEL_77:
        v16 = 0;
        *a3 = 0x29C0000000B5;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
        goto LABEL_71;
      }

LABEL_18:
      LOWORD(v39) = 0;
      v8 = sub_2393C5F70(a2, &v39);
LABEL_19:
      *a3 = v8;
      a3[1] = v9;
      if (!v8)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v39];
        goto LABEL_58;
      }

      goto LABEL_70;
    }

    goto LABEL_3;
  }

  if (a1 == 132)
  {
    goto LABEL_41;
  }

  sub_2392C77A0(v43);
  v14 = sub_238F36BB4(v43, a2);
  *a3 = v14;
  a3[1] = v15;
  if (v14)
  {
    goto LABEL_70;
  }

  v16 = objc_opt_new();
  sub_2392C76E0(v43, &v39);
  while (sub_238EA1A80(&v39) && sub_238EA49F4(&v39))
  {
    v17 = [MEMORY[0x277CBEA90] dataWithBytes:v41 length:v42];
    [v16 addObject:v17];
  }

LABEL_59:
  if (v39 != 33 && v39)
  {
    v31 = *(&v39 + 1);
    *a3 = v39;
    a3[1] = v31;

    goto LABEL_70;
  }

LABEL_71:

  return v16;
}

id sub_2392B1608(int a1, uint64_t a2, unint64_t *a3)
{
  switch(a1)
  {
    case 0:
      LOBYTE(v14) = 0;
      v11 = sub_238F34384(a2, &v14);
      goto LABEL_16;
    case 1:
    case 2:
    case 5:
    case 6:
    case 16:
    case 17:
    case 18:
    case 19:
      v14 = 0;
      v4 = sub_2393C5F70(a2, &v14);
      goto LABEL_3;
    case 3:
    case 4:
    case 11:
    case 12:
    case 14:
    case 15:
      LOBYTE(v14) = 0;
      v15 = 0;
      v6 = sub_238EFD714(a2, &v14);
      *a3 = v6;
      a3[1] = v7;
      if (!v6 && v15 == 1)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    case 7:
    case 10:
    case 23:
      LOBYTE(v14) = 0;
      v11 = sub_238EA4DB4(a2, &v14);
      goto LABEL_16;
    case 8:
    case 9:
      v14 = 0;
      v9 = sub_238F00228(a2, &v14);
      *a3 = v9;
      a3[1] = v10;
      if (!v9 && HIBYTE(v14) == 1)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    case 13:
      LOBYTE(v14) = 0;
      v11 = sub_238F343E0(a2, &v14);
LABEL_16:
      *a3 = v11;
      a3[1] = v12;
      if (v11)
      {
        goto LABEL_17;
      }

LABEL_10:
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v14];
      break;
    case 26:
      v14 = 0;
      v4 = sub_238F36E54(a2, &v14);
LABEL_3:
      *a3 = v4;
      a3[1] = v5;
      if (v4)
      {
LABEL_17:
        v8 = 0;
      }

      else
      {
LABEL_7:
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v14];
      }

      break;
    default:
      v8 = 0;
      *a3 = 0x2ADF000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      break;
  }

  return v8;
}

id sub_2392B17A8(int a1, uint64_t a2, void *a3)
{
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 != 4)
      {
        if (a1 != 5)
        {
          goto LABEL_27;
        }

        LOBYTE(v37) = 0;
        v12 = sub_238EA4DB4(a2, &v37);
        goto LABEL_29;
      }

      LOBYTE(v37) = 0;
      LOBYTE(v38) = 0;
      v22 = sub_238F07260(a2, &v37);
      *a3 = v22;
      a3[1] = v23;
      if (v22 || (v38 & 1) == 0)
      {
        goto LABEL_43;
      }

      v6 = objc_opt_new();
      if (v38 == 1)
      {
        if (v37 == 1 && sub_2392C86E0(&v37)[1] == 1)
        {
          if (v38 != 1)
          {
            goto LABEL_77;
          }

          v24 = MEMORY[0x277CCABB0];
          v25 = sub_2392C86E0(&v37);
          if (v25[1] != 1)
          {
            goto LABEL_77;
          }

          v26 = [v24 numberWithUnsignedChar:*v25];
          [v6 setPosition:v26];
        }

        else
        {
          [v6 setPosition:0];
        }

        if (v38 != 1)
        {
          goto LABEL_77;
        }

        if (BYTE3(v37) == 1 && sub_2392C86E0(&v37 + 3)[1] == 1)
        {
          if (v38 != 1)
          {
            goto LABEL_77;
          }

          v32 = MEMORY[0x277CCABB0];
          v33 = sub_2392C86E0(&v37 + 3);
          if (v33[1] != 1)
          {
            goto LABEL_77;
          }

          v34 = [v32 numberWithBool:*v33];
          [v6 setLatch:v34];
        }

        else
        {
          [v6 setLatch:0];
        }

        if (v38)
        {
          if (BYTE6(v37) != 1)
          {
            [v6 setSpeed:0];
            goto LABEL_44;
          }

          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_2392C86E0(&v37 + 6)];
          [v6 setSpeed:v36];
          goto LABEL_73;
        }
      }

LABEL_77:
      sub_238EA195C();
    }

    LOBYTE(v37) = 0;
    BYTE2(v38) = 0;
    v17 = sub_238F071C8(a2, &v37);
    *a3 = v17;
    a3[1] = v18;
    if (v17 || (v38 & 0x10000) == 0)
    {
      goto LABEL_43;
    }

    v6 = objc_opt_new();
    if (BYTE2(v38) == 1)
    {
      if (v37 == 1 && sub_2392C86E0(&v37)[1] == 1)
      {
        if (BYTE2(v38) != 1)
        {
          goto LABEL_76;
        }

        v19 = MEMORY[0x277CCABB0];
        v20 = sub_2392C86E0(&v37);
        if (v20[1] != 1)
        {
          goto LABEL_76;
        }

        v21 = [v19 numberWithUnsignedChar:*v20];
        [v6 setPosition:v21];
      }

      else
      {
        [v6 setPosition:0];
      }

      if (BYTE2(v38) != 1)
      {
        goto LABEL_76;
      }

      if (BYTE3(v37) == 1 && sub_2392C86E0(&v37 + 3)[1] == 1)
      {
        if (BYTE2(v38) != 1)
        {
          goto LABEL_76;
        }

        v29 = MEMORY[0x277CCABB0];
        v30 = sub_2392C86E0(&v37 + 3);
        if (v30[1] != 1)
        {
          goto LABEL_76;
        }

        v31 = [v29 numberWithBool:*v30];
        [v6 setLatch:v31];
      }

      else
      {
        [v6 setLatch:0];
      }

      if (BYTE2(v38) == 1)
      {
        if (BYTE6(v37) == 1)
        {
          v35 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_2392C86E0(&v37 + 6)];
          [v6 setSpeed:v35];
        }

        else
        {
          [v6 setSpeed:0];
        }

        if ((v38 & 0x10000) != 0)
        {
          if ((v38 & 0x100) == 0)
          {
            [v6 setSecureState:0];
            goto LABEL_44;
          }

          v36 = [MEMORY[0x277CCABB0] numberWithBool:v38];
          [v6 setSecureState:v36];
LABEL_73:

          goto LABEL_44;
        }
      }
    }

LABEL_76:
    sub_238EA195C();
  }

  if (!a1)
  {
    LOBYTE(v37) = 0;
    BYTE4(v37) = 0;
    v14 = sub_238EFDEB0(a2, &v37);
    *a3 = v14;
    a3[1] = v15;
    if (v14 || BYTE4(v37) != 1)
    {
      goto LABEL_43;
    }

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v37];
    goto LABEL_31;
  }

  if (a1 == 1)
  {
    LOBYTE(v37) = 0;
    v12 = sub_238F056F8(a2, &v37);
LABEL_29:
    *a3 = v12;
    a3[1] = v13;
    if (v12)
    {
LABEL_43:
      v6 = 0;
      goto LABEL_44;
    }

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v37];
LABEL_31:
    v6 = v16;
    goto LABEL_44;
  }

  if (a1 != 2)
  {
LABEL_27:
    v6 = 0;
    *a3 = 0x2B7C000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_44;
  }

  sub_2393C5AAC(v41);
  sub_2393C5ADC(v41, 0, 0);
  v5 = sub_238F36BB4(v41, a2);
  v6 = 0;
  *a3 = v5;
  a3[1] = v7;
  if (!v5)
  {
    v6 = objc_opt_new();
    sub_2393C5AAC(v39);
    v37 = 0;
    v38 = 0;
    sub_2393C5BDC(v39, v41);
    while (1)
    {
      v8 = sub_238EA1A80(&v37);
      LODWORD(v9) = v37;
      if (v37)
      {
        v8 = 0;
      }

      if (!v8)
      {
        break;
      }

      v40[0] = 0;
      v9 = sub_238F000A4(v39, v40);
      v37 = v9;
      v38 = v10;
      if (v9)
      {
        break;
      }

      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v40[0]];
      [v6 addObject:v11];
    }

    if (v9 != 33 && v37)
    {
      v27 = v38;
      *a3 = v37;
      a3[1] = v27;

      goto LABEL_43;
    }
  }

LABEL_44:

  return v6;
}

void sub_2392B1D78(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_2392B1DD0(int a1, uint64_t a2, void *a3)
{
  if (a1 > 5)
  {
    if (a1 > 8)
    {
      if (a1 != 9)
      {
        if (a1 == 10)
        {
          LOBYTE(v34) = 0;
          v4 = sub_238F000A4(a2, &v34);
        }

        else
        {
          if (a1 != 11)
          {
LABEL_51:
            v8 = 0;
            *a3 = 0x2C4B000000B5;
            a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
            goto LABEL_52;
          }

          LOBYTE(v34) = 0;
          v4 = sub_238EA4DB4(a2, &v34);
        }

        goto LABEL_47;
      }
    }

    else
    {
      if (a1 == 6)
      {
        v34 = 0;
        v19 = sub_238F01D20(&v34, a2);
        *a3 = v19;
        a3[1] = v20;
        if (v19)
        {
          goto LABEL_48;
        }

        v8 = objc_opt_new();
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v34];
        [v8 setMin:v21];

        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:HIWORD(v34)];
        [v8 setMax:v10];
LABEL_34:

        goto LABEL_52;
      }

      if (a1 == 7)
      {
        LOBYTE(v34) = 0;
        v4 = sub_238F07BEC(a2, &v34);
        goto LABEL_47;
      }
    }

    LOBYTE(v34) = 0;
    v4 = sub_238F07C44(a2, &v34);
    goto LABEL_47;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      goto LABEL_22;
    }

    if (a1 != 4)
    {
      LOBYTE(v34) = 0;
      v35 = 0;
      v6 = sub_238F07B58(a2, &v34);
      *a3 = v6;
      a3[1] = v7;
      if (v6 || (v35 & 1) == 0)
      {
        goto LABEL_48;
      }

      v8 = objc_opt_new();
      if (v35 != 1 || ([MEMORY[0x277CCABB0] numberWithShort:v34], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "setMin:", v9), v9, (v35 & 1) == 0))
      {
        sub_238EA195C();
      }

      v10 = [MEMORY[0x277CCABB0] numberWithShort:SHIWORD(v34)];
      [v8 setMax:v10];
      goto LABEL_34;
    }

    LOBYTE(v34) = 0;
    v4 = sub_238EFF894(a2, &v34);
LABEL_47:
    *a3 = v4;
    a3[1] = v5;
    if (!v4)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v34];
      goto LABEL_50;
    }

LABEL_48:
    v8 = 0;
    goto LABEL_52;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      if (a1 != 2)
      {
        goto LABEL_51;
      }

LABEL_22:
      LOWORD(v34) = 0;
      v11 = sub_2393C5F70(a2, &v34);
      *a3 = v11;
      a3[1] = v12;
      if (!v11)
      {
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v34];
LABEL_50:
        v8 = v13;
        goto LABEL_52;
      }

      goto LABEL_48;
    }

    LOBYTE(v34) = 0;
    v38 = 0;
    v22 = sub_238F07AC0(a2, &v34);
    *a3 = v22;
    a3[1] = v23;
    if (v22 || (v38 & 1) == 0)
    {
      goto LABEL_48;
    }

    v8 = objc_opt_new();
    if (v38 == 1)
    {
      if (v34 == 1 && sub_2392C83D0(&v34)[2] == 1)
      {
        if (v38 != 1)
        {
          goto LABEL_80;
        }

        v24 = MEMORY[0x277CCABB0];
        v25 = sub_2392C83D0(&v34);
        if (v25[2] != 1)
        {
          goto LABEL_80;
        }

        v26 = [v24 numberWithUnsignedShort:*v25];
        [v8 setPosition:v26];
      }

      else
      {
        [v8 setPosition:0];
      }

      if (v38 != 1)
      {
        goto LABEL_80;
      }

      if (v36[0] == 1 && sub_2392C86E0(v36)[1] == 1)
      {
        if (v38 != 1)
        {
          goto LABEL_80;
        }

        v31 = MEMORY[0x277CCABB0];
        v32 = sub_2392C86E0(v36);
        if (v32[1] != 1)
        {
          goto LABEL_80;
        }

        v33 = [v31 numberWithBool:*v32];
        [v8 setLatch:v33];
      }

      else
      {
        [v8 setLatch:0];
      }

      if (v38)
      {
        if (v37[0] == 1)
        {
          goto LABEL_72;
        }

        goto LABEL_77;
      }
    }

LABEL_80:
    sub_238EA195C();
  }

  LOBYTE(v34) = 0;
  v38 = 0;
  v14 = sub_238F07AC0(a2, &v34);
  *a3 = v14;
  a3[1] = v15;
  if (v14 || (v38 & 1) == 0)
  {
    goto LABEL_48;
  }

  v8 = objc_opt_new();
  if (v38 != 1)
  {
    goto LABEL_79;
  }

  if (v34 == 1 && sub_2392C83D0(&v34)[2] == 1)
  {
    if (v38 != 1)
    {
      goto LABEL_79;
    }

    v16 = MEMORY[0x277CCABB0];
    v17 = sub_2392C83D0(&v34);
    if (v17[2] != 1)
    {
      goto LABEL_79;
    }

    v18 = [v16 numberWithUnsignedShort:*v17];
    [v8 setPosition:v18];
  }

  else
  {
    [v8 setPosition:0];
  }

  if (v38 != 1)
  {
    goto LABEL_79;
  }

  if (v36[0] == 1 && sub_2392C86E0(v36)[1] == 1)
  {
    if (v38 == 1)
    {
      v28 = MEMORY[0x277CCABB0];
      v29 = sub_2392C86E0(v36);
      if (v29[1] == 1)
      {
        v30 = [v28 numberWithBool:*v29];
        [v8 setLatch:v30];

        goto LABEL_70;
      }
    }

LABEL_79:
    sub_238EA195C();
  }

  [v8 setLatch:0];
LABEL_70:
  if ((v38 & 1) == 0)
  {
    goto LABEL_79;
  }

  if (v37[0] == 1)
  {
LABEL_72:
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_2392C86E0(v37)];
    [v8 setSpeed:v10];
    goto LABEL_34;
  }

LABEL_77:
  [v8 setSpeed:0];
LABEL_52:

  return v8;
}

void sub_2392B2400(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_2392B2458(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          sub_2393C5AAC(v70);
          sub_2393C5ADC(v70, 0, 0);
          v5 = sub_238F36BB4(v70, a2);
          v6 = 0;
          *a3 = v5;
          a3[1] = v7;
          if (v5)
          {
            goto LABEL_79;
          }

          v6 = objc_opt_new();
          sub_2393C5AAC(v65);
          v63 = 0;
          v64 = 0;
          sub_2393C5BDC(v65, v70);
          while (sub_238E72E88(&v63))
          {
            v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v66];
            [v6 addObject:v8];
          }

          goto LABEL_70;
        }

LABEL_61:
        v6 = 0;
        *a3 = 0x2D20000000B5;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
        goto LABEL_79;
      }

      sub_2393C5AAC(v70);
      sub_2393C5ADC(v70, 0, 0);
      v53 = sub_238F36BB4(v70, a2);
      v6 = 0;
      *a3 = v53;
      a3[1] = v54;
      if (v53)
      {
        goto LABEL_79;
      }

      v6 = objc_opt_new();
      sub_2393C5AAC(v65);
      v63 = 0;
      v64 = 0;
      sub_2393C5BDC(v65, v70);
      LODWORD(v66) = 0;
      *(&v66 + 1) = 0;
      *&v67 = 0;
      while (1)
      {
        v55 = sub_238EA1A80(&v63);
        LODWORD(v25) = v63;
        if (v63)
        {
          v55 = 0;
        }

        if (!v55)
        {
          break;
        }

        v66 = 0uLL;
        *&v67 = 0;
        v25 = sub_238F28294(&v66, v65);
        v63 = v25;
        v64 = v56;
        if (v25)
        {
          break;
        }

        v57 = objc_opt_new();
        v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v66];
        [v57 setMapID:v58];

        v59 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(&v66 + 1) length:v67 encoding:4];
        [v57 setName:v59];

        v60 = [v57 name];

        if (!v60)
        {
          *a3 = xmmword_278A74B78;

          goto LABEL_77;
        }

        [v6 addObject:v57];
      }
    }

    else
    {
      sub_2393C5AAC(v70);
      sub_2393C5ADC(v70, 0, 0);
      v22 = sub_238F36BB4(v70, a2);
      v6 = 0;
      *a3 = v22;
      a3[1] = v23;
      if (v22)
      {
        goto LABEL_79;
      }

      v6 = objc_opt_new();
      sub_2392C8700(&v63, v70);
      while (1)
      {
        v24 = sub_238EA1A80(&v63);
        LODWORD(v25) = v63;
        if (v63)
        {
          v24 = 0;
        }

        if (!v24)
        {
          break;
        }

        v69 = 0;
        v68 = 0u;
        v67 = 0u;
        v66 = 0u;
        v25 = sub_238F28170(&v66, v65);
        v63 = v25;
        v64 = v26;
        if (v25)
        {
          break;
        }

        v27 = objc_opt_new();
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v66];
        [v27 setAreaID:v28];

        if (BYTE8(v66))
        {
          v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD1(v66)];
          [v27 setMapID:v29];
        }

        else
        {
          [v27 setMapID:0];
        }

        v30 = objc_opt_new();
        [v27 setAreaInfo:v30];

        if (BYTE8(v68))
        {
          v31 = objc_opt_new();
          v32 = [v27 areaInfo];
          [v32 setLocationInfo:v31];

          if ((BYTE8(v68) & 1) == 0)
          {
            goto LABEL_82;
          }

          v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v67 length:*(&v67 + 1) encoding:4];
          v34 = [v27 areaInfo];
          v35 = [v34 locationInfo];
          [v35 setLocationName:v33];

          v36 = [v27 areaInfo];
          v37 = [v36 locationInfo];
          v38 = [v37 locationName];

          if (!v38)
          {
            *a3 = xmmword_278A74B68;

            goto LABEL_77;
          }

          if (BYTE8(v68) != 1)
          {
            goto LABEL_82;
          }

          if (BYTE2(v68))
          {
            v39 = [MEMORY[0x277CCABB0] numberWithShort:v68];
            v40 = [v27 areaInfo];
            v41 = [v40 locationInfo];
            [v41 setFloorNumber:v39];
          }

          else
          {
            v39 = [v27 areaInfo];
            v40 = [v39 locationInfo];
            [v40 setFloorNumber:0];
          }

          if (BYTE8(v68) != 1)
          {
LABEL_82:
            sub_238EA195C();
          }

          if (BYTE5(v68))
          {
            v42 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE4(v68)];
            v43 = [v27 areaInfo];
            v44 = [v43 locationInfo];
            [v44 setAreaType:v42];
          }

          else
          {
            v42 = [v27 areaInfo];
            v43 = [v42 locationInfo];
            [v43 setAreaType:0];
          }
        }

        else
        {
          v42 = [v27 areaInfo];
          [v42 setLocationInfo:0];
        }

        if ((v69 & 0x1000000) != 0)
        {
          v45 = objc_opt_new();
          v46 = [v27 areaInfo];
          [v46 setLandmarkInfo:v45];

          if (BYTE3(v69) != 1)
          {
            goto LABEL_82;
          }

          v47 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v69];
          v48 = [v27 areaInfo];
          v49 = [v48 landmarkInfo];
          [v49 setLandmarkTag:v47];

          if (BYTE3(v69) != 1)
          {
            goto LABEL_82;
          }

          if ((v69 & 0x10000) != 0)
          {
            v50 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v69)];
            v51 = [v27 areaInfo];
            v52 = [v51 landmarkInfo];
            [v52 setRelativePositionTag:v50];
          }

          else
          {
            v50 = [v27 areaInfo];
            v51 = [v50 landmarkInfo];
            [v51 setRelativePositionTag:0];
          }
        }

        else
        {
          v50 = [v27 areaInfo];
          [v50 setLandmarkInfo:0];
        }

        [v6 addObject:v27];
      }
    }

    if (v25 == 33)
    {
      goto LABEL_79;
    }

    goto LABEL_73;
  }

  if (a1 == 3 || a1 == 4)
  {
    LOBYTE(v63) = 0;
    BYTE4(v63) = 0;
    v20 = sub_238EFDEB0(a2, &v63);
    *a3 = v20;
    a3[1] = v21;
    if (!v20 && BYTE4(v63) == 1)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v63];
      goto LABEL_79;
    }

LABEL_78:
    v6 = 0;
    goto LABEL_79;
  }

  if (a1 != 5)
  {
    goto LABEL_61;
  }

  sub_2393C5AAC(v70);
  sub_2393C5ADC(v70, 0, 0);
  v9 = sub_238F36BB4(v70, a2);
  v6 = 0;
  *a3 = v9;
  a3[1] = v10;
  if (v9)
  {
    goto LABEL_79;
  }

  v6 = objc_opt_new();
  sub_2393C5AAC(v65);
  v63 = 0;
  v64 = 0;
  sub_2393C5BDC(v65, v70);
  LODWORD(v66) = 0;
  BYTE4(v66) = 0;
  BYTE8(v66) = 0;
  BYTE4(v67) = 0;
  while (sub_238EA1A80(&v63) && sub_2392C875C(&v63))
  {
    v11 = objc_opt_new();
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v66];
    [v11 setAreaID:v12];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE4(v66)];
    [v11 setStatus:v13];

    if (BYTE8(v66) == 1 && (sub_238DE3698(&v66 + 8)[4] & 1) != 0)
    {
      v14 = MEMORY[0x277CCABB0];
      v15 = sub_238DE3698(&v66 + 8);
      if ((v15[4] & 1) == 0)
      {
        goto LABEL_83;
      }

      v16 = [v14 numberWithUnsignedInt:*v15];
      [v11 setTotalOperationalTime:v16];
    }

    else
    {
      [v11 setTotalOperationalTime:{0, v63}];
    }

    if (BYTE4(v67) == 1 && (sub_238DE3698(&v67 + 4)[4] & 1) != 0)
    {
      v17 = MEMORY[0x277CCABB0];
      v18 = sub_238DE3698(&v67 + 4);
      if (v18[4] != 1)
      {
LABEL_83:
        sub_238EA195C();
      }

      v19 = [v17 numberWithUnsignedInt:*v18];
      [v11 setEstimatedTime:v19];
    }

    else
    {
      [v11 setEstimatedTime:{0, v63}];
    }

    [v6 addObject:{v11, v63}];
  }

LABEL_70:
  if (v63 != 33)
  {
LABEL_73:
    if (!v63)
    {
      goto LABEL_79;
    }

    v61 = v64;
    *a3 = v63;
    a3[1] = v61;
LABEL_77:

    goto LABEL_78;
  }

LABEL_79:

  return v6;
}

id sub_2392B2EF4(int a1, uint64_t a2, unint64_t *a3)
{
  switch(a1)
  {
    case 0:
    case 3:
    case 4:
    case 5:
    case 6:
    case 11:
    case 12:
    case 19:
      LOBYTE(v16) = 0;
      BYTE2(v16) = 0;
      v4 = sub_238F0B738(a2, &v16);
      *a3 = v4;
      a3[1] = v5;
      if (v4 || BYTE2(v16) != 1)
      {
        goto LABEL_14;
      }

      v6 = [MEMORY[0x277CCABB0] numberWithShort:v16];
      break;
    case 1:
    case 2:
    case 7:
    case 8:
    case 9:
    case 10:
    case 20:
      LOBYTE(v16) = 0;
      BYTE2(v16) = 0;
      v7 = sub_238EFD714(a2, &v16);
      *a3 = v7;
      a3[1] = v8;
      if (v7 || BYTE2(v16) != 1)
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    case 16:
      LOWORD(v16) = 0;
      v14 = sub_238F36E54(a2, &v16);
      *a3 = v14;
      a3[1] = v15;
      if (v14)
      {
        goto LABEL_14;
      }

LABEL_20:
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16];
      break;
    case 17:
    case 32:
      LOBYTE(v16) = 0;
      v11 = sub_238EA4D5C(a2, &v16);
      goto LABEL_13;
    case 18:
    case 33:
      LOBYTE(v16) = 0;
      v11 = sub_238F248DC(a2, &v16);
LABEL_13:
      *a3 = v11;
      a3[1] = v12;
      if (v11)
      {
        goto LABEL_14;
      }

      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v16];
      break;
    case 21:
    case 22:
    case 23:
      LOBYTE(v16) = 0;
      v17 = 0;
      v9 = sub_238EFDEB0(a2, &v16);
      *a3 = v9;
      a3[1] = v10;
      if (v9 || v17 != 1)
      {
LABEL_14:
        v6 = 0;
      }

      else
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
      }

      break;
    default:
      v6 = 0;
      *a3 = 0x2E72000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      break;
  }

  return v6;
}

id sub_2392B30A0(int a1, uint64_t a2, void *a3)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 49:
    case 70:
      LOBYTE(v105) = 0;
      BYTE2(v105) = 0;
      v13 = sub_238F0B738(a2, &v105);
      *a3 = v13;
      a3[1] = v14;
      if (!v13 && BYTE2(v105) == 1)
      {
        goto LABEL_3;
      }

      goto LABEL_143;
    case 2:
    case 9:
    case 26:
    case 37:
      LOBYTE(v105) = 0;
      v8 = sub_238EA4DB4(a2, &v105);
      goto LABEL_5;
    case 3:
    case 4:
    case 5:
    case 6:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
      LOWORD(v105) = 0;
      v5 = sub_2393C5E20(a2, &v105);
      *a3 = v5;
      a3[1] = v6;
      if (v5)
      {
        goto LABEL_143;
      }

LABEL_3:
      v7 = [MEMORY[0x277CCABB0] numberWithShort:v105];
      goto LABEL_7;
    case 7:
    case 8:
    case 33:
    case 34:
    case 58:
    case 74:
    case 75:
    case 76:
    case 83:
      LOBYTE(v105) = 0;
      v8 = sub_2393C5ED0(a2, &v105);
      goto LABEL_5;
    case 16:
    case 25:
      LOBYTE(v105) = 0;
      v15 = sub_2393C5D48(a2, &v105);
      *a3 = v15;
      a3[1] = v16;
      if (v15)
      {
        goto LABEL_143;
      }

      v7 = [MEMORY[0x277CCABB0] numberWithChar:v105];
      goto LABEL_7;
    case 27:
      LOBYTE(v105) = 0;
      v8 = sub_238F01014(a2, &v105);
      goto LABEL_5;
    case 28:
      LOBYTE(v105) = 0;
      v8 = sub_238F29734(a2, &v105);
      goto LABEL_5;
    case 30:
      LOBYTE(v105) = 0;
      v8 = sub_238F2978C(a2, &v105);
      goto LABEL_5;
    case 32:
      LOBYTE(v105) = 0;
      v8 = sub_238EFFAE8(a2, &v105);
      goto LABEL_5;
    case 35:
      LOBYTE(v105) = 0;
      v8 = sub_238EFF894(a2, &v105);
      goto LABEL_5;
    case 36:
      LOBYTE(v105) = 0;
      BYTE2(v105) = 0;
      v58 = sub_238EFD714(a2, &v105);
      goto LABEL_79;
    case 41:
      LOWORD(v105) = 0;
      v21 = sub_238F36E54(a2, &v105);
      goto LABEL_28;
    case 48:
      LOBYTE(v105) = 0;
      v8 = sub_238EFD7D0(a2, &v105);
      goto LABEL_5;
    case 50:
      LODWORD(v105) = 0;
      v19 = sub_2393C5FC8(a2, &v105);
      goto LABEL_88;
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 77:
      LOWORD(v105) = 0;
      v11 = sub_238F00228(a2, &v105);
      *a3 = v11;
      a3[1] = v12;
      if (v11 || BYTE1(v105) != 1)
      {
        goto LABEL_143;
      }

      goto LABEL_6;
    case 64:
      LOBYTE(v105) = 0;
      v8 = sub_238F000A4(a2, &v105);
      goto LABEL_5;
    case 65:
      LOWORD(v105) = 0;
      v21 = sub_2393C5F70(a2, &v105);
LABEL_28:
      *a3 = v21;
      a3[1] = v22;
      if (!v21)
      {
        goto LABEL_81;
      }

      goto LABEL_143;
    case 66:
    case 67:
      LOBYTE(v105) = 0;
      v8 = sub_238EA4D5C(a2, &v105);
      goto LABEL_5;
    case 68:
      LODWORD(v105) = 0;
      v19 = sub_238F37278(a2, &v105);
LABEL_88:
      *a3 = v19;
      a3[1] = v20;
      if (!v19)
      {
        goto LABEL_89;
      }

      goto LABEL_143;
    case 69:
      LOBYTE(v105) = 0;
      v8 = sub_238EFE758(a2, &v105);
      goto LABEL_5;
    case 71:
      LOBYTE(v105) = 0;
      v8 = sub_238F03FA8(a2, &v105);
LABEL_5:
      *a3 = v8;
      a3[1] = v9;
      if (v8)
      {
        goto LABEL_143;
      }

LABEL_6:
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v105];
      goto LABEL_7;
    case 72:
      sub_2392C77A0(&v96);
      v23 = sub_238F36BB4(&v96, a2);
      *a3 = v23;
      a3[1] = v24;
      if (v23)
      {
        goto LABEL_143;
      }

      v10 = objc_opt_new();
      sub_2392C87B4(&v105, &v96);
      while (1)
      {
        v25 = sub_238EA1A80(&v105);
        LODWORD(v26) = v105;
        if (v105)
        {
          v25 = 0;
        }

        if (!v25)
        {
          break;
        }

        LODWORD(v111) = 0;
        v26 = sub_238F2B6A4(&v111, &v107);
        v105 = v26;
        v106 = v27;
        if (v26)
        {
          break;
        }

        v28 = objc_opt_new();
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v111];
        [v28 setPresetScenario:v29];

        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v111)];
        [v28 setNumberOfPresets:v30];

        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v111)];
        [v28 setPresetTypeFeatures:v31];

        [v10 addObject:v28];
      }

      goto LABEL_97;
    case 73:
      sub_2392C77A0(&v96);
      v32 = sub_238F36BB4(&v96, a2);
      *a3 = v32;
      a3[1] = v33;
      if (v32)
      {
        goto LABEL_143;
      }

      v10 = objc_opt_new();
      sub_2392C87B4(&v105, &v96);
      while (1)
      {
        v34 = sub_238EA1A80(&v105);
        LODWORD(v26) = v105;
        if (v105)
        {
          v34 = 0;
        }

        if (!v34)
        {
          break;
        }

        LODWORD(v111) = 0;
        v26 = sub_238F2B800(&v111, &v107);
        v105 = v26;
        v106 = v35;
        if (v26)
        {
          break;
        }

        v36 = objc_opt_new();
        v37 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v111];
        [v36 setSystemMode:v37];

        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v111)];
        [v36 setNumberOfSchedules:v38];

        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v111)];
        [v36 setScheduleTypeFeatures:v39];

        [v10 addObject:v36];
      }

      goto LABEL_97;
    case 78:
    case 79:
      LOBYTE(v105) = 0;
      LOBYTE(v107) = 0;
      v17 = sub_238F10D4C(a2, &v105);
      *a3 = v17;
      a3[1] = v18;
      if (v17 || v107 != 1)
      {
        goto LABEL_143;
      }

      v7 = [MEMORY[0x277CBEA90] dataWithBytes:v105 length:v106];
      goto LABEL_7;
    case 80:
      sub_2392C77A0(&v96);
      v40 = sub_238F36BB4(&v96, a2);
      *a3 = v40;
      a3[1] = v41;
      if (v40)
      {
        goto LABEL_143;
      }

      v10 = objc_opt_new();
      sub_2392C87F8(&v105, &v96);
      while (2)
      {
        if (!sub_238EA1A80(&v105) || !sub_2392C8854(&v105))
        {
          goto LABEL_136;
        }

        v42 = objc_opt_new();
        v43 = v42;
        if (v112)
        {
          v44 = [MEMORY[0x277CBEA90] dataWithBytes:v111 length:?];
          [v43 setPresetHandle:v44];
        }

        else
        {
          [v42 setPresetHandle:0];
        }

        v45 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE8(v112)];
        [v43 setPresetScenario:v45];

        if (v113[0] != 1 || (sub_238DE36B8(v113)[16] & 1) == 0)
        {
          [v43 setName:0];
LABEL_58:
          if (v115[0] == 1)
          {
            v49 = [MEMORY[0x277CCABB0] numberWithShort:*sub_238E0A934(v115)];
            [v43 setCoolingSetpoint:v49];
          }

          else
          {
            [v43 setCoolingSetpoint:0];
          }

          if (v116[0] == 1)
          {
            v50 = [MEMORY[0x277CCABB0] numberWithShort:*sub_238E0A934(v116)];
            [v43 setHeatingSetpoint:v50];
          }

          else
          {
            [v43 setHeatingSetpoint:0];
          }

          if (v116[5])
          {
            v51 = [MEMORY[0x277CCABB0] numberWithBool:v116[4]];
            [v43 setBuiltIn:v51];
          }

          else
          {
            [v43 setBuiltIn:0];
          }

          [v10 addObject:v43];

          continue;
        }

        break;
      }

      v46 = sub_238DE36B8(v113);
      if ((v46[16] & 1) == 0)
      {
        sub_238EA195C();
      }

      v47 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v46 length:*(v46 + 1) encoding:4];
      [v43 setName:v47];

      v48 = [v43 name];

      if (v48)
      {
        goto LABEL_58;
      }

      v94 = &xmmword_278A74B88;
LABEL_140:
      *a3 = *v94;
LABEL_141:

LABEL_142:
LABEL_143:
      v10 = 0;
LABEL_144:

      return v10;
    case 81:
      v71 = sub_2392C77A0(v118);
      v72 = sub_238F36BB4(v71, a2);
      *a3 = v72;
      a3[1] = v73;
      if (v72)
      {
        goto LABEL_143;
      }

      v10 = objc_opt_new();
      sub_2392C88B8(&v105, v118);
      while (2)
      {
        if (sub_238EA1A80(&v105) && sub_2392C8928(&v105))
        {
          v74 = objc_opt_new();
          v43 = v74;
          if (v112)
          {
            v75 = [MEMORY[0x277CBEA90] dataWithBytes:v111 length:?];
            [v43 setScheduleHandle:v75];
          }

          else
          {
            [v74 setScheduleHandle:0];
          }

          v76 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE8(v112)];
          [v43 setSystemMode:v76];

          if (v113[0] == 1)
          {
            v77 = sub_238DE36B8(v113);
            v78 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v77 length:v77[1] encoding:4];
            [v43 setName:v78];

            v79 = [v43 name];

            if (!v79)
            {
              v94 = &xmmword_278A74B98;
              goto LABEL_140;
            }
          }

          else
          {
            [v43 setName:0];
          }

          if (v114[0] == 1)
          {
            v80 = sub_238DE36B8(v114);
            v81 = [MEMORY[0x277CBEA90] dataWithBytes:*v80 length:v80[1]];
            [v43 setPresetHandle:v81];
          }

          else
          {
            [v43 setPresetHandle:0];
          }

          v82 = objc_opt_new();
          sub_2393C5AAC(v98);
          v96 = 0;
          v97 = 0;
          sub_2393C5BDC(v98, v117);
          v99 = 0;
          v100 = 0;
          v101[0] = 0;
          v102[0] = 0;
          v103[0] = 0;
          v104[0] = 0;
          while (sub_238EA1A80(&v96) && sub_2392C8A14(&v96))
          {
            v83 = objc_opt_new();
            v84 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v99];
            [v83 setDayOfWeek:v84];

            v85 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v100];
            [v83 setTransitionTime:v85];

            if (v101[0] == 1)
            {
              v86 = sub_238DE36B8(v101);
              v87 = [MEMORY[0x277CBEA90] dataWithBytes:*v86 length:v86[1]];
              [v83 setPresetHandle:v87];
            }

            else
            {
              [v83 setPresetHandle:0];
            }

            if (v102[0] == 1)
            {
              v88 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(v102)];
              [v83 setSystemMode:v88];
            }

            else
            {
              [v83 setSystemMode:0];
            }

            if (v103[0] == 1)
            {
              v89 = [MEMORY[0x277CCABB0] numberWithShort:*sub_238E0A934(v103)];
              [v83 setCoolingSetpoint:v89];
            }

            else
            {
              [v83 setCoolingSetpoint:0];
            }

            if (v104[0] == 1)
            {
              v90 = [MEMORY[0x277CCABB0] numberWithShort:*sub_238E0A934(v104)];
              [v83 setHeatingSetpoint:v90];
            }

            else
            {
              [v83 setHeatingSetpoint:0];
            }

            [v82 addObject:v83];
          }

          if (v96 == 33 || !v96)
          {
            [v43 setTransitions:v82];

            if (v117[73])
            {
              v91 = [MEMORY[0x277CCABB0] numberWithBool:v117[72]];
              [v43 setBuiltIn:v91];
            }

            else
            {
              [v43 setBuiltIn:0];
            }

            [v10 addObject:v43];

            continue;
          }

          v93 = v97;
          *a3 = v96;
          a3[1] = v93;

          goto LABEL_141;
        }

        break;
      }

LABEL_136:
      if (v105 == 33)
      {
        goto LABEL_144;
      }

LABEL_137:
      if (v105)
      {
        v92 = v106;
        *a3 = v105;
        a3[1] = v92;
        goto LABEL_142;
      }

      goto LABEL_144;
    case 82:
      LOBYTE(v105) = 0;
      BYTE4(v105) = 0;
      v60 = sub_238EFDEB0(a2, &v105);
      *a3 = v60;
      a3[1] = v61;
      if (v60 || BYTE4(v105) != 1)
      {
        goto LABEL_143;
      }

LABEL_89:
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v105];
      goto LABEL_7;
    case 84:
      sub_2392C77A0(&v96);
      v62 = sub_238F36BB4(&v96, a2);
      *a3 = v62;
      a3[1] = v63;
      if (v62)
      {
        goto LABEL_143;
      }

      v10 = objc_opt_new();
      sub_2392C8A74(&v105, &v96);
      while (1)
      {
        v64 = sub_238EA1A80(&v105);
        LODWORD(v26) = v105;
        if (v105)
        {
          v64 = 0;
        }

        if (!v64)
        {
          break;
        }

        v112 = 0u;
        v111 = 0u;
        v26 = sub_238F2B954(&v111, &v107);
        v105 = v26;
        v106 = v65;
        if (v26)
        {
          break;
        }

        v66 = objc_opt_new();
        v67 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v111];
        [v66 setUniqueID:v67];

        v68 = [MEMORY[0x277CBEA90] dataWithBytes:*(&v111 + 1) length:v112];
        [v66 setPresetHandle:v68];

        v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD2(v112)];
        [v66 setEffectiveTime:v69];

        v70 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v112)];
        [v66 setExpirationTime:v70];

        [v10 addObject:v66];
      }

LABEL_97:
      if (v26 == 33)
      {
        goto LABEL_144;
      }

      goto LABEL_137;
    case 85:
      LOBYTE(v105) = 0;
      v110 = 0;
      v52 = sub_238F297F4(a2, &v105);
      *a3 = v52;
      a3[1] = v53;
      if (v52 || (v110 & 1) == 0)
      {
        goto LABEL_143;
      }

      v10 = objc_opt_new();
      if (v110 != 1)
      {
        goto LABEL_148;
      }

      v54 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v105];
      [v10 setUniqueID:v54];

      if (v110 != 1)
      {
        goto LABEL_148;
      }

      v55 = [MEMORY[0x277CBEA90] dataWithBytes:v106 length:v107];
      [v10 setPresetHandle:v55];

      if (v110 != 1 || ([MEMORY[0x277CCABB0] numberWithUnsignedInt:v108], v56 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "setEffectiveTime:", v56), v56, (v110 & 1) == 0))
      {
LABEL_148:
        sub_238EA195C();
      }

      v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v109];
      [v10 setExpirationTime:v57];

      goto LABEL_144;
    case 86:
      LOBYTE(v105) = 0;
      BYTE2(v105) = 0;
      v58 = sub_238F2988C(a2, &v105);
LABEL_79:
      *a3 = v58;
      a3[1] = v59;
      if (v58 || BYTE2(v105) != 1)
      {
        goto LABEL_143;
      }

LABEL_81:
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v105];
LABEL_7:
      v10 = v7;
      goto LABEL_144;
    default:
      v10 = 0;
      *a3 = 0x323F000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_144;
  }
}

id sub_2392B40F4(int a1, uint64_t a2, void *a3)
{
  if (a1 > 5)
  {
    if (a1 > 8)
    {
      switch(a1)
      {
        case 9:
          v34 = 0;
          v20 = sub_238EA4DB4(a2, &v34);
          *a3 = v20;
          a3[1] = v21;
          if (!v20)
          {
            v6 = MEMORY[0x277CCABB0];
            v7 = v34;
            goto LABEL_42;
          }

          break;
        case 10:
          v33 = 0;
          v28 = sub_238EA4DB4(a2, &v33);
          *a3 = v28;
          a3[1] = v29;
          if (!v28)
          {
            v6 = MEMORY[0x277CCABB0];
            v7 = v33;
            goto LABEL_42;
          }

          break;
        case 11:
          v32 = 0;
          v12 = sub_238EFF894(a2, &v32);
          *a3 = v12;
          a3[1] = v13;
          if (!v12)
          {
            v6 = MEMORY[0x277CCABB0];
            v7 = v32;
            goto LABEL_42;
          }

          break;
        default:
          goto LABEL_40;
      }
    }

    else if (a1 == 6)
    {
      v37 = 0;
      v16 = sub_2393C5ED0(a2, &v37);
      *a3 = v16;
      a3[1] = v17;
      if (!v16)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v37;
        goto LABEL_42;
      }
    }

    else if (a1 == 7)
    {
      v36 = 0;
      v24 = sub_238EA4DB4(a2, &v36);
      *a3 = v24;
      a3[1] = v25;
      if (!v24)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v36;
        goto LABEL_42;
      }
    }

    else
    {
      v35 = 0;
      v8 = sub_238EA4DB4(a2, &v35);
      *a3 = v8;
      a3[1] = v9;
      if (!v8)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v35;
        goto LABEL_42;
      }
    }

LABEL_39:
    v30 = 0;
    goto LABEL_43;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v40 = 0;
      v18 = sub_2393C5ED0(a2, &v40);
      *a3 = v18;
      a3[1] = v19;
      if (!v18)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v40;
        goto LABEL_42;
      }
    }

    else if (a1 == 4)
    {
      v39 = 0;
      v26 = sub_2393C5ED0(a2, &v39);
      *a3 = v26;
      a3[1] = v27;
      if (!v26)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v39;
        goto LABEL_42;
      }
    }

    else
    {
      v38 = 0;
      v10 = sub_238F00228(a2, &v38);
      *a3 = v10;
      a3[1] = v11;
      if (!v10 && HIBYTE(v38) == 1)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v38;
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

  if (!a1)
  {
    v43 = 0;
    v14 = sub_238EFFAE8(a2, &v43);
    *a3 = v14;
    a3[1] = v15;
    if (!v14)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v43;
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (a1 == 1)
  {
    v42 = 0;
    v22 = sub_238F01014(a2, &v42);
    *a3 = v22;
    a3[1] = v23;
    if (!v22)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v42;
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (a1 != 2)
  {
LABEL_40:
    v30 = 0;
    *a3 = 0x32D8000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_43;
  }

  v41 = 0;
  v4 = sub_238F00228(a2, &v41);
  *a3 = v4;
  a3[1] = v5;
  if (v4 || HIBYTE(v41) != 1)
  {
    goto LABEL_39;
  }

  v6 = MEMORY[0x277CCABB0];
  v7 = v41;
LABEL_42:
  v30 = [v6 numberWithUnsignedChar:v7];
LABEL_43:

  return v30;
}

id sub_2392B43C8(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 2)
  {
    v14 = 0;
    v10 = sub_238EFF894(a2, &v14);
    *a3 = v10;
    a3[1] = v11;
    if (!v10)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v14;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v15 = 0;
    v8 = sub_238F01014(a2, &v15);
    *a3 = v8;
    a3[1] = v9;
    if (!v8)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v15;
      goto LABEL_12;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_13;
  }

  if (a1)
  {
    v12 = 0;
    *a3 = 0x3306000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_13;
  }

  v16 = 0;
  v4 = sub_238EFF894(a2, &v16);
  *a3 = v4;
  a3[1] = v5;
  if (v4)
  {
    goto LABEL_9;
  }

  v6 = MEMORY[0x277CCABB0];
  v7 = v16;
LABEL_12:
  v12 = [v6 numberWithUnsignedChar:v7];
LABEL_13:

  return v12;
}

id sub_2392B44BC(int a1, uint64_t a2, void *a3)
{
  if (a1 >= 0x4000)
  {
    if (a1 > 16389)
    {
      if (a1 > 16395)
      {
        if (a1 != 16396 && a1 != 16397)
        {
          if (a1 == 16400)
          {
            LOBYTE(v20) = 0;
            BYTE2(v20) = 0;
            v12 = sub_238EFD714(a2, &v20);
            *a3 = v12;
            a3[1] = v13;
            if (v12 || BYTE2(v20) != 1)
            {
              goto LABEL_38;
            }

LABEL_5:
            v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v20];
            goto LABEL_40;
          }

LABEL_45:
          v15 = 0;
          *a3 = 0x3580000000B5;
          a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
          goto LABEL_41;
        }

LABEL_3:
        LOWORD(v20) = 0;
        v4 = sub_2393C5F70(a2, &v20);
        goto LABEL_4;
      }

      if (a1 == 16390)
      {
        goto LABEL_3;
      }

      if (a1 == 16394)
      {
        LOWORD(v20) = 0;
        v4 = sub_238F36E54(a2, &v20);
LABEL_4:
        *a3 = v4;
        a3[1] = v5;
        if (v4)
        {
LABEL_38:
          v15 = 0;
          goto LABEL_41;
        }

        goto LABEL_5;
      }

      v9 = 16395;
    }

    else
    {
      if (a1 <= 16386)
      {
        if (a1 != 0x4000)
        {
          if (a1 == 16385)
          {
            LOBYTE(v20) = 0;
            v10 = sub_238EA4D5C(a2, &v20);
            goto LABEL_37;
          }

LABEL_23:
          LOBYTE(v20) = 0;
          v10 = sub_2393C5ED0(a2, &v20);
LABEL_37:
          *a3 = v10;
          a3[1] = v11;
          if (v10)
          {
            goto LABEL_38;
          }

LABEL_39:
          v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v20];
LABEL_40:
          v15 = v6;
          goto LABEL_41;
        }

        goto LABEL_3;
      }

      if (a1 == 16387)
      {
        goto LABEL_23;
      }

      if (a1 == 16388)
      {
        goto LABEL_3;
      }

      v9 = 16389;
    }

    if (a1 != v9)
    {
      goto LABEL_45;
    }

    goto LABEL_3;
  }

  switch(a1)
  {
    case 0:
    case 1:
      goto LABEL_23;
    case 2:
    case 3:
    case 4:
    case 7:
    case 17:
    case 18:
    case 21:
    case 22:
    case 25:
    case 26:
    case 32:
    case 33:
    case 36:
    case 37:
    case 40:
    case 41:
    case 48:
    case 49:
    case 50:
    case 51:
    case 54:
    case 55:
    case 58:
    case 59:
      goto LABEL_3;
    case 5:
      LOBYTE(v20) = 0;
      v10 = sub_238F000A4(a2, &v20);
      goto LABEL_37;
    case 6:
      v20 = 0uLL;
      v14 = sub_2393C61E0(a2, &v20);
      v15 = 0;
      *a3 = v14;
      a3[1] = v16;
      if (!v14)
      {
        v17 = sub_2392C6E08(v20, *(&v20 + 1));
        v15 = v17;
        if (v17)
        {
          v18 = v17;
        }

        else
        {
          *a3 = xmmword_278A74BA8;
        }
      }

      break;
    case 8:
      LOBYTE(v20) = 0;
      v10 = sub_238EFD7D0(a2, &v20);
      goto LABEL_37;
    case 15:
      LOBYTE(v20) = 0;
      v10 = sub_238EA4DB4(a2, &v20);
      goto LABEL_37;
    case 16:
    case 19:
    case 23:
    case 27:
    case 34:
    case 38:
    case 42:
    case 52:
    case 56:
    case 60:
      LOWORD(v20) = 0;
      v7 = sub_238F00228(a2, &v20);
      *a3 = v7;
      a3[1] = v8;
      if (!v7 && BYTE1(v20) == 1)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    default:
      goto LABEL_45;
  }

LABEL_41:

  return v15;
}

id sub_2392B4774(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 31)
  {
    if (a1 > 15)
    {
      if (a1 > 19)
      {
        if (a1 != 20 && a1 != 21)
        {
          goto LABEL_41;
        }

        LOWORD(v19) = 0;
        v11 = sub_238F00228(a2, &v19);
        *a3 = v11;
        a3[1] = v12;
        if (!v11 && BYTE1(v19) == 1)
        {
          goto LABEL_21;
        }

        goto LABEL_33;
      }

      if (a1 != 16 && a1 != 17)
      {
        goto LABEL_41;
      }

      goto LABEL_19;
    }

    if (a1 >= 2)
    {
      if (a1 == 2)
      {
LABEL_12:
        LOBYTE(v19) = 0;
        v4 = sub_238EA4DB4(a2, &v19);
        goto LABEL_20;
      }

      goto LABEL_41;
    }

    goto LABEL_19;
  }

  if (a1 > 49)
  {
    if (a1 <= 51)
    {
      goto LABEL_30;
    }

    if (a1 == 52)
    {
      goto LABEL_12;
    }

    if (a1 == 53)
    {
LABEL_30:
      LOBYTE(v19) = 0;
      BYTE4(v19) = 0;
      v13 = sub_238EFDEB0(a2, &v19);
      *a3 = v13;
      a3[1] = v14;
      if (!v13 && BYTE4(v19) == 1)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19];
        goto LABEL_22;
      }

      goto LABEL_33;
    }

LABEL_41:
    v7 = 0;
    *a3 = 0x3645000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_34;
  }

  switch(a1)
  {
    case ' ':
LABEL_19:
      LOBYTE(v19) = 0;
      v4 = sub_2393C5ED0(a2, &v19);
LABEL_20:
      *a3 = v4;
      a3[1] = v5;
      if (!v4)
      {
LABEL_21:
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v19];
LABEL_22:
        v7 = v10;
        goto LABEL_34;
      }

LABEL_33:
      v7 = 0;
      goto LABEL_34;
    case '0':
      v19 = 0uLL;
      v16 = sub_2393C61E0(a2, &v19);
      v7 = 0;
      *a3 = v16;
      a3[1] = v17;
      if (v16)
      {
        goto LABEL_34;
      }

      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v19 length:*(&v19 + 1) encoding:4];
      if (!v7)
      {
        v9 = &xmmword_278A74BB8;
        goto LABEL_43;
      }

      break;
    case '1':
      v19 = 0uLL;
      v6 = sub_2393C61E0(a2, &v19);
      v7 = 0;
      *a3 = v6;
      a3[1] = v8;
      if (v6)
      {
        goto LABEL_34;
      }

      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v19 length:*(&v19 + 1) encoding:4];
      if (!v7)
      {
        v9 = &xmmword_278A74BC8;
LABEL_43:
        *a3 = *v9;
        goto LABEL_44;
      }

      break;
    default:
      goto LABEL_41;
  }

  v18 = v7;
LABEL_44:

LABEL_34:

  return v7;
}

id sub_2392B49F4(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 1)
  {
    if (a1 > 1)
    {
      goto LABEL_14;
    }

LABEL_9:
    LOBYTE(v12) = 0;
    v13 = 0;
    v7 = sub_238EFD714(a2, &v12);
    *a3 = v7;
    a3[1] = v8;
    if (v7 || v13 != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  switch(a1)
  {
    case 2:
      goto LABEL_9;
    case 3:
      v12 = 0;
      v9 = sub_2393C5F70(a2, &v12);
      *a3 = v9;
      a3[1] = v10;
      if (v9)
      {
LABEL_13:
        v6 = 0;
        goto LABEL_15;
      }

LABEL_11:
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v12];
      goto LABEL_15;
    case 4:
      v12 = 0;
      v4 = sub_238F0A8F8(a2, &v12);
      *a3 = v4;
      a3[1] = v5;
      if (!v4 && HIBYTE(v12) == 1)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v12];
        goto LABEL_15;
      }

      goto LABEL_13;
  }

LABEL_14:
  v6 = 0;
  *a3 = 0x3699000000B5;
  a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
LABEL_15:

  return v6;
}

id sub_2392B4B14(int a1, uint64_t a2, void *a3)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      LOBYTE(v17) = 0;
      v18 = 0;
      v13 = sub_238F0B738(a2, &v17);
      *a3 = v13;
      a3[1] = v14;
      if (!v13 && v18 == 1)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v17;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (a1 == 3)
    {
      v16 = 0;
      v8 = sub_2393C5F70(a2, &v16);
      *a3 = v8;
      a3[1] = v9;
      if (!v8)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16];
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      LOBYTE(v19) = 0;
      v20 = 0;
      v4 = sub_238F0B738(a2, &v19);
      *a3 = v4;
      a3[1] = v5;
      if (!v4 && v20 == 1)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v19;
LABEL_18:
        v10 = [v6 numberWithShort:v7];
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_11:
    v10 = 0;
    *a3 = 0x36DE000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_20;
  }

  LOBYTE(v21) = 0;
  v22 = 0;
  v11 = sub_238F0B738(a2, &v21);
  *a3 = v11;
  a3[1] = v12;
  if (!v11 && v22 == 1)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v21;
    goto LABEL_18;
  }

LABEL_19:
  v10 = 0;
LABEL_20:

  return v10;
}

id sub_2392B4C78(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 15)
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 != 3)
        {
          goto LABEL_21;
        }

LABEL_12:
        v12 = 0;
        v7 = sub_2393C5F70(a2, &v12);
        *a3 = v7;
        a3[1] = v8;
        if (!v7)
        {
          v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v12];
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else if (a1 >= 2)
    {
      goto LABEL_21;
    }

LABEL_14:
    LOBYTE(v12) = 0;
    v13 = 0;
    v9 = sub_238F0B738(a2, &v12);
    *a3 = v9;
    a3[1] = v10;
    if (!v9 && v13 == 1)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithShort:v12];
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (a1 <= 18)
  {
    goto LABEL_14;
  }

  if (a1 == 19)
  {
    goto LABEL_12;
  }

  if (a1 == 20)
  {
    LOBYTE(v12) = 0;
    v4 = sub_2393C5D48(a2, &v12);
    *a3 = v4;
    a3[1] = v5;
    if (!v4)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithChar:v12];
      goto LABEL_18;
    }

LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

LABEL_21:
  v6 = 0;
  *a3 = 0x3766000000B5;
  a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
LABEL_18:

  return v6;
}

id sub_2392B4DD8(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v21) = 0;
      v22 = 0;
      v11 = sub_238EFD714(a2, &v21);
      *a3 = v11;
      a3[1] = v12;
      if (!v11 && v22 == 1)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v21;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (a1 == 1)
    {
      LOBYTE(v19) = 0;
      v20 = 0;
      v4 = sub_238EFD714(a2, &v19);
      *a3 = v4;
      a3[1] = v5;
      if (!v4 && v20 == 1)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v19;
LABEL_18:
        v10 = [v6 numberWithUnsignedShort:v7];
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_11:
    v10 = 0;
    *a3 = 0x37AB000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_20;
  }

  if (a1 == 2)
  {
    LOBYTE(v17) = 0;
    v18 = 0;
    v13 = sub_238EFD714(a2, &v17);
    *a3 = v13;
    a3[1] = v14;
    if (!v13 && v18 == 1)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v17;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (a1 != 3)
  {
    goto LABEL_11;
  }

  v16 = 0;
  v8 = sub_2393C5F70(a2, &v16);
  *a3 = v8;
  a3[1] = v9;
  if (!v8)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v16;
    goto LABEL_18;
  }

LABEL_19:
  v10 = 0;
LABEL_20:

  return v10;
}

id sub_2392B4F34(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v21) = 0;
      v22 = 0;
      v11 = sub_238EFD714(a2, &v21);
      *a3 = v11;
      a3[1] = v12;
      if (!v11 && v22 == 1)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v21;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (a1 == 1)
    {
      LOBYTE(v19) = 0;
      v20 = 0;
      v4 = sub_238EFD714(a2, &v19);
      *a3 = v4;
      a3[1] = v5;
      if (!v4 && v20 == 1)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v19;
LABEL_18:
        v10 = [v6 numberWithUnsignedShort:v7];
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_11:
    v10 = 0;
    *a3 = 0x37F0000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_20;
  }

  if (a1 == 2)
  {
    LOBYTE(v17) = 0;
    v18 = 0;
    v13 = sub_238EFD714(a2, &v17);
    *a3 = v13;
    a3[1] = v14;
    if (!v13 && v18 == 1)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v17;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (a1 != 3)
  {
    goto LABEL_11;
  }

  v16 = 0;
  v8 = sub_2393C5F70(a2, &v16);
  *a3 = v8;
  a3[1] = v9;
  if (!v8)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v16;
    goto LABEL_18;
  }

LABEL_19:
  v10 = 0;
LABEL_20:

  return v10;
}

id sub_2392B5090(int a1, uint64_t a2, void *a3)
{
  if (a1 > 17)
  {
    if (a1 <= 33)
    {
      if (a1 != 18)
      {
        if (a1 == 32 || a1 == 33)
        {
          goto LABEL_25;
        }

        goto LABEL_36;
      }
    }

    else if (a1 > 48)
    {
      if (a1 == 49)
      {
        goto LABEL_25;
      }

      if (a1 != 50)
      {
        goto LABEL_36;
      }
    }

    else if (a1 != 34)
    {
      if (a1 == 48)
      {
        goto LABEL_25;
      }

      goto LABEL_36;
    }

    LOBYTE(v16) = 0;
    v10 = sub_2393C5ED0(a2, &v16);
LABEL_29:
    *a3 = v10;
    a3[1] = v11;
    if (!v10)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v16];
      goto LABEL_32;
    }

LABEL_30:
    v6 = 0;
    goto LABEL_33;
  }

  if (a1 > 2)
  {
    if (a1 <= 15 && a1 != 3)
    {
      if (a1 == 4)
      {
        v16 = 0;
        v17 = 0;
        v4 = sub_238F21458(&v16, a2);
        *a3 = v4;
        a3[1] = v5;
        if (!v4)
        {
          v6 = objc_opt_new();
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16];
          [v6 setHoldTimeMin:v7];

          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:HIWORD(v16)];
          [v6 setHoldTimeMax:v8];

          v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v17];
          [v6 setHoldTimeDefault:v9];

          goto LABEL_33;
        }

        goto LABEL_30;
      }

      goto LABEL_36;
    }

LABEL_25:
    LOWORD(v16) = 0;
    v12 = sub_2393C5F70(a2, &v16);
    *a3 = v12;
    a3[1] = v13;
    if (!v12)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16];
LABEL_32:
      v6 = v14;
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  switch(a1)
  {
    case 0:
      goto LABEL_16;
    case 1:
      LOBYTE(v16) = 0;
      v10 = sub_238EA4D5C(a2, &v16);
      goto LABEL_29;
    case 2:
LABEL_16:
      LOBYTE(v16) = 0;
      v10 = sub_238EA4DB4(a2, &v16);
      goto LABEL_29;
  }

LABEL_36:
  v6 = 0;
  *a3 = 0x389A000000B5;
  a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
LABEL_33:

  return v6;
}

void sub_2392B52EC(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

id sub_2392B5318(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 != 2 && a1 != 3)
      {
LABEL_10:
        v15 = 0;
        v7 = sub_2393C5FC8(a2, &v15);
        *a3 = v7;
        a3[1] = v8;
        if (!v7)
        {
          v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15];
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_17:
      LOBYTE(v15) = 0;
      v16 = 0;
      v12 = sub_238F05664(a2, &v15);
      *a3 = v12;
      a3[1] = v13;
      if (!v12 && v16 == 1)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }

    if (a1 <= 1)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (a1 <= 7)
  {
    if (a1 != 5)
    {
      if (a1 != 6)
      {
        v15 = 0;
        v4 = sub_2393C6020(a2, &v15);
        *a3 = v4;
        a3[1] = v6;
        if (!v4)
        {
LABEL_19:
          LODWORD(v5) = v15;
          v9 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      goto LABEL_10;
    }

    goto LABEL_17;
  }

  if (a1 == 8)
  {
    LOBYTE(v15) = 0;
    v10 = sub_238F056F8(a2, &v15);
    goto LABEL_22;
  }

  if (a1 == 9)
  {
    LOBYTE(v15) = 0;
    v10 = sub_238EFD7D0(a2, &v15);
    goto LABEL_22;
  }

  if (a1 != 10)
  {
LABEL_28:
    v9 = 0;
    *a3 = 0x3934000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_24;
  }

  LOBYTE(v15) = 0;
  v10 = sub_238F000A4(a2, &v15);
LABEL_22:
  *a3 = v10;
  a3[1] = v11;
  if (v10)
  {
LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v15];
LABEL_24:

  return v9;
}

id sub_2392B54C8(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 != 2 && a1 != 3)
      {
LABEL_10:
        v15 = 0;
        v7 = sub_2393C5FC8(a2, &v15);
        *a3 = v7;
        a3[1] = v8;
        if (!v7)
        {
          v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15];
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_17:
      LOBYTE(v15) = 0;
      v16 = 0;
      v12 = sub_238F05664(a2, &v15);
      *a3 = v12;
      a3[1] = v13;
      if (!v12 && v16 == 1)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }

    if (a1 <= 1)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (a1 <= 7)
  {
    if (a1 != 5)
    {
      if (a1 != 6)
      {
        v15 = 0;
        v4 = sub_2393C6020(a2, &v15);
        *a3 = v4;
        a3[1] = v6;
        if (!v4)
        {
LABEL_19:
          LODWORD(v5) = v15;
          v9 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      goto LABEL_10;
    }

    goto LABEL_17;
  }

  if (a1 == 8)
  {
    LOBYTE(v15) = 0;
    v10 = sub_238F056F8(a2, &v15);
    goto LABEL_22;
  }

  if (a1 == 9)
  {
    LOBYTE(v15) = 0;
    v10 = sub_238EFD7D0(a2, &v15);
    goto LABEL_22;
  }

  if (a1 != 10)
  {
LABEL_28:
    v9 = 0;
    *a3 = 0x39CE000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_24;
  }

  LOBYTE(v15) = 0;
  v10 = sub_238F000A4(a2, &v15);
LABEL_22:
  *a3 = v10;
  a3[1] = v11;
  if (v10)
  {
LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v15];
LABEL_24:

  return v9;
}

id sub_2392B5678(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 != 2 && a1 != 3)
      {
LABEL_10:
        v15 = 0;
        v7 = sub_2393C5FC8(a2, &v15);
        *a3 = v7;
        a3[1] = v8;
        if (!v7)
        {
          v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15];
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_17:
      LOBYTE(v15) = 0;
      v16 = 0;
      v12 = sub_238F05664(a2, &v15);
      *a3 = v12;
      a3[1] = v13;
      if (!v12 && v16 == 1)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }

    if (a1 <= 1)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (a1 <= 7)
  {
    if (a1 != 5)
    {
      if (a1 != 6)
      {
        v15 = 0;
        v4 = sub_2393C6020(a2, &v15);
        *a3 = v4;
        a3[1] = v6;
        if (!v4)
        {
LABEL_19:
          LODWORD(v5) = v15;
          v9 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      goto LABEL_10;
    }

    goto LABEL_17;
  }

  if (a1 == 8)
  {
    LOBYTE(v15) = 0;
    v10 = sub_238F056F8(a2, &v15);
    goto LABEL_22;
  }

  if (a1 == 9)
  {
    LOBYTE(v15) = 0;
    v10 = sub_238EFD7D0(a2, &v15);
    goto LABEL_22;
  }

  if (a1 != 10)
  {
LABEL_28:
    v9 = 0;
    *a3 = 0x3A68000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_24;
  }

  LOBYTE(v15) = 0;
  v10 = sub_238F000A4(a2, &v15);
LABEL_22:
  *a3 = v10;
  a3[1] = v11;
  if (v10)
  {
LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v15];
LABEL_24:

  return v9;
}

id sub_2392B5828(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 != 2 && a1 != 3)
      {
LABEL_10:
        v15 = 0;
        v7 = sub_2393C5FC8(a2, &v15);
        *a3 = v7;
        a3[1] = v8;
        if (!v7)
        {
          v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15];
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_17:
      LOBYTE(v15) = 0;
      v16 = 0;
      v12 = sub_238F05664(a2, &v15);
      *a3 = v12;
      a3[1] = v13;
      if (!v12 && v16 == 1)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }

    if (a1 <= 1)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (a1 <= 7)
  {
    if (a1 != 5)
    {
      if (a1 != 6)
      {
        v15 = 0;
        v4 = sub_2393C6020(a2, &v15);
        *a3 = v4;
        a3[1] = v6;
        if (!v4)
        {
LABEL_19:
          LODWORD(v5) = v15;
          v9 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      goto LABEL_10;
    }

    goto LABEL_17;
  }

  if (a1 == 8)
  {
    LOBYTE(v15) = 0;
    v10 = sub_238F056F8(a2, &v15);
    goto LABEL_22;
  }

  if (a1 == 9)
  {
    LOBYTE(v15) = 0;
    v10 = sub_238EFD7D0(a2, &v15);
    goto LABEL_22;
  }

  if (a1 != 10)
  {
LABEL_28:
    v9 = 0;
    *a3 = 0x3B02000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_24;
  }

  LOBYTE(v15) = 0;
  v10 = sub_238F000A4(a2, &v15);
LABEL_22:
  *a3 = v10;
  a3[1] = v11;
  if (v10)
  {
LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v15];
LABEL_24:

  return v9;
}