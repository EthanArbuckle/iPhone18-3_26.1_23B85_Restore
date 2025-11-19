uint64_t CI::format_from_CGImageProvider(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  ComponentType = CGImageProviderGetComponentType();
  if ((ComponentType - 1) > 5)
  {
    return 0;
  }

  v2 = ComponentType;
  PixelSize = CGImageProviderGetPixelSize();
  v4 = 8 * PixelSize;
  if (8 * PixelSize != 128 && (PixelSize & 0x1FFFFFFFFFFFFFFBLL) != 8 && (PixelSize & 0x1FFFFFFFFFFFFFFDLL) != 4 && (PixelSize & 0x1FFFFFFFFFFFFFFDLL) != 1 && v4 != 16)
  {
    return 0;
  }

  ColorSpace = CGImageProviderGetColorSpace();
  Model = CGColorSpaceGetModel(ColorSpace);
  AlphaInfo = CGImageProviderGetAlphaInfo();
  if (Model == kCGColorSpaceModelRGB)
  {
    v9 = 0;
    v8 = 1;
  }

  else
  {
    if (Model)
    {
      return 0;
    }

    v8 = 0;
    v9 = 1;
  }

  result = 0;
  if (v2 > 3)
  {
    if (v2 != 4)
    {
      if (v2 != 5)
      {
        if (v2 != 6)
        {
          return result;
        }

        if (v4 == 32)
        {
          if (AlphaInfo == 3)
          {
            v10 = v8;
          }

          else
          {
            v10 = 0;
          }

          if (v10)
          {
            return 784;
          }

          v24 = AlphaInfo == 5 ? v8 : 0;
          if (v24)
          {
            return 775;
          }

          if (AlphaInfo == 4)
          {
            v32 = v8;
          }

          else
          {
            v32 = 0;
          }

          if (v32)
          {
            return 784;
          }

          if (AlphaInfo != 6)
          {
            LOBYTE(v8) = 0;
          }

          if (v8)
          {
            return 775;
          }
        }

        return 0;
      }

      if (v4 == 16)
      {
        v13 = v9;
      }

      else
      {
        v13 = 0;
      }

      if (v13 == 1 && !AlphaInfo)
      {
        return 2051;
      }

      v18 = v9 ^ 1;
      if (v4 != 32)
      {
        v18 = 1;
      }

      if ((v18 & 1) == 0)
      {
        v16 = ((AlphaInfo - 1) & 0xFFFFFFFD) == 0;
        v17 = 2052;
        goto LABEL_64;
      }

      if (v4 == 48)
      {
        v22 = v8;
      }

      else
      {
        v22 = 0;
      }

      if (v22 == 1 && !AlphaInfo)
      {
        return 2055;
      }

      v27 = v8 ^ 1;
      if (v4 != 64)
      {
        v27 = 1;
      }

      if ((v27 & 1) == 0)
      {
        if ((AlphaInfo | 2) == 3)
        {
          return 2056;
        }

        if (AlphaInfo == 5)
        {
          return 2060;
        }
      }

      return 0;
    }

    if (v4 == 32)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    if (v12 == 1 && !AlphaInfo)
    {
      return 2307;
    }

    v15 = v9 ^ 1;
    if (v4 != 64)
    {
      v15 = 1;
    }

    if ((v15 & 1) == 0)
    {
      v16 = ((AlphaInfo - 1) & 0xFFFFFFFD) == 0;
      v17 = 2308;
      goto LABEL_64;
    }

    if (v4 == 96)
    {
      v21 = v8;
    }

    else
    {
      v21 = 0;
    }

    if (v21 == 1 && !AlphaInfo)
    {
      return 2311;
    }

    v26 = v8 ^ 1;
    if (v4 != 128)
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }

    if ((AlphaInfo | 2) == 3)
    {
      return 2312;
    }

    v34 = AlphaInfo - 5;
    v33 = AlphaInfo == 5;
    v35 = 2316;
    goto LABEL_135;
  }

  if (v2 == 1)
  {
    if (v4 == 8)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    if (v14 == 1 && !AlphaInfo)
    {
      return 259;
    }

    v19 = v9 ^ 1;
    if (v4 != 16)
    {
      v19 = 1;
    }

    if ((v19 & 1) == 0)
    {
      v16 = ((AlphaInfo - 1) & 0xFFFFFFFD) == 0;
      v17 = 260;
      goto LABEL_64;
    }

    if (v4 == 24)
    {
      v23 = v8;
    }

    else
    {
      v23 = 0;
    }

    if (v23 == 1 && !AlphaInfo)
    {
      return 263;
    }

    v28 = v8 ^ 1;
    if (v4 != 32)
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }

    BitmapInfo = CGImageProviderGetBitmapInfo();
    v30 = BitmapInfo;
    if (BitmapInfo > 0x2000)
    {
      if (BitmapInfo > 8195)
      {
        if (BitmapInfo != 8196)
        {
          if (BitmapInfo == 8197)
          {
            return 271;
          }

          if (BitmapInfo == 8198)
          {
            return 270;
          }

          goto LABEL_152;
        }
      }

      else if (BitmapInfo != 8194)
      {
        return 267;
      }

      return 266;
    }

    if (BitmapInfo > 3)
    {
      if (BitmapInfo != 4)
      {
        if (BitmapInfo == 5)
        {
          return 268;
        }

        if (BitmapInfo == 6)
        {
          return 269;
        }

LABEL_152:
        if ((AlphaInfo | 2) == 3)
        {
          return 264;
        }

        if (AlphaInfo != 5)
        {
          return 0;
        }

        return 268;
      }
    }

    else
    {
      result = 264;
      if (v30 == 1)
      {
        return result;
      }

      if (v30 != 2)
      {
        if (v30 == 3)
        {
          return result;
        }

        goto LABEL_152;
      }
    }

    return 265;
  }

  if (v2 != 2)
  {
    return result;
  }

  if (v4 == 16)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v11 == 1 && !AlphaInfo)
  {
    return 1795;
  }

  v20 = v9 ^ 1;
  if (v4 != 32)
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    v16 = ((AlphaInfo - 1) & 0xFFFFFFFD) == 0;
    v17 = 1796;
LABEL_64:
    if (v16)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  if (v4 == 48)
  {
    v25 = v8;
  }

  else
  {
    v25 = 0;
  }

  if (v25 == 1 && !AlphaInfo)
  {
    return 1799;
  }

  v31 = v8 ^ 1;
  if (v4 != 64)
  {
    v31 = 1;
  }

  if (v31)
  {
    return 0;
  }

  if ((AlphaInfo | 2) == 3)
  {
    return 1800;
  }

  v34 = AlphaInfo - 5;
  v33 = AlphaInfo == 5;
  v35 = 1804;
LABEL_135:
  if (v33)
  {
    result = v35;
  }

  else
  {
    result = v35 + 1;
  }

  if (v34 >= 2)
  {
    return 0;
  }

  return result;
}

uint64_t CI::alpha_mode_from_CGImage(uint64_t this, CGImage *a2)
{
  if (this)
  {
    v2 = this;
    ImageProvider = CGImageGetImageProvider();
    if (ImageProvider && (v4 = ImageProvider, CI::format_from_CGImageProvider(ImageProvider)))
    {

      return CI::alpha_mode_from_CGImageProvider(v4);
    }

    else
    {
      AlphaInfo = CGImageGetAlphaInfo(v2);
      if (AlphaInfo > kCGImageAlphaOnly)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return dword_19CF2CEA8[AlphaInfo];
      }
    }
  }

  return this;
}

uint64_t CI::alpha_mode_from_CGImageProvider(uint64_t result)
{
  if (result)
  {
    AlphaInfo = CGImageProviderGetAlphaInfo();
    if (AlphaInfo > 5)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return dword_19CF2CEC8[AlphaInfo];
    }
  }

  return result;
}

uint64_t CI::PixelFormatType_from_format(int a1)
{
  result = 0;
  if (a1 <= 1797)
  {
    if (a1 <= 772)
    {
      if (a1 <= 529)
      {
        switch(a1)
        {
          case 257:
            result = 1093677112;
            break;
          case 258:
            result = 1667844408;
            break;
          case 259:
            result = 1278226488;
            break;
          case 260:
            result = 1279340600;
            break;
          case 261:
            result = 826486840;
            break;
          case 262:
            result = 843264056;
            break;
          case 263:
            result = 24;
            break;
          case 264:
            result = 1380401729;
            break;
          case 265:
            result = 32;
            break;
          case 266:
            result = 1111970369;
            break;
          case 267:
            result = 1094862674;
            break;
          case 274:
            result = 875704422;
            break;
          case 275:
            result = 875836518;
            break;
          case 276:
            result = 846624102;
            break;
          case 277:
            result = 2037741158;
            break;
          case 278:
            result = 875704934;
            break;
          default:
            return result;
        }

        return result;
      }

      if (a1 == 771)
      {
        v25 = 1278226736;
      }

      else
      {
        v25 = 0;
      }

      if (a1 == 535)
      {
        v5 = 2033463352;
      }

      else
      {
        v5 = v25;
      }

      if (a1 == 534)
      {
        v26 = 875704950;
      }

      else
      {
        v26 = 0;
      }

      if (a1 == 533)
      {
        v27 = 2037741171;
      }

      else
      {
        v27 = v26;
      }

      if (a1 <= 534)
      {
        v5 = v27;
      }

      v8 = 875704438;
      if (a1 == 532)
      {
        v28 = 846624121;
      }

      else
      {
        v28 = 0;
      }

      if (a1 == 531)
      {
        v29 = 875836534;
      }

      else
      {
        v29 = v28;
      }

      if (a1 != 530)
      {
        v8 = v29;
      }

      v9 = a1 <= 532;
      goto LABEL_249;
    }

    if (a1 <= 1285)
    {
      if (a1 <= 786)
      {
        if (a1 == 786)
        {
          v45 = 2019963440;
        }

        else
        {
          v45 = 0;
        }

        if (a1 == 785)
        {
          v46 = 1667838256;
        }

        else
        {
          v46 = v45;
        }

        if (a1 == 784)
        {
          v5 = 1815162994;
        }

        else
        {
          v5 = v46;
        }

        if (a1 == 774)
        {
          v47 = 843264304;
        }

        else
        {
          v47 = 0;
        }

        if (a1 == 773)
        {
          v8 = 826487088;
        }

        else
        {
          v8 = v47;
        }

        v9 = a1 <= 783;
      }

      else
      {
        if (a1 == 1285)
        {
          v19 = 828584240;
        }

        else
        {
          v19 = 0;
        }

        if (a1 == 1046)
        {
          v5 = 2016686642;
        }

        else
        {
          v5 = v19;
        }

        if (a1 == 1043)
        {
          v5 = 2016687156;
        }

        if (a1 == 1042)
        {
          v20 = 2016686640;
        }

        else
        {
          v20 = 0;
        }

        if (a1 == 790)
        {
          v21 = 2019963442;
        }

        else
        {
          v21 = v20;
        }

        if (a1 == 787)
        {
          v8 = 2019963956;
        }

        else
        {
          v8 = v21;
        }

        v9 = a1 <= 1042;
      }
    }

    else
    {
      if (a1 <= 1557)
      {
        if (a1 == 1555)
        {
          v10 = 1882469428;
        }

        else
        {
          v10 = 0;
        }

        if (a1 == 1554)
        {
          v10 = 1882468912;
        }

        if (a1 == 1302)
        {
          v10 = 1885745714;
        }

        v11 = 1885746228;
        if (a1 != 1299)
        {
          v11 = 0;
        }

        if (a1 == 1298)
        {
          v11 = 1885745712;
        }

        if (a1 == 1286)
        {
          v11 = 845361456;
        }

        if (a1 <= 1301)
        {
          return v11;
        }

        else
        {
          return v10;
        }
      }

      if (a1 == 1797)
      {
        v34 = 826487094;
      }

      else
      {
        v34 = 0;
      }

      if (a1 == 1796)
      {
        v35 = 1279340854;
      }

      else
      {
        v35 = v34;
      }

      if (a1 == 1795)
      {
        v5 = 1278226742;
      }

      else
      {
        v5 = v35;
      }

      if (a1 == 1794)
      {
        v36 = 1667844406;
      }

      else
      {
        v36 = 0;
      }

      if (a1 == 1793)
      {
        v37 = 1093677366;
      }

      else
      {
        v37 = v36;
      }

      if (a1 == 1558)
      {
        v8 = 1882468914;
      }

      else
      {
        v8 = v37;
      }

      v9 = a1 <= 1794;
    }

LABEL_249:
    if (v9)
    {
      return v8;
    }

    else
    {
      return v5;
    }
  }

  if (a1 <= 2309)
  {
    if (a1 <= 2052)
    {
      if (a1 <= 1810)
      {
        if (a1 == 1810)
        {
          v42 = 1936077360;
        }

        else
        {
          v42 = 0;
        }

        if (a1 == 1801)
        {
          v43 = 1664496754;
        }

        else
        {
          v43 = v42;
        }

        if (a1 == 1800)
        {
          v5 = 1815491698;
        }

        else
        {
          v5 = v43;
        }

        if (a1 == 1799)
        {
          v44 = 1815361650;
        }

        else
        {
          v44 = 0;
        }

        if (a1 == 1798)
        {
          v8 = 843264310;
        }

        else
        {
          v8 = v44;
        }

        v9 = a1 <= 1799;
      }

      else
      {
        if (a1 == 2052)
        {
          v16 = 1279340648;
        }

        else
        {
          v16 = 0;
        }

        if (a1 == 2051)
        {
          v17 = 1278226536;
        }

        else
        {
          v17 = v16;
        }

        if (a1 == 2050)
        {
          v5 = 1667844456;
        }

        else
        {
          v5 = v17;
        }

        if (a1 == 2049)
        {
          v18 = 1093677160;
        }

        else
        {
          v18 = 0;
        }

        if (a1 == 1814)
        {
          v8 = 1936077362;
        }

        else
        {
          v8 = v18;
        }

        if (a1 == 1811)
        {
          v8 = 1936077876;
        }

        v9 = a1 <= 2049;
      }
    }

    else if (a1 > 2069)
    {
      if (a1 == 2309)
      {
        v30 = 826486886;
      }

      else
      {
        v30 = 0;
      }

      if (a1 == 2308)
      {
        v31 = 1279340646;
      }

      else
      {
        v31 = v30;
      }

      if (a1 == 2307)
      {
        v5 = 1278226534;
      }

      else
      {
        v5 = v31;
      }

      if (a1 == 2306)
      {
        v32 = 1667844454;
      }

      else
      {
        v32 = 0;
      }

      if (a1 == 2305)
      {
        v33 = 1093677158;
      }

      else
      {
        v33 = v32;
      }

      if (a1 == 2070)
      {
        v8 = 1751527986;
      }

      else
      {
        v8 = v33;
      }

      v9 = a1 <= 2306;
    }

    else
    {
      if (a1 == 2067)
      {
        v3 = 1751528500;
      }

      else
      {
        v3 = 0;
      }

      if (a1 == 2066)
      {
        v4 = 1751527984;
      }

      else
      {
        v4 = v3;
      }

      if (a1 == 2056)
      {
        v5 = 1380411457;
      }

      else
      {
        v5 = v4;
      }

      if (a1 == 2055)
      {
        v6 = 1667838824;
      }

      else
      {
        v6 = 0;
      }

      if (a1 == 2054)
      {
        v7 = 843264104;
      }

      else
      {
        v7 = v6;
      }

      if (a1 == 2053)
      {
        v8 = 826486888;
      }

      else
      {
        v8 = v7;
      }

      v9 = a1 <= 2055;
    }

    goto LABEL_249;
  }

  if (a1 <= 3345)
  {
    if (a1 <= 2568)
    {
      if (a1 == 2567)
      {
        v48 = 1999843442;
      }

      else
      {
        v48 = 0;
      }

      if (a1 == 2313)
      {
        v49 = 1667839078;
      }

      else
      {
        v49 = v48;
      }

      if (a1 == 2312)
      {
        v5 = 1380410945;
      }

      else
      {
        v5 = v49;
      }

      v8 = 1667838822;
      if (a1 != 2311)
      {
        v8 = 0;
      }

      if (a1 == 2310)
      {
        v8 = 843264102;
      }

      v9 = a1 <= 2311;
    }

    else
    {
      if (a1 == 3334)
      {
        v22 = 843264306;
      }

      else
      {
        v22 = 0;
      }

      if (a1 == 3333)
      {
        v23 = 826487090;
      }

      else
      {
        v23 = v22;
      }

      if (a1 == 3331)
      {
        v5 = 1278226738;
      }

      else
      {
        v5 = v23;
      }

      if (a1 == 3081)
      {
        v24 = 1667839024;
      }

      else
      {
        v24 = 0;
      }

      if (a1 == 3079)
      {
        v24 = 1667838768;
      }

      if (a1 == 2569)
      {
        v8 = 1999908961;
      }

      else
      {
        v8 = v24;
      }

      v9 = a1 <= 3330;
    }

    goto LABEL_249;
  }

  if (a1 <= 3857)
  {
    if (a1 == 3606)
    {
      v12 = 1953903154;
    }

    else
    {
      v12 = 0;
    }

    if (a1 == 3603)
    {
      v13 = 1953903668;
    }

    else
    {
      v13 = v12;
    }

    if (a1 == 3602)
    {
      v5 = 1953903152;
    }

    else
    {
      v5 = v13;
    }

    if (a1 == 3350)
    {
      v14 = 1952854578;
    }

    else
    {
      v14 = 0;
    }

    if (a1 == 3347)
    {
      v15 = 1952855092;
    }

    else
    {
      v15 = v14;
    }

    if (a1 == 3346)
    {
      v8 = 1952854576;
    }

    else
    {
      v8 = v15;
    }

    v9 = a1 <= 3601;
    goto LABEL_249;
  }

  if (a1 == 4616)
  {
    v38 = 1647534392;
  }

  else
  {
    v38 = 0;
  }

  if (a1 == 4360)
  {
    v39 = 1667838776;
  }

  else
  {
    v39 = v38;
  }

  if (a1 == 3862)
  {
    v39 = 1937125938;
  }

  v40 = 1937126452;
  if (a1 == 3860)
  {
    v41 = 1983000886;
  }

  else
  {
    v41 = 0;
  }

  if (a1 != 3859)
  {
    v40 = v41;
  }

  if (a1 == 3858)
  {
    v40 = 1937125936;
  }

  if (a1 <= 3861)
  {
    return v40;
  }

  else
  {
    return v39;
  }
}

uint64_t CI::PixelFormatType_approx_from_format(int a1)
{
  result = CI::PixelFormatType_from_format(a1);
  if (result)
  {
    return result;
  }

  if (a1 <= 1792)
  {
    if (a1 <= 532)
    {
      if (a1 > 529)
      {
        if (a1 == 532)
        {
          v9 = 846624121;
        }

        else
        {
          v9 = 0;
        }

        if (a1 == 531)
        {
          v10 = 875836534;
        }

        else
        {
          v10 = v9;
        }

        if (a1 == 530)
        {
          return 875704438;
        }

        else
        {
          return v10;
        }
      }

      else
      {
        switch(a1)
        {
          case 257:
            result = 1093677112;
            break;
          case 258:
            v12 = 1667844406;
            return (v12 + 2);
          case 259:
            result = 1278226488;
            break;
          case 260:
            result = 1279340600;
            break;
          case 261:
            result = 826486840;
            break;
          case 262:
            result = 843264056;
            break;
          case 263:
            result = 24;
            break;
          case 264:
          case 268:
            v3 = 16961;
            return v3 | 0x52470000u;
          case 265:
          case 269:
            result = 32;
            break;
          case 266:
          case 270:
            result = 1111970369;
            break;
          case 267:
          case 271:
            result = 1094862674;
            break;
          case 274:
            result = 875704422;
            break;
          case 275:
            result = 875836518;
            break;
          case 276:
            result = 846624102;
            break;
          case 277:
            result = 2037741158;
            break;
          case 278:
            result = 875704934;
            break;
          default:
            return result;
        }
      }

      return result;
    }

    if (a1 > 789)
    {
      if (a1 <= 1297)
      {
        if (a1 > 1045)
        {
          if (a1 != 1046)
          {
            if (a1 == 1285)
            {
              return 828584240;
            }

            if (a1 == 1286)
            {
              return 845361456;
            }

            return result;
          }

          v6 = 2016686640;
          return v6 | 2u;
        }

        if (a1 == 790)
        {
          return 2019963442;
        }

        if (a1 == 1042)
        {
          return 2016686640;
        }

        if (a1 != 1043)
        {
          return result;
        }

        v4 = 2016686640;
        return (v4 + 516);
      }

      if (a1 > 1553)
      {
        if (a1 == 1554)
        {
          return 1882468912;
        }

        if (a1 != 1555)
        {
          if (a1 != 1558)
          {
            return result;
          }

          v6 = 1882468912;
          return v6 | 2u;
        }

        v4 = 1882468912;
        return (v4 + 516);
      }

      if (a1 != 1298)
      {
        if (a1 != 1299)
        {
          if (a1 == 1302)
          {
            return 1885745714;
          }

          return result;
        }

        v11 = 1885745714;
        return (v11 + 514);
      }

      v17 = 1882468912;
      return (v17 + 3276800);
    }

    if (a1 <= 773)
    {
      if (a1 <= 534)
      {
        if (a1 == 533)
        {
          return 2037741171;
        }

        else
        {
          return 875704950;
        }
      }

      switch(a1)
      {
        case 535:
          return 2033463352;
        case 771:
          v8 = 1278226488;
          break;
        case 773:
          v8 = 826486840;
          break;
        default:
          return result;
      }
    }

    else
    {
      if (a1 > 784)
      {
        if (a1 == 785)
        {
          return 1667838256;
        }

        if (a1 != 786)
        {
          if (a1 != 787)
          {
            return result;
          }

          v11 = 2019963442;
          return (v11 + 514);
        }

        v17 = 2016686640;
        return (v17 + 3276800);
      }

      if (a1 != 774)
      {
        if (a1 == 775 || a1 == 784)
        {
          return 1815162994;
        }

        return result;
      }

      v8 = 843264056;
    }

    return (v8 + 248);
  }

  if (a1 > 2307)
  {
    if (a1 <= 3332)
    {
      if (a1 <= 2316)
      {
        if (a1 <= 2310)
        {
          if (a1 == 2308)
          {
            return 1279340646;
          }

          if (a1 == 2309)
          {
            v7 = 826486840;
          }

          else
          {
            v7 = 843264056;
          }

          return (v7 + 46);
        }

        if (a1 <= 2312)
        {
          if (a1 == 2311)
          {
            return 1667838822;
          }

LABEL_120:
          v3 = 26177;
          return v3 | 0x52470000u;
        }

        if (a1 != 2313)
        {
          if (a1 != 2316)
          {
            return result;
          }

          goto LABEL_120;
        }

LABEL_134:
        v14 = 13414;
        return v14 | 0x63690000u;
      }

      if (a1 <= 2823)
      {
        if (a1 != 2317)
        {
          if (a1 == 2567)
          {
            return 1999843442;
          }

          if (a1 == 2569)
          {
            return 1999908961;
          }

          return result;
        }

        goto LABEL_134;
      }

      if (a1 <= 3080)
      {
        if (a1 == 2824)
        {
          return 1815491698;
        }

        if (a1 == 3079)
        {
          return 1667838768;
        }

        return result;
      }

      if (a1 == 3081)
      {
        return 1667839024;
      }

      if (a1 != 3331)
      {
        return result;
      }

      v13 = 1278226488;
      return (v13 + 250);
    }

    if (a1 > 3605)
    {
      if (a1 > 3859)
      {
        if (a1 > 4359)
        {
          if (a1 == 4360)
          {
            return 1667838776;
          }

          else if (a1 == 4616)
          {
            return 1647534392;
          }
        }

        else if (a1 == 3860)
        {
          return 1983000886;
        }

        else if (a1 == 3862)
        {
          return 1937125938;
        }

        return result;
      }

      if (a1 == 3606)
      {
        return 1953903154;
      }

      if (a1 != 3858)
      {
        if (a1 != 3859)
        {
          return result;
        }

        v11 = 1937125938;
        return (v11 + 514);
      }

      v16 = 1936077360;
    }

    else
    {
      if (a1 <= 3346)
      {
        switch(a1)
        {
          case 3333:
            v13 = 826486840;
            break;
          case 3334:
            v13 = 843264056;
            break;
          case 3346:
            return 1952854576;
          default:
            return result;
        }

        return (v13 + 250);
      }

      if (a1 <= 3601)
      {
        if (a1 != 3347)
        {
          if (a1 != 3350)
          {
            return result;
          }

          v6 = 1952854576;
          return v6 | 2u;
        }

        v4 = 1952854576;
        return (v4 + 516);
      }

      if (a1 != 3602)
      {
        if (a1 != 3603)
        {
          return result;
        }

        v11 = 1953903154;
        return (v11 + 514);
      }

      v16 = 1952854576;
    }

    return v16 | 0x100000u;
  }

  if (a1 <= 2049)
  {
    switch(a1)
    {
      case 1793:
        v15 = 1093677112;
        goto LABEL_148;
      case 1794:
        v14 = 18742;
        return v14 | 0x63690000u;
      case 1795:
        v15 = 1278226488;
        goto LABEL_148;
      case 1796:
        return 1279340854;
      case 1797:
        v15 = 826486840;
        goto LABEL_148;
      case 1798:
        v15 = 843264056;
LABEL_148:
        result = (v15 + 254);
        break;
      case 1799:
        result = 1815361650;
        break;
      case 1800:
      case 1804:
        return 1815491698;
      case 1801:
      case 1805:
        result = 1664496754;
        break;
      case 1802:
      case 1803:
      case 1806:
      case 1807:
      case 1808:
      case 1809:
      case 1812:
      case 1813:
        return result;
      case 1810:
        result = 1936077360;
        break;
      case 1811:
        v4 = 1936077360;
        return (v4 + 516);
      case 1814:
        v6 = 1936077360;
        return v6 | 2u;
      default:
        if (a1 == 2049)
        {
          result = 1093677160;
        }

        else
        {
          result = 0;
        }

        break;
    }

    return result;
  }

  if (a1 <= 2059)
  {
    if (a1 > 2052)
    {
      if (a1 <= 2054)
      {
        if (a1 == 2053)
        {
          v5 = 826486840;
        }

        else
        {
          v5 = 843264056;
        }

        return (v5 + 48);
      }

      if (a1 == 2055)
      {
        return 1667838824;
      }

      if (a1 == 2056)
      {
        return 1380411457;
      }

      return result;
    }

    if (a1 == 2050)
    {
      return 1667844456;
    }

    if (a1 != 2051)
    {
      v12 = 1279340646;
      return (v12 + 2);
    }

    v5 = 1278226488;
    return (v5 + 48);
  }

  if (a1 > 2069)
  {
    if (a1 > 2305)
    {
      if (a1 == 2306)
      {
        v5 = 1667844406;
        return (v5 + 48);
      }

      v7 = 1278226488;
      return (v7 + 46);
    }

    if (a1 != 2070)
    {
      if (a1 != 2305)
      {
        return result;
      }

      v7 = 1093677112;
      return (v7 + 46);
    }

    v6 = 1751527984;
    return v6 | 2u;
  }

  switch(a1)
  {
    case 2060:
      return 1380411457;
    case 2066:
      return 1751527984;
    case 2067:
      v4 = 1751527984;
      return (v4 + 516);
  }

  return result;
}

uint64_t CI::format_from_PixelFormatType(CI *this)
{
  v1 = equivalent_uncompressed_format(this);
  result = 0;
  if (v1 <= 1667838821)
  {
    if (v1 <= 1093677157)
    {
      if (v1 <= 843264303)
      {
        if (v1 > 826487089)
        {
          if (v1 > 843264055)
          {
            switch(v1)
            {
              case 843264056:
                return 262;
              case 843264102:
                return 2310;
              case 843264104:
                return 2054;
            }
          }

          else
          {
            switch(v1)
            {
              case 826487090:
                return 3333;
              case 826487094:
                return 1797;
              case 828584240:
                return 1285;
            }
          }
        }

        else if (v1 > 826486885)
        {
          switch(v1)
          {
            case 826486886:
              return 2309;
            case 826486888:
              return 2053;
            case 826487088:
              return 773;
          }
        }

        else
        {
          switch(v1)
          {
            case 24:
              return 263;
            case 32:
              return 265;
            case 826486840:
              return 261;
          }
        }
      }

      else if (v1 <= 875704421)
      {
        if (v1 > 845361455)
        {
          switch(v1)
          {
            case 845361456:
              return 1286;
            case 846624102:
              return 276;
            case 846624121:
              return 532;
          }
        }

        else
        {
          switch(v1)
          {
            case 843264304:
              return 774;
            case 843264306:
              return 3334;
            case 843264310:
              return 1798;
          }
        }
      }

      else if (v1 <= 875704949)
      {
        switch(v1)
        {
          case 875704422:
            return 274;
          case 875704438:
            return 530;
          case 875704934:
            return 278;
        }
      }

      else if (v1 > 875836533)
      {
        if (v1 == 875836534)
        {
          return 531;
        }

        else if (v1 == 1093677112)
        {
          return 257;
        }
      }

      else if (v1 == 875704950)
      {
        return 534;
      }

      else if (v1 == 875836518)
      {
        return 275;
      }

      return result;
    }

    if (v1 <= 1279340645)
    {
      if (v1 <= 1278226533)
      {
        if (v1 > 1094862673)
        {
          switch(v1)
          {
            case 1094862674:
              return 267;
            case 1111970369:
              return 266;
            case 1278226488:
              return 259;
          }
        }

        else
        {
          switch(v1)
          {
            case 1093677158:
              return 2305;
            case 1093677160:
              return 2049;
            case 1093677366:
              return 1793;
          }
        }

        return result;
      }

      if (v1 <= 1278226737)
      {
        if (v1 == 1278226534)
        {
          return 2307;
        }

        if (v1 == 1278226536)
        {
          return 2051;
        }

        v3 = 1278226736;
        goto LABEL_142;
      }

      if (v1 == 1278226738)
      {
        return 3331;
      }

      if (v1 == 1278226742)
      {
        return 1795;
      }

      if (v1 != 1279340600)
      {
        return result;
      }
    }

    else
    {
      if (v1 > 1380411456)
      {
        if (v1 > 1664496753)
        {
          if (v1 > 1667838767)
          {
            if (v1 == 1667838768)
            {
              return 3079;
            }

            else if (v1 == 1667838776)
            {
              return 4360;
            }
          }

          else if (v1 == 1664496754)
          {
            return 1801;
          }

          else if (v1 == 1667838256)
          {
            return 785;
          }

          return result;
        }

        if (v1 == 1380411457)
        {
          return 2056;
        }

        if (v1 == 1647534392)
        {
          return 4616;
        }

        v3 = 1650943796;
        goto LABEL_142;
      }

      if (v1 <= 1279342647)
      {
        switch(v1)
        {
          case 1279340646:
            return 2308;
          case 1279340648:
            return 2052;
          case 1279340854:
            return 1796;
        }

        return result;
      }

      if (v1 != 1279342648)
      {
        if (v1 == 1380401729)
        {
          return 264;
        }

        if (v1 == 1380410945)
        {
          return 2312;
        }

        return result;
      }
    }

    return 260;
  }

  if (v1 <= 1885746227)
  {
    if (v1 > 1751410031)
    {
      if (v1 > 1815361649)
      {
        if (v1 <= 1882468913)
        {
          switch(v1)
          {
            case 1815361650:
              return 1799;
            case 1815491698:
              return 1800;
            case 1882468912:
              return 1554;
          }
        }

        else if (v1 > 1885745711)
        {
          if (v1 == 1885745712)
          {
            return 1298;
          }

          else if (v1 == 1885745714)
          {
            return 1302;
          }
        }

        else if (v1 == 1882468914)
        {
          return 1558;
        }

        else if (v1 == 1882469428)
        {
          return 1555;
        }

        return result;
      }

      if (v1 > 1751527985)
      {
        switch(v1)
        {
          case 1751527986:
            return 2070;
          case 1751528500:
            return 2067;
          case 1815162994:
            return 784;
        }

        return result;
      }

      if (v1 != 1751410032 && v1 != 1751411059)
      {
        if (v1 == 1751527984)
        {
          return 2066;
        }

        return result;
      }

      return 2051;
    }

    if (v1 <= 1667844453)
    {
      if (v1 > 1667839077)
      {
        switch(v1)
        {
          case 1667839078:
            return 2313;
          case 1667844406:
            return 1794;
          case 1667844408:
            return 258;
        }
      }

      else
      {
        switch(v1)
        {
          case 1667838822:
            return 2311;
          case 1667838824:
            return 2055;
          case 1667839024:
            return 3081;
        }
      }

      return result;
    }

    if (v1 <= 1717856626)
    {
      if (v1 == 1667844454)
      {
        return 2306;
      }

      if (v1 == 1667844456)
      {
        return 2050;
      }

      if (v1 != 1717855600)
      {
        return result;
      }

      return 2307;
    }

    if (v1 == 1717856627)
    {
      return 2307;
    }

    if (v1 == 1734505012)
    {
      return 771;
    }

    v3 = 1735549492;
LABEL_142:
    if (v1 != v3)
    {
      return result;
    }

    return 771;
  }

  if (v1 > 1953903667)
  {
    if (v1 <= 2016687155)
    {
      if (v1 > 1999908960)
      {
        switch(v1)
        {
          case 1999908961:
            return 2569;
          case 2016686640:
            return 1042;
          case 2016686642:
            return 1046;
        }
      }

      else
      {
        switch(v1)
        {
          case 1953903668:
            return 3603;
          case 1983000886:
            return 3860;
          case 1999843442:
            return 2567;
        }
      }
    }

    else if (v1 <= 2019963955)
    {
      switch(v1)
      {
        case 2016687156:
          return 1043;
        case 2019963440:
          return 786;
        case 2019963442:
          return 790;
      }
    }

    else if (v1 > 2037741157)
    {
      if (v1 == 2037741158)
      {
        return 277;
      }

      else if (v1 == 2037741171)
      {
        return 533;
      }
    }

    else if (v1 == 2019963956)
    {
      return 787;
    }

    else if (v1 == 2033463352)
    {
      return 535;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (v1 > 1937125937)
    {
      if (v1 <= 1952854577)
      {
        switch(v1)
        {
          case 1937125938:
            return 3862;
          case 1937126452:
            return 3859;
          case 1952854576:
            return 3346;
        }
      }

      else if (v1 > 1953903151)
      {
        if (v1 == 1953903152)
        {
          return 3602;
        }

        else if (v1 == 1953903154)
        {
          return 3606;
        }
      }

      else if (v1 == 1952854578)
      {
        return 3350;
      }

      else if (v1 == 1952855092)
      {
        return 3347;
      }

      return result;
    }

    if (v1 <= 1936077361)
    {
      if (v1 == 1885746228)
      {
        return 1299;
      }

      if (v1 != 1919379252)
      {
        if (v1 == 1936077360)
        {
          return 1810;
        }

        return result;
      }

      return 771;
    }

    switch(v1)
    {
      case 1936077362:
        return 1814;
      case 1936077876:
        return 1811;
      case 1937125936:
        return 3858;
    }
  }

  return result;
}

uint64_t CI::PixelFormatType_is_source_supported(CI *this)
{
  v1 = equivalent_uncompressed_format(this);
  result = 1;
  if (v1 > 1667839023)
  {
    if (v1 > 1936077359)
    {
      if (v1 > 1983000885)
      {
        if (v1 > 2019963439)
        {
          if (v1 > 2033463351)
          {
            if (v1 != 2033463352 && v1 != 2037741158)
            {
              v4 = 2037741171;
              goto LABEL_125;
            }
          }

          else if (v1 != 2019963440 && v1 != 2019963442)
          {
            v4 = 2019963956;
            goto LABEL_125;
          }
        }

        else if (v1 > 2016686639)
        {
          if (v1 != 2016686640 && v1 != 2016686642)
          {
            v4 = 2016687156;
            goto LABEL_125;
          }
        }

        else if (v1 != 1983000886 && v1 != 1999843442)
        {
          v4 = 1999908961;
          goto LABEL_125;
        }
      }

      else if (v1 > 1952854575)
      {
        if (v1 > 1953903151)
        {
          if (v1 != 1953903152 && v1 != 1953903154)
          {
            v4 = 1953903668;
            goto LABEL_125;
          }
        }

        else if (v1 != 1952854576 && v1 != 1952854578)
        {
          v4 = 1952855092;
          goto LABEL_125;
        }
      }

      else if (v1 > 1937125935)
      {
        if (v1 != 1937125936 && v1 != 1937125938)
        {
          v4 = 1937126452;
          goto LABEL_125;
        }
      }

      else if (v1 != 1936077360 && v1 != 1936077362)
      {
        v4 = 1936077876;
        goto LABEL_125;
      }

      return result;
    }

    if (v1 > 1751527985)
    {
      if (v1 > 1882468913)
      {
        if (v1 > 1885745713)
        {
          if (v1 != 1885745714 && v1 != 1885746228)
          {
            v4 = 1919379252;
            goto LABEL_125;
          }
        }

        else if (v1 != 1882468914 && v1 != 1882469428)
        {
          v4 = 1885745712;
          goto LABEL_125;
        }
      }

      else if (v1 > 1815361649)
      {
        if (v1 != 1815361650 && v1 != 1815491698)
        {
          v4 = 1882468912;
          goto LABEL_125;
        }
      }

      else if (v1 != 1751527986 && v1 != 1751528500)
      {
        v4 = 1815162994;
        goto LABEL_125;
      }

      return result;
    }

    if (v1 > 1717856626)
    {
      if (v1 > 1751410031)
      {
        if (v1 != 1751410032 && v1 != 1751411059)
        {
          v4 = 1751527984;
          goto LABEL_125;
        }
      }

      else if (v1 != 1717856627 && v1 != 1734505012)
      {
        v4 = 1735549492;
        goto LABEL_125;
      }

      return result;
    }

    if (v1 > 1667844405)
    {
      if ((v1 - 1667844406) > 0x32 || ((1 << (v1 - 54)) & 0x5000000000005) == 0)
      {
        v4 = 1717855600;
        goto LABEL_125;
      }

      return result;
    }

    if (v1 == 1667839024)
    {
      return result;
    }

    v5 = 13414;
LABEL_121:
    v4 = v5 | 0x63690000;
    goto LABEL_125;
  }

  if (v1 > 1093677365)
  {
    if (v1 <= 1279342647)
    {
      if (v1 <= 1278226735)
      {
        if (v1 > 1278226487)
        {
          v6 = v1 - 1278226488;
          if (v6 > 0x30 || ((1 << v6) & 0x1400000000001) == 0)
          {
            return 0;
          }
        }

        else if (v1 != 1093677366 && v1 != 1094862674)
        {
          v4 = 1111970369;
          goto LABEL_125;
        }
      }

      else if (((v1 - 1278226736) > 6 || ((1 << (v1 - 48)) & 0x45) == 0) && ((v1 - 1279340600) > 0x30 || ((1 << (v1 - 56)) & 0x1400000000001) == 0))
      {
        v4 = 1279340854;
        goto LABEL_125;
      }

      return result;
    }

    if (v1 <= 1664496753)
    {
      if (v1 > 1380411456)
      {
        if (v1 != 1380411457 && v1 != 1647534392)
        {
          v4 = 1650943796;
          goto LABEL_125;
        }
      }

      else if (v1 != 1279342648 && v1 != 1380401729)
      {
        v4 = 1380410945;
        goto LABEL_125;
      }

      return result;
    }

    if ((v1 - 1667838768) <= 0x38 && ((1 << (v1 - 48)) & 0x140000000000101) != 0 || v1 == 1664496754)
    {
      return result;
    }

    v5 = 12592;
    goto LABEL_121;
  }

  if (v1 <= 843264303)
  {
    if (v1 <= 826487087)
    {
      if (((v1 - 826486840) > 0x30 || ((1 << (v1 - 56)) & 0x1400000000001) == 0) && v1 != 24 && v1 != 32)
      {
        return 0;
      }
    }

    else if (((v1 - 826487088) > 6 || ((1 << (v1 - 48)) & 0x45) == 0) && ((v1 - 843264056) > 0x30 || ((1 << (v1 - 56)) & 0x1400000000001) == 0))
    {
      v4 = 828584240;
      goto LABEL_125;
    }
  }

  else if (v1 <= 875704437)
  {
    if (v1 > 845361455)
    {
      if (v1 <= 846624120)
      {
        if (v1 == 845361456)
        {
          return result;
        }

        v4 = 846624102;
LABEL_125:
        if (v1 == v4)
        {
          return result;
        }

        return 0;
      }

      if (v1 == 846624121)
      {
        return result;
      }

      v3 = 12390;
LABEL_124:
      v4 = v3 | 0x34320000;
      goto LABEL_125;
    }

    v7 = v1 - 843264304;
    if (v7 > 6 || ((1 << v7) & 0x45) == 0)
    {
      return 0;
    }
  }

  else if (v1 > 875836517)
  {
    if (((v1 - 1093677112) > 0x30 || ((1 << (v1 - 56)) & 0x1400000000001) == 0) && v1 != 875836518)
    {
      v4 = 875836534;
      goto LABEL_125;
    }
  }

  else if (v1 != 875704438 && v1 != 875704934)
  {
    v3 = 12918;
    goto LABEL_124;
  }

  return result;
}

uint64_t CI::format_from_CVPixelBuffer(CI *this, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  v4 = CI::format_from_PixelFormatType(PixelFormatType);
  v5 = CI::format_with_x_for_format(v4);
  if (v5 != v4)
  {
    v6 = v5;
    if (CVBufferGetAttachment(this, *MEMORY[0x1E6965CB8], 0) == *MEMORY[0x1E695E4D0])
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  return v4;
}

uint64_t CI::format_from_IOSurface(CI *this, __IOSurface *a2)
{
  PixelFormat = IOSurfaceGetPixelFormat(this);
  v4 = CI::format_from_PixelFormatType(PixelFormat);
  v5 = CI::format_with_x_for_format(v4);
  if (v5 != v4)
  {
    v6 = v5;
    v7 = IOSurfaceCopyValue(this, @"IOSurfaceAlphaIsOpaque");
    if (v7 == *MEMORY[0x1E695E4D0])
    {
      v4 = v6;
    }

    else
    {
      v4 = v4;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return v4;
}

uint64_t CI::format_from_IOSurface_ignore_values(CI *this, __IOSurface *a2)
{
  PixelFormat = IOSurfaceGetPixelFormat(this);

  return CI::format_from_PixelFormatType(PixelFormat);
}

uint64_t CI::iosurface_destination_format_supported_p(CI *this)
{
  v1 = equivalent_uncompressed_format(this);
  result = 1;
  if (v1 <= 1717855599)
  {
    if (v1 > 875836533)
    {
      if (v1 <= 1279340599)
      {
        if (v1 > 1278226487)
        {
          if ((v1 - 1278226488) > 0x30 || ((1 << (v1 - 56)) & 0x1400000000001) == 0)
          {
            v6 = v1 - 1278226736;
            if (v6 > 6 || ((1 << v6) & 0x45) == 0)
            {
              return 0;
            }
          }

          return result;
        }

        if (v1 == 875836534 || v1 == 1094862674)
        {
          return result;
        }

        v3 = 1111970369;
      }

      else if (v1 > 1380410944)
      {
        if (v1 > 1664496753)
        {
          if (v1 == 1664496754 || v1 == 1667838256)
          {
            return result;
          }

          v3 = 1667839024;
        }

        else
        {
          if (v1 == 1380410945 || v1 == 1380411457)
          {
            return result;
          }

          v3 = 1650943796;
        }
      }

      else
      {
        if (v1 <= 1279340853)
        {
          v4 = -1279340600;
LABEL_24:
          v5 = v1 + v4;
          if (v5 > 0x30 || ((1 << v5) & 0x1400000000001) == 0)
          {
            return 0;
          }

          return result;
        }

        if (v1 == 1279340854 || v1 == 1279342648)
        {
          return result;
        }

        v3 = 1380401729;
      }
    }

    else
    {
      if (v1 <= 843264303)
      {
        if (v1 <= 826487087)
        {
          if (((v1 - 826486840) > 0x30 || ((1 << (v1 - 56)) & 0x1400000000001) == 0) && v1 != 24 && v1 != 32)
          {
            return 0;
          }

          return result;
        }

        if ((v1 - 826487088) <= 6 && ((1 << (v1 - 48)) & 0x45) != 0)
        {
          return result;
        }

        v4 = -843264056;
        goto LABEL_24;
      }

      if (v1 > 875704421)
      {
        if (v1 <= 875704933)
        {
          if (v1 == 875704422)
          {
            return result;
          }

          v3 = 875704438;
        }

        else
        {
          if (v1 == 875704934 || v1 == 875704950)
          {
            return result;
          }

          v3 = 875836518;
        }
      }

      else
      {
        if ((v1 - 843264304) <= 6 && ((1 << (v1 - 48)) & 0x45) != 0 || v1 == 846624102)
        {
          return result;
        }

        v3 = 846624121;
      }
    }

LABEL_110:
    if (v1 == v3)
    {
      return result;
    }

    return 0;
  }

  if (v1 <= 1936077875)
  {
    if (v1 <= 1815361649)
    {
      if (v1 > 1751411058)
      {
        if (v1 <= 1751527985)
        {
          if (v1 == 1751411059)
          {
            return result;
          }

          v3 = 1751527984;
        }

        else
        {
          if (v1 == 1751527986 || v1 == 1751528500)
          {
            return result;
          }

          v3 = 1815162994;
        }
      }

      else if (v1 <= 1734505011)
      {
        if (v1 == 1717855600)
        {
          return result;
        }

        v3 = 1717856627;
      }

      else
      {
        if (v1 == 1734505012 || v1 == 1735549492)
        {
          return result;
        }

        v3 = 1751410032;
      }
    }

    else if (v1 <= 1885745711)
    {
      if (v1 <= 1882468911)
      {
        if (v1 == 1815361650)
        {
          return result;
        }

        v3 = 1815491698;
      }

      else
      {
        if (v1 == 1882468912 || v1 == 1882468914)
        {
          return result;
        }

        v3 = 1882469428;
      }
    }

    else if (v1 > 1919379251)
    {
      if (v1 == 1919379252 || v1 == 1936077360)
      {
        return result;
      }

      v3 = 1936077362;
    }

    else
    {
      if (v1 == 1885745712 || v1 == 1885745714)
      {
        return result;
      }

      v3 = 1885746228;
    }

    goto LABEL_110;
  }

  if (v1 > 1999843441)
  {
    if (v1 <= 2019963439)
    {
      if (v1 <= 2016686639)
      {
        if (v1 == 1999843442)
        {
          return result;
        }

        v3 = 1999908961;
      }

      else
      {
        if (v1 == 2016686640 || v1 == 2016686642)
        {
          return result;
        }

        v3 = 2016687156;
      }
    }

    else if (v1 > 2033463351)
    {
      if (v1 == 2033463352 || v1 == 2037741158)
      {
        return result;
      }

      v3 = 2037741171;
    }

    else
    {
      if (v1 == 2019963440 || v1 == 2019963442)
      {
        return result;
      }

      v3 = 2019963956;
    }

    goto LABEL_110;
  }

  if (v1 <= 1952854577)
  {
    if (v1 <= 1937125937)
    {
      if (v1 == 1936077876)
      {
        return result;
      }

      v3 = 1937125936;
    }

    else
    {
      if (v1 == 1937125938 || v1 == 1937126452)
      {
        return result;
      }

      v3 = 1952854576;
    }

    goto LABEL_110;
  }

  if (v1 > 1953903153)
  {
    if (v1 == 1953903154 || v1 == 1953903668)
    {
      return result;
    }

    v3 = 1983000886;
    goto LABEL_110;
  }

  if (v1 != 1952854578 && v1 != 1952855092)
  {
    v3 = 1953903152;
    goto LABEL_110;
  }

  return result;
}

void OUTLINED_FUNCTION_2_12(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

uint64_t CI::FoslAdapter::FoslAdapter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 144) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 160) = 0;
  *(a1 + 240) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 184) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 200) = a4;
  *(a1 + 208) = a5;
  *(a1 + 216) = a6;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 256) = 0;
  if ((*(*a2 + 16))(a2) == 84 && (*(a3 + 136) & 1) == 0)
  {
    v8 = *(a3 + 137);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 260) = v8 & 1;
  *(a1 + 24) = fosl_filter_createGraph();
  return a1;
}

uint64_t CI::FoslAdapter::getOrCreateImage(uint64_t a1, CI *this, uint64_t a3, int *a4, int a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a5 == 3)
  {
    v9 = 56;
  }

  else
  {
    v9 = 32;
  }

  v15[0] = CI::hash_image_node_id(this, a4[8]);
  *__str = v15;
  if (std::__tree<std::__value_type<unsigned long long,void *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,void *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,void *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + v9, v15)[5])
  {
    *__str = v15;
    return std::__tree<std::__value_type<unsigned long long,void *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,void *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,void *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + v9, v15)[5];
  }

  else
  {
    CI::SerialValArray<int>::append(*(a1 + 200), a5);
    CI::SerialObjectPtrArray::append(*(a1 + 216), a4);
    v11 = *(a1 + 20);
    *(a1 + 20) = v11 + 1;
    if (*(a1 + 260))
    {
      v12 = snprintf(__str, 0x40uLL, "_samplers[%d]");
    }

    else
    {
      v12 = snprintf(__str, 0x40uLL, "_i%d");
    }

    CI::SerialStringArray::append(*(a1 + 208), __str, v12);
    if (a3)
    {
      v13 = *(a3 + 153);
    }

    else
    {
      v13 = 0;
    }

    Image = fosl_filter_createImage(*(a1 + 24), v11, v13);
    v15[2] = v15;
    std::__tree<std::__value_type<unsigned long long,void *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,void *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,void *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + v9, v15)[5] = Image;
  }

  return Image;
}

uint64_t CI::FoslAdapter::getOrCreateFix(CI::FoslAdapter *this, IOSurfaceRef *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 9);
  *__str = &v8;
  if (!std::__tree<std::__value_type<unsigned long long,void *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,void *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,void *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 128, &v8)[5])
  {
    v4 = *(this + 4);
    *(this + 4) = v4 + 1;
    CI::SerialValArray<int>::append(*(this + 25), 6);
    v5 = snprintf(__str, 0x40uLL, "_u%d", v4);
    CI::SerialStringArray::append(*(this + 26), __str, v5);
    v6 = (*(**this + 16))() == 82;
    CI::SurfaceNode::chroma_scale_fix(a2, v6);
    operator new();
  }

  *__str = &v8;
  return std::__tree<std::__value_type<unsigned long long,void *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,void *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,void *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 128, &v8)[5];
}

uint64_t CI::FoslAdapter::getOrCreateFix(CI::FoslAdapter *this, CI::ProviderNode *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 9);
  *__str = &v7;
  if (!std::__tree<std::__value_type<unsigned long long,void *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,void *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,void *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 128, &v7)[5])
  {
    v4 = *(this + 4);
    *(this + 4) = v4 + 1;
    CI::SerialValArray<int>::append(*(this + 25), 6);
    v5 = snprintf(__str, 0x40uLL, "_u%d", v4);
    CI::SerialStringArray::append(*(this + 26), __str, v5);
    (*(**this + 16))();
    CI::ProviderNode::chroma_scale_fix(a2);
    operator new();
  }

  *__str = &v7;
  return std::__tree<std::__value_type<unsigned long long,void *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,void *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,void *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 128, &v7)[5];
}

uint64_t CI::FoslAdapter::getOrCreateTransformUniform(CI::FoslAdapter *this, CI::Node *a2, CI::TextureSampler *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v12[0] = CI::hash_image_node_id(a2, *(a3 + 8));
  *__str = v12;
  if (std::__tree<std::__value_type<unsigned long long,void *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,void *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,void *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 80, v12)[5])
  {
    *__str = v12;
    return std::__tree<std::__value_type<unsigned long long,void *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,void *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,void *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 80, v12)[5];
  }

  else
  {
    if (*(this + 260) == 1)
    {
      v6 = *(this + 5);
      v7 = v6 != 0;
      v8 = v6 - 1;
      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = *(this + 4);
      *(this + 4) = v9 + 1;
    }

    CI::SerialValArray<int>::append(*(this + 25), 40);
    if (*(this + 260))
    {
      v10 = snprintf(__str, 0x40uLL, "_transforms[%d]");
    }

    else
    {
      v10 = snprintf(__str, 0x40uLL, "_t%d");
    }

    CI::SerialStringArray::append(*(this + 26), __str, v10);
    CI::SerialObjectPtrArray::append(*(this + 27), a3);
    TransformMatrix = fosl_filter_createTransformMatrix(*(this + 3), v9);
    v12[2] = v12;
    std::__tree<std::__value_type<unsigned long long,void *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,void *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,void *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 80, v12)[5] = TransformMatrix;
  }

  return TransformMatrix;
}

void CI::FoslAdapter::createReadPixel(CI::FoslAdapter *this, CI::Node *a2, const CI::Kernel *a3)
{
  v6 = (*(*a2 + 16))(a2);
  v7 = *a2;
  if (v6 == 54)
  {
    if ((*(v7 + 216))(a2) < 1)
    {
      v8 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    if ((*(v7 + 16))(a2) != 52)
    {
      v9 = 0;
      v10 = 0;
      v8 = 1;
      goto LABEL_11;
    }

    if ((*(*a2 + 216))(a2) < 1)
    {
      v8 = 1;
      goto LABEL_10;
    }
  }

  v8 = (*(*a2 + 216))(a2);
LABEL_10:
  v10 = (*(*a2 + 320))(a2) == 1;
  v9 = (*(*a2 + 424))(a2);
LABEL_11:
  v11 = "vec4 _read_pixel(sampler2D image, vec2 c, mat3 m){ return texture2D(image, (vec3(c, 1.0) * m).xy);}";
  if (a3)
  {
    v12 = *(a3 + 153);
    if (*(a3 + 153))
    {
      v11 = "hvec4 _read_pixel(hsampler2D image, vec2 c, mat3 m){ return texture2D(image, (vec3(c, 1.0) * m).xy);}";
    }
  }

  else
  {
    v12 = 0;
  }

  if ((*(**this + 16))() == 85)
  {
    v13 = *(*this + 456);
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  v14 = "vec4 _read_pixel_420(sampler2D Y, sampler2D cc, vec2 c, vec2 f, mat3 m){\n highp vec3 p = vec3(c, 1.0) * m;\n return vec4(texture2D(Y, p.xy).r, texture2D(cc, f*p.xy).rg, 1.0);}";
  if (v12)
  {
    v15 = "hvec4 _read_pixel_420(hsampler2D Y, hsampler2D cc, vec2 c, vec2 f, mat3 m){\n highp vec3 p = vec3(c, 1.0) * m;\n return hvec4(texture2D(Y, p.xy).r, texture2D(cc, f*p.xy).rg, 1.0);}";
  }

  else
  {
    v15 = "vec4 _read_pixel_420(sampler2D Y, sampler2D cc, vec2 c, vec2 f, mat3 m){\n highp vec3 p = vec3(c, 1.0) * m;\n return vec4(texture2D(Y, p.xy).r, texture2D(cc, f*p.xy).rg, 1.0);}";
  }

  v16 = v13 | ~v9;
  v17 = "vec4 _read_pixel_420_10p(sampler2D Y, sampler2D cc, vec2 c, vec2 f, mat3 m)\n  {\n     int cInt = int(c.x);\n     int cInt2 = int(c.x*0.5);\n \n     int lumaX = cInt/3;\n     highp vec3 pLuma = vec3(lumaX+0.5, c.y, 1.0) * m;\n     vec3 lumaGroup = texture2D(Y, pLuma.xy).rgb;\n     int lumaRem = cInt - lumaX*3;\n     float luma = (lumaRem==0) ? lumaGroup.z : (lumaRem==1) ? lumaGroup.y : lumaGroup.x;\n \n     int chromaX = (cInt2/3)*2;\n     highp vec3 pChromaMinus1 = vec3(2.0*(chromaX - 0.5), c.y, 1.0) * m;\n     highp vec3 pChroma1 = vec3(2.0*(chromaX + 0.5), c.y, 1.0) * m;\n     highp vec3 pChroma2 = vec3(2.0*(chromaX + 1.5), c.y, 1.0) * m;\n     highp vec3 pChroma3 = vec3(2.0*(chromaX + 2.5), c.y, 1.0) * m;\n     vec3 ccGroupMinus1 = texture2D(cc, pChromaMinus1.xy * f).rgb;\n     vec3 ccGroup1 = texture2D(cc, pChroma1.xy * f).rgb;\n     vec3 ccGroup2 = texture2D(cc, pChroma2.xy * f).rgb;\n     vec3 ccGroup3 = texture2D(cc, pChroma3.xy * f).rgb;\n     vec2 ccMinus1 = ccGroupMinus1.yx; \n     vec2 cc1 = ccGroup1.zy; \n     vec2 cc2 = vec2(ccGroup1.x, ccGroup2.z); \n     vec2 cc3 = ccGroup2.yx; \n     vec2 cc4 = ccGroup3.zy; \n     float mixer = (cInt & 1)*0.5; \n     int chromaRem = cInt - (cInt/6)*6;\n     vec2 chroma = vec2(0);\n     if (chromaRem == 0) {\n         chroma = mix(ccMinus1, cc1, 0.75);\n     } else if (chromaRem == 1) { \n         chroma = mix(cc1, cc2, 0.25);\n     } else if (chromaRem == 2) { \n         chroma = mix(cc1, cc2, 0.75);\n     } else if (chromaRem == 3) { \n         chroma = mix(cc2, cc3, 0.25);\n     } else if (chromaRem == 4) { \n         chroma = mix(cc2, cc3, 0.75);\n     } else if (chromaRem == 5) { \n         chroma = mix(cc3, cc4, 0.25);\n     }\n     return vec4(luma, chroma.xy, 1.0); \n }";
  if (v12)
  {
    v17 = "hvec4 _read_pixel_420_10p(hsampler2D Y, hsampler2D cc, vec2 c, vec2 f, mat3 m)  {\n     int cInt = int(c.x);\n     int cInt2 = int(c.x*0.5);\n \n     int lumaX = cInt/3;\n     highp vec3 pLuma = vec3(lumaX+0.5, c.y, 1.0) * m;\n     hvec3 lumaGroup = texture2D(Y, pLuma.xy).rgb;\n     int lumaRem = cInt - lumaX*3;\n     float luma = (lumaRem==0) ? lumaGroup.z : (lumaRem==1) ? lumaGroup.y : lumaGroup.x;\n \n     int chromaX = (cInt2/3)*2;\n     highp vec3 pChromaMinus1 = vec3(2.0*(chromaX - 0.5), c.y, 1.0) * m;\n     highp vec3 pChroma1 = vec3(2.0*(chromaX + 0.5), c.y, 1.0) * m;\n     highp vec3 pChroma2 = vec3(2.0*(chromaX + 1.5), c.y, 1.0) * m;\n     highp vec3 pChroma3 = vec3(2.0*(chromaX + 2.5), c.y, 1.0) * m;\n     hvec3 ccGroupMinus1 = texture2D(cc, pChromaMinus1.xy * f).rgb;\n     hvec3 ccGroup1 = texture2D(cc, pChroma1.xy * f).rgb;\n     hvec3 ccGroup2 = texture2D(cc, pChroma2.xy * f).rgb;\n     hvec3 ccGroup3 = texture2D(cc, pChroma3.xy * f).rgb;\n     hvec2 ccMinus1 = ccGroupMinus1.yx; \n     hvec2 cc1 = ccGroup1.zy; \n     hvec2 cc2 = hvec2(ccGroup1.x, ccGroup2.z); \n     hvec2 cc3 = ccGroup2.yx; \n     hvec2 cc4 = ccGroup3.zy; \n     float mixer = (cInt & 1)*0.5; \n     int chromaRem = cInt - (cInt/6)*6;\n     hvec2 chroma = vec2(0);\n     if (chromaRem == 0) {\n         chroma = mix(ccMinus1, cc1, 0.75);\n     } else if (chromaRem == 1) { \n         chroma = mix(cc1, cc2, 0.25);\n     } else if (chromaRem == 2) { \n         chroma = mix(cc1, cc2, 0.75);\n     } else if (chromaRem == 3) { \n         chroma = mix(cc2, cc3, 0.25);\n     } else if (chromaRem == 4) { \n         chroma = mix(cc2, cc3, 0.75);\n     } else if (chromaRem == 5) { \n         chroma = mix(cc3, cc4, 0.25);\n     }\n     return hvec4(luma, chroma.xy, 1.0); \n }";
    v14 = "hvec4 _read_pixel_420(hsampler2D Y, hsampler2D cc, vec2 c, vec2 f, mat3 m){\n highp vec3 p = vec3(c, 1.0) * m;\n return hvec4(texture2D(Y, p.xy).r, texture2D(cc, f*p.xy).rg, 1.0);}";
  }

  if (v16)
  {
    v18 = v14;
  }

  else
  {
    v18 = v17;
  }

  if (!v10)
  {
    v18 = v15;
  }

  if (v8 == 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = v11;
  }

  fosl_filter_createSampleTransform(*(this + 3), v19);
  operator new();
}

void CI::FoslAdapter::createReadTable(CI::FoslAdapter *this, CI::Node *a2, const CI::Kernel *a3, char *a4, int a5, char a6)
{
  a4[a5] = a6 + 48;
  a4[a5 + 1] = 0;
  CI::SerialStringArray::firstIndexOfString(*(*(this + 1) + 56), a4 + 1);
  operator new();
}

uint64_t CI::FoslAdapter::createGeneralKernel(void *a1, CI::ColorKernelNode *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 6);
  Kernel = fosl_filter_createKernel(a1[3], *(v10 + 32));
  if (*(v10 + 12) == 1)
  {
    v11 = CI::KernelArguments::count((v10 + 136));
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_46:
    LODWORD(v13) = 0;
    goto LABEL_47;
  }

  v11 = *(v10 + 20);
  if (!v11)
  {
    goto LABEL_46;
  }

LABEL_3:
  v12 = 0;
  v13 = 0;
  v14 = v11;
  v43 = v10;
  do
  {
    v15 = CI::ColorKernelNode::kernel_argument_type(a2, v12);
    if (v15 == 1)
    {
      v16 = *(a2 + 7);
      if (v12 > 9)
      {
        v17 = (*(v16 + 16) + 8 * v12 - 80);
      }

      else
      {
        v17 = (v16 + 8 * v12 + 24);
      }

      v21 = CI::FoslAdapter::convertTree(a1, *v17, v10, a3, a4, a5 + 1, v13);
      fosl_filter_addChild(a1[3], Kernel, v21);
      v13 = (v13 + 1);
    }

    else
    {
      v18 = v15;
      if ((v15 & 0xFFFFFFFE) == 2)
      {
        v47.f64[0] = 0.0;
        v46 = 0x3FF0000000000000uLL;
        v47.f64[1] = 1.0;
        v48 = 0uLL;
        v19 = *(a2 + 7);
        if (v12 > 9)
        {
          v20 = (*(v19 + 16) + 8 * v12 - 80);
        }

        else
        {
          v20 = (v19 + 8 * v12 + 24);
        }

        v24 = *v20;
        v25 = CI::ProgramNode::child_depth(a1[1], v13);
        if (v25 - 1 > a5)
        {
          v26 = ~a5 + v25;
          do
          {
            if ((*(*v24 + 16))(v24) == 34)
            {
              v27 = vaddq_f64(v48, vmlaq_n_f64(vmulq_n_f64(v47, v24[12]), v46, v24[11]));
              v28 = vmlaq_n_f64(vmulq_n_f64(v47, v24[10]), v46, v24[9]);
              v46 = vmlaq_n_f64(vmulq_n_f64(v47, v24[8]), v46, v24[7]);
              v47 = v28;
              v48 = v27;
            }

            else
            {
              v29 = (*(*v24 + 16))(v24);
              v30 = *v24;
              if (v29 == 53)
              {
                (*(v30 + 424))(v24);
              }

              else if ((*(v30 + 16))(v24) != 36 && (*(*v24 + 16))(v24) == 55)
              {
                v31 = *(a1 + 56);
                v32 = (*(*v24 + 424))(v24);
                if (!v31)
                {
                  *(a1 + 56) = v32;
                }
              }
            }

            v24 = (*(*v24 + 48))(v24, 0);
            --v26;
          }

          while (v26);
        }

        v33 = (*(*a1[1] + 48))(a1[1], v13);
        if ((*(*v33 + 16))(v33) == 60)
        {
          v45[0] = 0;
          if (*(v33 + 144))
          {
            v34 = *(v33 + 140);
            if (CI_INTERMEDIATE_SRGB_TEXTURES() && (*(**a1 + 592))(*a1, v34, 1))
            {
              *(v33 + 144) |= 4u;
            }

            else
            {
              v45[0] = 1;
            }
          }

          std::__tree<BOOL>::__emplace_unique_key_args<BOOL,BOOL const&>((a1 + 29), v45);
        }

        else
        {
          v45[0] = 0;
          std::__tree<BOOL>::__emplace_unique_key_args<BOOL,BOOL const&>((a1 + 29), v45);
        }

        operator new();
      }

      if (CI::KernelArguments::is_uniform(v15))
      {
        v22 = *(a1 + 4);
        *(a1 + 4) = v22 + 1;
        if ((v18 - 5) > 0x16)
        {
          v23 = 0;
        }

        else
        {
          v23 = dword_19CF2CEE0[v18 - 5];
        }

        Uniform = fosl_filter_createUniform(a1[3], v22, v23);
        fosl_filter_addChild(a1[3], Kernel, Uniform);
        CI::SerialValArray<int>::append(a1[25], v18);
        v36 = *(a2 + 7);
        if (v12 > 9)
        {
          v37 = (*(v36 + 16) + 8 * v12 - 80);
        }

        else
        {
          v37 = (v36 + 8 * v12 + 24);
        }

        CI::SerialObjectPtrArray::append(a1[27], *v37);
        if ((*(**a1 + 16))() != 85)
        {
          v38 = snprintf(__str, 0x40uLL, "_u%d", v22);
          CI::SerialStringArray::append(a1[26], __str, v38);
        }

        v10 = v43;
      }
    }

    ++v12;
  }

  while (v12 != v14);
LABEL_47:
  if (a1[31] > 1uLL)
  {
    std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy((a1 + 29), a1[30]);
    a1[30] = 0;
    a1[31] = 0;
    a1[29] = a1 + 30;
    if (v13 >= 1)
    {
      v39 = 0;
      do
      {
        v40 = (*(*a1[1] + 48))(a1[1], v39);
        if ((*(*v40 + 16))(v40) == 60 && (*(v40 + 144) & 5) == 1)
        {
          v41 = CI::name_for_format(*(v40 + 140));
          x_log("Cannot use sRGB texture binding with format %s for sampler %d in kernel '%s'.\n", v41, v39, *(*(a2 + 6) + 24));
        }

        v39 = (v39 + 1);
      }

      while (v13 != v39);
    }
  }

  return Kernel;
}

uint64_t CI::FoslAdapter::convertTree(CI::FoslAdapter *a1, CI::Node *a2, const CI::Kernel *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(a5 + a6) = a7 + 48;
  *(a5 + (a6 + 1)) = 0;
  IndexOfString = CI::SerialStringArray::firstIndexOfString(*(*(a1 + 1) + 56), (a5 + 1));
  if (IndexOfString != -1)
  {
    a2 = (*(**(a1 + 1) + 48))(*(a1 + 1), IndexOfString);
  }

  v14 = CI::hash_dag_node_id(a2, a4, a5);
  v26 = v14;
  v25[0] = &v26;
  if (!std::__tree<std::__value_type<unsigned long long,void *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,void *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,void *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 152, &v26)[5])
  {
    if (IndexOfString != -1)
    {
      CI::FoslAdapter::createReadPixel(a1, a2, a3);
    }

    v25[0] = a2;
    if (a2)
    {
      CI::Object::ref(a2);
    }

    v17 = (*(*a2 + 336))(a2, *a1);
    v25[1] = v17;
    if (v17)
    {
      a2 = v17;
    }

    if ((*(*a2 + 16))(a2) == 59)
    {
      GeneralKernel = CI::FoslAdapter::createGeneralKernel(a1, a2, a4, a5, a6);
    }

    else
    {
      if ((*(*a2 + 16))(a2) != 57)
      {
        if ((*(*a2 + 16))(a2) != 58)
        {
          x_log("Invalid DAG node type");
          v15 = 0;
          goto LABEL_23;
        }

        WarpKernel = CI::FoslAdapter::createWarpKernel(a1, a2, a3, a4, a5, a6);
        v24 = v14;
        v26 = &v24;
        std::__tree<std::__value_type<unsigned long long,void *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,void *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,void *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 152, &v24)[5] = WarpKernel;
        v24 = v14;
        v26 = &v24;
        v22 = a1 + 152;
        goto LABEL_21;
      }

      GeneralKernel = CI::FoslAdapter::createColorKernel(a1, a2, a4, a5, a6);
    }

    v24 = v14;
    v26 = &v24;
    std::__tree<std::__value_type<unsigned long long,void *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,void *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,void *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 152, &v24)[5] = GeneralKernel;
    Cast = CI::FoslAdapter::createCast(a1, a2, a3);
    if (Cast)
    {
      v15 = Cast;
      v20 = *(a1 + 3);
      v24 = v14;
      v26 = &v24;
      v21 = std::__tree<std::__value_type<unsigned long long,void *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,void *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,void *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 152, &v24);
      fosl_filter_addChild(v20, v15, v21[5]);
LABEL_23:
      CI::ConvertedNodeRAII::~ConvertedNodeRAII(v25);
      return v15;
    }

    v24 = v14;
    v26 = &v24;
    v22 = a1 + 152;
LABEL_21:
    v15 = std::__tree<std::__value_type<unsigned long long,void *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,void *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,void *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v22, &v24)[5];
    goto LABEL_23;
  }

  v26 = v14;
  v25[0] = &v26;
  return std::__tree<std::__value_type<unsigned long long,void *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,void *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,void *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 152, &v26)[5];
}

uint64_t CI::FoslAdapter::createColorKernel(uint64_t a1, CI::ColorKernelNode *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 6);
  Kernel = fosl_filter_createKernel(*(a1 + 24), *(v10 + 32));
  v29 = v10;
  if (*(v10 + 12) == 1)
  {
    v12 = CI::KernelArguments::count((v10 + 136));
    if (!v12)
    {
      return Kernel;
    }
  }

  else
  {
    v12 = *(v10 + 20);
    if (!v12)
    {
      return Kernel;
    }
  }

  v13 = 0;
  v14 = 0;
  v27 = a3;
  v28 = a4;
  do
  {
    v15 = CI::ColorKernelNode::kernel_argument_type(a2, v14);
    v16 = v15;
    if (v15 == 4 || v15 == 1)
    {
      argument = CI::ColorKernelNode::get_argument(a2, v14);
      if (v16 == 4)
      {
        CI::FoslAdapter::createReadTable(a1, argument, v29, a4, a5 + 1, v13);
      }

      v18 = CI::FoslAdapter::convertTree(a1, argument, v29, a3, a4, (a5 + 1), v13);
      fosl_filter_addChild(*(a1 + 24), Kernel, v18);
      v13 = (v13 + 1);
    }

    else if (CI::KernelArguments::is_uniform(v15))
    {
      v19 = a5;
      v20 = *(a1 + 16);
      *(a1 + 16) = v20 + 1;
      CI::SerialValArray<int>::append(*(a1 + 200), v16);
      v21 = *(a1 + 216);
      v22 = CI::ColorKernelNode::get_argument(a2, v14);
      CI::SerialObjectPtrArray::append(v21, v22);
      v23 = snprintf(__str, 0x40uLL, "_u%d", v20);
      CI::SerialStringArray::append(*(a1 + 208), __str, v23);
      if ((v16 - 5) > 0x16)
      {
        v24 = 0;
      }

      else
      {
        v24 = dword_19CF2CEE0[v16 - 5];
      }

      a5 = v19;
      Uniform = fosl_filter_createUniform(*(a1 + 24), v20, v24);
      fosl_filter_addChild(*(a1 + 24), Kernel, Uniform);
      a3 = v27;
      a4 = v28;
    }

    ++v14;
  }

  while (v12 != v14);
  return Kernel;
}

uint64_t CI::FoslAdapter::createWarpKernel(uint64_t a1, CI::ColorKernelNode *a2, uint64_t a3, uint64_t a4, char *a5, int a6)
{
  v32 = *MEMORY[0x1E69E9840];
  CoordinateTransform = fosl_filter_createCoordinateTransform(*(a1 + 24), *(*(a2 + 6) + 32));
  v13 = *(a2 + 6);
  v30 = a3;
  v29 = a6;
  v28 = a4;
  if (*(v13 + 12) == 1)
  {
    v14 = CI::KernelArguments::count((v13 + 136));
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = *(v13 + 20);
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  for (i = 0; i != v14; ++i)
  {
    v16 = CI::ColorKernelNode::kernel_argument_type(a2, i);
    if (CI::KernelArguments::is_uniform(v16))
    {
      v17 = *(a1 + 16);
      *(a1 + 16) = v17 + 1;
      if ((v16 - 5) > 0x16)
      {
        v18 = 0;
      }

      else
      {
        v18 = dword_19CF2CEE0[v16 - 5];
      }

      Uniform = fosl_filter_createUniform(*(a1 + 24), v17, v18);
      CI::SerialValArray<int>::append(*(a1 + 200), v16);
      v20 = *(a1 + 216);
      argument = CI::ColorKernelNode::get_argument(a2, i);
      CI::SerialObjectPtrArray::append(v20, argument);
      v22 = snprintf(__str, 0x40uLL, "_u%d", v17);
      CI::SerialStringArray::append(*(a1 + 208), __str, v22);
      fosl_filter_addChild(*(a1 + 24), CoordinateTransform, Uniform);
    }
  }

LABEL_12:
  v23 = (*(*a2 + 48))(a2, 0);
  PositionUpdate = fosl_filter_createPositionUpdate(*(a1 + 24));
  fosl_filter_setPositionUpdatePosition(PositionUpdate, CoordinateTransform);
  v25 = CI::hash_dag_node_id(a2, v28, a5);
  v26 = CI::FoslAdapter::convertTree(a1, v23, v30, v25, a5, (v29 + 1), 0);
  fosl_filter_setPositionUpdateContinuation(PositionUpdate, v26);
  return PositionUpdate;
}

uint64_t CI::FoslAdapter::createCast(CI::FoslAdapter *this, CI::Node *a2, const CI::Kernel *a3)
{
  if (!a3)
  {
    return 0;
  }

  if ((*(*a2 + 16))(a2) == 57)
  {
    v6 = *(a2 + 6);
  }

  else
  {
    v6 = 0;
  }

  if ((*(*a2 + 16))(a2) == 59)
  {
    v6 = *(a2 + 6);
  }

  if (*(a3 + 153) != 1 || v6 == 0)
  {
    v8 = 0;
    if (*(a3 + 153))
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (*(v6 + 16) == 3)
    {
      v8 = 0;
    }

    else
    {
      v8 = "hvec4 _cast_vec4_to_hvec4(vec4 v) { return hvec4(v); }";
    }

    if (*(a3 + 153))
    {
LABEL_21:
      if (v8)
      {
        goto LABEL_22;
      }

      return 0;
    }
  }

  if (!v6 || *(v6 + 16) != 3)
  {
    goto LABEL_21;
  }

  v8 = "vec4 _cast_hvec4_to_vec4(hvec4 v) { return vec4(v); }";
LABEL_22:
  v9 = *(this + 3);

  return fosl_filter_createKernel(v9, v8);
}

uint64_t CI::FoslAdapter::convertTree(CI::FoslAdapter *this, CI::Node *a2, char *a3, uint64_t a4, int a5)
{
  *(this + 64) = a5;
  v6 = CI::FoslAdapter::convertTree(this, a2, 0, 0, a3, a4, 0);
  if (*(*(this + 1) + 144))
  {
    Kernel = fosl_filter_createKernel(*(this + 3), "vec4 _ci_linear_to_srgb (vec4 s) { return _linear_to_srgb(s); }");
    fosl_filter_addChild(*(this + 3), Kernel, v6);
    return Kernel;
  }

  return v6;
}

uint64_t CI::FoslAdapter::constructShader(CI::FoslAdapter *this, const char *a2, uint64_t a3)
{
  fosl_filter_assignRoot(*(this + 3), a3);
  v5 = newlocale(16, 0, 0);
  v6 = uselocale(v5);
  fosl_filter_parseNodesInGraph(*(this + 3));
  if (FOSL_DUMP_GRAPH())
  {
    fosl_filter_dumpGraph(*(this + 3));
  }

  v7 = *(this + 30);
  if (v7)
  {
    v8 = (this + 240);
    do
    {
      if (*(v7 + 25))
      {
        v8 = v7;
      }

      v7 = *(v7 + (*(v7 + 25) == 0));
    }

    while (v7);
    if (v8 != (this + 240))
    {
      fosl_filter_setSamplerNeedsSRGBToLinear(*(this + 3));
    }
  }

  v9 = *(this + 56);
  if ((v9 - 1) <= 0x19)
  {
    fosl_filter_setSamplerSwizzleMask(*(this + 3), off_1E75C5780[v9 - 1]);
    v9 = *(this + 56);
  }

  v10 = v9 - 27;
  if (v10 <= 9)
  {
    fosl_filter_setSamplerSwizzleMacro(*(this + 3), off_1E75C5850[v10]);
  }

  fosl_filter_setMainEntryPointName(*(this + 3), a2);
  v11 = *(this + 3);
  v12 = (*(**this + 16))();
  switch(v12)
  {
    case 'U':
      v13 = v11;
      v14 = 2;
      goto LABEL_20;
    case 'T':
      v13 = v11;
      v14 = 0;
      goto LABEL_20;
    case 'R':
      v13 = v11;
      v14 = 1;
LABEL_20:
      fosl_filter_synthesizeMainInGraphOfType(v13, v14);
      goto LABEL_22;
  }

  fosl_filter_synthesizeMainInGraph(v11);
LABEL_22:
  if (FOSL_PRINT_GRAPH())
  {
    fosl_filter_printGraph(*(this + 3));
  }

  StringForGraph = fosl_filter_getStringForGraph(*(this + 3));
  v16 = uselocale(v6);
  freelocale(v16);
  return StringForGraph;
}

void *std::__tree<std::__value_type<unsigned long long,void *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,void *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,void *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

uint64_t *std::__tree<BOOL>::__emplace_unique_key_args<BOOL,BOOL const&>(uint64_t a1, unsigned __int8 *a2)
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
      v5 = *(v2 + 25);
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

void *foslFunctions::initializeFunctions(foslFunctions *this)
{
  v2 = dlopen("/usr/lib/libFosl_dynamic.dylib", 2);
  if (!v2)
  {
    return fprintf(*MEMORY[0x1E69E9848], "Unable to open Fosl library at path %s\n", "/usr/lib/libFosl_dynamic.dylib");
  }

  v3 = v2;
  *this = dlsym(v2, "fosl_filter_interface_version");
  *(this + 1) = dlsym(v3, "fosl_filter_kernelpool_createPool");
  *(this + 2) = dlsym(v3, "fosl_filter_kernelpool_hasError");
  *(this + 3) = dlsym(v3, "fosl_filter_kernelpool_addLibrary");
  *(this + 4) = dlsym(v3, "fosl_filter_kernelpool_addString");
  *(this + 5) = dlsym(v3, "fosl_filter_kernelpool_destroyPool");
  *(this + 6) = dlsym(v3, "fosl_filter_kernelpool_getNumKernels");
  *(this + 7) = dlsym(v3, "fosl_filter_kernelpool_lookupKernel");
  *(this + 8) = dlsym(v3, "fosl_filter_kernelpool_getKernelByIdx");
  *(this + 9) = dlsym(v3, "fosl_filter_kernelpool_getNumDiagnostics");
  *(this + 10) = dlsym(v3, "fosl_filter_kernelpool_getDiagnosticByIdx");
  *(this + 11) = dlsym(v3, "fosl_filter_kernelpool_getKernelKind");
  *(this + 12) = dlsym(v3, "fosl_filter_kernelpool_getKernelReturnType");
  *(this + 13) = dlsym(v3, "fosl_filter_kernelpool_getKernelName");
  *(this + 14) = dlsym(v3, "fosl_filter_kernelpool_getPrintedKernel");
  *(this + 15) = dlsym(v3, "fosl_filter_kernelpool_getKernelDimensionality");
  *(this + 16) = dlsym(v3, "fosl_filter_kernelpool_isPositionInvariant");
  *(this + 17) = dlsym(v3, "fosl_filter_kernelpool_preservesAlpha");
  *(this + 18) = dlsym(v3, "fosl_filter_kernelpool_getNumKernelParameters");
  *(this + 19) = dlsym(v3, "fosl_filter_kernelpool_getParamName");
  *(this + 20) = dlsym(v3, "fosl_filter_kernelpool_getParamType");
  *(this + 21) = dlsym(v3, "fosl_filter_kernelpool_getNumKernelAttributes");
  *(this + 22) = dlsym(v3, "fosl_filter_kernelpool_getAttributeKeyword");
  *(this + 23) = dlsym(v3, "fosl_filter_kernelpool_getAttributeParameters");
  *(this + 24) = dlsym(v3, "fosl_filter_kernelpool_hasAttributeParameters");
  *(this + 25) = dlsym(v3, "fosl_filter_createGraph");
  *(this + 26) = dlsym(v3, "fosl_filter_assignRoot");
  *(this + 27) = dlsym(v3, "fosl_filter_destroyGraph");
  *(this + 28) = dlsym(v3, "fosl_filter_createKernel");
  *(this + 29) = dlsym(v3, "fosl_filter_addLibraryFunction");
  *(this + 30) = dlsym(v3, "fosl_filter_addChild");
  *(this + 31) = dlsym(v3, "fosl_filter_createSampler");
  *(this + 32) = dlsym(v3, "fosl_filter_createImage");
  *(this + 33) = dlsym(v3, "fosl_filter_createUniform");
  *(this + 34) = dlsym(v3, "fosl_filter_createConstant");
  *(this + 35) = dlsym(v3, "fosl_filter_createTransformMatrix");
  *(this + 36) = dlsym(v3, "fosl_filter_createSampleTransform");
  *(this + 37) = dlsym(v3, "fosl_filter_createUsePosition");
  *(this + 38) = dlsym(v3, "fosl_filter_createPositionUpdate");
  *(this + 39) = dlsym(v3, "fosl_filter_createCoordinateTransform");
  *(this + 40) = dlsym(v3, "fosl_filter_setPositionUpdatePosition");
  *(this + 41) = dlsym(v3, "fosl_filter_setPositionUpdateContinuation");
  *(this + 42) = dlsym(v3, "fosl_filter_setSamplerNeedsSRGBToLinear");
  *(this + 43) = dlsym(v3, "fosl_filter_setSamplerSwizzleMask");
  *(this + 44) = dlsym(v3, "fosl_filter_setSamplerSwizzleMacro");
  *(this + 45) = dlsym(v3, "fosl_filter_setMainEntryPointName");
  *(this + 46) = dlsym(v3, "fosl_filter_parseNodesInGraph");
  *(this + 47) = dlsym(v3, "fosl_filter_synthesizeMainInGraph");
  *(this + 48) = dlsym(v3, "fosl_filter_synthesizeMainInGraphOfType");
  *(this + 49) = dlsym(v3, "fosl_filter_synthesizeMainInGraphOfTypeWithOptions");
  *(this + 50) = dlsym(v3, "fosl_filter_dumpGraph");
  *(this + 51) = dlsym(v3, "fosl_filter_printGraph");
  *(this + 52) = dlsym(v3, "fosl_filter_getStringForGraph");
  result = dlsym(v3, "fosl_filter_getStringForGraphWithOptions");
  *(this + 53) = result;
  return result;
}

uint64_t (*fosl_filter_interface_version())(void)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  result = *foslFuncs;
  if (*foslFuncs)
  {

    return result();
  }

  return result;
}

uint64_t fosl_filter_kernelpool_createPool()
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v0 = *(foslFuncs + 8);

  return v0();
}

void fosl_filter_kernelpool_addLibrary(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (foslFuncs)
  {
    v4 = *(foslFuncs + 24);

    v4(a1, a2);
  }
}

void fosl_filter_kernelpool_addString(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (foslFuncs)
  {
    v4 = *(foslFuncs + 32);

    v4(a1, a2);
  }
}

void fosl_filter_kernelpool_destroyPool(uint64_t a1)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (foslFuncs)
  {
    v2 = *(foslFuncs + 40);

    v2(a1);
  }
}

uint64_t fosl_filter_kernelpool_getNumKernels(uint64_t a1)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v2 = *(foslFuncs + 48);

  return v2(a1);
}

uint64_t fosl_filter_kernelpool_getKernelByIdx(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v4 = *(foslFuncs + 64);

  return v4(a1, a2);
}

uint64_t fosl_filter_kernelpool_getNumDiagnostics(uint64_t a1)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v2 = *(foslFuncs + 72);

  return v2(a1);
}

uint64_t fosl_filter_kernelpool_getDiagnosticByIdx(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v4 = *(foslFuncs + 80);

  return v4(a1, a2);
}

uint64_t fosl_filter_kernelpool_getKernelKind(uint64_t a1)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v2 = *(foslFuncs + 88);

  return v2(a1);
}

uint64_t fosl_filter_kernelpool_getKernelReturnType(uint64_t a1)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v2 = *(foslFuncs + 96);

  return v2(a1);
}

uint64_t fosl_filter_kernelpool_getKernelName(uint64_t a1)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v2 = *(foslFuncs + 104);

  return v2(a1);
}

uint64_t fosl_filter_kernelpool_getPrintedKernel(uint64_t a1)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v2 = *(foslFuncs + 112);

  return v2(a1);
}

uint64_t fosl_filter_kernelpool_isPositionInvariant(uint64_t a1)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v2 = *(foslFuncs + 128);

  return v2(a1);
}

uint64_t fosl_filter_kernelpool_preservesAlpha(uint64_t a1)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v2 = *(foslFuncs + 136);

  return v2(a1);
}

uint64_t fosl_filter_kernelpool_getNumKernelParameters(uint64_t a1)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v2 = *(foslFuncs + 144);

  return v2(a1);
}

uint64_t fosl_filter_kernelpool_getParamName(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v4 = *(foslFuncs + 152);

  return v4(a1, a2);
}

uint64_t fosl_filter_kernelpool_getParamType(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v4 = *(foslFuncs + 160);

  return v4(a1, a2);
}

uint64_t fosl_filter_kernelpool_getNumKernelAttributes(uint64_t a1)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v2 = *(foslFuncs + 168);

  return v2(a1);
}

uint64_t fosl_filter_kernelpool_getAttributeKeyword(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v4 = *(foslFuncs + 176);

  return v4(a1, a2);
}

uint64_t fosl_filter_kernelpool_getAttributeParameters(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v4 = *(foslFuncs + 184);

  return v4(a1, a2);
}

uint64_t fosl_filter_kernelpool_hasAttributeParameters(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v4 = *(foslFuncs + 192);

  return v4(a1, a2);
}

uint64_t fosl_filter_createGraph()
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v0 = *(foslFuncs + 200);

  return v0();
}

void fosl_filter_assignRoot(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (foslFuncs)
  {
    v4 = *(foslFuncs + 208);

    v4(a1, a2);
  }
}

void fosl_filter_destroyGraph(uint64_t a1)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (foslFuncs)
  {
    v2 = *(foslFuncs + 216);

    v2(a1);
  }
}

uint64_t fosl_filter_createKernel(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v4 = *(foslFuncs + 224);

  return v4(a1, a2);
}

void fosl_filter_addLibraryFunction(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (foslFuncs)
  {
    v4 = *(foslFuncs + 232);

    v4(a1, a2);
  }
}

void fosl_filter_addChild(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (foslFuncs)
  {
    v6 = *(foslFuncs + 240);

    v6(a1, a2, a3);
  }
}

uint64_t fosl_filter_createSampler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v6 = *(foslFuncs + 248);

  return v6(a1, a2, a3);
}

uint64_t fosl_filter_createImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v6 = *(foslFuncs + 256);

  return v6(a1, a2, a3);
}

uint64_t fosl_filter_createUniform(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v6 = *(foslFuncs + 264);

  return v6(a1, a2, a3);
}

uint64_t fosl_filter_createTransformMatrix(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v4 = *(foslFuncs + 280);

  return v4(a1, a2);
}

uint64_t fosl_filter_createSampleTransform(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v4 = *(foslFuncs + 288);

  return v4(a1, a2);
}

uint64_t fosl_filter_createUsePosition(uint64_t a1)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v2 = *(foslFuncs + 296);

  return v2(a1);
}

uint64_t fosl_filter_createPositionUpdate(uint64_t a1)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v2 = *(foslFuncs + 304);

  return v2(a1);
}

uint64_t fosl_filter_createCoordinateTransform(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v4 = *(foslFuncs + 312);

  return v4(a1, a2);
}

void fosl_filter_setPositionUpdatePosition(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (foslFuncs)
  {
    v4 = *(foslFuncs + 320);

    v4(a1, a2);
  }
}

void fosl_filter_setPositionUpdateContinuation(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (foslFuncs)
  {
    v4 = *(foslFuncs + 328);

    v4(a1, a2);
  }
}

void fosl_filter_setSamplerNeedsSRGBToLinear(uint64_t a1)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (foslFuncs)
  {
    v2 = *(foslFuncs + 336);

    v2(a1);
  }
}

void fosl_filter_setSamplerSwizzleMask(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (foslFuncs)
  {
    v4 = *(foslFuncs + 344);

    v4(a1, a2);
  }
}

void fosl_filter_setSamplerSwizzleMacro(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (foslFuncs)
  {
    v4 = *(foslFuncs + 352);

    v4(a1, a2);
  }
}

void fosl_filter_setMainEntryPointName(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (foslFuncs)
  {
    v4 = *(foslFuncs + 360);

    v4(a1, a2);
  }
}

void fosl_filter_parseNodesInGraph(uint64_t a1)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (foslFuncs)
  {
    v2 = *(foslFuncs + 368);

    v2(a1);
  }
}

void fosl_filter_synthesizeMainInGraph(uint64_t a1)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (foslFuncs)
  {
    v2 = *(foslFuncs + 376);

    v2(a1);
  }
}

void fosl_filter_synthesizeMainInGraphOfType(uint64_t a1, uint64_t a2)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (foslFuncs)
  {
    v4 = *(foslFuncs + 384);

    v4(a1, a2);
  }
}

void fosl_filter_dumpGraph(uint64_t a1)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (foslFuncs)
  {
    v2 = *(foslFuncs + 400);

    v2(a1);
  }
}

void fosl_filter_printGraph(uint64_t a1)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (foslFuncs)
  {
    v2 = *(foslFuncs + 408);

    v2(a1);
  }
}

uint64_t fosl_filter_getStringForGraph(uint64_t a1)
{
  if (foslFunctions::initializeWrapperLibrary(void)::onceToken != -1)
  {
    fosl_filter_interface_version_cold_1();
  }

  if (!foslFuncs)
  {
    return 0;
  }

  v2 = *(foslFuncs + 416);

  return v2(a1);
}

void foslFunctions::foslFunctions(foslFunctions *this)
{
  ci_signpost_log_render();
  TimerBase::TimerBase(v2, 0, 0, "foslFunctions", 31);
  foslFunctions::initializeFunctions(this);
  foslFunctions::foslFunctions(void)::SignpostTimer::~SignpostTimer(v2);
}

void foslFunctions::foslFunctions(void)::SignpostTimer::~SignpostTimer(TimerBase *a1)
{
  v2 = ci_signpost_log_render();
  v3 = *(a1 + 1);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v2;
    if (os_signpost_enabled(v2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "foslFunctions", &unk_19CFBCBAE, v5, 2u);
    }
  }

  TimerBase::~TimerBase(a1);
}

uint64_t CI::AffineImage::alpha_behavior(CI::AffineImage *this)
{
  result = (*(**(this + 15) + 128))(*(this + 15));
  if (result == 1)
  {
    v9.origin.x = (*(*this + 88))(this);
    x = v9.origin.x;
    y = v9.origin.y;
    width = v9.size.width;
    height = v9.size.height;
    if (CGRectIsInfinite(v9))
    {
      *&v8.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      *&v8.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      height = 1.79769313e308;
      width = 1.79769313e308;
      goto LABEL_4;
    }

    v10.origin.x = x;
    v10.origin.y = y;
    v10.size.width = width;
    v10.size.height = height;
    if (CGRectIsNull(v10))
    {
      *&v8.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
      *&v8.var2 = 0uLL;
    }

    else
    {
      v8.var0 = x;
      v8.var1 = y;
      v8.var2 = width;
      v8.var3 = height;
      if (x == -8.98846567e307 && y == -8.98846567e307)
      {
LABEL_4:
        if (width == 1.79769313e308 && height == 1.79769313e308)
        {
          return 1;
        }
      }
    }

    return CI::Affine::isOrientationWithIntegralTranslation((this + 136)) || (fabs(*(this + 18)) < 0.0001 && fabs(*(this + 19)) < 0.0001 || fabs(*(this + 17)) < 0.0001 && fabs(*(this + 20)) < 0.0001) && Rectangle::isNearIntegral(&v8, 0.00001);
  }

  return result;
}

uint64_t CI::AffineImage::output_format(CI::AffineImage *this)
{
  v2 = (*(*this + 48))(this, 0);
  v14.origin.x = (*(*v2 + 88))(v2);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  if (!CGRectIsInfinite(v14))
  {
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v7 = !CGRectIsNull(v15) && x == -8.98846567e307;
    v8 = v7 && y == -8.98846567e307;
    v9 = v8 && width == 1.79769313e308;
    v10 = v9 && height == 1.79769313e308;
    if (!v10 && (fabs(*(this + 18)) >= 0.0001 || fabs(*(this + 19)) >= 0.0001) && (fabs(*(this + 17)) >= 0.0001 || fabs(*(this + 20)) >= 0.0001))
    {
      return 0;
    }
  }

  v11 = *(*(*(*this + 48))(this, 0) + 144);

  return v11();
}

CI::AffineNode *CI::AffineImage::render_graph_core(uint64_t a1, const CI::Affine *a2, CI::Object *this)
{
  if (this)
  {
    v5 = CI::Object::ref(this);
  }

  else
  {
    v5 = 0;
  }

  if ((*(*v5 + 16))(v5) == 41)
  {
    return v5;
  }

  if (a2)
  {
    v7 = (*(*a2 + 224))(a2);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 184);
  if (v8 == 121)
  {
    v9 = 1;
  }

  else
  {
    v9 = (v8 != 110) & v7;
  }

  v10 = CI::AffineNode::append_to_tree_with_quality(v5, (a1 + 136), a2, v9);
  CI::Object::unref(v5);
  return v10;
}

uint64_t CI::AffineImage::print_for_graphviz(uint64_t a1, FILE *__stream, uint64_t a3, int a4)
{
  fwrite("affine ", 7uLL, 1uLL, __stream);
  v7 = *(a1 + 184);
  if (v7 == 110)
  {
    fwrite("loQ ", 4uLL, 1uLL, __stream);
    v7 = *(a1 + 184);
  }

  if (v7 == 121)
  {
    fwrite("hiQ ", 4uLL, 1uLL, __stream);
  }

  if (a4)
  {
    return fprintf(__stream, "[%g %g %g %g %g %g]");
  }

  fprintf(__stream, "%c%g  %g  %g", 10, *(a1 + 136), *(a1 + 144), *(a1 + 168));
  return fprintf(__stream, "%c%g  %g  %g");
}

void CI::AffineImage::~AffineImage(CI::AffineImage *this)
{
  *(this + 16) = &unk_1F1031578;
  atomic_fetch_add(dword_1ED7C47BC, 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);
}

{
  *(this + 16) = &unk_1F1031578;
  atomic_fetch_add(dword_1ED7C47BC, 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::AffineImage::color_for_graphviz(CI::AffineImage *this)
{
  if (*(this + 184))
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

void CI::AffineImage::roi_of_child(CI::AffineImage *this, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  CI::Affine::inverse((this + 136), v6);
  v7.origin.x = x;
  v7.origin.y = y;
  v7.size.width = width;
  v7.size.height = height;
  CI::Affine::applyToRect(v6, v7);
}

double CI::AffineImage::extent(CI::AffineImage *this)
{
  (*(**(this + 15) + 88))(*(this + 15));

  return CI::Affine::applyToRect((this + 136), *&v2);
}

void CI::AffineImage::extent_unclamped(CI::AffineImage *this)
{
  if ((fabs(*(this + 18)) >= 0.0001 || fabs(*(this + 19)) >= 0.0001) && (fabs(*(this + 17)) >= 0.0001 || fabs(*(this + 20)) >= 0.0001))
  {
    (*(*this + 88))(this);
  }

  else
  {
    v2.origin.x = (*(**(this + 15) + 96))(*(this + 15));
    CI::Affine::applyToRect((this + 136), v2);
  }
}

uint64_t CI::AffineImage::add_args_to_hash(uint64_t a1, uint64_t a2)
{
  XXH64_update(a2, (a1 + 136), 0x30uLL);
  __src = *(a1 + 184);
  return XXH64_update(a2, &__src, 4uLL);
}

uint64_t CI::AffineImage::print_for_graph_core(CI::AffineImage *this, __sFILE *a2)
{
  v4 = *(this + 184);
  v5 = "";
  if (v4 == 121)
  {
    v5 = "hiQ ";
  }

  if (v4 == 110)
  {
    v6 = "loQ ";
  }

  else
  {
    v6 = v5;
  }

  fprintf(a2, "affine %s", v6);
  return fprintf(a2, "[%g %g %g %g %g %g]", *(this + 17), *(this + 18), *(this + 19), *(this + 20), *(this + 21), *(this + 22));
}

void non-virtual thunk toCI::AffineImage::~AffineImage(CI::AffineImage *this)
{
  *this = &unk_1F1031578;
  atomic_fetch_add(dword_1ED7C47BC, 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));
}

{
  *this = &unk_1F1031578;
  atomic_fetch_add(dword_1ED7C47BC, 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::CGImage::CGImage(uint64_t a1, CGImage *a2, uint64_t a3, const void *a4, int a5, char a6, unsigned __int8 a7, char a8, float a9, float a10)
{
  CI::Image::Image(a1);
  v20[15] = &unk_1F1034B80;
  atomic_fetch_add(&dword_1ED7C47BC[1], 1u);
  *v20 = &unk_1F10349E0;
  v20[15] = &unk_1F1034B58;
  v20[17] = 0;
  v20[18] = a3;
  v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  *(a1 + 176) = dispatch_queue_create("CI_CGNode_SurfaceCacheQueue", v21);
  *(a1 + 128) = CGImageRetain(a2);
  if (a4)
  {
    v23 = CFRetain(a4);
  }

  else
  {
    v23 = 0;
  }

  *(a1 + 152) = v23;
  *(a1 + 164) = a5;
  v24 = CI::alpha_mode_from_CGImage(a2, v22);
  if ((a7 & (v24 == 0)) != 0)
  {
    v25 = 4;
  }

  else
  {
    v25 = v24;
  }

  if ((a7 & (v25 == 2)) != 0)
  {
    v25 = 6;
  }

  *(a1 + 160) = v25;
  *(a1 + 168) = a6;
  *(a1 + 169) = a8;
  if (a9 == 0.0)
  {
    v31[0].i32[0] = 0;
    CGImageGetHeadroomInfo();
    a9 = v27;
    v28 = CI::format_from_CGImage(*(a1 + 128), v26);
    if ((CI::format_is_extended(v28) & 1) == 0 && !CI::format_is_float(v28))
    {
      a9 = 1.0;
    }
  }

  *(a1 + 136) = a9;
  if (a10 == 0.0)
  {
    a10 = CGImageGetContentAverageLightLevelNits() / 203.0;
  }

  *(a1 + 140) = a10;
  XXH64_reset(v31, 0);
  LODWORD(__src) = (*(*a1 + 16))(a1);
  XXH64_update(v31, &__src, 4uLL);
  if (*(a1 + 144))
  {
    __src = *(a1 + 144);
    v29 = 8;
  }

  else
  {
    LODWORD(__src) = CGImageGetIdentifier();
    v29 = 4;
  }

  XXH64_update(v31, &__src, v29);
  __src = CGImageGetWidth(a2);
  XXH64_update(v31, &__src, 8uLL);
  __src = CGImageGetHeight(a2);
  XXH64_update(v31, &__src, 8uLL);
  LODWORD(__src) = CGImageGetBitmapInfo(a2);
  XXH64_update(v31, &__src, 4uLL);
  LODWORD(__src) = CGImageGetImageProvider() != 0;
  XXH64_update(v31, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 160);
  XXH64_update(v31, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 164);
  XXH64_update(v31, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 168);
  XXH64_update(v31, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 136);
  XXH64_update(v31, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 140);
  XXH64_update(v31, &__src, 4uLL);
  *(a1 + 96) = XXH64_digest(v31);
  XXH64_reset(v31, 0);
  LODWORD(__src) = (*(*a1 + 16))(a1);
  XXH64_update(v31, &__src, 4uLL);
  __src = CGImageGetWidth(a2);
  XXH64_update(v31, &__src, 8uLL);
  __src = CGImageGetHeight(a2);
  XXH64_update(v31, &__src, 8uLL);
  LODWORD(__src) = CGImageGetBitmapInfo(a2);
  XXH64_update(v31, &__src, 4uLL);
  LODWORD(__src) = CGImageGetImageProvider() != 0;
  XXH64_update(v31, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 160);
  XXH64_update(v31, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 164);
  XXH64_update(v31, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 168);
  XXH64_update(v31, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 136);
  XXH64_update(v31, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 140);
  XXH64_update(v31, &__src, 4uLL);
  *(a1 + 104) = XXH64_digest(v31);
  *(a1 + 112) = 257;
  return a1;
}

void CI::CGImage::~CGImage(CI::CGImage *this)
{
  *this = &unk_1F10349E0;
  *(this + 15) = &unk_1F1034B58;
  CGImageRelease(*(this + 16));
  *(this + 16) = 0;
  v2 = *(this + 19);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 19) = 0;
  dispatch_release(*(this + 22));
  *(this + 15) = &unk_1F1034B80;
  atomic_fetch_add(&dword_1ED7C47BC[1], 0xFFFFFFFF);

  CI::Image::~Image(this);
}

{
  CI::CGImage::~CGImage(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::CGImage::~CGImage(CI::CGImage *this)
{
  CI::CGImage::~CGImage((this - 120));
}

{
  CI::CGImage::~CGImage((this - 120));

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::CGImage::add_args_to_hash(uint64_t a1, uint64_t a2)
{
  __src = CGImageGetBitmapInfo(*(a1 + 128));
  XXH64_update(a2, &__src, 4uLL);
  __src = CGImageGetImageProvider() != 0;
  XXH64_update(a2, &__src, 4uLL);
  __src = *(a1 + 160);
  XXH64_update(a2, &__src, 4uLL);
  __src = *(a1 + 164);
  XXH64_update(a2, &__src, 4uLL);
  __src = *(a1 + 168);
  XXH64_update(a2, &__src, 4uLL);
  __src = *(a1 + 136);
  return XXH64_update(a2, &__src, 4uLL);
}

uint64_t CI::CGImage::print_for_graph_core(CI::CGImage *this, __sFILE *a2)
{
  fprintf(a2, "CGImageRef %p", *(this + 16));
  if (*(this + 18))
  {
    fprintf(a2, " content:%016llX");
  }

  else
  {
    CGImageGetIdentifier();
    fprintf(a2, "(%d)");
  }

  v5 = CI::format_from_CGImage(*(this + 16), v4);
  v6 = CI::name_for_format(v5);
  fprintf(a2, " %s", v6);
  Width = CGImageGetWidth(*(this + 16));
  Height = CGImageGetHeight(*(this + 16));
  result = fprintf(a2, " %ldx%ld", Width, Height);
  v10 = *(this + 40);
  if (v10 <= 1)
  {
    if (!v10)
    {
      goto LABEL_16;
    }

    if (v10 == 1)
    {
      v11 = "alpha_one";
      goto LABEL_15;
    }

LABEL_14:
    v11 = "alpha_unknown";
    goto LABEL_15;
  }

  if (v10 == 6)
  {
    v11 = "alpha_unpremul-clear-edges";
    goto LABEL_15;
  }

  if (v10 == 4)
  {
    v11 = "alpha_premul-clear-edges";
    goto LABEL_15;
  }

  if (v10 != 2)
  {
    goto LABEL_14;
  }

  v11 = "alpha_unpremul";
LABEL_15:
  result = fprintf(a2, " %s", v11);
LABEL_16:
  v12 = *(this + 41);
  if (v12)
  {
    if (v12 == 1)
    {
      v13 = "edge_clamp";
    }

    else
    {
      v13 = "edge_unknown";
    }

    result = fprintf(a2, " %s", v13);
  }

  if (*(this + 168) == 1)
  {
    result = fwrite(" nearestsampling", 0x10uLL, 1uLL, a2);
  }

  if (*(this + 169) == 1)
  {

    return fwrite(" cache", 6uLL, 1uLL, a2);
  }

  return result;
}

void CI::CGImage::render_graph_core(uint64_t a1, CGImage *a2, uint64_t a3, uint64_t a4)
{
  v7 = CI::format_from_CGImage(*(a1 + 128), a2);
  if (v7 == 1799)
  {
    if (CGImageGetImageProvider())
    {
      v7 = 1800;
    }

    else
    {
      v7 = 1799;
    }
  }

  if (*(a1 + 164) != 1 && (*(a1 + 160) | 2) != 6)
  {
    if ((*(*a2 + 16))(a2) == 82 || (v10 = CI::Image::lookup_union_roi(a1, a4), v12 = v11, v14 = v13, v16 = v15, v17.origin.x = (*(*a1 + 88))(a1), v18.origin.x = v10, v18.origin.y = v12, v18.size.width = v14, v18.size.height = v16, !CGRectContainsRect(v17, v18)))
    {
      if ((*(*a2 + 568))(a2, 0))
      {
        CI::format_has_alpha(v7);
      }
    }
  }

  v9 = CI::Context::swizzler_for_input(a2, v7);
  if (v8)
  {
    CI::input_format_for_conversion(v8);
  }

  if (*(a1 + 168) != 1)
  {
    (*(*a2 + 576))(a2, 1, v9);
  }

  operator new();
}

void CI::CGImage::restore_resources(CI::CGImage *this, CGImage **a2)
{
  if ((*(*a2 + 2))(a2) == 35)
  {
    v4 = *(this + 16);
    if (a2[13] != v4)
    {
      v5 = *(this + 18);
      v6 = *(this + 22);

      CI::CGNode::set_image(a2, v4, v5, v6);
    }
  }
}

void *CI::CGImage::node_for_graphviz(uint64_t a1, void *a2)
{
  v3 = CI::Image::node_for_graphviz(a1, a2);
  if (CI_PRINT_TREE_dump_inputs())
  {
    CIGVNodeAddImage(v3, *(a1 + 128));
  }

  return v3;
}

uint64_t CI::CGImage::print_for_graphviz(uint64_t a1, FILE *__stream)
{
  fwrite("CGImageRef", 0xAuLL, 1uLL, __stream);
  if (*(a1 + 144))
  {
    fprintf(__stream, " content:%016llX");
  }

  else if (*(a1 + 128))
  {
    fprintf(__stream, " %p", *(a1 + 128));
    CGImageGetIdentifier();
    fprintf(__stream, "(%d)");
  }

  v5 = CI::format_from_CGImage(*(a1 + 128), v4);
  v6 = CI::name_for_format(v5);
  result = fprintf(__stream, " %s", v6);
  v8 = *(a1 + 160);
  if (v8 <= 1)
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    if (v8 == 1)
    {
      v9 = "alpha_one";
      goto LABEL_16;
    }

LABEL_15:
    v9 = "alpha_unknown";
    goto LABEL_16;
  }

  if (v8 == 6)
  {
    v9 = "alpha_unpremul-clear-edges";
    goto LABEL_16;
  }

  if (v8 == 4)
  {
    v9 = "alpha_premul-clear-edges";
    goto LABEL_16;
  }

  if (v8 != 2)
  {
    goto LABEL_15;
  }

  v9 = "alpha_unpremul";
LABEL_16:
  result = fprintf(__stream, " %s", v9);
LABEL_17:
  v10 = *(a1 + 164);
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = "edge_clamp";
    }

    else
    {
      v11 = "edge_unknown";
    }

    result = fprintf(__stream, " %s", v11);
  }

  if (*(a1 + 168) == 1)
  {
    result = fwrite(" nearestsampling", 0x10uLL, 1uLL, __stream);
  }

  if (*(a1 + 169) == 1)
  {

    return fwrite(" cache", 6uLL, 1uLL, __stream);
  }

  return result;
}

_DWORD *CI::CGImage::extent(_DWORD *this)
{
  if (!this[41])
  {
    return (*(*this + 96))(this);
  }

  return this;
}

double CI::CGImage::extent_unclamped(CGImageRef *this)
{
  CGImageGetWidth(this[16]);
  CGImageGetHeight(this[16]);
  return 0.0;
}

size_t CI::CGImage::max_dimension(CGImageRef *this)
{
  Width = CGImageGetWidth(this[16]);
  Height = CGImageGetHeight(this[16]);
  v4 = this[16];
  if (Width <= Height)
  {
    return CGImageGetHeight(v4);
  }

  else
  {
    return CGImageGetWidth(v4);
  }
}

uint64_t CI::CGImage::output_format(CI::CGImage *this, CGImage *a2)
{
  result = *(this + 16);
  if (result)
  {
    return CI::format_from_CGImage(result, a2);
  }

  return result;
}

void *CI::InstanceCounted<(CI::Type)3>::~InstanceCounted(void *result)
{
  *result = &unk_1F1034B80;
  atomic_fetch_add(&dword_1ED7C47BC[1], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)3>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1034B80;
  atomic_fetch_add(&dword_1ED7C47BC[1], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t CI::ClampImage::alpha_behavior(CI::ClampImage *this)
{
  v2 = (*(**(this + 15) + 128))(*(this + 15));
  v3 = (*(*this + 48))(this, 0);
  v7.origin.x = (*(*v3 + 88))(v3);
  v4 = CGRectContainsRect(v7, *(this + 136));
  if (v2 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  if (v4)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

CI::ClampNode *CI::ClampImage::render_graph_core(uint64_t a1, int a2, CI::Object *this, uint64_t a4, int a5)
{
  if (this)
  {
    v7 = CI::Object::ref(this);
  }

  else
  {
    v7 = 0;
  }

  if ((*(*v7 + 16))(v7) != 41)
  {
    v9 = CI::ClampNode::append_to_tree(v7, v8, *(a1 + 136));
    CI::Object::unref(v7);
    if (a5 >= 2)
    {

      CI::NoopNode::append_to_tree_and_unref();
    }

    return v9;
  }

  return v7;
}

void CI::ClampImage::~ClampImage(CI::ClampImage *this)
{
  *(this + 16) = &unk_1F10315C8;
  atomic_fetch_add(&dword_1ED7C47BC[5], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);
}

{
  *(this + 16) = &unk_1F10315C8;
  atomic_fetch_add(&dword_1ED7C47BC[5], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::ClampImage::output_format(CI::ClampImage *this)
{
  v2 = (*(*this + 48))(this, 0);
  v6.origin.x = (*(*v2 + 88))(v2);
  result = CGRectContainsRect(v6, *(this + 136));
  if (result)
  {
    v4 = *(*(*(*this + 48))(this, 0) + 144);

    return v4();
  }

  return result;
}

size_t CI::ClampImage::print_for_graph_core(CI::ClampImage *this, __sFILE *__stream)
{
  fwrite("clampRect ", 0xAuLL, 1uLL, __stream);
  v5 = *(this + 17);
  v6 = *(this + 18);
  v7 = *(this + 19);
  v8 = *(this + 20);

  return CI::fprintf(__stream, v4, *&v5);
}

void non-virtual thunk toCI::ClampImage::~ClampImage(CI::ClampImage *this)
{
  *this = &unk_1F10315C8;
  atomic_fetch_add(&dword_1ED7C47BC[5], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));
}

{
  *this = &unk_1F10315C8;
  atomic_fetch_add(&dword_1ED7C47BC[5], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));

  JUMPOUT(0x19EAF5590);
}

CI::Object *CI::ClampToAlphaImage::render_graph_core(uint64_t a1, uint64_t a2, CI::ClampToAlphaNode *a3)
{
  v5 = (*(*a1 + 184))(a1);
  if (a3)
  {
    a3 = CI::Object::ref(a3);
  }

  if ((*(*a1 + 128))(a1) && (*(*a1 + 128))(a1) != 1)
  {
    return a3;
  }

  v6 = CI::ClampToAlphaNode::append_to_tree(a3, v5);
  if (a3)
  {
    CI::Object::unref(a3);
  }

  return v6;
}

void CI::ClampToAlphaImage::~ClampToAlphaImage(CI::ClampToAlphaImage *this)
{
  *(this + 16) = &unk_1F10317F0;
  atomic_fetch_add(&dword_1ED7C47BC[6], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);
}

{
  *(this + 16) = &unk_1F10317F0;
  atomic_fetch_add(&dword_1ED7C47BC[6], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::ClampToAlphaImage::output_format(CI::ClampToAlphaImage *this)
{
  v1 = *(*(*(*this + 48))(this, 0) + 144);

  return v1();
}

void non-virtual thunk toCI::ClampToAlphaImage::~ClampToAlphaImage(CI::ClampToAlphaImage *this)
{
  *this = &unk_1F10317F0;
  atomic_fetch_add(&dword_1ED7C47BC[6], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));
}

{
  *this = &unk_1F10317F0;
  atomic_fetch_add(&dword_1ED7C47BC[6], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));

  JUMPOUT(0x19EAF5590);
}

CI::ColorMatrixImage *CI::ColorMatrixImage::ColorMatrixImage(CI::ColorMatrixImage *this, CI::Image *a2, double (*a3)[4])
{
  v6 = CI::ImageWithChild::ImageWithChild(this, a2);
  *(v6 + 16) = &unk_1F10350B8;
  atomic_fetch_add(&dword_1ED7C47BC[3], 1u);
  *v6 = &unk_1F1034F08;
  *(v6 + 16) = &unk_1F1035090;
  v7 = *&(*a3)[0];
  *(v6 + 152) = *&(*a3)[2];
  *(v6 + 136) = v7;
  v8 = *&(*a3)[4];
  v9 = *&(*a3)[6];
  v10 = *&(*a3)[8];
  *(v6 + 216) = *&(*a3)[10];
  *(v6 + 200) = v10;
  *(v6 + 184) = v9;
  *(v6 + 168) = v8;
  v11 = *&(*a3)[12];
  v12 = *&(*a3)[14];
  v13 = *&(*a3)[18];
  *(v6 + 264) = *&(*a3)[16];
  *(v6 + 280) = v13;
  *(v6 + 248) = v12;
  *(v6 + 232) = v11;
  *(this + 12) = CI::ColorMatrixImage::makeDigest(*(a2 + 12), a3);
  *(this + 13) = CI::ColorMatrixImage::makeDigest(*(a2 + 13), a3);
  *(this + 113) = 0;
  return this;
}

unint64_t CI::ColorMatrixImage::makeDigest(uint64_t a1, char *a2)
{
  XXH64_reset(v5, 0);
  LODWORD(__src) = 5;
  XXH64_update(v5, &__src, 4uLL);
  __src = a1;
  XXH64_update(v5, &__src, 8uLL);
  if (a2)
  {
    XXH64_update(v5, a2, 0xA0uLL);
  }

  return XXH64_digest(v5);
}

float CI::ColorMatrixImage::headroom(CI::ColorMatrixImage *this)
{
  v2 = (*(*this + 48))(this, 0);
  v3 = (*(*v2 + 232))(v2);
  if (v3 < 1.0)
  {
    return 0.0;
  }

  v5 = v3;
  v6 = *(this + 17);
  v7 = *(this + 18);
  v8 = *(this + 19);
  v9 = *(this + 20);
  v10 = *(this + 33);
  v11 = *(this + 34);
  v12 = v10 + v9 + v7 * v5 + v6 * v5 + v8 * v5;
  v13 = *(this + 21);
  v14 = *(this + 22);
  v15 = *(this + 23);
  v16 = *(this + 24);
  v17 = v11 + v16 + v14 * v5 + v13 * v5 + v15 * v5;
  v18 = *(this + 25);
  v19 = *(this + 26);
  v20 = *(this + 27);
  v21 = *(this + 28);
  v22 = *(this + 35);
  *&v5 = v22 + v21 + v19 * v5 + v18 * v5 + v20 * v5;
  *&v6 = v10 + v9 + v7 * 0.0 + v6 * 0.0 + v8 * 0.0;
  *&v7 = v11 + v16 + v14 * 0.0 + v13 * 0.0 + v15 * 0.0;
  v23 = v22 + v21 + v19 * 0.0 + v18 * 0.0 + v20 * 0.0;
  return fmaxf(fmaxf(fmaxf(*&v6, *&v7), v23), fmaxf(fmaxf(fmaxf(v12, v17), *&v5), 1.0));
}

float CI::ColorMatrixImage::lightlevel(CI::ColorMatrixImage *this)
{
  v2 = (*(*this + 48))(this, 0);
  v3 = (*(*v2 + 240))(v2);
  if (v3 < 1.0)
  {
    return 0.0;
  }

  v5 = v3;
  v6 = *(this + 17);
  v7 = *(this + 18);
  v8 = *(this + 19);
  v9 = *(this + 20);
  v10 = *(this + 33);
  v11 = *(this + 34);
  v12 = v10 + v9 + v7 * v5 + v6 * v5 + v8 * v5;
  v13 = *(this + 21);
  v14 = *(this + 22);
  v15 = *(this + 23);
  v16 = *(this + 24);
  v17 = v11 + v16 + v14 * v5 + v13 * v5 + v15 * v5;
  v18 = *(this + 25);
  v19 = *(this + 26);
  v20 = *(this + 27);
  v21 = *(this + 28);
  v22 = *(this + 35);
  *&v5 = v22 + v21 + v19 * v5 + v18 * v5 + v20 * v5;
  *&v5 = fmaxf(fmaxf(fmaxf(v12, v17), *&v5), 0.0);
  *&v6 = v10 + v9 + v7 * 0.0 + v6 * 0.0 + v8 * 0.0;
  *&v7 = v11 + v16 + v14 * 0.0 + v13 * 0.0 + v15 * 0.0;
  v23 = v22 + v21 + v19 * 0.0 + v18 * 0.0 + v20 * 0.0;
  return fmaxf(fmaxf(fmaxf(*&v6, *&v7), v23), *&v5);
}

uint64_t CI::ColorMatrixImage::extent(CI::ColorMatrixImage *this, const double (*a2)[4])
{
  result = CI::ColorMatrixNode::is_alpha_biased((this + 136), a2);
  if (!result)
  {
    return (*(**(this + 15) + 88))(*(this + 15));
  }

  return result;
}

uint64_t CI::ColorMatrixImage::alpha_behavior(CI::ColorMatrixImage *this)
{
  result = (*(**(this + 15) + 128))(*(this + 15));
  if (result != -1)
  {
    v4 = result;
    if (CI::ColorMatrixNode::is_alpha_one((this + 136), v3))
    {
      return 1;
    }

    else
    {
      LODWORD(result) = CI::ColorMatrixNode::is_alpha_preserving((this + 136), v5);
      if (v4 == 1)
      {
        return result;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CI::ColorMatrixImage::print_for_graph_core(CI::ColorMatrixImage *this, __sFILE *__stream)
{
  fwrite("color_matrix", 0xCuLL, 1uLL, __stream);
  if (CI::ColorMatrixNode::is_biased((this + 136), v4))
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  v6 = (this + 160);
  v7 = off_1E75C58C0;
  do
  {
    v8 = *v7++;
    result = fprintf(__stream, " %s=(%g %g %g %g)", v8, *(v6 - 3), *(v6 - 2), *(v6 - 1), *v6);
    v6 += 4;
    --v5;
  }

  while (v5);
  return result;
}

CI::ColorMatrixNode *CI::ColorMatrixImage::render_graph_core(void **a1, uint64_t a2, CI::ColorMatrixNode *a3)
{
  v5 = ((*a1)[23])(a1);
  if (a3)
  {
    a3 = CI::Object::ref(a3);
  }

  v6 = (*(*a1[15] + 128))(a1[15]) != -1;
  v7 = CI::ColorMatrixNode::append_to_tree(a3, (a1 + 17), v6, v5);
  if (a3)
  {
    CI::Object::unref(a3);
  }

  return v7;
}

uint64_t CI::ColorMatrixImage::print_for_graphviz(uint64_t a1, FILE *__stream, uint64_t a3, int a4)
{
  fwrite("color_matrix", 0xCuLL, 1uLL, __stream);
  is_biased = CI::ColorMatrixNode::is_biased((a1 + 136), v7);
  if (a4)
  {
    v9 = 32;
  }

  else
  {
    v9 = 10;
  }

  if (is_biased)
  {
    v10 = 5;
  }

  else
  {
    v10 = 4;
  }

  v11 = (a1 + 160);
  v12 = off_1E75C58C0;
  do
  {
    v13 = *v12++;
    result = fprintf(__stream, "%c%s=(%g %g %g %g)", v9, v13, *(v11 - 3), *(v11 - 2), *(v11 - 1), *v11);
    v11 += 4;
    --v10;
  }

  while (v10);
  return result;
}

void CI::ColorMatrixImage::~ColorMatrixImage(CI::ColorMatrixImage *this)
{
  *(this + 16) = &unk_1F10350B8;
  atomic_fetch_add(&dword_1ED7C47BC[3], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);
}

{
  *(this + 16) = &unk_1F10350B8;
  atomic_fetch_add(&dword_1ED7C47BC[3], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::ColorMatrixImage::~ColorMatrixImage(CI::ColorMatrixImage *this)
{
  *this = &unk_1F10350B8;
  atomic_fetch_add(&dword_1ED7C47BC[3], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));
}

{
  *this = &unk_1F10350B8;
  atomic_fetch_add(&dword_1ED7C47BC[3], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));

  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)5>::~InstanceCounted(void *result)
{
  *result = &unk_1F10350B8;
  atomic_fetch_add(&dword_1ED7C47BC[3], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)5>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F10350B8;
  atomic_fetch_add(&dword_1ED7C47BC[3], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

CI::ColorMatchImage *CI::ColorMatchImage::ColorMatchImage(CI::ColorMatchImage *this, CI::Image *a2, CGColorSpace *a3)
{
  v6 = CI::ImageWithChild::ImageWithChild(this, a2);
  *(v6 + 16) = &unk_1F1035670;
  atomic_fetch_add(&dword_1ED7C47BC[2], 1u);
  *v6 = &unk_1F10350E0;
  *(v6 + 154) = 0;
  *(v6 + 39) = 0;
  *(v6 + 160) = 0;
  *(v6 + 16) = &unk_1F1035268;
  *(v6 + 17) = 0;
  *(v6 + 152) = 1;
  *(this + 18) = CGColorSpaceRetain(a3);
  *(this + 153) = 0;
  *(this + 12) = CI::ColorMatchImage::makeDigest(*(a2 + 12), 0, a3, 0, 0.0);
  *(this + 13) = CI::ColorMatchImage::makeDigest(*(a2 + 13), 0, a3, 0, 0.0);
  return this;
}

unint64_t CI::ColorMatchImage::makeDigest(uint64_t a1, CGColorSpace *a2, CGColorSpace *a3, int a4, float a5)
{
  XXH64_reset(v11, 0);
  LODWORD(__src) = 4;
  XXH64_update(v11, &__src, 4uLL);
  __src = a1;
  XXH64_update(v11, &__src, 8uLL);
  if (!a2)
  {
    LODWORD(__src) = 1;
    XXH64_update(v11, &__src, 4uLL);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    LODWORD(__src) = 1;
    XXH64_update(v11, &__src, 4uLL);
    goto LABEL_6;
  }

  CI::XXHashHelper::add(v11, a2);
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  CI::XXHashHelper::add(v11, a3);
LABEL_6:
  *&__src = a5;
  XXH64_update(v11, &__src, 4uLL);
  LODWORD(__src) = a4;
  XXH64_update(v11, &__src, 4uLL);
  return XXH64_digest(v11);
}

CI::ColorMatchImage *CI::ColorMatchImage::ColorMatchImage(CI::ColorMatchImage *this, CI::Image *a2, CGColorSpace *a3, int a4)
{
  v8 = CI::ImageWithChild::ImageWithChild(this, a2);
  *(v8 + 16) = &unk_1F1035670;
  atomic_fetch_add(&dword_1ED7C47BC[2], 1u);
  *v8 = &unk_1F10350E0;
  *(v8 + 16) = &unk_1F1035268;
  *(v8 + 154) = 0;
  *(v8 + 39) = 0;
  *(v8 + 160) = 0;
  v9 = CGColorSpaceRetain(a3);
  *(this + 76) = 256;
  *(this + 17) = v9;
  *(this + 18) = 0;
  if (a4)
  {
    v10 = CGColorSpaceUsesITUR_2100TF(a3);
    v11 = 1.0;
  }

  else
  {
    v10 = 0;
    v11 = 0.0;
  }

  *(this + 154) = v10;
  *(this + 39) = v11;
  *(this + 12) = CI::ColorMatchImage::makeDigest(*(a2 + 12), a3, 0, 0, v11);
  *(this + 13) = CI::ColorMatchImage::makeDigest(*(a2 + 13), a3, 0, 0, *(this + 39));
  return this;
}

CI::ColorMatchImage *CI::ColorMatchImage::ColorMatchImage(CI::ColorMatchImage *this, CI::Image *a2, CGColorSpace *a3, float a4, int a5)
{
  v10 = CI::ImageWithChild::ImageWithChild(this, a2);
  *(v10 + 16) = &unk_1F1035670;
  atomic_fetch_add(&dword_1ED7C47BC[2], 1u);
  *v10 = &unk_1F10350E0;
  *(v10 + 16) = &unk_1F1035268;
  *(v10 + 154) = 0;
  *(v10 + 39) = 0;
  *(v10 + 160) = 0;
  v11 = CGColorSpaceRetain(a3);
  *(this + 76) = 256;
  *(this + 17) = v11;
  *(this + 18) = 0;
  v12 = a4 != 0.0 && CGColorSpaceUsesITUR_2100TF(a3);
  *(this + 154) = v12;
  *(this + 39) = a4;
  *(this + 160) = a5;
  *(this + 12) = CI::ColorMatchImage::makeDigest(*(a2 + 12), a3, 0, a5, a4);
  *(this + 13) = CI::ColorMatchImage::makeDigest(*(a2 + 13), a3, 0, 0, *(this + 39));
  return this;
}

void CI::ColorMatchImage::~ColorMatchImage(CI::ColorMatchImage *this)
{
  *this = &unk_1F10350E0;
  *(this + 16) = &unk_1F1035268;
  CGColorSpaceRelease(*(this + 17));
  CGColorSpaceRelease(*(this + 18));
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = &unk_1F1035670;
  atomic_fetch_add(&dword_1ED7C47BC[2], 0xFFFFFFFF);

  CI::ImageWithChild::~ImageWithChild(this);
}

{
  CI::ColorMatchImage::~ColorMatchImage(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::ColorMatchImage::~ColorMatchImage(CI::ColorMatchImage *this)
{
  CI::ColorMatchImage::~ColorMatchImage((this - 128));
}

{
  CI::ColorMatchImage::~ColorMatchImage((this - 128));

  JUMPOUT(0x19EAF5590);
}

float CI::ColorMatchImage::headroom(CI::ColorMatchImage *this)
{
  if (*(this + 154) == 1)
  {
    return *(this + 39);
  }

  v2 = (*(**(this + 15) + 232))(*(this + 15));
  if (v2 <= 1.0)
  {
    v3 = *(this + 17);
    if (v3)
    {
      v4 = CGColorSpaceIsPQBased(v3) || CGColorSpaceIsHLGBased(*(this + 17));
    }

    else
    {
      v4 = 0;
    }

    v5 = *(this + 18);
    if (v5)
    {
      LOBYTE(v5) = CGColorSpaceIsPQBased(v5) || CGColorSpaceIsHLGBased(*(this + 18));
    }

    if (*(this + 153) & v4)
    {
      return 4.9261;
    }

    else if (*(this + 152) & v5)
    {
      return 4.9261;
    }
  }

  return v2;
}

float CI::ColorMatchImage::lightlevel(CI::ColorMatchImage *this)
{
  v1 = 0.0;
  if ((*(this + 154) & 1) == 0)
  {
    v3 = (*(**(this + 15) + 240))(*(this + 15));
    if (v3 != 0.0)
    {
      v4 = v3;
      v5 = *(this + 17);
      if (v5)
      {
        v6 = CGColorSpaceIsPQBased(v5) || CGColorSpaceUsesExtendedRange(*(this + 17));
      }

      else
      {
        v6 = 0;
      }

      v7 = *(this + 18);
      if (v7)
      {
        LOBYTE(v7) = CGColorSpaceIsPQBased(v7) || CGColorSpaceUsesExtendedRange(*(this + 18));
      }

      v1 = v4;
      if ((*(this + 153) & v6 & 1) == 0)
      {
        if (*(this + 152) & v7)
        {
          return v4;
        }

        else
        {
          return 0.0;
        }
      }
    }
  }

  return v1;
}

CGColorSpace *CI::ColorMatchImage::colorspace(CGColorSpace **this, CGColorSpace *a2)
{
  if (*(this + 154) == 1)
  {
    SDRCopy = CI::ColorSpaceCreateSDRCopy(this[17], a2);
    v3 = SDRCopy;
    if (SDRCopy)
    {
      CFAutorelease(SDRCopy);
    }
  }

  else if (*(this + 153))
  {
    if (this[19])
    {
      return 0;
    }

    else
    {
      return this[17];
    }
  }

  else
  {
    return this[18];
  }

  return v3;
}

uint64_t CI::ColorMatchImage::print_for_graph_core(__sFILE **this, __sFILE *__stream)
{
  fwrite("colormatch", 0xAuLL, 1uLL, __stream);
  fputc(32, __stream);
  if (*(this + 152) == 1)
  {
    fwrite("workingspace", 0xCuLL, 1uLL, __stream);
  }

  else
  {
    CI::fprintf_cs(__stream, this[17], 1);
  }

  if (*(this + 154) == 1)
  {
    result = fwrite("_tonemapped", 0xBuLL, 1uLL, __stream);
    v5 = *(this + 39);
    if (v5 == 1.0)
    {
      result = fwrite("_to_sdr", 7uLL, 1uLL, __stream);
    }

    else if (v5 >= 1.0)
    {
      result = fprintf(__stream, "_to%.2f", v5);
    }

    if (*(this + 160))
    {
      v6 = "_ch";
      v7 = 3;
      goto LABEL_16;
    }
  }

  else
  {
    fwrite("_to_", 4uLL, 1uLL, __stream);
    if (*(this + 153) == 1)
    {
      v6 = "workingspace";
      v7 = 12;
LABEL_16:

      return fwrite(v6, v7, 1uLL, __stream);
    }

    v8 = this[18];

    return CI::fprintf_cs(__stream, v8, 1);
  }

  return result;
}

CI::ColorMatrixNode *CI::ColorMatchImage::render_graph_core(CGColorSpace **a1, CGColorSpace **a2, CI::ColorMatrixNode *appended)
{
  v124 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 23))(a1);
  if (*(a1 + 152))
  {
    v7 = a2 + 3;
  }

  else
  {
    v7 = a1 + 17;
  }

  v8 = *v7;
  if (*(a1 + 153))
  {
    v9 = a2 + 3;
  }

  else
  {
    v9 = a1 + 18;
  }

  v10 = *v9;
  if (appended)
  {
    appended = CI::Object::ref(appended);
  }

  if (v8)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || v8 == v10)
  {
    return appended;
  }

  v13 = *(a1 + 29);
  v14 = *(a1 + 154);
  v15 = *(a1 + 39);
  v16 = *(a1 + 160);
  v17 = (*(*a1 + 6))(a1, 0);
  v18 = (*(*v17 + 240))(v17);
  CMatrix::CMatrix(v108);
  v91 = 0.0;
  if (!CI::get_colorspace_gamma_and_matrix(v8, &v91, v108, v19))
  {
    if (CGColorSpaceGetModel(v8) == kCGColorSpaceModelMonochrome || CGColorSpaceGetModel(v8) == kCGColorSpaceModelRGB)
    {
      v84 = v13;
      v23 = (*(*a2 + 20))(a2);
      if ((atomic_load_explicit(&qword_1ED7C4588, memory_order_acquire) & 1) == 0)
      {
        CI::ColorMatchImage::render_graph_core();
      }

      v24 = (v14 ^ 1) & ((v23 == 2.0) | !CGColorSpaceUsesITUR_2100TF(v8));
      if (v24 == 1)
      {
        pthread_mutex_lock(&CI::createConverterArrayFrom(CGColorSpace *,float,BOOL,float,BOOL,float)::mutex);
        Value = CFDictionaryGetValue(_MergedGlobals_9, v8);
        pthread_mutex_unlock(&CI::createConverterArrayFrom(CGColorSpace *,float,BOOL,float,BOOL,float)::mutex);
        if (Value)
        {
          CFRetain(Value);
LABEL_42:
          v29 = v84;
LABEL_49:
          appended = CI::AppendConverterArray(a2, appended, v29, Value, 0, v6);
          CFRelease(Value);
          goto LABEL_66;
        }
      }

      v83 = v6;
      if (CI::CI_EXTENDED_PCS(void)::didCheck != -1)
      {
        CI::ColorMatchImage::render_graph_core();
      }

      if ((CI::CI_EXTENDED_PCS(void)::v & v14) != 0)
      {
        v26 = MEMORY[0x1E695F1B0];
      }

      else
      {
        v26 = MEMORY[0x1E695F108];
      }

      v27 = CGColorSpaceCreateWithName(*v26);
      Value = CI::createConverterArray(v8, v27, v16, v23, v15, v18);
      if (Value)
      {
        v28 = v24;
      }

      else
      {
        v28 = 0;
      }

      if (v28)
      {
        pthread_mutex_lock(&CI::createConverterArrayFrom(CGColorSpace *,float,BOOL,float,BOOL,float)::mutex);
        CFDictionaryAddValue(_MergedGlobals_9, v8, Value);
        pthread_mutex_unlock(&CI::createConverterArrayFrom(CGColorSpace *,float,BOOL,float,BOOL,float)::mutex);
        CGColorSpaceRelease(v27);
        v6 = v83;
        goto LABEL_42;
      }

      CGColorSpaceRelease(v27);
      v6 = v83;
      v29 = v84;
      if (Value)
      {
        goto LABEL_49;
      }
    }

    CI::snprintf_cs(&v109, 0x100, v8, 0);
    v33 = ci_logger_render();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      CI::ColorMatchImage::render_graph_core(&v109, v33);
    }

    goto LABEL_66;
  }

  v20 = v91;
  if (v91 == -1.0)
  {
    v21 = CI::PremultiplyNode::append_to_tree(appended, 0xFFFFFFFFLL, v6);
    if (appended)
    {
      CI::Object::unref(appended);
    }

    if ((CI_INPUT_SRGB_TEXTURES() & 0xFFFFFFFD) != 0)
    {
      v118 = 0;
      *&v119 = &v118;
      *(&v119 + 1) = 0x2000000000;
      *&v120 = (*(*v21 + 416))(v21);
      v22 = *(v119 + 24);
      if ((v22 || (v86 = MEMORY[0x1E69E9820], v87 = 0x40000000, v88 = ___ZN2CIL19AppendColorSpaceSrcEPNS_7ContextEPNS_4NodeENS_10ImageIndexEP12CGColorSpacebfbfb_block_invoke, v89 = &unk_1E75C58F0, v90 = &v118, v109 = MEMORY[0x1E69E9820], v110 = 0x40000000, v111 = ___ZN2CI4Node27traverse_preorder_stoppableEU13block_pointerFbPS0_E_block_invoke, v112 = &unk_1E75C5918, v113 = &v86, CI::GraphObject::traverse_preorder_stoppable(v21, 0, 0, 0, &v109), (v22 = *(v119 + 24)) != 0)) && (v6 & (*(*a2 + 74))(a2, *v22, 3)) == 1)
      {
        *(*(v119 + 24) + 4) = 1;
      }

      else
      {
        v34 = CI::SRGBNode::append_to_tree(v21, 0xFFFFFFFFLL, v6);
        CI::Object::unref(v21);
        v21 = v34;
      }

      _Block_object_dispose(&v118, 8);
      v32 = v21;
    }

    else
    {
      v32 = CI::SRGBNode::append_to_tree(v21, 0xFFFFFFFFLL, v6);
      if (v21)
      {
        CI::Object::unref(v21);
      }
    }

    v31 = v32;
LABEL_57:
    appended = CI::PremultiplyNode::append_to_tree(v31, 1, v6);
    if (v32)
    {
      CI::Object::unref(v32);
    }

    goto LABEL_59;
  }

  if (v91 != 0.0 && v91 != 1.0)
  {
    v30 = CI::PremultiplyNode::append_to_tree(appended, 0xFFFFFFFFLL, v6);
    if (appended)
    {
      CI::Object::unref(appended);
    }

    v31 = CI::CurveNode::append_to_tree_and_unref(v30, v6, v20);
    v32 = v31;
    goto LABEL_57;
  }

LABEL_59:
  if (CMatrix::columnCount(v108) == 1)
  {
    CMatrix::CMatrix(&v109, v108);
    v120 = 0u;
    v121 = 0;
    v123 = 0u;
    v119 = 0u;
    v118 = 0x3FF0000000000000;
    *&v120 = 0x3FF0000000000000;
    v122 = 0x3FF0000000000000;
  }

  else
  {
    if (CMatrix::isNearIdentity(v108, 0.0001))
    {
      goto LABEL_66;
    }

    CMatrix::CMatrix(&v109, v108);
    v106 = CMatrix::operator[](&v109, 0);
    v107 = v35;
    v118 = *CMatrixRow::operator[](&v106, 0);
    v104 = CMatrix::operator[](&v109, 1u);
    v105 = v36;
    *&v119 = *CMatrixRow::operator[](&v104, 0);
    v102 = CMatrix::operator[](&v109, 2u);
    v103 = v37;
    *(&v119 + 1) = *CMatrixRow::operator[](&v102, 0);
    v100 = CMatrix::operator[](&v109, 0);
    v101 = v38;
    *&v120 = *CMatrixRow::operator[](&v100, 1u);
    v98 = CMatrix::operator[](&v109, 1u);
    v99 = v39;
    *(&v120 + 1) = *CMatrixRow::operator[](&v98, 1u);
    v96 = CMatrix::operator[](&v109, 2u);
    v97 = v40;
    v121 = *CMatrixRow::operator[](&v96, 1u);
    v94 = CMatrix::operator[](&v109, 0);
    v95 = v41;
    v122 = *CMatrixRow::operator[](&v94, 2u);
    v92 = CMatrix::operator[](&v109, 1u);
    v93 = v42;
    *&v123 = *CMatrixRow::operator[](&v92, 2u);
    *&v85[0] = CMatrix::operator[](&v109, 2u);
    v85[1] = v43;
    *(&v123 + 1) = *CMatrixRow::operator[](v85, 2u);
  }

  v44 = CI::ColorMatrixNode::append_to_tree(appended, &v118, v6, 1);
  if (appended)
  {
    CI::Object::unref(appended);
  }

  appended = v44;
LABEL_66:
  v45 = *(a1 + 29);
  CMatrix::CMatrix(v108);
  v85[0] = 0.0;
  if (!CI::get_colorspace_gamma_and_matrix(v10, v85, v108, v46))
  {
    if (CGColorSpaceGetModel(v10) == kCGColorSpaceModelMonochrome || CGColorSpaceGetModel(v10) == kCGColorSpaceModelRGB)
    {
      v57 = CGColorSpaceUsesITUR_2100TF(v10);
      v58 = (*(*a2 + 20))(a2);
      if ((atomic_load_explicit(&qword_1ED7C4598, memory_order_acquire) & 1) == 0)
      {
        CI::ColorMatchImage::render_graph_core();
      }

      v59 = !CGColorSpaceUsesITUR_2100TF(v10);
      v60 = v58 == 2.0 || v59;
      if (v60 == 1)
      {
        pthread_mutex_lock(&CI::createConverterArrayTo(CGColorSpace *,float)::mutex);
        ConverterArray = CFDictionaryGetValue(qword_1ED7C4590, v10);
        pthread_mutex_unlock(&CI::createConverterArrayTo(CGColorSpace *,float)::mutex);
        if (ConverterArray)
        {
          CFRetain(ConverterArray);
LABEL_109:
          appended = CI::AppendConverterArray(a2, appended, v45, ConverterArray, v57, v6);
          CFRelease(ConverterArray);
          return appended;
        }
      }

      if (CI::CI_EXTENDED_PCS(void)::didCheck != -1)
      {
        CI::ColorMatchImage::render_graph_core();
      }

      if (CI::CI_EXTENDED_PCS(void)::v)
      {
        v76 = MEMORY[0x1E695F108];
      }

      else
      {
        v76 = MEMORY[0x1E695F1B0];
      }

      v77 = CGColorSpaceCreateWithName(*v76);
      ConverterArray = CI::createConverterArray(v77, v10, 0, v58, 0.0, 0.0);
      if (ConverterArray)
      {
        v78 = v60;
      }

      else
      {
        v78 = 0;
      }

      if (v78)
      {
        pthread_mutex_lock(&CI::createConverterArrayTo(CGColorSpace *,float)::mutex);
        CFDictionaryAddValue(qword_1ED7C4590, v10, ConverterArray);
        pthread_mutex_unlock(&CI::createConverterArrayTo(CGColorSpace *,float)::mutex);
        CGColorSpaceRelease(v77);
        goto LABEL_109;
      }

      CGColorSpaceRelease(v77);
      if (ConverterArray)
      {
        goto LABEL_109;
      }
    }

    CI::snprintf_cs(&v109, 0x100, v10, 0);
    v81 = ci_logger_render();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      CI::ColorMatchImage::render_graph_core(&v109, v81);
    }

    return appended;
  }

  if (CMatrix::columnCount(v108) == 1)
  {
    v118 = CMatrix::operator[](v108, 0);
    *&v119 = v47;
    v109 = *CMatrixRow::operator[](&v118, 0);
    v86 = CMatrix::operator[](v108, 1u);
    v87 = v48;
    v110 = *CMatrixRow::operator[](&v86, 0);
    v106 = CMatrix::operator[](v108, 2u);
    v107 = v49;
    v111 = *CMatrixRow::operator[](&v106, 0);
    v104 = CMatrix::operator[](v108, 0);
    v105 = v50;
    v112 = *CMatrixRow::operator[](&v104, 0);
    v102 = CMatrix::operator[](v108, 1u);
    v103 = v51;
    v113 = *CMatrixRow::operator[](&v102, 0);
    v100 = CMatrix::operator[](v108, 2u);
    v101 = v52;
    v114 = *CMatrixRow::operator[](&v100, 0);
    v98 = CMatrix::operator[](v108, 0);
    v99 = v53;
    v115 = *CMatrixRow::operator[](&v98, 0);
    v96 = CMatrix::operator[](v108, 1u);
    v97 = v54;
    v116 = *CMatrixRow::operator[](&v96, 0);
    v94 = CMatrix::operator[](v108, 2u);
    v95 = v55;
    v117 = *CMatrixRow::operator[](&v94, 0);
    v56 = &v109;
  }

  else
  {
    if (CMatrix::isNearIdentity(v108, 0.0001))
    {
      goto LABEL_84;
    }

    CMatrix::inverse(v108, &v109);
    v86 = CMatrix::operator[](&v109, 0);
    v87 = v62;
    v118 = *CMatrixRow::operator[](&v86, 0);
    v106 = CMatrix::operator[](&v109, 1u);
    v107 = v63;
    *&v119 = *CMatrixRow::operator[](&v106, 0);
    v104 = CMatrix::operator[](&v109, 2u);
    v105 = v64;
    *(&v119 + 1) = *CMatrixRow::operator[](&v104, 0);
    v102 = CMatrix::operator[](&v109, 0);
    v103 = v65;
    *&v120 = *CMatrixRow::operator[](&v102, 1u);
    v100 = CMatrix::operator[](&v109, 1u);
    v101 = v66;
    *(&v120 + 1) = *CMatrixRow::operator[](&v100, 1u);
    v98 = CMatrix::operator[](&v109, 2u);
    v99 = v67;
    v121 = *CMatrixRow::operator[](&v98, 1u);
    v96 = CMatrix::operator[](&v109, 0);
    v97 = v68;
    v122 = *CMatrixRow::operator[](&v96, 2u);
    v94 = CMatrix::operator[](&v109, 1u);
    v95 = v69;
    *&v123 = *CMatrixRow::operator[](&v94, 2u);
    v92 = CMatrix::operator[](&v109, 2u);
    v93 = v70;
    *(&v123 + 1) = *CMatrixRow::operator[](&v92, 2u);
    v56 = &v118;
  }

  v71 = CI::ColorMatrixNode::append_to_tree(appended, v56, v6, 1);
  if (appended)
  {
    CI::Object::unref(appended);
  }

  appended = v71;
LABEL_84:
  v72 = v85[0];
  if (v85[0] == -1.0)
  {
    v73 = CI::PremultiplyNode::append_to_tree(appended, 0xFFFFFFFFLL, v6);
    if (appended)
    {
      CI::Object::unref(appended);
    }

    v74 = CI::SRGBNode::append_to_tree(v73, 1, v6);
    if (v73)
    {
      CI::Object::unref(v73);
    }

    appended = CI::PremultiplyNode::append_to_tree(v74, 1, v6);
    if (v74)
    {
      v75 = v74;
LABEL_107:
      CI::Object::unref(v75);
    }
  }

  else if (v85[0] != 0.0 && v85[0] != 1.0)
  {
    v79 = CI::PremultiplyNode::append_to_tree(appended, 0xFFFFFFFFLL, v6);
    if (appended)
    {
      CI::Object::unref(appended);
    }

    v80 = CI::CurveNode::append_to_tree_and_unref(v79, v6, 1.0 / v72);
    appended = CI::PremultiplyNode::append_to_tree(v80, 1, v6);
    if (v80)
    {
      v75 = v80;
      goto LABEL_107;
    }
  }

  return appended;
}

void CI::match_color(float32x2_t *this, CI *a2, CGColorSpace *a3, CGColorSpace *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  if (a2 == a3 || !a2 || !a3)
  {
    return;
  }

  CMatrix::CMatrix(v43);
  CMatrix::CMatrix(v42);
  v40 = 1.0;
  v41 = 1.0;
  colorspace_gamma_and_matrix = CI::get_colorspace_gamma_and_matrix(a2, &v41, v43, v7);
  v10 = CI::get_colorspace_gamma_and_matrix(a3, &v40, v42, v9);
  if (colorspace_gamma_and_matrix && (v10 & 1) != 0)
  {
    CMatrix::inverse(v42, &v44);
    CMatrix::operator*(v43, &v44, &v46);
    v11 = CMatrix::isNearIdentity(&v46, 0.001);
    v12 = v11;
    v13 = v41;
    if (v11 && v41 == v40)
    {
      return;
    }

    v15 = this->f32[0];
    v14 = this->f32[1];
    v16 = this->f32[0];
    v17 = v14;
    v18 = this[1].f32[0];
    v19 = v18;
    if (v41 == -1.0)
    {
      if (v16 >= 0.04045)
      {
        v16 = pow(v16 * 0.947867299 + 0.0521327014, 2.4);
      }

      else
      {
        v16 = v16 * 0.0773993808;
      }

      if (v17 >= 0.04045)
      {
        v17 = pow(v17 * 0.947867299 + 0.0521327014, 2.4);
      }

      else
      {
        v17 = v17 * 0.0773993808;
      }

      if (v19 < 0.04045)
      {
        v19 = v19 * 0.0773993808;
        goto LABEL_34;
      }

      v24 = v19 * 0.947867299 + 0.0521327014;
      v25 = 2.4;
    }

    else
    {
      if (v41 == 0.0 || v41 == 1.0)
      {
        goto LABEL_34;
      }

      v22 = pow(this->f32[0], v41);
      if (v15 >= 0.0)
      {
        v16 = v22;
      }

      else
      {
        v16 = 0.0;
      }

      v23 = pow(v14, v13);
      if (v14 >= 0.0)
      {
        v17 = v23;
      }

      else
      {
        v17 = 0.0;
      }

      if (v18 < 0.0)
      {
        v19 = 0.0;
LABEL_34:
        if ((v12 & 1) == 0)
        {
          CMatrix::transpose(&v46, &v38);
          CMatrix::CMatrix(v37, 3u, 1u, v16, v26, v27, *&v17, *&v19);
          CMatrix::operator*(&v38, v37, &v44);
          v38 = CMatrix::operator[](&v44, 0);
          v39 = v28;
          v16 = *CMatrixRow::operator[](&v38, 0);
          v38 = CMatrix::operator[](&v44, 1u);
          v39 = v29;
          v17 = *CMatrixRow::operator[](&v38, 0);
          v38 = CMatrix::operator[](&v44, 2u);
          v39 = v30;
          v19 = *CMatrixRow::operator[](&v38, 0);
        }

        v31 = v40;
        if (v40 == -1.0)
        {
          if (v16 >= 0.0031308)
          {
            v32 = pow(v16, 0.4166667) * 1.055 + -0.055;
          }

          else
          {
            v32 = v16 * 12.92;
          }

          if (v17 >= 0.0031308)
          {
            v33 = pow(v17, 0.4166667) * 1.055 + -0.055;
          }

          else
          {
            v33 = v17 * 12.92;
          }

          if (v19 >= 0.0031308)
          {
            v19 = pow(v19, 0.4166667) * 1.055 + -0.055;
          }

          else
          {
            v19 = v19 * 12.92;
          }
        }

        else if (v40 == 0.0 || v40 == 1.0)
        {
          v32 = v16;
          v33 = v17;
        }

        else
        {
          v33 = 0.0;
          v32 = 0.0;
          if (v16 >= 0.0)
          {
            v32 = pow(v16, 1.0 / v40);
          }

          if (v17 >= 0.0)
          {
            v33 = pow(v17, 1.0 / v31);
          }

          if (v19 >= 0.0)
          {
            v19 = pow(v19, 1.0 / v31);
          }

          else
          {
            v19 = 0.0;
          }
        }

        v34 = v32;
        v35 = v33;
        this->f32[0] = v34;
        this->f32[1] = v35;
        v36 = v19;
        this[1].f32[0] = v36;
        return;
      }

      v24 = v18;
      v25 = v13;
    }

    v19 = pow(v24, v25);
    goto LABEL_34;
  }

  v46 = vcvtq_f64_f32(*this);
  v47 = this[1].f32[0];
  v48 = 0x3FF0000000000000;
  v44 = 0u;
  *v45 = 0u;
  MEMORY[0x19EAF4190](a3, 0);
  if (CGColorTransformConvertColorComponents())
  {
    *this = vcvt_f32_f64(v44);
    v20 = v45[0];
    this[1].f32[0] = v20;
    CGColorTransformRelease();
  }

  else
  {
    CGColorTransformRelease();
    CI::snprintf_cs(&v46, 0x100, a2, 0);
    CI::snprintf_cs(&v44, 0x100, a3, 0);
    v21 = ci_logger_render();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      CI::match_color(&v46, &v44, v21);
    }
  }
}

uint64_t CI::get_colorspace_gamma_and_matrix(CI *this, CGColorSpace *a2, double *a3, CMatrix *a4)
{
  Type = CGColorSpaceGetType();
  if ((atomic_load_explicit(&qword_1ED7C45A8, memory_order_acquire) & 1) == 0)
  {
    CI::get_colorspace_gamma_and_matrix();
  }

  if ((atomic_load_explicit(&qword_1ED7C45B8, memory_order_acquire) & 1) == 0)
  {
    CI::get_colorspace_gamma_and_matrix();
  }

  CMatrix::CMatrix(v80, 3u, 1u, 1.0, v7, v8, 0x3FF0000000000000, 0x3FF0000000000000);
  CMatrix::CMatrix(v79, 3u, 1u, 0.222488, v10, v11, 0x3FE6F09FA54C5543, 0x3FAF07FFA8C22B89);
  CMatrix::identityMatrix(3, v78);
  CMatrix::CMatrix(v77, 3u, 3u, 0.436066, v12, v13, 0x3FCC7A7C9DE05037, 0x3F8C7FFDE7210BE9, 0x3FD8A63F9A49C2C2, 0x3FE6F09FA54C5543, 0x3FB8D9FFBB36A253, 0x3FC24FFC9795B35BLL, 0x3FAF07FFA8C22B89, 0x3FE6D9DFDAC68A93);
  if (qword_1ED7C45A0 == this || qword_1ED7C45B0 == this)
  {
    CMatrix::operator=(a3, v78);
    *a2 = 0x3FF0000000000000;
    return 1;
  }

  v16 = 0;
  if (Type <= 2)
  {
    if (!Type)
    {
LABEL_28:
      v61 = v79;
      goto LABEL_29;
    }

    if (Type != 1)
    {
      return v16;
    }

LABEL_27:
    v61 = v78;
LABEL_29:
    CMatrix::operator=(a3, v61);
    *a2 = 0xBFF0000000000000;
    return 1;
  }

  switch(Type)
  {
    case 3:
      v96 = 0;
      memset(v95, 0, sizeof(v95));
      CGColorSpaceGetCalibratedGrayData();
      *a2 = v96;
      CMatrix::operator=(a3, v79);
      return 1;
    case 6:
      if ((atomic_load_explicit(&qword_1ED7C45C8, memory_order_acquire) & 1) == 0)
      {
        CI::get_colorspace_gamma_and_matrix();
      }

      if ((atomic_load_explicit(&qword_1ED7C45D8, memory_order_acquire) & 1) == 0)
      {
        CI::get_colorspace_gamma_and_matrix();
      }

      if ((atomic_load_explicit(&qword_1ED7C45E8, memory_order_acquire) & 1) == 0)
      {
        CI::get_colorspace_gamma_and_matrix();
      }

      if (qword_1ED7C45C0 != this && qword_1ED7C45D0 != this)
      {
        if (qword_1ED7C45E0 != this)
        {
          return 0;
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    case 4:
      v16 = 1;
      CMatrix::CMatrix(v76, 3u, 1u, 0.9642, v14, v15, 0x3FF0000000000000, 0x3FEA6594AF4F0D84);
      v75 = 0u;
      v74 = 0u;
      v73 = 0u;
      v72 = 0u;
      v71 = 0u;
      memset(&v70[26], 0, 64);
      CGColorSpaceGetCalibratedRGBData();
      *a2 = 0;
      CMatrix::CMatrix(v70, 3u, 1u, v70[26], v17, v18, *&v70[27], 0);
      CMatrix::CMatrix(v68, v70);
      CMatrix::CMatrix(v67, v76);
      CMatrix::CMatrix(v95, 3u, 3u, 0.8951, v19, v20, 0x3FD10CB295E9E1B1, 0xBFC4A8C154C985F0, 0xBFE801A36E2EB1C4, 0x3FFB6A7EF9DB22D1, 0x3FA2CA57A786C227, 0x3FA3EAB367A0F909, 0xBFB189374BC6A7F0, 0x3FF0793DD97F62B7);
      CMatrix::CMatrix(v94, 3u, 3u, 0.986993, v21, v22, 0xBFC2D2AA5C5F7C67, 0x3FC479AAE6C8F755, 0x3FDBAAE297396D09, 0x3FE09667B5F1BEF5, 0x3FA93CAB81F969E4, 0xBF8177A7008A697BLL, 0x3FA480841EDE1199, 0x3FEEFDD872F33CA3);
      CMatrix::operator*(v95, v68, v93);
      CMatrix::operator*(v95, v67, v92);
      v81 = CMatrix::operator[](v92, 0);
      v82 = v23;
      v24 = *CMatrixRow::operator[](&v81, 0);
      v69[0] = CMatrix::operator[](v93, 0);
      v69[1] = v25;
      v26 = v24 / *CMatrixRow::operator[](v69, 0);
      v89 = CMatrix::operator[](v92, 1u);
      v90 = v27;
      v28 = *CMatrixRow::operator[](&v89, 0);
      v87 = CMatrix::operator[](v93, 1u);
      v88 = v29;
      *&v30 = v28 / *CMatrixRow::operator[](&v87, 0);
      v85 = CMatrix::operator[](v92, 2u);
      v86 = v31;
      v32 = *CMatrixRow::operator[](&v85, 0);
      v83 = CMatrix::operator[](v93, 2u);
      v84 = v33;
      v34 = CMatrixRow::operator[](&v83, 0);
      CMatrix::diagonalMatrix(3, v26, v91, v30, v32 / *v34);
      CMatrix::operator*(v94, v91, &v81);
      CMatrix::operator*(&v81, v95, v69);
      CMatrix::CMatrix(v94, 3u, 1u, *(&v71 + 1), v35, v36, v72);
      CMatrix::operator*(v69, v94, v95);
      CMatrix::CMatrix(v93, 3u, 1u, *&v73, v37, v38, *(&v73 + 1), v74);
      CMatrix::operator*(v69, v93, v94);
      CMatrix::CMatrix(v92, 3u, 1u, *(&v74 + 1), v39, v40, v75);
      CMatrix::operator*(v69, v92, v93);
      CMatrix::inverse(v77, v92);
      v81 = CMatrix::operator[](v95, 0);
      v82 = v41;
      v42 = *CMatrixRow::operator[](&v81, 0);
      v89 = CMatrix::operator[](v95, 1u);
      v90 = v43;
      v44 = *CMatrixRow::operator[](&v89, 0);
      v87 = CMatrix::operator[](v95, 2u);
      v88 = v45;
      v46 = *CMatrixRow::operator[](&v87, 0);
      v85 = CMatrix::operator[](v94, 0);
      v86 = v47;
      v48 = *CMatrixRow::operator[](&v85, 0);
      v83 = CMatrix::operator[](v94, 1u);
      v84 = v49;
      v50 = *CMatrixRow::operator[](&v83, 0);
      v66[0] = CMatrix::operator[](v94, 2u);
      v66[1] = v51;
      v52 = *CMatrixRow::operator[](v66, 0);
      v65[0] = CMatrix::operator[](v93, 0);
      v65[1] = v53;
      v54 = *CMatrixRow::operator[](v65, 0);
      v64[0] = CMatrix::operator[](v93, 1u);
      v64[1] = v55;
      v56 = *CMatrixRow::operator[](v64, 0);
      v63[0] = CMatrix::operator[](v93, 2u);
      v63[1] = v57;
      v58 = CMatrixRow::operator[](v63, 0);
      CMatrix::CMatrix(v91, 3u, 3u, v42, v59, v60, v44, v46, v48, v50, v52, v54, v56, *v58);
      CMatrix::operator*(v91, v92, &v81);
      CMatrix::operator=(a3, &v81);
      break;
  }

  return v16;
}

uint64_t CI::ColorMatchImage::print_for_graphviz(uint64_t a1, FILE *a2, uint64_t a3, int a4)
{
  v6 = 10;
  if (a4)
  {
    v6 = 32;
  }

  fprintf(a2, "colormatch%c", v6);
  if (*(a1 + 152) == 1)
  {
    fwrite("workingspace", 0xCuLL, 1uLL, a2);
  }

  else
  {
    CI::fprintf_cs(a2, *(a1 + 136), 0);
  }

  if (*(a1 + 154) == 1)
  {
    result = fwrite("_tonemapped", 0xBuLL, 1uLL, a2);
    v8 = *(a1 + 156);
    if (v8 == 1.0)
    {
      result = fwrite("_to_sdr", 7uLL, 1uLL, a2);
    }

    else if (v8 >= 1.0)
    {
      result = fprintf(a2, "_to%.2f", v8);
    }

    if (*(a1 + 160))
    {
      v9 = "_ch";
      v10 = 3;
      goto LABEL_18;
    }
  }

  else
  {
    fwrite("_to_", 4uLL, 1uLL, a2);
    if (*(a1 + 153) == 1)
    {
      v9 = "workingspace";
      v10 = 12;
LABEL_18:

      return fwrite(v9, v10, 1uLL, a2);
    }

    v11 = *(a1 + 144);

    return CI::fprintf_cs(a2, v11, 0);
  }

  return result;
}

float CI::TagColorSpaceImage::headroom(CI::TagColorSpaceImage *this)
{
  v2 = (*(**(this + 15) + 232))(*(this + 15));
  if (v2 > 1.0)
  {
    return v2;
  }

  v3 = *(this + 17);
  if (!v3)
  {
    return v2;
  }

  v4 = 4.9261;
  if (!CGColorSpaceIsPQBased(v3) && !CGColorSpaceIsHLGBased(*(this + 17)))
  {
    return v2;
  }

  return v4;
}

void CI::TagColorSpaceImage::~TagColorSpaceImage(CI::TagColorSpaceImage *this)
{
  CI::TagColorSpaceImage::~TagColorSpaceImage(this);

  JUMPOUT(0x19EAF5590);
}

{
  *this = &unk_1F1035290;
  *(this + 16) = &unk_1F1035418;
  CGColorSpaceRelease(*(this + 17));
  *(this + 16) = &unk_1F1031868;
  *(this + 17) = 0;
  atomic_fetch_add(&dword_1ED7C47BC[28], 0xFFFFFFFF);

  CI::ImageWithChild::~ImageWithChild(this);
}

uint64_t CI::TagColorSpaceImage::print_for_graph_core(CI::TagColorSpaceImage *this, __sFILE *__stream)
{
  fwrite("tagcolorspace ", 0xEuLL, 1uLL, __stream);
  v4 = *(this + 17);

  return CI::fprintf_cs(__stream, v4, 1);
}

uint64_t CI::TagColorSpaceImage::print_for_graphviz(uint64_t a1, FILE *a2, uint64_t a3, int a4)
{
  v6 = 10;
  if (a4)
  {
    v6 = 32;
  }

  fprintf(a2, "tagcolorspace%c", v6);
  v7 = *(a1 + 136);

  return CI::fprintf_cs(a2, v7, 1);
}

uint64_t CI::TagColorSpaceImage::render_graph_core(int a1, int a2, CI::Object *this)
{
  if (this)
  {
    return CI::Object::ref(this);
  }

  else
  {
    return 0;
  }
}

void non-virtual thunk toCI::TagColorSpaceImage::~TagColorSpaceImage(CI::TagColorSpaceImage *this)
{
  CI::TagColorSpaceImage::~TagColorSpaceImage((this - 128));
}

{
  CI::TagColorSpaceImage::~TagColorSpaceImage((this - 128));

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::ColorMatchImage::add_args_to_hash(uint64_t a1, CI::XXHashHelper *this)
{
  CI::XXHashHelper::add(this, *(a1 + 136));
  CI::XXHashHelper::add(this, *(a1 + 144));
  __src = *(a1 + 152);
  XXH64_update(this, &__src, 4uLL);
  v6 = *(a1 + 153);
  return XXH64_update(this, &v6, 4uLL);
}

uint64_t CI::ColorMatchImage::baseColorspace(CI::ColorMatchImage *this)
{
  if (*(this + 154))
  {
    return 0;
  }

  else
  {
    return (*(*this + 248))();
  }
}

uint64_t ___ZN2CIL19AppendColorSpaceSrcEPNS_7ContextEPNS_4NodeENS_10ImageIndexEP12CGColorSpacebfbfb_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*a2 + 40))(a2) == 1 && ((*(*a2 + 264))(a2, 3))
  {
    return 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = (*(*a2 + 416))(a2);
  return 1;
}

CI::Object *CI::CurveNode::append_to_tree_and_unref(CI::CurveNode *this, CI::Node *a2, double a3)
{
  v4 = CI::CurveNode::append_to_tree(this, a2, a3, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0);
  if (this)
  {
    CI::Object::unref(this);
  }

  return v4;
}

CI::ColorMatrixNode *CI::AppendConverterArray(int a1, CI::ColorMatrixNode *a2, int a3, CFArrayRef theArray, int a5, double (*a6)[4])
{
  v81 = *MEMORY[0x1E69E9840];
  if (CFArrayGetCount(theArray) && CFArrayGetCount(theArray) >= 1)
  {
    v10 = 0;
    v69 = a5;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
      Properties = CGColorFunctionGetProperties();
      v13 = CFGetTypeID(ValueAtIndex);
      if (v13 == CGColorTRCGetTypeID())
      {
        break;
      }

      v21 = CFGetTypeID(ValueAtIndex);
      if (v21 == CGColorMatrixGetTypeID())
      {
        v79 = 0u;
        v80 = 0u;
        *buf = 0u;
        CGColorMatrixGetMatrix();
        v22 = *&buf[12];
        v23 = *(&v79 + 3);
        v24 = *(&v80 + 3);
        if (*&buf[12] == 0.0 && *(&v79 + 3) == 0.0 && *(&v80 + 3) == 0.0)
        {
          v25 = 0;
          *&v71 = 0;
          v26 = buf;
          v27 = v70;
          memset(v70, 0, sizeof(v70));
          do
          {
            for (i = 0; i != 3; ++i)
            {
              *(v27 + i) = *&v26[4 * i];
            }

            ++v25;
            v26 += 16;
            v27 = (v27 + 24);
          }

          while (v25 != 3);
          if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(&v70[1] + 8)), vceqzq_f64(*(&v70[2] + 8)))))) & 1) == 0 && *(&v70[3] + 1) == 0.0 && *&v71 == 0.0)
          {
            v29 = 3;
            for (j = 1; j != 3; ++j)
            {
              v31 = v70;
              v32 = 3;
              do
              {
                v31[v29] = *v31;
                ++v31;
                --v32;
              }

              while (v32);
              v29 += 3;
            }
          }

          v33 = CI::ColorMatrixNode::append_to_tree(a2, v70, a6, 1);
        }

        else
        {
          v35 = 0;
          v76 = 0u;
          v77 = 0u;
          v73 = 0u;
          v74 = 0;
          v71 = 0u;
          v72 = 0u;
          memset(v70, 0, sizeof(v70));
          v36 = buf;
          v37 = v70;
          v75 = 0x3FF0000000000000;
          do
          {
            for (k = 0; k != 3; ++k)
            {
              v37[k] = *&v36[4 * k];
            }

            ++v35;
            v36 += 16;
            v37 += 4;
          }

          while (v35 != 3);
          *&v76 = v22;
          *(&v76 + 1) = v23;
          *&v77 = v24;
          v33 = CI::ColorMatrixNode::append_to_tree(a2, v70, a6, 1);
        }

        v39 = v33;
        if (a2)
        {
          CI::Object::unref(a2);
        }

        a2 = v39;
      }

      else
      {
        v34 = CFGetTypeID(ValueAtIndex);
        if (v34 == CGColorNxMTransformGetTypeID())
        {
          memset(v70, 0, 36);
          CGColorNxMTransformGetTransform();
          if (SLODWORD(v70[0]) > 8)
          {
            if (LODWORD(v70[0]) == 9)
            {
              CI::PremultiplyNode::append_to_tree(a2, 0xFFFFFFFFLL, a6);
              if (a2)
              {
                CI::Object::unref(a2);
              }

              operator new();
            }

            if (LODWORD(v70[0]) == 11)
            {
              CI::PremultiplyNode::append_to_tree(a2, 0xFFFFFFFFLL, a6);
              if (a2)
              {
                CI::Object::unref(a2);
              }

              CGColorFunctionGetOutputRange();
              operator new();
            }
          }

          else
          {
            if (LODWORD(v70[0]) == 7)
            {
              CI::PremultiplyNode::append_to_tree(a2, 0xFFFFFFFFLL, a6);
              if (a2)
              {
                CI::Object::unref(a2);
              }

              operator new();
            }

            if (LODWORD(v70[0]) == 8)
            {
              CI::PremultiplyNode::append_to_tree(a2, 0xFFFFFFFFLL, a6);
              if (a2)
              {
                CI::Object::unref(a2);
              }

              operator new();
            }
          }

          if ((v70[0] & 0xFFFFFFFB) == 1)
          {
            if (HIDWORD(v70[0]) == 1)
            {
              v51 = 2;
            }

            else
            {
              v51 = 8;
            }

            if (SDWORD1(v70[0]) >= 1)
            {
              v52 = DWORD1(v70[0]);
              do
              {
                v51 *= SDWORD1(v70[1]);
                --v52;
              }

              while (v52);
            }

            if (DWORD1(v70[1]))
            {
              v53 = *(&v70[1] + 12);
              if (DWORD1(v70[1]) == 2 && DWORD1(v70[0]) == 3 && HIDWORD(v70[0]) == 3)
              {
                if (memcmp(*(&v70[1] + 12), &unk_19CF2D03C, 0x40uLL))
                {
                  goto LABEL_147;
                }
              }

              else
              {
                v65 = DWORD1(v70[1]) == 2 && DWORD1(v70[0]) == 1;
                v66 = v65;
                if (v65 && HIDWORD(v70[0]) == 3)
                {
                  if (**(&v70[1] + 12) != 0x3C00000000000000 || *(*(&v70[1] + 12) + 8) != 0x3C003C003C003C00)
                  {
                    goto LABEL_147;
                  }
                }

                else
                {
                  if (HIDWORD(v70[0]) != 1)
                  {
                    v66 = 0;
                  }

                  if (v66 != 1 || **(&v70[1] + 12) != 1006632960)
                  {
LABEL_147:
                    CI::calc_hash(v53, v51);
                    CI::PremultiplyNode::append_to_tree(a2, 0xFFFFFFFFLL, a6);
                    if (a2)
                    {
                      CI::Object::unref(a2);
                    }

                    operator new();
                  }
                }
              }
            }

            a5 = v69;
          }

          else
          {
            v64 = ci_logger_render();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *&buf[4] = v70[0];
              _os_log_error_impl(&dword_19CC36000, v64, OS_LOG_TYPE_ERROR, "Could not support CGColorNxMTransform format %d.", buf, 8u);
            }
          }
        }
      }

LABEL_88:
      if (++v10 >= CFArrayGetCount(theArray))
      {
        return a2;
      }
    }

    memset(v70, 0, 36);
    CGColorTRCGetFunction();
    v14 = v70[0];
    v15 = *(v70 + 4);
    v16 = *(v70 + 3);
    v17 = v70[1];
    v18 = CGColorTRCGetGammaID();
    v19 = CI::PremultiplyNode::append_to_tree(a2, 0xFFFFFFFFLL, a6);
    if (a2)
    {
      CI::Object::unref(a2);
    }

    if (v14 > 4)
    {
      if (v14 <= 7)
      {
        if (v14 != 5)
        {
          if (v14 != 6)
          {
            operator new();
          }

          operator new();
        }

        if (*(v70 + 4) >= 2uLL)
        {
          CI::calc_hash(*(v70 + 12), 4 * *(v70 + 4));
          operator new();
        }

        goto LABEL_87;
      }

      switch(v14)
      {
        case 8:
          operator new();
        case 9:
          operator new();
        case 10:
          goto LABEL_57;
      }

      goto LABEL_55;
    }

    if (v14 <= 1)
    {
      if (v14 == -1)
      {
        v44 = CI::CurveNode::append_to_tree(v19, a6, *&v15, *(&v15 + 1), v16, *&v17, *(&v17 + 1), *(&v17 + 2), 0.0);
        if (v19)
        {
          CI::Object::unref(v19);
        }

        v45 = *(&v17 + 3);
        v46 = v44;
      }

      else
      {
        if (v14)
        {
          if (v14 == 1)
          {
            v20 = CI::CurveNode::append_to_tree_and_unref(v19, a6, *&v15, *(&v15 + 1), v16);
LABEL_77:
            v43 = v20;
LABEL_78:
            if ((Properties & 2) != 0 && a5 && (CGColorFunctionGetOutputRange(), fabsf(v48) < 1.0e-10) && (CGColorFunctionGetOutputRange(), fabs(v49 + -1.0) < 1.0e-10))
            {
              v50 = CI::ClampToZeroToOneNode::append_to_tree(v43, a6);
              if (v43)
              {
                CI::Object::unref(v43);
              }
            }

            else
            {
              v50 = v43;
            }

            v19 = CI::PremultiplyNode::append_to_tree(v50, 1, a6);
            if (v50)
            {
              CI::Object::unref(v50);
            }

LABEL_87:
            a2 = v19;
            goto LABEL_88;
          }

LABEL_55:
          v42 = ci_logger_render();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v14;
            _os_log_error_impl(&dword_19CC36000, v42, OS_LOG_TYPE_ERROR, "Could not support CGColorTRCType type: %d", buf, 8u);
          }

LABEL_57:
          v43 = v19;
          goto LABEL_78;
        }

        v45 = *&v15;
        v46 = v19;
      }

      v20 = CI::CurveNode::append_to_tree_and_unref(v46, a6, v45);
      goto LABEL_77;
    }

    if (v14 == 2)
    {
      v20 = CI::CurveNode::append_to_tree_and_unref(v19, a6, *&v15, *(&v15 + 1), v16, *&v17);
      goto LABEL_77;
    }

    if (v14 == 3)
    {
      if (v18 != 1)
      {
        v60 = *(&v15 + 1);
        v61 = v16;
        v62 = *&v17;
        v63 = *(&v17 + 1);
        if (fabs(*&v15 + -2.4) >= 0.00001 || fabs(v60 + -0.947867) >= 0.00001 || fabs(v61 + -0.0521327) >= 0.00001 || fabs(v62 + -0.0773994) >= 0.00001 || fabs(v63 + -0.04045) >= 0.00001)
        {
          v20 = CI::CurveNode::append_to_tree_and_unref(v19, a6, *&v15, v60, v61, v62, v63);
          goto LABEL_77;
        }
      }

      v40 = v19;
      v41 = 0xFFFFFFFFLL;
    }

    else
    {
      if (v18 != 4)
      {
        v54 = *(&v15 + 1);
        v55 = v16;
        v56 = *&v17;
        v57 = *(&v17 + 1);
        v58 = *(&v17 + 2);
        v59 = *(&v17 + 3);
        if (fabs(*&v15 + -0.4166667) >= 0.00001 || fabs(v54 + -1.137119) >= 0.00001 || fabs(v55) >= 0.00001 || fabs(v56 + -12.92) >= 0.00001 || fabs(v57 + -0.0031308) >= 0.00001 || fabs(v58 + 0.055) >= 0.00001 || fabs(v59) >= 0.00001)
        {
          v47 = CI::CurveNode::append_to_tree(v19, a6, *&v15, v54, v55, v56, v57, v58, v59);
LABEL_117:
          v43 = v47;
          if (v19)
          {
            CI::Object::unref(v19);
          }

          goto LABEL_78;
        }
      }

      v40 = v19;
      v41 = 1;
    }

    v47 = CI::SRGBNode::append_to_tree(v40, v41, a6);
    goto LABEL_117;
  }

  return a2;
}

__CFArray *CI::createConverterArray(CI *this, CGColorSpace *a2, CGColorSpace *a3, float a4, float a5, float a6)
{
  v7 = a3;
  v48 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  CGColorSpaceGetNumberOfComponents(a2);
  CGColorSpaceGetNumberOfComponents(this);
  v13 = 0;
  v39 = *MEMORY[0x1E695F070];
  v38 = *MEMORY[0x1E695F240];
  if (a6 > 0.0)
  {
    v14 = v7;
  }

  else
  {
    v14 = 0;
  }

  v37 = v14;
  v36 = llroundf(a6 * 203.0);
  v35 = *MEMORY[0x1E695F1F0];
  v15 = -1;
  v33 = *MEMORY[0x1E695F1F8];
  v34 = *MEMORY[0x1E695F1E8];
  do
  {
    CFArrayRemoveAllValues(Mutable);
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2000000000;
    v41 = 0;
    v16 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v18 = v16;
    if (v16)
    {
      CFDictionarySetValue(v16, @"Client", @"CoreImage");
    }

    if (a4 == 0.0)
    {
      v22 = 203.0;
    }

    else
    {
      __CFDictionary::setValue(v18, @"kCGHLGInvOETFOpticalScale", v17, a4);
      __CFDictionary::setValue(v18, @"kCGHLGOETFOpticalScale", v19, 1.0 / a4);
      __CFDictionary::setValue(v18, @"kCGHLGSkipOOTF", 1, v20);
      __CFDictionary::setValue(v18, @"kCGHLGSkipInvOOTF", 1, v21);
      v22 = 100.0;
    }

    __CFDictionary::setValue(v18, @"kCGHDRMediaReferenceWhite", v17, v22);
    if (this)
    {
      v24 = CGColorSpaceContainsFlexGTCInfo();
      if (a5 >= 1.0)
      {
        if (v24)
        {
          __CFDictionary::setValue(v18, v39, 1, v23);
          __CFDictionary::setValue(v18, v38, v25, a5);
          if (v37)
          {
            __CFDictionary::setValue(v18, v35, v36);
            __CFDictionary::setValue(v18, v34, v26, 1.0);
            __CFDictionary::setValue(v18, v33, v27, 0.0);
          }
        }
      }
    }

    __CFDictionary::setValue(v18, @"kCGPQEETF3DLut", 0, v23);
    __CFDictionary::setValue(v18, @"kCGHLGSceneMapping3DLut", 0, v28);
    v29 = CGColorConversionInfoIterateColorSpaceFunctionsWithCallbacksAndOptions();
    CFRelease(v18);
    if (v13 == 8 && (v29 & 1) == 0)
    {
      CI::snprintf_cs(v47, 0x100, this, 0);
      CI::snprintf_cs(v46, 0x100, a2, 0);
      v30 = ci_logger_render();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v43 = v47;
        v44 = 2082;
        v45 = v46;
        _os_log_error_impl(&dword_19CC36000, v30, OS_LOG_TYPE_ERROR, "Failed to create a ColorSync converter: from %{public}s to %{public}s", buf, 0x16u);
      }
    }

    _Block_object_dispose(v40, 8);
    if (v13 == 8)
    {
      v31 = 1;
    }

    else
    {
      v31 = v29;
    }

    v13 += 4;
    ++v15;
  }

  while (v31 != 1);
  return Mutable;
}

const char *___ZN2CIL15CI_EXTENDED_PCSEv_block_invoke()
{
  result = getenv("CI_EXTENDED_PCS");
  if (result)
  {
    result = atoi(result);
    v1 = result != 0;
  }

  else
  {
    v1 = CI::CI_EXTENDED_PCS(void)::v;
  }

  CI::CI_EXTENDED_PCS(void)::v = v1 & 1;
  return result;
}

void __CFDictionary::setValue(__CFDictionary *this, __CFDictionary *a2, const __CFString *a3, float a4)
{
  valuePtr = a4;
  v6 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  __CFDictionary::setValue(this, a2, v6, v7);
  if (v6)
  {
    CFRelease(v6);
  }
}

void __CFDictionary::setValue(__CFDictionary *this, __CFDictionary *a2, __CFString *a3)
{
  v5 = __CFNumber::number(a3);
  __CFDictionary::setValue(this, a2, v5, v6);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __CFDictionary::setValue(__CFDictionary *this, __CFDictionary *a2, const __CFString *a3, double a4)
{
  valuePtr = a4;
  v6 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  __CFDictionary::setValue(this, a2, v6, v7);
  if (v6)
  {
    CFRelease(v6);
  }
}

BOOL ___ZN2CIL20createConverterArrayEP12CGColorSpaceS1_ffbf_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  if (*(a2 + 28) >= 1)
  {
    v3 = 0;
    do
    {
      CGColorTRCGetFunction();
      ++v3;
    }

    while (*(a2 + 28) > v3);
  }

  if (*(a2 + 44) < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      CGColorNxMTransformGetTransform();
      ++v5;
      ++v4;
    }

    while (*(a2 + 44) > v4);
  }

  return v5 < 2 && v5 < 3;
}

uint64_t ___ZN2CIL20createConverterArrayEP12CGColorSpaceS1_ffbf_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  if (a4 < 2)
  {
LABEL_5:
    v10 = *(*(a2 + 52) + 8 * v6);
    CGColorTRCGetFunction();
    CFArrayAppendValue(*(a1 + 32), v10);
    return 1;
  }

  else
  {
    v7 = a4 - 1;
    v8 = a5 + 1;
    while (1)
    {
      v9 = *v8++;
      if (v9 != v6)
      {
        return 0;
      }

      if (!--v7)
      {
        goto LABEL_5;
      }
    }
  }
}

CFNumberRef __CFNumber::number(__CFNumber *this)
{
  if ((this & 0x80000000) != 0)
  {
    valuePtr = this;
    p_valuePtr = &valuePtr;
    v2 = kCFNumberSInt64Type;
  }

  else
  {
    v4 = this;
    p_valuePtr = &v4;
    v2 = kCFNumberSInt32Type;
  }

  return CFNumberCreate(0, v2, p_valuePtr);
}

CI::Object *CI::CurveNode::append_to_tree_and_unref(CI::CurveNode *this, CI::Node *a2, double a3, double a4, double a5)
{
  if (a5 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = -a5 / a4;
  }

  v7 = CI::CurveNode::append_to_tree(this, a2, a3, a4, a5, 0.0, v6, 0.0, 0.0);
  if (this)
  {
    CI::Object::unref(this);
  }

  return v7;
}

CI::Object *CI::CurveNode::append_to_tree_and_unref(CI::CurveNode *this, CI::Node *a2, double a3, double a4, double a5, double a6)
{
  if (a5 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = -a5 / a4;
  }

  v8 = CI::CurveNode::append_to_tree(this, a2, a3, a4, a5, 0.0, v7, a6, a6);
  if (this)
  {
    CI::Object::unref(this);
  }

  return v8;
}

CI::Object *CI::CurveNode::append_to_tree_and_unref(CI::CurveNode *this, CI::Node *a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = CI::CurveNode::append_to_tree(this, a2, a3, a4, a5, a6, a7, 0.0, 0.0);
  if (this)
  {
    CI::Object::unref(this);
  }

  return v8;
}

unint64_t CI::calc_hash(CI *this, size_t a2)
{
  XXH64_reset(v5, 0);
  if (this && a2)
  {
    XXH64_update(v5, this, a2);
  }

  return XXH64_digest(v5);
}

vImage_Error ___ZN2CIL20AppendConverterArrayEPNS_7ContextEPNS_4NodeENS_10ImageIndexEPK9__CFArrayNS_18ConverterDirectionEbb_block_invoke(vImage_Error result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = result;
    v6 = 0;
    v7 = (a2 + 4);
    v9 = vdupq_n_s64(1uLL);
    do
    {
      v13 = *(*(v5 + 32) + 4 * *(v5 + 40) * v6);
      v12 = 0;
      dest.rowBytes = 2;
      src.data = &v13;
      *&src.height = v9;
      src.rowBytes = 4;
      dest.data = &v12;
      *&dest.height = v9;
      result = vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
      v8 = v12;
      *v7 = v12;
      *(v7 - 1) = v8;
      *(v7 - 2) = v8;
      v7[1] = 15360;
      ++v6;
      v7 += 4;
    }

    while (a4 != v6);
  }

  return result;
}

CI::SerialObjectPtrArray *CI::SerialObjectPtrArray::SerialObjectPtrArray(CI::SerialObjectPtrArray *this, CI::Object *a2, CI::Object *a3)
{
  *this = 0;
  *(this + 2) = 0u;
  v5 = (this + 32);
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  *(this + 4) = 0x20000000ALL;
  *(this + 2) = 0;
  *(this + 3) = a2;
  if (a2)
  {
    CI::Object::ref(a2);
  }

  *v5 = a3;
  if (a3)
  {
    CI::Object::ref(a3);
  }

  *this = 2;
  return this;
}

uint64_t ___ZN2CIL20AppendConverterArrayEPNS_7ContextEPNS_4NodeENS_10ImageIndexEPK9__CFArrayNS_18ConverterDirectionEbb_block_invoke_111(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = (*(result + 32) + 36);
    v5 = (a2 + 4);
    do
    {
      v6 = *v4++;
      _S1 = v6;
      __asm { FCVT            H1, S1 }

      *v5 = _S1;
      *(v5 - 1) = _S1;
      *(v5 - 2) = _S1;
      v5[1] = COERCE_UNSIGNED_INT(1.0);
      v5 += 4;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t ___ZN2CIL20AppendConverterArrayEPNS_7ContextEPNS_4NodeENS_10ImageIndexEPK9__CFArrayNS_18ConverterDirectionEbb_block_invoke_118(uint64_t result, int16x4_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    v6 = 0;
    v7 = *(result + 32);
    v8 = *(result + 40);
    v9 = *(result + 48);
    do
    {
      if (v9 == 3)
      {
        if (v8)
        {
          for (i = 0; i != v8; ++i)
          {
            a2->i16[i] = v7[i];
          }
        }
      }

      else
      {
        v11 = v7;
        v12 = a4;
        for (j = a2; v12; --v12)
        {
          v14.i16[1] = 15360;
          v14.i32[1] = 1006648320;
          v14.i16[0] = *v11++;
          v15 = vzip1_s16(v14, v14);
          v15.i16[2] = v14.i16[0];
          *j++ = v15;
        }
      }

      ++v6;
      a2 = (a2 + a6);
      v7 += v8;
    }

    while (v6 != a5);
  }

  return result;
}

void CI::CachedSurfaceNode::~CachedSurfaceNode(CI::CachedSurfaceNode *this)
{
  CI::SurfaceNode::~SurfaceNode(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::Node::print(CI::Node *this, __sFILE *a2)
{
  memset(v3, 0, sizeof(v3));
  v4 = 1065353216;
  CI::Node::print_graph(this, a2, v3);
  return std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::~__hash_table(v3);
}

uint64_t CI::Node::node_for_graphviz(uint64_t a1, uint64_t a2)
{
  *v20 = 0u;
  memset(v21, 0, 20);
  *v18 = 0u;
  v19 = 0u;
  *v17 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  std::vector<std::pair<CGRect,unsigned long>>::vector[abi:nn200100](v6, v17);
  std::vector<std::pair<CGRect,unsigned long>>::vector[abi:nn200100](v7, &v18[1]);
  __p = 0;
  __dst = 0;
  v10 = 0;
  if (v20[1] != v20[0])
  {
    std::vector<CGRect>::__vallocate[abi:nn200100](&__p, (v20[1] - v20[0]) >> 5);
  }

  v16 = v26;
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v11 = *&v21[8];
  v12 = v22;
  v4 = (*(*a1 + 152))(a1, a2, v6);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  if (v18[1])
  {
    *&v19 = v18[1];
    operator delete(v18[1]);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }

  return v4;
}

const char *CI::Node::short_name(CI::Node *this)
{
  v1 = (*(*this + 16))(this);

  return CI::name_for_type(v1);
}

uint64_t CI::Node::print_for_graph_short(CI::Node *this, __sFILE *a2)
{
  v3 = (*(*this + 104))(this);

  return fputs(v3, a2);
}

uint64_t CI::Node::print_for_graph_core(CI::Node *this, __sFILE *a2)
{
  memset(v3, 0, sizeof(v3));
  v4 = 1065353216;
  (*(*this + 120))(this, a2, v3, 1);
  return std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v3);
}

_DWORD *CI::SurfaceNode::extent(_DWORD *this)
{
  if (!this[25])
  {
    return (*(*this + 176))(this);
  }

  return this;
}

size_t CI::SurfaceNode::plane_count(IOSurfaceRef *this)
{
  if (IOSurfaceGetPlaneCount(this[7]) < 2)
  {
    return 1;
  }

  else
  {
    return IOSurfaceGetPlaneCount(this[7]);
  }
}

uint64_t CI::Node::is_rgb_invariant(CI::Node *this)
{
  if ((*(*this + 232))(this))
  {
    return 1;
  }

  v3 = *(*this + 240);

  return v3(this);
}

uint64_t CI::SurfaceNode::output_is_rg(CI **this, __IOSurface *a2)
{
  v2 = CI::format_from_IOSurface(this[7], a2);

  return CI::format_is_rg(v2);
}

uint64_t CI::SurfaceNode::output_is_r(CI **this, __IOSurface *a2)
{
  v2 = CI::format_from_IOSurface(this[7], a2);

  return CI::format_is_r(v2);
}

uint64_t CI::SurfaceNode::output_is_luma(CI **this, __IOSurface *a2)
{
  v3 = CI::format_from_IOSurface(this[7], a2);
  result = CI::format_is_luminance(v3);
  if (result)
  {
    v5 = *(*this + 35);

    return v5(this);
  }

  return result;
}

uint64_t CI::SurfaceNode::output_depth(CI **this, __IOSurface *a2)
{
  v2 = CI::format_from_IOSurface(this[7], a2);
  if (CI::format_is_deep(v2))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t CI::SurfaceNode::output_is_packed(CI **this, __IOSurface *a2)
{
  v2 = CI::format_from_IOSurface(this[7], a2);

  return CI::format_is_packed(v2);
}

void non-virtual thunk toCI::CachedSurfaceNode::~CachedSurfaceNode(CI::CachedSurfaceNode *this)
{
  CI::SurfaceNode::~SurfaceNode((this - 40));
}

{
  CI::SurfaceNode::~SurfaceNode((this - 40));

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::Node::print_graph(uint64_t a1, FILE *a2, uint64_t a3)
{
  v30[128] = *MEMORY[0x1E69E9840];
  if (CI::print_graph_recursive<CI::Node,CI::NodeIndex,CI::Node::NodeStats>(__sFILE *,CI::Node const*,int,std::unordered_map<CI::NodeIndex,CI::Node::NodeStats> const&)::onceToken == -1)
  {
    if (a1)
    {
LABEL_3:
      v17 = 0;
      v18 = &v17;
      v19 = 0x5002000000;
      v20 = __Block_byref_object_copy__22;
      v21 = __Block_byref_object_dispose__22;
      memset(v22, 0, sizeof(v22));
      v23 = 1065353216;
      v10 = 0;
      v11 = &v10;
      v12 = 0x5002000000;
      v13 = __Block_byref_object_copy__125;
      v14 = __Block_byref_object_dispose__126;
      memset(v15, 0, sizeof(v15));
      v16 = 1065353216;
      std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::__rehash<true>(v22, 0x80uLL);
      std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::__rehash<true>((v11 + 10), vcvtps_u32_f32(128.0 / v11[18]));
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 0x40000000;
      v9[2] = ___ZN2CIL21print_graph_recursiveINS_4NodeENS_9NodeIndexENS1_9NodeStatsEEEvP7__sFILEPKT_iRKNSt3__113unordered_mapIT0_T1_NS9_4hashISB_EENS9_8equal_toISB_EENS9_9allocatorINS9_4pairIKSB_SC_EEEEEE_block_invoke_127;
      v9[3] = &unk_1E75C5A68;
      v9[4] = &v17;
      v9[5] = &v10;
      v25 = MEMORY[0x1E69E9820];
      v26 = 0x40000000;
      v27 = ___ZNK2CI4Node27traverse_preorder_stoppableEU13block_pointerFbPKS0_S2_iiE_block_invoke;
      v28 = &unk_1E75C5AB8;
      v29 = v9;
      CI::GraphObject::traverse_preorder_stoppable(a1, 0, 0, 0, &v25);
      std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::clear(v18 + 5);
      v25 = 0;
      v26 = &v25;
      v27 = 0x42802000000;
      v28 = __Block_byref_object_copy__130;
      v29 = __Block_byref_object_dispose__131;
      bzero(v30, 0x400uLL);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 0x40000000;
      v7[2] = ___ZN2CIL21print_graph_recursiveINS_4NodeENS_9NodeIndexENS1_9NodeStatsEEEvP7__sFILEPKT_iRKNSt3__113unordered_mapIT0_T1_NS9_4hashISB_EENS9_8equal_toISB_EENS9_9allocatorINS9_4pairIKSB_SC_EEEEEE_block_invoke_132;
      v7[3] = &unk_1E75C5A90;
      v8 = 1;
      v7[4] = &v25;
      v7[5] = &v17;
      v7[6] = &v10;
      v7[7] = a2;
      v7[8] = a3;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 0x40000000;
      v24[2] = ___ZNK2CI4Node27traverse_preorder_stoppableEU13block_pointerFbPKS0_S2_iiE_block_invoke;
      v24[3] = &unk_1E75C5AB8;
      v24[4] = v7;
      CI::GraphObject::traverse_preorder_stoppable(a1, 0, 0, 0, v24);
      _Block_object_dispose(&v25, 8);
      _Block_object_dispose(&v10, 8);
      std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v15);
      _Block_object_dispose(&v17, 8);
      return std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v22);
    }
  }

  else
  {
    CI::Node::print_graph();
    if (a1)
    {
      goto LABEL_3;
    }
  }

  return fprintf(a2, "%.*sNULL\n", 2, CI::print_graph_recursive<CI::Node,CI::NodeIndex,CI::Node::NodeStats>(__sFILE *,CI::Node const*,int,std::unordered_map<CI::NodeIndex,CI::Node::NodeStats> const&)::indent_str);
}

void *___ZN2CIL21print_graph_recursiveINS_4NodeENS_9NodeIndexENS1_9NodeStatsEEEvP7__sFILEPKT_iRKNSt3__113unordered_mapIT0_T1_NS9_4hashISB_EENS9_8equal_toISB_EENS9_9allocatorINS9_4pairIKSB_SC_EEEEEE_block_invoke()
{
  result = memset(CI::print_graph_recursive<CI::Node,CI::NodeIndex,CI::Node::NodeStats>(__sFILE *,CI::Node const*,int,std::unordered_map<CI::NodeIndex,CI::Node::NodeStats> const&)::indent_str, 32, sizeof(CI::print_graph_recursive<CI::Node,CI::NodeIndex,CI::Node::NodeStats>(__sFILE *,CI::Node const*,int,std::unordered_map<CI::NodeIndex,CI::Node::NodeStats> const&)::indent_str));
  byte_1EB00E9B8 = 0;
  return result;
}

BOOL ___ZN2CIL21print_graph_recursiveINS_4NodeENS_9NodeIndexENS1_9NodeStatsEEEvP7__sFILEPKT_iRKNSt3__113unordered_mapIT0_T1_NS9_4hashISB_EENS9_8equal_toISB_EENS9_9allocatorINS9_4pairIKSB_SC_EEEEEE_block_invoke_127(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v3 = std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::find<CI::Image const*>((*(*(a1 + 32) + 8) + 40), &v5);
  if (v3)
  {
    std::__hash_table<std::__hash_value_type<CI::Node const*,unsigned long>,std::__unordered_map_hasher<CI::Node const*,std::__hash_value_type<CI::Node const*,unsigned long>,std::hash<CI::Node const*>,std::equal_to<CI::Node const*>,true>,std::__unordered_map_equal<CI::Node const*,std::__hash_value_type<CI::Node const*,unsigned long>,std::equal_to<CI::Node const*>,std::hash<CI::Node const*>,true>,std::allocator<std::__hash_value_type<CI::Node const*,unsigned long>>>::__emplace_unique_key_args<CI::Node const*,CI::Node const*&,unsigned long>((*(*(a1 + 40) + 8) + 40), &v5);
  }

  else
  {
    std::__hash_table<CI::Node const*,std::hash<CI::Node const*>,std::equal_to<CI::Node const*>,std::allocator<CI::Node const*>>::__emplace_unique_key_args<CI::Node const*,CI::Node const* const&>((*(*(a1 + 32) + 8) + 40), &v5);
  }

  return v3 != 0;
}

BOOL ___ZN2CIL21print_graph_recursiveINS_4NodeENS_9NodeIndexENS1_9NodeStatsEEEvP7__sFILEPKT_iRKNSt3__113unordered_mapIT0_T1_NS9_4hashISB_EENS9_8equal_toISB_EENS9_9allocatorINS9_4pairIKSB_SC_EEEEEE_block_invoke_132(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v37 = a2;
  fprintf(*(a1 + 56), "%.*s", 2 * *(a1 + 72), CI::print_graph_recursive<CI::Node,CI::NodeIndex,CI::Node::NodeStats>(__sFILE *,CI::Node const*,int,std::unordered_map<CI::NodeIndex,CI::Node::NodeStats> const&)::indent_str);
  if (a4 <= 0x3FF)
  {
    *(*(*(a1 + 32) + 8) + a4 + 40) = (*(*a2 + 40))(a2);
  }

  if (a4 >= 1)
  {
    v9 = 0;
    do
    {
      if (v9 <= 0x3FF && (v10 = *(*(*(a1 + 32) + 8) + v9 + 40), v11 = v10 != 0, v12 = v10 - 1, v12 != 0 && v11))
      {
        v13 = v9 + 1;
        v14 = *(a1 + 56);
        if (v9 + 1 == a4 && v12 == a5)
        {
          fwrite("╰─", 6uLL, 1uLL, v14);
          *(*(*(a1 + 32) + 8) + v9 + 40) = 0;
        }

        else
        {
          if (v13 == a4)
          {
            v15 = "├─";
            v16 = 6;
          }

          else
          {
            v15 = "│ ";
            v16 = 4;
          }

          fwrite(v15, v16, 1uLL, v14);
        }
      }

      else
      {
        fwrite("  ", 2uLL, 1uLL, *(a1 + 56));
        v13 = v9 + 1;
      }

      v9 = v13;
    }

    while (v13 != a4);
  }

  v17 = std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::find<CI::Image const*>((*(*(a1 + 40) + 8) + 40), &v37);
  if (v17)
  {
    v18 = *(a1 + 56);
    v19 = *(*(a1 + 48) + 8);
    v27[0] = &v37;
    v20 = std::__hash_table<std::__hash_value_type<CI::Node const*,unsigned long>,std::__unordered_map_hasher<CI::Node const*,std::__hash_value_type<CI::Node const*,unsigned long>,std::hash<CI::Node const*>,std::equal_to<CI::Node const*>,true>,std::__unordered_map_equal<CI::Node const*,std::__hash_value_type<CI::Node const*,unsigned long>,std::equal_to<CI::Node const*>,std::hash<CI::Node const*>,true>,std::allocator<std::__hash_value_type<CI::Node const*,unsigned long>>>::__emplace_unique_key_args<CI::Node const*,std::piecewise_construct_t const&,std::tuple<CI::Node const* const&>,std::tuple<>>((v19 + 40), &v37);
    fprintf(v18, "<%ld>\n", v20[3]);
  }

  else
  {
    v21 = std::__hash_table<std::__hash_value_type<CI::ImageIndex,CI::Image::ImageStats>,std::__unordered_map_hasher<CI::ImageIndex,std::__hash_value_type<CI::ImageIndex,CI::Image::ImageStats>,std::hash<CI::ImageIndex>,std::equal_to<CI::ImageIndex>,true>,std::__unordered_map_equal<CI::ImageIndex,std::__hash_value_type<CI::ImageIndex,CI::Image::ImageStats>,std::equal_to<CI::ImageIndex>,std::hash<CI::ImageIndex>,true>,std::allocator<std::__hash_value_type<CI::ImageIndex,CI::Image::ImageStats>>>::find<CI::ImageIndex>(*(a1 + 64), (v37 + 36));
    if (v21)
    {
      CI::Node::print_for_graph(v37, *(a1 + 56), (v21 + 3));
    }

    else
    {
      v22 = *(a1 + 56);
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      *__p = 0u;
      *v27 = 0u;
      *v28 = 0u;
      CI::Node::print_for_graph(v37, v22, v27);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v28[1])
      {
        *&v29 = v28[1];
        operator delete(v28[1]);
      }

      if (v27[0])
      {
        v27[1] = v27[0];
        operator delete(v27[0]);
      }
    }

    if (std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::find<CI::Image const*>((*(*(a1 + 48) + 8) + 40), &v37))
    {
      v23 = *(a1 + 56);
      v24 = *(*(a1 + 48) + 8);
      v27[0] = &v37;
      v25 = std::__hash_table<std::__hash_value_type<CI::Node const*,unsigned long>,std::__unordered_map_hasher<CI::Node const*,std::__hash_value_type<CI::Node const*,unsigned long>,std::hash<CI::Node const*>,std::equal_to<CI::Node const*>,true>,std::__unordered_map_equal<CI::Node const*,std::__hash_value_type<CI::Node const*,unsigned long>,std::equal_to<CI::Node const*>,std::hash<CI::Node const*>,true>,std::allocator<std::__hash_value_type<CI::Node const*,unsigned long>>>::__emplace_unique_key_args<CI::Node const*,std::piecewise_construct_t const&,std::tuple<CI::Node const* const&>,std::tuple<>>((v24 + 40), &v37);
      fprintf(v23, " <%ld>", v25[3]);
    }

    fputc(10, *(a1 + 56));
    std::__hash_table<CI::Node const*,std::hash<CI::Node const*>,std::equal_to<CI::Node const*>,std::allocator<CI::Node const*>>::__emplace_unique_key_args<CI::Node const*,CI::Node const* const&>((*(*(a1 + 40) + 8) + 40), &v37);
  }

  return v17 != 0;
}

void *std::__hash_table<std::__hash_value_type<CI::Node const*,unsigned long>,std::__unordered_map_hasher<CI::Node const*,std::__hash_value_type<CI::Node const*,unsigned long>,std::hash<CI::Node const*>,std::equal_to<CI::Node const*>,true>,std::__unordered_map_equal<CI::Node const*,std::__hash_value_type<CI::Node const*,unsigned long>,std::equal_to<CI::Node const*>,std::hash<CI::Node const*>,true>,std::allocator<std::__hash_value_type<CI::Node const*,unsigned long>>>::__emplace_unique_key_args<CI::Node const*,CI::Node const*&,unsigned long>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<CI::Node const*,std::hash<CI::Node const*>,std::equal_to<CI::Node const*>,std::allocator<CI::Node const*>>::__emplace_unique_key_args<CI::Node const*,CI::Node const* const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<CI::Node const*,unsigned long>,std::__unordered_map_hasher<CI::Node const*,std::__hash_value_type<CI::Node const*,unsigned long>,std::hash<CI::Node const*>,std::equal_to<CI::Node const*>,true>,std::__unordered_map_equal<CI::Node const*,std::__hash_value_type<CI::Node const*,unsigned long>,std::equal_to<CI::Node const*>,std::hash<CI::Node const*>,true>,std::allocator<std::__hash_value_type<CI::Node const*,unsigned long>>>::__emplace_unique_key_args<CI::Node const*,std::piecewise_construct_t const&,std::tuple<CI::Node const* const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<CI::NodeIndex const,CI::Node::NodeStats>::~pair(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::pair<CI::NodeIndex const,CI::Node::NodeStats>::~pair(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

void *std::vector<std::pair<CGRect,unsigned long>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<std::pair<CGRect,unsigned long>>::__vallocate[abi:nn200100](result, 0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 3));
  }

  return result;
}

void std::vector<std::pair<CGRect,unsigned long>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<CGRect,unsigned long>>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<CGRect,unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

unint64_t CI::sw_cmlut(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v11 = *(a1 + 40);
  v12 = *(v11 + 8);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v11 + 16) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(a2 + (*(v11 + 32) << 6));
  v17 = *(v11 + 64);
  v18 = *(v11 + 56);
  v19 = (a3 + 16 * v18);
  v20 = (a2 + (v18 << 6));
  if (v17 == 5)
  {
    v20 = v19;
  }

  v21 = *v15;
  v21.i32[3] = 0;
  v22 = vmaxnmq_f32(v21, 0);
  v22.i32[3] = 0;
  v23 = vdupq_lane_s32(*v20, 1);
  v39 = vaddq_f32(v23, vmulq_n_f32(vminnmq_f32(v22, xmmword_19CF23BD0), COERCE_FLOAT(*v20)));
  v24 = CI::BitmapSampler::read(v16, COERCE_DOUBLE(LODWORD(v39.f64[0]) | 0x3F00000000000000), v39, *v23.i64, a7, a8, a9, a10, a11);
  v40 = LODWORD(v24);
  v31 = CI::BitmapSampler::read(v16, COERCE_DOUBLE(HIDWORD(v39.f64[0]) | 0x3F00000000000000), v39, v25, v26, v27, v28, v29, v30);
  v41 = __PAIR64__(LODWORD(v31), v40);
  CI::BitmapSampler::read(v16, COERCE_DOUBLE(LODWORD(v39.f64[1]) | 0x3F00000000000000), v39, v32, v33, v34, v35, v36, v37);
  return v41;
}

double CI::sw_pq_eotf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v17 = *v7;
  v18 = *(a2 + (*(v3 + 32) << 6));
  v8 = _simd_pow_f4(vabsq_f32(*v7), vdupq_n_s64(0x3C4FCDAC3C4FCDACuLL));
  v9 = _simd_pow_f4(vdivq_f32(vmaxnmq_f32(vaddq_f32(v8, vdupq_n_s32(0xBF560000)), 0), vaddq_f32(vmulq_f32(v8, vdupq_n_s32(0xC1958000)), vdupq_n_s32(0x4196D000u))), vdupq_n_s64(0x40C8E06B40C8E06BuLL));
  v10.i64[0] = 0x8000000080000000;
  v10.i64[1] = 0x8000000080000000;
  __asm { FMOV            V2.4S, #1.0 }

  *&result = vmulq_f32(v9, vmulq_n_f32(vbslq_s8(vorrq_s8(vcltzq_f32(v17), vcgtzq_f32(v17)), vorrq_s8(vandq_s8(v17, v10), _Q2), 0), v18)).u64[0];
  return result;
}

double CI::sw_pq_inv_eotf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v18 = *v7;
  v8 = _simd_pow_f4(vmulq_n_f32(vabsq_f32(*v7), *(a2 + (*(v3 + 32) << 6))), vdupq_n_s64(0x3E2320003E232000uLL));
  __asm { FMOV            V2.4S, #1.0 }

  v17 = _Q2;
  v14 = _simd_pow_f4(vdivq_f32(vaddq_f32(vmulq_f32(v8, vdupq_n_s32(0x4196D000u)), vdupq_n_s32(0x3F560000u)), vaddq_f32(vmulq_f32(v8, vdupq_n_s32(0x41958000u)), _Q2)), vdupq_n_s64(0x429DB000429DB000uLL));
  v15.i64[0] = 0x8000000080000000;
  v15.i64[1] = 0x8000000080000000;
  *&result = vmulq_f32(v14, vbslq_s8(vorrq_s8(vcltzq_f32(v18), vcgtzq_f32(v18)), vorrq_s8(vandq_s8(v18, v15), v17), 0)).u64[0];
  return result;
}

double CI::sw_hlg_inv_oetf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v12 = *(a2 + (*(v3 + 32) << 6));
  v13 = *v7;
  v8 = vmaxnmq_f32(vabsq_f32(*v7), 0);
  v9.i64[0] = 0xBF000000BF000000;
  v9.i64[1] = 0xBF000000BF000000;
  v10 = vbslq_s8(vcltzq_f32(vaddq_f32(v8, v9)), vmulq_n_f32(vmulq_f32(v8, v8), v12 * 4.0), vmulq_n_f32(vaddq_f32(_simd_exp_f4(vdivq_f32(vaddq_f32(v8, vdupq_n_s32(0xBF0F564F)), vdupq_n_s32(0x3E371FF0u))), vdupq_n_s32(0x3E91C020u)), v12));
  *&result = vbslq_s8(vcltzq_f32(v13), vnegq_f32(v10), v10).u64[0];
  return result;
}

double CI::sw_hlg_oetf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v18 = *v7;
  v8 = vabsq_f32(vmulq_n_f32(*v7, *(a2 + (*(v3 + 32) << 6))));
  __asm { FMOV            V1.4S, #3.0 }

  v17 = vsqrtq_f32(vmulq_f32(v8, _Q1));
  __asm { FMOV            V1.4S, #12.0 }

  v15 = vbslq_s8(vcltzq_f32(vaddq_f32(v8, vdupq_n_s32(0xBDAAAAAB))), v17, vaddq_f32(vmulq_f32(_simd_log_f4(vaddq_f32(vmulq_f32(vmaxnmq_f32(v8, vdupq_n_s32(0x3DAAAAABu)), _Q1), vdupq_n_s32(0xBE91C020))), vdupq_n_s32(0x3E371FF0u)), vdupq_n_s32(0x3F0F564Fu)));
  *&result = vbslq_s8(vcltzq_f32(v18), vnegq_f32(v15), v15).u64[0];
  return result;
}

double CI::sw_hlg_lumscale(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v7;
  v16.i32[3] = fmaxf(fmaxf(COERCE_FLOAT(*v7), COERCE_FLOAT(HIDWORD(v7->i64[0]))), COERCE_FLOAT(v7->i64[1]));
  v17 = vmulq_f32(*v11, v16);
  *&result = vmulq_n_f32(*v7, vmuls_lane_f32(powf(fmaxf(fabsf(vaddv_f32(vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))), 0.0001), COERCE_FLOAT(*v15)), *v15, 1)).u64[0];
  return result;
}

double CI::sw_hlg_srmapping(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = vmulq_lane_f32(*v7, *v15, 1);
  v16.i32[3] = fmaxf(fmaxf(v16.f32[0], v16.f32[1]), v16.f32[2]);
  v23 = *v11;
  v17 = vmulq_f32(*v11, v16);
  v18 = vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
  v19 = _simd_pow_f4(v16, vdupq_lane_s32(*v15, 0));
  v20 = vmulq_f32(v23, v19);
  *v20.i8 = vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
  *v20.i8 = vadd_f32(vzip1_s32(v18, *v20.i8), vzip2_s32(v18, *v20.i8));
  v21 = *v20.i32 / *&v20.i32[1];
  if (*&v20.i32[1] == 0.0)
  {
    v21 = 1.0;
  }

  *&result = vmulq_n_f32(v19, v21).u64[0];
  return result;
}

uint64_t CI::sw_pq_tonemapping(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) != 5)
  {
    v5 = v6;
  }

  v7 = *(v3 + 104);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (*(v3 + 112) == 5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v3 + 128);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (*(v3 + 136) == 5)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v3 + 152);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (*(v3 + 160) == 5)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v19 = *v5;
  v20 = vmulq_f32(*v5, *v18);
  v21 = v20.f32[2] + vaddv_f32(*v20.f32);
  if (v21 != 0.0)
  {
    v48 = *v10;
    v49 = *v5;
    v47 = *v14;
    v22 = *(v3 + 80);
    v23 = (a3 + 16 * v22);
    v24 = (a2 + (v22 << 6));
    if (*(v3 + 88) == 5)
    {
      v25 = v23;
    }

    else
    {
      v25 = v24;
    }

    v26 = *(v3 + 56);
    v27 = *(v3 + 40);
    v28 = *(v3 + 32);
    v29 = (a3 + 16 * v28);
    v30 = (a2 + (v28 << 6));
    if (v27 == 5)
    {
      v30 = v29;
    }

    v51 = *(a2 + (v26 << 6));
    v46 = *v25;
    v50 = *v30;
    LODWORD(v31) = HIDWORD(*v25);
    _S0 = powf(v21 / 10000.0, COERCE_FLOAT(*v30));
    _V3.S[1] = v51.i32[1];
    __asm { FMLA            S2, S0, V3.S[1] }

    v39 = pow(_S2 / (vmuls_lane_f32(_S0, v51, 2) + 1.0), *(&v50 + 1));
    v40 = (v39 - v31) / (*&v46 - v31);
    if (v40 >= v47.f32[0])
    {
      v42 = vmuls_lane_f32(v40 - v47.f32[0], v47, 1);
      v40 = (1.0 - v47.f32[0]) * (v42 + ((v42 * (v42 * -2.0)) + ((v42 * v42) * v42))) + (1.0 - ((v42 * (v42 * 3.0)) - (v42 + v42) * v42 * v42)) * v47.f32[0] + ((v42 * (v42 * 3.0)) + v42 * -2.0 * v42 * v42) * *(&v48 + 1);
    }

    v41 = *&v48;
    if (v40 >= 0.0)
    {
      if (v40 >= 1.0)
      {
        v41 = v40;
      }

      else
      {
        v41 = v40 + (((1.0 - v40) * ((1.0 - v40) * (*&v48 * (1.0 - v40)))) * (1.0 - v40));
      }
    }

    v43 = pow((v31 + (v41 * (*&v46 - v31))), 1.0 / *(&v50 + 1));
    v44 = pow((fmaxf(v43 - v51.f32[0], 0.0) / (v51.f32[1] - (v51.f32[2] * v43))), 1.0 / *&v50);
    v19.i64[0] = vmulq_n_f32(v49, (v44 * 10000.0) / v21).u64[0];
  }

  return v19.i64[0];
}

double CI::sw_flexLumaScaling(uint64_t a1, uint64_t a2, uint64_t a3, double a4, float64x2_t a5, double a6, double a7, double a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v11 = *(a1 + 40);
  v12 = *(v11 + 8);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v11 + 16) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v11 + 56);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v11 + 64) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v11 + 80);
  v21 = *(a2 + (*(v11 + 104) << 6));
  v22 = *(v11 + 128);
  v23 = (a3 + 16 * v22);
  v24 = (a2 + (v22 << 6));
  if (*(v11 + 136) == 5)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  v26 = *(v11 + 160);
  v27 = *(v11 + 152);
  v28 = (a3 + 16 * v27);
  v29 = (a2 + (v27 << 6));
  if (v26 == 5)
  {
    v29 = v28;
  }

  v35 = *v15;
  v30 = *(a2 + (v20 << 6));
  *&a5.f64[0] = *v25;
  v44 = v35;
  v45 = *v29;
  v31 = *v15;
  v31.i32[3] = fmaxf(*v35.i32, fmaxf(*&v35.i32[1], *&v35.i32[2]));
  v32 = vmulq_f32(*v19, v31);
  v33 = vextq_s8(v32, v32, 8uLL);
  *v32.i8 = vadd_f32(*v32.i8, *v33.i8);
  *v32.i32 = vaddv_f32(*v32.i8);
  v33.i32[0] = 1.0;
  v31.i64[0] = 0x8000000080000000;
  v31.i64[1] = 0x8000000080000000;
  *&v34 = vbslq_s8(v31, v33, v32).u64[0];
  v35.i64[0] = 0;
  if (*v32.i32 == 0.0)
  {
    *&v34 = 0.0;
  }

  v36 = *&v34;
  LODWORD(v34) = 897988541;
  v37 = fmaxf(fabsf(*v32.i32), 0.000001);
  if (v37 > 1.0)
  {
    v37 = 1.0;
  }

  v33.i32[0] = HIDWORD(a5.f64[0]);
  *a5.f64 = *(a5.f64 + 1) + (v37 * *a5.f64);
  v38 = CI::BitmapSampler::read(v21, COERCE_DOUBLE(LODWORD(a5.f64[0]) | 0x3F00000000000000), a5, *v33.i64, v34, v35, a9, a10, a11);
  v39 = vmulq_n_f32(v44, v30 * (v36 * *&v38));
  v39.i32[3] = 0;
  v40 = vdupq_lane_s32(v45, 0);
  v40.i32[3] = 0;
  v41 = vmaxnmq_f32(v39, v40);
  v41.i32[3] = 0;
  v42 = vdupq_lane_s32(v45, 1);
  v42.i32[3] = 0;
  *&result = vminnmq_f32(v41, v42).u64[0];
  return result;
}