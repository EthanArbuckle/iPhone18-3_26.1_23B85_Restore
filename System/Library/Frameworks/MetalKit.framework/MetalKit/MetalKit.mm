uint64_t _mtkLinkedOnOrAfter(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      _mtkLinkedOnOrAfter_cold_1();
    }

    v2 = 0x7E30901FFFFFFFFLL;
  }

  else
  {
    v2 = 0x7E00901FFFFFFFFLL;
  }

  return MEMORY[0x1EEE706E0](v2);
}

BOOL reflectImage(void *a1, void *a2, vImagePixelCount a3, vImagePixelCount a4, size_t a5, uint64_t a6, uint64_t a7)
{
  src.data = a1;
  src.height = a4;
  src.width = a3;
  src.rowBytes = a5;
  v9.data = a2;
  v9.height = a4;
  v9.width = a3;
  v9.rowBytes = a5;
  if (a7 == 4)
  {
    switch(a6)
    {
      case 128:
        v7 = vImageVerticalReflect_ARGBFFFF(&src, &v9, 0);
        return v7 == 0;
      case 64:
        v7 = vImageVerticalReflect_ARGB16U(&src, &v9, 0);
        return v7 == 0;
      case 32:
        v7 = vImageVerticalReflect_ARGB8888(&src, &v9, 0);
        return v7 == 0;
    }

LABEL_11:
    v7 = 0;
    return v7 == 0;
  }

  if (a7 != 1)
  {
    goto LABEL_11;
  }

  if (a6 == 32)
  {
    v7 = vImageVerticalReflect_PlanarF(&src, &v9, 0);
    return v7 == 0;
  }

  if (a6 == 16)
  {
    v7 = vImageVerticalReflect_Planar16U(&src, &v9, 0);
    return v7 == 0;
  }

  if (a6 != 8)
  {
    goto LABEL_11;
  }

  v7 = vImageVerticalReflect_Planar8(&src, &v9, 0);
  return v7 == 0;
}

void sub_1D969B4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

void sub_1D969BC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1D969BDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1D969BFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1D969C1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1D969C3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1D969EC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D969EE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t selectSRGBFormat(uint64_t result)
{
  if (result <= 163)
  {
    if (result > 131)
    {
      if (result <= 151)
      {
        if (result == 132)
        {
          return 133;
        }

        else if (result == 134)
        {
          return 135;
        }
      }

      else
      {
        switch(result)
        {
          case 152:
            return 153;
          case 160:
            return 161;
          case 162:
            return 163;
        }
      }
    }

    else if (result <= 69)
    {
      if (result == 10)
      {
        return 11;
      }

      else if (result == 30)
      {
        return 31;
      }
    }

    else
    {
      switch(result)
      {
        case 70:
          return 71;
        case 80:
          return 81;
        case 130:
          return 131;
      }
    }
  }

  else
  {
    switch(result)
    {
      case 178:
        result = 179;
        break;
      case 179:
      case 181:
      case 183:
      case 184:
      case 185:
      case 186:
      case 187:
      case 188:
      case 189:
      case 190:
      case 191:
      case 192:
      case 193:
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
        return result;
      case 180:
        result = 181;
        break;
      case 182:
        result = 183;
        break;
      case 203:
        result = 185;
        break;
      case 204:
        result = 186;
        break;
      case 205:
        result = 187;
        break;
      case 206:
        result = 188;
        break;
      case 207:
        result = 189;
        break;
      case 208:
        result = 190;
        break;
      case 209:
        result = 191;
        break;
      case 210:
        result = 192;
        break;
      case 211:
        result = 193;
        break;
      case 212:
        result = 194;
        break;
      case 213:
        result = 195;
        break;
      case 214:
        result = 196;
        break;
      case 215:
        result = 197;
        break;
      case 216:
        result = 198;
        break;
      case 217:
        result = 199;
        break;
      case 218:
        result = 200;
        break;
      default:
        if (result == 164)
        {
          result = 165;
        }

        else if (result == 166)
        {
          result = 167;
        }

        break;
    }
  }

  return result;
}

uint64_t selectRGBPixelFormat(uint64_t result)
{
  if (result <= 132)
  {
    if (result <= 70)
    {
      if (result == 11)
      {
        return 10;
      }

      else if (result == 31)
      {
        return 30;
      }
    }

    else
    {
      switch(result)
      {
        case 71:
          return 70;
        case 81:
          return 80;
        case 131:
          return 130;
      }
    }
  }

  else
  {
    switch(result)
    {
      case 153:
        result = 152;
        break;
      case 154:
      case 155:
      case 156:
      case 157:
      case 158:
      case 159:
      case 160:
      case 162:
      case 164:
      case 166:
      case 168:
      case 169:
      case 170:
      case 171:
      case 172:
      case 173:
      case 174:
      case 175:
      case 176:
      case 177:
      case 178:
      case 180:
      case 182:
      case 184:
        return result;
      case 161:
        result = 160;
        break;
      case 163:
        result = 162;
        break;
      case 165:
        result = 164;
        break;
      case 167:
        result = 166;
        break;
      case 179:
        result = 178;
        break;
      case 181:
        result = 180;
        break;
      case 183:
        result = 182;
        break;
      case 185:
        result = 203;
        break;
      case 186:
        result = 204;
        break;
      case 187:
        result = 205;
        break;
      case 188:
        result = 206;
        break;
      case 189:
        result = 207;
        break;
      case 190:
        result = 208;
        break;
      case 191:
        result = 209;
        break;
      case 192:
        result = 210;
        break;
      case 193:
        result = 211;
        break;
      case 194:
        result = 212;
        break;
      case 195:
        result = 213;
        break;
      case 196:
        result = 214;
        break;
      case 197:
        result = 215;
        break;
      case 198:
        result = 216;
        break;
      case 199:
        result = 217;
        break;
      case 200:
        result = 218;
        break;
      default:
        if (result == 133)
        {
          result = 132;
        }

        else if (result == 135)
        {
          result = 134;
        }

        break;
    }
  }

  return result;
}

uint64_t _newMTKTextureErrorWithCodeAndErrorString(uint64_t a1, uint64_t a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696A578];
  v7[0] = @"MTKTextureLoaderErrorKey";
  v7[1] = v3;
  v8[0] = a2;
  v8[1] = a2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  result = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTKTextureLoaderErrorDomain" code:a1 userInfo:v4];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _newMTKTextureErrorWithCodeAndUserInfo(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);

  return [v4 initWithDomain:@"MTKTextureLoaderErrorDomain" code:a1 userInfo:a2];
}

uint64_t _newMTKTextureErrorWithCode(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);

  return [v2 initWithDomain:@"MTKTextureLoaderErrorDomain" code:a1 userInfo:0];
}

uint64_t expandRGBToRGBA(char *__src, char *__dst, uint64_t a3, unint64_t a4, uint64_t a5, size_t __n, size_t a7, int a8)
{
  __srca = a8;
  if (!__src)
  {
    expandRGBToRGBA_cold_2();
  }

  v8 = __dst;
  if (!__dst)
  {
    expandRGBToRGBA_cold_1();
  }

  if (a4)
  {
    v12 = __src;
    LODWORD(v13) = 0;
    v14 = 4 * a3 * a7;
    do
    {
      v15 = a3;
      v16 = v8;
      for (i = v12; v15; --v15)
      {
        memcpy(v16, i, __n);
        v18 = &v16[__n];
        i += __n;
        memcpy(v18, &__srca, a7);
        v16 = &v18[a7];
      }

      v12 += a5;
      v8 += v14;
      v13 = (v13 + 1);
    }

    while (v13 < a4);
  }

  return 1;
}

uint64_t arrayTextureTypeFromTextureType(unint64_t a1)
{
  if (a1 >= 0xA)
  {
    arrayTextureTypeFromTextureType_cold_1();
  }

  return qword_1D96A9B20[a1];
}

MDLVertexFormat MTKModelIOVertexFormatFromMetal(MTLVertexFormat vertexFormat)
{
  if (vertexFormat - 1 > 0x34)
  {
    return 0;
  }

  else
  {
    return qword_1D96A9B78[vertexFormat - 1];
  }
}

MTLVertexFormat MTKMetalVertexFormatFromModelIO(MDLVertexFormat vertexFormat)
{
  if (vertexFormat > MDLVertexFormatUShortNormalized)
  {
    if (vertexFormat <= MDLVertexFormatIntBits)
    {
      if (vertexFormat > MDLVertexFormatShort3Normalized)
      {
        v1 = 589826;
        v35 = 41;
        if (vertexFormat != MDLVertexFormatUInt1010102Normalized)
        {
          v35 = 0;
        }

        if (vertexFormat == MDLVertexFormatUInt4)
        {
          v36 = 39;
        }

        else
        {
          v36 = v35;
        }

        if (vertexFormat == MDLVertexFormatUInt3)
        {
          v6 = MTLVertexFormatUInt3;
        }

        else
        {
          v6 = v36;
        }

        v7 = 524292;
        v8 = 24;
        v9 = 589825;
        v10 = 36;
        v11 = vertexFormat == MDLVertexFormatUInt2;
        v12 = 37;
        goto LABEL_109;
      }

      v24 = 23;
      if (vertexFormat != MDLVertexFormatShort3Normalized)
      {
        v24 = 0;
      }

      if (vertexFormat == MDLVertexFormatShort2Normalized)
      {
        v25 = 22;
      }

      else
      {
        v25 = v24;
      }

      if (vertexFormat == MDLVertexFormatShortNormalized)
      {
        v17 = MTLVertexFormatShortNormalized;
      }

      else
      {
        v17 = v25;
      }

      v26 = 21;
      if (vertexFormat != MDLVertexFormatUShort4Normalized)
      {
        v26 = 0;
      }

      if (vertexFormat == MDLVertexFormatUShort3Normalized)
      {
        v27 = 20;
      }

      else
      {
        v27 = v26;
      }

      if (vertexFormat == MDLVertexFormatUShort2Normalized)
      {
        v20 = MTLVertexFormatUShort2Normalized;
      }

      else
      {
        v20 = v27;
      }

      v21 = vertexFormat <= MDLVertexFormatShortNormalizedBits;
    }

    else
    {
      if (vertexFormat <= MDLVertexFormatHalf)
      {
        v1 = 655363;
        v31 = 53;
        if (vertexFormat != MDLVertexFormatHalf)
        {
          v31 = 0;
        }

        if (vertexFormat == MDLVertexFormatInt1010102Normalized)
        {
          v32 = 40;
        }

        else
        {
          v32 = v31;
        }

        if (vertexFormat == MDLVertexFormatInt4)
        {
          v6 = MTLVertexFormatInt4;
        }

        else
        {
          v6 = v32;
        }

        v7 = 655361;
        v8 = 32;
        v9 = 655362;
        v10 = 33;
        v11 = vertexFormat == MDLVertexFormatInt3;
        v12 = 34;
        goto LABEL_109;
      }

      v13 = 31;
      if (vertexFormat != MDLVertexFormatFloat4)
      {
        v13 = 0;
      }

      if (vertexFormat == MDLVertexFormatFloat3)
      {
        v14 = 30;
      }

      else
      {
        v14 = v13;
      }

      v15 = 29;
      if (vertexFormat != MDLVertexFormatFloat2)
      {
        v15 = 0;
      }

      if (vertexFormat == MDLVertexFormatFloat)
      {
        v16 = 28;
      }

      else
      {
        v16 = v15;
      }

      if (vertexFormat <= MDLVertexFormatFloat2)
      {
        v17 = v16;
      }

      else
      {
        v17 = v14;
      }

      v18 = 27;
      if (vertexFormat != MDLVertexFormatHalf4)
      {
        v18 = 0;
      }

      if (vertexFormat == MDLVertexFormatHalf3)
      {
        v19 = 26;
      }

      else
      {
        v19 = v18;
      }

      if (vertexFormat == MDLVertexFormatHalf2)
      {
        v20 = MTLVertexFormatHalf2;
      }

      else
      {
        v20 = v19;
      }

      v21 = vertexFormat <= MDLVertexFormatFloatBits;
    }

    if (v21)
    {
      return v20;
    }

    else
    {
      return v17;
    }
  }

  if (vertexFormat <= MDLVertexFormatCharNormalizedBits)
  {
    if (vertexFormat > MDLVertexFormatChar2)
    {
      v1 = 196609;
      v33 = 9;
      if (vertexFormat != MDLVertexFormatUChar4Normalized)
      {
        v33 = 0;
      }

      if (vertexFormat == MDLVertexFormatUChar3Normalized)
      {
        v34 = 8;
      }

      else
      {
        v34 = v33;
      }

      if (vertexFormat == MDLVertexFormatUChar2Normalized)
      {
        v6 = MTLVertexFormatUChar2Normalized;
      }

      else
      {
        v6 = v34;
      }

      v7 = 131075;
      v8 = 5;
      v9 = 131076;
      v10 = 6;
      v11 = vertexFormat == MDLVertexFormatUCharNormalized;
      v12 = 47;
    }

    else
    {
      v1 = 65539;
      v22 = 4;
      if (vertexFormat != MDLVertexFormatChar2)
      {
        v22 = 0;
      }

      if (vertexFormat == MDLVertexFormatChar)
      {
        v23 = 46;
      }

      else
      {
        v23 = v22;
      }

      if (vertexFormat == MDLVertexFormatUChar4)
      {
        v6 = MTLVertexFormatUChar4;
      }

      else
      {
        v6 = v23;
      }

      v7 = 65537;
      v8 = 45;
      v9 = 65538;
      v10 = 1;
      v11 = vertexFormat == MDLVertexFormatUChar3;
      v12 = 2;
    }
  }

  else if (vertexFormat <= MDLVertexFormatUShort2)
  {
    v1 = 262147;
    v29 = 13;
    if (vertexFormat != MDLVertexFormatUShort2)
    {
      v29 = 0;
    }

    if (vertexFormat == MDLVertexFormatUShort)
    {
      v30 = 49;
    }

    else
    {
      v30 = v29;
    }

    if (vertexFormat == MDLVertexFormatChar4Normalized)
    {
      v6 = MTLVertexFormatChar4Normalized;
    }

    else
    {
      v6 = v30;
    }

    v7 = 262145;
    v8 = 48;
    v9 = 262146;
    v10 = 10;
    v11 = vertexFormat == MDLVertexFormatChar3Normalized;
    v12 = 11;
  }

  else
  {
    v1 = 393217;
    v2 = 51;
    if (vertexFormat != MDLVertexFormatUShortNormalized)
    {
      v2 = 0;
    }

    if (vertexFormat == MDLVertexFormatShort4)
    {
      v3 = 18;
    }

    else
    {
      v3 = v2;
    }

    v4 = 17;
    if (vertexFormat != MDLVertexFormatShort3)
    {
      v4 = 0;
    }

    if (vertexFormat == MDLVertexFormatShort2)
    {
      v5 = 16;
    }

    else
    {
      v5 = v4;
    }

    if (vertexFormat <= MDLVertexFormatShort3)
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    v7 = 327683;
    v8 = 14;
    v9 = 327684;
    v10 = 15;
    v11 = vertexFormat == MDLVertexFormatShort;
    v12 = 50;
  }

LABEL_109:
  if (!v11)
  {
    v12 = 0;
  }

  if (vertexFormat == v9)
  {
    v37 = v10;
  }

  else
  {
    v37 = v12;
  }

  if (vertexFormat == v7)
  {
    v38 = v8;
  }

  else
  {
    v38 = v37;
  }

  if (vertexFormat <= v1)
  {
    return v38;
  }

  else
  {
    return v6;
  }
}

MDLVertexDescriptor *__cdecl MTKModelIOVertexDescriptorFromMetalWithError(MTLVertexDescriptor *metalDescriptor, NSError **error)
{
  v3 = metalDescriptor;
  v4 = objc_alloc_init(getMDLVertexDescriptorClass());
  for (i = 0; i != 31; ++i)
  {
    v6 = [(MTLVertexDescriptor *)v3 attributes];
    v7 = [v6 objectAtIndexedSubscript:i];
    v8 = [v7 format];

    if (v8)
    {
      v9 = [v4 attributes];
      v10 = [v9 count];

      if (i >= v10)
      {
        MTKModelIOVertexDescriptorFromMetalWithError_cold_1(error);
      }

      v11 = [(MTLVertexDescriptor *)v3 attributes];
      v12 = [v11 objectAtIndexedSubscript:i];
      v13 = MTKModelIOVertexFormatFromMetal([v12 format]);

      if (v13 == MDLVertexFormatInvalid)
      {
        if (error)
        {
          _MTKModelErrorWithCodeAndErrorString(0, @"No compatible MDLVertexFormat format for MTLVertexAttribute format");
          *error = v37 = 0;
        }

        else
        {
          v37 = 0;
        }

        goto LABEL_16;
      }

      v14 = [v4 attributes];
      v15 = [v14 objectAtIndexedSubscript:i];
      [v15 setFormat:v13];

      v16 = [(MTLVertexDescriptor *)v3 attributes];
      v17 = [v16 objectAtIndexedSubscript:i];
      v18 = [v17 bufferIndex];
      v19 = [v4 attributes];
      v20 = [v19 objectAtIndexedSubscript:i];
      [v20 setBufferIndex:v18];

      v21 = [(MTLVertexDescriptor *)v3 attributes];
      v22 = [v21 objectAtIndexedSubscript:i];
      v23 = [v22 offset];
      v24 = [v4 attributes];
      v25 = [v24 objectAtIndexedSubscript:i];
      [v25 setOffset:v23];
    }
  }

  for (j = 0; j != 31; ++j)
  {
    v27 = [(MTLVertexDescriptor *)v3 layouts];
    v28 = [v27 objectAtIndexedSubscript:j];
    v29 = [v28 stride];

    if (v29)
    {
      v30 = [v4 layouts];
      v31 = [v30 count];

      if (j >= v31)
      {
        MTKModelIOVertexDescriptorFromMetalWithError_cold_2(error);
      }

      v32 = [(MTLVertexDescriptor *)v3 layouts];
      v33 = [v32 objectAtIndexedSubscript:j];
      v34 = [v33 stride];
      v35 = [v4 layouts];
      v36 = [v35 objectAtIndexedSubscript:j];
      [v36 setStride:v34];
    }
  }

  v37 = v4;
LABEL_16:

  return v37;
}

MTLVertexDescriptor *__cdecl MTKMetalVertexDescriptorFromModelIOWithError(MDLVertexDescriptor *modelIODescriptor, NSError **error)
{
  v3 = modelIODescriptor;
  v4 = objc_alloc_init(MEMORY[0x1E69741E0]);
  for (i = 0; i != 31; ++i)
  {
    v6 = [(MDLVertexDescriptor *)v3 attributes];
    v7 = [v6 count];

    if (i >= v7)
    {
      break;
    }

    v8 = [(MDLVertexDescriptor *)v3 attributes];
    v9 = [v8 objectAtIndexedSubscript:i];
    v10 = [v9 format];

    if (v10)
    {
      v11 = [(MDLVertexDescriptor *)v3 attributes];
      v12 = [v11 objectAtIndexedSubscript:i];
      v13 = MTKMetalVertexFormatFromModelIO([v12 format]);

      if (v13 == MTLVertexFormatInvalid)
      {
        if (error)
        {
          _MTKModelErrorWithCodeAndErrorString(0, @"No compatible MTLVertexFormat format for MDLVertexAttribute format");
          *error = v37 = 0;
        }

        else
        {
          v37 = 0;
        }

        goto LABEL_13;
      }

      v14 = [v4 attributes];
      v15 = [v14 objectAtIndexedSubscript:i];
      [v15 setFormat:v13];

      v16 = [(MDLVertexDescriptor *)v3 attributes];
      v17 = [v16 objectAtIndexedSubscript:i];
      v18 = [v17 bufferIndex];
      v19 = [v4 attributes];
      v20 = [v19 objectAtIndexedSubscript:i];
      [v20 setBufferIndex:v18];

      v21 = [(MDLVertexDescriptor *)v3 attributes];
      v22 = [v21 objectAtIndexedSubscript:i];
      v23 = [v22 offset];
      v24 = [v4 attributes];
      v25 = [v24 objectAtIndexedSubscript:i];
      [v25 setOffset:v23];
    }
  }

  for (j = 0; j != 31; ++j)
  {
    v27 = [(MDLVertexDescriptor *)v3 layouts];
    v28 = [v27 count];

    if (j >= v28)
    {
      break;
    }

    v29 = [(MDLVertexDescriptor *)v3 layouts];
    v30 = [v29 objectAtIndexedSubscript:j];
    v31 = [v30 stride];

    if (v31)
    {
      v32 = [(MDLVertexDescriptor *)v3 layouts];
      v33 = [v32 objectAtIndexedSubscript:j];
      v34 = [v33 stride];
      v35 = [v4 layouts];
      v36 = [v35 objectAtIndexedSubscript:j];
      [v36 setStride:v34];
    }
  }

  v37 = v4;
LABEL_13:

  return v37;
}

Class initMDLSubmesh()
{
  if (ModelIOLibrary_sOnce != -1)
  {
    initMDLSubmesh_cold_1();
  }

  result = objc_getClass("MDLSubmesh");
  classMDLSubmesh = result;
  getMDLSubmeshClass = MDLSubmeshFunction;
  return result;
}

void *__ModelIOLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/ModelIO.framework/ModelIO", 2);
  ModelIOLibrary_sLib = result;
  return result;
}

Class initMDLMesh()
{
  if (ModelIOLibrary_sOnce != -1)
  {
    initMDLSubmesh_cold_1();
  }

  result = objc_getClass("MDLMesh");
  classMDLMesh = result;
  getMDLMeshClass = MDLMeshFunction;
  return result;
}

Class initMDLVertexDescriptor()
{
  if (ModelIOLibrary_sOnce != -1)
  {
    initMDLSubmesh_cold_1();
  }

  result = objc_getClass("MDLVertexDescriptor");
  classMDLVertexDescriptor = result;
  getMDLVertexDescriptorClass = MDLVertexDescriptorFunction;
  return result;
}

void sub_1D96A3B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ComputeSequenceLengthInBits(uint64_t result, int a2)
{
  if (a2 > 5)
  {
    if (a2 > 8)
    {
      if (a2 != 9)
      {
        if (a2 != 10)
        {
          if (a2 == 11)
          {
            return (5 * result);
          }

          return 0xFFFFFFFFLL;
        }

        v4 = 23;
        return (result * v4 + 4) / 5uLL;
      }

      v2 = 13;
    }

    else
    {
      if (a2 != 6)
      {
        if (a2 != 7)
        {
          return (4 * result);
        }

        v4 = 18;
        return (result * v4 + 4) / 5uLL;
      }

      v2 = 10;
    }

    v3 = result * v2 + 2;
    return v3 / 3uLL;
  }

  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        return (3 * result);
      }

      v4 = 13;
      return (result * v4 + 4) / 5uLL;
    }

    v3 = 7 * result + 2;
    return v3 / 3uLL;
  }

  if (!a2)
  {
    return result;
  }

  if (a2 == 1)
  {
    return (1717986919 * ((8 * result) | 4u)) >> 33;
  }

  if (a2 != 2)
  {
    return 0xFFFFFFFFLL;
  }

  return (2 * result);
}

Class initMDLMeshBufferMap()
{
  if (ModelIOLibrary_sOnce_0 != -1)
  {
    initMDLMeshBufferMap_cold_1();
  }

  result = objc_getClass("MDLMeshBufferMap");
  classMDLMeshBufferMap = result;
  getMDLMeshBufferMapClass = MDLMeshBufferMapFunction;
  return result;
}

void *__ModelIOLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/Frameworks/ModelIO.framework/ModelIO", 2);
  ModelIOLibrary_sLib_0 = result;
  return result;
}

id _MTKModelErrorWithCodeAndErrorString(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v10 = @"MTKModelErrorKey";
  v11[0] = a2;
  v4 = MEMORY[0x1E695DF20];
  v5 = a2;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"MTKModelErrorDomain" code:a1 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t printIndices16(uint64_t a1, unint64_t a2)
{
  puts("16Bit idnices:");
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      printf("%d ", *(a1 + 2 * v4));
      if (v5 && 100 * (v5 / 0x64) == v5)
      {
        putchar(10);
      }

      v4 = ++v5;
    }

    while (v5 < a2);
  }

  return putchar(10);
}

uint64_t printIndices32(uint64_t a1, unint64_t a2)
{
  puts("32Bit idnices:");
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      printf("%d ", *(a1 + 4 * v4));
      if (v5 && 100 * (v5 / 0x64) == v5)
      {
        putchar(10);
      }

      v4 = ++v5;
    }

    while (v5 < a2);
  }

  return putchar(10);
}

uint64_t _mtkLinkedOSVersion()
{
  if (_mtkLinkedOSVersion_once != -1)
  {
    _mtkLinkedOSVersion_cold_1();
  }

  return _mtkLinkedOSVersion_version;
}

uint64_t ___mtkLinkedOSVersion_block_invoke()
{
  result = dyld_get_program_sdk_version();
  _mtkLinkedOSVersion_version = result;
  return result;
}

void MTKModelIOVertexDescriptorFromMetalWithError_cold_1(void *a1)
{
  if (a1)
  {
    *a1 = _MTKModelErrorWithCodeAndErrorString(0, @"Too many vertex attributes in MTLVertexDescriptor to create a MDLVertexDescriptor");
  }

  __assert_rtn("MTKModelIOVertexDescriptorFromMetalWithError", "MTKModel.m", 612, "!Model I/O vertex descriptor attribute count should be at least MTL_MAX_VERTEX_ATTRIBUTES");
}

void MTKModelIOVertexDescriptorFromMetalWithError_cold_2(void *a1)
{
  if (a1)
  {
    *a1 = _MTKModelErrorWithCodeAndErrorString(0, @"Too many vertex layouts in MTLVertexDescriptor to create a MDLVertexDescriptor");
  }

  __assert_rtn("MTKModelIOVertexDescriptorFromMetalWithError", "MTKModel.m", 634, "!Model I/O vertex descriptor layouts count should be at least MTL_MAX_VERTEX_BUFFERS");
}