uint64_t sub_1002A53DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, v3);

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v5 getConnectedToWithBoardItemOwner:*(a1 + 32)];
  if (!v6)
  {
    v7 = [v5 getConnectedFromWithBoardItemOwner:*(a1 + 32)];

    if (v7)
    {
      goto LABEL_5;
    }

LABEL_6:
    v8 = 1;
    goto LABEL_7;
  }

LABEL_5:
  v8 = 0;
LABEL_7:

  return v8;
}

uint64_t sub_1002A5EA8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 36);
  v6 = a3;
  if (v5 == 1)
  {
    [a2 alignmentFrameInRoot];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v6 alignmentFrameInRoot];
  }

  else
  {
    [a2 alignmentFrame];
    v8 = v19;
    v10 = v20;
    v12 = v21;
    v14 = v22;
    [v6 alignmentFrame];
  }

  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;

  v27 = sub_10011EC1C(*(a1 + 32), v8, v10, v12, v14);
  v28 = sub_10011EC1C(*(a1 + 32), v23, v24, v25, v26);
  if (v27 < v28)
  {
    return -1;
  }

  else
  {
    return v27 > v28;
  }
}

int64_t sub_1002A6800(id a1, CRLPair *a2, CRLPair *a3)
{
  v4 = a3;
  v5 = [(CRLPair *)a2 second];
  [v5 CGPointValue];
  v7 = v6;
  v8 = [(CRLPair *)v4 second];

  [v8 CGPointValue];
  if (v7 < v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = v7 > v9;
  }

  return v10;
}

BOOL sub_1002A9A28(id a1, UIMenuElement *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);

  v7 = [v6 identifier];
  LOBYTE(v4) = v7 == @"CRLDescriptionMenuIdentifier";

  return v4;
}

void sub_1002AA95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002AA978(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  obj = sub_1003035DC(a2, 1, a3, a4, a5, a6, a7, a8, &OBJC_PROTOCOL____TtP8Freeform18CRLTextInputEditor_);
  if ([obj wantsToReceiveTextInput])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
    *a3 = 1;
  }
}

void sub_1002AACF8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1002AAFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

__n128 sub_1002AB084(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_1002AB094(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v10 = v3;
    v4 = [v3 pureGeometryInRoot];
    [v4 frame];
    v5 = *(*(a1 + 32) + 8);
    v5[6] = v6;
    v5[7] = v7;
    v5[8] = v8;
    v5[9] = v9;

    *(*(*(a1 + 40) + 8) + 24) = 1;
    v3 = v10;
  }
}

void sub_1002AB714(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002AB758(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1002AB79C(id a1, CRLCanvasElementInfo *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = sub_100014370(v3, v2);

  return v4;
}

void sub_1002AC0C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002AC10C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002ACA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void **a26)
{
  a26 = &a23;
  sub_1002AD12C(&a26);

  _Unwind_Resume(a1);
}

void *sub_1002ACB84(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      sub_1002AD274(result, a2);
    }

    sub_1000C1D48();
  }

  return result;
}

void sub_1002ACC20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002AD2CC(va);
  _Unwind_Resume(a1);
}

void *sub_1002ACC34(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      sub_1000C1D48();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    v16[4] = result;
    if (v12)
    {
      sub_1002AD274(result, v12);
    }

    v13 = 40 * v9;
    v16[0] = 0;
    v16[1] = 40 * v9;
    v16[3] = 0;
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    v15 = *(a2 + 1);
    *(v13 + 24) = *(a2 + 3);
    *(v13 + 8) = v15;
    v16[2] = 40 * v9 + 40;
    sub_1002AD1AC(result, v16);
    v8 = v3[1];
    result = sub_1002AD2CC(v16);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v4 = v6;
    v7 = *(a2 + 1);
    *(v4 + 24) = *(a2 + 3);
    *(v4 + 8) = v7;
    v8 = v4 + 40;
  }

  v3[1] = v8;
  return result;
}

void sub_1002ACD5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002AD2CC(va);
  _Unwind_Resume(a1);
}

void sub_1002ACD70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002ACDB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002AD01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  a10 = &a23;
  sub_1002AD12C(&a10);

  _Unwind_Resume(a1);
}

void sub_1002AD12C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 5);
        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1002AD1AC(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *v7 = 0;
      *v8 = v9;
      v10 = *(v7 + 1);
      *(v8 + 24) = *(v7 + 3);
      *(v8 + 8) = v10;
      v7 += 5;
      v8 += 40;
    }

    while (v7 != v4);
    do
    {
      v11 = *v5;
      v5 += 5;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v12 = *a1;
  *a1 = v6;
  *(a1 + 8) = v12;
  a2[1] = v12;
  v13 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v13;
  v14 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

void sub_1002AD274(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1000C1E4C();
}

uint64_t sub_1002AD2CC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1002AD948(id a1)
{
  v1 = objc_alloc_init(NSMutableCharacterSet);
  v2 = +[NSCharacterSet illegalCharacterSet];
  [v1 formUnionWithCharacterSet:v2];

  [v1 addCharactersInRange:{14, 1}];
  [v1 addCharactersInRange:{65533, 1}];
  v3 = +[NSCharacterSet controlCharacterSet];
  [v1 formUnionWithCharacterSet:v3];

  [v1 removeCharactersInRange:{917504, 196608}];
  [v1 removeCharactersInRange:{10, 1}];
  [v1 removeCharactersInRange:{11, 1}];
  [v1 removeCharactersInRange:{8233, 1}];
  [v1 removeCharactersInRange:{8232, 1}];
  [v1 removeCharactersInRange:{13, 1}];
  [v1 removeCharactersInRange:{9, 1}];
  [v1 removeCharactersInRange:{173, 1}];
  [v1 removeCharactersInRange:{8203, 1}];
  [v1 removeCharactersInRange:{65279, 1}];
  [v1 removeCharactersInRange:{8204, 1}];
  [v1 removeCharactersInRange:{8205, 1}];
  [v1 removeCharactersInRange:{12, 1}];
  [v1 removeCharactersInRange:{78896, 16}];
  v4 = [v1 copy];
  v5 = qword_101A34A48;
  qword_101A34A48 = v4;

  [v1 removeCharactersInRange:{1564, 1}];
  [v1 removeCharactersInRange:{8203, 5}];
  [v1 removeCharactersInRange:{8234, 5}];
  [v1 removeCharactersInRange:{8288, 5}];
  [v1 removeCharactersInRange:{8294, 4}];
  v6 = qword_101A34A58;
  qword_101A34A58 = v1;
  v12 = v1;

  v7 = [qword_101A34A48 mutableCopy];
  [v7 addCharactersInRange:{65532, 1}];
  v8 = qword_101A34A50;
  qword_101A34A50 = v7;
  v9 = v7;

  v10 = [qword_101A34A58 mutableCopy];
  [v10 addCharactersInRange:{65532, 1}];
  v11 = qword_101A34A60;
  qword_101A34A60 = v10;
}

void sub_1002ADBBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002ADC00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

unint64_t sub_1002ADC44(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v10 = a2;
  theString = v10;
  v38 = a3;
  v39 = a4;
  CharactersPtr = CFStringGetCharactersPtr(v10);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v10, 0x600u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *buffer = 0u;
  v28 = 0u;
  v40 = 0;
  v41 = 0;
  v37 = CStringPtr;
  if (a3 >= a3 + a4)
  {
    a3 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_31;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 64;
  do
  {
    if (v13 >= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = v13;
    }

    if (v13 < 0 || (v17 = v39, v39 <= v13))
    {
      v19 = 0;
    }

    else
    {
      if (CharactersPtr)
      {
        v18 = &CharactersPtr[v38];
      }

      else
      {
        if (v37)
        {
          v19 = v37[v38 + v13];
          goto LABEL_15;
        }

        if (v41 <= v13 || v14 > v13)
        {
          v22 = v13 - v16;
          v23 = v16 + v12;
          v24 = v15 - v16;
          v25 = v22 + 64;
          if (v22 + 64 >= v39)
          {
            v25 = v39;
          }

          v40 = v22;
          v41 = v25;
          if (v39 >= v24)
          {
            v17 = v24;
          }

          v42.location = v38 + v22;
          v42.length = v17 + v23;
          CFStringGetCharacters(theString, v42, buffer);
          v14 = v40;
        }

        v18 = &buffer[-v14];
      }

      v19 = v18[v13];
    }

LABEL_15:
    v20 = v19 >= a5;
    v21 = v19 - a5;
    if (v20 && v21 < a6)
    {
      goto LABEL_31;
    }

    ++a3;
    ++v13;
    --v12;
    ++v15;
    --a4;
  }

  while (a4);
  a3 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_31:

  return a3;
}

void sub_1002ADE14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002ADE58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002AE3CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002AE410(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002AE454(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002AE498(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002AE7F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002AE838(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002AEBE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002AEC2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002AEF10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002AEF54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002AF1F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002AF234(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002AF514(uint64_t a1)
{
  +[NSDate timeIntervalSinceReferenceDate];
  v2 = *(a1 + 32);
  if (v3 - v2[9] > 0.190000003)
  {
    v4 = [v2 p_delegate];
    [v4 removeCollaboratorHUDController:*(a1 + 32)];

    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = 0;

    v7 = *(a1 + 32);
    v8 = *(v7 + 280);
    *(v7 + 280) = 0;

    v9 = *(a1 + 32);
    v10 = *(v9 + 288);
    *(v9 + 288) = 0;
  }
}

id sub_1002AF5BC(uint64_t a1)
{
  [*(*(a1 + 32) + 280) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 288);

  return [v2 setAlpha:0.0];
}

void sub_1002AFFD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B0014(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B0058(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B009C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B0CDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B0D20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B0D64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B0DA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B0DEC(id a1)
{
  v1 = sub_1004BD804("CRLCollaboratorCursorCat");
  v2 = off_1019EDBE8;
  off_1019EDBE8 = v1;
}

void sub_1002B1648(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B168C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B16D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B1714(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B1758(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B179C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B17E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B1824(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B19D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B1A18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B1BA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B1BEC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B2404(uint64_t a1)
{
  v5 = [*(a1 + 32) p_fontForFollowButtonString];
  [*(a1 + 32) p_sizeForString:*(*(a1 + 32) + 120) font:v5];
  v2 = *(a1 + 32);
  *(v2 + 192) = v3;
  *(v2 + 200) = v4;
}

void sub_1002B25BC(uint64_t a1)
{
  v5 = [*(a1 + 32) p_fontForDisplayString];
  [*(a1 + 32) p_sizeForString:*(*(a1 + 32) + 104) font:v5];
  v2 = *(a1 + 32);
  *(v2 + 160) = v3;
  *(v2 + 168) = v4;
}

void sub_1002B2620(uint64_t a1)
{
  v5 = [*(a1 + 32) p_fontForDisplayString];
  [*(a1 + 32) p_sizeForString:*(*(a1 + 32) + 112) font:v5];
  v2 = *(a1 + 32);
  *(v2 + 176) = v3;
  *(v2 + 184) = v4;
}

void sub_1002B2D94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B2DD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B3020(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B3064(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B32F8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Cu);
}

void sub_1002B39B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B39F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B3DE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B3E28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B3E6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B3EB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B421C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B4260(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B42A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B42E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1002B5080(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _accessibilitySetIsSpeakThisElement:v4];
  }

  return result;
}

void sub_1002B52B4(uint64_t a1)
{
  v1 = [*(a1 + 32) crlaxTarget];
  [v1 setNeedsInputViewsReloaded];
}

id sub_1002B5544(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = CRLTextInputResponderAccessibility;
  return objc_msgSendSuper2(&v3, "forwardInvocation:", v1);
}

BOOL sub_1002B660C(id a1, _TtC8Freeform12CRLBoardItem *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL sub_1002B68E4(id a1, _TtC8Freeform12CRLBoardItem *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id sub_1002B6B00(uint64_t a1)
{
  result = [*(a1 + 32) p_didEnterBackground];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 p_reloadAllPresetCollectionViewControllers];
  }

  return result;
}

id sub_1002B6F90(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 childItems];
  v5 = [v4 containsObject:v3];

  return v5;
}

void sub_1002B6FE8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 details];
  if ([v6 containsProperty:7])
  {
  }

  else
  {
    v7 = [v9 details];
    v8 = [v7 containsProperty:6];

    if (!v8)
    {
      goto LABEL_5;
    }
  }

  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  *a4 = 1;
LABEL_5:
}

void sub_1002B7394(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B73D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B7620(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B7664(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B784C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B7890(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B7A98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B7ADC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B7CB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B7CF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B7E88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B7ECC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B80B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B80F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B8284(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B82C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B8470(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B84B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B864C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B8690(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B899C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002B89C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B8A04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B8A48(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || *(a1 + 80) == 1)
  {
    v3 = objc_opt_class();
    v4 = sub_100013F00(v3, *(a1 + 32));
    [v4 reloadData];
    if (*(a1 + 64) == 2 && *(a1 + 72) == 1)
    {
      v5 = objc_opt_class();
      v6 = sub_100013F00(v5, *(a1 + 40));
      [v6 scrollToTop];
    }

    v7 = [*(a1 + 48) length];
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v9 = [WeakRetained p_announcementTimer];
    v10 = v9;
    if (v7)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1002B8BAC;
      v11[3] = &unk_10183AF10;
      objc_copyWeak(&v12, (a1 + 56));
      [v10 afterDelay:v11 processBlock:1.0];

      objc_destroyWeak(&v12);
    }

    else
    {
      [v9 cancel];
    }
  }
}

void sub_1002B8BAC(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v6 = [v2 localizedStringForKey:@"%lu match(es) found" value:0 table:0];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained p_shapeSearchResultsCollection];
  v5 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v6, [v4 numberOfShapes]);

  UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v5);
}

void sub_1002B8E10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B8E54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B9018(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B905C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B920C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B9250(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B9464(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B94A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B966C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B96B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002B998C(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [v3 p_shouldChangeSelectedShapes];
    v5 = *(a1 + 32);
    if (v4)
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);

      [v5 p_changeSelectedShapesToItemAtIndexPath:v6 forPresetCollectionViewController:v7];
    }

    else
    {
      v8 = [v5 p_delegate];
      [v8 contentLibraryViewControllerWillInsertBoardItems:*(a1 + 32)];

      v9 = [*(a1 + 32) contextWithPresetCollectionViewController:*(a1 + 48)];
      if (![*(a1 + 48) presetCollectionType])
      {
        [*(a1 + 32) p_insertShapeAtIndexPath:*(a1 + 40) context:v9];
      }

      [*(a1 + 32) p_dismissIfNeededWithBlock:0];
    }
  }

  else
  {

    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1002BA228(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BA26C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1002BA2B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002BA2C8(void *a1, void *a2)
{
  v3 = [a2 layoutForInfo:a1[4]];
  v4 = [v3 i_wrapPath];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1[5] + 8) + 40);
  if (v3)
  {
    [v3 transform];
  }

  else
  {
    memset(&v84, 0, sizeof(v84));
  }

  [v7 transformUsingAffineTransform:&v84];
  v8 = a1[6];
  if (v8 <= 0x13 && ((1 << v8) & 0xC0004) != 0)
  {
    v9 = objc_opt_class();
    v10 = sub_100014370(v9, v3);
    [v10 tailPoint];
    v12 = v11;
    v14 = v13;
    [v10 getControlKnobPosition:12];
    v16 = v15;
    v18 = v17;
    [v10 headPoint];
    v20 = v19;
    v22 = v21;
    [v10 pathBounds];
    v24 = v23;
    v25 = sub_10011F31C(v12, v14, v23);
    v27 = v26;
    v28 = sub_10011F31C(v16, v18, v24);
    v30 = v29;
    v31 = sub_10011F31C(v20, v22, v24);
    v33 = v32;
    v34 = +[CRLCanvasKnob defaultSelectionKnobImage];
    [v34 size];
    v36 = v35;

    v37 = sub_10011EC70(v28, v30, v36);
    v39 = v38;
    v78 = v41;
    v80 = v40;
    v42 = sub_10011EC70(v25, v27, v36);
    v74 = v43;
    v76 = v42;
    v45 = v44;
    v47 = v46;
    v48 = sub_10011EC70(v31, v33, v36);
    v50 = v49;
    v82 = v52;
    v83 = v51;
    if (v3)
    {
      [v3 transform];
    }

    else
    {
      memset(&v84, 0, sizeof(v84));
    }

    v85.origin.x = v37;
    v85.origin.y = v39;
    v85.size.height = v78;
    v85.size.width = v80;
    v86 = CGRectApplyAffineTransform(v85, &v84);
    y = v86.origin.y;
    x = v86.origin.x;
    height = v86.size.height;
    width = v86.size.width;
    if (v3)
    {
      [v3 transform];
    }

    else
    {
      memset(&v84, 0, sizeof(v84));
    }

    v87.origin.y = v74;
    v87.origin.x = v76;
    v87.size.width = v45;
    v87.size.height = v47;
    v88 = CGRectApplyAffineTransform(v87, &v84);
    v53 = v88.origin.x;
    v54 = v88.origin.y;
    v75 = v88.size.height;
    v77 = v88.size.width;
    if (v3)
    {
      [v3 transform];
    }

    else
    {
      memset(&v84, 0, sizeof(v84));
    }

    v89.origin.x = v48;
    v89.origin.y = v50;
    v89.size.height = v82;
    v89.size.width = v83;
    v90 = CGRectApplyAffineTransform(v89, &v84);
    v55 = v90.origin.x;
    v56 = v90.origin.y;
    v57 = v90.size.width;
    v58 = v90.size.height;
    v59 = sub_100122154(x, y);
    v61 = v60;
    v62 = sub_100122154(v53, v54);
    v64 = v63;
    v65 = sub_100122154(v55, v56);
    v67 = v66;
    [*(*(a1[5] + 8) + 40) appendBezierPathWithOvalInRect:{v59, v61, width, height}];
    [*(*(a1[5] + 8) + 40) appendBezierPathWithOvalInRect:{v62, v64, v77, v75}];
    [*(*(a1[5] + 8) + 40) appendBezierPathWithOvalInRect:{v65, v67, v57, v58}];
    v68 = [*(*(a1[5] + 8) + 40) arrayOfSubpathsWithEffectivelyEmptySubpathsRemoved:0];
    v69 = [CRLBezierPath uniteBezierPaths:v68];
    v70 = *(a1[5] + 8);
    v71 = *(v70 + 40);
    *(v70 + 40) = v69;
  }
}

id sub_1002BA678(uint64_t a1)
{
  v2 = objc_alloc_init(UIDragPreviewParameters);
  v3 = +[UIColor clearColor];
  [v2 setBackgroundColor:v3];

  v4 = +[UIBezierPath bezierPathWithCGPath:](UIBezierPath, "bezierPathWithCGPath:", [*(*(*(a1 + 32) + 8) + 40) CGPath]);
  [v2 setVisiblePath:v4];

  v5 = [UIImageView alloc];
  v6 = [*(*(*(a1 + 40) + 8) + 40) image];
  v7 = [v5 initWithImage:v6];

  v8 = [[UIDragPreview alloc] initWithView:v7 parameters:v2];

  return v8;
}

void sub_1002BB0D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BB114(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BB3A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BB3EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BC150(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BC194(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BC1D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BC21C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

NSUInteger sub_1002BC848(NSRange a1, NSRange a2, int a3)
{
  length = a2.length;
  location = a2.location;
  v6 = a1.length;
  v7 = a1.location;
  v8 = NSIntersectionRange(a1, a2);
  if (length)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v7 | location)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  if (v8 == 0uLL)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8.location;
  }

  if (location + length == v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v7 + v6 == location)
  {
    v14 = location;
  }

  else
  {
    v14 = v13;
  }

  if (a3)
  {
    return v14;
  }

  else
  {
    return v12;
  }
}

NSUInteger sub_1002BC8E0(NSRange a1, NSRange range1)
{
  if (a1.location != range1.location + range1.length)
  {
    if (a1.location + a1.length == range1.location)
    {
      a1.location = range1.location;
    }

    else
    {
      a1.location = NSIntersectionRange(a1, range1).location;
    }
  }

  return a1.location;
}

uint64_t sub_1002BC938(uint64_t result, _WORD *a2, _WORD *a3, _DWORD *a4)
{
  if (a2)
  {
    *a2 = HIWORD(result);
  }

  if (a3)
  {
    *a3 = WORD2(result);
  }

  if (a4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1002BC9A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

CGFloat sub_1002BC9AC@<D0>(uint64_t *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v10 = a2;
  v11 = a3;
  v12 = (CGRectGetMaxX(*&a2) - a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  result = CGRectGetMaxY(v14) - a3;
  *a1 = v10;
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = result;
  return result;
}

CGFloat sub_1002BCA3C@<D0>(uint64_t *a1@<X8>, double a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a6@<D4>)
{
  v7 = sub_10011FFD8(a2, a3, a4, a5, a6);

  return sub_1002BC9AC(a1, v7, v8, v9, v10);
}

BOOL sub_1002BCA9C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 <= *a1)
  {
    return 0;
  }

  if (a2 >= a1[2] + *a1)
  {
    return 0;
  }

  v3 = a1[1];
  return a3 > v3 && a3 < a1[3] + v3;
}

void *sub_1002BCAE0@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = result[1] + a3;
  v5 = result[2] - 2 * a2;
  v6 = result[3] - 2 * a3;
  *a4 = *result + a2;
  a4[1] = v4;
  a4[2] = v5;
  a4[3] = v6;
  return result;
}

uint64_t sub_1002BCB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 - a3;
  if (a1 - a3 < 0)
  {
    v4 = a3 - a1;
  }

  v5 = a2 - a4;
  if (a2 - a4 < 0)
  {
    v5 = a4 - a2;
  }

  return v4 + v5;
}

void sub_1002BCED8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BCF1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BCF60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BCFA4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BCFE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BD02C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BD6C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BD708(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BE7B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BE7F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BEA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002BEA8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BEAD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BEB14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained p_runStrokeUpdateIfNeeded];
    WeakRetained = v2;
  }
}

void sub_1002BEC8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BECD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BEE50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BEE94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BFE50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BFE94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BFED8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002BFF1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C00AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C00F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C0620(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C0664(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C09F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C0A38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C1040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id location)
{
  objc_destroyWeak((v57 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002C1064(id a1)
{
  v1 = sub_1004BD804("CRLPKDrawingProviderCat");
  v2 = off_1019EF208;
  off_1019EF208 = v1;
}

void sub_1002C10A4(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v6 = sub_100014370(v4, v5);

  if (v6 && ([v6 isTreatedAsFillForFreehandDrawing] & 1) == 0)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v6 pencilKitStrokes];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v21 + 1) + 8 * v11) renderBounds];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v9);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = [v6 pencilKitStrokesInRootSpace];
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v17 + 1) + 8 * v16) renderBounds];
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v14);
    }
  }
}

void sub_1002C127C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [NSNumber numberWithUnsignedInteger:?];
  v8 = [v2 combineUUIDWithUUID:v3 mixValue:{objc_msgSend(v4, "unsignedIntValue") + 500}];

  os_unfair_lock_lock((*(a1 + 48) + 24));
  v5 = *(*(a1 + 48) + 168);
  v6 = [*(a1 + 56) id];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    [*(*(a1 + 48) + 184) setObject:0 forKeyedSubscript:v7];
    [*(*(a1 + 48) + 192) setObject:0 forKeyedSubscript:v7];
    [*(*(a1 + 48) + 200) setObject:0 forKeyedSubscript:v7];
  }

  [*(*(a1 + 48) + 184) setObject:*(a1 + 64) forKeyedSubscript:v8];
  [*(*(a1 + 48) + 192) setObject:*(a1 + 56) forKeyedSubscript:v8];
  os_unfair_lock_unlock((*(a1 + 48) + 24));
}

void sub_1002C13A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(atomic_uchar *)WeakRetained p_updatePKStrokesForShapeItemsIfNeeded:*(a1 + 32) boardIdentifier:*(a1 + 40)];
    if ((atomic_exchange(v3 + 65, 1u) & 1) == 0)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002C1460;
      block[3] = &unk_10183AB38;
      v5 = v3;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

id *sub_1002C1460(id *result)
{
  if (atomic_exchange(result[4] + 65, 0))
  {
    return [result[4] p_updateObservers];
  }

  return result;
}

void sub_1002C1574(id a1)
{
  v1 = sub_1004BD804("CRLPKDrawingProviderCat");
  v2 = off_1019EF208;
  off_1019EF208 = v1;
}

void sub_1002C15B4(id a1)
{
  v1 = sub_1004BD804("CRLPKDrawingProviderCat");
  v2 = off_1019EF208;
  off_1019EF208 = v1;
}

void sub_1002C17A0(id a1)
{
  v1 = sub_1004BD804("CRLPKDrawingProviderCat");
  v2 = off_1019EF208;
  off_1019EF208 = v1;
}

void sub_1002C1F20(id a1)
{
  v1 = sub_1004BD804("CRLPKDrawingProviderCat");
  v2 = off_1019EF208;
  off_1019EF208 = v1;
}

void sub_1002C1F60(id a1)
{
  v1 = sub_1004BD804("CRLPKDrawingProviderCat");
  v2 = off_1019EF208;
  off_1019EF208 = v1;
}

void sub_1002C1FA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C1FE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C2B54(void *a1)
{
  if ((*(a1[4] + 8) & 1) == 0)
  {
    v3 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained((a1[4] + 16));
    v5 = [WeakRetained board];
    v6 = [v5 getBoardItemForUUID:a1[5]];
    v14 = sub_100013F00(v3, v6);

    v7 = v14;
    if (v14)
    {
      v8 = objc_opt_class();
      v9 = objc_loadWeakRetained((a1[4] + 16));
      v10 = [v9 layoutForInfo:v14];
      v11 = sub_100013F00(v8, v10);

      if (v11)
      {
        v12 = [v11 mathRecognitionHandler];
        v13 = [v12 mathViewController];
        [v13 registerRecentlyCreatedLocalStroke:a1[6]];
      }

      v7 = v14;
    }
  }
}

void sub_1002C38BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C3900(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C3E68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C3EAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C41A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C41EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C476C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C47B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C47F4(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1002C4838(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1002C4AE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C4B2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

BOOL sub_1002C4E08(uint64_t a1, void *a2)
{
  v3 = [a2 observerIgnoringCount];
  v4 = v3 == *(a1 + 32);

  return v4;
}

id sub_1002C5200(uint64_t a1)
{
  v1 = 40;
  if (*(a1 + 56))
  {
    v1 = 48;
  }

  return [*(*(a1 + 32) + v1) setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

void sub_1002C5958(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1002C5B5CLL);
}

void sub_1002C5960(void *a1, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(a1);
      JUMPOUT(0x1002C5878);
    }

    v3 = objc_begin_catch(a1);
    v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134A814();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(v2);
      sub_10134A83C(v6, &STACK[0x230], v4, v5);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134A8D0();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = +[CRLAssertionHandler packedBacktraceString];
      sub_101318C3C(v8, &STACK[0x210], v4, v7);
    }

    v9 = [NSString stringWithUTF8String:"[CRLChangeNotifier p_processChanges:preprocessing:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLChangeNotifier.m"];
    v11 = NSStringFromSelector(v2);
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:310 isFatal:0 description:"Exception thrown during %@; some observers may not have been notified."];

    objc_exception_rethrow();
  }

  JUMPOUT(0x1002C5B5CLL);
}

void sub_1002C5B20(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1002C59C8);
  }

  JUMPOUT(0x1002C5B5CLL);
}

void sub_1002C5B64(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  v3 = *(v1 + 32);
  if (v3 < 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134A8F8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134A90C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134A9A8();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v15);
    }

    v27 = *(*v2 + 32);
    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d _currentlyNotifyingCount managed to get negative! %zi", v16, v17, v18, v19, v20, v21, v22, "[CRLChangeNotifier p_processChanges:preprocessing:]_block_invoke");
    v23 = [NSString stringWithUTF8String:"[CRLChangeNotifier p_processChanges:preprocessing:]_block_invoke"];
    v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLChangeNotifier.m"];
    [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:238 isFatal:1 description:"_currentlyNotifyingCount managed to get negative! %zi", *(*v2 + 32), "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLChangeNotifier.m", 238, v27];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v25, v26);
    abort();
  }

  *(v1 + 32) = v3 + 1;
  v4 = *v2;
  if (*(*v2 + 32) == 1)
  {
    if (*(v4 + 48))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10134A9D0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10134A9E4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10134AA84();
      }

      v5 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v5);
      }

      v6 = [NSString stringWithUTF8String:"[CRLChangeNotifier p_processChanges:preprocessing:]_block_invoke"];
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLChangeNotifier.m"];
      [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:242 isFatal:0 description:"expected nil value for '%{public}s'", "_classObserversToCheckForRemovalAfterNotifications"];

      v4 = *v2;
    }

    if (*(v4 + 40))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10134AAAC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10134AAD4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10134AB74();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v8);
      }

      v9 = [NSString stringWithUTF8String:"[CRLChangeNotifier p_processChanges:preprocessing:]_block_invoke"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLChangeNotifier.m"];
      [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:243 isFatal:0 description:"expected nil value for '%{public}s'", "_objectObserversToCheckForRemovalAfterNotifications"];
    }

    v11 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:517 capacity:0];
    v12 = *(*v2 + 48);
    *(*v2 + 48) = v11;

    v13 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:517 capacity:0];
    v14 = *(*v2 + 40);
    *(*v2 + 40) = v13;
  }
}

void sub_1002C5F48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C5F8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C5FD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C6014(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C6058(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C609C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C60E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C6124(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void *sub_1002C6168(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  v3 = *(v1 + 32);
  if (v3 <= 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134AB9C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134ABB0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134AC4C();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v9);
    }

    v21 = *(*v2 + 4);
    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d _currentlyNotifyingCount should be > 0! %zi", v10, v11, v12, v13, v14, v15, v16, "[CRLChangeNotifier p_processChanges:preprocessing:]_block_invoke");
    v17 = [NSString stringWithUTF8String:"[CRLChangeNotifier p_processChanges:preprocessing:]_block_invoke"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLChangeNotifier.m"];
    [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:321 isFatal:1 description:"_currentlyNotifyingCount should be > 0! %zi", *(*v2 + 4), "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLChangeNotifier.m", 321, v21];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v19, v20);
    abort();
  }

  *(v1 + 32) = v3 - 1;
  result = *v2;
  if (!*(*v2 + 4))
  {
    [result p_removeZeroCountObserversInMap:result[6] fromCountedObserversByChangeSourceMap:result[2]];
    v5 = *(*v2 + 6);
    *(*v2 + 6) = 0;

    [*v2 p_removeZeroCountObserversInMap:*(*v2 + 5) fromCountedObserversByChangeSourceMap:*(*v2 + 1)];
    v6 = *(*v2 + 5);
    *(*v2 + 5) = 0;

    [*v2 p_trimChangeSourceToCountedObserversMap:*(*v2 + 2)];
    v7 = *v2;
    v8 = *(*v2 + 1);

    return [v7 p_trimChangeSourceToCountedObserversMap:v8];
  }

  return result;
}

void sub_1002C6364(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C63A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

BOOL sub_1002C65EC(id a1, CRLCountedObserver *a2, NSDictionary *a3)
{
  v3 = [(CRLCountedObserver *)a2 observerIgnoringCount];
  v4 = v3 != 0;

  return v4;
}

void sub_1002C687C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x2Cu);
}

void sub_1002C7490(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C74D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C7518(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C755C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1002C75A0(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_1000C1D48();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = sub_1002C9534(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

void sub_1002C7648(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C768C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C76D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C7714(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C86EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C8730(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C8774(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C87B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C87FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C8840(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C8884(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C88C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C890C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C8950(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C8994(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002C89D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1002C9534(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_1002C95F0(&v2, a2);
    }

    sub_1000C1D48();
  }

  return result;
}

void sub_1002C95D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C95F0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_1000E7D14(a1, v2);
  }

  sub_1000C1D48();
}

void sub_1002C9634(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  sub_1002C96D8(&v18, &v16, &v14, &v13);
}

void sub_1002C96D8(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  sub_1002C9768(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void sub_1002C9768(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void sub_1002CD370(id a1, CRLPathEditableRep *a2)
{
  v2 = [(CRLPathEditableRep *)a2 editablePathSource];
  [v2 sharpenAllNodes];
}

BOOL sub_1002CD3B4(id a1, CRLPathEditableRep *a2)
{
  v2 = [(CRLPathEditableRep *)a2 editablePathSource];
  v3 = [v2 hasSelectedNode];

  return v3;
}

void sub_1002CD4C0(id a1, CRLPathEditableRep *a2)
{
  v2 = [(CRLPathEditableRep *)a2 editablePathSource];
  [v2 smoothAllNodes];
}

BOOL sub_1002CD504(id a1, CRLPathEditableRep *a2)
{
  v2 = [(CRLPathEditableRep *)a2 editablePathSource];
  v3 = [v2 hasSelectedNode];

  return v3;
}

void sub_1002CD9C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002CDA04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002CE1BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, v3);

  v6 = [v5 path];
  v7 = [v6 copy];

  v8 = [v5 pureGeometry];
  v9 = v8;
  if (v8)
  {
    [v8 transform];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  [v7 transformUsingAffineTransform:v10];

  [*(a1 + 32) addObject:v7];
}

void sub_1002CE288(uint64_t a1)
{
  v2 = [*(a1 + 32) selectionModelTranslator];
  v3 = [NSSet setWithObject:*(a1 + 40)];
  v6 = [v2 selectionPathForInfos:v3];

  v4 = [*(a1 + 32) layerHost];
  v5 = [v4 miniFormatterPresenter];
  [v5 presentMiniFormatterForSelectionPath:v6];
}

void sub_1002CEA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002CEA90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002CEAA8(uint64_t a1, void *a2)
{
  v6 = [a2 geometry];
  [v6 size];
  v3 = [CRLBezierPath bezierPathWithRect:sub_10011ECB4()];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

__n128 sub_1002CEB24(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = [a2 pureGeometry];
  v5 = v4;
  if (v4)
  {
    [v4 transform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  v6 = v3[3];
  *&v11.a = v3[2];
  *&v11.c = v6;
  *&v11.tx = v3[4];
  CGAffineTransformConcat(&v13, &v11, &t2);
  v7 = *(*(a1 + 32) + 8);
  v9 = *&v13.c;
  v8 = *&v13.tx;
  v7[2] = *&v13.a;
  v7[3] = v9;
  v7[4] = v8;

  return result;
}

__n128 sub_1002CEBC8(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  v5 = [v4 pureGeometry];
  v6 = v5;
  if (v5)
  {
    [v5 transform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  v7 = v3[3];
  *&t1.a = v3[2];
  *&t1.c = v7;
  *&t1.tx = v3[4];
  CGAffineTransformConcat(&v21, &t1, &t2);
  v8 = *(*(a1 + 32) + 8);
  v10 = *&v21.c;
  v9 = *&v21.tx;
  v8[2] = *&v21.a;
  v8[3] = v10;
  v8[4] = v9;

  v11 = *(*(a1 + 40) + 8);
  v12 = [v4 pureGeometry];

  if (v12)
  {
    [v12 transform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  v13 = v11[3];
  *&t1.a = v11[2];
  *&t1.c = v13;
  *&t1.tx = v11[4];
  CGAffineTransformConcat(&v18, &t1, &t2);
  v14 = *(*(a1 + 40) + 8);
  v16 = *&v18.c;
  v15 = *&v18.tx;
  v14[2] = *&v18.a;
  v14[3] = v16;
  v14[4] = v15;

  return result;
}

void sub_1002CEF24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 pureTransformInRoot];
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
  }

  CGAffineTransformInvert(&v17, &v16);
  v15 = vaddq_f64(*&v17.tx, vmlaq_n_f64(vmulq_n_f64(*&v17.c, *(a1 + 56)), *&v17.a, *(a1 + 48)));
  v5 = [v4 pureGeometry];
  [v5 size];
  v6 = sub_10011ECB4();
  v9 = sub_100121720(v15.f64[0], v15.f64[1], v6, v7, v8);
  v11 = v10;

  v12 = *(a1 + 64);
  v13 = -[CRLConnectionLineMagnet initWithType:normalizedPosition:]([CRLConnectionLineMagnet alloc], "initWithType:normalizedPosition:", [*(a1 + 40) magnetType], v9, v11);
  v14 = *(a1 + 32);
  if (v12 == 1)
  {
    [v14 setHeadMagnet:v13];
  }

  else
  {
    [v14 setTailMagnet:v13];
  }
}

void sub_1002CF858(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = sub_100013F00(v4, v3);

  if (v5)
  {
    v6 = *(a1 + 32);
    [v5 transformInRoot];
    [v6 transformUsingAffineTransform:&v7];
  }
}

BOOL sub_1002CFB78(id a1, id a2, BOOL *a3)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL sub_1002CFC2C(id a1, id a2, BOOL *a3)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, v3);

  LOBYTE(v3) = [v5 pathIsOpen];
  return v3;
}

void sub_1002D1660(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D16A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D16E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D172C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D1770(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D17B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D19A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1002D19CC(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1[7] == 6)
  {
    [v3 findNewEdgeMagnetCanvasPositionForConnectionLine:a1[4] forLineEnd:a1[8] withCanvasPosition:{*(*(a1[5] + 8) + 32), *(*(a1[5] + 8) + 40)}];
    v5 = *(a1[5] + 8);
    *(v5 + 32) = v6;
    *(v5 + 40) = v7;
  }

  v8 = *(a1[5] + 8);
  if (v4)
  {
    [v4 pureTransformInRoot];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  CGAffineTransformInvert(&v18, &v17);
  v16 = vaddq_f64(*&v18.tx, vmlaq_n_f64(vmulq_n_f64(*&v18.c, *(v8 + 40)), *&v18.a, *(v8 + 32)));
  v9 = [v4 pureGeometry];
  [v9 size];
  v10 = sub_10011ECB4();
  v13 = sub_100121720(v16.f64[0], v16.f64[1], v10, v11, v12);
  v14 = *(a1[6] + 8);
  *(v14 + 32) = v13;
  *(v14 + 40) = v15;
}

void sub_1002D21F4(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1002D244C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D2490(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D2718(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D275C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1002D2A30()
{
  if (qword_101A34A90 != -1)
  {
    sub_10134B6F4();
  }

  v1 = qword_101A34A88;

  return v1;
}

void sub_1002D2A74(id a1)
{
  v1 = [NSString stringWithUTF8String:"com.apple.freeform"];
  v2 = qword_101A34A88;
  qword_101A34A88 = v1;

  if (([qword_101A34A88 hasPrefix:@"com.apple."] & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134B708();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134B71C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134B7C4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v3);
    }

    v15 = qword_101A34A88;
    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d App bundle identifier (%@) has unexpected prefix.", v4, v5, v6, v7, v8, v9, v10, "NSString *CRLAppBundleIdentifier()_block_invoke");
    v11 = [NSString stringWithUTF8String:"NSString *CRLAppBundleIdentifier()_block_invoke"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBundleUtilities.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:34 isFatal:1 description:"App bundle identifier (%@) has unexpected prefix.", qword_101A34A88, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBundleUtilities.m", 34, v15];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v13, v14);
    abort();
  }
}

void sub_1002D2C04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D2C48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D2C8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D2CD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

BOOL sub_1002D2F68(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 encodedLength];
  if (v5 == [v4 encodedLength])
  {
    v6 = [v3 decodedLength];
    v7 = v6 == [v4 decodedLength];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1002D36D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D3714(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D3988(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D39CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D47A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D47E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D5788(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D57CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D5810(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D5854(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D69C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D6A0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D6A50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D6A94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D78E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D7924(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D8360(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D83A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D89A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D89EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D8BE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D8C2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002D9FE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002DA024(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002DADFC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002DAE40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002DAE84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002DAEC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002DAF0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002DAF50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

const __CFDictionary *sub_1002DB7BC(uint64_t a1, CTRunRef run)
{
  result = CTRunGetAttributes(run);
  if (result)
  {
    result = CFDictionaryGetValue(result, kCTFontAttributeName);
    if (result)
    {
      result = CTFontGetSymbolicTraits(result);
      v4 = *(*(a1 + 32) + 8);
      v5 = *(v4 + 24);
      if (v5)
      {
        if (v5 == result)
        {
          return result;
        }

        result = ((v5 | result) & 0xFFFFFFF);
      }

      *(v4 + 24) = result;
    }
  }

  return result;
}

void sub_1002DBF50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002DBF94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002DC160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002DD410(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002DD454(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002DE570(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002DE5B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002DEADC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002DEB20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002DFADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50)
{
  sub_1002DFFD8(&a50);

  _Unwind_Resume(a1);
}

void sub_1002DFBC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002DFC0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002DFD78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v11 = v6;
  v8 = [v6 type];
  v9 = [v11 stroke];
  v10 = [v11 fill];
  [v11 rect];
  (*(v7 + 16))(v7, v8, v9, v10, a4);
}

void sub_1002E04AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E04F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

BOOL sub_1002E0534(id a1, UIView *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL sub_1002E0580(id a1, UIView *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

void sub_1002E05D0(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (*(a1 + 72) <= a3)
  {
    v6 = objc_alloc_init(CRLCanvasSubview);
    v7 = [*(*(a1 + 40) + 8) layerDelegate];
    [(CRLCanvasSubview *)v6 setLayerDelegate:v7];
  }

  else
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  }

  [(CRLCanvasSubview *)v6 setFrame:*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)];
  [(CRLCanvasSubview *)v6 setBounds:*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)];
  v8 = [(CRLCanvasSubview *)v6 layer];
  [*(a1 + 48) addObject:v6];
  v15 = sub_1003035DC(v5, 1, v9, v10, v11, v12, v13, v14, &OBJC_PROTOCOL___CRLInteractiveCanvasRepLayerPile);
  v22 = v15;
  if (v15)
  {
    v23 = [v15 contentLayers];
    if (!v23)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10134C744();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10134C758();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10134C808();
      }

      v24 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v24);
      }

      v25 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentSubviewUpdater p_mainThreadUpdateSubviewsFromRepContentPiles:]_block_invoke"];
      v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentSubviewUpdater.m"];
      [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:150 isFatal:0 description:"invalid nil value for '%{public}s'", "contentLayers"];
    }

    v27 = [(CRLCanvasSubview *)v6 subviews];
    v28 = [v27 count];

    if (v28)
    {
      [(CRLCanvasSubview *)v6 setSubviews:&__NSArray0__struct];
    }

    v29 = [v8 sublayers];
    v30 = [v23 isEqualToArray:v29];

    if ((v30 & 1) == 0)
    {
      [v8 setSublayers:v23];
    }
  }

  else
  {
    v31 = sub_1003035DC(v5, 1, v16, v17, v18, v19, v20, v21, &OBJC_PROTOCOL___CRLInteractiveCanvasRepContentPlatformViewPile);
    if (v31)
    {
      v23 = v31;
      v32 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:v6];
      v33 = objc_opt_class();
      v34 = [(CRLCanvasSubview *)v6 layerDelegate];
      v49 = v32;
      v35 = [v33 p_contentPlatformViewForRepContentPlatformViewPile:v23 layerDelegate:v34 reusableMaskView:&v49];
      v36 = v49;

      if (v36)
      {
        [*(a1 + 56) setObject:v36 forKeyedSubscript:v6];
      }

      if (v35)
      {
        v50 = v35;
        v37 = [NSArray arrayWithObjects:&v50 count:1];
      }

      else
      {
        v37 = &__NSArray0__struct;
      }

      v47 = v36;
      v48 = v35;
      v40 = [v8 sublayers];
      if ([v40 count])
      {
        v41 = [(CRLCanvasSubview *)v6 subviews];
        v42 = [v41 count];

        if (!v42)
        {
          [v8 setSublayers:&__NSArray0__struct];
        }
      }

      else
      {
      }

      v43 = [(CRLCanvasSubview *)v6 subviews];
      v44 = [v37 isEqualToArray:v43];

      if ((v44 & 1) == 0)
      {
        [(CRLCanvasSubview *)v6 setSubviews:v37];
      }
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10134C830();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10134C844();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10134C8D8();
      }

      v38 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v38);
      }

      v23 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentSubviewUpdater p_mainThreadUpdateSubviewsFromRepContentPiles:]_block_invoke"];
      v39 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentSubviewUpdater.m"];
      [CRLAssertionHandler handleFailureInFunction:v23 file:v39 lineNumber:190 isFatal:0 description:"Rep content pile did not implement either CRLInteractiveCanvasRepLayerPile or CRLInteractiveCanvasRepContentPlatformViewPile: %@", v5];
    }
  }

  v45 = *(a1 + 64);
  v46 = [[CRLInteractiveCanvasRepContentSubviewReuser alloc] initWithSubview:v6 originalRepContentPile:v5];
  [v45 addObject:v46];
}

void sub_1002E0B2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E0B70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E0BB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E0BF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E19FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E1A40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E1A84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E1AC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E1B0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E1B50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E1B94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E1BD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E1C1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E1C60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E1CA4(uint64_t a1)
{
  if (*(*(a1 + 32) + 24) == *(a1 + 48))
  {
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v1 = *(a1 + 40);
    v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v7;
      do
      {
        v5 = 0;
        do
        {
          if (*v7 != v4)
          {
            objc_enumerationMutation(v1);
          }

          [*(*(&v6 + 1) + 8 * v5) removeRepContentPlatformViews];
          v5 = v5 + 1;
        }

        while (v3 != v5);
        v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      }

      while (v3);
    }
  }
}

void sub_1002E1FF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E2038(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E22C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E2304(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E24CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E2510(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E275C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E27A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E2A2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _crlaxStoredLabel];
  [v1 _crlaxSetStoredLabel:v2];
}

void sub_1002E34F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E3538(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E357C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 wantsAlternateContextMenuBehaviorAtPoint:{*(a1 + 40), *(a1 + 48)}])
  {
    *a3 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_1002E3B90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E3BD4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E42B8(id a1)
{
  v1 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10134D1AC();
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10134D1C0(v1, v2);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10134D26C();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EE10(v3, v1);
  }

  v4 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLCanvasAdditions) boundsIncludingCRLStroke:]_block_invoke"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBezierPath_CRLCanvasAdditions.m"];
}

void sub_1002E43D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E4418(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E4E30(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E4E74(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1002E54B0(uint64_t a1, void *a2, _BYTE *a3, _BYTE *a4)
{
  v6 = a1;
  v14 = 0;
  v13 = 1;
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  v9 = a2;
  LODWORD(v7) = v8(v7, v9, &v14, &v13);
  v12 = 0;
  v11 = 1;
  LODWORD(v6) = (*(*(v6 + 40) + 16))();

  *a3 = (v14 | v12) & 1;
  *a4 = v13 & v11;
  return v7 & v6;
}

void sub_1002E6E9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E6EE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E6F24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E6F68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E6FAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E6FF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E7034(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E7078(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E70BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E7100(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E7144(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E7188(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E71CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E7210(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E7254(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E7298(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E85B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E85FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E8640(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E8684(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E86C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E870C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002E8FE8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v6 = 0;
    v4 = [v3 debugDataAndReturnError:&v6];
    v5 = v6;
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1002E9748(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 handwritingRecognitionStatusHelperDidUpdateRecognitionStatusStrings];
}

void sub_1002E99C4(id *a1)
{
  v24 = +[NSMutableDictionary dictionary];
  v2 = [a1[4] consolidatedDrawing];

  if (v2)
  {
    v3 = [a1[4] consolidatedDrawing];
    v4 = [v3 visualizationManager];
    v5 = [v4 valueForRecognitionStatusKey:@"CHStatusKeyStatus"];
    if ([v5 isEqualToString:@"Finished"])
    {
    }

    else
    {
      v6 = [a1[4] refreshCount];

      if (v6 < 60)
      {
        v7 = 0;
        goto LABEL_8;
      }
    }

    v8 = a1[4];
    v9 = [v8 consolidatedDrawing];
    v10 = [v8 p_recognitionStatusStringsForDrawing:v9];
    [v24 setObject:v10 forKeyedSubscript:@"CRLPKDrawingCombinedStatus"];
  }

  v7 = 1;
LABEL_8:
  v22 = v7;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = a1[5];
  v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = [v15 visualizationManager];
        v17 = [v16 valueForRecognitionStatusKey:@"CHStatusKeyStatus"];
        if ([v17 isEqualToString:@"Finished"])
        {
        }

        else
        {
          v18 = [a1[4] refreshCount];

          if (v18 < 60)
          {
            v22 = 0;
            continue;
          }
        }

        v19 = [a1[4] p_idStringForDrawing:v15];
        v20 = [a1[4] p_recognitionStatusStringsForDrawing:v15];
        [v24 setObject:v20 forKeyedSubscript:v19];
      }

      v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v12);
  }

  if ((v22 & 1) == 0 && [a1[4] refreshCount] <= 59)
  {
    v21 = dispatch_time(0, 500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002E9D7C;
    block[3] = &unk_10183FC10;
    block[4] = a1[4];
    v29 = a1[6];
    dispatch_after(v21, &_dispatch_main_q, block);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1002E9DC8;
  v25[3] = &unk_101853A08;
  v25[4] = a1[4];
  v25[5] = v24;
  v26 = a1[6];
  v27 = v22 & 1;
  dispatch_sync(&_dispatch_main_q, v25);
}

id sub_1002E9D7C(uint64_t a1)
{
  [*(a1 + 32) setRefreshCount:{objc_msgSend(*(a1 + 32), "refreshCount") + 1}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 refreshWithHandler:v3];
}

uint64_t sub_1002E9DC8(uint64_t a1)
{
  [*(a1 + 32) setRecognitionStatusStrings:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_1002EA120(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EA164(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EB740(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EB784(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EB924(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EB968(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002ECED4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002ECF18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002ECF5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002ECFA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002ED0E0(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_101A34AC0;
  qword_101A34AC0 = v1;
}

void sub_1002ED238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CRLWPFontMetricsCache;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1002ED710(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002ED754(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002ED798(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002ED7DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EE77C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EE7C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EE804(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EE848(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EE88C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EE8D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EE914(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EE958(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EE99C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EE9E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EEA24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EEA68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EEAAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EEAF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EEB34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EEB78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EEBBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EEC00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EEC44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EEC88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EECCC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EED10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void *sub_1002EF038(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void *sub_1002EF09C(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1002EF18C(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_1000D9518(a1, v4);
  operator delete(v4);
  return 1;
}

void sub_1002EF2A0(id a1)
{
  v1 = [(CRLInsertionContext *)[CRLNonInteractiveInsertionContext alloc] initSubclass];
  v2 = qword_101A34AC8;
  qword_101A34AC8 = v1;
}

void sub_1002EF324(id a1)
{
  v1 = [(CRLInsertionContext *)[CRLNonInteractiveFloatingInsertionContext alloc] initSubclass];
  v2 = qword_101A34AD8;
  qword_101A34AD8 = v1;
}

void sub_1002EF3A8(id a1)
{
  v1 = [(CRLInsertionContext *)[CRLIosDragFloatingInsertionContext alloc] initSubclass];
  v2 = qword_101A34AE8;
  qword_101A34AE8 = v1;
}

void sub_1002EF42C(id a1)
{
  v1 = [(CRLInsertionContext *)[CRLNonInteractiveNonEditingEndingFloatingInsertionContext alloc] initSubclass];
  v2 = qword_101A34AF8;
  qword_101A34AF8 = v1;
}

void sub_1002EF4B0(id a1)
{
  v1 = [(CRLInsertionContext *)[CRLNonInteractiveInlineInsertionContext alloc] initSubclass];
  v2 = qword_101A34B08;
  qword_101A34B08 = v1;
}

void sub_1002EF750(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002EF794(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002F05E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::~UsdZipFileWriter(&a38);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002F070C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002F0750(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

_BYTE *sub_1002F0794(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1002F7164();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_1002F084C(id a1)
{
  v1 = sub_1004BD804("CRLThreeDimensionalObjectsCat");
  v2 = off_1019EDC28;
  off_1019EDC28 = v1;
}

void sub_1002F0890(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002F08D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002F0918(id a1)
{
  v1 = sub_1004BD804("CRLThreeDimensionalObjectsCat");
  v2 = off_1019EDC28;
  off_1019EDC28 = v1;
}

void sub_1002F095C(id a1)
{
  v1 = sub_1004BD804("CRLThreeDimensionalObjectsCat");
  v2 = off_1019EDC28;
  off_1019EDC28 = v1;
}

void sub_1002F09A0(id a1)
{
  v1 = sub_1004BD804("CRLThreeDimensionalObjectsCat");
  v2 = off_1019EDC28;
  off_1019EDC28 = v1;
}

void sub_1002F09E4(id a1)
{
  v1 = sub_1004BD804("CRLThreeDimensionalObjectsCat");
  v2 = off_1019EDC28;
  off_1019EDC28 = v1;
}

void sub_1002F0A28(id a1)
{
  v1 = sub_1004BD804("CRLSurfaceCat");
  v2 = off_1019EDC88;
  off_1019EDC88 = v1;
}

void sub_1002F0C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_1002F717C(&a13);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002F0D04(id a1)
{
  v1 = sub_1004BD804("CRLThreeDimensionalObjectsCat");
  v2 = off_1019EDC28;
  off_1019EDC28 = v1;
}

void sub_1002F0D48(id a1)
{
  v1 = sub_1004BD804("CRLThreeDimensionalObjectsCat");
  v2 = off_1019EDC28;
  off_1019EDC28 = v1;
}

uint64_t sub_1002F0D8C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v2 = j__strrchr("/AppleInternal/Library/BuildRoots/4~B_w5ugB0cWO2QulcgZa4ZXN9Wn2ujMQpX1I70JA/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", 47);
    sub_1002F6DB8("/AppleInternal/Library/BuildRoots/4~B_w5ugB0cWO2QulcgZa4ZXN9Wn2ujMQpX1I70JA/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", v2, 0x2Fu);
    v3 = pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
    return sub_1002F0E04(v3);
  }

  return result;
}

uint64_t sub_1002F0E04(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (!v3)
  {
    return sub_10134F418(v7);
  }

  v4 = *(sub_1002F71AC(v2) + 14);
  result = *a1;
  if (v4 != 1 || result == 0)
  {
    return sub_10134F418(v7);
  }

  return result;
}

void sub_1002F10F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a27)
{
  sub_1002F717C(&a27);

  _Unwind_Resume(a1);
}

void sub_1002F2970(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1000C8ECC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002F32D8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return sub_1002F6B18(a1);
}

uint64_t sub_1002F3318(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_1002F6B18(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_1002F6E8C(v3);
  }

  return a1;
}

uint64_t sub_1002F3374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_1002F7410(a1, a2, a2 + 4 * a3);
  return a1;
}

uint64_t sub_1002F33C4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_1002F6B18(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_1002F6E8C(v3);
  }

  return a1;
}

uint64_t sub_1002F3420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_1002F785C(a1, a2, a2 + 12 * a3);
  return a1;
}

uint64_t sub_1002F3474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_1002F9040(a1, a2, a2 + 8 * a3);
  return a1;
}

uint64_t sub_1002F34C4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_1002F6B18(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_1002F6E8C(v3);
  }

  return a1;
}

uint64_t sub_1002F3520(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_1002F6B18(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_1002F6E8C(v3);
  }

  return a1;
}

uint64_t sub_1002F357C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1002F35C0(void *a1)
{
  v2 = a1[4];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[3];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_1002F6B18((a1 + 2));
  v4 = a1[1];
  if (v4)
  {
    sub_1002F6E8C(v4);
  }

  return a1;
}

void sub_1002F3FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __int16 a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, __int16 a51, uint64_t a52, uint64_t a53, uint64_t a54, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *a55)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomXformCommonAPI::~UsdGeomXformCommonAPI((v55 - 160));
  pxrInternal__aapl__pxrReserved__::UsdGeomXform::~UsdGeomXform(&a43);
  pxrInternal__aapl__pxrReserved__::UsdGeomXform::~UsdGeomXform(&a51);
  sub_1002F717C(&a55);

  _Unwind_Resume(a1);
}

void sub_1002F4354(id a1)
{
  v1 = sub_1004BD804("CRLSurfaceCat");
  v2 = off_1019EDC88;
  off_1019EDC88 = v1;
}

void sub_1002F4398()
{
  if (atomic_load_explicit(&qword_101A34B18, memory_order_acquire) != -1)
  {
    v4[1] = v0;
    v4[2] = v1;
    v4[0] = &v2;
    v3 = v4;
    std::__call_once(&qword_101A34B18, &v3, sub_1002FA2F4);
  }
}

_DWORD *sub_1002F43FC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  if (v4 || (a1 = *(a1 + 8)) != 0)
  {
    sub_1002F6E00(a2, (a1 + 16));
    v5 = a2 + 1;
    v6 = (a1 + 20);
  }

  else
  {
    v8 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
    sub_1002F6E00(a2, v8);
    v5 = a2 + 1;
    v6 = v8 + 1;
  }

  return sub_1002F6E4C(v5, v6);
}

void sub_1002F447C(id a1)
{
  v1 = sub_1004BD804("CRLSurfaceCat");
  v2 = off_1019EDC88;
  off_1019EDC88 = v1;
}

void sub_1002F5114(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1000C8ECC(a1);
}

void sub_1002F5C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45)
{
  if (a2)
  {
    sub_1000C8ECC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F5E7C(id a1)
{
  v1 = sub_1004BD804("CRLSurfaceCat");
  v2 = off_1019EDC88;
  off_1019EDC88 = v1;
}

uint64_t *sub_1002F5EC0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1002F705C(v1, *(v1 + 8));
    operator delete();
  }

  return result;
}

void sub_1002F5F14(id a1)
{
  v1 = sub_1004BD804("CRLThreeDimensionalObjectsCat");
  v2 = off_1019EDC28;
  off_1019EDC28 = v1;
}

void sub_1002F5F58(void *a1@<X8>)
{
  *a1 = 0;
  sub_1002F0794(__p, pxrInternal__aapl__pxrReserved__::aaplUsdGclCodec::kOptionPreserveUSDFormat);
  v4 = &off_101854330 + 3;
  v3[0] = 1;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  sub_1002F6EE0(v3);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1002F0794(__p, pxrInternal__aapl__pxrReserved__::aaplUsdGclCodec::kOptionUseTemporaryDirectory);
  v4 = &off_1018543E8;
  sub_1002FA254();
}

void sub_1002F606C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1002F6EE0(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1002F5EC0(v15);
  _Unwind_Resume(a1);
}

void sub_1002F6504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_1002F5EC0(&a24);

  _Unwind_Resume(a1);
}

void sub_1002F6634(id a1)
{
  v1 = sub_1004BD804("CRLThreeDimensionalObjectsCat");
  v2 = off_1019EDC28;
  off_1019EDC28 = v1;
}

void sub_1002F6678(id a1)
{
  v1 = sub_1004BD804("CRLThreeDimensionalObjectsCat");
  v2 = off_1019EDC28;
  off_1019EDC28 = v1;
}

void sub_1002F66BC(id a1)
{
  v1 = sub_1004BD804("CRLThreeDimensionalObjectsCat");
  v2 = off_1019EDC28;
  off_1019EDC28 = v1;
}

void sub_1002F6700(id a1)
{
  v1 = sub_1004BD804("CRLThreeDimensionalObjectsCat");
  v2 = off_1019EDC28;
  off_1019EDC28 = v1;
}

void sub_1002F69EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_1002F5EC0(&a17);
  sub_1002F5EC0((v25 - 56));

  _Unwind_Resume(a1);
}

void sub_1002F6A90(id a1)
{
  v1 = sub_1004BD804("CRLThreeDimensionalObjectsCat");
  v2 = off_1019EDC28;
  off_1019EDC28 = v1;
}

void sub_1002F6AD4(id a1)
{
  v1 = sub_1004BD804("CRLThreeDimensionalObjectsCat");
  v2 = off_1019EDC28;
  off_1019EDC28 = v1;
}

uint64_t sub_1002F6B18(uint64_t a1)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    Ptr = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr();
    if ((atomic_fetch_add((Ptr + 8), 0xFFFFFFFF) & 0x7FFFFFFF) == 1)
    {
      sub_1002F6B70(Ptr);
    }
  }

  return a1;
}

unsigned __int8 *sub_1002F6B70(unsigned __int8 *result)
{
  v1 = result[14];
  if (v1 > 3)
  {
    if (result[14] <= 5u)
    {
      if (v1 == 4)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_TargetPathNode::~Sdf_TargetPathNode(result);
      }

      else
      {
        if (v1 != 5)
        {
          return result;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_MapperPathNode::~Sdf_MapperPathNode(result);
      }
    }

    else
    {
      switch(v1)
      {
        case 6u:
          pxrInternal__aapl__pxrReserved__::Sdf_RelationalAttributePathNode::~Sdf_RelationalAttributePathNode(result);
          break;
        case 7u:
          pxrInternal__aapl__pxrReserved__::Sdf_MapperArgPathNode::~Sdf_MapperArgPathNode(result);
          break;
        case 8u:
          pxrInternal__aapl__pxrReserved__::Sdf_ExpressionPathNode::~Sdf_ExpressionPathNode(result);
          break;
        default:
          return result;
      }
    }

    goto LABEL_24;
  }

  if (result[14] > 1u)
  {
    if (v1 != 2)
    {
      if (v1 != 3)
      {
        return result;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PrimPropertyPathNode::~Sdf_PrimPropertyPathNode(result);
LABEL_24:

      return pxrInternal__aapl__pxrReserved__::Sdf_PropPartPathNode::operator delete();
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PrimVariantSelectionNode::~Sdf_PrimVariantSelectionNode(result);
  }

  else if (result[14])
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PrimPathNode::~Sdf_PrimPathNode(result);
  }

  else
  {
    sub_1002F6C54(result);
  }

  return pxrInternal__aapl__pxrReserved__::Sdf_PrimPartPathNode::operator delete();
}

pxrInternal__aapl__pxrReserved__::Sdf_PathNode *sub_1002F6C54(pxrInternal__aapl__pxrReserved__::Sdf_PathNode *this)
{
  if ((*(this + 2) & 0x80000000) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_RemovePathTokenFromTable(this);
  }

  if (*this && (atomic_fetch_add((*this + 8), 0xFFFFFFFF) & 0x7FFFFFFF) == 1)
  {
    sub_1002F6B70();
  }

  return this;
}

uint64_t sub_1002F6CB4(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  *a1 = 1;
  v5 = *a2;
  *(a1 + 8) = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 48), 1uLL, memory_order_relaxed);
  }

  sub_1002F6E00((a1 + 16), a3);
  sub_1002F6E4C((a1 + 20), a3 + 1);
  *(a1 + 24) = 0;
  v6 = *(a1 + 8);
  if (v6 && (*(v6 + 57) & 8) == 0 && *(v6 + 16) == *(a1 + 16))
  {
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper();
  }

  return a1;
}

void sub_1002F6D80(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_1002F32D8(v1 + 16);
  v4 = *(v1 + 8);
  if (v4)
  {
    sub_1002F6E8C(v4);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_1002F6DB8(unint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a2)
  {
    if (a2 != result)
    {
      v3 = (a2 - 1);
      if (a2 - 1 > result)
      {
        while (*v3 != a3)
        {
          if (--v3 == result)
          {
            goto LABEL_8;
          }
        }

        result = v3;
      }
    }

LABEL_8:
    ++result;
  }

  return result;
}

_DWORD *sub_1002F6E00(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    atomic_fetch_add_explicit((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr() + 8), 1u, memory_order_relaxed);
  }

  return a1;
}

_DWORD *sub_1002F6E4C(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr();
  }

  return a1;
}

atomic_ullong *sub_1002F6E8C(atomic_ullong *result)
{
  add_explicit = atomic_fetch_add_explicit(result + 6, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
  if (result && add_explicit == 1)
  {
    pxrInternal__aapl__pxrReserved__::Usd_PrimData::~Usd_PrimData(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1002F6EE0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (*(a1 + 8) & 3) == 3;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    (*((v2 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
  }

  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_1002F6F30(uint64_t a1, int *a2)
{
  v4 = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();
  sub_1002F6B18(&v4);
  return a1;
}

uint64_t sub_1002F6F88(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return a1;
}

uint64_t sub_1002F6FE4(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    sub_1002F705C(v2, *(v2 + 8));
    operator delete();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_1002F6B18(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1002F705C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002F705C(a1, *a2);
    sub_1002F705C(a1, a2[1]);
    sub_1002F70B8((a2 + 4));

    operator delete(a2);
  }
}

void sub_1002F70B8(uint64_t a1)
{
  sub_1002F6EE0(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1002F7108(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_1002F6B18(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_1002F6E8C(v3);
  }

  return a1;
}

uint64_t sub_1002F71AC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v2 = j__strrchr("/AppleInternal/Library/BuildRoots/4~B_w5ugB0cWO2QulcgZa4ZXN9Wn2ujMQpX1I70JA/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", 47);
    sub_1002F6DB8("/AppleInternal/Library/BuildRoots/4~B_w5ugB0cWO2QulcgZa4ZXN9Wn2ujMQpX1I70JA/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", v2, 0x2Fu);
    v3 = pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
    return sub_1002F7224(v3);
  }

  return result;
}

void sub_1002F7224(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002F7224(a1);
    sub_1002F7224(a1);
    sub_1002F7280(a2 + 32);

    operator delete(a2);
  }
}

void sub_1002F7280(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *sub_1002F72D8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    sub_1002F7350((v3 + 16), &v6);
    v4 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v4)
    {
      sub_10134FBDC(v4, &v6);
    }
  }

  return a1;
}

void sub_1002F7338(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_10134FB94(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1002F7350@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = atomic_load(a1);
  if (!result)
  {
    operator new();
  }

  *a2 = result;
  atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
  return result;
}

void sub_1002F7410(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  sub_1002F7470(a1);
  v6[0] = &v8;
  v6[1] = &v7;
  sub_1002F74C0(a1, (a3 - a2) >> 2, v6);
}

void sub_1002F7470(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      sub_1002F76AC(a1);
    }

    *a1 = 0;
  }
}

void sub_1002F74C0(unint64_t *a1, unint64_t a2, int ***a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_1002F7718(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  *(v10 + v11) = *(v9 + v11);
                  v11 += 4;
                }

                while (4 * v3 != v11);
              }
            }

            v12 = **a3;
            v13 = *a3[1];
            if (v12 != v13)
            {
              v14 = 4 * v3;
              do
              {
                v15 = *v12++;
                *(v7 + v14) = v15;
                v14 += 4;
              }

              while (v12 != v13);
            }
          }

          v16 = v7;
LABEL_34:
          if (v16 != a1[4])
          {
            sub_1002F76AC(a1);
            a1[4] = v16;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v22 = a2;
      }

      else
      {
        v22 = *a1;
      }

      v23 = sub_1002F7718(a1, a2);
      v16 = v23;
      if (v3)
      {
        v24 = 4 * v22;
        v25 = v23;
        do
        {
          v26 = *v7;
          v7 = (v7 + 4);
          *v25 = v26;
          v25 = (v25 + 4);
          v24 -= 4;
        }

        while (v24);
      }

      if (v3 < a2)
      {
        v27 = **a3;
        v28 = *a3[1];
        if (v27 != v28)
        {
          v29 = 4 * v3;
          do
          {
            v30 = *v27++;
            *(v23 + v29) = v30;
            v29 += 4;
          }

          while (v27 != v28);
        }
      }

      goto LABEL_34;
    }

    if (4 * a2 / a2 == 4)
    {
      v17 = sub_1002F7718(a1, a2);
      v16 = v17;
      v18 = **a3;
      v19 = *a3[1];
      if (v18 != v19)
      {
        v20 = v17;
        do
        {
          v21 = *v18++;
          *v20 = v21;
          v20 = (v20 + 4);
        }

        while (v18 != v19);
      }

      goto LABEL_34;
    }
  }

  sub_1002F7470(a1);
}

void sub_1002F76AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = a1 + 24;
    if (*(a1 + 24))
    {
      sub_10134FC58(*(a1 + 24), v2);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete((*(a1 + 32) - 16));
    }

    *v2 = 0;
    *(v2 + 8) = 0;
  }
}

void *sub_1002F7718(uint64_t a1, unint64_t a2)
{
  sub_1002F77E8(&v6);
  if (a2 > 0x1FFFFFFFFFFFFFFBLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 4 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void *sub_1002F77AC(void *a1)
{
  if (*a1)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1002F77E8(uint64_t a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v2)
  {
    v3 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin();
    *a1 = v3;
    *(a1 + 8) = 2 * (v3 != 0);
    if (v3)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin();
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

void sub_1002F785C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  sub_1002F7470(a1);
  v6[0] = &v8;
  v6[1] = &v7;
  sub_1002F78C8(a1, 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 2), v6);
}

void sub_1002F78C8(unint64_t *a1, unint64_t a2, uint64_t ***a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_1002F7B10(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = v10 + v11;
                  v13 = *(v9 + v11);
                  *(v12 + 2) = *(v9 + v11 + 8);
                  *v12 = v13;
                  v11 += 12;
                }

                while (12 * v3 != v11);
              }
            }

            v14 = **a3;
            v15 = *a3[1];
            if (v14 != v15)
            {
              v16 = 12 * v3;
              do
              {
                v17 = v7 + v16;
                v18 = *v14;
                *(v17 + 2) = *(v14 + 2);
                *v17 = v18;
                v14 = (v14 + 12);
                v16 += 12;
              }

              while (v14 != v15);
            }
          }

          v19 = v7;
LABEL_34:
          if (v19 != a1[4])
          {
            sub_1002F76AC(a1);
            a1[4] = v19;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v25 = a2;
      }

      else
      {
        v25 = *a1;
      }

      v26 = sub_1002F7B10(a1, a2);
      v19 = v26;
      if (v3)
      {
        v27 = 12 * v25;
        v28 = v26;
        do
        {
          v29 = *v7;
          *(v28 + 2) = *(v7 + 2);
          *v28 = v29;
          v28 = (v28 + 12);
          v7 = (v7 + 12);
          v27 -= 12;
        }

        while (v27);
      }

      if (v3 < a2)
      {
        v30 = **a3;
        v31 = *a3[1];
        if (v30 != v31)
        {
          v32 = 12 * v3;
          do
          {
            v33 = v26 + v32;
            v34 = *v30;
            *(v33 + 2) = *(v30 + 2);
            *v33 = v34;
            v30 = (v30 + 12);
            v32 += 12;
          }

          while (v30 != v31);
        }
      }

      goto LABEL_34;
    }

    if (a2 < 0x1555555555555556)
    {
      v20 = sub_1002F7B10(a1, a2);
      v19 = v20;
      v21 = **a3;
      v22 = *a3[1];
      if (v21 != v22)
      {
        v23 = v20;
        do
        {
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          v23 = (v23 + 12);
          v21 = (v21 + 12);
        }

        while (v21 != v22);
      }

      goto LABEL_34;
    }
  }

  sub_1002F7470(a1);
}

void *sub_1002F7B10(uint64_t a1, unint64_t a2)
{
  sub_1002F77E8(&v6);
  if (a2 > 0xAAAAAAAAAAAAAA9)
  {
    v3 = -1;
  }

  else
  {
    v3 = 12 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t sub_1002F7C68(uint64_t a1)
{
  v204 = (a1 + 1616);
  sub_1002F8F94(&v204);
  v2 = *(a1 + 1608);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 1600);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 1592);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 1584);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 1576);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 1568);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 1560);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(a1 + 1552);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a1 + 1544);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(a1 + 1536);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(a1 + 1528);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(a1 + 1520);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(a1 + 1512);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(a1 + 1504);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(a1 + 1496);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(a1 + 1488);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(a1 + 1480);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(a1 + 1472);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(a1 + 1464);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(a1 + 1456);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(a1 + 1448);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(a1 + 1440);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(a1 + 1432);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(a1 + 1424);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(a1 + 1416);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(a1 + 1408);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(a1 + 1400);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(a1 + 1392);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(a1 + 1384);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(a1 + 1376);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(a1 + 1368);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(a1 + 1360);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(a1 + 1352);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(a1 + 1344);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(a1 + 1336);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(a1 + 1328);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(a1 + 1320);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = *(a1 + 1312);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = *(a1 + 1304);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v41 = *(a1 + 1296);
  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v42 = *(a1 + 1288);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v43 = *(a1 + 1280);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v44 = *(a1 + 1272);
  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v45 = *(a1 + 1264);
  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = *(a1 + 1256);
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v47 = *(a1 + 1248);
  if ((v47 & 7) != 0)
  {
    atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v48 = *(a1 + 1240);
  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v49 = *(a1 + 1232);
  if ((v49 & 7) != 0)
  {
    atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v50 = *(a1 + 1224);
  if ((v50 & 7) != 0)
  {
    atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v51 = *(a1 + 1216);
  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v52 = *(a1 + 1208);
  if ((v52 & 7) != 0)
  {
    atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v53 = *(a1 + 1200);
  if ((v53 & 7) != 0)
  {
    atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v54 = *(a1 + 1192);
  if ((v54 & 7) != 0)
  {
    atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v55 = *(a1 + 1184);
  if ((v55 & 7) != 0)
  {
    atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v56 = *(a1 + 1176);
  if ((v56 & 7) != 0)
  {
    atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v57 = *(a1 + 1168);
  if ((v57 & 7) != 0)
  {
    atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v58 = *(a1 + 1160);
  if ((v58 & 7) != 0)
  {
    atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v59 = *(a1 + 1152);
  if ((v59 & 7) != 0)
  {
    atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v60 = *(a1 + 1144);
  if ((v60 & 7) != 0)
  {
    atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v61 = *(a1 + 1136);
  if ((v61 & 7) != 0)
  {
    atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v62 = *(a1 + 1128);
  if ((v62 & 7) != 0)
  {
    atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v63 = *(a1 + 1120);
  if ((v63 & 7) != 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v64 = *(a1 + 1112);
  if ((v64 & 7) != 0)
  {
    atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v65 = *(a1 + 1104);
  if ((v65 & 7) != 0)
  {
    atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v66 = *(a1 + 1096);
  if ((v66 & 7) != 0)
  {
    atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v67 = *(a1 + 1088);
  if ((v67 & 7) != 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v68 = *(a1 + 1080);
  if ((v68 & 7) != 0)
  {
    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v69 = *(a1 + 1072);
  if ((v69 & 7) != 0)
  {
    atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v70 = *(a1 + 1064);
  if ((v70 & 7) != 0)
  {
    atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v71 = *(a1 + 1056);
  if ((v71 & 7) != 0)
  {
    atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v72 = *(a1 + 1048);
  if ((v72 & 7) != 0)
  {
    atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v73 = *(a1 + 1040);
  if ((v73 & 7) != 0)
  {
    atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v74 = *(a1 + 1032);
  if ((v74 & 7) != 0)
  {
    atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v75 = *(a1 + 1024);
  if ((v75 & 7) != 0)
  {
    atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v76 = *(a1 + 1016);
  if ((v76 & 7) != 0)
  {
    atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v77 = *(a1 + 1008);
  if ((v77 & 7) != 0)
  {
    atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v78 = *(a1 + 1000);
  if ((v78 & 7) != 0)
  {
    atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v79 = *(a1 + 992);
  if ((v79 & 7) != 0)
  {
    atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v80 = *(a1 + 984);
  if ((v80 & 7) != 0)
  {
    atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v81 = *(a1 + 976);
  if ((v81 & 7) != 0)
  {
    atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v82 = *(a1 + 968);
  if ((v82 & 7) != 0)
  {
    atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v83 = *(a1 + 960);
  if ((v83 & 7) != 0)
  {
    atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v84 = *(a1 + 952);
  if ((v84 & 7) != 0)
  {
    atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v85 = *(a1 + 944);
  if ((v85 & 7) != 0)
  {
    atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v86 = *(a1 + 936);
  if ((v86 & 7) != 0)
  {
    atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v87 = *(a1 + 928);
  if ((v87 & 7) != 0)
  {
    atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v88 = *(a1 + 920);
  if ((v88 & 7) != 0)
  {
    atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v89 = *(a1 + 912);
  if ((v89 & 7) != 0)
  {
    atomic_fetch_add_explicit((v89 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v90 = *(a1 + 904);
  if ((v90 & 7) != 0)
  {
    atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v91 = *(a1 + 896);
  if ((v91 & 7) != 0)
  {
    atomic_fetch_add_explicit((v91 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v92 = *(a1 + 888);
  if ((v92 & 7) != 0)
  {
    atomic_fetch_add_explicit((v92 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v93 = *(a1 + 880);
  if ((v93 & 7) != 0)
  {
    atomic_fetch_add_explicit((v93 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v94 = *(a1 + 872);
  if ((v94 & 7) != 0)
  {
    atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v95 = *(a1 + 864);
  if ((v95 & 7) != 0)
  {
    atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v96 = *(a1 + 856);
  if ((v96 & 7) != 0)
  {
    atomic_fetch_add_explicit((v96 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v97 = *(a1 + 848);
  if ((v97 & 7) != 0)
  {
    atomic_fetch_add_explicit((v97 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v98 = *(a1 + 840);
  if ((v98 & 7) != 0)
  {
    atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v99 = *(a1 + 832);
  if ((v99 & 7) != 0)
  {
    atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v100 = *(a1 + 824);
  if ((v100 & 7) != 0)
  {
    atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v101 = *(a1 + 816);
  if ((v101 & 7) != 0)
  {
    atomic_fetch_add_explicit((v101 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v102 = *(a1 + 808);
  if ((v102 & 7) != 0)
  {
    atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v103 = *(a1 + 800);
  if ((v103 & 7) != 0)
  {
    atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v104 = *(a1 + 792);
  if ((v104 & 7) != 0)
  {
    atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v105 = *(a1 + 784);
  if ((v105 & 7) != 0)
  {
    atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v106 = *(a1 + 776);
  if ((v106 & 7) != 0)
  {
    atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v107 = *(a1 + 768);
  if ((v107 & 7) != 0)
  {
    atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v108 = *(a1 + 760);
  if ((v108 & 7) != 0)
  {
    atomic_fetch_add_explicit((v108 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v109 = *(a1 + 752);
  if ((v109 & 7) != 0)
  {
    atomic_fetch_add_explicit((v109 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v110 = *(a1 + 744);
  if ((v110 & 7) != 0)
  {
    atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v111 = *(a1 + 736);
  if ((v111 & 7) != 0)
  {
    atomic_fetch_add_explicit((v111 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v112 = *(a1 + 728);
  if ((v112 & 7) != 0)
  {
    atomic_fetch_add_explicit((v112 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v113 = *(a1 + 720);
  if ((v113 & 7) != 0)
  {
    atomic_fetch_add_explicit((v113 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v114 = *(a1 + 712);
  if ((v114 & 7) != 0)
  {
    atomic_fetch_add_explicit((v114 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v115 = *(a1 + 704);
  if ((v115 & 7) != 0)
  {
    atomic_fetch_add_explicit((v115 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v116 = *(a1 + 696);
  if ((v116 & 7) != 0)
  {
    atomic_fetch_add_explicit((v116 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v117 = *(a1 + 688);
  if ((v117 & 7) != 0)
  {
    atomic_fetch_add_explicit((v117 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v118 = *(a1 + 680);
  if ((v118 & 7) != 0)
  {
    atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v119 = *(a1 + 672);
  if ((v119 & 7) != 0)
  {
    atomic_fetch_add_explicit((v119 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v120 = *(a1 + 664);
  if ((v120 & 7) != 0)
  {
    atomic_fetch_add_explicit((v120 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v121 = *(a1 + 656);
  if ((v121 & 7) != 0)
  {
    atomic_fetch_add_explicit((v121 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v122 = *(a1 + 648);
  if ((v122 & 7) != 0)
  {
    atomic_fetch_add_explicit((v122 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v123 = *(a1 + 640);
  if ((v123 & 7) != 0)
  {
    atomic_fetch_add_explicit((v123 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v124 = *(a1 + 632);
  if ((v124 & 7) != 0)
  {
    atomic_fetch_add_explicit((v124 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v125 = *(a1 + 624);
  if ((v125 & 7) != 0)
  {
    atomic_fetch_add_explicit((v125 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v126 = *(a1 + 616);
  if ((v126 & 7) != 0)
  {
    atomic_fetch_add_explicit((v126 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v127 = *(a1 + 608);
  if ((v127 & 7) != 0)
  {
    atomic_fetch_add_explicit((v127 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v128 = *(a1 + 600);
  if ((v128 & 7) != 0)
  {
    atomic_fetch_add_explicit((v128 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v129 = *(a1 + 592);
  if ((v129 & 7) != 0)
  {
    atomic_fetch_add_explicit((v129 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v130 = *(a1 + 584);
  if ((v130 & 7) != 0)
  {
    atomic_fetch_add_explicit((v130 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v131 = *(a1 + 576);
  if ((v131 & 7) != 0)
  {
    atomic_fetch_add_explicit((v131 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v132 = *(a1 + 568);
  if ((v132 & 7) != 0)
  {
    atomic_fetch_add_explicit((v132 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v133 = *(a1 + 560);
  if ((v133 & 7) != 0)
  {
    atomic_fetch_add_explicit((v133 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v134 = *(a1 + 552);
  if ((v134 & 7) != 0)
  {
    atomic_fetch_add_explicit((v134 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v135 = *(a1 + 544);
  if ((v135 & 7) != 0)
  {
    atomic_fetch_add_explicit((v135 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v136 = *(a1 + 536);
  if ((v136 & 7) != 0)
  {
    atomic_fetch_add_explicit((v136 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v137 = *(a1 + 528);
  if ((v137 & 7) != 0)
  {
    atomic_fetch_add_explicit((v137 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v138 = *(a1 + 520);
  if ((v138 & 7) != 0)
  {
    atomic_fetch_add_explicit((v138 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v139 = *(a1 + 512);
  if ((v139 & 7) != 0)
  {
    atomic_fetch_add_explicit((v139 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v140 = *(a1 + 504);
  if ((v140 & 7) != 0)
  {
    atomic_fetch_add_explicit((v140 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v141 = *(a1 + 496);
  if ((v141 & 7) != 0)
  {
    atomic_fetch_add_explicit((v141 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v142 = *(a1 + 488);
  if ((v142 & 7) != 0)
  {
    atomic_fetch_add_explicit((v142 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v143 = *(a1 + 480);
  if ((v143 & 7) != 0)
  {
    atomic_fetch_add_explicit((v143 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v144 = *(a1 + 472);
  if ((v144 & 7) != 0)
  {
    atomic_fetch_add_explicit((v144 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v145 = *(a1 + 464);
  if ((v145 & 7) != 0)
  {
    atomic_fetch_add_explicit((v145 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v146 = *(a1 + 456);
  if ((v146 & 7) != 0)
  {
    atomic_fetch_add_explicit((v146 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v147 = *(a1 + 448);
  if ((v147 & 7) != 0)
  {
    atomic_fetch_add_explicit((v147 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v148 = *(a1 + 440);
  if ((v148 & 7) != 0)
  {
    atomic_fetch_add_explicit((v148 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v149 = *(a1 + 432);
  if ((v149 & 7) != 0)
  {
    atomic_fetch_add_explicit((v149 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v150 = *(a1 + 424);
  if ((v150 & 7) != 0)
  {
    atomic_fetch_add_explicit((v150 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v151 = *(a1 + 416);
  if ((v151 & 7) != 0)
  {
    atomic_fetch_add_explicit((v151 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v152 = *(a1 + 408);
  if ((v152 & 7) != 0)
  {
    atomic_fetch_add_explicit((v152 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v153 = *(a1 + 400);
  if ((v153 & 7) != 0)
  {
    atomic_fetch_add_explicit((v153 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v154 = *(a1 + 392);
  if ((v154 & 7) != 0)
  {
    atomic_fetch_add_explicit((v154 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v155 = *(a1 + 384);
  if ((v155 & 7) != 0)
  {
    atomic_fetch_add_explicit((v155 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v156 = *(a1 + 376);
  if ((v156 & 7) != 0)
  {
    atomic_fetch_add_explicit((v156 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v157 = *(a1 + 368);
  if ((v157 & 7) != 0)
  {
    atomic_fetch_add_explicit((v157 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v158 = *(a1 + 360);
  if ((v158 & 7) != 0)
  {
    atomic_fetch_add_explicit((v158 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v159 = *(a1 + 352);
  if ((v159 & 7) != 0)
  {
    atomic_fetch_add_explicit((v159 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v160 = *(a1 + 344);
  if ((v160 & 7) != 0)
  {
    atomic_fetch_add_explicit((v160 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v161 = *(a1 + 336);
  if ((v161 & 7) != 0)
  {
    atomic_fetch_add_explicit((v161 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v162 = *(a1 + 328);
  if ((v162 & 7) != 0)
  {
    atomic_fetch_add_explicit((v162 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v163 = *(a1 + 320);
  if ((v163 & 7) != 0)
  {
    atomic_fetch_add_explicit((v163 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v164 = *(a1 + 312);
  if ((v164 & 7) != 0)
  {
    atomic_fetch_add_explicit((v164 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v165 = *(a1 + 304);
  if ((v165 & 7) != 0)
  {
    atomic_fetch_add_explicit((v165 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v166 = *(a1 + 296);
  if ((v166 & 7) != 0)
  {
    atomic_fetch_add_explicit((v166 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v167 = *(a1 + 288);
  if ((v167 & 7) != 0)
  {
    atomic_fetch_add_explicit((v167 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v168 = *(a1 + 280);
  if ((v168 & 7) != 0)
  {
    atomic_fetch_add_explicit((v168 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v169 = *(a1 + 272);
  if ((v169 & 7) != 0)
  {
    atomic_fetch_add_explicit((v169 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v170 = *(a1 + 264);
  if ((v170 & 7) != 0)
  {
    atomic_fetch_add_explicit((v170 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v171 = *(a1 + 256);
  if ((v171 & 7) != 0)
  {
    atomic_fetch_add_explicit((v171 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v172 = *(a1 + 248);
  if ((v172 & 7) != 0)
  {
    atomic_fetch_add_explicit((v172 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v173 = *(a1 + 240);
  if ((v173 & 7) != 0)
  {
    atomic_fetch_add_explicit((v173 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v174 = *(a1 + 232);
  if ((v174 & 7) != 0)
  {
    atomic_fetch_add_explicit((v174 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v175 = *(a1 + 224);
  if ((v175 & 7) != 0)
  {
    atomic_fetch_add_explicit((v175 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v176 = *(a1 + 216);
  if ((v176 & 7) != 0)
  {
    atomic_fetch_add_explicit((v176 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v177 = *(a1 + 208);
  if ((v177 & 7) != 0)
  {
    atomic_fetch_add_explicit((v177 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v178 = *(a1 + 200);
  if ((v178 & 7) != 0)
  {
    atomic_fetch_add_explicit((v178 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v179 = *(a1 + 192);
  if ((v179 & 7) != 0)
  {
    atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v180 = *(a1 + 184);
  if ((v180 & 7) != 0)
  {
    atomic_fetch_add_explicit((v180 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v181 = *(a1 + 176);
  if ((v181 & 7) != 0)
  {
    atomic_fetch_add_explicit((v181 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v182 = *(a1 + 168);
  if ((v182 & 7) != 0)
  {
    atomic_fetch_add_explicit((v182 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v183 = *(a1 + 160);
  if ((v183 & 7) != 0)
  {
    atomic_fetch_add_explicit((v183 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v184 = *(a1 + 152);
  if ((v184 & 7) != 0)
  {
    atomic_fetch_add_explicit((v184 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v185 = *(a1 + 144);
  if ((v185 & 7) != 0)
  {
    atomic_fetch_add_explicit((v185 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v186 = *(a1 + 136);
  if ((v186 & 7) != 0)
  {
    atomic_fetch_add_explicit((v186 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v187 = *(a1 + 128);
  if ((v187 & 7) != 0)
  {
    atomic_fetch_add_explicit((v187 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v188 = *(a1 + 120);
  if ((v188 & 7) != 0)
  {
    atomic_fetch_add_explicit((v188 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v189 = *(a1 + 112);
  if ((v189 & 7) != 0)
  {
    atomic_fetch_add_explicit((v189 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v190 = *(a1 + 104);
  if ((v190 & 7) != 0)
  {
    atomic_fetch_add_explicit((v190 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v191 = *(a1 + 96);
  if ((v191 & 7) != 0)
  {
    atomic_fetch_add_explicit((v191 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v192 = *(a1 + 88);
  if ((v192 & 7) != 0)
  {
    atomic_fetch_add_explicit((v192 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v193 = *(a1 + 80);
  if ((v193 & 7) != 0)
  {
    atomic_fetch_add_explicit((v193 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v194 = *(a1 + 72);
  if ((v194 & 7) != 0)
  {
    atomic_fetch_add_explicit((v194 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v195 = *(a1 + 64);
  if ((v195 & 7) != 0)
  {
    atomic_fetch_add_explicit((v195 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v196 = *(a1 + 56);
  if ((v196 & 7) != 0)
  {
    atomic_fetch_add_explicit((v196 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v197 = *(a1 + 48);
  if ((v197 & 7) != 0)
  {
    atomic_fetch_add_explicit((v197 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v198 = *(a1 + 40);
  if ((v198 & 7) != 0)
  {
    atomic_fetch_add_explicit((v198 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v199 = *(a1 + 32);
  if ((v199 & 7) != 0)
  {
    atomic_fetch_add_explicit((v199 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v200 = *(a1 + 24);
  if ((v200 & 7) != 0)
  {
    atomic_fetch_add_explicit((v200 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v201 = *(a1 + 16);
  if ((v201 & 7) != 0)
  {
    atomic_fetch_add_explicit((v201 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v202 = *(a1 + 8);
  if ((v202 & 7) != 0)
  {
    atomic_fetch_add_explicit((v202 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_1002F8F94(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType *sub_1002F8FE8(pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init *a1)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init::New(a1);
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::~Sdf_ValueTypeNamesType(result);
      operator delete();
    }

    return atomic_load(a1);
  }

  return result;
}

void sub_1002F9040(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  sub_1002F7470(a1);
  v6[0] = &v8;
  v6[1] = &v7;
  sub_1002F90A0(a1, (a3 - a2) >> 3, v6);
}

void sub_1002F90A0(unint64_t *a1, unint64_t a2, uint64_t ***a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_1002F928C(a1, a2);
              v7 = v10;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  v10[i] = *(v9 + i * 8);
                }
              }
            }

            v12 = **a3;
            v13 = *a3[1];
            if (v12 != v13)
            {
              v14 = v3;
              do
              {
                v15 = *v12++;
                v7[v14++] = v15;
              }

              while (v12 != v13);
            }
          }

          v16 = v7;
LABEL_34:
          if (v16 != a1[4])
          {
            sub_1002F76AC(a1);
            a1[4] = v16;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v22 = a2;
      }

      else
      {
        v22 = *a1;
      }

      v23 = sub_1002F928C(a1, a2);
      v16 = v23;
      if (v3)
      {
        v24 = 8 * v22;
        v25 = v23;
        do
        {
          v26 = *v7++;
          *v25++ = v26;
          v24 -= 8;
        }

        while (v24);
      }

      if (v3 < a2)
      {
        v27 = **a3;
        v28 = *a3[1];
        if (v27 != v28)
        {
          v29 = v3;
          do
          {
            v30 = *v27++;
            v23[v29++] = v30;
          }

          while (v27 != v28);
        }
      }

      goto LABEL_34;
    }

    if (8 * a2 / a2 == 8)
    {
      v17 = sub_1002F928C(a1, a2);
      v16 = v17;
      v18 = **a3;
      v19 = *a3[1];
      if (v18 != v19)
      {
        v20 = v17;
        do
        {
          v21 = *v18++;
          *v20++ = v21;
        }

        while (v18 != v19);
      }

      goto LABEL_34;
    }
  }

  sub_1002F7470(a1);
}

void *sub_1002F928C(uint64_t a1, unint64_t a2)
{
  sub_1002F77E8(&v6);
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t *sub_1002F9320(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void *sub_1002F9350(void *result)
{
  if ((*result & 7) != 0)
  {
    atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void *sub_1002F936C(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

atomic_uint **sub_1002F9490@<X0>(atomic_uint **result@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *result;
  *a2 = *result;
  a2[1] = (&off_101854268 + 1);
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v3;
    }
  }

  return result;
}

uint64_t sub_1002F9580(uint64_t a1)
{
  v40 = (a1 + 304);
  sub_1002F8F94(&v40);
  v2 = *(a1 + 296);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 288);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 280);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 272);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 264);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 256);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 248);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(a1 + 240);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a1 + 232);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(a1 + 224);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(a1 + 216);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(a1 + 208);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(a1 + 200);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(a1 + 192);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(a1 + 184);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(a1 + 176);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(a1 + 168);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(a1 + 160);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(a1 + 152);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(a1 + 144);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(a1 + 136);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(a1 + 128);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(a1 + 120);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(a1 + 112);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(a1 + 104);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(a1 + 96);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(a1 + 88);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(a1 + 80);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(a1 + 72);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(a1 + 64);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(a1 + 56);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(a1 + 48);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(a1 + 40);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(a1 + 32);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(a1 + 24);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(a1 + 16);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(a1 + 8);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

_BYTE *sub_1002F9A68@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_101854330 + 3;
  *a2 = *result;
  return result;
}

uint64_t *sub_1002F9A84(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_1002F9AA4(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_1002F9C28(result);
}

unint64_t sub_1002F9ABC(uint64_t *a1)
{
  v1 = *a1;
  v6 = 0;
  v7 = 0;
  v2 = *(v1 + 23);
  if (v2 >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 23);
  }

  else
  {
    v4 = *(v1 + 8);
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v6, v3, v4);
  return bswap64(0x9E3779B97F4A7C55 * v6);
}

void *sub_1002F9B44(uint64_t **a1, void *a2)
{
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = **a1;
  }

  if (v3 >= 0)
  {
    v5 = *(*a1 + 23);
  }

  else
  {
    v5 = (*a1)[1];
  }

  return sub_1002F9EC4(a2, v4, v5);
}

uint64_t *sub_1002F9C28(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

BOOL sub_1002F9CA4(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t sub_1002F9D18(uint64_t a1)
{
  v1 = atomic_load((*a1 + 24));
  if (v1 != 1)
  {
    sub_1002F9D80();
  }

  return *a1;
}

void *sub_1002F9E20(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1002F7164();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void *sub_1002F9EC4(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_1002FA06C(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_1002FA004(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1002F9FE4);
}

uint64_t sub_1002FA06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1002F7164();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1002FA238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FA2F4()
{
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(v1);
  pxrInternal__aapl__pxrReserved__::usd_initialize(v1, v0);
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(v1);
}

void sub_1002FA364(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_1002FA380(uint64_t a1)
{

  return sub_1002F6B18(a1);
}

void sub_1002FA57C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002FA5C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002FAA28(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = +[_TtC8Freeform8CRLAsset null];
  v2 = [v1 initWithImageData:v4];
  v3 = qword_101A34B20;
  qword_101A34B20 = v2;
}

void sub_1002FAD48(id a1)
{
  v1 = +[NSBundle mainBundle];
  v5 = [v1 URLForResource:@"CRLErrorImageIcon" withExtension:@"pdf"];

  v2 = [_TtC8Freeform15CRLAssetManager readonlyAssetFromURL:v5];
  v3 = [(CRLImageProvider *)[CRLPDFImageProvider alloc] initWithImageData:v2];
  v4 = qword_101A34B30;
  qword_101A34B30 = v3;
}

void sub_1002FB04C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002FB090(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

BOOL sub_1002FB7F0(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 2)
  {
    v9 = @"com.apple.freeform";
  }

  else
  {
    if (a3 == 28)
    {
      v8 = &NSPOSIXErrorDomain;
    }

    else
    {
      if (a3 != 640)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v8 = &NSCocoaErrorDomain;
    }

    v9 = *v8;
  }

  v10 = [(NSString *)v6 isEqualToString:v9];
LABEL_10:

  return v10;
}

BOOL sub_1002FB894(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 3072)
  {
    v8 = &NSCocoaErrorDomain;
LABEL_7:
    v9 = *v8;
    goto LABEL_8;
  }

  if (a3 != 104)
  {
    if (a3 != -999)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v8 = &NSURLErrorDomain;
    goto LABEL_7;
  }

  v9 = @"com.apple.freeform.CRLErrorDomainInfoImporter";
LABEL_8:
  v10 = [(NSString *)v6 isEqualToString:v9];
LABEL_10:

  return v10;
}

BOOL sub_1002FB938(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 17)
  {
    v8 = &NSPOSIXErrorDomain;
  }

  else
  {
    if (a3 != 516)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v8 = &NSCocoaErrorDomain;
  }

  v9 = [(NSString *)v6 isEqualToString:*v8];
LABEL_7:

  return v9;
}

BOOL sub_1002FB9C8(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 2)
  {
    v8 = &NSPOSIXErrorDomain;
  }

  else
  {
    if (a3 != 260 && a3 != 4)
    {
      v9 = 0;
      goto LABEL_8;
    }

    v8 = &NSCocoaErrorDomain;
  }

  v9 = [(NSString *)v6 isEqualToString:*v8];
LABEL_8:

  return v9;
}

BOOL sub_1002FBA60(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = 0;
  if (a3 <= 512)
  {
    if (a3 == 1)
    {
      v9 = &NSPOSIXErrorDomain;
      goto LABEL_9;
    }

    if (a3 != 257)
    {
      goto LABEL_10;
    }

LABEL_7:
    v9 = &NSCocoaErrorDomain;
LABEL_9:
    v8 = [(NSString *)v6 isEqualToString:*v9];
    goto LABEL_10;
  }

  if (a3 == 513 || a3 == 5124)
  {
    goto LABEL_7;
  }

LABEL_10:

  return v8;
}

BOOL sub_1002FBB0C(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  if (a3 == 3328)
  {
    return [(NSString *)a2 isEqualToString:NSCocoaErrorDomain, a4];
  }

  else
  {
    return 0;
  }
}

void sub_1002FBD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002FBD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void sub_1002FC5F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002FC638(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002FC8C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002FC904(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002FCE7C(void *a1)
{
  v2 = [*(a1[4] + 160) objectForKey:a1[6]];
  v3 = v2;
  if (v2)
  {
    *(*(a1[5] + 8) + 24) = [v2 BOOLValue];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = *(a1[4] + 8);
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
LABEL_5:
      v8 = 0;
      while (1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        *(*(a1[5] + 8) + 24) = [*(*(&v14 + 1) + 8 * v8) canLoadObjectOfClass:{a1[6], v14}];
        if (*(*(a1[5] + 8) + 24))
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v6)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    v9 = *(a1[4] + 160);
    if (!v9)
    {
      v10 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:0];
      v11 = a1[4];
      v12 = *(v11 + 160);
      *(v11 + 160) = v10;

      v9 = *(a1[4] + 160);
    }

    v13 = [NSNumber numberWithBool:*(*(a1[5] + 8) + 24), v14];
    [v9 setObject:v13 forKey:a1[6]];
  }
}

void sub_1002FD0C4(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = +[CRLBoardItemImporter supportedFileTypes];
        v9 = [v7 crl_conformsToAnyUTI:v8];

        if (v9)
        {
          v12 = 2;
          goto LABEL_16;
        }

        v10 = +[CRLIngestionTypes supportedRichTextTypes];
        v11 = [v7 crl_conformsToAnyUTI:v10];

        if (v11)
        {
          v12 = 1;
          goto LABEL_16;
        }

        if ([CRLIngestionTypes isValidPlainTextUTI:v7])
        {
          v12 = 4;
          goto LABEL_16;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v12 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_16:

  *(*(a1 + 32) + 32) = v12;
}

void sub_1002FD2E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[CRLIngestionTypes supportedImageTypes];
  *(*(a1 + 32) + 48) = [v2 p_containsAnyUTIFromList:v3];
}

void sub_1002FDA90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v20 = sub_1002FDD78;
    v21 = &unk_101854780;
    v22 = v5;
    v18 = *(a1 + 32);
    v8 = *(&v18 + 1);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    v23 = v18;
    v24 = v11;
    v27 = *(a1 + 80);
    v25 = *(a1 + 64);
    v26 = *(a1 + 72);
    if (+[NSThread isMainThread])
    {
      v20(block);
    }

    else
    {
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
    if (v6)
    {
      v12 = *(a1 + 64);
      v13 = [NSNumber numberWithUnsignedInteger:*(a1 + 80)];
      [v12 setObject:v7 forKey:v13];

      if (qword_101AD5A08 != -1)
      {
        sub_10134FFBC();
      }

      v14 = off_1019EDA60;
      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
      {
        sub_10134FFD0(v14);
      }
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101350084();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101350098();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101350134();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v15);
      }

      v16 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource loadImportedImagesForAssetOwner:compatibilityAlertPresenter:withHandler:]_block_invoke"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
      [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:222 isFatal:0 description:"invalid nil value for '%{public}s'", "itemProviderError"];
    }

    dispatch_group_leave(*(a1 + 72));
  }
}

void sub_1002FDD78(uint64_t a1)
{
  v2 = [[CRLImageFillProvider alloc] initWithData:*(a1 + 32) type:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002FDE64;
  v7[3] = &unk_101854758;
  v5 = *(a1 + 64);
  v6 = *(a1 + 88);
  v8 = v5;
  v11 = v6;
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  [(CRLImageFillProvider *)v2 provideImageDataForAssetOwner:v3 compatibilityAlertPresenter:v4 completionHandler:v7];
}

void sub_1002FDE64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 32);
    v9 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
    v10 = v8;
    v11 = v5;
LABEL_5:
    [v10 setObject:v11 forKey:v9];
    goto LABEL_6;
  }

  if (v6)
  {
    v12 = *(a1 + 40);
    v9 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
    v10 = v12;
    v11 = v7;
    goto LABEL_5;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10135015C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101350170();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10135020C();
  }

  v13 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v13);
  }

  v9 = [NSString stringWithUTF8String:"[CRLiOSItemProviderItemSource loadImportedImagesForAssetOwner:compatibilityAlertPresenter:withHandler:]_block_invoke"];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSItemProviderItemSource.m"];
  [CRLAssertionHandler handleFailureInFunction:v9 file:v14 lineNumber:213 isFatal:0 description:"invalid nil value for '%{public}s'", "imageFillError"];

LABEL_6:
  dispatch_group_leave(*(a1 + 48));
}