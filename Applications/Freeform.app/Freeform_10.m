void sub_100179080(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1001792DC(uint64_t a1)
{
  if (a1 > 2)
  {
    v1 = 2;
    v2 = 2;
    v4 = 4;
    if (a1 != 5)
    {
      v4 = 0;
    }

    if (a1 != 4)
    {
      v2 = v4;
    }

    v3 = a1 == 3;
    goto LABEL_9;
  }

  if (a1)
  {
    v1 = 1;
    v2 = a1 == 2;
    v3 = a1 == 1;
LABEL_9:
    if (v3)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101323578();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10132358C();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101323614();
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v6);
  }

  v7 = [NSString stringWithUTF8String:"size_t CRLGLDataBufferDataTypeSize(CRLGLDataBufferDataType)"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:100 isFatal:0 description:"Unknown CRLGLDataBufferDataType!"];

  return 0;
}

void sub_10017944C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100179490(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

float sub_1001794D4(float *a1, uint64_t a2, int a3, float a4)
{
  v4 = -1.0;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v5 = *a1;
        v10 = 32767.0;
        break;
      case 4:
        LOWORD(a4) = *a1;
        v5 = LODWORD(a4);
        v10 = 65535.0;
        break;
      case 5:
        return *a1;
      default:
        return v4;
    }

LABEL_23:
    v11 = v5 / v10;
    if (a3)
    {
      return v11;
    }

    else
    {
      return v5;
    }
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = *a1;
      v6 = 1123942400;
    }

    else
    {
      if (a2 != 2)
      {
        return v4;
      }

      LOBYTE(a4) = *a1;
      v5 = LODWORD(a4);
      v6 = 1132396544;
    }

    v10 = *&v6;
    goto LABEL_23;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10132363C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101323650();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_1013236D8();
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v7);
  }

  v8 = [NSString stringWithUTF8String:"GLfloat CRLGLDataBufferGLfloatWithDataType(GLubyte *, CRLGLDataBufferDataType, BOOL)"];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
  [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:129 isFatal:0 description:"Unknown data type!"];

  return v4;
}

void sub_100179694(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001796D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017971C(float *a1, uint64_t a2, int a3, float a4)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v8 = 32767.0;
    }

    else
    {
      if (a2 != 4)
      {
        if (a2 == 5)
        {
          *a1 = a4;
        }

        return;
      }

      v8 = 65535.0;
    }

    v9 = a4 * v8;
    if (a3)
    {
      a4 = v9;
    }

    *a1 = llroundf(a4);
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v4 = 127.0;
    }

    else
    {
      if (a2 != 2)
      {
        return;
      }

      v4 = 255.0;
    }

    if (a3)
    {
      a4 = a4 * v4;
    }

    *a1 = llroundf(a4);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101323700();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101323714();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132379C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"void CRLGLDataBufferSetGLfloatWithDataType(GLubyte *, CRLGLDataBufferDataType, BOOL, GLfloat)"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:157 isFatal:0 description:"Unknown data type!"];
  }
}

void sub_1001798CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100179910(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

float sub_100179954(__int16 *a1, uint64_t a2, int a3, float a4)
{
  v4 = 0.0;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        if (a3)
        {
          return *a1 / 32767.0;
        }

        else
        {
          return *a1;
        }

      case 4:
        LOWORD(a4) = *a1;
        v9 = LODWORD(a4);
        if (a3)
        {
          return v9 / 65535.0;
        }

        else
        {
          return v9;
        }

      case 5:
        return *a1;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      if (a3)
      {
        return *a1 / 127.0;
      }

      else
      {
        return *a1;
      }
    }

    else if (a2 == 2)
    {
      LOBYTE(a4) = *a1;
      v5 = LODWORD(a4);
      if (a3)
      {
        return v5 / 255.0;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013237C4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013237D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101323860();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"CRLGLPoint2D CRLGLDataBufferGLPoint2DWithDataType(GLubyte *, CRLGLDataBufferDataType, BOOL)"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:181 isFatal:0 description:"Unknown data type!"];
  }

  return v4;
}

void sub_100179B68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100179BAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100179BF0(float *a1, uint64_t a2, int a3, float a4, float a5)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (a3)
      {
        a4 = a4 * 32767.0;
      }

      v11 = llroundf(a4);
      v12 = a5 * 32767.0;
      if (!a3)
      {
        v12 = a5;
      }

      v13 = v11 | (llroundf(v12) << 16);
    }

    else
    {
      if (a2 != 4)
      {
        if (a2 == 5)
        {
          *a1 = a4;
          a1[1] = a5;
        }

        return;
      }

      if (a3)
      {
        a4 = a4 * 65535.0;
      }

      v16 = llroundf(a4);
      v17 = a5 * 65535.0;
      if (!a3)
      {
        v17 = a5;
      }

      v13 = v16 | (llroundf(v17) << 16);
    }

    *a1 = v13;
    return;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      if (a3)
      {
        a4 = a4 * 127.0;
      }

      v14 = llroundf(a4);
      v15 = a5 * 127.0;
      if (!a3)
      {
        v15 = a5;
      }

      v7 = v14 | (llroundf(v15) << 8);
      goto LABEL_34;
    }

    if (a2 == 2)
    {
      if (a3)
      {
        a4 = a4 * 255.0;
      }

      v5 = llroundf(a4);
      v6 = a5 * 255.0;
      if (!a3)
      {
        v6 = a5;
      }

      v7 = v5 | (llroundf(v6) << 8);
LABEL_34:
      *a1 = v7;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101323888();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132389C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101323924();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"void CRLGLDataBufferSetGLPoint2DWithDataType(GLubyte *, CRLGLDataBufferDataType, BOOL, CRLGLPoint2D)"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:209 isFatal:0 description:"Unknown data type!"];
  }
}

void sub_100179E04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100179E48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

float sub_100179E8C(__int16 *a1, uint64_t a2, int a3, float a4)
{
  v4 = 0.0;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        if (a3)
        {
          return *a1 / 32767.0;
        }

        else
        {
          return *a1;
        }

      case 4:
        LOWORD(a4) = *a1;
        v9 = LODWORD(a4);
        if (a3)
        {
          return v9 / 65535.0;
        }

        else
        {
          return v9;
        }

      case 5:
        return *a1;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      if (a3)
      {
        return *a1 / 127.0;
      }

      else
      {
        return *a1;
      }
    }

    else if (a2 == 2)
    {
      LOBYTE(a4) = *a1;
      v5 = LODWORD(a4);
      if (a3)
      {
        return v5 / 255.0;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132394C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101323960();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013239E8();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"CRLGLPoint3D CRLGLDataBufferGLPoint3DWithDataType(GLubyte *, CRLGLDataBufferDataType, BOOL)"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:233 isFatal:0 description:"Unknown data type!"];
  }

  return v4;
}

void sub_10017A0F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017A138(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017A17C(uint64_t a1, uint64_t a2, int a3, float a4, float a5, float a6)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (a3)
      {
        a4 = a4 * 32767.0;
      }

      v15 = llroundf(a4);
      v16 = a5 * 32767.0;
      if (!a3)
      {
        v16 = a5;
      }

      v17 = llroundf(v16);
      v18 = a6 * 32767.0;
      if (!a3)
      {
        v18 = a6;
      }

      v19 = llroundf(v18);
      v20 = v15 | (v17 << 16);
    }

    else
    {
      if (a2 != 4)
      {
        if (a2 == 5)
        {
          *a1 = a4;
          *(a1 + 4) = a5;
          *(a1 + 8) = a6;
        }

        return;
      }

      if (a3)
      {
        a4 = a4 * 65535.0;
      }

      v25 = llroundf(a4);
      v26 = a5 * 65535.0;
      if (!a3)
      {
        v26 = a5;
      }

      v27 = llroundf(v26);
      v28 = a6 * 65535.0;
      if (!a3)
      {
        v28 = a6;
      }

      v19 = llroundf(v28);
      v20 = v25 | (v27 << 16);
    }

    *a1 = v20;
    *(a1 + 4) = v19;
    return;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      if (a3)
      {
        a4 = a4 * 127.0;
      }

      v21 = llroundf(a4);
      v22 = a5 * 127.0;
      if (!a3)
      {
        v22 = a5;
      }

      v23 = llroundf(v22);
      v24 = a6 * 127.0;
      if (!a3)
      {
        v24 = a6;
      }

      v10 = llroundf(v24);
      v11 = v21 | (v23 << 8);
      goto LABEL_40;
    }

    if (a2 == 2)
    {
      if (a3)
      {
        a4 = a4 * 255.0;
      }

      v6 = llroundf(a4);
      v7 = a5 * 255.0;
      if (!a3)
      {
        v7 = a5;
      }

      v8 = llroundf(v7);
      v9 = a6 * 255.0;
      if (!a3)
      {
        v9 = a6;
      }

      v10 = llroundf(v9);
      v11 = v6 | (v8 << 8);
LABEL_40:
      *(a1 + 2) = v10;
      *a1 = v11;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101323A10();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101323A24();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101323AAC();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"void CRLGLDataBufferSetGLPoint3DWithDataType(GLubyte *, CRLGLDataBufferDataType, BOOL, CRLGLPoint3D)"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:261 isFatal:0 description:"Unknown data type!"];
  }
}

void sub_10017A3CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017A410(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

int8x16_t sub_10017A454(int16x4_t *a1, uint64_t a2, unsigned int a3)
{
  result = xmmword_101462CFC;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v4 = vcvtq_f32_s32(vmovl_s16(*a1));
        v5 = 1191181824;
        break;
      case 4:
        v4 = vcvtq_f32_u32(vmovl_u16(*a1));
        v5 = 1199570688;
        break;
      case 5:
        return *a1->i8;
      default:
        return result;
    }

    return vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(a3)), 0x1FuLL)), vdivq_f32(v4, vdupq_n_s32(v5)), v4);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      result.i32[0] = a1->i32[0];
      v4 = vcvtq_f32_s32(vmovl_s16(*&vmovl_s8(*result.i8)));
      v5 = 1123942400;
    }

    else
    {
      if (a2 != 2)
      {
        return result;
      }

      result.i32[0] = a1->i32[0];
      v4 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*result.i8)));
      v5 = 1132396544;
    }

    return vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(a3)), 0x1FuLL)), vdivq_f32(v4, vdupq_n_s32(v5)), v4);
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101323AD4();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101323AE8();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101323B70();
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v6);
  }

  v7 = [NSString stringWithUTF8String:"CRLGLPoint4D CRLGLDataBufferGLPoint4DWithDataType(GLubyte *, CRLGLDataBufferDataType, BOOL)"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:285 isFatal:0 description:"Unknown data type!"];

  return xmmword_101462CFC;
}

void sub_10017A654(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017A698(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017A6DC(uint64_t a1, uint64_t a2, int a3, float a4, float a5, float a6, float a7)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        if (a3)
        {
          a4 = a4 * 32767.0;
        }

        v19 = llroundf(a4);
        v20 = a5 * 32767.0;
        if (!a3)
        {
          v20 = a5;
        }

        v21 = llroundf(v20);
        v22 = a6 * 32767.0;
        if (!a3)
        {
          v22 = a6;
        }

        v23 = llroundf(v22);
        v24 = a7 * 32767.0;
        if (!a3)
        {
          v24 = a7;
        }

        LODWORD(v9) = llroundf(v24);
        *a1 = (v23 << 32) | (v9 << 48) | (v21 << 16) | v19;
        break;
      case 4:
        v31 = &off_101462000;
        if (a3)
        {
          a4 = a4 * 65535.0;
        }

        LODWORD(v31) = llroundf(a4);
        v32 = a5 * 65535.0;
        if (!a3)
        {
          v32 = a5;
        }

        LODWORD(v7) = llroundf(v32);
        v33 = a6 * 65535.0;
        if (!a3)
        {
          v33 = a6;
        }

        LODWORD(v8) = llroundf(v33);
        v34 = a7 * 65535.0;
        if (!a3)
        {
          v34 = a7;
        }

        LODWORD(v9) = llroundf(v34);
        *a1 = (v8 << 32) | (v9 << 48) | (v7 << 16) | v31;
        break;
      case 5:
        *a1 = a4;
        *(a1 + 4) = a5;
        *(a1 + 8) = a6;
        *(a1 + 12) = a7;
        break;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      if (a3)
      {
        a4 = a4 * 127.0;
      }

      v25 = llroundf(a4);
      v26 = a5 * 127.0;
      if (!a3)
      {
        v26 = a5;
      }

      v27 = llroundf(v26);
      v28 = a6 * 127.0;
      if (!a3)
      {
        v28 = a6;
      }

      v29 = llroundf(v28);
      v30 = a7 * 127.0;
      if (!a3)
      {
        v30 = a7;
      }

      *a1 = (v29 << 16) | (llroundf(v30) << 24) | (v27 << 8) | v25;
    }

    else if (a2 == 2)
    {
      if (a3)
      {
        a4 = a4 * 255.0;
      }

      v10 = llroundf(a4);
      v11 = a5 * 255.0;
      if (!a3)
      {
        v11 = a5;
      }

      v12 = llroundf(v11);
      v13 = a6 * 255.0;
      if (!a3)
      {
        v13 = a6;
      }

      v14 = llroundf(v13);
      v15 = a7 * 255.0;
      if (!a3)
      {
        v15 = a7;
      }

      *a1 = (v14 << 16) | (llroundf(v15) << 24) | (v12 << 8) | v10;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101323B98();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101323BAC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101323C34();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v16);
    }

    v17 = [NSString stringWithUTF8String:"void CRLGLDataBufferSetGLPoint4DWithDataType(GLubyte *, CRLGLDataBufferDataType, BOOL, CRLGLPoint4D)"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
    [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:313 isFatal:0 description:"Unknown data type!"];
  }
}

void sub_10017A994(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017A9D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017B024(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017B068(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017B20C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10017B974(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017B9B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017B9FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017BA40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017BA84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017BAC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017C9D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017CA14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017CBE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017CC28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017D300(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017D344(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017D388(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017D3CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017D5A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017D5E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017DC90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017DCD4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017DD18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017DD5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017E38C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017E3D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017E640(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017E684(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017F15C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017F1A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017F7F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017F83C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017FED0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10017FF14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001802F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100180308(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100180320(uint64_t a1)
{
  v2 = [*(a1 + 32) substringWithRange:{*(a1 + 48), *(a1 + 56)}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10018050C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001805AC;
  v4[3] = &unk_101842800;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 enumerateSmartFieldsWithAttributeKind:v2 inRange:*(a1 + 56) usingBlock:{*(a1 + 64), v4}];
}

void sub_1001805AC(uint64_t a1, void *a2)
{
  v7 = 0;
  v3 = a2;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v7);
  if (v7 == 1)
  {
    abort();
  }

  v6 = v5;

  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100180B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100180B94(uint64_t a1)
{
  v5 = [*(a1 + 32) crlaxTarget];
  v2 = [v5 textRangeForParagraphAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v2;
  *(v3 + 40) = v4;
}

void sub_100180CBC(uint64_t a1)
{
  v2 = [*(a1 + 32) crlaxTarget];
  *(*(*(a1 + 40) + 8) + 24) = [v2 characterAtIndex:*(a1 + 48)];
}

void sub_100181554(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100181598(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001815DC(id a1)
{
  v1 = [[NSMapTable alloc] initWithKeyOptions:517 valueOptions:512 capacity:0];
  v2 = qword_101A34758;
  qword_101A34758 = v1;
}

void sub_100181628(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018166C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018197C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001819C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100181A04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100181A48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100181D08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100181D4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100181D90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100181DD4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1001821F8(char *a1, uint64_t a2)
{
  for (result = 0xCBF29CE484222325; a2; --a2)
  {
    v4 = *a1++;
    result = 0x100000001B3 * (result ^ v4);
  }

  return result;
}

uint64_t sub_1001825F8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (a2 < 0 || a3 < 0 || (v7 = v5[1], v7 <= a2) || v5[2] <= a3)
  {
    v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101324E84();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v15 = v6[1];
      v16 = v6[2];
      *buf = 67110914;
      v18 = v9;
      v19 = 2082;
      v20 = "CRLInstantAlphaPixel getPixel(CRLInstantAlphaImage *__strong, NSInteger, NSInteger)";
      v21 = 2082;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaImage.h";
      v23 = 1024;
      v24 = 36;
      v25 = 2048;
      v26 = a2;
      v27 = 2048;
      v28 = a3;
      v29 = 2048;
      v30 = v15;
      v31 = 2048;
      v32 = v16;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad request for get pixel in IA: (%li, %li) for image of size (%li, %li)", buf, 0x4Au);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101324E98();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v11);
    }

    v12 = [NSString stringWithUTF8String:"CRLInstantAlphaPixel getPixel(CRLInstantAlphaImage *__strong, NSInteger, NSInteger)"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaImage.h"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:36 isFatal:0 description:"bad request for get pixel in IA: (%li, %li) for image of size (%li, %li)", a2, a3, v6[1], v6[2]];

    v8 = 0;
  }

  else
  {
    v8 = *(v5[3] + 4 * v7 * a3 + 4 * a2);
  }

  return v8;
}

void sub_100182874(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 32) + 8) >= 1)
  {
    v4 = 0;
    while (1)
    {
      v5 = *(a1 + 40);
      if (!v5)
      {
        goto LABEL_15;
      }

      v6 = v5;
      v7 = v6;
      if (a2 < 0 || v6[1] <= v4 || v6[2] <= a2)
      {
        break;
      }

      v8 = *(v6[4] + v6[3] * a2 + (v4 >> 3));

      if (((v8 << (v4 & 7)) & 0x80) == 0)
      {
        goto LABEL_15;
      }

      v9 = *(a1 + 48);
      v10 = v4;
      v11 = a2;
      v12 = 1;
LABEL_29:
      sub_100182C84(v9, v10, v11, v12);
      if (*(*(a1 + 32) + 8) <= ++v4)
      {
        return;
      }
    }

    v13 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101324EC0();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v25 = v7[1];
      v26 = v7[2];
      *buf = 67110914;
      v30 = v13;
      v31 = 2082;
      v32 = "NSInteger bitValue(CRLInstantAlphaBinaryBitmap * _Nonnull __strong, const NSInteger, const NSInteger)";
      v33 = 2082;
      v34 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaBinaryBitmap.h";
      v35 = 1024;
      v36 = 52;
      v37 = 2048;
      v38 = v4;
      v39 = 2048;
      v40 = a2;
      v41 = 2048;
      v42 = v25;
      v43 = 2048;
      v44 = v26;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad request for bit value in IA: (%li, %li) for image of size (%li, %li)", buf, 0x4Au);
      if (qword_101AD5A10 != -1)
      {
        sub_101324EE8();
      }
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v27 = v15;
      v28 = +[CRLAssertionHandler packedBacktraceString];
      *buf = 67109378;
      v30 = v13;
      v31 = 2114;
      v32 = v28;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
    }

    v16 = [NSString stringWithUTF8String:"NSInteger bitValue(CRLInstantAlphaBinaryBitmap * _Nonnull __strong, const NSInteger, const NSInteger)"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaBinaryBitmap.h"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:52 isFatal:0 description:"bad request for bit value in IA: (%li, %li) for image of size (%li, %li)", v4, a2, v7[1], v7[2]];

LABEL_15:
    v18 = sub_1001825F8(*(a1 + 32), v4, a2);
    v19 = *(a1 + 64);
    v9 = *(a1 + 48);
    v20 = *(a1 + 56);
    LODWORD(v21) = HIBYTE(v19) - HIBYTE(v18);
    if (v21 >= 0)
    {
      v21 = v21;
    }

    else
    {
      v21 = HIBYTE(v18) - HIBYTE(v19);
    }

    if (v20 >= v21 && ((LODWORD(v22) = BYTE1(v19) - BYTE1(v18), (v22 & 0x80000000) == 0) ? (v22 = v22) : (v22 = BYTE1(v18) - BYTE1(v19)), v20 >= v22 && ((LODWORD(v23) = BYTE2(v19) - BYTE2(v18), (v23 & 0x80000000) == 0) ? (v23 = v23) : (v23 = BYTE2(v18) - BYTE2(v19)), v20 >= v23)))
    {
      LODWORD(v24) = *(a1 + 64) - v18;
      if ((v24 & 0x80000000) == 0)
      {
        v24 = v24;
      }

      else
      {
        v24 = -v24;
      }

      v12 = v20 >= v24;
    }

    else
    {
      v12 = 0;
    }

    v10 = v4;
    v11 = a2;
    goto LABEL_29;
  }
}

void sub_100182C84(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = v7;
  if ((a2 & 0x8000000000000000) != 0 || a3 < 0 || v7[1] <= a2 || v7[2] <= a3)
  {
    v12 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101324F10();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v17 = v8[1];
      v18 = v8[2];
      *buf = 67110914;
      v20 = v12;
      v21 = 2082;
      v22 = "void setBit(CRLInstantAlphaBinaryBitmap * _Nonnull __strong, NSInteger, NSInteger, NSInteger)";
      v23 = 2082;
      v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaBinaryBitmap.h";
      v25 = 1024;
      v26 = 67;
      v27 = 2048;
      v28 = a2;
      v29 = 2048;
      v30 = a3;
      v31 = 2048;
      v32 = v17;
      v33 = 2048;
      v34 = v18;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad request for set bit value in IA: (%li, %li) for image of size (%li, %li)", buf, 0x4Au);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101324F24();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v14);
    }

    v15 = [NSString stringWithUTF8String:"void setBit(CRLInstantAlphaBinaryBitmap * _Nonnull __strong, NSInteger, NSInteger, NSInteger)"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaBinaryBitmap.h"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:67 isFatal:0 description:"bad request for set bit value in IA: (%li, %li) for image of size (%li, %li)", a2, a3, v8[1], v8[2]];
  }

  else
  {
    v9 = v7[4] + v7[3] * a3;
    v10 = *(v9 + (a2 >> 3));
    v11 = v10 & (-129 >> (a2 & 7));
    if (a4)
    {
      LOBYTE(v11) = v10 | (0x80u >> (a2 & 7));
    }

    *(v9 + (a2 >> 3)) = v11;
  }
}

void sub_1001832E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10018330C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100183324(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v9 = a3;
  v10 = v9;
  if (!a2 || v9)
  {
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Can’t Remove Background" value:0 table:0];

    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"The background can’t be removed from this image." value:0 table:0];

    if (v10)
    {
      v32 = NSUnderlyingErrorKey;
      v33 = v10;
      v16 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    }

    else
    {
      v16 = 0;
    }

    v17 = [NSError crl_errorWithDomain:@"com.apple.freeform" code:v10 == 0 alertTitle:v13 alertMessage:v15 userInfo:v16];
    if (v10)
    {
      if (qword_101AD5A08 != -1)
      {
        sub_101324F9C();
      }

      v18 = off_1019EDA60;
      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
      {
        v19 = v18;
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = [v10 domain];
        v24 = 138544130;
        v25 = v21;
        v26 = 2114;
        v27 = v22;
        v28 = 2048;
        v29 = [v10 code];
        v30 = 2112;
        v31 = v10;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Remove background from image failed with error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", &v24, 0x2Au);
      }
    }

    else
    {
      if (qword_101AD5A08 != -1)
      {
        sub_101324F74();
      }

      v23 = off_1019EDA60;
      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Remove background from image failed and provided no error.", &v24, 2u);
      }
    }

    [*(*(*(a1 + 40) + 8) + 40) setError:v17];
  }

  else
  {
    v11 = a4 / CGImageGetWidth(*(a1 + 48));
    [*(*(*(a1 + 40) + 8) + 40) setOffset:{v11, a5 / CGImageGetHeight(*(a1 + 48))}];
    [*(*(*(a1 + 40) + 8) + 40) setImage:a2];
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100183638(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10018367C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1001836C0(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_100183754(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100183798(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001837DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100183820(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100183864(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001838A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100183930(id a1)
{
  v1 = objc_alloc_init(CRLLogHelper);
  v2 = qword_101A34778;
  qword_101A34778 = v1;
}

void sub_100183B18(id a1)
{
  v1 = sub_1004BD804("CRLPerformanceCat");
  v2 = off_1019EDA88;
  off_1019EDA88 = v1;
}

void sub_100183B58(id a1)
{
  v1 = sub_1004BD804("CRLPerformanceCat");
  v2 = off_1019EDA88;
  off_1019EDA88 = v1;
}

void sub_100184050(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100184094(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100184C9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100184CE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100185D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100185D48(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = CGImageRetain([*(a1 + 32) CGImageForSize:0 inContext:*(a1 + 40) orContentsScaleProvider:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40)}]);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100185E38;
  v2[3] = &unk_101842C40;
  v2[4] = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v6;
  dispatch_async(&_dispatch_main_q, v2);

  _Block_object_dispose(v6, 8);
}

void sub_100185E38(uint64_t a1)
{
  if ([*(a1 + 32) directlyManagesLayerContent])
  {
    v2 = [*(a1 + 32) movieItem];
    v3 = [v2 posterImageAssetPayload];
    v4 = [*(a1 + 40) imageData];

    if (v3 == v4)
    {
      [*(a1 + 48) setContents:*(*(*(a1 + 56) + 8) + 24)];
    }
  }

  v5 = *(*(*(a1 + 56) + 8) + 24);

  CGImageRelease(v5);
}

void sub_100187430(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_101AD5CA8 != -1)
  {
    sub_1013251EC();
  }

  v4 = off_1019EFDC0;
  if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 240);
    v6 = v4;
    v7 = [v5 isPlaying];
    v8 = "not playing";
    if (v7)
    {
      v8 = "playing";
    }

    v9 = 136315138;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "delay timer fired. playback in state %s", &v9, 0xCu);
  }

  [*(a1 + 32) p_invalidateHideControlsTimeoutTimer];
  [*(a1 + 32) p_hideControls];
}

void sub_100187550(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_100188138(uint64_t a1)
{
  [*(a1 + 32) p_startOrStopLoopingStickerIfNecessary];
  v2 = *(a1 + 32);
  v3 = v2[289];
  v4 = [v2 p_playButtonKnob];
  [v4 setEnabled:v3];

  [*(a1 + 32) p_updatePlayButtonVisibility];
  if ([*(a1 + 32) isSelected] && objc_msgSend(*(a1 + 32), "p_shouldPlayerControllerExistThroughoutSelection"))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v6 = sub_100188234;
    v7 = &unk_10183AB38;
    v8 = *(a1 + 32);
    if (+[NSThread isMainThread])
    {
      v6(block);
    }

    else
    {
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

id sub_100188234(uint64_t a1)
{
  result = [*(a1 + 32) hasBeenRemoved];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) p_setupPlayerControllerIfNecessary];
    v3 = *(a1 + 32);

    return [v3 p_startOrStopLoopingStickerIfNecessary];
  }

  return result;
}

void sub_100188288(uint64_t a1)
{
  if (([*(a1 + 32) hasBeenRemoved] & 1) == 0)
  {
    v2 = dispatch_semaphore_create(0);
    v3 = [AVAsset crl_playableKeysWithKeys:&off_1018E1140];
    v4 = *(a1 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100188394;
    v8[3] = &unk_101842D00;
    v5 = v2;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = *(a1 + 48);
    [v4 loadValuesAsynchronouslyForKeys:v3 completionHandler:v8];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void sub_100188394(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));
  Main = CFRunLoopGetMain();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100188468;
  block[3] = &unk_101842CD8;
  v3 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v5 = v3;
  v6 = *(a1 + 56);
  CFRunLoopPerformBlock(Main, kCFRunLoopCommonModes, block);
  CFRunLoopWakeUp(Main);
}

uint64_t sub_100188468(uint64_t a1)
{
  result = [*(a1 + 32) hasBeenRemoved];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 40) statusOfValueForKey:@"playable" error:0];
    if (v3 != 4)
    {
      *(*(a1 + 32) + 288) = 1;
      if (v3 == 2)
      {
        v4 = [*(a1 + 40) crl_isPlayable];
      }

      else
      {
        v4 = 0;
      }

      *(*(a1 + 32) + 289) = v4;
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 280);
    if (v6 == *(a1 + 40))
    {
      *(v5 + 280) = 0;
    }

    v7 = *(*(a1 + 48) + 16);

    return v7();
  }

  return result;
}

void sub_100188C84(uint64_t a1)
{
  v2 = [*(a1 + 32) interactiveCanvasController];
  [v2 presentError:*(a1 + 40) completionHandler:0];
}

void sub_100189834(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100189878(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001898BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100189900(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100189944(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100189988(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001899CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100189A10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100189A54(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_100189BD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100189C1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018A0A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018A0EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018A130(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_10018A5C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018A60C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018AA88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018AACC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018AB10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 needsDownload])
  {
    objc_initWeak(&location, *(a1 + 32));
    objc_initWeak(&from, v4);
    v5 = *(a1 + 40);
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_10018AC40;
    v9 = &unk_101842F68;
    objc_copyWeak(&v10, &location);
    objc_copyWeak(&v11, &from);
    [v4 addDownloadObserverWithIdentifier:v5 options:2 handler:&v6];
    [v4 downloadIfNeeded];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void sub_10018AC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_10018AC40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained p_handleAssetPreparationCompletionForAsset:v2];
}

void sub_10018B3CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018B410(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018B6D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018B714(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018B758(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018B79C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018BA68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018BAAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018BAF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018BB34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018BEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10018BED4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10018BEEC(uint64_t a1)
{
  v5 = +[UIColor secondaryLabelColor];
  v2 = [CRLColor colorWithUIColor:v5];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10018C6BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018C700(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018C744(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018C788(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018C7CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018C810(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018CFA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018CFE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018D028(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = *(a1 + 32);
  if ((*(v10 + 88) & 1) == 0)
  {
    if (v8)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101325FCC();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101325FE0(v11, v9);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013260C8();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v12);
      }

      v13 = [NSString stringWithUTF8String:"[CRLBufferedReadChannel _resetStreamReadChannelIfNeededForOffset:length:]_block_invoke"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLBufferedReadChannel.m"];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v9 domain];
      +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v13, v14, 194, 0, "Error reading from filter CRLStreamReadChannel: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v16, v17, [v9 code], v9);

      a2 = 1;
    }

    else if (v7)
    {
      *(v10 + 112) += dispatch_data_get_size(v7);
      v18 = *(a1 + 32);
      v19 = *(v18 + 120);
      if (v19)
      {
        concat = dispatch_data_create_concat(v19, v7);
        v21 = *(a1 + 32);
        v22 = *(v21 + 120);
        *(v21 + 120) = concat;
      }

      else
      {
        v23 = v7;
        v22 = *(v18 + 120);
        *(v18 + 120) = v23;
      }
    }

    *(*(a1 + 32) + 88) = a2;
  }
}

void sub_10018D224(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018D268(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018D398(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 48))
  {
    v3 = +[NSThread currentThread];
    v4 = [v3 threadDictionary];
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"CRLBufferedReadChannelInvokingHandler"];

    (*(a1[5] + 16))();
    v10 = +[NSThread currentThread];
    v5 = [v10 threadDictionary];
    [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:@"CRLBufferedReadChannelInvokingHandler"];
  }

  else
  {
    dispatch_suspend(*(v2 + 8));
    v6 = a1[6];
    v7 = a1[7];
    v8 = a1[4];
    v9 = a1[5];

    [v8 _readFromOffset:v6 length:v7 handler:v9];
  }
}

void sub_10018D740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10018D758(void *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = a1[4];
  if (*(v10 + 48))
  {
    goto LABEL_50;
  }

  if (*(v10 + 80))
  {
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013260F0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101326104();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013261A4();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLBufferedReadChannel _readFromOffset:length:handler:]_block_invoke"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLBufferedReadChannel.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:281 isFatal:0 description:"The source handler for the stream read channel should not be nil"];

    if (!v9)
    {
      v9 = [NSError crl_fileReadUnknownErrorWithUserInfo:0];
      if (!v9)
      {
LABEL_4:
        if (v7)
        {
          size = dispatch_data_get_size(v7);
        }

        else
        {
          size = 0;
        }

        *(*(a1[6] + 8) + 24) += size;
        if (*(*(a1[6] + 8) + 24) > a1[7])
        {
          v26 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101326304();
          }

          v27 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v37 = a1[7];
            v38 = *(*(a1[6] + 8) + 24);
            *buf = 67110402;
            v52 = v26;
            v53 = 2082;
            v54 = "[CRLBufferedReadChannel _readFromOffset:length:handler:]_block_invoke";
            v55 = 2082;
            v56 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLBufferedReadChannel.m";
            v57 = 1024;
            v58 = 298;
            v59 = 2048;
            v60 = v38;
            v61 = 2048;
            v62 = v37;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Received more data than requested: %zu instead of %zu", buf, 0x36u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10132632C();
          }

          v28 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v28);
          }

          v29 = [NSString stringWithUTF8String:"[CRLBufferedReadChannel _readFromOffset:length:handler:]_block_invoke"];
          v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLBufferedReadChannel.m"];
          [CRLAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:298 isFatal:0 description:"Received more data than requested: %zu instead of %zu", *(*(a1[6] + 8) + 24), a1[7]];
        }

        if (a2)
        {
          v31 = *(*(a1[6] + 8) + 24) < a1[7];
          if (v7)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v31 = 0;
          if (v7)
          {
            goto LABEL_41;
          }
        }

        if (!v31)
        {
LABEL_43:
          if (v31)
          {
            v33 = a1[4];
            v34 = *(v33 + 80);
            *(v33 + 80) = 0;
          }

          if (a2)
          {
            *(a1[4] + 32) += *(*(a1[6] + 8) + 24);
            v35 = a1[4];
            v36 = v35[5];
            if (v36 != -1)
            {
              v35[5] = v36 - *(*(a1[6] + 8) + 24);
              v35 = a1[4];
            }

            [v35 _readFromOffset:a1[8] length:a1[9] handler:a1[5]];
          }

          v9 = 0;
          goto LABEL_50;
        }

LABEL_41:
        v32 = *(a1[4] + 80);
        if (!v32)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101326354();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10132637C();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101326410();
          }

          v39 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v39);
          }

          sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v40, v41, v42, v43, v44, v45, v46, "[CRLBufferedReadChannel _readFromOffset:length:handler:]_block_invoke");
          v47 = [NSString stringWithUTF8String:"[CRLBufferedReadChannel _readFromOffset:length:handler:]_block_invoke"];
          v48 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLBufferedReadChannel.m"];
          [CRLAssertionHandler handleFailureInFunction:v47 file:v48 lineNumber:303 isFatal:1 description:"invalid nil value for '%{public}s'", "self->_streamReadChannelSourceHandler", "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLBufferedReadChannel.m", 303, "self->_streamReadChannelSourceHandler"];

          SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v49, v50);
          abort();
        }

        (*(v32 + 16))(v32, v31, v7, 0);
        goto LABEL_43;
      }
    }
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013261CC();
  }

  v15 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013261F4(v15, v9);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_1013262DC();
  }

  v16 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v16);
  }

  v17 = [NSString stringWithUTF8String:"[CRLBufferedReadChannel _readFromOffset:length:handler:]_block_invoke"];
  v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLBufferedReadChannel.m"];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = [v9 domain];
  +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v17, v18, 289, 0, "Error reading from source CRLReadChannel: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v20, v21, [v9 code], v9);

  v22 = +[NSThread currentThread];
  v23 = [v22 threadDictionary];
  [v23 setObject:&__kCFBooleanTrue forKeyedSubscript:@"CRLBufferedReadChannelInvokingHandler"];

  (*(a1[5] + 16))();
  v24 = +[NSThread currentThread];
  v25 = [v24 threadDictionary];
  [v25 setObject:&__kCFBooleanFalse forKeyedSubscript:@"CRLBufferedReadChannelInvokingHandler"];

  objc_storeStrong((a1[4] + 48), v9);
  dispatch_resume(*(a1[4] + 8));
LABEL_50:
}

void sub_10018DE8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018DED0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018DF14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018DF58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018DF9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018DFE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018E024(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018E068(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018E31C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018E360(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018E5C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018E60C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018E894(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018E8D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018EB70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018EBB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

CGPath *sub_10018EE34(int a1, int a2, double a3, double a4, double a5, double a6, long double a7, double a8, double a9)
{
  v16 = (a3 - a8) * 0.5;
  v17 = (a4 - a9) * 0.5;
  angle = fmod(a7, 360.0) * 3.14159265 / 180.0;
  v18 = __sincos_stret(angle);
  v19 = v18.__sinval * v17 + v18.__cosval * v16;
  v20 = v18.__cosval * v17 - v18.__sinval * v16;
  v21 = fabs(a5);
  v22 = fabs(a6);
  v23 = a5 * a5;
  v24 = a6 * a6;
  v25 = v19 * v19 / (a5 * a5) + v20 * v20 / (a6 * a6);
  if (v25 > 1.0)
  {
    v26 = sqrt(v25);
    v21 = v21 * v26;
    v22 = v22 * v26;
    v23 = v21 * v21;
    v24 = v22 * v22;
  }

  v27 = (v23 * v24 - v23 * (v20 * v20) - v24 * (v19 * v19)) / (v19 * v19 * v24 + v23 * (v20 * v20));
  if (v27 < 0.0)
  {
    v27 = 0.0;
  }

  v28 = sqrt(v27);
  if (a1 == a2)
  {
    v28 = -v28;
  }

  v29 = v20 * v21 / v22 * v28;
  v30 = -(v22 * v19) / v21 * v28;
  v42 = (a4 + a9) * 0.5 + v18.__cosval * v30 + v18.__sinval * v29;
  v44 = (a3 + a8) * 0.5 + v30 * -v18.__sinval + v18.__cosval * v29;
  v31 = (v20 - v30) / v22;
  v32 = (-v19 - v29) / v21;
  v33 = (-v20 - v30) / v22;
  v34 = acos((v19 - v29) / v21 / sqrt(v31 * v31 + (v19 - v29) / v21 * ((v19 - v29) / v21)));
  if (v31 < 0.0)
  {
    v34 = -v34;
  }

  v35 = v34 * 180.0 / 3.14159265;
  v36 = acos(v32 / sqrt(v33 * v33 + v32 * v32));
  if (v33 < 0.0)
  {
    v36 = -v36;
  }

  v37 = fmod(v36 * 180.0 / 3.14159265, 360.0);
  v38 = fmod(v35, 360.0);
  Mutable = CGPathCreateMutable();
  v40 = *&CGAffineTransformIdentity.c;
  *&m.a = *&CGAffineTransformIdentity.a;
  *&m.c = v40;
  *&m.tx = *&CGAffineTransformIdentity.tx;
  *&v47.a = *&m.a;
  *&v47.c = v40;
  *&v47.tx = *&m.tx;
  CGAffineTransformTranslate(&m, &v47, v44, v42);
  v46 = m;
  CGAffineTransformRotate(&v47, &v46, angle);
  m = v47;
  v46 = v47;
  CGAffineTransformScale(&v47, &v46, 1.0, v22 / v21);
  m = v47;
  v46 = v47;
  CGAffineTransformTranslate(&v47, &v46, -v44, -v42);
  m = v47;
  CGPathAddArc(Mutable, &m, v44, v42, v21, v38 * 3.14159265 / 180.0, v37 * 3.14159265 / 180.0, a2 != 1);
  return Mutable;
}

CGPath *sub_10018F158(const CGPath *a1, const CGPath *a2, uint64_t a3, uint64_t a4)
{
  MutableCopy = CGPathCreateMutableCopy(a1);
  if (a3 < a4)
  {
    do
    {
      v8 = sub_100404F68(a2, a3, x);
      if (v8 > 2)
      {
        if (v8 == 3)
        {
          CGPathAddCurveToPoint(MutableCopy, 0, x[0], x[1], x[2], x[3], x[4], x[5]);
        }

        else if (v8 == 4)
        {
          CGPathCloseSubpath(MutableCopy);
        }
      }

      else if (v8)
      {
        if (v8 == 1)
        {
          CGPathAddLineToPoint(MutableCopy, 0, x[0], x[0]);
        }
      }

      else
      {
        CGPathMoveToPoint(MutableCopy, 0, x[0], x[1]);
      }

      ++a3;
    }

    while (a4 != a3);
  }

  return MutableCopy;
}

void sub_10018F260(double *a1, uint64_t a2, uint64_t a3, int8x16_t a4, double a5, int8x16_t a6, double a7, double a8, double a9)
{
  if (a3 >= 1)
  {
    v9 = a3;
    *a4.i64 = a8 * a9;
    *a4.i32 = a8 * a9;
    *a6.i32 = *a4.i32 + (truncf(*a4.i32 * 0.5) * -2.0);
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    v13 = (*vbslq_s8(v12, a6, a4).i32 * 0.5);
    v14 = (a2 + 8);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      if (a1)
      {
        v17 = a1[4] + v16 * a1[2] + *a1 * v15;
        v16 = a1[5] + v16 * a1[3] + a1[1] * v15;
        v15 = v17;
      }

      *(v14 - 1) = sub_10012218C(v15, v16, a9) + v13;
      *v14 = v18 + v13;
      v14 += 2;
      --v9;
    }

    while (v9);
  }
}

void sub_10018F324(double *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v18[0] = CGRectGetMinX(*&a2);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  v18[1] = CGRectGetMinY(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  v18[2] = CGRectGetMaxX(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  *v14.i64 = CGRectGetMaxY(v21);
  v18[3] = v14.i64[0];
  sub_10018F260(a1, v18, 2, v14, v15, v16, v17, a6, a7);
}

CGPath *sub_10018F420(double *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v23[0] = CGRectGetMinX(*&a2);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  v23[1] = CGRectGetMinY(v24);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  v23[2] = CGRectGetMaxX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  v23[3] = CGRectGetMinY(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  v23[4] = CGRectGetMaxX(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  v23[5] = CGRectGetMaxY(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  v23[6] = CGRectGetMinX(v29);
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  *v14.i64 = CGRectGetMaxY(v30);
  v23[7] = v14.i64[0];
  sub_10018F260(a1, v23, 4, v14, v15, v16, v17, a6, a7);
  Mutable = CGPathCreateMutable();
  for (i = 0; i != 8; i += 2)
  {
    v20 = *&v23[i];
    v21 = *&v23[i + 1];
    if (i * 8)
    {
      CGPathAddLineToPoint(Mutable, 0, v20, v21);
    }

    else
    {
      CGPathMoveToPoint(Mutable, 0, v20, v21);
    }
  }

  CGPathCloseSubpath(Mutable);
  return Mutable;
}

uint64_t sub_10018F5BC(double *a1, double a2, double a3, double a4, double a5)
{
  v5 = (a3 - a2) * 3.0;
  v6 = -(v5 - (a4 - a3) * 3.0);
  v7 = a5 - v6 - v5 - a2;
  v8 = v7 * 3.0;
  v9 = v5 * (v7 * 3.0);
  v10 = 0.0;
  if (vabdd_f64(v6 * v6, v9) > (v6 * v6 + fabs(v9)) * 0.0001)
  {
    v10 = v6 * v6 - v9;
  }

  if (v10 < 0.0)
  {
    return 0;
  }

  v12 = sqrt(v10);
  v13 = -1.0;
  if (v6 < 0.0)
  {
    v13 = 1.0;
  }

  v14 = -(v6 - v13 * v12);
  v15 = v8 * 0.0001;
  if (v14 < v8 * 0.9999 && v7 > 0.0 && v15 < v14 || (v11 = 0, v14 < v15) && v7 < 0.0 && v8 * 0.9999 < v14)
  {
    *a1 = v14 / v8;
    v11 = 1;
  }

  v16 = v14 * 0.0001;
  if (v5 < v14 * 0.9999 && (v14 > 0.0 ? (v17 = v16 < v5) : (v17 = 0), v17) || v5 < v16 && (v14 < 0.0 ? (v18 = v14 * 0.9999 < v5) : (v18 = 0), v18))
  {
    a1[v11++] = v5 / v14;
  }

  return v11;
}

void sub_10018F6CC(CGPathRef path, unsigned int a2, int a3, double a4, double a5)
{
  if (a4 < 0.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101326558();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132656C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013265F4();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"CGRect CRLPathBoundsIncludingStrokeWithParameters(CGPathRef, CGFloat, CGFloat, CGLineCap, CGLineJoin)"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CGPath_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:689 isFatal:0 description:"lineWidth should not be negative."];

    if (!CGPathIsEmpty(path))
    {
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  if (CGPathIsEmpty(path))
  {
LABEL_13:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132661C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101326644();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013266CC();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v13);
    }

    v14 = [NSString stringWithUTF8String:"CGRect CRLPathBoundsIncludingStrokeWithParameters(CGPathRef, CGFloat, CGFloat, CGLineCap, CGLineJoin)"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CGPath_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:694 isFatal:0 description:"Can not calculate the stroked bounds of an empty path."];

    return;
  }

  if (a4 == 0.0)
  {
LABEL_23:
    CGPathGetPathBoundingBox(path);
    return;
  }

  CGPathGetCurrentPoint(path);
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v16, v17);
  v56 = 0u;
  v57 = 0;
  v55 = 0u;
  v54 = 0u;
  v18 = a4 * 0.5;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v43 = 0;
  v42 = 0u;
  v44 = CGPointZero;
  v23 = v44;
  v43 = v44;
  v40 = v19;
  v41 = v18;
  info = v20;
  v38 = v21;
  v39 = v22;
  LODWORD(v42) = a3;
  *(&v42 + 1) = a5;
  CGPathApply(path, &info, sub_10018FB90);
  if (a2)
  {
    v27 = 0;
    v36 = 0;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v25 = v23;
    v26 = v23;
    v24[3] = v40;
    *&v24[4] = v18;
    v24[0] = info;
    v24[1] = v38;
    v24[2] = v39;
    v24[5] = a2;
    CGPathApply(path, v24, sub_10018FD40);
    sub_10018FF00(v24);
  }
}

void sub_10018FA80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018FAC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018FB08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018FB4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10018FB90(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if ((*a2 - 1) >= 3)
  {
    if (v4 == 4)
    {
      if (*(a1 + 88))
      {
        if (sub_10011F068(*(a1 + 72), *(a1 + 80), *(a1 + 56), *(a1 + 64)) > 0.00000001)
        {
          v17 = a1 + 56;
          v16 = 1;
          sub_100190448(a1, &v16);
        }

        v15 = *(a1 + 232);
        v17 = a1 + 240;
        v16 = v15;
        sub_100190448(a1, &v16);
      }

      *(a1 + 88) = 0;
      v14 = *(a1 + 56);
    }

    else
    {
      if (v4)
      {
        return;
      }

      *(a1 + 88) = 0;
      v13 = *(a2 + 8);
      *(a1 + 56) = *v13;
      v14 = *v13;
    }

    *(a1 + 72) = v14;
  }

  else
  {
    if (*(a1 + 88))
    {
      goto LABEL_8;
    }

    v5 = 0;
    *(a1 + 232) = v4;
    v6 = dword_101462C50[v4];
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = 16 * v6;
    do
    {
      *(a1 + 240 + v5) = *(*(a2 + 8) + v5);
      v5 += 16;
    }

    while (v7 != v5);
    v4 = *a2;
    if (*a2 != 4)
    {
LABEL_8:
      v8 = dword_101462C50[v4];
      v9 = *(a1 + 72);
      v10 = *(a1 + 80);
      if (v8 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v8;
      }

      for (i = (*(a2 + 8) + 8); sub_10011F068(*(i - 1), *i, v9, v10) <= 0.00000001; i += 2)
      {
        if (!--v11)
        {
          return;
        }
      }

      sub_100190448(a1, a2);
    }
  }
}

void sub_10018FD40(uint64_t a1, int *a2)
{
  v4 = *a2;
  if ((*a2 - 1) >= 3)
  {
    if (v4 == 4)
    {
      *(a1 + 80) = 0;
      *(a1 + 64) = *(a1 + 48);
    }

    else if (!v4)
    {
      sub_10018FF00(a1);
      *(a1 + 80) = 0;
      v11 = *(a2 + 1);
      *(a1 + 64) = *v11;
      *(a1 + 48) = *v11;
    }
  }

  else
  {
    v5 = (a1 + 64);
    v6 = *(a1 + 64);
    *(a1 + 81) = 1;
    v7 = dword_101462C50[v4];
    v8 = *(a1 + 72);
    if (v7 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7;
    }

    for (i = (*(a2 + 1) + 8); sub_10011F068(*(i - 1), *i, v6, v8) <= 0.00000001; i += 2)
    {
      if (!--v9)
      {
        return;
      }
    }

    if ((*(a1 + 80) & 1) == 0)
    {
      *(a1 + 80) = 1;
      *(a1 + 84) = v4;
      *(a1 + 88) = *v5;
      v12 = *a2;
      if (v12 == 4)
      {
        v4 = 4;
      }

      else
      {
        v13 = 0;
        v14 = dword_101462C50[v12];
        if (v14 <= 1)
        {
          v14 = 1;
        }

        v15 = 16 * v14;
        do
        {
          *(a1 + 104 + v13) = *(*(a2 + 1) + v13);
          v13 += 16;
        }

        while (v15 != v13);
        v4 = *a2;
      }
    }

    *(a1 + 152) = v4;
    *(a1 + 160) = *v5;
    v16 = *a2;
    v17 = dword_101462C50[v16];
    if (v16 != 4)
    {
      v18 = 0;
      if (v17 <= 1)
      {
        v17 = 1;
      }

      v19 = 16 * v17;
      do
      {
        *(a1 + 176 + v18) = *(*(a2 + 1) + v18);
        v18 += 16;
      }

      while (v19 != v18);
      v17 = dword_101462C50[*a2];
    }

    *v5 = *(*(a2 + 1) + 16 * v17 - 16);
  }
}

void sub_10018FF00(uint64_t a1)
{
  if (*(a1 + 80) != 1)
  {
    if (*(a1 + 81) != 1)
    {
      return;
    }

    v37 = *(a1 + 40);
    if (v37 == 1)
    {
      v38 = *(a1 + 32);
    }

    else
    {
      if (v37 != 2)
      {
        return;
      }

      v38 = *(a1 + 32) * 1.41421356;
    }

    v83 = v38 + v38;
    v84 = *(a1 + 64);
    v85 = *(a1 + 72);
    goto LABEL_23;
  }

  v3 = *(a1 + 88);
  v2 = *(a1 + 96);
  v4 = (a1 + 160 + 16 * dword_101462C50[*(a1 + 152)]);
  v6 = *v4;
  v5 = v4[1];
  v7 = *(a1 + 40);
  if (v7 == 1)
  {
    v93.origin.x = sub_10011EC70(*(a1 + 88), *(a1 + 96), *(a1 + 32) + *(a1 + 32));
    v93.origin.y = v39;
    v93.size.width = v40;
    v93.size.height = v41;
    v92 = CGRectUnion(*a1, v93);
    x = v92.origin.x;
    y = v92.origin.y;
    width = v92.size.width;
    height = v92.size.height;
    *a1 = v92;
    v46 = sub_10011EC70(v6, v5, *(a1 + 32) + *(a1 + 32));
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = x;
    v54 = y;
    v55 = width;
    v56 = height;
LABEL_24:
    *&v79 = CGRectUnion(*&v53, *&v46);
    goto LABEL_25;
  }

  if (v7 != 2)
  {
    return;
  }

  v8 = sub_100190B94(*(a1 + 84), (a1 + 88), 0.0).f64[0];
  v10 = CGPointZero.x;
  v11 = CGPointZero.y;
  if (v8 == CGPointZero.x && v9 == v11)
  {
    v94.origin.x = sub_10011EC70(v3, v2, *(a1 + 32) * 1.41421356 + *(a1 + 32) * 1.41421356);
    v94.origin.y = v57;
    v94.size.width = v58;
    v94.size.height = v59;
    *&v33 = CGRectUnion(*a1, v94);
  }

  else
  {
    v90 = v6;
    v91 = v5;
    v13 = sub_10011F340(v8, v9, *(a1 + 32));
    v15 = v14;
    v16 = sub_10011F31C(v3, v2, v13);
    v89 = v17;
    v18 = v17;
    v19 = sub_10012104C(1, v13, v15);
    v20 = sub_10011F334(v16, v18, v19);
    v21 = sub_100120604(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), v20);
    v23 = v22;
    v25 = v24;
    v26 = v11;
    v28 = v27;
    v29 = v19;
    v6 = v90;
    v5 = v91;
    v30 = sub_10011F31C(v16, v89, v29);
    v31 = v25;
    v10 = CGPointZero.x;
    v32 = v28;
    v11 = v26;
    v33 = sub_100120604(v21, v23, v31, v32, v30);
  }

  *a1 = v33;
  *(a1 + 8) = v34;
  *(a1 + 16) = v35;
  *(a1 + 24) = v36;
  v60 = sub_100190B94(*(a1 + 152), (a1 + 160), 1.0).f64[0];
  if (v60 == v10 && v61 == v11)
  {
    v83 = *(a1 + 32) * 1.41421356 + *(a1 + 32) * 1.41421356;
    v84 = v6;
    v85 = v5;
LABEL_23:
    v46 = sub_10011EC70(v84, v85, v83);
    v48 = v86;
    v50 = v87;
    v52 = v88;
    v53 = *a1;
    v54 = *(a1 + 8);
    v55 = *(a1 + 16);
    v56 = *(a1 + 24);
    goto LABEL_24;
  }

  v63 = sub_10011F340(v60, v61, *(a1 + 32));
  v65 = v64;
  v66 = sub_10011F334(v6, v5, v63);
  v68 = v67;
  v69 = sub_10012104C(1, v63, v65);
  v70 = sub_10011F334(v66, v68, v69);
  v71 = sub_100120604(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), v70);
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = sub_10011F31C(v66, v68, v69);
  v79 = sub_100120604(v71, v73, v75, v77, v78);
LABEL_25:
  *a1 = v79;
  *(a1 + 8) = v80;
  *(a1 + 16) = v81;
  *(a1 + 24) = v82;
}

void sub_1001902A0(const CGPath *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      info[0] = a2;
      info[1] = a3;
      v4 = CGPointZero;
      v5 = v4;
      v6 = 0;
      CGPathApply(a1, info, sub_1001902FC);
    }
  }
}

void sub_1001902FC(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if ((*a2 - 1) >= 3)
  {
    if (v3 == 4)
    {
      if (*(a1 + 48) && sub_10011F068(*(a1 + 32), *(a1 + 40), *(a1 + 16), *(a1 + 24)) > 0.00000001)
      {
        v6[1] = a1 + 16;
        v6[0] = 1;
        sub_100190FC0(a1, v6);
      }

      *(a1 + 48) = 0;
      v5 = *(a1 + 16);
    }

    else
    {
      if (v3)
      {
        return;
      }

      *(a1 + 48) = 0;
      v4 = *(a2 + 8);
      *(a1 + 16) = *v4;
      v5 = *v4;
    }

    *(a1 + 32) = v5;
  }

  else
  {

    sub_100190FC0(a1, a2);
  }
}

const CGPath *sub_1001903CC(const CGPath *result)
{
  v1 = 0;
  if (result)
  {
    info[0] = &v1;
    info[1] = sub_100190438;
    v3 = CGPointZero;
    v4 = v3;
    v5 = 0;
    CGPathApply(result, info, sub_1001902FC);
    return v1;
  }

  return result;
}

void sub_100190448(uint64_t a1, int *a2)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    v5 = *(a1 + 160);
    *(a1 + 92) = v5;
    memmove((a1 + 96), (a1 + 168), 16 * (dword_101462C50[v5] & ~(dword_101462C50[v5] >> 31)) + 16);
  }

  v6 = *a2;
  *(a1 + 160) = *a2;
  *(a1 + 168) = *(a1 + 72);
  v7 = *a2;
  v8 = dword_101462C50[v7];
  if (v7 != 4)
  {
    v9 = 0;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v10 = 16 * v8;
    do
    {
      *(a1 + 184 + v9) = *(*(a2 + 1) + v9);
      v9 += 16;
    }

    while (v10 != v9);
    v8 = dword_101462C50[*a2];
  }

  *(a1 + 72) = *(*(a2 + 1) + 16 * v8 - 16);
  *(a1 + 88) = v4 + 1;
  if (v6 == 1)
  {
    sub_10019092C(a1, 1, (a1 + 168), 0.0);
    sub_10019092C(a1, 1, (a1 + 168), 1.0);
  }

  v11 = *(a1 + 160);
  if ((v11 & 0xFFFFFFFE) == 2)
  {
    v13 = *(a1 + 168);
    v12 = *(a1 + 176);
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);
    v17 = *(a1 + 184);
    v16 = *(a1 + 192);
    if (v11 == 3)
    {
      v19 = *(a1 + 200);
      v18 = *(a1 + 208);
    }

    else
    {
      v19 = v17 + (v15 - v17) / 3.0;
      v17 = v13 + (v17 - v13 + v17 - v13) / 3.0;
      v18 = v16 + (v14 - v16) / 3.0;
      v16 = v12 + (v16 - v12 + v16 - v12) / 3.0;
    }

    sub_10019092C(a1, v11, (a1 + 168), 0.0);
    sub_10019092C(a1, *(a1 + 160), (a1 + 168), 1.0);
    v66 = 0;
    v67 = 0;
    v20 = sub_10018F5BC(&v66, v13, v17, v19, v15);
    if (v20)
    {
      v21 = v20;
      v22 = &v66;
      do
      {
        v23 = *v22++;
        sub_10019092C(a1, *(a1 + 160), (a1 + 168), v23);
        --v21;
      }

      while (v21);
    }

    v66 = 0;
    v67 = 0;
    v24 = sub_10018F5BC(&v66, v12, v16, v18, v14);
    if (v24)
    {
      v25 = v24;
      v26 = &v66;
      do
      {
        v27 = *v26++;
        sub_10019092C(a1, *(a1 + 160), (a1 + 168), v27);
        --v25;
      }

      while (v25);
    }
  }

  v28 = *(a1 + 40);
  if (v28 != 2 && *(a1 + 88) >= 2u)
  {
    if (v28 == 1)
    {
      v68.origin.x = sub_10011EC70(*(a1 + 168), *(a1 + 176), *(a1 + 32) + *(a1 + 32));
      v68.origin.y = v60;
      v68.size.width = v61;
      v68.size.height = v62;
      *&v56 = CGRectUnion(*a1, v68);
LABEL_36:
      *a1 = v56;
      *(a1 + 8) = v57;
      *(a1 + 16) = v58;
      *(a1 + 24) = v59;
      return;
    }

    if (v28)
    {
      return;
    }

    v29 = sub_100190B94(*(a1 + 92), (a1 + 96), 1.0).f64[0];
    v31 = v30;
    *&v32 = *&sub_100190B94(*(a1 + 160), (a1 + 168), 0.0);
    v34 = v33;
    y = CGPointZero.y;
    if ((v29 != CGPointZero.x || v31 != y) && (v32 != CGPointZero.x || v34 != y))
    {
      v38 = sub_10011F31C(v29, v31, v32);
      v40 = sub_10011F2FC(v38, v39);
      v42 = v41;
      v43 = -1.0 / sub_10011FBE4(v40, v41, v32, v34);
      if (v43 * v43 >= *(a1 + 48) * *(a1 + 48))
      {
        return;
      }

      v44 = sub_10011F340(v40, v42, v43 * *(a1 + 32));
      v45 = *(a1 + 168);
      v46 = *(a1 + 176);
      v47 = sub_10011F334(v45, v46, v44);
      v48 = sub_100120604(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), v47);
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v55 = sub_10011F31C(v45, v46, v44);
      v56 = sub_100120604(v48, v50, v52, v54, v55);
      goto LABEL_36;
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013266F4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101326708();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101326790();
    }

    v63 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v63);
    }

    v64 = [NSString stringWithUTF8String:"void CRLPathBoundsApplierProcessSegment(CRLPathBoundsApplierState *, const CGPathElement *)"];
    v65 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CGPath_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v64 file:v65 lineNumber:472 isFatal:0 description:"Couldn't get a gradient for this join, but this should have been caught upstream by skipping no-op segments."];
  }
}

void sub_10019092C(CGFloat *a1, uint64_t a2, float64x2_t *a3, double a4)
{
  switch(a2)
  {
    case 3:
      v10 = sub_10011F20C(a3, a4);
      goto LABEL_8;
    case 2:
      v10 = sub_100404920(a3, a4);
LABEL_8:
      v8 = v10;
      v9 = v11;
      goto LABEL_9;
    case 1:
      if (a4 >= 0.5)
      {
        v8 = a3[1].f64[0];
        v9 = a3[1].f64[1];
      }

      else
      {
        v8 = a3->f64[0];
        v9 = a3->f64[1];
      }

LABEL_9:
      v12 = sub_100190B94(a2, a3, a4).f64[0];
      if (v12 != CGPointZero.x || v13 != CGPointZero.y)
      {
        v15 = sub_10012104C(0, v12, v13);
        v17 = sub_10011F340(v15, v16, a1[4]);
        v18 = sub_10011F334(v8, v9, v17);
        v19 = sub_100120604(*a1, a1[1], a1[2], a1[3], v18);
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v26 = sub_10011F31C(v8, v9, v17);
        *a1 = sub_100120604(v19, v21, v23, v25, v26);
        *(a1 + 1) = v27;
        *(a1 + 2) = v28;
        *(a1 + 3) = v29;
      }

      return;
  }

  v30 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013267B8();
  }

  v31 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013267CC(v30, a2, v31);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101326884();
  }

  v32 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v32);
  }

  v33 = [NSString stringWithUTF8String:"void CRLGrowPathBoundsAtTFromTypeAndPoints(CRLPathBoundsApplierState *, CGFloat, CGPathElementType, CGPoint *)"];
  v34 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CGPath_CRLAdditions.m"];
  [CRLAssertionHandler handleFailureInFunction:v33 file:v34 lineNumber:365 isFatal:0 description:"Invalid element type %d", a2];
}

float64x2_t sub_100190B94(int a1, float64x2_t *a2, double a3)
{
  v4 = CGPointZero;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v21 = CGPointZero;
      v7 = sub_1004C3240(a3, 0.0001, 0.9999);
      v8 = vmlaq_n_f64(vmulq_n_f64(vaddq_f64(a2[1], a2[1]), v7 * -2.0 + 1.0), vaddq_f64(*a2, *a2), v7 + -1.0);
      v9 = vaddq_f64(a2[2], a2[2]);
    }

    else
    {
      if (a1 != 3)
      {
        result = CGPointZero;
        if (a1 != 4)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

      v21 = CGPointZero;
      v7 = sub_1004C3240(a3, 0.0001, 0.9999);
      __asm
      {
        FMOV            V4.2D, #-3.0
        FMOV            V5.2D, #3.0
      }

      v8 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_f64(a2[1], _Q5), v7 * -4.0 + 1.0 + v7 * 3.0 * v7), vmulq_n_f64(vmulq_f64(*a2, _Q4), v7 + -1.0), v7 + -1.0), vmulq_n_f64(vmulq_f64(a2[2], _Q5), v7), v7 * -3.0 + 2.0);
      v9 = vmulq_n_f64(vmulq_f64(a2[3], _Q5), v7);
    }

    result = vmlaq_n_f64(v8, v9, v7);
    goto LABEL_12;
  }

  if (a1)
  {
    result = CGPointZero;
    if (a1 != 1)
    {
      goto LABEL_13;
    }

LABEL_8:
    v21 = CGPointZero;
    result.f64[0] = sub_10011F31C(a2[1].f64[0], a2[1].f64[1], a2->f64[0]);
    *&result.f64[1] = v6;
LABEL_12:
    v4 = v21;
    goto LABEL_13;
  }

  v22 = CGPointZero;
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013268AC();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013268C0();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101326948();
  }

  v18 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v18);
  }

  v19 = [NSString stringWithUTF8String:"CGPoint gradientAtTFromTypeAndPoints(CGFloat, CGPathElementType, CGPoint *)"];
  v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CGPath_CRLAdditions.m"];
  [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:209 isFatal:0 description:"path gradient can't handle moveTo element"];

  v4 = v22;
  result = v22;
LABEL_13:
  v16 = vmovn_s64(vceqq_f64(result, v4));
  if ((v16.i32[0] & v16.i32[1] & 1) == 0)
  {
    result.f64[0] = sub_10011F2FC(result.f64[0], result.f64[1]);
    *&result.f64[1] = v17;
  }

  return result;
}

void sub_100190E28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100190E6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100190EB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100190EF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100190F38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100190F7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

__n128 sub_100190FC0(uint64_t a1, unsigned int *a2)
{
  v11 = *(a1 + 32);
  v4 = *a2;
  if (*a2 != 4)
  {
    LODWORD(v5) = dword_101462C50[v4];
    v6 = *(a2 + 1);
    if (v5 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v5;
    }

    v7 = &v12;
    do
    {
      v8 = *v6++;
      *v7 = v8;
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  v10[1] = &v11;
  v10[0] = v4;
  (*(a1 + 8))(*a1, v10);
  result = *(*(a2 + 1) + 16 * dword_101462C50[*a2] - 16);
  *(a1 + 32) = result;
  ++*(a1 + 48);
  return result;
}

void sub_10019152C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100191580(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_100191F04(result, a2);
    }

    sub_1000C1D48();
  }

  return result;
}

void sub_100191640(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000C1D48();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_100191F04(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void sub_100191A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100191F04(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000C1E4C();
}

__n128 sub_100191F5C(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = &a2[-2].n128_u64[1];
  n128_f64 = a2[-3].n128_f64;
  v11 = &a2[-5].n128_f64[1];
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    v16 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v16 <= 2)
    {
      if (v16 < 2)
      {
        return result;
      }

      if (v16 == 2)
      {
        v76 = a2[-2].n128_f64[1];
        v71 = (a2 - 24);
        result.n128_f64[0] = v76;
        if (v76 >= *v12)
        {
          return result;
        }

        goto LABEL_75;
      }

      goto LABEL_10;
    }

    if (v16 == 3)
    {
      break;
    }

    if (v16 == 4)
    {
      v70 = (v12 + 3);
      v78 = v12[3];
      v79 = (v12 + 6);
      v80 = v12[6];
      if (v78 >= *v12)
      {
        if (v80 < v78)
        {
          v84 = *(v12 + 5);
          result = *v70;
          *v70 = *v79;
          v12[5] = v12[8];
          *v79 = result;
          *(v12 + 8) = v84;
          if (v12[3] < *v12)
          {
            v140 = *(v12 + 2);
            v112 = *v12;
            *v12 = *v70;
            v12[2] = v12[5];
            *v70 = v112;
            *(v12 + 5) = v140;
          }
        }
      }

      else
      {
        if (v80 < v78)
        {
          v139 = *(v12 + 2);
          v111 = *v12;
          *v12 = *v79;
          v12[2] = v12[8];
          *v79 = v111;
          v81 = v139;
          goto LABEL_102;
        }

        v141 = *(v12 + 2);
        v114 = *v12;
        *v12 = *v70;
        v12[2] = v12[5];
        *v70 = v114;
        *(v12 + 5) = v141;
        if (v80 < v12[3])
        {
          v81 = *(v12 + 5);
          result = *v70;
          *v70 = *v79;
          v12[5] = v12[8];
          *v79 = result;
LABEL_102:
          *(v12 + 8) = v81;
        }
      }

      result.n128_u64[0] = *v9;
      if (*v9 >= v79->n128_f64[0])
      {
        return result;
      }

      v88 = *(v12 + 8);
      result = *v79;
      v89 = a2[-1].n128_u64[1];
      *v79 = *v9;
      *(v12 + 8) = v89;
      *v9 = result;
      a2[-1].n128_u64[1] = v88;
      result.n128_u64[0] = v79->n128_u64[0];
      if (v79->n128_f64[0] >= v70->n128_f64[0])
      {
        return result;
      }

      v90 = *(v12 + 5);
      result = *v70;
      *v70 = *v79;
      v12[5] = v12[8];
      *v79 = result;
      *(v12 + 8) = v90;
LABEL_106:
      result.n128_f64[0] = v12[3];
      if (result.n128_f64[0] < *v12)
      {
        v142 = *(v12 + 2);
        v115 = *v12;
        *v12 = *v70;
        v12[2] = v70[1].n128_f64[0];
        result = v115;
        *v70 = v115;
        v70[1].n128_u64[0] = v142;
      }

      return result;
    }

    if (v16 == 5)
    {

      result.n128_u64[0] = sub_100192AE4(v12, (v12 + 3), v12 + 3, (v12 + 9), &a2[-2].n128_u64[1], result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 575)
    {
      if (a5)
      {

        sub_100192D2C(v12, a2);
      }

      else if (v12 != a2)
      {
        v85 = v12 + 3;
        while (v85 != a2)
        {
          v86 = v85;
          result.n128_u64[0] = a1[1].n128_u64[1];
          if (result.n128_f64[0] < a1->n128_f64[0])
          {
            v113 = a1[2];
            do
            {
              *v85 = *(v85 - 3);
              v85[2] = *(v85 - 1);
              v87 = *(v85 - 6);
              v85 -= 3;
            }

            while (result.n128_f64[0] < v87);
            *v85 = result.n128_f64[0];
            result = v113;
            *(v85 + 1) = v113;
          }

          v85 = &v86[1].n128_f64[1];
          a1 = v86;
        }
      }

      return result;
    }

    if (v14 == 1)
    {
      if (v12 != a2)
      {

        sub_10019340C(v12, a2, a2, a3, result);
      }

      return result;
    }

    v17 = v16 >> 1;
    v18 = &v12[3 * (v16 >> 1)];
    v19 = *v9;
    if (v15 >= 0xC01)
    {
      v20 = v18->n128_f64[0];
      if (v18->n128_f64[0] >= *v12)
      {
        if (v19 < v20)
        {
          v118 = v18[1].n128_u64[0];
          v94 = *v18;
          v24 = *v9;
          v18[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v18 = v24;
          *v9 = v94;
          a2[-1].n128_u64[1] = v118;
          if (v18->n128_f64[0] < *v12)
          {
            v119 = *(v12 + 2);
            v95 = *v12;
            v25 = *v18;
            v12[2] = v18[1].n128_f64[0];
            *v12 = v25;
            v18[1].n128_u64[0] = v119;
            *v18 = v95;
          }
        }
      }

      else
      {
        if (v19 < v20)
        {
          v116 = *(v12 + 2);
          v92 = *v12;
          v21 = *v9;
          v12[2] = a2[-1].n128_f64[1];
          *v12 = v21;
          goto LABEL_27;
        }

        v122 = *(v12 + 2);
        v98 = *v12;
        v28 = *v18;
        v12[2] = v18[1].n128_f64[0];
        *v12 = v28;
        v18[1].n128_u64[0] = v122;
        *v18 = v98;
        if (*v9 < v18->n128_f64[0])
        {
          v116 = v18[1].n128_u64[0];
          v92 = *v18;
          v29 = *v9;
          v18[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v18 = v29;
LABEL_27:
          *v9 = v92;
          a2[-1].n128_u64[1] = v116;
        }
      }

      v30 = (v12 + 3);
      v31 = &v12[3 * v17];
      v33 = *(v31 - 3);
      v32 = (v31 - 3);
      v34 = v33;
      v35 = *n128_f64;
      if (v33 >= v12[3])
      {
        if (v35 < v34)
        {
          v123 = v32[1].n128_u64[0];
          v99 = *v32;
          v39 = *n128_f64;
          v32[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v32 = v39;
          *n128_f64 = v99;
          a2[-2].n128_u64[0] = v123;
          if (v32->n128_f64[0] < v30->n128_f64[0])
          {
            v40 = *v30;
            v124 = *(v12 + 5);
            v41 = v32[1].n128_i64[0];
            *v30 = *v32;
            *(v12 + 5) = v41;
            v32[1].n128_u64[0] = v124;
            *v32 = v40;
          }
        }
      }

      else if (v35 >= v34)
      {
        v44 = *v30;
        v126 = *(v12 + 5);
        v45 = v32[1].n128_i64[0];
        *v30 = *v32;
        *(v12 + 5) = v45;
        v32[1].n128_u64[0] = v126;
        *v32 = v44;
        if (*n128_f64 < v32->n128_f64[0])
        {
          v127 = v32[1].n128_u64[0];
          v101 = *v32;
          v46 = *n128_f64;
          v32[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v32 = v46;
          *n128_f64 = v101;
          a2[-2].n128_u64[0] = v127;
        }
      }

      else
      {
        v36 = *(v12 + 5);
        v37 = *v30;
        v38 = a2[-2].n128_u64[0];
        *v30 = *n128_f64;
        *(v12 + 5) = v38;
        *n128_f64 = v37;
        a2[-2].n128_u64[0] = v36;
      }

      v47 = (v12 + 6);
      v48 = &v12[3 * v17];
      v50 = v48[3];
      v49 = (v48 + 3);
      v51 = v50;
      v52 = *v11;
      if (v50 >= v12[6])
      {
        if (v52 < v51)
        {
          v128 = v49[1].n128_u64[0];
          v102 = *v49;
          v56 = *v11;
          v49[1].n128_u64[0] = a2[-4].n128_u64[1];
          *v49 = v56;
          *v11 = v102;
          a2[-4].n128_u64[1] = v128;
          if (v49->n128_f64[0] < v47->n128_f64[0])
          {
            v57 = *v47;
            v129 = *(v12 + 8);
            v58 = v49[1].n128_i64[0];
            *v47 = *v49;
            *(v12 + 8) = v58;
            v49[1].n128_u64[0] = v129;
            *v49 = v57;
          }
        }
      }

      else if (v52 >= v51)
      {
        v59 = *v47;
        v130 = *(v12 + 8);
        v60 = v49[1].n128_i64[0];
        *v47 = *v49;
        *(v12 + 8) = v60;
        v49[1].n128_u64[0] = v130;
        *v49 = v59;
        if (*v11 < v49->n128_f64[0])
        {
          v131 = v49[1].n128_u64[0];
          v103 = *v49;
          v61 = *v11;
          v49[1].n128_u64[0] = a2[-4].n128_u64[1];
          *v49 = v61;
          *v11 = v103;
          a2[-4].n128_u64[1] = v131;
        }
      }

      else
      {
        v53 = *(v12 + 8);
        v54 = *v47;
        v55 = a2[-4].n128_u64[1];
        *v47 = *v11;
        *(v12 + 8) = v55;
        *v11 = v54;
        a2[-4].n128_u64[1] = v53;
      }

      v62 = v18->n128_f64[0];
      v63 = v49->n128_f64[0];
      if (v18->n128_f64[0] >= v32->n128_f64[0])
      {
        if (v63 < v62)
        {
          v133 = v18[1].n128_u64[0];
          v105 = *v18;
          *v18 = *v49;
          v18[1].n128_u64[0] = v49[1].n128_u64[0];
          v49[1].n128_u64[0] = v133;
          *v49 = v105;
          if (v18->n128_f64[0] < v32->n128_f64[0])
          {
            v134 = v32[1].n128_u64[0];
            v106 = *v32;
            *v32 = *v18;
            v32[1].n128_u64[0] = v18[1].n128_u64[0];
            v18[1].n128_u64[0] = v134;
            *v18 = v106;
          }
        }
      }

      else
      {
        if (v63 < v62)
        {
          v132 = v32[1].n128_u64[0];
          v104 = *v32;
          *v32 = *v49;
          v32[1].n128_u64[0] = v49[1].n128_u64[0];
          goto LABEL_55;
        }

        v135 = v32[1].n128_u64[0];
        v107 = *v32;
        *v32 = *v18;
        v32[1].n128_u64[0] = v18[1].n128_u64[0];
        v18[1].n128_u64[0] = v135;
        *v18 = v107;
        if (v49->n128_f64[0] < v18->n128_f64[0])
        {
          v132 = v18[1].n128_u64[0];
          v104 = *v18;
          *v18 = *v49;
          v18[1].n128_u64[0] = v49[1].n128_u64[0];
LABEL_55:
          v49[1].n128_u64[0] = v132;
          *v49 = v104;
        }
      }

      v136 = *(v12 + 2);
      v108 = *v12;
      v64 = *v18;
      v12[2] = v18[1].n128_f64[0];
      *v12 = v64;
      v18[1].n128_u64[0] = v136;
      *v18 = v108;
      goto LABEL_57;
    }

    v22 = *v12;
    if (*v12 >= v18->n128_f64[0])
    {
      if (v19 < v22)
      {
        v120 = *(v12 + 2);
        v96 = *v12;
        v26 = *v9;
        v12[2] = a2[-1].n128_f64[1];
        *v12 = v26;
        *v9 = v96;
        a2[-1].n128_u64[1] = v120;
        if (*v12 < v18->n128_f64[0])
        {
          v121 = v18[1].n128_u64[0];
          v97 = *v18;
          v27 = *v12;
          v18[1].n128_f64[0] = v12[2];
          *v18 = v27;
          *(v12 + 2) = v121;
          *v12 = v97;
        }
      }
    }

    else
    {
      if (v19 < v22)
      {
        v117 = v18[1].n128_u64[0];
        v93 = *v18;
        v23 = *v9;
        v18[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v18 = v23;
LABEL_36:
        *v9 = v93;
        a2[-1].n128_u64[1] = v117;
        goto LABEL_57;
      }

      v125 = v18[1].n128_u64[0];
      v100 = *v18;
      v42 = *v12;
      v18[1].n128_f64[0] = v12[2];
      *v18 = v42;
      *(v12 + 2) = v125;
      *v12 = v100;
      if (*v9 < *v12)
      {
        v117 = *(v12 + 2);
        v93 = *v12;
        v43 = *v9;
        v12[2] = a2[-1].n128_f64[1];
        *v12 = v43;
        goto LABEL_36;
      }
    }

LABEL_57:
    if ((a5 & 1) == 0 && *(v12 - 3) >= *v12)
    {
      v12 = sub_100192DCC(v12, a2->n128_f64);
      goto LABEL_64;
    }

    v65 = sub_100192EB4(v12, a2);
    if ((v67 & 1) == 0)
    {
      goto LABEL_62;
    }

    v68 = sub_100192F9C(v12, v65, v66);
    v12 = (v65 + 24);
    if (sub_100192F9C(v65 + 24, a2, v69))
    {
      a4 = -v14;
      a2 = v65;
      if (v68)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v68)
    {
LABEL_62:
      sub_100191F5C(a1, v65, a3, -v14, a5 & 1);
      v12 = (v65 + 24);
LABEL_64:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v70 = (v12 + 3);
  result.n128_f64[0] = v12[3];
  v72 = a2[-2].n128_f64[1];
  v71 = (a2 - 24);
  v73 = v72;
  if (result.n128_f64[0] >= *v12)
  {
    if (v73 >= result.n128_f64[0])
    {
      return result;
    }

    v82 = *(v12 + 5);
    result = *v70;
    v83 = v71[1].n128_u64[0];
    *v70 = *v71;
    *(v12 + 5) = v83;
    *v71 = result;
    v71[1].n128_u64[0] = v82;
    goto LABEL_106;
  }

  if (v73 < result.n128_f64[0])
  {
LABEL_75:
    v138 = *(v12 + 2);
    v110 = *v12;
    v77 = *v71;
    v12[2] = v71[1].n128_f64[0];
    *v12 = v77;
    result = v110;
    *v71 = v110;
    v71[1].n128_u64[0] = v138;
    return result;
  }

  v137 = *(v12 + 2);
  v109 = *v12;
  *v12 = *v70;
  v12[2] = v12[5];
  *v70 = v109;
  *(v12 + 5) = v137;
  result.n128_u64[0] = v71->n128_u64[0];
  if (v71->n128_f64[0] < v12[3])
  {
    v74 = *(v12 + 5);
    result = *v70;
    v75 = v71[1].n128_u64[0];
    *v70 = *v71;
    *(v12 + 5) = v75;
    *v71 = result;
    v71[1].n128_u64[0] = v74;
  }

  return result;
}

__n128 sub_100192AE4(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unint64_t *a5, __n128 result)
{
  v6 = a2->n128_f64[0];
  v7 = a3->n128_f64[0];
  if (a2->n128_f64[0] >= a1->n128_f64[0])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a3->n128_f64[0] < a2->n128_f64[0])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f64[0] < a3->n128_f64[0])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3->n128_f64[0] < a2->n128_f64[0])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  result.n128_u64[0] = *a5;
  if (*a5 < a4->n128_f64[0])
  {
    v23 = a4[1].n128_u64[0];
    result = *a4;
    v24 = a5[2];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[2] = v23;
    result.n128_u64[0] = a4->n128_u64[0];
    if (a4->n128_f64[0] < a3->n128_f64[0])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      result.n128_u64[0] = a3->n128_u64[0];
      if (a3->n128_f64[0] < a2->n128_f64[0])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        result.n128_u64[0] = a2->n128_u64[0];
        if (a2->n128_f64[0] < a1->n128_f64[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100192D2C(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 24;
    if (result + 24 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 24);
        if (v6 < *v4)
        {
          v10 = *(v4 + 32);
          v7 = v3;
          while (1)
          {
            v8 = result + v7;
            *(v8 + 24) = *(result + v7);
            *(v8 + 40) = *(result + v7 + 16);
            if (!v7)
            {
              break;
            }

            v7 -= 24;
            if (v6 >= *(v8 - 24))
            {
              v9 = result + v7 + 24;
              goto LABEL_10;
            }
          }

          v9 = result;
LABEL_10:
          *v9 = v6;
          *(v9 + 8) = v10;
        }

        v2 = v5 + 24;
        v3 += 24;
        v4 = v5;
      }

      while (v5 + 24 != a2);
    }
  }

  return result;
}

double *sub_100192DCC(double *a1, double *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 3))
  {
    v5 = (a1 + 3);
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 = (v5 + 24);
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[3];
      v3 += 3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 3);
      a2 -= 3;
    }

    while (v2 < v6);
  }

  while (v3 < a2)
  {
    v14 = *(v3 + 2);
    v13 = *v3;
    v7 = *a2;
    v3[2] = a2[2];
    *v3 = v7;
    *(a2 + 2) = v14;
    *a2 = v13;
    do
    {
      v8 = v3[3];
      v3 += 3;
    }

    while (v2 >= v8);
    do
    {
      v9 = *(a2 - 3);
      a2 -= 3;
    }

    while (v2 < v9);
  }

  if (v3 - 3 != a1)
  {
    v10 = *(v3 - 3);
    a1[2] = *(v3 - 1);
    *a1 = v10;
  }

  *(v3 - 3) = v2;
  *(v3 - 1) = v12;
  return v3;
}

uint64_t sub_100192EB4(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = *(a1 + v2 + 24);
    v2 += 24;
  }

  while (v4 < v3);
  v5 = a1 + v2;
  if (v2 == 24)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v7 = *(a2 - 24);
      a2 -= 24;
    }

    while (v7 >= v3);
  }

  else
  {
    do
    {
      v6 = *(a2 - 24);
      a2 -= 24;
    }

    while (v6 >= v3);
  }

  v8 = (a1 + v2);
  if (v5 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *v8;
      v11 = *(v8 + 2);
      v12 = *(v9 + 16);
      *v8 = *v9;
      *(v8 + 2) = v12;
      *(v9 + 16) = v11;
      *v9 = v10;
      do
      {
        v13 = *(v8 + 3);
        v8 = (v8 + 24);
      }

      while (v13 < v3);
      do
      {
        v14 = *(v9 - 24);
        v9 -= 24;
      }

      while (v14 >= v3);
    }

    while (v8 < v9);
  }

  if ((v8 - 24) != a1)
  {
    v15 = *(v8 - 24);
    *(a1 + 16) = *(v8 - 1);
    *a1 = v15;
  }

  *(v8 - 3) = v3;
  *(v8 - 1) = v17;
  return v8 - 24;
}

BOOL sub_100192F9C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v8 = *(a2 - 24);
      v4 = (a2 - 24);
      v9 = v8;
      if (v7 < *a1)
      {
        if (v9 >= v7)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (v4->n128_f64[0] < *(a1 + 24))
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_48:
      if (*(a1 + 24) < *a1)
      {
        v61 = *(a1 + 16);
        v62 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v62;
        v6[1].n128_u64[0] = v61;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_100192AE4(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v6->n128_f64[0] < v24)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v22 >= v20)
    {
      v54 = *(a1 + 16);
      v55 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v55;
      *(a1 + 40) = v54;
      if (v22 >= *(a1 + 24))
      {
        goto LABEL_45;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_45:
    if (*v23 >= v21->n128_f64[0])
    {
      return 1;
    }

    v56 = *(a1 + 64);
    v57 = *v21;
    v58 = *(a2 - 8);
    *v21 = *v23;
    *(a1 + 64) = v58;
    *v23 = v57;
    *(a2 - 8) = v56;
    if (v21->n128_f64[0] >= v6->n128_f64[0])
    {
      return 1;
    }

    v59 = *(a1 + 40);
    v60 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v60;
    *(a1 + 64) = v59;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 24);
    v4 = (a2 - 24);
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v15->n128_f64[0] < v17)
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (v14 < *(a1 + 24))
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v47;
    if (*v47 < v13->n128_f64[0])
    {
      v64 = *(v47 + 8);
      v51 = v48;
      while (1)
      {
        v52 = a1 + v51;
        *(v52 + 72) = *(a1 + v51 + 48);
        *(v52 + 88) = *(a1 + v51 + 64);
        if (v51 == -48)
        {
          break;
        }

        v51 -= 24;
        if (v50 >= *(v52 + 24))
        {
          v53 = a1 + v51 + 72;
          goto LABEL_39;
        }
      }

      v53 = a1;
LABEL_39:
      *v53 = v50;
      *(v53 + 8) = v64;
      if (++v49 == 8)
      {
        return v47 + 24 == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 += 24;
    if (v47 == a2)
    {
      return 1;
    }
  }
}

__n128 *sub_10019340C(uint64_t a1, __n128 *a2, __n128 *a3, uint64_t a4, __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v9 = a2 - a1;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = (a1 + 24 * v11);
      do
      {
        a5 = sub_100193618(a1, a5, a4, v10, v13);
        v13 = (v13 - 24);
        --v12;
      }

      while (v12);
    }

    v14 = v7;
    if (v7 != a3)
    {
      v14 = v7;
      do
      {
        if (v14->n128_f64[0] < *a1)
        {
          v15 = v14[1].n128_u64[0];
          v16 = *v14;
          v17 = *(a1 + 16);
          *v14 = *a1;
          v14[1].n128_u64[0] = v17;
          *a1 = v16;
          *(a1 + 16) = v15;
          sub_100193618(a1, v16, a4, v10, a1);
        }

        v14 = (v14 + 24);
      }

      while (v14 != a3);
    }

    if (v9 >= 25)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      do
      {
        v19 = 0;
        v31 = *a1;
        v32 = *(a1 + 16);
        v20 = a1;
        do
        {
          v21 = v20;
          v22 = v20 + 24 * v19;
          v20 = v22 + 24;
          v23 = 2 * v19;
          v19 = (2 * v19) | 1;
          v24 = v23 + 2;
          if (v24 < v18)
          {
            v26 = *(v22 + 48);
            v25 = v22 + 48;
            if (*(v25 - 24) < v26)
            {
              v20 = v25;
              v19 = v24;
            }
          }

          v27 = *v20;
          v21[1].n128_u64[0] = *(v20 + 16);
          *v21 = v27;
        }

        while (v19 <= ((v18 - 2) >> 1));
        v7 = (v7 - 24);
        if (v20 == v7)
        {
          *(v20 + 16) = v32;
          *v20 = v31;
        }

        else
        {
          v28 = *v7;
          *(v20 + 16) = v7[1].n128_u64[0];
          *v20 = v28;
          *v7 = v31;
          v7[1].n128_u64[0] = v32;
          sub_100193718(a1, v20 + 24, v31, a4, 0xAAAAAAAAAAAAAAABLL * ((v20 + 24 - a1) >> 3));
        }
      }

      while (v18-- > 2);
    }

    return v14;
  }

  return a3;
}

__n128 sub_100193618(uint64_t a1, __n128 result, uint64_t a3, uint64_t a4, __int128 *a5)
{
  if (a4 >= 2)
  {
    v5 = (a4 - 2) >> 1;
    if (v5 >= (0xAAAAAAAAAAAAAAABLL * ((a5 - a1) >> 3)))
    {
      v6 = (0x5555555555555556 * ((a5 - a1) >> 3)) | 1;
      v7 = (a1 + 24 * v6);
      if (0x5555555555555556 * ((a5 - a1) >> 3) + 2 < a4 && *v7 < *(v7 + 3))
      {
        v7 = (v7 + 24);
        v6 = 0x5555555555555556 * ((a5 - a1) >> 3) + 2;
      }

      result.n128_u64[0] = *a5;
      if (*v7 >= *a5)
      {
        v12 = *(a5 + 8);
        do
        {
          v8 = a5;
          a5 = v7;
          v9 = *v7;
          *(v8 + 2) = *(v7 + 2);
          *v8 = v9;
          if (v5 < v6)
          {
            break;
          }

          v10 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (a1 + 24 * v6);
          v11 = v10 + 2;
          if (v11 < a4 && *v7 < *(v7 + 3))
          {
            v7 = (v7 + 24);
            v6 = v11;
          }
        }

        while (*v7 >= result.n128_f64[0]);
        *a5 = result.n128_u64[0];
        result = v12;
        *(a5 + 8) = v12;
      }
    }
  }

  return result;
}

__n128 sub_100193718(uint64_t a1, uint64_t a2, __n128 result, uint64_t a4, uint64_t a5)
{
  if (a5 >= 2)
  {
    v5 = (a5 - 2) >> 1;
    v6 = (a1 + 24 * v5);
    v7 = (a2 - 24);
    result.n128_u64[0] = *(a2 - 24);
    if (*v6 < result.n128_f64[0])
    {
      v10 = *(a2 - 16);
      do
      {
        v8 = v7;
        v7 = v6;
        v9 = *v6;
        *(v8 + 2) = *(v6 + 2);
        *v8 = v9;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (a1 + 24 * v5);
      }

      while (*v6 < result.n128_f64[0]);
      *v7 = result.n128_u64[0];
      result = v10;
      *(v7 + 8) = v10;
    }
  }

  return result;
}

void sub_100193E64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100193EA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100194660(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001946A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10019497C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return (*(v1 + 16))();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100194998(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100195374(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001953B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001968C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019690C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019790C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100197950(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100197994(uint64_t a1, int a2)
{
  v4 = sub_10050DF80([*(a1 + 32) p_bitmapContextOptionsForDrawingStroke:*(a1 + 40)] | 8u, *(a1 + 72), *(a1 + 80));
  CGContextSaveGState(v4);
  v5 = *(a1 + 104);
  *&transform.a = *(a1 + 88);
  *&transform.c = v5;
  *&transform.tx = *(a1 + 120);
  CGContextConcatCTM(v4, &transform);
  [*(a1 + 40) paintPath:objc_msgSend(*(a1 + 48) wantsInteriorStroke:"CGPath") inContext:0 useFastDrawing:v4 parameterized:0 shouldReverseDrawOrder:0 withLayoutOptions:{0, *(a1 + 56)}];
  CGContextRestoreGState(v4);
  Image = CGBitmapContextCreateImage(v4);
  CGContextRelease(v4);
  if (a2)
  {
    v7 = objc_opt_class();
    v8 = sub_100013F00(v7, *(a1 + 64));
    [v8 setContentsFromBackground:Image];
    if (Image)
    {
      CFRelease(Image);
    }
  }

  else
  {
    [*(a1 + 64) setContents:Image];
    if (Image)
    {
      CFRelease(Image);
    }
  }
}

void sub_100197AC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100197B04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001994C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100199590;
  v8 = &unk_10183AE28;
  v4 = *(a1 + 32);
  v9 = v3;
  v10 = v4;
  v5 = v3;
  if ([NSThread isMainThread:_NSConcreteStackBlock])
  {
    v7(v6);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v6);
  }
}

void sub_100199590(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = [*(a1 + 32) firstObject];
  v6 = sub_100013F00(v2, v3);

  [*(a1 + 40) p_forDragAndDropSetColor:v6];
  v4 = [*(a1 + 40) interactiveCanvasController];
  v5 = [v4 editingCoordinator];
  [v5 resumeCollaborationWithReason:@"CRLShapeDragAndDrop"];
}

void sub_100199978(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001999BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100199A00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100199A44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019AE68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019AEAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019BD58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019BD9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019BDE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019BE24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019C48C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019C4D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019C7C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019C80C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019D2F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019D334(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019D8CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019D910(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019DBC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019DC04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019DE6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019DEB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019DEF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 needsDownload])
  {
    objc_initWeak(&location, *(a1 + 32));
    v5 = *(a1 + 40);
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_10019DFEC;
    v9 = &unk_101843B58;
    objc_copyWeak(&v10, &location);
    [v4 addDownloadObserverWithIdentifier:v5 options:2 handler:&v6];
    [v4 downloadIfNeeded];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void sub_10019DFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10019DFEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained p_handleAssetPreparationCompletion];
}

void sub_10019F134(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019F178(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019F1BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019F200(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_10019F714(id a1)
{

  return a1;
}

void sub_10019F734(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Cu);
}

void sub_10019FB84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10019FBC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10019FE64(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t sub_10019FE7C(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

void sub_10019FE94(CGContextRef c, double a2)
{
  v2 = a2;
  if (a2 <= 0.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101327968();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132797C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"void _SFRSetLineWidth(CGContextRef file:CGFloat)"] lineNumber:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] isFatal:199 description:0, "lineWidth (%f) should be greater than zero.", *&v2];
    CGContextGetCTM(&v4, c);
    CGAffineTransformInvert(&v5, &v4);
    v2 = v5.a + v5.c;
  }

  CGContextSetLineWidth(c, v2);
}

void sub_1001A6DB4(uint64_t a1, int *a2, _BYTE *a3)
{
  v5 = *a2;
  v6 = (a1 + v5);
  if (*(a1 + v5) == 32)
  {
    v7 = v5 + 1;
    do
    {
      *a2 = v7;
      v8 = *++v6;
      ++v7;
    }

    while (v8 == 32);
  }

  v9 = 0;
  strtod(v6, &v9);
  if (v6 == v9)
  {
    *a3 = 1;
  }

  else
  {
    *a2 += v9 - v6;
  }
}

void sub_1001A7838(uint64_t a1, float *a2)
{
  v4 = 0;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = 0.0;
  v8 = v6;
  v9 = *a1;
  do
  {
    v10 = *(a1 + v4 + 16);
    v11 = *(a1 + v4 + 24);
    v7 = sub_100120090(v9, v8, v10, v11) + v7;
    v4 += 16;
    v8 = v11;
    v9 = v10;
  }

  while (v4 != 48);
  v12 = sub_100120090(v5, v6, *(a1 + 48), *(a1 + 56));
  if ((v7 - v12) <= 0.1)
  {
    *a2 = *a2 + v7;
  }

  else
  {
    v13 = *(a1 + 16);
    v35[0] = *a1;
    v35[1] = v13;
    v14 = *(a1 + 48);
    v35[2] = *(a1 + 32);
    v35[3] = v14;
    v15 = &v36;
    v16 = 3;
    v17 = 1;
    __asm { FMOV            V0.2D, #0.5 }

    do
    {
      v23 = v35[4 * v17 - 4];
      v24 = v16;
      v25 = v15;
      do
      {
        v26 = v25[-3];
        *v25++ = vmlaq_f64(vmulq_f64(v26, _Q0), _Q0, v23);
        v23 = v26;
        --v24;
      }

      while (v24);
      ++v17;
      --v16;
      v15 += 4;
    }

    while (v17 != 4);
    v27 = 0;
    v28 = v35;
    do
    {
      v29 = *v28;
      v28 += 4;
      *&v34[v27] = v29;
      v27 += 16;
    }

    while (v27 != 64);
    v30 = v33;
    v31 = 3;
    v32 = 12;
    do
    {
      *v30++ = v35[v32];
      --v31;
      v32 -= 3;
    }

    while (v31 != -1);
    sub_1001A7838(v34, a2);
    sub_1001A7838(v33, a2);
  }
}

void sub_1001A7A20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001A7A64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

BOOL sub_1001A84F8(id a1, CAFilter *a2)
{
  v2 = [(CAFilter *)a2 name];
  v3 = [v2 isEqualToString:@"CRLCALayerAdditionsAXDoubleInvertFilterKey"];

  return v3 ^ 1;
}

id sub_1001A853C()
{
  v0 = [CAFilter filterWithType:kCAFilterColorInvert];
  [v0 setName:@"CRLCALayerAdditionsAXDoubleInvertFilterKey"];
  [v0 setAccessibility:1];

  return v0;
}

void sub_1001A8850(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001A8894(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001A8CB8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001A8CFC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001A8D40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001A8D84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001A93E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001A9424(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001A9468(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001A94AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001A94F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001A9534(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001A9998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A99BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001A99D4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001A9A34(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1001A9C6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001A9CB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AA2AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AA2F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AAAA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AAAEC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AB858(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AB89C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AC240(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AC284(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AC59C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AC5E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AC8E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AC928(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001ACDF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001ACE38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AD618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001AD638(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AD67C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AD6C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AD704(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AD748(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AD78C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AD7D0(uint64_t a1, void *a2)
{
  v6 = [a2 invertedObjectUUIDMap];
  v3 = [v6 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1001AE778(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AE7BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AF340(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AF384(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AF3C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AF40C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AF930(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void sub_1001AFB84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AFBC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AFF68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AFFAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001AFFF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B0034(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B04F0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

uint64_t sub_1001B0978(double a1, double a2, double a3, double a4, double a5, double a6)
{
  result = sub_10011F010(a3, a4, a1, a2, a5, a6);
  if (result)
  {
    if (sub_10011ECC8(a1, a2, a3, a4) || sub_10011ECC8(a1, a2, a5, a6))
    {
      return 1;
    }

    else
    {
      v16 = sub_10011EC88(a3, a4, a5);

      return sub_10011FF8C(a1, a2, v16, v13, v14, v15);
    }
  }

  return result;
}

void sub_1001B1618(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B165C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B20D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B211C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B2638(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B267C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B29AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B29F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

__n128 sub_1001B2A34(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1001B2A58(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1001B2A70(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (a2 != 3)
  {
    v4 = *(*(a1 + 32) + 8);
    v6 = v4[7];
    v5 = v4[8];
    if (v6 >= v5)
    {
      v8 = v4[6];
      v9 = v6 - v8;
      v10 = (v6 - v8) >> 4;
      v11 = v10 + 1;
      if ((v10 + 1) >> 60)
      {
        sub_1000C1D48();
      }

      v12 = v5 - v8;
      if (v12 >> 3 > v11)
      {
        v11 = v12 >> 3;
      }

      v13 = v12 >= 0x7FFFFFFFFFFFFFF0;
      v14 = 0xFFFFFFFFFFFFFFFLL;
      if (!v13)
      {
        v14 = v11;
      }

      if (v14)
      {
        sub_1000DB4D8((v4 + 6), v14);
      }

      v15 = (16 * v10);
      *v15 = a3;
      v15[1] = a4;
      v7 = 16 * v10 + 16;
      memcpy(0, v8, v9);
      v16 = v4[6];
      v4[6] = 0;
      v4[7] = v7;
      v4[8] = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v6 = a3;
      v6[1] = a4;
      v7 = (v6 + 2);
    }

    v4[7] = v7;
  }
}

void sub_1001B3E48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B3E8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B3ED0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B3F14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B3F58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B3F9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B3FE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B4024(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B4068(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B40AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B4C70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B4CB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B4CF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B4D3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B4D80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B4DC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B50AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B50F0(double *a1, double a2, double a3)
{
  if (*(*(*(a1 + 5) + 8) + 24) == 1)
  {
    v12 = v3;
    v13 = v4;
    v6 = *(a1 + 4);
    v7 = a1[6];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001B51C8;
    v8[3] = &unk_101844FA0;
    *&v8[4] = a1[7];
    if (v6)
    {
      [v6 closestHitsTo:v8 withSearchThreshold:a2 passingTest:{a3, v7}];
      v6 = v9;
      if (v9 != v10)
      {
        if (!v9)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
    }

    *(*(*(a1 + 5) + 8) + 24) = 0;
    if (!v6)
    {
      return;
    }

LABEL_5:
    v10 = v6;
    operator delete(v6);
  }
}

void sub_1001B5D3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B5D80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B5DC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B5E08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B5E4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B5E90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B5ED4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B5F18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B5F5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B5FA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B6864(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B68A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B68EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B6930(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B6E14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B6E58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B7590(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B75D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B7618(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B765C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B889C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B88E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B8924(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B8968(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B89AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B89F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B8CE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B8D24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001B9B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001B9B80(uint64_t a1)
{
  result = [*(a1 + 32) columnRectForRange:{*(a1 + 48), *(a1 + 56)}];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

void sub_1001B9CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001B9CB8(uint64_t a1)
{
  result = [*(a1 + 32) glyphRectForRange:*(a1 + 48) includingLabel:{*(a1 + 56), *(a1 + 64)}];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

void sub_1001B9DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001B9DD0(uint64_t a1)
{
  result = [*(a1 + 32) rangeOfLineFragmentAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = result;
  *(v3 + 40) = v4;
  return result;
}

id sub_1001B9ED4(uint64_t a1)
{
  result = [*(a1 + 32) lineIndexForCharIndex:*(a1 + 48) eol:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

__n128 sub_1001BA4E0(uint64_t a1, void *a2)
{
  v3 = [a2 geometry];
  v4 = v3;
  if (v3)
  {
    [v3 transform];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
  }

  v5 = *(*(a1 + 32) + 8);
  v5[2] = v7;
  v5[3] = v8;
  v5[4] = v9;

  return result;
}

void sub_1001BA7F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BA834(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BAA34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BAA78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BAC70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BACB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BB508(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BB54C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BB710(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BB754(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BB8E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BB928(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BBD40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001BBD84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BBDC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BBE0C(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1001BBE50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained p_setTimeValuesWithoutScrubbing];
}

void sub_1001BBE90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BBED4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BC11C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BC160(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BC1A4(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1001BD044(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BD088(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BD52C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BD570(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BD8D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BD91C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BDA80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BDAC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BE17C(uint64_t a1)
{
  v2 = [*(a1 + 32) p_strokeColorForStyle:*(*(a1 + 32) + 32)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = [*(a1 + 32) layer];
  [v5 setStrokeColor:{objc_msgSend(*(*(a1 + 32) + 8), "CGColor")}];
}

void sub_1001BE548(id a1)
{
  v1 = objc_alloc_init(CRLWPFallbackFontList);
  v2 = qword_101A347D8;
  qword_101A347D8 = v1;
}

void sub_1001BF0B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BF0F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BF138(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BF17C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BF498(uint64_t a1)
{
  v2 = [*(a1 + 32) mediaReplacer];
  [v2 showMediaReplacerForMediaReplacingRep:*(a1 + 40)];
}

void sub_1001BFD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001BFD18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001BFD30(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (a3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132C5EC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132C600();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132C6B0();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolPixelEraser p_endErasingAndFinalize:]_block_invoke"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolPixelEraser.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:233 isFatal:0 description:"expected nil value for '%{public}s'", "shapeStrokes"];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001BFEA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001BFEE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C0A9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C0AE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C1F04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C1F48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C1F8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C1FD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C2014(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C2058(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1001C209C(_OWORD *a1, void *a2)
{
  v2 = a1[3];
  v5[0] = a1[2];
  v5[1] = v2;
  v5[2] = a1[4];
  v3 = [a2 _strokeByAppendingTransform:v5];

  return v3;
}

void sub_1001C20E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C212C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C27A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C27EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C3120(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C3164(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C31A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C31EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C3B04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C3B48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C3B8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C3BD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C4440(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C4484(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C44C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C450C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C4550(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C4594(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C45D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C46BC;
  v8[3] = &unk_101845C18;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v13 = a3;
  v11 = *(a1 + 56);
  v12 = v5;
  v7 = v5;
  [v6 p_tokenizeKeywordIfNeeded:v7 yieldingKeyword:v8];
}

void sub_1001C46BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  v12 = [v5 mutableCopy];

  v6 = v12;
  if (!v12)
  {
    v6 = +[NSMutableOrderedSet orderedSet];
  }

  v13 = v6;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = [v7 objectAtIndexedSubscript:*(a1 + 64)];
  }

  else
  {
    v8 = &off_1018E2148;
  }

  v9 = -[CRLShapeSearchResult initWithIdentifier:matchingKeyword:priority:score:]([CRLShapeSearchResult alloc], "initWithIdentifier:matchingKeyword:priority:score:", *(a1 + 48), *(a1 + 56), [v8 unsignedIntegerValue], 0);
  if (![v13 containsObject:v9])
  {
    goto LABEL_9;
  }

  v10 = [v13 objectAtIndex:{objc_msgSend(v13, "indexOfObject:", v9)}];
  v11 = [v10 priority];
  if (v11 < [(CRLShapeSearchResult *)v9 priority])
  {
    [v13 removeObject:v9];

LABEL_9:
    [v13 addObject:v9];
    goto LABEL_11;
  }

LABEL_11:
  [*(a1 + 32) setObject:v13 forKeyedSubscript:v4];
}

void sub_1001C4D4C(id a1)
{
  v1 = +[NSCharacterSet punctuationCharacterSet];
  v2 = qword_101A347F0;
  qword_101A347F0 = v1;
}

void sub_1001C5044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C505C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 identifier];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

BOOL sub_1001C5378(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) p_rangeOfSearchTerm:*(a1 + 40) inString:a2 shouldPerformDiacriticInsensitiveSearch:*(a1 + 48)])
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  return !v3;
}

void sub_1001C5614(uint64_t a1, void *a2)
{
  v22 = a2;
  v3 = [v22 identifier];
  v4 = [v22 matchingKeyword];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v6 = [v4 crl_stringWithNormalizedHyphensAndQuotationMarks];
  if (![*(a1 + 40) p_rangeOfSearchTerm:*(a1 + 48) inString:v6 shouldPerformDiacriticInsensitiveSearch:*(a1 + 56)])
  {
    v8 = v7 == [v6 length];
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v12 = [CRLShapeSearchResult alloc];
    v13 = [v22 priority];
    v14 = [v22 score];
    v15 = [(CRLShapeSearchResult *)v12 initWithIdentifier:v3 matchingKeyword:v4 priority:v13 score:v14];
    goto LABEL_20;
  }

  v8 = 0;
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  v9 = [v22 priority];
  v10 = [v5 priority];
  if ([v5 isExactMatch])
  {
    if (v9 <= v10 || !v8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v9 == v10)
    {
      v16 = [v5 matchingKeyword];
      v17 = [v16 length];
      v18 = v17 > [v4 length];
    }

    else
    {
      v18 = 0;
    }

    v19 = v9 > v10 || v8;
    if ((v19 & 1) == 0 && !v18)
    {
      goto LABEL_21;
    }
  }

  v20 = [CRLShapeSearchResult alloc];
  v21 = [v22 priority];
  v14 = [v22 score];
  v15 = [(CRLShapeSearchResult *)v20 initWithIdentifier:v3 matchingKeyword:v4 priority:v21 score:v14];

LABEL_20:
  [(CRLShapeSearchResult *)v15 setIsExactMatch:v8];
  v5 = v15;
LABEL_21:
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v3];
}

void sub_1001C5A78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C5ABC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C5D50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C5D94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C5FE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C6028(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C64AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C64F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C65C4(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1001C6690(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

double sub_1001C66F0@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *a1 = 2.0 / (a3 - a2);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 2.0 / (a5 - a4);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = -2.0 / (a7 - a6);
  *(a1 + 88) = 0;
  *(a1 + 96) = -(a2 + a3) / (a3 - a2);
  *(a1 + 104) = -(a4 + a5) / (a5 - a4);
  result = -(a6 + a7) / (a7 - a6);
  *(a1 + 112) = result;
  *(a1 + 120) = 0x3FF0000000000000;
  return result;
}

void sub_1001C6B0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C6B50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C7428(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C746C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_1001C7670@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = vmovl_u16(*a1);
  v8.i64[0] = v7.u32[2];
  v8.i64[1] = v7.u32[3];
  v9 = vcvtq_f64_u64(v8);
  v8.i64[0] = v7.u32[0];
  v8.i64[1] = v7.u32[1];
  v10 = vcvtq_f64_u64(v8);
  v11 = vsubl_u16(*a2, *a1);
  v8.i64[0] = v11.i32[2];
  v8.i64[1] = v11.i32[3];
  v12 = vcvtq_f64_s64(v8);
  v8.i64[0] = v11.i32[0];
  v8.i64[1] = v11.i32[1];
  *a3 = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vmlaq_n_f64(v10, vcvtq_f64_s64(v8), a4)), vcvtq_s64_f64(vmlaq_n_f64(v9, v12, a4))));
  v13 = sub_1004C3260(*(a1 + 8), *(a2 + 8), a4);
  *(a3 + 8) = v13;
  v14 = sub_1004C3260(*(a1 + 12), *(a2 + 12), a4);
  *(a3 + 12) = v14;
  v15 = sub_1004C3260(*(a1 + 16), *(a2 + 16), a4);
  *(a3 + 16) = v15;
  v16 = sub_1004C3260(*(a1 + 20), *(a2 + 20), a4);
  *(a3 + 20) = v16;
  *(a3 + 24) = (*(a1 + 24) + (*(a2 + 24) - *(a1 + 24)) * a4);
  result = *(a1 + 26) + (*(a2 + 26) - *(a1 + 26)) * a4;
  *(a3 + 26) = result;
  return result;
}

void sub_1001C819C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C81E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C8644(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C8688(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C88A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C88E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C93A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C93E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C9428(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C946C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C94B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C94F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C9538(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001C957C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1001C95C0(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = [v5 pointCount];
  if (v6 >= *(a2 + 8))
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = v6;
  }

  v8 = +[NSMutableArray array];
  if (!v7)
  {
    goto LABEL_38;
  }

  for (i = 0; i != v7; ++i)
  {
    for (j = 0; j != 10; ++j)
    {
      if (j > 4)
      {
        if (j <= 6)
        {
          if (j == 5)
          {
            v12 = [v5 sizeYData];
          }

          else
          {
            v12 = [v5 timeOffsetData];
          }
        }

        else
        {
          if (j != 7)
          {
            if (j == 8)
            {
              v11 = [v5 edgeWidthData];
            }

            else
            {
              v11 = [v5 thresholdData];
            }

            goto LABEL_25;
          }

          v12 = [v5 radius2Data];
        }

LABEL_27:
        v14 = 0;
        v15 = v12[i];
        v13 = 1;
        goto LABEL_28;
      }

      if (j <= 1)
      {
        if (j)
        {
          v11 = [v5 azimuthData];
        }

        else
        {
          v11 = [v5 altitudeData];
        }

        goto LABEL_25;
      }

      if (j == 2)
      {
        v11 = [v5 opacityData];
        goto LABEL_25;
      }

      if (j != 3)
      {
        v12 = [v5 sizeXData];
        goto LABEL_27;
      }

      v11 = [v5 forceData];
LABEL_25:
      v13 = 0;
      v14 = v11[i];
      v15 = 0.0;
LABEL_28:
      if (j == 1 && a3)
      {
        v26 = 0.0;
      }

      else
      {
        if (!v13)
        {
          v15 = v14;
        }

        *(&v25 + j) = 1.0 / dbl_101462D50[j] * v15;
      }
    }

    v16 = &CGPointZero;
    if (i < *(a2 + 8))
    {
      v16 = (*(a2 + 16) + 16 * i);
    }

    x = v16->x;
    y = v16->y;
    v19 = [PKStrokePoint alloc];
    v20 = [v19 initWithLocation:x timeOffset:y size:v31 opacity:v29 force:v30 azimuth:v27 altitude:v28 edgeWidth:v26 radius2:v25 threshold:{v33, v32, v34}];
    [v8 addObject:v20];
  }

LABEL_38:
  v21 = [PKStrokePath alloc];
  v22 = [v5 creationDate];
  v23 = [v21 initWithControlPoints:v8 creationDate:v22];

  return v23;
}

void sub_1001C9848(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v4 = [v3 elementCount];
  if (v4 >= 2)
  {
    v5 = v4;
    v6 = 4 * v4;
    *a2 = 4 * v4;
    v7 = malloc_type_malloc(v4 << 6, 0x1000040451B5BE8uLL);
    v48 = 0;
    v8 = 0;
    a2[2] = v7;
    v45 = v7;
    v44 = a2;
    v46 = a2[1];
    v47 = 0;
    v9 = 1;
    *(&v10 + 1) = 0x7FF0000000000000;
    *&v10 = 67109378;
    v43 = v10;
    while (1)
    {
      v62 = xmmword_1014629F0;
      v63 = xmmword_1014629F0;
      v64 = xmmword_1014629F0;
      v65 = xmmword_1014629F0;
      v11 = [v3 elementAtIndex:v9 allPoints:{&v62, v43}];
      v12 = v11;
      if (v5 != 2 || v9 != 1 || (v11 - 1) > 1)
      {
        goto LABEL_15;
      }

      v13 = 0;
      v14 = v62;
      v15 = &v62.f64[1];
      do
      {
        v16 = sub_10011ED38(v14.f64[0], v14.f64[1], *(v15 - 1), *v15);
        v15 += 2;
      }

      while (v16 && v13++ < 3);
      if (v16 && v8 + 2 < v6)
      {
        v18 = &v45[v8];
        *v18 = v62;
        v18[1] = v63;
        v46 = v8 + 2;
        v47 = v8 + 2;
        v48 = v8 + 2;
        v8 += 2;
      }

      else
      {
LABEL_15:
        if (v12 == 1)
        {
          goto LABEL_25;
        }

        if (v12 == 3)
        {
          if (v62.f64[0] == *&v63 && v62.f64[1] == *(&v63 + 1))
          {
            goto LABEL_51;
          }

LABEL_25:
          v8 = v48 + 4;
          if (v48 + 4 > v6)
          {
            v21 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10132D734();
            }

            v22 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109890;
              v58 = v21;
              v59 = 2082;
              *v60 = "struct ControlPointArray bsplineControlPointsFromBezierPath(CRLBezierPath * _Nonnull __strong, CGFloat)";
              *&v60[8] = 2082;
              *&v60[10] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathConverter.m";
              *&v60[18] = 1024;
              *&v60[20] = 682;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpectedly trying to write beyond the capacity of the control point array.", buf, 0x22u);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10132D75C();
            }

            v23 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v37 = v23;
              v38 = +[CRLAssertionHandler packedBacktraceString];
              *buf = v43;
              v58 = v21;
              v59 = 2114;
              *v60 = v38;
              _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v24 = [NSString stringWithUTF8String:"struct ControlPointArray bsplineControlPointsFromBezierPath(CRLBezierPath * _Nonnull __strong, CGFloat)"];
            v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathConverter.m"];
            [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:682 isFatal:0 description:"Unexpectedly trying to write beyond the capacity of the control point array."];
          }

          if (v8 >= v6)
          {
            v8 = v48;
            goto LABEL_51;
          }

          v26 = &v45[v48];
          *v26 = v62;
          v26[1] = v62;
          v26[2] = v63;
          v26[3] = v63;
          v46 = v48 + 4;
          v47 = v48 + 4;
LABEL_37:
          v48 = v8;
          goto LABEL_51;
        }

        if (v12 == 2)
        {
          *&v19 = *&sub_100404888(&v62, buf);
          if (v9 == 1)
          {
            if (v6)
            {
              *v45 = *&v60[6];
              v45[1] = *&v60[22];
              v45[2] = v61;
              v46 = 3;
              v47 = 3;
              v48 = 3;
              v8 = 3;
            }

            else
            {
              v27 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_10132D7D4();
              }

              v28 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                *v49 = 67109890;
                v50 = v27;
                v51 = 2082;
                v52 = "struct ControlPointArray bsplineControlPointsFromBezierPath(CRLBezierPath * _Nonnull __strong, CGFloat)";
                v53 = 2082;
                v54 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathConverter.m";
                v55 = 1024;
                v56 = 658;
                _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpectedly trying to write beyond the capacity of the control point array.", v49, 0x22u);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_10132D7FC();
              }

              v29 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                v39 = v29;
                v40 = +[CRLAssertionHandler packedBacktraceString];
                *v49 = v43;
                v50 = v27;
                v51 = 2114;
                v52 = v40;
                _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v49, 0x12u);
              }

              v30 = [NSString stringWithUTF8String:"struct ControlPointArray bsplineControlPointsFromBezierPath(CRLBezierPath * _Nonnull __strong, CGFloat)"];
              v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathConverter.m"];
              [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:658 isFatal:0 description:"Unexpectedly trying to write beyond the capacity of the control point array."];
            }

            goto LABEL_51;
          }

          if (v9 < v5 - 1)
          {
            v8 = v47;
            if (v47 < v6)
            {
              v45[v47] = v61;
              v46 = ++v47;
              v48 = ++v8;
              goto LABEL_51;
            }

            v32 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10132D784();
            }

            v33 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *v49 = 67109890;
              v50 = v32;
              v51 = 2082;
              v52 = "struct ControlPointArray bsplineControlPointsFromBezierPath(CRLBezierPath * _Nonnull __strong, CGFloat)";
              v53 = 2082;
              v54 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathConverter.m";
              v55 = 1024;
              v56 = 667;
              _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpectedly trying to write beyond the capacity of the control point array.", v49, 0x22u);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10132D7AC();
            }

            v34 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v41 = v34;
              v42 = +[CRLAssertionHandler packedBacktraceString];
              *v49 = v43;
              v50 = v32;
              v51 = 2114;
              v52 = v42;
              _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v49, 0x12u);
            }

            v35 = [NSString stringWithUTF8String:"struct ControlPointArray bsplineControlPointsFromBezierPath(CRLBezierPath * _Nonnull __strong, CGFloat)"];
            v36 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathConverter.m"];
            [CRLAssertionHandler handleFailureInFunction:v35 file:v36 lineNumber:667 isFatal:0 description:"Unexpectedly trying to write beyond the capacity of the control point array."];

            goto LABEL_37;
          }
        }
      }

LABEL_51:
      if (++v9 == v5)
      {
        v44[1] = v46;
        break;
      }
    }
  }
}

void sub_1001CA070(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001CA0B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001CA0F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001CA13C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001CA180(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001CA1C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001CA7F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001CA838(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001CA87C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001CA8C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001CABA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001CABBC(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 40) == a2)
  {
    *(*(*(result + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

void sub_1001CB270(uint64_t a1, void *a2)
{
  v3 = [a2 commandToResetMediaToRawPixelSize];
  [*(a1 + 32) addCommand:v3];
}

void sub_1001CD59C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001CD5E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001CD8AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001CD8F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001CDE00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001CDE44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001CECA8(id a1)
{
  v1 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10132DC5C();
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10132DC70(v1, v2);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10132DD1C();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EE10(v3, v1);
  }

  v4 = [NSString stringWithUTF8String:"[CRLPencilKitInkStroke paintPath:wantsInteriorStroke:inContext:useFastDrawing:parameterized:shouldReverseDrawOrder:]_block_invoke"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPencilKitInkStroke.m"];
  [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:272 isFatal:0 description:"Should not try to draw a CRLPencilKitInkStroke without its strokePathCompactData and maskPath."];
}