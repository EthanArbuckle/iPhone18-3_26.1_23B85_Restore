BOOL VTMetalTransferSessionCanAcceptSource1xWithSession(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  v8 = 0;
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    getKernelTypeCapabilities_source((DerivedStorage + 2161), a2, &v8 + 1, &v8);
    v6 = (v8 | HIBYTE(v8)) != 0;
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v6;
}

unsigned __int8 *getKernelTypeCapabilities_source(unsigned __int8 *result, int a2, char *a3, char *a4)
{
  if (a2 > 1647534391)
  {
    if (a2 > 1953903151)
    {
      if (a2 <= 2019964015)
      {
        if (a2 <= 2016686639)
        {
          if (a2 > 1983013175)
          {
            if (a2 <= 1999843441)
            {
              if (a2 == 1983013176)
              {
                goto LABEL_174;
              }

              v4 = 1983144248;
              goto LABEL_173;
            }

            if (a2 == 1999843442)
            {
              goto LABEL_162;
            }

            v5 = 2016567667;
            goto LABEL_227;
          }

          if (a2 > 1953903667)
          {
            if (a2 != 1953903668)
            {
              v26 = 1983000886;
              goto LABEL_193;
            }
          }

          else if (a2 != 1953903152)
          {
            v5 = 1953903154;
            goto LABEL_227;
          }

LABEL_228:
          v17 = result[9];
          if (!v17)
          {
            goto LABEL_231;
          }

          v27 = result[12];
          goto LABEL_230;
        }

        if (a2 > 2016698738)
        {
          if (a2 > 2019963441)
          {
            if (a2 == 2019963442)
            {
              goto LABEL_228;
            }

            v19 = 13364;
          }

          else
          {
            if (a2 == 2016698739)
            {
              goto LABEL_228;
            }

            v19 = 12848;
          }

          v5 = v19 | 0x78660000;
          goto LABEL_227;
        }

        if (a2 <= 2016687155)
        {
          if (a2 == 2016686640)
          {
            goto LABEL_228;
          }

          v5 = 2016686642;
LABEL_227:
          if (a2 != v5)
          {
            return result;
          }

          goto LABEL_228;
        }

        if (a2 == 2016687156)
        {
          goto LABEL_228;
        }

        v21 = 2016687216;
LABEL_161:
        if (a2 != v21)
        {
          return result;
        }

        goto LABEL_162;
      }

      if (a2 > 2037741170)
      {
        if (a2 > 2088265263)
        {
          if (a2 > 2088269359)
          {
            if (a2 == 2088269360)
            {
              goto LABEL_215;
            }

            v20 = 30258;
          }

          else
          {
            if (a2 == 2088265264)
            {
              goto LABEL_215;
            }

            v20 = 26162;
          }

          v15 = v20 | 0x7C780000;
          goto LABEL_207;
        }

        if (a2 > 2084075055)
        {
          if (a2 == 2084075056)
          {
            goto LABEL_174;
          }

          v12 = 2084718401;
LABEL_169:
          if (a2 != v12)
          {
            return result;
          }

          goto LABEL_181;
        }

        if (a2 != 2037741171)
        {
          v4 = 2084070960;
          goto LABEL_173;
        }

LABEL_184:
        v17 = result[43];
        goto LABEL_231;
      }

      if (a2 <= 2021078127)
      {
        if (a2 > 2021077553)
        {
          if (a2 == 2021077554)
          {
            goto LABEL_228;
          }

          v9 = 13364;
        }

        else
        {
          if (a2 == 2019964016)
          {
            goto LABEL_162;
          }

          v9 = 12848;
        }

        v5 = v9 | 0x78770000;
        goto LABEL_227;
      }

      if (a2 <= 2033463605)
      {
        if (a2 != 2021078128)
        {
          if (a2 != 2033463352)
          {
            return result;
          }

          v17 = result[28];
          goto LABEL_231;
        }

        goto LABEL_162;
      }

      if (a2 != 2033463606)
      {
        if (a2 != 2037741158)
        {
          return result;
        }

        goto LABEL_184;
      }

LABEL_194:
      v17 = result[34];
      goto LABEL_231;
    }

    if (a2 <= 1886859825)
    {
      if (a2 > 1815491697)
      {
        if (a2 > 1885745711)
        {
          if (a2 <= 1885746227)
          {
            if (a2 != 1885745712)
            {
              v15 = 1885745714;
              goto LABEL_207;
            }

            goto LABEL_215;
          }

          if (a2 != 1885746228)
          {
            v11 = 1886859824;
            goto LABEL_214;
          }

          goto LABEL_223;
        }

        if (a2 > 1882468913)
        {
          if (a2 == 1882468914)
          {
            goto LABEL_208;
          }

          v7 = 1882469428;
          goto LABEL_222;
        }

        if (a2 != 1815491698)
        {
          v11 = 1882468912;
          goto LABEL_214;
        }

        goto LABEL_194;
      }

      if (a2 > 1751527983)
      {
        if (a2 > 1751528499)
        {
          if (a2 != 1751528500)
          {
            v21 = 1815162994;
            goto LABEL_161;
          }
        }

        else if (a2 != 1751527984 && a2 != 1751527986)
        {
          return result;
        }

        v17 = result[15];
        if (!v17)
        {
          goto LABEL_231;
        }

        v27 = result[18];
LABEL_230:
        v17 = v27 != 0;
        goto LABEL_231;
      }

      if (a2 == 1647534392)
      {
        goto LABEL_200;
      }

      if (a2 != 1647719521)
      {
        v26 = 1651521076;
        goto LABEL_193;
      }
    }

    else
    {
      if (a2 > 1937125935)
      {
        if (a2 > 1949589874)
        {
          if (a2 > 1952854577)
          {
            if (a2 == 1952854578)
            {
              goto LABEL_228;
            }

            v24 = 13364;
          }

          else
          {
            if (a2 == 1949589875)
            {
              goto LABEL_228;
            }

            v24 = 12848;
          }

          v5 = v24 | 0x74660000;
        }

        else if (a2 > 1937126451)
        {
          if (a2 == 1937126452)
          {
            goto LABEL_228;
          }

          v5 = 1949458803;
        }

        else
        {
          if (a2 == 1937125936)
          {
            goto LABEL_228;
          }

          v5 = 1937125938;
        }

        goto LABEL_227;
      }

      if (a2 > 1932812658)
      {
        if (a2 > 1936077361)
        {
          if (a2 == 1936077362)
          {
            goto LABEL_228;
          }

          v22 = 13364;
        }

        else
        {
          if (a2 == 1932812659)
          {
            goto LABEL_228;
          }

          v22 = 12848;
        }

        v5 = v22 | 0x73660000;
        goto LABEL_227;
      }

      if (a2 <= 1915892015)
      {
        if (a2 == 1886859826)
        {
          goto LABEL_208;
        }

        v7 = 1886860340;
        goto LABEL_222;
      }

      if (a2 != 1915892016)
      {
        v5 = 1932681587;
        goto LABEL_227;
      }
    }

LABEL_204:
    v17 = 0;
    goto LABEL_239;
  }

  if (a2 <= 758670895)
  {
    if (a2 <= 642527535)
    {
      if (a2 > 641230383)
      {
        if (a2 <= 641234479)
        {
          v10 = -26160;
        }

        else
        {
          if (a2 > 641877824)
          {
            if (a2 == 641877825)
            {
              goto LABEL_181;
            }

            if (a2 == 642527288)
            {
              goto LABEL_180;
            }

            v13 = 642527336;
LABEL_135:
            if (a2 != v13)
            {
              return result;
            }

            v17 = result[15];
LABEL_231:
            v28 = v17;
            if (!a3)
            {
              goto LABEL_233;
            }

            goto LABEL_232;
          }

          v10 = -30256;
        }

        v25 = a2 + (v10 | 0xD9C70000);
        if (v25 <= 4 && ((1 << v25) & 0x15) != 0)
        {
          goto LABEL_174;
        }

        return result;
      }

      if (a2 <= 590898735)
      {
        if (a2)
        {
          if (a2 == 32)
          {
            goto LABEL_181;
          }

          if (a2 != 40)
          {
            return result;
          }

          goto LABEL_180;
        }

        v17 = 1;
LABEL_239:
        v28 = 1;
        if (!a3)
        {
LABEL_233:
          if (a4)
          {
            *a4 = v28;
          }

          return result;
        }

LABEL_232:
        *a3 = v17;
        goto LABEL_233;
      }

      if (a2 == 590898736 || a2 == 590902832)
      {
        goto LABEL_174;
      }

      v21 = 640955504;
      goto LABEL_161;
    }

    if (a2 <= 645424689)
    {
      if (a2 <= 644232303)
      {
        if (a2 <= 642934848)
        {
          if (a2 != 642527536)
          {
            v6 = 642527542;
            goto LABEL_165;
          }

LABEL_166:
          v17 = result[9];
          goto LABEL_231;
        }

        if (a2 == 642934849)
        {
          goto LABEL_236;
        }

        if (a2 != 643969848)
        {
          return result;
        }

LABEL_200:
        v17 = result[31];
        if (!v17)
        {
          goto LABEL_231;
        }

        v27 = result[3];
        goto LABEL_230;
      }

      if (a2 <= 645346161)
      {
        if (a2 != 644232304)
        {
          v21 = 644624754;
          goto LABEL_161;
        }

LABEL_162:
        v17 = result[31];
        goto LABEL_231;
      }

      if (a2 == 645346162)
      {
        goto LABEL_162;
      }

      v23 = 26160;
LABEL_213:
      v11 = v23 | 0x26780000;
LABEL_214:
      if (a2 != v11)
      {
        return result;
      }

      goto LABEL_215;
    }

    if (a2 <= 645428787)
    {
      if (a2 <= 645428783)
      {
        if (a2 == 645424690)
        {
          goto LABEL_208;
        }

        v14 = 26164;
        goto LABEL_221;
      }

      if (a2 == 645428784)
      {
        goto LABEL_215;
      }

      v15 = 645428786;
LABEL_207:
      if (a2 != v15)
      {
        return result;
      }

      goto LABEL_208;
    }

    if (a2 > 645429041)
    {
      if (a2 == 645429042)
      {
        goto LABEL_208;
      }

      v14 = 30516;
LABEL_221:
      v7 = v14 | 0x26780000;
LABEL_222:
      if (a2 != v7)
      {
        return result;
      }

      goto LABEL_223;
    }

    if (a2 != 645428788)
    {
      v23 = 30512;
      goto LABEL_213;
    }

LABEL_223:
    v17 = result[58];
    goto LABEL_231;
  }

  if (a2 > 875704421)
  {
    if (a2 <= 1278226533)
    {
      if (a2 <= 875836517)
      {
        if (a2 > 875704933)
        {
          if (a2 == 875704934)
          {
            goto LABEL_174;
          }

          v8 = 12918;
        }

        else
        {
          if (a2 == 875704422)
          {
            goto LABEL_174;
          }

          v8 = 12406;
        }

        v4 = v8 | 0x34320000;
        goto LABEL_173;
      }

      if (a2 <= 1111970368)
      {
        if (a2 == 875836518)
        {
          goto LABEL_174;
        }

        v4 = 875836534;
        goto LABEL_173;
      }

      if (a2 == 1111970369)
      {
        goto LABEL_181;
      }

      if (a2 != 1278226488)
      {
        return result;
      }

LABEL_180:
      v17 = result[3];
      goto LABEL_231;
    }

    if (a2 <= 1378955370)
    {
      if (a2 <= 1278226735)
      {
        if (a2 == 1278226534)
        {
          v17 = result[21];
          goto LABEL_231;
        }

        v13 = 1278226536;
        goto LABEL_135;
      }

      if (a2 != 1278226736)
      {
        v6 = 1278226742;
LABEL_165:
        if (a2 != v6)
        {
          return result;
        }

        goto LABEL_166;
      }

      goto LABEL_166;
    }

    if (a2 <= 1380411456)
    {
      if (a2 != 1378955371)
      {
        if (a2 != 1380410945)
        {
          return result;
        }

        v17 = result[40];
        goto LABEL_231;
      }

      goto LABEL_204;
    }

    if (a2 != 1380411457)
    {
      v26 = 1647392369;
LABEL_193:
      if (a2 != v26)
      {
        return result;
      }

      goto LABEL_194;
    }

LABEL_236:
    v17 = result[37];
    goto LABEL_231;
  }

  if (a2 <= 792229423)
  {
    if (a2 <= 762865201)
    {
      if (a2 <= 759318336)
      {
        if (a2 != 758670896)
        {
          v4 = 758674992;
          goto LABEL_173;
        }

LABEL_174:
        v17 = result[3];
        if (!v17)
        {
          goto LABEL_231;
        }

        v27 = result[6];
        goto LABEL_230;
      }

      if (a2 != 759318337)
      {
        v16 = 26160;
        goto LABEL_147;
      }

LABEL_181:
      v17 = result[25];
      goto LABEL_231;
    }

    if (a2 <= 762869297)
    {
      if (a2 != 762865202)
      {
        v16 = 30256;
LABEL_147:
        v11 = v16 | 0x2D780000;
        goto LABEL_214;
      }

LABEL_208:
      v17 = result[55];
      goto LABEL_231;
    }

    if (a2 == 762869298)
    {
      goto LABEL_208;
    }

    v4 = 792225328;
LABEL_173:
    if (a2 != v4)
    {
      return result;
    }

    goto LABEL_174;
  }

  if (a2 <= 796423727)
  {
    if (a2 <= 796419631)
    {
      if (a2 == 792229424)
      {
        goto LABEL_174;
      }

      v12 = 792872769;
      goto LABEL_169;
    }

    if (a2 != 796419632)
    {
      v18 = 26162;
      goto LABEL_158;
    }

    goto LABEL_215;
  }

  if (a2 <= 846624101)
  {
    if (a2 != 796423728)
    {
      v18 = 30258;
LABEL_158:
      v15 = v18 | 0x2F780000;
      goto LABEL_207;
    }

LABEL_215:
    v17 = result[52];
    goto LABEL_231;
  }

  if (a2 == 846624102 || a2 == 846624121)
  {
    v17 = result[46];
    goto LABEL_231;
  }

  return result;
}

_BYTE *getKernelTypeCapabilities(unsigned __int8 *a1, int a2, int a3, char *a4, char *a5)
{
  v15 = 0;
  v14 = 0;
  getKernelTypeCapabilities_source(a1, a2, &v15 + 1, &v14 + 1);
  result = getKernelTypeCapabilities_destination(a1, a3, &v15, &v14);
  if (a4)
  {
    if (v15)
    {
      v10 = HIBYTE(v15) == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = !v10;
    *a4 = v11;
  }

  if (a5)
  {
    if (v14)
    {
      v12 = HIBYTE(v14) == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = !v12;
    *a5 = v13;
  }

  return result;
}

BOOL VTMetalTransferSessionCanTransfer(int a1, int a2, char a3)
{
  v6 = objc_autoreleasePoolPush();
  memset(v13, 0, 61);
  v12 = 0;
  v11 = 0;
  vtmtsCreateDefaultDevice(&v11, &v12);
  v7 = v11;
  vtmtsCacheSupportedPixelformats(v11, v13);
  if (a3)
  {
    v10 = 0;
    getKernelTypeCapabilities_destination(v13, a2, &v10 + 1, &v10);
    if (HIBYTE(v10) | v10)
    {
      MEMORY[0x193AE3010](&sReadGlobalVTMTSPropertiesOnce_0, ReadGlobalVTMTSProperties_0);
      if (byte_1ED6D43A3)
      {
        vtmtsGetIntermediateScalingFormat(v13, a1, 0, 0, 0, 0);
      }
    }

    v8 = 0;
  }

  else
  {
    v10 = 0;
    getKernelTypeCapabilities(v13, a1, a2, &v10 + 1, &v10);
    v8 = (HIBYTE(v10) | v10) != 0;
  }

  objc_autoreleasePoolPop(v6);
  return v8;
}

_BYTE *getKernelTypeCapabilities_destination(_BYTE *result, int a2, _BYTE *a3, char *a4)
{
  v4 = 0;
  v5 = 1;
  if (a2 <= 1647534391)
  {
    if (a2 <= 758670895)
    {
      if (a2 > 642527541)
      {
        if (a2 <= 645424689)
        {
          if (a2 <= 644624753)
          {
            if (a2 <= 643969847)
            {
              if (a2 != 642527542)
              {
                if (a2 != 642934849)
                {
                  return result;
                }

                v5 = 0;
                v4 = result[38];
                goto LABEL_261;
              }

LABEL_167:
              v5 = 0;
              v4 = result[10];
              goto LABEL_261;
            }

            if (a2 != 643969848)
            {
              v13 = 644232304;
LABEL_180:
              if (a2 != v13)
              {
                return result;
              }

              goto LABEL_212;
            }

            v4 = result[4];
            if (v4)
            {
              v4 = result[32] != 0;
            }

LABEL_171:
            v5 = 0;
            goto LABEL_261;
          }

          if (a2 <= 645346161)
          {
            if (a2 != 644624754)
            {
              v9 = 645279800;
              goto LABEL_125;
            }

LABEL_212:
            v5 = 0;
            v4 = result[32];
            goto LABEL_261;
          }

          if (a2 == 645346162)
          {
            goto LABEL_212;
          }

          v12 = 26160;
          goto LABEL_229;
        }

        if (a2 > 645428787)
        {
          if (a2 > 645429041)
          {
            if (a2 != 645429042)
            {
              v12 = 30516;
              goto LABEL_229;
            }

            goto LABEL_247;
          }

          if (a2 != 645428788)
          {
            v12 = 30512;
            goto LABEL_229;
          }
        }

        else
        {
          if (a2 <= 645428783)
          {
            if (a2 != 645424690)
            {
              v12 = 26164;
LABEL_229:
              v10 = v12 | 0x26780000;
LABEL_230:
              if (a2 != v10)
              {
                return result;
              }

              goto LABEL_231;
            }

LABEL_247:
            v5 = 0;
            v4 = result[56];
            goto LABEL_261;
          }

          if (a2 != 645428784)
          {
            v26 = 645428786;
            goto LABEL_246;
          }
        }

LABEL_231:
        v5 = 0;
        v4 = result[53];
        goto LABEL_261;
      }

      if (a2 > 641230387)
      {
        if (a2 <= 641877824)
        {
          if (a2 <= 641234481)
          {
            if (a2 != 641230388)
            {
              v9 = 641234480;
              goto LABEL_125;
            }

LABEL_153:
            v5 = 0;
            v4 = result[51];
            goto LABEL_261;
          }

          if (a2 != 641234482)
          {
            if (a2 != 641234484)
            {
              return result;
            }

            goto LABEL_153;
          }

LABEL_248:
          v5 = 0;
          v4 = result[50];
          goto LABEL_261;
        }

        if (a2 > 642527335)
        {
          if (a2 == 642527336)
          {
            v5 = 0;
            v4 = result[16];
            goto LABEL_261;
          }

          if (a2 != 642527536)
          {
            return result;
          }

          goto LABEL_167;
        }

        if (a2 != 641877825)
        {
          if (a2 != 642527288)
          {
            return result;
          }

          v5 = 0;
          v4 = result[4];
          goto LABEL_261;
        }

LABEL_209:
        v5 = 0;
        v4 = result[26];
        goto LABEL_261;
      }

      if (a2 > 590902831)
      {
        if (a2 <= 641230383)
        {
          if (a2 != 590902832)
          {
            v13 = 640955504;
            goto LABEL_180;
          }

          goto LABEL_126;
        }

        if (a2 != 641230384)
        {
          if (a2 != 641230386)
          {
            return result;
          }

          goto LABEL_248;
        }

LABEL_126:
        v5 = 0;
        v4 = result[49];
        goto LABEL_261;
      }

      if (a2 != 32)
      {
        if (a2 != 40)
        {
          v9 = 590898736;
LABEL_125:
          if (a2 != v9)
          {
            return result;
          }

          goto LABEL_126;
        }

LABEL_251:
        v4 = result[4];
        v5 = result[5];
        goto LABEL_261;
      }

LABEL_217:
      v4 = result[26];
      v5 = result[27];
      goto LABEL_261;
    }

    if (a2 > 846624120)
    {
      if (a2 > 1278226487)
      {
        if (a2 > 1278226741)
        {
          if (a2 > 1380410944)
          {
            if (a2 == 1380410945)
            {
              v4 = result[41];
              v5 = result[42];
            }

            else
            {
              if (a2 != 1380411457)
              {
                return result;
              }

              v4 = result[38];
              v5 = result[39];
            }

            goto LABEL_261;
          }

          if (a2 != 1278226742)
          {
            if (a2 != 1378955371)
            {
              return result;
            }

            goto LABEL_261;
          }
        }

        else
        {
          if (a2 <= 1278226535)
          {
            if (a2 != 1278226488)
            {
              if (a2 != 1278226534)
              {
                return result;
              }

              v4 = result[22];
              v5 = result[23];
              goto LABEL_261;
            }

            goto LABEL_251;
          }

          if (a2 == 1278226536)
          {
            v4 = result[16];
            v5 = result[17];
            goto LABEL_261;
          }

          if (a2 != 1278226736)
          {
            return result;
          }
        }

        v4 = result[10];
        v5 = result[11];
        goto LABEL_261;
      }

      if (a2 <= 875704949)
      {
        if (a2 > 875704437)
        {
          if (a2 == 875704438)
          {
            goto LABEL_188;
          }

          v7 = 12902;
LABEL_187:
          if (a2 != (v7 | 0x34320000))
          {
            return result;
          }

LABEL_188:
          if (result[5])
          {
            v24 = result[8];
            goto LABEL_200;
          }

          goto LABEL_201;
        }

        if (a2 != 846624121)
        {
          v7 = 12390;
          goto LABEL_187;
        }

        goto LABEL_174;
      }

      if (a2 > 875836533)
      {
        if (a2 != 875836534)
        {
          if (a2 != 1111970369)
          {
            return result;
          }

          goto LABEL_217;
        }

        goto LABEL_218;
      }

      if (a2 == 875704950)
      {
        goto LABEL_188;
      }

      v16 = 875836518;
LABEL_104:
      if (a2 != v16)
      {
        return result;
      }

LABEL_218:
      v4 = result[4];
      if (v4)
      {
        v4 = result[7] != 0;
      }

      v5 = result[5];
      if (!v5)
      {
        goto LABEL_261;
      }

      v27 = result[8];
      goto LABEL_239;
    }

    if (a2 > 792225327)
    {
      if (a2 > 796419633)
      {
        if (a2 > 796423729)
        {
          if (a2 == 796423730)
          {
            goto LABEL_247;
          }

          if (a2 != 846624102)
          {
            return result;
          }

LABEL_174:
          v4 = result[47];
LABEL_226:
          v5 = result[30];
          goto LABEL_261;
        }

        if (a2 == 796419634)
        {
          goto LABEL_247;
        }

        v18 = 30256;
      }

      else
      {
        if (a2 <= 792872768)
        {
          if (a2 != 792225328)
          {
            v9 = 792229424;
            goto LABEL_125;
          }

          goto LABEL_126;
        }

        if (a2 == 792872769)
        {
          goto LABEL_209;
        }

        v18 = 26160;
      }

      v10 = v18 | 0x2F780000;
      goto LABEL_230;
    }

    if (a2 > 762865199)
    {
      if (a2 > 762869295)
      {
        if (a2 == 762869296)
        {
          goto LABEL_231;
        }

        v15 = 30258;
      }

      else
      {
        if (a2 == 762865200)
        {
          goto LABEL_231;
        }

        v15 = 26162;
      }

      v26 = v15 | 0x2D780000;
      goto LABEL_246;
    }

    if (a2 == 758670896 || a2 == 758674992)
    {
      goto LABEL_126;
    }

    v25 = 759318337;
LABEL_208:
    if (a2 != v25)
    {
      return result;
    }

    goto LABEL_209;
  }

  if (a2 > 1953903667)
  {
    if (a2 > 2019964015)
    {
      if (a2 > 2037741170)
      {
        if (a2 > 2088265263)
        {
          if (a2 > 2088269359)
          {
            if (a2 == 2088269360)
            {
              goto LABEL_231;
            }

            v23 = 30258;
          }

          else
          {
            if (a2 == 2088265264)
            {
              goto LABEL_231;
            }

            v23 = 26162;
          }

          v26 = v23 | 0x7C780000;
LABEL_246:
          if (a2 != v26)
          {
            return result;
          }

          goto LABEL_247;
        }

        if (a2 > 2084075055)
        {
          if (a2 == 2084075056)
          {
            goto LABEL_126;
          }

          v25 = 2084718401;
          goto LABEL_208;
        }

        if (a2 != 2037741171)
        {
          v9 = 2084070960;
          goto LABEL_125;
        }
      }

      else
      {
        if (a2 <= 2021078127)
        {
          if (a2 > 2021077553)
          {
            if (a2 == 2021077554)
            {
              goto LABEL_235;
            }

            v8 = 13364;
            goto LABEL_192;
          }

          if (a2 != 2019964016)
          {
            v8 = 12848;
LABEL_192:
            v11 = v8 | 0x78770000;
            goto LABEL_234;
          }

LABEL_164:
          v4 = result[32];
          v5 = result[33];
          goto LABEL_261;
        }

        if (a2 > 2033463605)
        {
          if (a2 == 2033463606)
          {
LABEL_249:
            v4 = result[35];
            goto LABEL_250;
          }

          v21 = 2037741158;
        }

        else
        {
          if (a2 == 2021078128)
          {
            goto LABEL_164;
          }

          v21 = 2033463352;
        }

        if (a2 != v21)
        {
          return result;
        }
      }

      v4 = result[29];
      goto LABEL_226;
    }

    if (a2 > 2016686639)
    {
      if (a2 > 2016698738)
      {
        if (a2 > 2019963441)
        {
          if (a2 == 2019963442)
          {
            goto LABEL_235;
          }

          v19 = 13364;
        }

        else
        {
          if (a2 == 2016698739)
          {
            goto LABEL_198;
          }

          v19 = 12848;
        }

        v11 = v19 | 0x78660000;
        goto LABEL_234;
      }

      if (a2 <= 2016687155)
      {
        if (a2 != 2016686640)
        {
          v11 = 2016686642;
          goto LABEL_234;
        }

        goto LABEL_235;
      }

      if (a2 == 2016687156)
      {
        goto LABEL_235;
      }

      v14 = 2016687216;
      goto LABEL_163;
    }

    if (a2 <= 1983013175)
    {
      if (a2 == 1953903668)
      {
        goto LABEL_235;
      }

      if (a2 == 1982882104)
      {
        goto LABEL_188;
      }

      if (a2 != 1983000886)
      {
        return result;
      }

      v4 = 0;
LABEL_250:
      v5 = result[36];
      goto LABEL_261;
    }

    if (a2 <= 1999843441)
    {
      if (a2 == 1983013176)
      {
        goto LABEL_188;
      }

      v16 = 1983144248;
      goto LABEL_104;
    }

    if (a2 != 1999843442)
    {
      v6 = 2016567667;
      goto LABEL_149;
    }

    goto LABEL_164;
  }

  if (a2 <= 1915892015)
  {
    if (a2 > 1882468913)
    {
      if (a2 > 1885746227)
      {
        if (a2 > 1886859825)
        {
          if (a2 != 1886859826)
          {
            v10 = 1886860340;
            goto LABEL_230;
          }

LABEL_170:
          v4 = 0;
          goto LABEL_171;
        }

        if (a2 == 1885746228)
        {
          goto LABEL_231;
        }

        v17 = 1886859824;
      }

      else
      {
        if (a2 <= 1885745711)
        {
          if (a2 != 1882468914)
          {
            v10 = 1882469428;
            goto LABEL_230;
          }

          goto LABEL_170;
        }

        if (a2 == 1885745712)
        {
          goto LABEL_170;
        }

        v17 = 1885745714;
      }

LABEL_156:
      if (a2 != v17)
      {
        return result;
      }

      goto LABEL_170;
    }

    if (a2 <= 1751528499)
    {
      if (a2 == 1647534392)
      {
        v4 = result[4];
        if (v4)
        {
          v4 = result[32] != 0;
        }

        v5 = result[5];
        if (!v5)
        {
          goto LABEL_261;
        }

        v27 = result[33];
LABEL_239:
        v5 = v27 != 0;
        goto LABEL_261;
      }

      if (a2 != 1751527984 && a2 != 1751527986)
      {
        return result;
      }

      goto LABEL_130;
    }

    if (a2 <= 1815491697)
    {
      if (a2 != 1751528500)
      {
        v14 = 1815162994;
LABEL_163:
        if (a2 != v14)
        {
          return result;
        }

        goto LABEL_164;
      }

LABEL_130:
      if (result[17])
      {
        v24 = result[20];
LABEL_200:
        v5 = v24 != 0;
LABEL_202:
        v4 = 0;
        goto LABEL_261;
      }

LABEL_201:
      v5 = 0;
      goto LABEL_202;
    }

    if (a2 != 1815491698)
    {
      v17 = 1882468912;
      goto LABEL_156;
    }

    goto LABEL_249;
  }

  if (a2 > 1937126451)
  {
    if (a2 > 1952854577)
    {
      if (a2 > 1953903151)
      {
        if (a2 == 1953903152)
        {
          goto LABEL_235;
        }

        v11 = 1953903154;
        goto LABEL_234;
      }

      if (a2 == 1952854578)
      {
        goto LABEL_235;
      }

      v22 = 13364;
    }

    else
    {
      if (a2 <= 1949589874)
      {
        if (a2 == 1937126452)
        {
          goto LABEL_235;
        }

        v6 = 1949458803;
LABEL_149:
        if (a2 != v6)
        {
          return result;
        }

LABEL_198:
        if (result[11])
        {
          v24 = result[14];
          goto LABEL_200;
        }

        goto LABEL_201;
      }

      if (a2 == 1949589875)
      {
        goto LABEL_198;
      }

      v22 = 12848;
    }

    v11 = v22 | 0x74660000;
    goto LABEL_234;
  }

  if (a2 > 1936077361)
  {
    if (a2 <= 1937125935)
    {
      if (a2 != 1936077362)
      {
        v20 = 13364;
LABEL_184:
        v11 = v20 | 0x73660000;
        goto LABEL_234;
      }

LABEL_235:
      v4 = result[10];
      if (v4)
      {
        v4 = result[13] != 0;
      }

      v5 = result[11];
      if (!v5)
      {
        goto LABEL_261;
      }

      v27 = result[14];
      goto LABEL_239;
    }

    if (a2 == 1937125936)
    {
      goto LABEL_235;
    }

    v11 = 1937125938;
LABEL_234:
    if (a2 != v11)
    {
      return result;
    }

    goto LABEL_235;
  }

  if (a2 > 1932812658)
  {
    if (a2 == 1932812659)
    {
      goto LABEL_198;
    }

    v20 = 12848;
    goto LABEL_184;
  }

  if (a2 != 1915892016)
  {
    v6 = 1932681587;
    goto LABEL_149;
  }

LABEL_261:
  if (a3)
  {
    *a3 = v4;
  }

  if (a4)
  {
    *a4 = v5;
  }

  return result;
}

uint64_t VTMetalTransferSessionComposeImageWithAffineMatrix(const void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, void *cf)
{
  v14 = objc_autoreleasePoolPush();
  if (!a1 || (v15 = CFGetTypeID(a1), v15 != VTPixelTransferNodeGetTypeID()))
  {
    VTMetalTransferSessionComposeImageWithAffineMatrix_cold_5(&v35);
LABEL_57:
    v30 = v35;
    goto LABEL_49;
  }

  if (!a3)
  {
    VTMetalTransferSessionComposeImageWithAffineMatrix_cold_4(&v35);
    goto LABEL_57;
  }

  if (!cf || (v16 = CFGetTypeID(cf), v16 != CVPixelBufferGetTypeID()))
  {
    VTMetalTransferSessionComposeImageWithAffineMatrix_cold_3(&v35);
    goto LABEL_57;
  }

  v32 = a1;
  context = v14;
  v17 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a2 >= 1)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    LODWORD(v22) = a2;
    while (1)
    {
      if (v20)
      {
        CFRelease(v20);
      }

      v22 = (v22 - 1);
      v23 = *(a3 + 8 * v22);
      if (!v23 || (v24 = CFGetTypeID(v23), v24 != CVPixelBufferGetTypeID()))
      {
        VTMetalTransferSessionComposeImageWithAffineMatrix_cold_2(&v35);
        v28 = 0;
        v20 = 0;
        goto LABEL_51;
      }

      CFArrayAppendValue(Mutable, *(a3 + 8 * v22));
      if (a4)
      {
        break;
      }

      if (a5)
      {
        goto LABEL_17;
      }

      FigCFDictionarySetFloat32();
      v20 = 0;
LABEL_24:
      ++v19;
      if (v22 <= 0)
      {
        if (a8)
        {
          goto LABEL_29;
        }

        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        if (v21)
        {
          goto LABEL_30;
        }

        goto LABEL_37;
      }
    }

    v20 = CFDictionaryCreateMutable(v17, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetFloat32();
    FigCFDictionarySetFloat32();
    FigCFDictionarySetFloat32();
    FigCFDictionarySetFloat32();
    if (a5)
    {
      if (!v20)
      {
LABEL_17:
        v20 = CFDictionaryCreateMutable(v17, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      FigCFDictionarySetFloat32();
      FigCFDictionarySetFloat32();
      FigCFDictionarySetFloat32();
      FigCFDictionarySetFloat32();
      FigCFDictionarySetFloat32();
      FigCFDictionarySetFloat32();
    }

    FigCFDictionarySetFloat32();
    if (v20)
    {
      if (!v21)
      {
        v21 = CFArrayCreateMutable(v17, 0, MEMORY[0x1E695E9C0]);
        if (v19)
        {
          VTMetalTransferSessionComposeImageWithAffineMatrix_cold_1(&v35);
          v28 = 0;
LABEL_51:
          v29 = 0;
          v27 = 0;
          v30 = v35;
          if (Mutable)
          {
            goto LABEL_38;
          }

          goto LABEL_39;
        }
      }

      CFArrayAppendValue(v21, v20);
    }

    goto LABEL_24;
  }

  v20 = 0;
  v21 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  if (!a8)
  {
    goto LABEL_37;
  }

LABEL_29:
  v25 = CFDictionaryCreateMutable(v17, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetFloat();
  FigCFDictionarySetFloat();
  FigCFDictionarySetFloat();
  FigCFDictionarySetFloat();
  if (v21)
  {
LABEL_30:
    v28 = CFDictionaryCreateMutable(v17, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(v28, @"SourceAmendments", v21);
    if (!v25)
    {
      v27 = 0;
      v29 = 0;
      v26 = v21;
      goto LABEL_37;
    }

    if (v28)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  if (v25)
  {
LABEL_34:
    v28 = CFDictionaryCreateMutable(v17, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
LABEL_35:
    v29 = CFArrayCreateMutable(v17, 0, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(v29, v25);
    CFDictionarySetValue(v28, @"DestinationAmendments", v29);
    v26 = v21;
    v27 = v25;
  }

LABEL_37:
  v30 = VTMetalTransferSessionCompositeImageSync(v32, Mutable, cf, v28);
  v21 = v26;
  if (Mutable)
  {
LABEL_38:
    CFRelease(Mutable);
  }

LABEL_39:
  if (v28)
  {
    CFRelease(v28);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  v14 = context;
  if (v27)
  {
    CFRelease(v27);
  }

  if (v20)
  {
    CFRelease(v20);
  }

LABEL_49:
  objc_autoreleasePoolPop(v14);
  return v30;
}

uint64_t VTMetalTransferSessionFlush(uint64_t a1, CVOptionFlags a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = VTMetalTransferSessionDoFlush(a1, a2);
  objc_autoreleasePoolPop(v4);
  return v5;
}

uint64_t VTMetalTransferSessionDoFlush(uint64_t a1, CVOptionFlags a2)
{
  v4 = *(CMBaseObjectGetDerivedStorage() + 48);
  if (v4)
  {
    CVMetalTextureCacheFlush(v4, a2);
  }

  return VTPixelTransferNodeBaseDoFlush(a1, a2);
}

BOOL VTMetalTransferSessionIsPixelFormatTypeSupportedOnDestination(int a1)
{
  v2 = objc_autoreleasePoolPush();
  v4 = a1 != 2033463856 && a1 != 1714696752;
  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t vtSetPropertyOrArrayOfType(const void **a1, const void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v8 = *MEMORY[0x1E695E738];
    if (!FigCFEqual())
    {
      if (CFGetTypeID(a2) == a3)
      {
        if (FigCFEqual())
        {
          return 0;
        }
      }

      else
      {
        TypeID = CFArrayGetTypeID();
        if (TypeID != CFGetTypeID(a2))
        {
          return 4294954394;
        }

        Count = CFArrayGetCount(a2);
        if (Count >= 1)
        {
          v12 = Count;
          v13 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a2, v13);
            if (ValueAtIndex)
            {
              if (ValueAtIndex != v8 && CFGetTypeID(ValueAtIndex) != a3)
              {
                break;
              }
            }

            if (v12 == ++v13)
            {
              goto LABEL_16;
            }
          }

          result = 4294954394;
          goto LABEL_19;
        }
      }

LABEL_16:
      v15 = *a1;
      *a1 = a2;
      CFRetain(a2);
      if (v15)
      {
        CFRelease(v15);
      }

      result = 0;
LABEL_19:
      *a4 = 0;
      return result;
    }
  }

  result = *a1;
  if (*a1)
  {
    CFRelease(result);
    result = 0;
    *a1 = 0;
  }

  return result;
}

uint64_t RegisterVTMTSRenderPassDescriptor()
{
  result = _CFRuntimeRegisterClass();
  _MergedGlobals_393 = result;
  return result;
}

uint64_t vtMTSRenderPassDescriptorInit(uint64_t a1)
{
  bzero((a1 + 16), 0x890uLL);

  return VTInitializeFunctionConstants(a1 + 280);
}

void vtMTSRenderPassDescriptorFinalize(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 56) = 0;
  }

  v3 = *(a1 + 272);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 272) = 0;
  }

  v4 = *(a1 + 2200);
}

uint64_t RegisterVTMTSRenderPassBarrier()
{
  result = _CFRuntimeRegisterClass();
  qword_1EAD31F30 = result;
  return result;
}

unint64_t parseProResRAWMetadataExtension(unint64_t result, _OWORD *a2, _BYTE *a3)
{
  *a3 = 0;
  if (result)
  {
    v5 = result;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    BytePtr = CFDataGetBytePtr(result);
    result = CFDataGetLength(v5);
    if (result >= 8)
    {
      v7 = result;
      while (1)
      {
        v8 = bswap32(*BytePtr);
        if (v8 < 8 || v7 < v8)
        {
          return result;
        }

        v9 = bswap32(*(BytePtr + 1));
        if (v9 != 1886611821)
        {
          break;
        }

        if (v8 == 8)
        {
          return result;
        }

        v10 = BytePtr[8];
        if (!BytePtr[8] || v8 - 8 <= v10)
        {
          return result;
        }

        if (v10 != 13)
        {
          goto LABEL_14;
        }

        result = strncmp(BytePtr + 9, "com.apple.gdc", 0xDuLL);
        if (result)
        {
          goto LABEL_14;
        }

        if (v8 == 99)
        {
          v11 = &BytePtr[v10 + 9];
          LODWORD(v21) = bswap32(*v11);
          DWORD1(v21) = bswap32(v11[1]);
          v12 = v11 + 2;
          for (i = 2; i != 17; ++i)
          {
            v14 = *v12++;
            *(&v21 + i) = bswap32(v14);
          }

          DWORD1(v25) = bswap32(*v12);
          v15 = COERCE_FLOAT(bswap32(v12[1]));
          *(&v25 + 2) = v15;
          v16 = *(&v25 + 1) >= 0.0 && *(&v25 + 1) < v15;
          if (v16 && v15 <= 1.0)
          {
            v18 = *(v12 + 8);
            BYTE12(v25) = v18;
            if (v18 <= 1)
            {
              *a3 = 1;
              if (a2)
              {
                v19 = v24;
                a2[2] = v23;
                a2[3] = v19;
                a2[4] = v25;
                v20 = v22;
                *a2 = v21;
                a2[1] = v20;
              }

              return result;
            }
          }
        }

LABEL_15:
        if (v7 <= 7)
        {
          return result;
        }
      }

      if (v9 == 1701801316)
      {
        return result;
      }

LABEL_14:
      BytePtr += v8;
      v7 -= v8;
      goto LABEL_15;
    }
  }

  return result;
}

void VTMetalTransferSessionFinalize(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4 = *(DerivedStorage + 32);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 32) = 0;
    }

    v5 = *(DerivedStorage + 40);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 40) = 0;
    }

    v6 = *(DerivedStorage + 64);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 64) = 0;
    }

    v7 = *(DerivedStorage + 2152);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 2152) = 0;
    }

    *(DerivedStorage + 2000) = 0;
    v8 = CMBaseObjectGetDerivedStorage();
    v9 = *(v8 + 48);
    if (v9)
    {
      CFRelease(v9);
      *(v8 + 48) = 0;
    }

    v10 = *(v8 + 56);
    if (v10)
    {
      CFRelease(v10);
      *(v8 + 56) = 0;
    }

    v11 = *(v8 + 88);
    if (v11)
    {
      CFRelease(v11);
      *(v8 + 88) = 0;
    }

    *(v8 + 2016) = 0;
    *(v8 + 2096) = 0;

    *(v8 + 2104) = 0;
    *(v8 + 2112) = 0;

    *(v8 + 2120) = 0;
    *(v8 + 2024) = 0;

    *(v8 + 2040) = 0;
    *(v8 + 2032) = 0;

    *(v8 + 160) = 0;
    *(v8 + 168) = 0;

    *(v8 + 176) = 0;
    *(v8 + 184) = 0;

    *(v8 + 2128) = 0;
    *(v8 + 2136) = 0;
    v12 = *(DerivedStorage + 1784);
    if (v12)
    {
      CFRelease(v12);
      *(DerivedStorage + 1784) = 0;
    }

    v13 = *(DerivedStorage + 1816);
    if (v13)
    {
      CFRelease(v13);
      *(DerivedStorage + 1816) = 0;
    }

    v14 = *(DerivedStorage + 1824);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 1824) = 0;
    }

    v15 = *(DerivedStorage + 1832);
    if (v15)
    {
      CFRelease(v15);
      *(DerivedStorage + 1832) = 0;
    }

    v16 = *(DerivedStorage + 1840);
    if (v16)
    {
      CFRelease(v16);
      *(DerivedStorage + 1840) = 0;
    }

    v17 = *(DerivedStorage + 1856);
    if (v17)
    {
      CFRelease(v17);
      *(DerivedStorage + 1856) = 0;
    }

    v18 = *(DerivedStorage + 1864);
    if (v18)
    {
      CFRelease(v18);
      *(DerivedStorage + 1864) = 0;
    }

    v19 = *(DerivedStorage + 1872);
    if (v19)
    {
      CFRelease(v19);
      *(DerivedStorage + 1872) = 0;
    }

    v20 = *(DerivedStorage + 1880);
    if (v20)
    {
      CFRelease(v20);
      *(DerivedStorage + 1880) = 0;
    }

    v21 = *(DerivedStorage + 1888);
    if (v21)
    {
      CFRelease(v21);
      *(DerivedStorage + 1888) = 0;
    }

    v22 = *(DerivedStorage + 1896);
    if (v22)
    {
      CFRelease(v22);
      *(DerivedStorage + 1896) = 0;
    }

    v23 = *(DerivedStorage + 1904);
    if (v23)
    {
      CFRelease(v23);
      *(DerivedStorage + 1904) = 0;
    }

    v24 = *(DerivedStorage + 96);
    if (v24)
    {
      CFRelease(v24);
      *(DerivedStorage + 96) = 0;
    }

    v25 = *(DerivedStorage + 104);
    if (v25)
    {
      CFRelease(v25);
      *(DerivedStorage + 104) = 0;
    }

    v26 = *(DerivedStorage + 112);
    if (v26)
    {
      CFRelease(v26);
      *(DerivedStorage + 112) = 0;
    }

    v27 = *(DerivedStorage + 120);
    if (v27)
    {
      CFRelease(v27);
      *(DerivedStorage + 120) = 0;
    }

    v28 = *(DerivedStorage + 128);
    if (v28)
    {
      CFRelease(v28);
      *(DerivedStorage + 128) = 0;
    }

    v29 = *(DerivedStorage + 136);
    if (v29)
    {
      CFRelease(v29);
      *(DerivedStorage + 136) = 0;
    }

    v30 = *(DerivedStorage + 144);
    if (v30)
    {
      CFRelease(v30);
      *(DerivedStorage + 144) = 0;
    }

    v31 = *(DerivedStorage + 1912);
    if (v31)
    {
      CFRelease(v31);
      *(DerivedStorage + 1912) = 0;
    }

    v32 = *(DerivedStorage + 1920);
    if (v32)
    {
      CFRelease(v32);
      *(DerivedStorage + 1920) = 0;
    }
  }

  VTPixelTransferNodeBaseFinalize();

  objc_autoreleasePoolPop(v2);
}

__CFString *VTMetalTransferSessionCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v1, 0);
  v3 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFGetAllocator(DerivedStorage);
  CFStringAppendFormat(Mutable, 0, @"<VTMetalTransferSession %p [%p]>{}", DerivedStorage, v5);
  objc_autoreleasePoolPop(v3);
  return Mutable;
}

uint64_t VTMetalTransferSessionDoTransfer(const void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *MEMORY[0x1E695E480];
  v7 = MEMORY[0x1E695E9D8];
  v8 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = CFDictionaryCreateMutable(v6, 0, v7, v8);
  v11 = CFDictionaryCreateMutable(v6, 0, v7, v8);
  FigCFDictionarySetCFIndex();
  FigCFDictionarySetCFIndex();
  FigCFDictionarySetCFIndex();
  FigCFDictionarySetCFIndex();
  CFDictionarySetValue(Mutable, @"SourceAmendments", v10);
  FigCFDictionarySetCFIndex();
  FigCFDictionarySetCFIndex();
  FigCFDictionarySetCFIndex();
  FigCFDictionarySetCFIndex();
  CFDictionarySetValue(Mutable, @"DestinationAmendments", v11);
  v12 = VTMetalTransferSessionTransferImageSync(a1, a2, a4, Mutable);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v12;
}

uint64_t getEquivalentUncompressedPixelFormat(uint64_t a1)
{
  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  valuePtr = a1;
  if (DescriptionWithPixelFormatType)
  {
    Value = CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x1E69662D8]);
    if (Value)
    {
      v4 = Value;
      v5 = CFGetTypeID(Value);
      if (v5 == CFArrayGetTypeID())
      {
        CFArrayGetValueAtIndex(v4, 0);
        FigCFDictionaryGetInt32IfPresent();
      }
    }
  }

  return a1;
}

uint64_t vtCheckTextureLimits(void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    [a1 maxTextureWidth2D];
    [a1 maxTextureHeight2D];
  }

  return 0;
}

BOOL vtmtsGetIsCropped(uint64_t a1)
{
  v5 = 0;
  v4 = 0;
  v3 = 0;
  v2 = 0;
  vtmtsGetDstCropDimensions(a1, &v2 + 1, &v2, &v4, &v3, &v5 + 1, &v5);
  if (HIDWORD(v5) != HIDWORD(v2))
  {
    return 1;
  }

  result = 1;
  if (v5 == v2 && !v4)
  {
    return v3 != 0;
  }

  return result;
}

float vtmtsGetRotationAndScale(uint64_t a1, uint64_t a2, float *a3, float *a4)
{
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  FigCFDictionaryGetIntIfPresent();
  vtmtsGetDstCropDimensions(a1, &v12 + 1, &v12, &v14, &v13, &v15 + 1, &v15);
  vtmtsGetDstCropDimensions(a2, &v9 + 1, &v9, &v10 + 1, &v10, &v11 + 1, &v11);
  if (a3)
  {
    result = SHIDWORD(v9) / SHIDWORD(v12);
    *a3 = result;
  }

  if (a4)
  {
    result = v9 / v12;
    *a4 = result;
  }

  return result;
}

uint64_t vtmtsGetDstCropDimensions(uint64_t a1, _DWORD *a2, _DWORD *a3, int *a4, int *a5, int *a6, int *a7)
{
  if (a6)
  {
    v13 = *a6;
  }

  else
  {
    v13 = 0;
  }

  v21 = v13;
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0;
  }

  v20 = v14;
  if (a4)
  {
    v15 = *a4;
  }

  else
  {
    v15 = 0;
  }

  v19 = v15;
  if (a5)
  {
    v16 = *a5;
  }

  else
  {
    v16 = 0;
  }

  v18 = v16;
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  result = FigCFDictionaryGetInt32IfPresent();
  if (a2)
  {
    *a2 = v21;
  }

  if (a3)
  {
    *a3 = v20;
  }

  if (a4)
  {
    *a4 = v19;
  }

  if (a5)
  {
    *a5 = v18;
  }

  if (a6)
  {
    *a6 = v21;
  }

  if (a7)
  {
    *a7 = v20;
  }

  return result;
}

uint64_t getNativeTextureTypeForPixelFormat(int a1)
{
  result = 0;
  if (a1 > 1380410944)
  {
    if (a1 > 2016567666)
    {
      if (a1 <= 2021078067)
      {
        if (a1 > 2019963439)
        {
          if (a1 > 2019964015)
          {
            if (a1 == 2019964016 || a1 == 2021077552)
            {
              return 5;
            }

            v3 = 2021077554;
          }

          else
          {
            if (a1 == 2019963440 || a1 == 2019963442)
            {
              return 5;
            }

            v3 = 2019963956;
          }
        }

        else
        {
          if (a1 > 2016687155)
          {
            if (a1 == 2016687156 || a1 == 2016687216)
            {
              return 5;
            }

            v5 = 24947;
          }

          else
          {
            if (a1 == 2016567667 || a1 == 2016686640)
            {
              return 5;
            }

            v5 = 12850;
          }

          v3 = v5 | 0x78340000;
        }

        goto LABEL_135;
      }

      if (a1 > 2084070959)
      {
        if (a1 <= 2088265263)
        {
          if (a1 == 2084070960 || a1 == 2084075056)
          {
            return 5;
          }

          v3 = 2084718401;
        }

        else
        {
          if (a1 > 2088269359)
          {
            if (a1 == 2088269360)
            {
              return 5;
            }

            v4 = 30258;
          }

          else
          {
            if (a1 == 2088265264)
            {
              return 5;
            }

            v4 = 26162;
          }

          v3 = v4 | 0x7C780000;
        }

        goto LABEL_135;
      }

      if (a1 <= 2033463605)
      {
        if (a1 == 2021078068 || a1 == 2021078128)
        {
          return 5;
        }

        v3 = 2033463352;
        goto LABEL_135;
      }

      if (a1 != 2033463606)
      {
        if (a1 == 2037741158)
        {
          return 5;
        }

        v3 = 2037741171;
        goto LABEL_135;
      }
    }

    else if (a1 <= 1886859823)
    {
      if (a1 > 1882468911)
      {
        if (a1 > 1885745711)
        {
          if (a1 == 1885745712 || a1 == 1885745714)
          {
            return 5;
          }

          v3 = 1885746228;
        }

        else
        {
          if (a1 == 1882468912 || a1 == 1882468914)
          {
            return 5;
          }

          v3 = 1882469428;
        }

        goto LABEL_135;
      }

      if (a1 <= 1647719520)
      {
        if (a1 != 1380410945 && a1 != 1380411457)
        {
          v3 = 1647534392;
          goto LABEL_135;
        }

        return 1;
      }

      if (a1 != 1647719521)
      {
        if (a1 == 1815162994)
        {
          return 5;
        }

        if (a1 != 1815491698)
        {
          return result;
        }
      }
    }

    else
    {
      if (a1 <= 1949458802)
      {
        if (a1 > 1915892015)
        {
          if (a1 == 1915892016 || a1 == 1932681587)
          {
            return 5;
          }

          v3 = 1932812659;
        }

        else
        {
          if (a1 == 1886859824 || a1 == 1886859826)
          {
            return 5;
          }

          v3 = 1886860340;
        }

        goto LABEL_135;
      }

      if (a1 <= 1983000885)
      {
        if (a1 == 1949458803 || a1 == 1949589875)
        {
          return 5;
        }

        v3 = 1982882104;
        goto LABEL_135;
      }

      if (a1 > 1983144247)
      {
        if (a1 == 1983144248)
        {
          return 5;
        }

        v3 = 1999843442;
        goto LABEL_135;
      }

      if (a1 != 1983000886)
      {
        v3 = 1983013176;
        goto LABEL_135;
      }
    }

    return 4;
  }

  if (a1 > 758670895)
  {
    if (a1 > 796423727)
    {
      if (a1 > 875704933)
      {
        if (a1 > 875836533)
        {
          if (a1 == 875836534 || a1 == 1111970369)
          {
            return 5;
          }

          v3 = 1378955371;
        }

        else
        {
          if (a1 == 875704934 || a1 == 875704950)
          {
            return 5;
          }

          v3 = 875836518;
        }
      }

      else if (a1 > 846624120)
      {
        if (a1 == 846624121 || a1 == 875704422)
        {
          return 5;
        }

        v3 = 875704438;
      }

      else
      {
        if (a1 == 796423728 || a1 == 796423730)
        {
          return 5;
        }

        v3 = 846624102;
      }
    }

    else if (a1 > 762869297)
    {
      if (a1 > 792872768)
      {
        if (a1 == 792872769 || a1 == 796419632)
        {
          return 5;
        }

        v3 = 796419634;
      }

      else
      {
        if (a1 == 762869298 || a1 == 792225328)
        {
          return 5;
        }

        v3 = 792229424;
      }
    }

    else if (a1 > 762865199)
    {
      if (a1 == 762865200 || a1 == 762865202)
      {
        return 5;
      }

      v3 = 762869296;
    }

    else
    {
      if (a1 == 758670896 || a1 == 758674992)
      {
        return 5;
      }

      v3 = 759318337;
    }

    goto LABEL_135;
  }

  if (a1 <= 644232303)
  {
    if (a1 <= 641234479)
    {
      if (a1 > 640955503)
      {
        if ((a1 - 641230384) > 4 || ((1 << (a1 - 48)) & 0x15) == 0)
        {
          v3 = 640955504;
          goto LABEL_135;
        }

        return 5;
      }

      if (a1 == 32 || a1 == 590898736)
      {
        return 5;
      }

      v3 = 590902832;
LABEL_135:
      if (a1 != v3)
      {
        return result;
      }

      return 5;
    }

    if (a1 <= 641877824)
    {
      v6 = -641234480;
      goto LABEL_60;
    }

    if (a1 == 641877825)
    {
      return 5;
    }

    if (a1 != 642934849)
    {
      v3 = 643969848;
      goto LABEL_135;
    }

    return 1;
  }

  if (a1 <= 645424687)
  {
    if (a1 > 645279799)
    {
      if (a1 == 645279800)
      {
        return 5;
      }

      v3 = 645346162;
    }

    else
    {
      if (a1 == 644232304)
      {
        return 5;
      }

      v3 = 644624754;
    }

    goto LABEL_135;
  }

  if ((a1 - 645424688) <= 4 && ((1 << (a1 - 48)) & 0x15) != 0 || (a1 - 645428784) <= 4 && ((1 << (a1 - 48)) & 0x15) != 0)
  {
    return 5;
  }

  v6 = -645429040;
LABEL_60:
  v7 = a1 + v6;
  if (v7 <= 4 && ((1 << v7) & 0x15) != 0)
  {
    return 5;
  }

  return result;
}

uint64_t getSubsamplingFromPixelDescription(const __CFDictionary *a1, _DWORD *a2, _DWORD *a3)
{
  IntIfPresent = FigCFDictionaryGetIntIfPresent();
  result = FigCFDictionaryGetIntIfPresent();
  if (a1)
  {
    if (!IntIfPresent && result == 0)
    {
      result = CFDictionaryGetValue(a1, *MEMORY[0x1E69662D8]);
      if (result)
      {
        v9 = result;
        v10 = CFGetTypeID(result);
        result = CFArrayGetTypeID();
        if (v10 == result)
        {
          result = CFArrayGetCount(v9);
          if (result >= 1)
          {
            for (i = 0; i < result; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
              if (ValueAtIndex)
              {
                v13 = CFGetTypeID(ValueAtIndex);
                if (v13 == CFDictionaryGetTypeID())
                {
                  FigCFDictionaryGetIntIfPresent();
                  FigCFDictionaryGetIntIfPresent();
                }
              }

              result = CFArrayGetCount(v9);
            }
          }
        }
      }
    }
  }

  *a2 = 1;
  *a3 = 1;
  return result;
}

uint64_t vtmtsGetSrcCropDimensions(uint64_t result, _DWORD *a2, _DWORD *a3, int *a4, int *a5, int *a6, int *a7, uint64_t a8, _BYTE *a9)
{
  if (a6)
  {
    v16 = *a6;
  }

  else
  {
    v16 = 0;
  }

  v23 = v16;
  if (a7)
  {
    v17 = *a7;
  }

  else
  {
    v17 = 0;
  }

  v22 = v17;
  v18 = 0;
  v19 = 0;
  if (a4)
  {
    v19 = *a4;
  }

  v21 = v19;
  if (a5)
  {
    v18 = *a5;
  }

  v20 = v18;
  if (result)
  {
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetFloat32IfPresent();
    result = FigCFDictionaryGetFloat32IfPresent();
    if (a2)
    {
      *a2 = v23;
    }

    if (a3)
    {
      *a3 = v22;
    }

    if (a4)
    {
      *a4 = v21;
    }

    if (a5)
    {
      *a5 = v20;
    }

    if (a6)
    {
      *a6 = v23;
    }

    if (a7)
    {
      *a7 = v22;
    }

    if (a8)
    {
      if (a9)
      {
        *a9 = FigCFDictionaryGetCGFloatIfPresent();
        *a9 = FigCFDictionaryGetCGFloatIfPresent();
        *a9 = FigCFDictionaryGetCGFloatIfPresent();
        *a9 = FigCFDictionaryGetCGFloatIfPresent();
        *a9 = FigCFDictionaryGetCGFloatIfPresent();
        result = FigCFDictionaryGetCGFloatIfPresent();
        *a9 = result;
      }
    }
  }

  return result;
}

uint64_t vtmtsSetUpProcessingNeeds(void *a1, int a2, int a3, const __CFDictionary **a4, const __CFDictionary *a5, CFDictionaryRef theDict, const __CFDictionary *a7, int *a8, int *a9, int *a10, int a11, int a12, int a13, int a14, int a15, uint64_t a16, uint64_t a17, _DWORD *a18, int *a19, void *a20, void *a21, _BYTE *a22, BOOL *a23)
{
  v25 = 0;
  v174 = *MEMORY[0x1E69E9840];
  theDicta = *a4;
  v26 = *a8;
  v102 = *a9;
  v103 = *a10;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 1;
  v129 = 1;
  v128 = 1;
  v127 = 1;
  v126 = 0;
  v125 = 0;
  v28 = a2 != 1751528500 && (a2 & 0xFFFFFFFD) != 1751527984;
  cf = 0;
  if (a3 != 1751527984 && a3 != 1751527986 && a3 != 1751528500)
  {
    v25 = 1;
  }

  if (a20)
  {
    v105 = v25;
    v106 = v26;
    v104 = v28;
    getCharacteristicsFromPixelDescription(theDict, &v134 + 1, &v133 + 1, &v132 + 1, 0, 0, &v131 + 1, &v126 + 4);
    getCharacteristicsFromPixelDescription(a7, &v134, &v133, &v132, 0, 0, &v131, &v126);
    getSubsamplingFromPixelDescription(theDict, &v130, &v129);
    getSubsamplingFromPixelDescription(a7, &v128, &v127);
    v29 = a22;
    v30 = a17;
    if (a5 && *(a16 + 190) && theDicta)
    {
      v31 = 0;
      if (HIBYTE(v133))
      {
        v32 = 8;
      }

      else
      {
        v32 = 9;
      }

      v107 = v32 - (v133 != 0);
      key = *MEMORY[0x1E6965CE8];
      v113 = *MEMORY[0x1E6965EC8];
      v111 = *MEMORY[0x1E6965F30];
      v112 = *MEMORY[0x1E6965D88];
      v109 = *MEMORY[0x1E695F478];
      allocator = *MEMORY[0x1E695E480];
      v108 = *MEMORY[0x1E695E4D0];
      value = *MEMORY[0x1E695E4C0];
      v123 = vdupq_n_s64(9uLL);
      do
      {
        v33 = HIBYTE(v133);
        v119 = v31;
        v156 = 0;
        v157 = &v156;
        v158 = 0x2020000000;
        v159 = 0;
        v34 = CFDictionaryGetValue(theDicta, key);
        v35 = CFDictionaryGetValue(a5, key);
        v36 = CFDictionaryGetValue(theDicta, v113);
        v37 = CFDictionaryGetValue(a5, v113);
        v118 = CFDictionaryGetValue(theDicta, v112);
        v117 = CFDictionaryGetValue(a5, v112);
        v116 = CFDictionaryGetValue(theDicta, v111);
        v38 = CFDictionaryGetValue(a5, v111);
        v115 = v33 != 0;
        v152 = 0;
        v153 = &v152;
        v154 = 0x2020000000;
        v155 = 0;
        v151 = 0;
        v150 = 0;
        v149 = 0;
        v148 = 0;
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v40 = [a20 contents];
        v153[3] = v40;
        CFDictionarySetValue(Mutable, v109, v108);
        CFDictionarySetValue(Mutable, @"kCGPQEETF3DLut", value);
        CFDictionarySetValue(Mutable, @"kCGHLGSceneMapping3DLut", value);
        v41 = *(a16 + 32);
        if (v41)
        {
          v42 = CFGetTypeID(v41);
          if (v42 == CFNumberGetTypeID())
          {
            CFDictionarySetValue(Mutable, @"kCGPQEOTFOpticalScale", *(a16 + 32));
          }
        }

        v43 = *(a16 + 40);
        if (v43)
        {
          v44 = CFGetTypeID(v43);
          if (v44 == CFNumberGetTypeID())
          {
            CFDictionarySetValue(Mutable, @"kCGPQInvEOTFOpticalScale", *(a16 + 40));
          }
        }

        v45 = *(a16 + 48);
        if (v45)
        {
          v46 = CFGetTypeID(v45);
          if (v46 == CFNumberGetTypeID())
          {
            CFDictionarySetValue(Mutable, @"kCGHLGOETFOpticalScale", *(a16 + 48));
          }
        }

        v47 = *(a16 + 56);
        if (v47)
        {
          v48 = CFGetTypeID(v47);
          if (v48 == CFNumberGetTypeID())
          {
            CFDictionarySetValue(Mutable, @"kCGHLGInvOETFOpticalScale", *(a16 + 56));
          }
        }

        if ((v34 && v35 || v36 && v37 || v118 && v117 && v116 && v38 && FigCFEqual()) && FigCFEqual() || (v50 = VTCreateColorAttachments(v34, v36, v118, v116, 0, 0, 0, v35, v37, v117, v38, 0, 0, 0, 0, &v151, &v150), (*(v157 + 6) = v50) != 0) || (VTCreateColorSpacesFromDictionaries(v151, v150, &v149, &v148), (*(v157 + 6) = v51) != 0))
        {
          v49 = 0;
        }

        else
        {
          v52 = (CGColorSpaceUsesITUR_2100TF(v149) || CGColorSpaceUsesITUR_2100TF(v148)) && FigCFEqual() == 0;
          *a23 = v52;
          v49 = CGColorConversionInfoCreateFromList(Mutable, v149, kCGColorConversionTransformFromSpace, kCGRenderingIntentDefault, v148, 1, 0, 0);
          v143 = MEMORY[0x1E69E9820];
          v144 = 3221225472;
          v145 = __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke;
          v146 = &__block_descriptor_40_e132_B92__0_CGColorConversionIteratorData_Iqqqqqq___CGColorTRCData____CGColorMatrixData____CGColorNxMTransformData__8____CFDictionary__84l;
          v147 = &v125;
          v165 = MEMORY[0x1E69E9820];
          v166 = 3221225472;
          v167 = __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_2;
          v168 = &unk_1E72C91F0;
          v173 = v107;
          v171 = a17 + 1416;
          v172 = v115;
          v169 = &v152;
          v170 = &v156;
          v135 = MEMORY[0x1E69E9820];
          v136 = 3221225472;
          v137 = __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_3;
          v138 = &unk_1E72C9218;
          v142 = v107;
          v140 = a17 + 1416;
          v141 = v115;
          v139 = &v156;
          *v160 = MEMORY[0x1E69E9820];
          *&v160[8] = 3221225472;
          *&v160[16] = __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_4;
          *&v160[24] = &unk_1E72C9240;
          v164 = v107;
          v161 = v115;
          *&v160[32] = &v156;
          v162 = a17 + 1416;
          p_cf = &cf;
          CGColorConversionInfoIterateFunctionsWithCallbacks();
        }

        if (v151)
        {
          CFRelease(v151);
        }

        if (v150)
        {
          CFRelease(v150);
        }

        if (v149)
        {
          CFRelease(v149);
        }

        if (v148)
        {
          CFRelease(v148);
        }

        if (v49)
        {
          CFRelease(v49);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        v53 = *(v157 + 6);
        _Block_object_dispose(&v152, 8);
        _Block_object_dispose(&v156, 8);
        if (!v53 && v125 <= v107)
        {
          v29 = a22;
          v30 = a17;
          if (cf)
          {
            memset(v160, 0, 36);
            CGColorNxMTransformGetTransform();
            v57 = objc_alloc_init(MEMORY[0x1E69741C0]);
            [v57 setPixelFormat:125];
            [v57 setTextureType:7];
            [v57 setWidth:*&v160[20]];
            [v57 setHeight:*&v160[20]];
            [v57 setDepth:*&v160[20]];
            [v57 setMipmapLevelCount:1];
            v58 = [a1 newTextureWithDescriptor:v57];
            v59 = malloc_type_malloc(16 * *&v160[20] * *&v160[20] * *&v160[20], 0x100004052888210uLL);
            v60 = v59;
            v61 = *&v160[20];
            v62 = 16 * *&v160[20];
            if (*&v160[20])
            {
              v63 = 0;
              v64 = *&v160[28] + 8;
              v65 = v59 + 8;
              v66 = 16 * *&v160[20] * *&v160[20];
              do
              {
                v67 = 0;
                v68 = v65;
                v69 = v64;
                do
                {
                  v70 = v68;
                  v71 = v69;
                  v72 = v61;
                  do
                  {
                    *(v70 - 2) = *v71;
                    *(v70 - 1) = *(v71 - 1);
                    *v70 = *(v71 - 2);
                    v70[1] = 1065353216;
                    v71 += 3;
                    v70 += 4;
                    --v72;
                  }

                  while (v72);
                  ++v67;
                  v69 += 3 * v61;
                  v68 = (v68 + v62);
                }

                while (v67 != v61);
                ++v63;
                v64 += 12 * v61 * v61;
                v65 += v66;
              }

              while (v63 != v61);
            }

            v165 = 0;
            v166 = 0;
            v167 = 0;
            v168 = v61;
            v169 = v61;
            v170 = v61;
            [v58 replaceRegion:&v165 mipmapLevel:0 slice:0 withBytes:v60 bytesPerRow:? bytesPerImage:?];
            *a21 = v58;
            if (v60)
            {
              free(v60);
            }

            v29 = a22;
            v30 = a17;
          }

          goto LABEL_88;
        }

        v54 = 10;
        v55 = (a17 + 1468);
        v56 = xmmword_18FECDDB0;
        do
        {
          if (vmovn_s64(vcgtq_u64(v123, v56)).u8[0])
          {
            *(v55 - 13) = -1;
          }

          if (vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), *&v56)).i32[1])
          {
            *v55 = -1;
          }

          v56 = vaddq_s64(v56, vdupq_n_s64(2uLL));
          v55 += 26;
          v54 -= 2;
        }

        while (v54);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v31 = v119 + 1;
      }

      while (v119 != 2);
      v29 = a22;
      v30 = a17;
      if (v53)
      {
        vtmtsSetUpProcessingNeeds_cold_1(&v165);
        goto LABEL_183;
      }

LABEL_88:
      if (v125 >= 1)
      {
        *(v30 + 1367) = 1;
        *(v30 + 136) = 257;
        *v29 = 1;
      }
    }

    if (v106 != a12 || *(a16 + 186))
    {
      *(v30 + 132) = (*(v30 + 112) - 3) < 0xFFFFFFFE;
      if (HIBYTE(v134))
      {
        v73 = a11 == 2;
      }

      else
      {
        v73 = 0;
      }

      v74 = v104;
      if (v73)
      {
        v74 = 0;
      }

      *(v30 + 134) = v74;
      *(v30 + 135) = (HIBYTE(v133) | HIBYTE(v132)) != 0;
      if (*(a16 + 190))
      {
        goto LABEL_117;
      }

      *(v30 + 136) = v102 != 8;
      *(v30 + 137) = 1;
LABEL_99:
      *(v30 + 1367) = a13 != 8;
LABEL_117:
      *(v30 + 1369) = (v133 | v132) != 0;
      if (v134)
      {
        v79 = a15 == 2;
      }

      else
      {
        v79 = 0;
      }

      v80 = v105;
      if (v79)
      {
        v80 = 0;
      }

      *(v30 + 1370) = v80;
      *(v30 + 1380) = (*(v30 + 1360) - 3) < 0xFFFFFFFE;
      goto LABEL_123;
    }

    if (v102 != a13 || *(a16 + 185))
    {
      *(v30 + 132) = (*(v30 + 112) - 3) < 0xFFFFFFFE;
      if (HIBYTE(v134))
      {
        v75 = a11 == 2;
      }

      else
      {
        v75 = 0;
      }

      v76 = v104;
      if (v75)
      {
        v76 = 0;
      }

      *(v30 + 134) = v76;
      *(v30 + 135) = (HIBYTE(v133) | HIBYTE(v132)) != 0;
      if (*(a16 + 190))
      {
        goto LABEL_117;
      }

      *(v30 + 136) = v102 != 8;
      goto LABEL_99;
    }

    if (v103 != a14 || *(a16 + 184))
    {
      *(v30 + 132) = (*(v30 + 112) - 3) < 0xFFFFFFFE;
      if (HIBYTE(v134))
      {
        v77 = a11 == 2;
      }

      else
      {
        v77 = 0;
      }

      v78 = v104;
      if (v77)
      {
        v78 = 0;
      }

      *(v30 + 134) = v78;
      *(v30 + 135) = (HIBYTE(v133) | HIBYTE(v132)) != 0;
      goto LABEL_117;
    }

    if (a11 != a15)
    {
      *(v30 + 132) = 1;
      if (HIBYTE(v134))
      {
        v91 = a11 == 2;
      }

      else
      {
        v91 = 0;
      }

      v92 = !v91;
      *(v30 + 134) = v92;
      if (v134)
      {
        v93 = a15 == 2;
      }

      else
      {
        v93 = 0;
      }

      v94 = !v93;
      *(v30 + 1370) = v94;
      goto LABEL_169;
    }

    if (a2 == 1751527984 || a2 == 1751528500 || a2 == 1751527986)
    {
      if (a3 == 1751527984 || a3 == 1751527986 || a3 == 1751528500)
      {
        goto LABEL_170;
      }

      if (v134)
      {
        v97 = a11 == 2;
      }

      else
      {
        v97 = 0;
      }

      v98 = !v97;
      *(v30 + 1370) = v98;
      *(v30 + 1380) = (*(v30 + 1360) - 3) < 0xFFFFFFFE;
    }

    else
    {
      if (a3 != 1751527984 && a3 != 1751528500 && a3 != 1751527986)
      {
LABEL_170:
        v95 = v30;
        NativeTextureTypeForPixelFormat = getNativeTextureTypeForPixelFormat(a2);
        if (NativeTextureTypeForPixelFormat != getNativeTextureTypeForPixelFormat(a3) || v128 < v130 || v127 < v129)
        {
          v30 = v95;
          *(v95 + 132) = (*(v95 + 112) - 3) < 0xFFFFFFFE;
          *(v95 + 1380) = (*(v95 + 1360) - 3) < 0xFFFFFFFE;
          *(v95 + 1372) = HIDWORD(v126) != v126;
          v29 = a22;
LABEL_123:
          *v29 = 1;
          goto LABEL_124;
        }

        v29 = a22;
        v30 = v95;
        if (HIDWORD(v126) != v126)
        {
          *(v95 + 132) = (*(v95 + 112) - 3) < 0xFFFFFFFE;
LABEL_169:
          *(v30 + 1380) = (*(v30 + 1360) - 3) < 0xFFFFFFFE;
        }

LABEL_124:
        v81 = *(v30 + 135);
        if (*(v30 + 135))
        {
          if (*(v30 + 1369) && !v125)
          {
            *(v30 + 1416) = 40;
            v82 = v126;
            v83 = v30;
            vtmtsPopulateYCbCrToRGBMatrix(v103, a11, SHIDWORD(v126), &v165);
            vtmtsPopulateRGBToYCbCrMatrix(a14, a15, v82, v160);
            matrixMultiply(v160, &v165, (v83 + 1420));
            v29 = a22;
            *a22 = 1;
LABEL_131:
            if (v130 <= v128 && v129 <= v127)
            {
              v87 = 0;
            }

            else
            {
              v87 = 0;
              *v29 = 1;
            }

            goto LABEL_135;
          }

          *a18 = 0;
          *(v30 + 1416) = 40;
          v84 = v30;
          vtmtsPopulateYCbCrToRGBMatrix(v103, a11, SHIDWORD(v126), v30 + 1420);
          v30 = v84;
          v81 = 1;
          v29 = a22;
          *a22 = 1;
        }

        if (*(v30 + 1369))
        {
          v85 = v125 + v81;
          *a19 = v85;
          v86 = v30 + 52 * v85;
          *(v86 + 1416) = 40;
          vtmtsPopulateRGBToYCbCrMatrix(a14, a15, v126, v86 + 1420);
          v29 = a22;
        }

        goto LABEL_131;
      }

      *(v30 + 132) = 1;
      if (HIBYTE(v134))
      {
        v89 = a11 == 2;
      }

      else
      {
        v89 = 0;
      }

      v90 = !v89;
      *(v30 + 134) = v90;
    }

    v29 = a22;
    goto LABEL_124;
  }

  vtmtsSetUpProcessingNeeds_cold_2(&v165);
LABEL_183:
  v87 = v165;
LABEL_135:
  if (cf)
  {
    CFRelease(cf);
  }

  return v87;
}

void sub_18FD6A84C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

uint64_t vtCreateTexDescGlobalSample(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!a1)
  {
    vtCreateTexDescGlobalSample_cold_3(v8);
    return LODWORD(v8[0]);
  }

  if (!a3)
  {
    vtCreateTexDescGlobalSample_cold_2(v8);
    return LODWORD(v8[0]);
  }

  if ((a6 - 3) <= 0xFFFFFFFD)
  {
    vtCreateTexDescGlobalSample_cold_1(v8);
    return LODWORD(v8[0]);
  }

  v6 = 4294954391;
  if (a2 && a5)
  {
    v9 = 0;
    memset(&v8[1], 0, 32);
    MTLPixelFormatGetInfoForDevice();
    return 4294954391;
  }

  return v6;
}

uint64_t vtmtsBuildSource(void *a1, int *a2, int a3, uint64_t a4, uint64_t a5, const __CFArray *a6)
{
  v12 = *a2;
  EquivalentUncompressedPixelFormat = getEquivalentUncompressedPixelFormat(*a2);
  v14 = [a1 familyName];
  v15 = !v14 || ![v14 containsString:@"A8"] || a2[17] != 3;
  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (DescriptionWithPixelFormatType)
  {
    Value = CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x1E69662D8]);
    if (Value)
    {
      v18 = Value;
      v19 = CFGetTypeID(Value);
      if (v19 == CFArrayGetTypeID())
      {
        CFArrayGetValueAtIndex(v18, 0);
        FigCFDictionaryGetInt32IfPresent();
      }
    }
  }

  v20 = *a2;
  if (a4)
  {
    v21 = (a4 + 160 * a2[6]);
    *v21 = v20;
    v21[29] = 0;
  }

  result = 4294954391;
  if (v20 <= 1647534391)
  {
    if (v20 > 758670895)
    {
      if (v20 <= 875704421)
      {
        if (v20 > 792229423)
        {
          if (v20 > 796423727)
          {
            if (v20 > 846624101)
            {
              if (v20 != 846624102 && v20 != 846624121)
              {
                return result;
              }

              if (!a4)
              {
                return 0;
              }

              if (a2[17] == 2 || a3 == 0)
              {
                v35 = 1;
              }

              else
              {
                v35 = 2;
              }

              if (v15)
              {
                v36 = 562;
              }

              else
              {
                v36 = 0;
              }

              if (v15)
              {
                v37 = 241;
              }

              else
              {
                v37 = 0;
              }

              v112 = 48;
              *&v111[1] = 0x100000000;
              *(&v111[1] + 1) = 0x2E00000000;
              *&v111[0] = 30;
              *(&v111[0] + 1) = 70;
              v110[2] = 0x100000000;
              v110[3] = 0;
              v110[0] = 33;
              v110[1] = 53;
              v109 = 0;
              v71 = 103;
              *v108 = 0x400000000;
              *v107 = 0u;
              v106 = 0;
              *&v105[1] = 0u;
              goto LABEL_270;
            }

            if (v20 == 796423728)
            {
              goto LABEL_297;
            }

            v41 = 30258;
          }

          else
          {
            if (v20 <= 796419631)
            {
              if (v20 != 792229424)
              {
                v30 = 792872769;
                goto LABEL_338;
              }

              goto LABEL_248;
            }

            if (v20 == 796419632)
            {
              goto LABEL_297;
            }

            v41 = 26162;
          }

          v33 = v41 | 0x2F780000;
          goto LABEL_415;
        }

        if (v20 > 762865201)
        {
          if (v20 > 762869297)
          {
            if (v20 == 762869298)
            {
              goto LABEL_416;
            }

            v24 = 792225328;
LABEL_247:
            if (v20 != v24)
            {
              return result;
            }

            goto LABEL_248;
          }

          if (v20 == 762865202)
          {
            goto LABEL_416;
          }

          v40 = 30256;
          goto LABEL_241;
        }

        if (v20 <= 759318336)
        {
          if (v20 == 758670896)
          {
            goto LABEL_248;
          }

          v24 = 758674992;
          goto LABEL_247;
        }

        if (v20 != 759318337)
        {
          v40 = 26160;
LABEL_241:
          v29 = v40 | 0x2D780000;
          goto LABEL_296;
        }

LABEL_339:
        if (!a4)
        {
          return 0;
        }

        if (a3)
        {
          v35 = 2;
        }

        else
        {
          v35 = 1;
        }

        v87 = 123;
        if (v12 != EquivalentUncompressedPixelFormat)
        {
          v87 = 0;
        }

        v88 = 53;
        if (v12 != EquivalentUncompressedPixelFormat)
        {
          v88 = 0;
        }

        v112 = 17;
        *(&v111[1] + 1) = 0xF00000000;
        v89 = 0uLL;
        *(v111 + 8) = 0u;
        v90 = 80;
        v91 = 0x800000001;
        goto LABEL_510;
      }

      if (v20 <= 1278226533)
      {
        if (v20 <= 875836517)
        {
          if (v20 <= 875704933)
          {
            if (v20 == 875704422)
            {
              goto LABEL_248;
            }

            v24 = 875704438;
            goto LABEL_247;
          }

          if (v20 != 875704934)
          {
            v65 = 875704950;
LABEL_217:
            if (v20 != v65)
            {
              return result;
            }

            goto LABEL_218;
          }

          goto LABEL_218;
        }

        if (v20 <= 1111970368)
        {
          if (v20 != 875836518)
          {
            v28 = 875836534;
LABEL_101:
            if (v20 != v28)
            {
              return result;
            }
          }

LABEL_102:
          if (!a4)
          {
            return 0;
          }

          if (a2[17] == 2 || a3 == 0)
          {
            v35 = 1;
          }

          else
          {
            v35 = 2;
          }

          if (v15)
          {
            v36 = 503;
          }

          else
          {
            v36 = 0;
          }

          if (v15)
          {
            v37 = 542;
          }

          else
          {
            v37 = 0;
          }

          v38 = 13;
          if (v12 != EquivalentUncompressedPixelFormat)
          {
            v38 = 0;
          }

          v112 = 52;
          *&v111[1] = 0x100000001;
          *(&v111[1] + 1) = 0x3200000000;
          *&v111[0] = 10;
          *(&v111[0] + 1) = 30;
          v110[2] = 0x100000001;
          v110[3] = 0;
          v110[0] = v38;
          v110[1] = 33;
          v109 = 0;
          v39 = 0uLL;
          goto LABEL_410;
        }

        if (v20 == 1111970369)
        {
          goto LABEL_339;
        }

        if (v20 != 1278226488)
        {
          return result;
        }

        goto LABEL_234;
      }

      if (v20 <= 1378955370)
      {
        if (v20 <= 1278226735)
        {
          if (v20 == 1278226534)
          {
            if (!a4)
            {
              return result;
            }

            v110[2] = 0;
            v110[3] = 0;
            v112 = 5;
            *(&v111[1] + 1) = 0x300000000;
            v60 = 0uLL;
            *(v111 + 8) = 0u;
            v61 = 55;
            goto LABEL_474;
          }

          v32 = 1278226536;
          goto LABEL_205;
        }

        if (v20 != 1278226736)
        {
          v25 = 1278226742;
LABEL_198:
          if (v20 != v25 || !a4)
          {
            return result;
          }

          v110[2] = 0;
          v110[3] = 0;
          v112 = 5;
          *(&v111[1] + 1) = 0x300000000;
          v60 = 0uLL;
          *(v111 + 8) = 0u;
          v61 = 20;
          goto LABEL_474;
        }

        goto LABEL_448;
      }

      if (v20 <= 1380411456)
      {
        if (v20 != 1378955371)
        {
          if (v20 != 1380410945)
          {
            return result;
          }

          if (!a4)
          {
            return 0;
          }

          v110[2] = 0;
          v110[3] = 0;
          v112 = 17;
          *(&v111[1] + 1) = 0xF00000000;
          v60 = 0uLL;
          *(v111 + 8) = 0u;
          v61 = 125;
          goto LABEL_474;
        }

        if (!a4)
        {
          return 0;
        }

        if (a3)
        {
          v35 = 2;
        }

        else
        {
          v35 = 1;
        }

        v112 = 0;
        v53 = 0uLL;
        memset(v111, 0, sizeof(v111));
        v101 = 0x1C00000000;
        goto LABEL_480;
      }

      if (v20 != 1380411457)
      {
        if (v20 == 1647392369)
        {
          return appendSrcTextureDescriptions_4PlaneSample(a2, a4, a6);
        }

        return result;
      }

      goto LABEL_454;
    }

    if (v20 <= 642527535)
    {
      if (v20 <= 641230385)
      {
        if (v20 > 590898735)
        {
          if (v20 > 640955503)
          {
            if (v20 == 640955504)
            {
              goto LABEL_325;
            }

            v24 = 641230384;
          }

          else
          {
            if (v20 == 590898736)
            {
              goto LABEL_248;
            }

            v24 = 590902832;
          }

          goto LABEL_247;
        }

        if (!v20)
        {
          if (!a4)
          {
            return 0;
          }

          result = 0;
          if (a3)
          {
            v103 = 2;
          }

          else
          {
            v103 = 1;
          }

          v104 = a4 + 160 * a2[6];
          *(v104 + 112) = v103;
          *(v104 + 120) = 1;
          *(v104 + 124) = 0;
          *(v104 + 126) = 0;
          *(v104 + 132) = 0;
          *(v104 + 134) = 0;
          *(a4 + 1368) = 0;
          return result;
        }

        if (v20 == 32)
        {
          if (!a4)
          {
            return 0;
          }

          if (a3)
          {
            v35 = 2;
          }

          else
          {
            v35 = 1;
          }

          v112 = 13;
          *(&v111[1] + 1) = 0xB00000002;
          *(v111 + 8) = 0u;
          v110[3] = 0x900000002;
          *&v111[0] = 70;
          *&v110[1] = 0u;
          v110[0] = 53;
          v109 = 0;
          *v108 = 0x400000000;
          *v107 = 0u;
          v106 = 2;
          *&v105[1] = 0u;
          v105[0] = 123;
          goto LABEL_511;
        }

        if (v20 != 40)
        {
          return result;
        }

LABEL_234:
        if (!a4)
        {
          return result;
        }

        if (a3)
        {
          v35 = 2;
        }

        else
        {
          v35 = 1;
        }

        v110[2] = 0;
        v110[3] = 0;
        v112 = 5;
        *(&v111[1] + 1) = 0x300000000;
        v53 = 0uLL;
        *(v111 + 8) = 0u;
        v66 = 10;
LABEL_459:
        *&v111[0] = v66;
        goto LABEL_460;
      }

      if (v20 <= 641234483)
      {
        if (v20 > 641234479)
        {
          if (v20 == 641234480)
          {
            goto LABEL_248;
          }

          v65 = 641234482;
          goto LABEL_217;
        }

        if (v20 == 641230386)
        {
LABEL_218:
          if (!a4)
          {
            return 0;
          }

          if (a2[17] == 2 || a3 == 0)
          {
            v35 = 1;
          }

          else
          {
            v35 = 2;
          }

          if (v15)
          {
            v36 = 502;
          }

          else
          {
            v36 = 0;
          }

          if (v15)
          {
            v37 = 541;
          }

          else
          {
            v37 = 0;
          }

          v110[2] = 0;
          v110[3] = 0;
          v112 = 52;
          *&v111[1] = 0x100000001;
          *(&v111[1] + 1) = 0x3200000000;
          v68 = 30;
          v69 = 10;
          goto LABEL_409;
        }

        v28 = 641230388;
        goto LABEL_101;
      }

      if (v20 <= 642527287)
      {
        if (v20 != 641234484)
        {
          v30 = 641877825;
          goto LABEL_338;
        }

        goto LABEL_102;
      }

      if (v20 == 642527288)
      {
        goto LABEL_234;
      }

      v32 = 642527336;
LABEL_205:
      if (v20 != v32 || !a4)
      {
        return result;
      }

      if (a3)
      {
        v35 = 2;
      }

      else
      {
        v35 = 1;
      }

      v110[2] = 0;
      v110[3] = 0;
      v112 = 5;
      *(&v111[1] + 1) = 0x300000000;
      v53 = 0uLL;
      *(v111 + 8) = 0u;
      v66 = 25;
      goto LABEL_459;
    }

    if (v20 <= 645424689)
    {
      if (v20 <= 644232303)
      {
        if (v20 <= 642934848)
        {
          if (v20 != 642527536)
          {
            v25 = 642527542;
            goto LABEL_198;
          }

LABEL_448:
          if (!a4)
          {
            return result;
          }

          if (a3)
          {
            v35 = 2;
          }

          else
          {
            v35 = 1;
          }

          v110[2] = 0;
          v110[3] = 0;
          v112 = 5;
          *(&v111[1] + 1) = 0x300000000;
          v53 = 0uLL;
          *(v111 + 8) = 0u;
          v66 = 20;
          goto LABEL_459;
        }

        if (v20 == 642934849)
        {
LABEL_454:
          if (!a4)
          {
            return 0;
          }

          if (a3)
          {
            v35 = 2;
          }

          else
          {
            v35 = 1;
          }

          v110[2] = 0;
          v110[3] = 0;
          v112 = 17;
          *(&v111[1] + 1) = 0xF00000000;
          v53 = 0uLL;
          *(v111 + 8) = 0u;
          v66 = 115;
          goto LABEL_459;
        }

        v42 = 643969848;
LABEL_289:
        if (v20 != v42)
        {
          return result;
        }

        goto LABEL_350;
      }

      if (v20 <= 645346161)
      {
        if (v20 == 644232304)
        {
          goto LABEL_325;
        }

        v42 = 644624754;
        goto LABEL_289;
      }

      if (v20 == 645346162)
      {
        goto LABEL_350;
      }

      v43 = 26160;
LABEL_295:
      v29 = v43 | 0x26780000;
LABEL_296:
      if (v20 != v29)
      {
        return result;
      }

      goto LABEL_297;
    }

    if (v20 > 645428787)
    {
      if (v20 <= 645429041)
      {
        if (v20 == 645428788)
        {
          goto LABEL_309;
        }

        v43 = 30512;
        goto LABEL_295;
      }

      if (v20 == 645429042)
      {
        goto LABEL_416;
      }

      v31 = 30516;
    }

    else
    {
      if (v20 > 645428783)
      {
        if (v20 != 645428784)
        {
          v33 = 645428786;
          goto LABEL_415;
        }

        goto LABEL_297;
      }

      if (v20 == 645424690)
      {
        goto LABEL_416;
      }

      v31 = 26164;
    }

    v26 = v31 | 0x26780000;
    goto LABEL_308;
  }

  if (v20 > 1953903151)
  {
    if (v20 <= 2019964015)
    {
      if (v20 <= 2016686639)
      {
        if (v20 <= 1983013175)
        {
          if (v20 > 1953903667)
          {
            if (v20 != 1953903668)
            {
              if (v20 != 1983000886)
              {
                return result;
              }

              if (!a4)
              {
                return 0;
              }

              v110[2] = 0;
              v110[3] = 0;
              v112 = 48;
              *&v111[1] = 0x100000000;
              *(&v111[1] + 1) = 0x2E00000000;
              v79 = 110;
              v80 = 60;
LABEL_499:
              *&v111[0] = v80;
              *(&v111[0] + 1) = v79;
              v60 = 0uLL;
              goto LABEL_500;
            }
          }

          else if (v20 != 1953903152)
          {
            v23 = 1953903154;
            goto LABEL_444;
          }

LABEL_445:
          if (!a4)
          {
            return 0;
          }

          v110[2] = 0;
          v110[3] = 0;
          v112 = 52;
          *&v111[1] = 0x100000001;
          *(&v111[1] + 1) = 0x3200000000;
          v79 = 60;
          v80 = 20;
          goto LABEL_499;
        }

        if (v20 <= 1999843441)
        {
          if (v20 != 1983013176 && v20 != 1983144248)
          {
            return result;
          }

          if (a4)
          {
            if (a2[17] == 2 || a3 == 0)
            {
              v45 = 1;
            }

            else
            {
              v45 = 2;
            }

            v46 = a2;
            v47 = a4;
            v48 = a5;
            v49 = a6;
            v50 = 10;
            v51 = 30;
            v52 = 10;
LABEL_436:
            result = appendSrcTextureDescriptions_3PlaneSample(v46, v45, v47, v48, v49, v50, v51, v52);
            if (!result)
            {
              return result;
            }

            return 4294954391;
          }

          return 0;
        }

        if (v20 != 1999843442)
        {
          v92 = 2016567667;
          goto LABEL_433;
        }

        goto LABEL_350;
      }

      if (v20 <= 2016698738)
      {
        if (v20 <= 2016687155)
        {
          if (v20 != 2016686640)
          {
            if (v20 != 2016686642)
            {
              return result;
            }

            goto LABEL_394;
          }

LABEL_153:
          if (!a4)
          {
            return 0;
          }

          if (a2[17] == 2 || a3 == 0)
          {
            v35 = 1;
          }

          else
          {
            v35 = 2;
          }

          v55 = !v15;
          if (v15)
          {
            v36 = 505;
          }

          else
          {
            v36 = 0;
          }

          v56 = 543;
          goto LABEL_405;
        }

        if (v20 != 2016687156)
        {
          if (v20 != 2016687216)
          {
            return result;
          }

LABEL_325:
          if (a4)
          {
            if (a2[17] == 2 || a3 == 0)
            {
              v35 = 1;
            }

            else
            {
              v35 = 2;
            }

            if (v15)
            {
              v36 = 504;
            }

            else
            {
              v36 = 0;
            }

            v112 = 17;
            *(&v111[1] + 1) = 0xF00000000;
            *(v111 + 8) = 0u;
            *&v111[0] = 90;
            memset(v110, 0, sizeof(v110));
            v109 = 0;
            *v108 = 0x400000000;
            *v107 = 0u;
            v106 = 0;
            memset(v105, 0, sizeof(v105));
            v83 = a2;
            v84 = a4;
            v85 = a5;
            v86 = a6;
            goto LABEL_513;
          }

          return 0;
        }

LABEL_383:
        if (!a4)
        {
          return 0;
        }

        if (a2[17] == 2 || a3 == 0)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        v55 = !v15;
        if (v15)
        {
          v36 = 507;
        }

        else
        {
          v36 = 0;
        }

        v56 = 545;
        goto LABEL_405;
      }

      if (v20 <= 2019963441)
      {
        if (v20 == 2016698739)
        {
          goto LABEL_434;
        }

        v27 = 2019963440;
        goto LABEL_152;
      }

      if (v20 != 2019963442)
      {
        v81 = 2019963956;
LABEL_382:
        if (v20 != v81)
        {
          return result;
        }

        goto LABEL_383;
      }

      goto LABEL_394;
    }

    if (v20 <= 2037741170)
    {
      if (v20 <= 2021078127)
      {
        if (v20 <= 2021077553)
        {
          if (v20 == 2019964016)
          {
            goto LABEL_325;
          }

          v27 = 2021077552;
LABEL_152:
          if (v20 != v27)
          {
            return result;
          }

          goto LABEL_153;
        }

        if (v20 != 2021077554)
        {
          v81 = 2021078068;
          goto LABEL_382;
        }

LABEL_394:
        if (!a4)
        {
          return 0;
        }

        if (a2[17] == 2 || a3 == 0)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        v55 = !v15;
        if (v15)
        {
          v36 = 506;
        }

        else
        {
          v36 = 0;
        }

        v56 = 544;
LABEL_405:
        if (v55)
        {
          v37 = 0;
        }

        else
        {
          v37 = v56;
        }

        v110[2] = 0;
        v110[3] = 0;
        v112 = 52;
        *&v111[1] = 0x100000001;
        *(&v111[1] + 1) = 0x3200000000;
        v68 = 60;
        v69 = 20;
LABEL_409:
        *&v111[0] = v69;
        *(&v111[0] + 1) = v68;
        v39 = 0uLL;
        *v110 = 0u;
        v109 = 0;
LABEL_410:
        *v108 = 0x400000000;
        *v107 = v39;
        v106 = 0;
        v105[2] = 0;
        *v105 = v39;
        goto LABEL_411;
      }

      if (v20 <= 2033463605)
      {
        if (v20 == 2021078128)
        {
          goto LABEL_325;
        }

        if (v20 != 2033463352)
        {
          return result;
        }

        if (!a4)
        {
          return 0;
        }

        if (a3)
        {
          v35 = 2;
        }

        else
        {
          v35 = 1;
        }

        v112 = 13;
        *(&v111[1] + 1) = 0xB00000002;
        v53 = 0uLL;
        *(v111 + 8) = 0u;
        v110[3] = 0x900000002;
        *&v111[0] = 70;
        goto LABEL_481;
      }

      if (v20 != 2033463606)
      {
        if (v20 != 2037741158)
        {
          return result;
        }

        goto LABEL_360;
      }

      if (!a4)
      {
        return 0;
      }

      v110[2] = 0;
      v110[3] = 0;
      v112 = 13;
      v62 = 0xB00000002;
      goto LABEL_473;
    }

    if (v20 <= 2088265263)
    {
      if (v20 <= 2084075055)
      {
        if (v20 == 2037741171)
        {
LABEL_360:
          if (!a4)
          {
            return 0;
          }

          if (a2[17] == 2 || a3 == 0)
          {
            v35 = 1;
          }

          else
          {
            v35 = 2;
          }

          if (v15)
          {
            v36 = 501;
          }

          else
          {
            v36 = 0;
          }

          if (v15)
          {
            v37 = 240;
          }

          else
          {
            v37 = 0;
          }

          v94 = 103;
          if (v12 != EquivalentUncompressedPixelFormat)
          {
            v94 = 0;
          }

          v95 = 33;
          if (v12 != EquivalentUncompressedPixelFormat)
          {
            v95 = 0;
          }

          v96 = 30;
          if (v12 != EquivalentUncompressedPixelFormat)
          {
            v96 = 0;
          }

          v112 = 44;
          *&v111[1] = 0x100000000;
          *(&v111[1] + 1) = 0x2A00000000;
          *&v111[0] = v96;
          *(&v111[0] + 1) = 70;
          v110[2] = 0x100000000;
          v110[3] = 0;
          v110[0] = v95;
          v110[1] = 53;
          v109 = 0;
          *v108 = 0x400000000;
          *v107 = 0u;
          v106 = 0;
          *&v105[1] = 0u;
          v105[0] = v94;
          goto LABEL_411;
        }

        v24 = 2084070960;
        goto LABEL_247;
      }

      if (v20 != 2084075056)
      {
        v30 = 2084718401;
LABEL_338:
        if (v20 != v30)
        {
          return result;
        }

        goto LABEL_339;
      }

LABEL_248:
      if (!a4)
      {
        return 0;
      }

      if (a2[17] == 2 || a3 == 0)
      {
        v35 = 1;
      }

      else
      {
        v35 = 2;
      }

      if (v15)
      {
        v36 = 500;
      }

      else
      {
        v36 = 0;
      }

      if (v15)
      {
        v37 = 540;
      }

      else
      {
        v37 = 0;
      }

      if (v12 == EquivalentUncompressedPixelFormat)
      {
        v71 = 53;
      }

      else
      {
        v71 = 0;
      }

      if (v12 == EquivalentUncompressedPixelFormat)
      {
        v72 = 70;
      }

      else
      {
        v72 = 0;
      }

      v73 = 13;
      if (v12 != EquivalentUncompressedPixelFormat)
      {
        v73 = 0;
      }

      v112 = 52;
      *&v111[1] = 0x100000001;
      *(&v111[1] + 1) = 0x3200000000;
      *&v111[0] = 10;
      *(&v111[0] + 1) = 30;
      v110[2] = 0x100000001;
      v110[3] = 0;
      v110[0] = v73;
      v110[1] = 33;
      v109 = 2;
      v107[1] = 70;
      *v108 = 0x400000001;
      v107[0] = v72;
      v106 = 0;
      v105[1] = 53;
      v105[2] = 0x200000001;
LABEL_270:
      v105[0] = v71;
LABEL_411:
      v83 = a2;
      v84 = a4;
      v85 = a5;
      v86 = a6;
LABEL_428:
      v100 = 3;
      goto LABEL_514;
    }

    if (v20 > 2088269359)
    {
      if (v20 != 2088269360)
      {
        v57 = 30258;
        goto LABEL_414;
      }
    }

    else if (v20 != 2088265264)
    {
      v57 = 26162;
LABEL_414:
      v33 = v57 | 0x7C780000;
LABEL_415:
      if (v20 != v33)
      {
        return result;
      }

      goto LABEL_416;
    }

LABEL_297:
    if (!a4)
    {
      return 0;
    }

    if (a2[17] == 2 || a3 == 0)
    {
      v35 = 1;
    }

    else
    {
      v35 = 2;
    }

    v76 = !v15;
    v77 = 546;
    goto LABEL_424;
  }

  if (v20 > 1886859825)
  {
    if (v20 > 1937125935)
    {
      if (v20 > 1949589874)
      {
        if (v20 > 1952854577)
        {
          if (v20 == 1952854578)
          {
            goto LABEL_445;
          }

          v59 = 13364;
        }

        else
        {
          if (v20 == 1949589875)
          {
            goto LABEL_434;
          }

          v59 = 12848;
        }

        v23 = v59 | 0x74660000;
      }

      else
      {
        if (v20 > 1937126451)
        {
          if (v20 == 1937126452)
          {
            goto LABEL_445;
          }

          v92 = 1949458803;
          goto LABEL_433;
        }

        if (v20 == 1937125936)
        {
          goto LABEL_445;
        }

        v23 = 1937125938;
      }
    }

    else
    {
      if (v20 <= 1932812658)
      {
        if (v20 <= 1915892015)
        {
          if (v20 != 1886859826)
          {
            v26 = 1886860340;
            goto LABEL_308;
          }

LABEL_416:
          if (!a4)
          {
            return 0;
          }

          if (a2[17] == 2 || a3 == 0)
          {
            v35 = 1;
          }

          else
          {
            v35 = 2;
          }

          v76 = !v15;
          v77 = 547;
LABEL_424:
          if (v76)
          {
            v37 = 0;
          }

          else
          {
            v37 = v77;
          }

          v112 = 0;
          memset(v111, 0, sizeof(v111));
          memset(v110, 0, sizeof(v110));
          v109 = 0;
          *v108 = 0x400000000;
          *v107 = 0u;
          v106 = 0;
          memset(v105, 0, sizeof(v105));
          v83 = a2;
          v84 = a4;
          v85 = a5;
          v86 = a6;
          v36 = 0;
          goto LABEL_428;
        }

        if (v20 != 1915892016)
        {
          v92 = 1932681587;
LABEL_433:
          if (v20 != v92)
          {
            return result;
          }

LABEL_434:
          if (a4)
          {
            v46 = a2;
            v45 = 2;
            v47 = a4;
            v48 = a5;
            v49 = a6;
            v50 = 20;
            v51 = 60;
            v52 = 20;
            goto LABEL_436;
          }

          return 0;
        }

        if (!a4)
        {
          return 0;
        }

        if (a3)
        {
          v35 = 2;
        }

        else
        {
          v35 = 1;
        }

        v112 = 0;
        v53 = 0uLL;
        memset(v111, 0, sizeof(v111));
        v101 = 0x2100000000;
LABEL_480:
        v110[3] = v101;
LABEL_481:
        *&v110[1] = v53;
        v102 = 53;
LABEL_492:
        v110[0] = v102;
        goto LABEL_461;
      }

      if (v20 > 1936077361)
      {
        if (v20 == 1936077362)
        {
          goto LABEL_445;
        }

        v58 = 13364;
      }

      else
      {
        if (v20 == 1932812659)
        {
          goto LABEL_434;
        }

        v58 = 12848;
      }

      v23 = v58 | 0x73660000;
    }

LABEL_444:
    if (v20 != v23)
    {
      return result;
    }

    goto LABEL_445;
  }

  if (v20 > 1815491697)
  {
    if (v20 <= 1885745711)
    {
      if (v20 <= 1882468913)
      {
        if (v20 == 1815491698)
        {
          if (!a4)
          {
            return 0;
          }

          v112 = 17;
          *(&v111[1] + 1) = 0xF00000000;
          v60 = 0uLL;
          *(v111 + 8) = 0u;
          *&v111[0] = 110;
          memset(v110, 0, sizeof(v110));
          v109 = 0;
          *v108 = 0x100000000;
          *v107 = 0x35uLL;
          goto LABEL_501;
        }

        v29 = 1882468912;
        goto LABEL_296;
      }

      if (v20 == 1882468914)
      {
        goto LABEL_416;
      }

      v26 = 1882469428;
LABEL_308:
      if (v20 != v26)
      {
        return result;
      }

      goto LABEL_309;
    }

    if (v20 <= 1885746227)
    {
      if (v20 != 1885745712)
      {
        v33 = 1885745714;
        goto LABEL_415;
      }

      goto LABEL_297;
    }

    if (v20 != 1885746228)
    {
      v29 = 1886859824;
      goto LABEL_296;
    }

LABEL_309:
    if (!a4)
    {
      return 0;
    }

    if (a2[17] == 2 || a3 == 0)
    {
      v35 = 1;
    }

    else
    {
      v35 = 2;
    }

    v76 = !v15;
    v77 = 548;
    goto LABEL_424;
  }

  if (v20 > 1751527983)
  {
    if (v20 <= 1751528499)
    {
      if (v20 != 1751527984 && v20 != 1751527986)
      {
        return result;
      }

      goto LABEL_191;
    }

    if (v20 == 1751528500)
    {
LABEL_191:
      if (!a4)
      {
        return 0;
      }

      if (a3)
      {
        v35 = 2;
      }

      else
      {
        v35 = 1;
      }

      v110[2] = 0;
      v110[3] = 0;
      v112 = 52;
      *&v111[1] = 0x100000001;
      *(&v111[1] + 1) = 0x3200000000;
      v63 = 65;
      v64 = 25;
      goto LABEL_357;
    }

    v42 = 1815162994;
    goto LABEL_289;
  }

  if (v20 == 1647534392)
  {
LABEL_350:
    if (!a4)
    {
      return 0;
    }

    if (v20 == 1647534392 || v20 == 643969848)
    {
      if (a3)
      {
        v35 = 2;
      }

      else
      {
        v35 = 1;
      }

      v110[2] = 0;
      v110[3] = 0;
      v112 = 40;
      *&v111[1] = 0x100000001;
      *(&v111[1] + 1) = 0x2600000001;
      v63 = 10;
      v64 = 90;
LABEL_357:
      *&v111[0] = v64;
      *(&v111[0] + 1) = v63;
      v53 = 0uLL;
LABEL_460:
      *v110 = v53;
LABEL_461:
      v109 = 0;
      *v108 = 0x400000000;
      *v107 = v53;
      v106 = 0;
      v105[2] = 0;
      *v105 = v53;
LABEL_511:
      v83 = a2;
      goto LABEL_512;
    }

    if (a3)
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    v87 = 123;
    if (v12 != EquivalentUncompressedPixelFormat)
    {
      v87 = 0;
    }

    v88 = 53;
    if (v12 != EquivalentUncompressedPixelFormat)
    {
      v88 = 0;
    }

    v112 = 21;
    *(&v111[1] + 1) = 0x1300000001;
    v89 = 0uLL;
    *(v111 + 8) = 0u;
    v90 = 90;
    v91 = 0xA00000001;
LABEL_510:
    v110[3] = v91;
    *&v111[0] = v90;
    *&v110[1] = v89;
    v109 = 0;
    *v108 = 0x400000000;
    *v107 = v89;
    v106 = 1;
    *&v105[1] = v89;
    v110[0] = v88;
    v105[0] = v87;
    goto LABEL_511;
  }

  if (v20 == 1647719521)
  {
    if (!a4)
    {
      return 0;
    }

    if (a3)
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    v112 = 0;
    v53 = 0uLL;
    memset(v111, 0, sizeof(v111));
    v110[3] = 0x1700000000;
    *&v110[1] = 0u;
    v102 = 103;
    goto LABEL_492;
  }

  if (v20 != 1651521076)
  {
    return result;
  }

  if (!a4)
  {
    return 0;
  }

  v110[2] = 0;
  v110[3] = 0;
  v112 = 17;
  v62 = 0xF00000000;
LABEL_473:
  *(&v111[1] + 1) = v62;
  v60 = 0uLL;
  *(v111 + 8) = 0u;
  v61 = 110;
LABEL_474:
  *&v111[0] = v61;
LABEL_500:
  *v110 = v60;
  v109 = 0;
  *v108 = 0x400000000;
  *v107 = v60;
LABEL_501:
  v106 = 0;
  v105[2] = 0;
  *v105 = v60;
  v83 = a2;
  v35 = 2;
LABEL_512:
  v84 = a4;
  v85 = a5;
  v86 = a6;
  v36 = 0;
LABEL_513:
  v37 = 0;
  v100 = 0;
LABEL_514:
  result = appendSrcTextureDescriptions(v83, v35, v84, v85, v86, v36, v37, v100, v105[0], v105[1], v105[2], SHIDWORD(v105[2]), v106, v107[0], v107[1], v108[0], v108[1], v109, v110[0], v110[1], v110[2], SHIDWORD(v110[2]), v110[3], SHIDWORD(v110[3]), *&v111[0], *(&v111[0] + 1), v111[1], SDWORD1(v111[1]), SDWORD2(v111[1]), SHIDWORD(v111[1]), v112);
  if (result)
  {
    return 4294954391;
  }

  return result;
}

uint64_t vtCreateTexDescGlobalWrite(uint64_t a1, uint64_t a2, __CFArray *a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8, unsigned int a9, int a10, int a11, int a12)
{
  if (a1)
  {
    if (a4)
    {
      if ((a7 - 3) <= 0xFFFFFFFD)
      {
        vtCreateTexDescGlobalWrite_cold_1(&v22);
        return v22;
      }

      else if (a3 && returnMetalFormatIfWritable(a1, a2, a6))
      {
        MEMORY[0x193AE3010](&VTMTSTextureDescriptorGetTypeID_sRegisterVTMTSTextureDescriptorOnce, RegisterVTMTSTextureDescriptor);
        Instance = _CFRuntimeCreateInstance();
        *(Instance + 16) = 3;
        *(Instance + 20) = a8;
        *(Instance + 24) = 0;
        *(Instance + 32) = a6;
        *(Instance + 40) = 1;
        *(Instance + 44) = a10;
        *(Instance + 48) = 0;
        *(Instance + 60) = a12;
        *(Instance + 64) = 0;
        *(Instance + 56) = a11;
        CFArrayAppendValue(a3, Instance);
        v19 = 40;
        if (a7 == 2)
        {
          v19 = 64;
        }

        *(a4 + v19 + 4 * a9) = a10;
        if (a7 == 2)
        {
          v20 = 2;
        }

        else
        {
          v20 = 1;
        }

        *(a4 + 76) = v20;
        *a4 = a5;
        *(a4 + 96) = 0;
        CFRelease(Instance);
        return 0;
      }

      else
      {
        return 4294954391;
      }
    }

    else
    {
      vtCreateTexDescGlobalWrite_cold_2(&v23);
      return v23;
    }
  }

  else
  {
    vtCreateTexDescGlobalWrite_cold_3(&v24);
    return v24;
  }
}

uint64_t vtmtsFixUpProcessingShortcuts(uint64_t result, int a2)
{
  v3 = result;
  v4 = *(result + 135);
  if (v4)
  {
    if (*(result + 136) || *(result + 137) || *(result + 1367))
    {
      v4 = 1;
    }

    else
    {
      v4 = 1;
      if (*(result + 1369))
      {
        *(result + 135) = 0;
        *(result + 1368) = 1;
        v4 = 0;
      }
    }
  }

  if (*(result + 134))
  {
    if ((v4 & 1) == 0 && !*(result + 136) && !*(result + 137) && !*(result + 1367) && !*(result + 1368) && !*(result + 1369))
    {
      if (*(result + 1370))
      {
        result = formatSupportsChangeRange(*result);
        if (result)
        {
          result = formatSupportsChangeRange(*(v3 + 1284));
          if (result)
          {
            *(v3 + 134) = 0;
            *(v3 + 1370) = 0;
            *(v3 + 1372) = 1;
          }
        }
      }
    }
  }

  if (a2)
  {
    v5 = 2;
    *(v3 + 1280) = 2;
    v6 = *(v3 + 112);
  }

  else
  {
    v6 = *(v3 + 112);
    v7 = *(v3 + 1360);
    if (v6 == v7 && !*(v3 + 132))
    {
      *(v3 + 1280) = v6;
      goto LABEL_26;
    }

    if (v6 == 2 || v6 == 4 || v7 == 4 || v7 == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    *(v3 + 1280) = v5;
  }

  if (v6 != v5)
  {
    *(v3 + 132) = 1;
  }

  v6 = v5;
LABEL_26:
  if (*(v3 + 1360) != v6)
  {
    *(v3 + 1380) = 1;
  }

  v8 = *(v3 + 116);
  if (!*(v3 + 132))
  {
    if (!v8)
    {
      return result;
    }

    goto LABEL_42;
  }

  if (v8 > 27)
  {
    if (v8 == 33)
    {
      v9 = v6 == 1;
      v10 = 36;
      v8 = 34;
      goto LABEL_39;
    }

    if (v8 == 28)
    {
      v9 = v6 == 1;
      v10 = 31;
      v8 = 29;
      goto LABEL_39;
    }
  }

  else
  {
    if (!v8)
    {
      return result;
    }

    if (v8 == 23)
    {
      v9 = v6 == 1;
      v10 = 26;
      v8 = 24;
LABEL_39:
      if (!v9)
      {
        v8 = v10;
      }

      *(v3 + 116) = v8;
    }
  }

LABEL_42:
  if (!*(v3 + 120) && !*(v3 + 121) && !*(v3 + 122))
  {
    v11 = v8 - 3;
    if (v8 - 3) <= 0x35 && ((0x2AAAAA94A55505uLL >> v11))
    {
      *(v3 + 116) = dword_18FED0B64[v11];
    }
  }

  return result;
}

float32x2_t setupAffine(int a1, int a2, _OWORD *a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, uint64_t a10)
{
  v17 = a3[1];
  *&v34.a = *a3;
  *&v34.c = v17;
  *&v34.tx = a3[2];
  memset(&v35, 0, sizeof(v35));
  CGAffineTransformInvert(&v35, &v34);
  v18 = a10 + 120 * a1;
  __asm { FMOV            V2.2S, #1.0 }

  v24 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(a2 == 0), 0x1FuLL)), _D2, vcvt_f32_s32(__PAIR64__(a9, a8)));
  v25 = vcvtq_f64_f32(v24);
  v26 = vcvt_f32_f64(vdivq_f64(*&v35.a, v25));
  v27 = vcvt_f32_f64(vdivq_f64(*&v35.c, v25));
  *(v18 + 40) = v26;
  *(v18 + 48) = v27;
  __asm { FMOV            V5.2D, #0.5 }

  *(v18 + 56) = vcvt_f32_f64(vaddq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(v27), _Q5), _Q5, vcvtq_f64_f32(v26)), vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(*&v35.tx, v25)))));
  v29 = vcvt_f32_s32(__PAIR64__(a7, a4));
  v27.i32[0] = vdiv_f32(v29, v24).u32[0];
  v30 = vcvt_f32_s32(__PAIR64__(a5, a6));
  v27.i32[1] = vdiv_f32(v30, v24).i32[1];
  *(v18 + 108) = v27;
  v31 = vcvtq_f64_f32(vadd_f32(v30, v29));
  __asm { FMOV            V2.2D, #-0.25 }

  result = vcvt_f32_f64(vdivq_f64(vaddq_f64(v31, _Q2), v25));
  *(v18 + 116) = result;
  *(v18 + 96) = a8;
  *(v18 + 100) = a9;
  return result;
}

void setupRenderRotationAndCrop(void *a1, int a2, uint64_t a3, unsigned __int8 *a4, __CFString **a5, int a6, int a7, int a8, char a9, char a10, char a11, char a12, unsigned __int8 a13, unsigned __int8 a14, unsigned __int8 a15, int a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, void *a29, void *a30, float32x2_t *a31, __int128 a32)
{
  v153 = *MEMORY[0x1E69E9840];
  v141 = 0;
  v142 = 0;
  if (a16)
  {
    _ZF = a16 == 180;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v34 = a19;
  }

  else
  {
    v34 = a20;
  }

  v132 = v34;
  if (_ZF)
  {
    v35 = a20;
  }

  else
  {
    v35 = a19;
  }

  v131 = v35;
  v140 = 0;
  if (a3)
  {
    v36 = *(a3 + 140);
    a31[2].i32[0] = *(a3 + 136) == 2;
    if (v36 == 2)
    {
      v37 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    a31[2].i32[0] = 0;
  }

  v37 = 0;
LABEL_15:
  a31[2].i32[1] = v37;
  if (a13)
  {
    _D7 = vcvt_f32_s32(__PAIR64__(a22, a21));
  }

  else if (a2)
  {
    __asm { FMOV            V1.2S, #1.0 }

    _D7 = vdiv_f32(_D1, a31[15 * a6 + 8]);
  }

  else
  {
    __asm { FMOV            V7.2S, #1.0 }
  }

  v43 = COERCE_DOUBLE(__PAIR64__(a15, a14));
  if (a16)
  {
    if (a16 == 270)
    {
      v44 = 6;
    }

    else
    {
      v44 = 0;
    }

    v45 = COERCE_DOUBLE(vand_s8(vceqz_s32(__PAIR64__(a15, a14)), 0x100000001));
    if (a16 == 180)
    {
      v44 = 0;
      v46 = 0;
    }

    else
    {
      v46 = a16;
    }

    if (a16 != 180)
    {
      v45 = COERCE_DOUBLE(__PAIR64__(a15, a14));
    }

    if (a16 == 90)
    {
      v47 = 2;
    }

    else
    {
      v47 = v44;
    }

    v134 = v47;
    if (a16 == 90)
    {
      v48 = 90;
    }

    else
    {
      v48 = v46;
    }

    if (a16 != 90)
    {
      v43 = v45;
    }
  }

  else
  {
    v134 = 0;
    v48 = 0;
  }

  v49 = vceqz_s32(vand_s8(*&v43, 0xFF000000FFLL));
  *v50.i8 = v49;
  v50.u64[1] = v49;
  __asm
  {
    FMOV            V1.4S, #-1.0
    FMOV            V3.4S, #1.0
  }

  v53 = vbslq_s8(v50, _Q3, _Q1);
  if (a19)
  {
    v54 = a19;
  }

  else
  {
    v54 = a25;
  }

  if (a20)
  {
    v55 = a20;
  }

  else
  {
    v55 = a26;
  }

  if (v48)
  {
    if (v48 != 270 && v48 != 90)
    {
      goto LABEL_68;
    }

    v56 = 1.0;
    if (v48 != 90)
    {
      v56 = -1.0;
    }

    v57 = (v55 / a25) * -(*v53.i32 * v56);
    v58 = &a31[15 * a6];
    v58[5].i32[0] = 0;
    v59 = v58 + 5;
    v60 = (v54 / a26) * vmuls_lane_f32(v56, *v53.i8, 1);
    v59->f32[1] = v57;
    v59[1].f32[0] = v60;
    v59[1].i32[1] = 0;
    v61 = a17 + v54 - 1;
    if (v60 > 0.0)
    {
      v61 = a17;
    }

    v62 = v61;
    v63 = a18 + v55 - 1;
    if (v57 > 0.0)
    {
      v63 = a18;
    }

    v64 = v63;
    v59[2].f32[0] = v62;
    v59[2].f32[1] = v63;
    if (a8)
    {
      if (a2)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v62 = v62 - (v60 * a24);
      v64 = v64 - (v57 * a23);
      v59[2].f32[0] = v62;
      v59[2].f32[1] = v64;
      if (a2)
      {
        goto LABEL_68;
      }
    }

    v59[2].f32[0] = v62 / _D7.f32[0];
    v59[2].f32[1] = v64 / _D7.f32[1];
    v59->f32[1] = v57 / _D7.f32[1];
    v59[1].f32[0] = v60 / _D7.f32[0];
  }

  else
  {
    v65 = (v54 / a25) * *v53.i32;
    v66 = &a31[15 * a6];
    v66[5].f32[0] = v65;
    v67 = v66 + 5;
    v67->i32[1] = 0;
    v67[1].i32[0] = 0;
    v68 = a17 + v54 - 1;
    if (v49.i8[0])
    {
      v68 = a17;
    }

    v69 = v68;
    v70 = vmuls_lane_f32(v55 / a26, *v53.i8, 1);
    v67[1].f32[1] = v70;
    v67[2].f32[0] = v68;
    v71 = a18 + v55 - 1;
    if (v49.i8[4])
    {
      v71 = a18;
    }

    v72 = v71;
    v67[2].f32[1] = v71;
    if (a8)
    {
      if (a2)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v69 = v69 - (v65 * a23);
      v72 = v72 - (v70 * a24);
      v67[2].f32[0] = v69;
      v67[2].f32[1] = v72;
      if (a2)
      {
        goto LABEL_68;
      }
    }

    v67[2].f32[0] = v69 / _D7.f32[0];
    v67[2].f32[1] = v72 / _D7.f32[1];
    v67->f32[0] = v65 / _D7.f32[0];
    v67[1].f32[1] = v70 / _D7.f32[1];
  }

LABEL_68:
  v73 = a17;
  v135 = v53;
  v138 = _D7;
  v133 = a17;
  if (a9)
  {
    v74 = fmaxf(v73, 0.0);
    v75 = &a31[15 * a6];
    v76 = a6;
    v75[13].f32[1] = v74;
    v77 = &v75[13] + 1;
    v78 = fmaxf(a18, 0.0);
    v77[1] = v78;
    v77[2] = (v74 + v54) + -0.25;
    v79 = (v78 + v55) + -0.25;
  }

  else
  {
    v80 = &a31[15 * a6];
    v76 = a6;
    v81.f32[0] = a17;
    v81.f32[1] = a18;
    *(v80 + 108) = vmaxnm_f32(vdiv_f32(v81, _D7), 0);
    v77 = &v80[13] + 1;
    v82 = ((fmaxf(v73, 0.0) + v54) + -0.25) / _D7.f32[0];
    v77[2] = v82;
    v79 = ((fmaxf(a18, 0.0) + v55) + -0.25) / _D7.f32[1];
  }

  v77[3] = v79;
  v83 = &a31[15 * v76];
  v83[12].i32[0] = a21;
  v83[12].i32[1] = a22;
  v84 = a23;
  v85 = a24;
  if (!a8)
  {
    v84 = 0;
    v85 = 0;
  }

  a31[1].i32[0] = v84;
  a31[1].i32[1] = v85;
  v86 = a27;
  if (a8)
  {
    v86 = a25;
    v87 = a26;
  }

  else
  {
    v87 = a28;
  }

  a31->i32[0] = v86;
  a31->i32[1] = v87;
  if (a12 || a32 == 0 || vtmtsGetIntermediateScalingFormat(a4, a7, 0, 0, 0, 0))
  {
    v141 = 0;
    v142 = 0;
    _S0 = 0;
    v89 = a26;
    v90 = a25;
  }

  else
  {
    v128 = a10 == 0;
    v90 = a25;
    if (v132 != a25)
    {
      v130 = 1.0 / v138.f32[0];
      if (a9)
      {
        v130 = 1.0;
      }

      vtmtsBuildScalingTable(a1, v128, &v140 + 1, &v142, &a31[15] + 1, &a31[16] + 1, a25 / v54, v130);
      v128 = a10 == 0;
      v90 = a25;
      a31[7].f32[0] = *(&v140 + 1) + a31[7].f32[0];
    }

    _S0 = 0;
    v89 = a26;
    if (v131 != a26)
    {
      v129 = 1.0;
      if (!a9)
      {
        v129 = 1.0 / v138.f32[1];
      }

      vtmtsBuildScalingTable(a1, v128, &v140, &v141, &a31[16], &a31[16] + 1, a26 / v55, v129);
      v89 = a26;
      v90 = a25;
      _S0 = v140;
      a31[7].f32[1] = *&v140 + a31[7].f32[1];
    }
  }

  v92 = a29;
  v91 = a30;
  _V16.S[1] = v138.i32[1];
  if (!a2 && (!a11 && a12 || v132 == v90 && a13 && v131 == v89))
  {
    __asm { FMOV            V2.2D, #0.5 }

    a31[7] = vcvt_f32_f64(vaddq_f64(vdivq_f64(_Q2, vcvtq_f64_f32(v138)), vcvtq_f64_f32(a31[7])));
  }

  if (!a10)
  {
    v100 = 0;
    v101 = 0;
    goto LABEL_116;
  }

  if (a8)
  {
    _S1 = v133 + (*(&v140 + 1) * v138.f32[0]);
    __asm { FMLA            S2, S0, V16.S[1] }

    v97 = _S1 + v54;
    v98 = _S2 + v55;
    v99 = a13;
  }

  else
  {
    v102 = v54;
    v99 = a13;
    if (v48)
    {
      __asm { FMLA            S1, S0, V16.S[1] }

      _S2 = (a18 - ((a23 * v55) / v90)) + (*(&v140 + 1) * v138.f32[0]);
      v97 = ((v102 * a28) / v89) + _S1;
      v103 = (v55 * a27) / v90;
    }

    else
    {
      _S1 = (v133 - ((a23 * v102) / v90)) + (*(&v140 + 1) * v138.f32[0]);
      __asm { FMLA            S2, S0, V16.S[1] }

      v97 = ((v102 * a27) / v90) + _S1;
      v103 = (v55 * a28) / v89;
    }

    v98 = v103 + _S2;
  }

  v143 = _S1;
  v144 = _S2;
  v145 = _S1;
  v146 = v98;
  v147 = v97;
  v148 = v98;
  v149 = v97;
  v150 = _S2;
  if (v99)
  {
    v104 = _S1 / a21;
    v105 = _S2 / a22;
    v143 = v104;
    v144 = v105;
    v106 = v98 / a22;
    v145 = v104;
    v146 = v106;
    v107 = v97 / a21;
LABEL_99:
    v147 = v107;
    v148 = v106;
    v149 = v107;
    v150 = v105;
    goto LABEL_100;
  }

  if (a2)
  {
    v108 = v83[8].f32[0];
    v109 = v83[8].f32[1];
    v110 = _S1 * v108;
    v105 = _S2 * v109;
    v143 = v110;
    v144 = _S2 * v109;
    v106 = v98 * v109;
    v145 = v110;
    v146 = v98 * v109;
    v107 = v97 * v108;
    goto LABEL_99;
  }

LABEL_100:
  *&v111 = *(&v143 + v134);
  *(&v111 + 1) = *(&v143 + ((v134 + 6) & 6));
  *&v112 = *(&v143 + ((v134 + 2) & 6));
  *(&v112 + 1) = *(&v143 + (v134 ^ 4));
  v152[0] = v111;
  v152[1] = v112;
  v113 = [a1 newBufferWithBytes:v152 length:32 options:0];
  v100 = v113;
  if (*a5)
  {
    v114 = *a5;
  }

  else
  {
    v114 = @"com.apple.VideoToolbox.VTMetalTransferSession";
  }

  [v113 setLabel:v114];
  v115 = 0.0;
  if (a8)
  {
    v116 = a23;
  }

  else
  {
    v116 = 0.0;
  }

  if (a8)
  {
    v115 = a24;
  }

  v117 = a23 + a25;
  v118 = a27;
  if (!a8)
  {
    v117 = a27;
  }

  v119 = a24 + a26;
  v120 = a28;
  if (!a8)
  {
    v119 = a28;
  }

  v121.f64[0] = (v116 / v118);
  v122.f64[0] = (v117 / v118);
  v121.f64[1] = -(v115 / v120);
  v122.f64[1] = -(v119 / v120);
  __asm { FMOV            V3.2D, #2.0 }

  v124 = vmulq_f32(v135, vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(xmmword_18FED0630, _Q3, v121)), vmlaq_f64(xmmword_18FED0630, _Q3, v122)));
  v125 = v124;
  v125.i32[3] = v124.i32[1];
  v124.i32[1] = v124.i32[3];
  v151[0] = v125;
  v151[1] = v124;
  v126 = [a1 newBufferWithBytes:v151 length:32 options:0];
  v101 = v126;
  if (*a5)
  {
    v127 = *a5;
  }

  else
  {
    v127 = @"com.apple.VideoToolbox.VTMetalTransferSession";
  }

  [v126 setLabel:v127];
  v91 = a30;
  v92 = a29;
LABEL_116:
  *v92 = v101;
  *v91 = v100;
  if (a32)
  {

    if (v142)
    {
      *a32 = v142;
      v142 = 0;
    }
  }

  if (*(&a32 + 1))
  {

    if (v141)
    {
      **(&a32 + 1) = v141;
      v141 = 0;
    }
  }
}

void setupBackgroundColor(float32_t a1, float a2, float a3, float a4, uint64_t a5, int a6, int a7, int a8, int a9, void *a10)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a10)
  {
    v14 = [a10 contents];
    DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
    if (DescriptionWithPixelFormatType && (CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x1E69662B8]), FigCFEqual()))
    {
      vtmtsPopulateRGBToYCbCrMatrix(a7, a8, a9, &v42);
      if (a8 == 1)
      {
        v16 = (((v43 * a2) + (a1 * v42)) + (a3 * v44)) + 0.062745098;
        v17.f32[0] = v16;
      }

      else
      {
        v17.f32[0] = ((v43 * a2) + (a1 * v42)) + (a3 * v44);
      }

      v18 = (((v46 * a2) + (a1 * v45)) + (a3 * v47)) + 0.5;
      v19 = (((v49 * a2) + (a1 * v48)) + (a3 * v50)) + 0.5;
    }

    else
    {
      v18 = a2;
      v19 = a3;
      v17.f32[0] = a1;
    }

    if (a6 > 3)
    {
      if (a6 == 4)
      {
        v17.f32[1] = v18;
        v17.i64[1] = __PAIR64__(LODWORD(a4), LODWORD(v19));
        v22 = vmulq_f32(v17, vdupq_n_s32(0x477FFF00u));
        __asm { FMOV            V2.2D, #0.5 }

        *(v14 + 24) = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vaddq_f64(vcvtq_f64_f32(*v22.f32), _Q2)), vcvtq_s64_f64(vaddq_f64(vcvt_hight_f64_f32(v22), _Q2))));
      }

      else if (a6 == 5)
      {
        *(v14 + 24) = (v17.f32[0] * 255.0 + 0.5);
        *(v14 + 25) = (v18 * 255.0 + 0.5);
        *(v14 + 26) = (v19 * 255.0 + 0.5);
        *(v14 + 27) = (a4 * 255.0 + 0.5);
      }
    }

    else if (a6 == 1)
    {
      v20 = (v17.i32[0] >> 23);
      if (v20 >= 0x70)
      {
        v28 = 127 - v20;
        if (v28 <= -15)
        {
          LOWORD(v28) = -15;
        }

        v21 = 15360 - (v28 << 10);
      }

      else
      {
        v21 = 0;
      }

      *(v14 + 24) = v17.i16[1] & 0x8000 | (v17.i32[0] >> 13) & 0x3FF | v21;
      v29 = (LODWORD(v18) >> 23);
      if (v29 >= 0x70)
      {
        v31 = 127 - v29;
        if (v31 <= -15)
        {
          LOWORD(v31) = -15;
        }

        v30 = 15360 - (v31 << 10);
      }

      else
      {
        v30 = 0;
      }

      *(v14 + 26) = HIWORD(v18) & 0x8000 | (LODWORD(v18) >> 13) & 0x3FF | v30;
      v32 = (LODWORD(v19) >> 23);
      if (v32 >= 0x70)
      {
        v34 = 127 - v32;
        if (v34 <= -15)
        {
          LOWORD(v34) = -15;
        }

        v33 = 15360 - (v34 << 10);
      }

      else
      {
        v33 = 0;
      }

      *(v14 + 28) = HIWORD(v19) & 0x8000 | (LODWORD(v19) >> 13) & 0x3FF | v33;
      v35 = (LODWORD(a4) >> 23);
      if (v35 >= 0x70)
      {
        v37 = 127 - v35;
        if (v37 <= -15)
        {
          LOWORD(v37) = -15;
        }

        v36 = 15360 - (v37 << 10);
      }

      else
      {
        v36 = 0;
      }

      *(v14 + 30) = HIWORD(a4) & 0x8000 | (LODWORD(a4) >> 13) & 0x3FF | v36;
    }

    else if (a6 == 2)
    {
      *(v14 + 24) = v17.i32[0];
      *(v14 + 28) = v18;
      *(v14 + 32) = v19;
      *(v14 + 36) = a4;
    }
  }

  else
  {
    setupBackgroundColor_cold_1();
  }
}

void VTMTSRenderPassDescriptorSetFunctionName(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 56);
  *(a1 + 56) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t vtAllocateMetalTextureForList(void *a1, unint64_t a2, unint64_t a3, uint64_t a4, CFIndex a5, CFArrayRef theArray)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!theArray)
  {
    vtAllocateMetalTextureForList_cold_3(v21);
LABEL_25:
    v13 = 0;
    v14 = v21[0];
    goto LABEL_10;
  }

  if (CFArrayGetCount(theArray) < a5)
  {
    vtAllocateMetalTextureForList_cold_2(v21);
    goto LABEL_25;
  }

  if (!a1)
  {
    vtAllocateMetalTextureForList_cold_1(v21);
    goto LABEL_25;
  }

  if (!a2)
  {
    goto LABEL_8;
  }

  v12 = [a1 maxTextureWidth2D];
  v13 = 0;
  v14 = 0;
  if (!a3 || v12 < a2)
  {
    goto LABEL_10;
  }

  if ([a1 maxTextureHeight2D] < a3 || CFArrayGetCount(theArray) > a5 && (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a5)) != 0 && (v17 = ValueAtIndex, objc_msgSend(ValueAtIndex, "width") == a2) && objc_msgSend(v17, "height") == a3 && objc_msgSend(v17, "pixelFormat") == a4)
  {
LABEL_8:
    v14 = 0;
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v18 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a4 width:a2 height:a3 mipmapped:0];
  [v18 setUsage:3];
  v19 = [a1 newTextureWithDescriptor:v18];
  if (!v19)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v14 = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  v13 = v19;
  if (CFArrayGetCount(theArray) == a5)
  {
    CFArrayAppendValue(theArray, v13);
  }

  else
  {
    CFArraySetValueAtIndex(theArray, a5, v13);
  }

  v14 = 0;
LABEL_10:

  return v14;
}

float vtmtsPopulateYCbCrToRGBMatrix(int a1, int a2, int a3, uint64_t a4)
{
  if ((a1 - 5) > 1)
  {
    *(a4 + 32) = 0;
    if (a1 == 9)
    {
      v4 = &YUVToRGBFull2020Matrix;
    }

    else
    {
      v4 = &YUVToRGBFull709Matrix;
    }
  }

  else
  {
    *(a4 + 32) = 0;
    v4 = &YUVToRGBFull601Matrix;
  }

  v5 = *v4;
  v6 = v4[1];
  *a4 = *v4;
  *(a4 + 16) = v6;
  if (a2 == 3)
  {
    if (a3 >= 16)
    {
      v12 = 16;
    }

    else
    {
      v12 = a3;
    }

    if (v12 <= 8)
    {
      LOBYTE(v12) = 8;
    }

    *v5.i32 = ~(-1 << (v12 - 1)) / ~(-1 << v12);
    v10 = 24;
    v11 = 12;
    v9 = a4;
    v8 = *v5.i32;
    goto LABEL_20;
  }

  if (a2 == 1)
  {
    if (a3 >= 16)
    {
      v7 = 16;
    }

    else
    {
      v7 = a3;
    }

    if (v7 <= 8)
    {
      v7 = 8;
    }

    *v5.i32 = ~(-1 << v7);
    *v5.i8 = vdiv_f32(vcvt_f32_u32(vadd_s32(vshl_u32(0xE0000000DBLL, vdup_n_s32(v7 - 8)), -1)), vdup_lane_s32(*v5.i8, 0));
    *a4 = vdivq_f32(*a4, vzip1q_s32(v5, vrev64q_s32(v5)));
    v8 = *&v5.i32[1];
    *(a4 + 16) = vdiv_f32(*(a4 + 16), vdup_lane_s32(*v5.i8, 1));
    v9 = (a4 + 24);
    v10 = 32;
    v11 = 28;
LABEL_20:
    *v9 = *v9 / *v5.i32;
    *(a4 + v11) = *(a4 + v11) / v8;
    *v5.i32 = *(a4 + v10) / v8;
    *(a4 + v10) = v5.i32[0];
  }

  return *v5.i32;
}

float vtmtsPopulateRGBToYCbCrMatrix(int a1, int a2, int a3, uint64_t a4)
{
  if ((a1 - 5) > 1)
  {
    if (a1 == 9)
    {
      *(a4 + 32) = -1121666948;
      v4 = &RGBToYUVFull2020Matrix;
    }

    else
    {
      *(a4 + 32) = -1120155120;
      v4 = &RGBToYUVFull709Matrix;
    }
  }

  else
  {
    *(a4 + 32) = -1113159960;
    v4 = &RGBToYUVFull601Matrix;
  }

  v5 = *v4;
  v6 = v4[1];
  *a4 = *v4;
  *(a4 + 16) = v6;
  if (a2 == 3)
  {
    if (a3 >= 16)
    {
      v13 = 16;
    }

    else
    {
      v13 = a3;
    }

    v11 = 8;
    if (v13 <= 8)
    {
      LOBYTE(v13) = 8;
    }

    v9 = ~(-1 << (v13 - 1)) / ~(-1 << v13);
    v12 = 4;
    v10 = a4;
    goto LABEL_20;
  }

  if (a2 == 1)
  {
    if (a3 >= 16)
    {
      v7 = 16;
    }

    else
    {
      v7 = a3;
    }

    if (v7 <= 8)
    {
      v7 = 8;
    }

    *&v5 = ~(-1 << v7);
    *v6.i8 = vdiv_f32(vcvt_f32_u32(vadd_s32(vshl_u32(0xE0000000DBLL, vdup_n_s32(v7 - 8)), -1)), vdup_lane_s32(*&v5, 0));
    v8 = vzip1q_s32(v6, v6);
    v8.i32[2] = v6.i32[0];
    *a4 = vmulq_f32(v8, *a4);
    v9 = *&v6.i32[1];
    *(a4 + 16) = vmul_lane_f32(*(a4 + 16), *v6.i8, 1);
    v10 = (a4 + 24);
    v11 = 32;
    v12 = 28;
LABEL_20:
    *v10 = v9 * *v10;
    *(a4 + v12) = v9 * *(a4 + v12);
    *&v5 = v9 * *(a4 + v11);
    *(a4 + v11) = v5;
  }

  return *&v5;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) <= a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = -12905;
  }

  else
  {
    CGColorTRCGetFunction();
    CGColorFunctionGetInputRange();
    v6 = v5;
    v8 = v7;
    CGColorFunctionGetOutputRange();
    *(*(a1 + 48) + 52 * *(a1 + 56) + 52 * a3) = 0u;
    *(*(a1 + 48) + 52 * *(a1 + 56) + 52 * a3 + 16) = 0u;
    *(*(a1 + 48) + 52 * *(a1 + 56) + 52 * a3 + 32) = 0;
    if (v9 > -3.4028e38 && v10 < 3.4028e38)
    {
      v11 = *(a1 + 48) + 52 * *(a1 + 56) + 52 * a3;
      *(v11 + 40) = 1;
      *(v11 + 44) = v9;
      *(v11 + 48) = v10;
    }

    if (v6 > -3.4028e38 && v8 < 3.4028e38)
    {
      v12 = *(a1 + 56);
      if (v12 + a3 >= 1)
      {
        v13 = *(a1 + 48);
        v14 = v13 + 52 * (v12 + a3);
        if (*(v14 - 12) != 1 || *(v14 - 8) < v6)
        {
          *(v13 + 52 * v12 + 52 * a3 - 8) = v6;
        }

        v15 = v13 + 52 * v12 + 52 * a3;
        if (*(v15 - 12) != 1 || *(v15 - 8) > v8)
        {
          *(v15 - 4) = v8;
        }

        *(v15 - 12) = 1;
      }
    }
  }

  return 1;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 56) <= a3)
  {
    *(*(*(a1 + 32) + 8) + 24) = -12905;
  }

  else
  {
    CGColorMatrixGetMatrix();
    v5 = (*(a1 + 40) + 52 * *(a1 + 48) + 52 * a3);
    *v5 = 40;
    v5[1] = 0;
    *(*(a1 + 40) + 52 * *(a1 + 48) + 52 * a3 + 8) = 0;
    *(*(a1 + 40) + 52 * *(a1 + 48) + 52 * a3 + 16) = 0;
    *(*(a1 + 40) + 52 * *(a1 + 48) + 52 * a3 + 24) = 0;
    *(*(a1 + 40) + 52 * *(a1 + 48) + 52 * a3 + 28) = 0;
    *(*(a1 + 40) + 52 * *(a1 + 48) + 52 * a3 + 36) = 0;
    *(*(a1 + 40) + 52 * *(a1 + 48) + 52 * a3 + 40) = 0;
  }

  return 1;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a2 + 68) + 8 * a4);
  CGColorNxMTransformGetTransform();
  v7 = a1[7];
  if (*v7)
  {
    *(*(a1[4] + 8) + 24) = -12905;
  }

  else
  {
    v9 = a1[6] + 52 * a1[5] + 52 * a3;
    *v9 = 50;
    *(v9 + 40) = 0;
    if (v6)
    {
      v10 = CFRetain(v6);
      v7 = a1[7];
    }

    else
    {
      v10 = 0;
    }

    *v7 = v10;
  }

  return 1;
}

float matrixMultiply(float *a1, float *a2, float *a3)
{
  *a3 = ((a1[1] * a2[3]) + (*a1 * *a2)) + (a1[2] * a2[6]);
  a3[1] = ((a1[1] * a2[4]) + (*a1 * a2[1])) + (a1[2] * a2[7]);
  a3[2] = ((a1[1] * a2[5]) + (*a1 * a2[2])) + (a1[2] * a2[8]);
  a3[3] = ((a1[4] * a2[3]) + (a1[3] * *a2)) + (a1[5] * a2[6]);
  a3[4] = ((a1[4] * a2[4]) + (a1[3] * a2[1])) + (a1[5] * a2[7]);
  a3[5] = ((a1[4] * a2[5]) + (a1[3] * a2[2])) + (a1[5] * a2[8]);
  a3[6] = ((a1[7] * a2[3]) + (a1[6] * *a2)) + (a1[8] * a2[6]);
  a3[7] = ((a1[7] * a2[4]) + (a1[6] * a2[1])) + (a1[8] * a2[7]);
  result = ((a1[7] * a2[5]) + (a1[6] * a2[2])) + (a1[8] * a2[8]);
  a3[8] = result;
  return result;
}

uint64_t returnMetalFormatIfSamplable(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a1 && a2)
  {
    MTLPixelFormatGetInfoForDevice();
    return 0;
  }

  return v2;
}

uint64_t RegisterVTMTSTextureDescriptor()
{
  result = _CFRuntimeRegisterClass();
  sVTMTSTextureDescriptorID = result;
  return result;
}

double vtMTSTextureDescriptorInit(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

__CFString *vtCopyVTMTSTextureDescriptorFormattingDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = objc_autoreleasePoolPush();
  v5 = CFGetAllocator(a1);
  v6 = CFStringCreateMutable(v5, 0);
  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<VTMTSTextureDescriptor %p [%p]>{", a1, v7);
  CFStringAppendFormat(Mutable, 0, @"\n%@}", v6);
  if (v6)
  {
    CFRelease(v6);
  }

  objc_autoreleasePoolPop(v4);
  return Mutable;
}

uint64_t vtAppendTexDescSample(uint64_t a1, __CFArray *a2, _DWORD *a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, unsigned int a12)
{
  if (!a2)
  {
    return 4294954391;
  }

  if (!returnMetalFormatIfSamplable(a1, a4))
  {
    return 4294954391;
  }

  MEMORY[0x193AE3010](&VTMTSTextureDescriptorGetTypeID_sRegisterVTMTSTextureDescriptorOnce, RegisterVTMTSTextureDescriptor);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0;
  *(Instance + 20) = a8;
  *(Instance + 24) = a6;
  *(Instance + 32) = a4;
  *(Instance + 40) = a7;
  *(Instance + 44) = a9;
  *(Instance + 48) = a5;
  *(Instance + 52) = a10;
  *(Instance + 56) = a11;
  *(Instance + 60) = a12;
  CFArrayAppendValue(a2, Instance);
  if (a3)
  {
    *a3 = a9;
  }

  CFRelease(Instance);
  return 0;
}

uint64_t vtAppendTexDescRead(uint64_t a1, __CFArray *a2, _DWORD *a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (!a2)
  {
    return 4294954391;
  }

  if (a1)
  {
    if (a4)
    {
      MTLPixelFormatGetInfoForDevice();
    }

    return 4294954391;
  }

  if (!a4)
  {
    return 4294954391;
  }

  MEMORY[0x193AE3010](&VTMTSTextureDescriptorGetTypeID_sRegisterVTMTSTextureDescriptorOnce, RegisterVTMTSTextureDescriptor);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0;
  *(Instance + 20) = a7;
  *(Instance + 24) = a5;
  *(Instance + 32) = a4;
  *(Instance + 40) = a6;
  *(Instance + 44) = a8;
  *(Instance + 48) = 0;
  *(Instance + 60) = a10;
  *(Instance + 64) = 0;
  *(Instance + 56) = a9;
  CFArrayAppendValue(a2, Instance);
  if (a3)
  {
    *a3 = a8;
  }

  CFRelease(Instance);
  return 0;
}

uint64_t returnMetalFormatIfWritable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (DescriptionWithPixelFormatType)
  {
    Value = CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x1E69662D8]);
    if (Value)
    {
      v7 = Value;
      v8 = CFGetTypeID(Value);
      if (v8 == CFArrayGetTypeID())
      {
        CFArrayGetValueAtIndex(v7, 0);
        FigCFDictionaryGetInt32IfPresent();
      }
    }
  }

  if (a1 && a3)
  {
    MTLPixelFormatGetInfoForDevice();
    return 0;
  }

  return a3;
}

uint64_t vtAppendTexDescRender(uint64_t a1, __CFArray *a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  if (!a2)
  {
    return 4294954391;
  }

  if (!returnMetalFormatIfRenderable(a1, a3))
  {
    return 4294954391;
  }

  MEMORY[0x193AE3010](&VTMTSTextureDescriptorGetTypeID_sRegisterVTMTSTextureDescriptorOnce, RegisterVTMTSTextureDescriptor);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 1;
  *(Instance + 24) = a4;
  *(Instance + 32) = a3;
  *(Instance + 40) = a5;
  *(Instance + 44) = a6;
  *(Instance + 48) = 0;
  *(Instance + 60) = a8;
  *(Instance + 64) = 1;
  *(Instance + 56) = a7;
  CFArrayAppendValue(a2, Instance);
  CFRelease(Instance);
  return 0;
}

uint64_t returnMetalFormatIfRenderable(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a1 && a2)
  {
    MTLPixelFormatGetInfoForDevice();
    return 0;
  }

  return v2;
}

uint64_t vtAppendTexDescWrite(uint64_t a1, uint64_t a2, __CFArray *a3, _DWORD *a4, uint64_t a5, int a6, int a7, int a8, int a9, int a10)
{
  if (!a3)
  {
    return 4294954391;
  }

  if (!returnMetalFormatIfWritable(a1, a2, a5))
  {
    return 4294954391;
  }

  MEMORY[0x193AE3010](&VTMTSTextureDescriptorGetTypeID_sRegisterVTMTSTextureDescriptorOnce, RegisterVTMTSTextureDescriptor);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 1;
  *(Instance + 24) = a6;
  *(Instance + 32) = a5;
  *(Instance + 40) = a7;
  *(Instance + 44) = a8;
  *(Instance + 48) = 0;
  *(Instance + 60) = a10;
  *(Instance + 64) = 0;
  *(Instance + 56) = a9;
  CFArrayAppendValue(a3, Instance);
  if (a4)
  {
    *a4 = a8;
  }

  CFRelease(Instance);
  return 0;
}

uint64_t formatSupportsChangeRange(int a1)
{
  result = 0;
  if (a1 > 1952855091)
  {
    if (a1 <= 2019963441)
    {
      if (a1 <= 1982882103)
      {
        if (a1 > 1953903153)
        {
          if (a1 == 1953903154)
          {
            return 1;
          }

          v6 = 13364;
        }

        else
        {
          if (a1 == 1952855092)
          {
            return 1;
          }

          v6 = 12848;
        }

        v3 = v6 | 0x74760000;
        goto LABEL_58;
      }

      if (a1 <= 2016686641)
      {
        if (a1 == 1982882104)
        {
          return 1;
        }

        v3 = 2016686640;
        goto LABEL_58;
      }

      if (a1 == 2016686642 || a1 == 2016687156)
      {
        return 1;
      }

      v5 = 12848;
    }

    else
    {
      if (a1 > 2021077551)
      {
        if (a1 <= 2021078067)
        {
          if (a1 == 2021077552)
          {
            return 1;
          }

          v3 = 2021077554;
        }

        else
        {
          if (a1 == 2021078068 || a1 == 2037741171)
          {
            return 1;
          }

          v3 = 2037741158;
        }

        goto LABEL_58;
      }

      if (a1 > 2020619315)
      {
        if (a1 == 2020619316 || a1 == 2020632116)
        {
          return 1;
        }

        v3 = 2020636468;
        goto LABEL_58;
      }

      if (a1 == 2019963442)
      {
        return 1;
      }

      v5 = 13364;
    }

    v3 = v5 | 0x78660000;
    goto LABEL_58;
  }

  if (a1 <= 1751527985)
  {
    if (a1 > 875704933)
    {
      if (a1 > 875836517)
      {
        if (a1 == 875836518 || a1 == 875836534)
        {
          return 1;
        }

        v4 = 12848;
LABEL_50:
        v3 = v4 | 0x68660000;
        goto LABEL_58;
      }

      if (a1 == 875704934)
      {
        return 1;
      }

      v7 = 12918;
LABEL_45:
      v3 = v7 | 0x34320000;
      goto LABEL_58;
    }

    if (a1 > 875704421)
    {
      if (a1 == 875704422)
      {
        return 1;
      }

      v7 = 12406;
      goto LABEL_45;
    }

    if (a1 == 846624102)
    {
      return 1;
    }

    v3 = 846624121;
LABEL_58:
    if (a1 != v3)
    {
      return result;
    }

    return 1;
  }

  if (a1 > 1937125935)
  {
    if (a1 <= 1937126451)
    {
      if (a1 == 1937125936)
      {
        return 1;
      }

      v3 = 1937125938;
    }

    else
    {
      if (a1 == 1937126452 || a1 == 1952854576)
      {
        return 1;
      }

      v3 = 1952854578;
    }

    goto LABEL_58;
  }

  if (a1 <= 1936077359)
  {
    if (a1 == 1751527986)
    {
      return 1;
    }

    v4 = 13364;
    goto LABEL_50;
  }

  if (a1 != 1936077360 && a1 != 1936077362)
  {
    v3 = 1936077876;
    goto LABEL_58;
  }

  return 1;
}

float *setBufferExtents(float *result, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = result;
  v15 = a5;
  v16 = a4;
  if (a6 && a2[4] == 1)
  {
    *result = 0.0;
LABEL_8:
    v10[1] = 0.0;
LABEL_13:
    v10[2] = (a4 - 1);
LABEL_14:
    v11 = (a5 - 1);
LABEL_15:
    v10[3] = v11;
    return result;
  }

  if (a2[14])
  {
    result = FigCFDictionaryGetInt32IfPresent();
  }

  *v10 = 0.0;
  if (a6 && a2[4] == 1)
  {
    goto LABEL_8;
  }

  if (a2[15])
  {
    result = FigCFDictionaryGetInt32IfPresent();
  }

  v10[1] = 0.0;
  if (a6 && a2[4] == 1)
  {
    goto LABEL_13;
  }

  if (!a2[14] || (result = FigCFDictionaryGetInt32IfPresent(), !result))
  {
    v13 = (a4 - 1);
LABEL_22:
    v10[2] = v13;
    if (!a6)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v12 = (((v16 + a2[10] - 1) / a2[10] + a2[14] - 1) / a2[14] - 1);
  v10[2] = v12;
  v13 = (a4 - 1);
  if (v12 > v13)
  {
    goto LABEL_22;
  }

  if (!a6)
  {
    goto LABEL_24;
  }

LABEL_23:
  if (a2[4] == 1)
  {
    goto LABEL_14;
  }

LABEL_24:
  if (!a2[15])
  {
    goto LABEL_14;
  }

  result = FigCFDictionaryGetInt32IfPresent();
  if (!result)
  {
    goto LABEL_14;
  }

  v14 = ((v15 + a2[15] - 1) / a2[15] - 1);
  v10[3] = v14;
  v11 = (a5 - 1);
  if (v14 > v11)
  {
    goto LABEL_15;
  }

  return result;
}

void vtGetBufferAttachmentInt32IfPresent(__CVBuffer *a1, const __CFString *a2, _DWORD *a3)
{
  v4 = CVBufferCopyAttachment(a1, a2, 0);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFNumberGetTypeID())
    {
      SInt32 = FigCFNumberGetSInt32();
      if (a3)
      {
        *a3 = SInt32;
      }
    }

    CFRelease(v5);
  }
}

void vtGetBufferAttachmentFloatIfPresent(__CVBuffer *a1, const __CFString *a2, _DWORD *a3)
{
  v4 = CVBufferCopyAttachment(a1, a2, 0);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFNumberGetTypeID())
    {
      FigCFNumberGetFloat32();
      if (a3)
      {
        *a3 = v7;
      }
    }

    CFRelease(v5);
  }
}

uint64_t OUTLINED_FUNCTION_37_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return selectFunctionConstantForMetalDevice(a1, v14, a10, a4, a5, va, 0);
}

uint64_t OUTLINED_FUNCTION_59_0(const void **a1, uint64_t a2, uint64_t a3)
{

  return vtSetPropertyOrArrayOfType(a1, v3, a3, (v4 + 72));
}

float OUTLINED_FUNCTION_64_0(uint64_t a1)
{
  *&v2 = v1;
  *(&v2 + 1) = HIDWORD(v1);
  result = *&v1;
  *(a1 + 40) = v2;
  *(a1 + 64) = 0;
  *(a1 + 66) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_67@<X0>(int a1@<W8>)
{
  *(v2 + 1380) = 0;
  *(v2 + 1364) = 0;
  *(v2 + 1376) = a1;
  return *(v1 + 96);
}

uint64_t OUTLINED_FUNCTION_77@<X0>(int a1@<W1>, int a2@<W2>, const __CFDictionary **a3@<X3>, const __CFDictionary *a4@<X4>, int *a5@<X7>, int *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14, int *a15, void *a16, void *a17, _BYTE *a18, BOOL *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, const __CFDictionary *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, CFDictionaryRef theDict)
{

  return vtmtsSetUpProcessingNeeds(v55, a1, a2, a3, a4, theDict, a47, a5, a6, v54, a9, SHIDWORD(a9), a10, SHIDWORD(a10), a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

const __CFDictionary *OUTLINED_FUNCTION_78(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{

  return getCharacteristicsFromPixelDescription(a1, 0, a3, 0, a5, a6, 0, 0);
}

uint64_t OUTLINED_FUNCTION_79(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  *(v53 + 1560) = *(v53 + 392);
  v56 = *(v54 - 105);

  return vtmtsFixUpProcessingShortcuts(a53, v56);
}

uint64_t OUTLINED_FUNCTION_80()
{

  return FigCFDictionarySetFloat();
}

const void *OUTLINED_FUNCTION_81()
{

  return CFArrayGetValueAtIndex(v0, v1);
}

CFIndex OUTLINED_FUNCTION_82(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return CFArrayGetCount(theArray);
}

const void *OUTLINED_FUNCTION_83()
{
  v3 = *(v0 + 2152);

  return CFArrayGetValueAtIndex(v3, v1);
}

uint64_t OUTLINED_FUNCTION_84(uint64_t a1, uint64_t a2, void *a3)
{

  return CFNumberGetValue(v3, kCFNumberFloatType, a3);
}

uint64_t OUTLINED_FUNCTION_85()
{
  v3 = *(v1 + 2000);

  return [v3 newSamplerStateWithDescriptor:v0];
}

uint64_t OUTLINED_FUNCTION_86()
{

  return _CFRuntimeCreateInstance();
}

void vtdss_enqueueTaggedBufferGroup(uint64_t a1, uint64_t a2, int a3, int a4, const void *a5, __int128 *a6, __int128 *a7)
{
  if (!*(a1 + 184) && !*(a1 + 186))
  {
    v14 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A00404D8A4D16uLL);
    if (v14)
    {
      v15 = v14;
      v14[1] = a2;
      *(v14 + 4) = a3;
      *(v14 + 5) = a4;
      if (a5)
      {
        v16 = CFRetain(a5);
      }

      else
      {
        v16 = 0;
      }

      *(v15 + 32) = v16;
      v17 = *a6;
      *(v15 + 56) = *(a6 + 2);
      *(v15 + 40) = v17;
      v18 = *a7;
      *(v15 + 80) = *(a7 + 2);
      *(v15 + 64) = v18;

      vtdss_enqueueFrame(a1, v15);
    }

    else
    {
      vtdss_enqueueTaggedBufferGroup_cold_1();
    }
  }
}

uint64_t VTDecompressionSessionServerStart()
{
  FigKTraceInit();
  ShouldUseSeparateCodecProcessForDecode = VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode();
  v1 = ShouldUseSeparateCodecProcessForDecode != 0;
  if (ShouldUseSeparateCodecProcessForDecode)
  {
    v2 = "com.apple.coremedia.videocodecd.decompressionsession";
  }

  else
  {
    v2 = "com.apple.coremedia.decompressionsession";
  }

  return MEMORY[0x1EEDBDA60](v2, 636, v1, &VTDecompressionSessionServerStart_subsystems, 1, VTDecompressionSessionRemoteServer_Destroy, VTDecompressionSessionServerStart_timeoutDebugCallbacks, &gVTDecompressionServerState);
}

void vtdss_freeTimeoutDebugContext(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void vtdss_collectTimeoutDebugInfo(uint64_t a1, char *__str, size_t __size)
{
  v50 = 0;
  v51[0] = 0;
  v49 = 0;
  v48 = **&MEMORY[0x1E6960C70];
  v47 = v48;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  if (!a1)
  {
    snprintf(__str, __size, "debugContext is NULL");
    goto LABEL_15;
  }

  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    snprintf(__str, __size, "iClient is NULL");
    goto LABEL_15;
  }

  v6 = v5;
  v7 = *(v5 + 24);
  if (v7)
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = VTDecompressionSessionCopyProperty(*(v5 + 24), @"NumberOfFramesBeingDecoded", *MEMORY[0x1E695E480], v51);
    if (v9)
    {
      v28 = v9;
      v25 = "failed to get pending frame count: err = %d";
    }

    else
    {
      UInt32 = FigCFNumberGetUInt32();
      if (VTDecompressionSessionCopyProperty(v7, @"MinOutputPresentationTimeStampOfFramesBeingDecoded", v8, &v50))
      {
        v25 = "failed to get minOutputPTS of pending frames";
      }

      else
      {
        CMTimeMakeFromDictionary(&v48, v50);
        if (VTDecompressionSessionCopyProperty(v7, @"MaxOutputPresentationTimeStampOfFramesBeingDecoded", v8, &v49))
        {
          v25 = "failed to get maxOutputPTS of pending frames";
        }

        else
        {
          CMTimeMakeFromDictionary(&v47, v49);
          v11 = VTDecompressionSessionCopyProperty(v7, @"NumberOfFramesInDecoder", v8, &v46);
          if (v11)
          {
            v28 = v11;
            v25 = "failed to get frames in decoder count: err = %d";
          }

          else
          {
            UInt64 = FigCFNumberGetUInt64();
            v13 = VTDecompressionSessionCopyProperty(v7, @"MinFrameIDOfFramesInDecoder", v8, &v45);
            if (v13)
            {
              v28 = v13;
              v25 = "failed to get MinFrameIDOfFramesInDecoder: err = %d";
            }

            else
            {
              v14 = FigCFNumberGetUInt64();
              v15 = VTDecompressionSessionCopyProperty(v7, @"MaxFrameIDOfFramesInDecoder", v8, &v44);
              if (!v15)
              {
                v16 = FigCFNumberGetUInt64();
                v17 = *(v6 + 40);
                v41 = __str;
                v42 = __size;
                if (v17)
                {
                  LODWORD(v17) = CMFormatDescriptionGetMediaSubType(v17);
                }

                v18 = v17 >> 24;
                v19 = BYTE2(v17);
                v20 = BYTE1(v17);
                v21 = v17;
                time = v48;
                Seconds = CMTimeGetSeconds(&time);
                time = v47;
                v23 = CMTimeGetSeconds(&time);
                time = *(v6 + 224);
                v24 = CMTimeGetSeconds(&time);
                v39 = v14;
                v40 = v16;
                v37 = *(v6 + 248);
                v38 = UInt64;
                v35 = v23;
                v36 = v24;
                v34 = Seconds;
                v32 = v21;
                v33 = UInt32;
                v25 = "session[%p]: codecType: '%c%c%c%c' pendingFramesCount: %d, (minPTS: %1.3f, maxPTS: %1.3f), last DecodeFrame PTS: %1.3f (frameID: %llu), framesInDecoder: %llu, (minFrameID: %llu, maxFrameID: %llu)";
                v30 = v19;
                v31 = v20;
                v28 = v7;
                v29 = v18;
                v26 = v41;
                v27 = v42;
                goto LABEL_13;
              }

              v28 = v15;
              v25 = "failed to get MaxFrameIDOfFramesInDecoder: err = %d";
            }
          }
        }
      }
    }
  }

  else
  {
    v25 = "decompressionSession is NULL";
  }

  v26 = __str;
  v27 = __size;
LABEL_13:
  snprintf(v26, v27, v25, v28, v29, v30, v31, v32, v33, *&v34, *&v35, *&v36, v37, v38, v39, v40);
  CFRelease(v6);
  if (v51[0])
  {
    CFRelease(v51[0]);
  }

LABEL_15:
  if (v50)
  {
    CFRelease(v50);
  }

  if (v49)
  {
    CFRelease(v49);
  }
}

void DecompressionOutputCallback(uint64_t a1, uint64_t a2, int a3, int a4, const void *a5, __int128 *a6, __int128 *a7)
{
  if (!*(a1 + 184) && !*(a1 + 186))
  {
    v14 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A00404D8A4D16uLL);
    if (v14)
    {
      v15 = v14;
      v14[1] = a2;
      *(v14 + 4) = a3;
      *(v14 + 5) = a4;
      if (a5)
      {
        v16 = CFRetain(a5);
      }

      else
      {
        v16 = 0;
      }

      *(v15 + 24) = v16;
      v17 = *a6;
      *(v15 + 56) = *(a6 + 2);
      *(v15 + 40) = v17;
      v18 = *a7;
      *(v15 + 80) = *(a7 + 2);
      *(v15 + 64) = v18;

      vtdss_enqueueFrame(a1, v15);
    }

    else
    {
      DecompressionOutputCallback_cold_1();
    }
  }
}

void vtdss_appStateChangeListener(int a1, uint64_t a2, int a3, int a4, CFDictionaryRef theDict)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E69AFA58]);
  if (!Value)
  {
    goto LABEL_10;
  }

  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  v8 = valuePtr;
  if (valuePtr <= 3)
  {
    if ((valuePtr - 1) < 2)
    {
      goto LABEL_4;
    }

    if (valuePtr)
    {
LABEL_11:
      *(a2 + 112) = v8;
      return;
    }

LABEL_10:
    v8 = 8;
    goto LABEL_11;
  }

  if (valuePtr != 4)
  {
    if (valuePtr != 8)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (VTIsBackgroundRunningSupportedForClientPID(*(a2 + 88), v7))
  {
    v8 = 4;
    goto LABEL_11;
  }

LABEL_4:
  v9 = *(a2 + 24);
  if (v9)
  {
    v10 = CFRetain(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a2 + 32);
  if (v11)
  {
    v12 = CFRetain(v11);
    if (!v10)
    {
      goto LABEL_19;
    }

LABEL_21:
    v13 = *(a2 + 176);
    dispatch_retain(*(a2 + 168));
    dispatch_retain(v13);
    *(a2 + 112) = valuePtr;
    *(a2 + 185) = 1;
    FigRPCExecuteByServerAsync();
    return;
  }

  v12 = 0;
  if (v10)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (valuePtr == 1 && v12)
  {
    goto LABEL_21;
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

void vtdss_freeQueuedFrame(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CFRelease(v2);
      a1[3] = 0;
    }

    v3 = a1[4];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

void TileDecompressionOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (!*(a1 + 184) && !*(a1 + 186))
  {
    v12 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A00404D8A4D16uLL);
    if (v12)
    {
      v12[1] = a2;
      *(v12 + 4) = a7;
      *(v12 + 5) = a8;
      v12[3] = 0;

      vtdss_enqueueFrame(a1, v12);
    }

    else
    {
      TileDecompressionOutputCallback_cold_1();
    }
  }
}

void vtdss_enqueueFrame(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v3 = *(a1 + 144);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __vtdss_enqueueFrame_block_invoke;
  block[3] = &unk_1E72C9360;
  block[5] = a2;
  block[6] = a1;
  block[4] = &v5;
  dispatch_sync(v3, block);
  if (!*(a1 + 184) && !*(a1 + 186))
  {
    if (*(v6 + 24))
    {
      VTDecompressionSessionRemoteCallbackClient_FrameIsPending(*(a1 + 56), *(a1 + 64));
    }

    if (*(a1 + 152))
    {
        ;
      }
    }
  }

  _Block_object_dispose(&v5, 8);
}

uint64_t __vtdss_enqueueFrame_block_invoke(uint64_t result)
{
  **(result + 40) = 0;
  v1 = *(result + 40);
  **(*(result + 48) + 128) = v1;
  *(*(result + 48) + 128) = v1;
  if (!*(*(result + 48) + 136))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *(*(result + 48) + 136) = 1;
  }

  return result;
}

uint64_t DecompressionSessionClient_RegisterType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double DecompressionSessionClient_Init(uint64_t a1)
{
  *(a1 + 256) = 0;
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void DecompressionSessionClient_Finalize(uint64_t a1)
{
  FigRPCDisposeClientConnection();
  *(a1 + 16) = 0;
  if (*(a1 + 220))
  {
    *(a1 + 220) = 0;
  }

  if (*(a1 + 104))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v2 = *(a1 + 104);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 104) = 0;
    }
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 144);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 176);
  if (v7)
  {
    dispatch_release(v7);
  }

  FigSemaphoreDestroy();
  v8 = *(a1 + 40);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 40) = 0;
  }

  v9 = *(a1 + 192);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 192) = 0;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 48) = 0;
  }

  FigServer_RememberProcessInfoForAFewSeconds();
  v11 = *(a1 + 96);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 96) = 0;
  }

  v12 = *(a1 + 256);
  if (v12)
  {
    os_release(v12);
    *(a1 + 256) = 0;
  }
}

__CFString *DecompressionSessionClient_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"DecompressionSessionClient %p", a1);
  return Mutable;
}

void __vtdss_appStateChangeListener_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __vtdss_appStateChangeListener_block_invoke_2;
  v3[3] = &__block_descriptor_tmp_35;
  v4 = *(a1 + 48);
  v5 = v2;
  v6 = v1;
  dispatch_group_async(v2, v1, v3);
}

void __vtdss_appStateChangeListener_block_invoke_2(uint64_t a1)
{
  VTDecompressionSessionInvalidate(*(a1 + 32));
  VTTileDecompressionSessionInvalidate(*(a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {

    dispatch_release(v5);
  }
}

uint64_t __vtdss_dequeueFrame_block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = *(*(result + 48) + 120);
  v1 = *(*(*(result + 32) + 8) + 24);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 48);
    v4 = *(v3 + 120);
    if (v4 == v1)
    {
      v8 = *v4;
      *(v3 + 120) = *v4;
      if (v8)
      {
        goto LABEL_9;
      }

      v7 = *(result + 48);
      v5 = (v7 + 120);
    }

    else
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4 != v1);
      v6 = *v4;
      *v5 = *v4;
      if (v6)
      {
        goto LABEL_9;
      }

      v7 = *(result + 48);
    }

    *(v7 + 128) = v5;
LABEL_9:
    result = FigSemaphoreSignal();
    *(*(*(v2 + 40) + 8) + 24) = *(*(v2 + 48) + 120) != 0;
    if (!*(*(*(v2 + 40) + 8) + 24))
    {
      *(*(v2 + 48) + 136) = 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_20()
{

  return FigMachPortReleaseSendRight_();
}

void OUTLINED_FUNCTION_3_17(dispatch_once_t *a1)
{

  dispatch_once_f(a1, a1 + 1, DecompressionSessionClient_RegisterType);
}

uint64_t OUTLINED_FUNCTION_4_17(OpaqueVTDecompressionSession *a1, uint64_t a2, void *a3)
{

  return VTDecompressionSessionSetMultiImageCallback(a1, vtdss_enqueueTaggedBufferGroup, a3);
}

uint64_t OUTLINED_FUNCTION_7_10(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a12 = 0;
  *a2 = 0;
  *a3 = 0;

  return vtdss_findAndRetainClientFromCommandPort(a1, &a12);
}

uint64_t OUTLINED_FUNCTION_17_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;

  return vtdss_findAndRetainClientFromCommandPort(a1, &a10);
}

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_420vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 16 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((v39 + v31 + *v61 * v45) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * ((v40 + v37 + 1) / 2 - 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_RGfA_TRC_Tone_Mat_TRC_420vf_neon_fp16_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
  while (1)
  {
    v54 = *v52++;
    v24 = v54;
    if (v54)
    {
      break;
    }

    if (!--v53)
    {
      v24 = 0;
      break;
    }
  }

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}

int vt_Copy_RGfA_TRC_Tone_Mat_TRC_420vf_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, __n128 _Q0, float32x4_t a4, float32x4_t a5, double a6, float32x4_t a7)
{
  v7 = 0;
  v8 = *(a1 + 36);
  v254 = *(a1 + 24);
  v9 = 2 * *a1;
  v10 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v9);
  v12 = *(a1 + 13);
  v11 = *(a1 + 14);
  v13 = v12 * a2;
  v14 = *(a1 + 19);
  v15 = *(a1 + 16);
  v16 = *(a1 + 17);
  v17 = **(a1 + 8);
  v18 = **(a1 + 7);
  v20 = *v16;
  v19 = v16[1];
  v22 = *v15;
  v21 = v15[1];
  v23 = v16[2];
  v24 = v15[2];
  v25 = *(a1 + 15) + 2 * (v13 / v9);
  v302 = *(v14 + 154);
  v26 = *(v14 + 144);
  v27 = *(v14 + 146);
  v28 = *(v14 + 148);
  v29 = *(v14 + 150);
  v30 = *(v14 + 152);
  v297 = *(v14 + 36);
  v296 = *(v14 + 40);
  a7.i32[0] = *(v14 + 48);
  v295 = *(v14 + 44);
  a4.i32[0] = *(v14 + 52);
  _Q0.n128_u32[0] = *(v14 + 56);
  v32 = *(v14 + 60);
  v31 = *(v14 + 64);
  v33 = (v12 + v13) / v9 - v13 / v9;
  a5.i32[0] = *(v14 + 68);
  v294 = *(v14 + 72);
  v293 = *(v14 + 76);
  v292 = *(v14 + 80);
  v291 = *(v14 + 84);
  v290 = *(v14 + 88);
  v253 = v19;
  v289 = *(v14 + 92);
  v288 = *(v14 + 96);
  v287 = *(v14 + 100);
  v286 = *(v14 + 104);
  _S29 = *(v14 + 108);
  _S18 = *(v14 + 112);
  _S19 = *(v14 + 116);
  _S20 = *(v14 + 120);
  memset(v301, 0, sizeof(v301));
  do
  {
    v38 = 0;
    v39 = *(&v302 + v7);
    v40 = *(v301 + v7);
    do
    {
      v300 = v40;
      *(&v300 | v38 & 7) = v39 + 4 * v38;
      v40 = v300;
      ++v38;
    }

    while (v38 != 8);
    *(v301 + v7++) = v300;
  }

  while (v7 != 4);
  if (2 * v33 >= 1)
  {
    v41 = 0;
    v42 = v26;
    v285 = v27;
    v43 = v28;
    v298 = v29;
    v284 = v30;
    a7.i32[1] = v32;
    __asm { FMOV            V5.2S, #0.25 }

    *a7.f32 = vmul_f32(*a7.f32, _D5);
    a4.i32[1] = v31;
    *a4.f32 = vmul_f32(*a4.f32, _D5);
    _Q0.n128_u32[1] = a5.i32[0];
    *a5.f32 = vmul_f32(_Q0.n128_u64[0], _D5);
    v49 = v14 + 16548;
    _Q0.n128_f32[0] = v297;
    __asm { FCVT            H0, S0 }

    v281 = *_Q0.n128_u16;
    v50 = v254 & 0xFFFFFFFE;
    _Q0.n128_f32[0] = v296;
    __asm { FCVT            H0, S0 }

    v279 = *_Q0.n128_u16;
    v280 = vdupq_lane_s32(vcvt_f16_f32(a7), 0);
    v51 = v14 + 32932;
    v52 = v14 + 164;
    _Q0.n128_f32[0] = v295;
    __asm { FCVT            H0, S0 }

    v277 = *_Q0.n128_u16;
    v278 = vdupq_lane_s32(vcvt_f16_f32(a4), 0);
    _Q0.n128_u64[0] = vcvt_f16_f32(a5);
    v53 = vdupq_lane_s32(_Q0.n128_u64[0], 0);
    __asm { FCVT            H0, S29 }

    v275 = *_Q0.n128_u16;
    v276 = v53;
    __asm { FCVT            H0, S18 }

    v274 = *_Q0.n128_u16;
    __asm { FCVT            H0, S19 }

    v273 = *_Q0.n128_u16;
    __asm { FCVT            H0, S20 }

    v272 = *_Q0.n128_u16;
    _Q0.n128_f32[0] = v294;
    __asm { FCVT            H0, S0 }

    v271 = *_Q0.n128_u16;
    _Q0.n128_f32[0] = v293;
    __asm { FCVT            H0, S0 }

    v270 = _Q0;
    _Q0.n128_f32[0] = v292;
    __asm { FCVT            H0, S0 }

    v269 = _Q0;
    _Q0.n128_f32[0] = v291;
    __asm { FCVT            H0, S0 }

    v268 = *_Q0.n128_u16;
    _Q0.n128_f32[0] = v290;
    __asm { FCVT            H0, S0 }

    v267 = *_Q0.n128_u16;
    _Q0.n128_f32[0] = v289;
    __asm { FCVT            H0, S0 }

    v266 = _Q0;
    _Q0.n128_f32[0] = v288;
    __asm { FCVT            H0, S0 }

    v299 = _Q0;
    _Q0.n128_f32[0] = v287;
    __asm { FCVT            H0, S0 }

    v265 = _Q0;
    _Q0.n128_f32[0] = v286;
    __asm { FCVT            H0, S0 }

    v264 = *_Q0.n128_u16;
    *_Q0.n128_u16 = v26;
    v54 = vdupq_lane_s16(_Q0.n128_u64[0], 0);
    *_Q0.n128_u16 = v27;
    v55 = vdupq_lane_s16(_Q0.n128_u64[0], 0);
    v262 = v55;
    v263 = v54;
    *v55.i16 = v28;
    v56 = vdupq_lane_s16(*v55.i8, 0);
    *v55.i16 = v29;
    v57 = vdupq_lane_s16(*v55.i8, 0);
    v260 = v57;
    v261 = v56;
    v58 = v21 + v19 * (v25 / 2);
    if (v24)
    {
      v59 = (v24 + v23 * v25 + v11);
    }

    else
    {
      v59 = 0;
    }

    *v57.i16 = v30;
    v259 = vdupq_lane_s16(*v57.i8, 0);
    v60 = (v58 + v11);
    v61 = (v22 + v20 * v25 + v11);
    v62 = v18 + v17 * v10 + 16 * v8;
    v282 = a4.f32[0];
    v283 = a7.f32[0];
    v257 = a4.f32[1];
    v258 = a7.f32[1];
    v63 = a5.i64[0];
    v251 = v20;
    v252 = v17;
    v250 = v23;
    do
    {
      v64 = (v61 + v20);
      v65 = (v59 + v23);
      v255 = v62 + v17;
      v256 = v59 + v23;
      if (v254 < 8)
      {
        v126 = 0;
        v66 = (v62 + v17);
        v68 = v64;
        v125 = v60;
      }

      else
      {
        v66 = (v62 + v17);
        v67 = 0;
        v68 = v64;
        do
        {
          v69 = v62;
          v305 = vld4q_f32(v69);
          v69 += 16;
          v304 = vld4q_f32(v69);
          v70 = v66;
          v306 = vld4q_f32(v70);
          v70 += 16;
          v303 = vld4q_f32(v70);
          if (v59)
          {
            v71 = vdupq_n_s16(0x5BF8u);
            v72 = vmovn_s16(vcvtq_u16_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v305.val[3]), v304.val[3]), v71)));
            v73 = vmovn_s16(vcvtq_u16_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v306.val[3]), v303.val[3]), v71)));
          }

          else
          {
            v72 = 0;
            v73 = 0;
          }

          v74 = vcvt_hight_f16_f32(vcvt_f16_f32(v305.val[0]), v304.val[0]);
          v75 = vcvt_hight_f16_f32(vcvt_f16_f32(v305.val[1]), v304.val[1]);
          v76 = vcvt_f16_f32(v306.val[0]);
          v77.i64[0] = 0x7000700070007000;
          v77.i64[1] = 0x7000700070007000;
          v78 = vcvt_hight_f16_f32(vcvt_f16_f32(v306.val[2]), v303.val[2]);
          v79 = vmulq_f16(vcvt_hight_f16_f32(v76, v303.val[0]), v77);
          v80 = vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v306.val[1]), v303.val[1]), v77);
          v81 = vmulq_f16(v78, v77);
          v82.i64[0] = 0x9000900090009000;
          v82.i64[1] = 0x9000900090009000;
          v83 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v74, v77), 0), v82));
          v84.i16[0] = *(v52 + 2 * v83.u16[0]);
          v84.i16[1] = *(v52 + 2 * v83.u16[1]);
          v84.i16[2] = *(v52 + 2 * v83.u16[2]);
          v84.i16[3] = *(v52 + 2 * v83.u16[3]);
          v84.i16[4] = *(v52 + 2 * v83.u16[4]);
          v84.i16[5] = *(v52 + 2 * v83.u16[5]);
          v84.i16[6] = *(v52 + 2 * v83.u16[6]);
          v84.i16[7] = *(v52 + 2 * v83.u16[7]);
          v85 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v75, v77), 0), v82));
          v86.i16[0] = *(v52 + 2 * v85.u16[0]);
          v86.i16[1] = *(v52 + 2 * v85.u16[1]);
          v86.i16[2] = *(v52 + 2 * v85.u16[2]);
          v86.i16[3] = *(v52 + 2 * v85.u16[3]);
          v86.i16[4] = *(v52 + 2 * v85.u16[4]);
          v86.i16[5] = *(v52 + 2 * v85.u16[5]);
          v86.i16[6] = *(v52 + 2 * v85.u16[6]);
          v86.i16[7] = *(v52 + 2 * v85.u16[7]);
          v87 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v305.val[2]), v304.val[2]), v77), 0), v82));
          v88.i16[0] = *(v52 + 2 * v87.u16[0]);
          v88.i16[1] = *(v52 + 2 * v87.u16[1]);
          v88.i16[2] = *(v52 + 2 * v87.u16[2]);
          v88.i16[3] = *(v52 + 2 * v87.u16[3]);
          v88.i16[4] = *(v52 + 2 * v87.u16[4]);
          v88.i16[5] = *(v52 + 2 * v87.u16[5]);
          v88.i16[6] = *(v52 + 2 * v87.u16[6]);
          v88.i16[7] = *(v52 + 2 * v87.u16[7]);
          v89 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v79, 0), v82));
          v78.i16[0] = *(v52 + 2 * v89.u16[0]);
          v78.i16[1] = *(v52 + 2 * v89.u16[1]);
          v78.i16[2] = *(v52 + 2 * v89.u16[2]);
          v78.i16[3] = *(v52 + 2 * v89.u16[3]);
          v78.i16[4] = *(v52 + 2 * v89.u16[4]);
          v78.i16[5] = *(v52 + 2 * v89.u16[5]);
          v78.i16[6] = *(v52 + 2 * v89.u16[6]);
          v78.i16[7] = *(v52 + 2 * v89.u16[7]);
          v90 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v80, 0), v82));
          v80.i16[0] = *(v52 + 2 * v90.u16[0]);
          v80.i16[1] = *(v52 + 2 * v90.u16[1]);
          v80.i16[2] = *(v52 + 2 * v90.u16[2]);
          v80.i16[3] = *(v52 + 2 * v90.u16[3]);
          v80.i16[4] = *(v52 + 2 * v90.u16[4]);
          v80.i16[5] = *(v52 + 2 * v90.u16[5]);
          v80.i16[6] = *(v52 + 2 * v90.u16[6]);
          v80.i16[7] = *(v52 + 2 * v90.u16[7]);
          v91 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v81, 0), v82));
          v92.i16[0] = *(v52 + 2 * v91.u16[0]);
          v92.i16[1] = *(v52 + 2 * v91.u16[1]);
          v92.i16[2] = *(v52 + 2 * v91.u16[2]);
          v92.i16[3] = *(v52 + 2 * v91.u16[3]);
          v92.i16[4] = *(v52 + 2 * v91.u16[4]);
          v92.i16[5] = *(v52 + 2 * v91.u16[5]);
          v92.i16[6] = *(v52 + 2 * v91.u16[6]);
          v92.i16[7] = *(v52 + 2 * v91.u16[7]);
          v93 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v84, v275), v86, v274), v88, v273), vmaxq_f16(vmaxq_f16(v84, v86), v88), v272), 0), v82));
          v85.i16[0] = *(v49 + 2 * v93.u16[0]);
          v85.i16[1] = *(v49 + 2 * v93.u16[1]);
          v85.i16[2] = *(v49 + 2 * v93.u16[2]);
          v85.i16[3] = *(v49 + 2 * v93.u16[3]);
          v85.i16[4] = *(v49 + 2 * v93.u16[4]);
          v85.i16[5] = *(v49 + 2 * v93.u16[5]);
          v85.i16[6] = *(v49 + 2 * v93.u16[6]);
          v85.i16[7] = *(v49 + 2 * v93.u16[7]);
          v94 = vmulq_f16(v84, v85);
          v95 = vmulq_f16(v86, v85);
          v96 = vmulq_f16(v88, v85);
          v97 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v78, v275), v80, v274), v92, v273), vmaxq_f16(vmaxq_f16(v78, v80), v92), v272), 0), v82));
          v98.i16[0] = *(v49 + 2 * v97.u16[0]);
          v98.i16[1] = *(v49 + 2 * v97.u16[1]);
          v98.i16[2] = *(v49 + 2 * v97.u16[2]);
          v98.i16[3] = *(v49 + 2 * v97.u16[3]);
          v98.i16[4] = *(v49 + 2 * v97.u16[4]);
          v98.i16[5] = *(v49 + 2 * v97.u16[5]);
          v98.i16[6] = *(v49 + 2 * v97.u16[6]);
          v98.i16[7] = *(v49 + 2 * v97.u16[7]);
          v99 = vmulq_f16(v78, v98);
          v100 = vmulq_f16(v80, v98);
          v101 = vmulq_f16(v92, v98);
          v102.i16[7] = v270.n128_i16[7];
          v88.i16[7] = v269.n128_i16[7];
          v103 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v94, v271), v95, *v270.n128_u16), v96, *v269.n128_u16);
          v104.i16[7] = v266.n128_i16[7];
          v105 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v94, v268), v95, v267), v96, *v266.n128_u16);
          v106 = vmulq_n_f16(v96, v264);
          v96.i16[7] = v265.n128_i16[7];
          v107 = vmlaq_n_f16(vmlaq_n_f16(v106, v95, *v265.n128_u16), v94, *v299.n128_u16);
          v108 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v99, v268), v100, v267), v101, *v266.n128_u16);
          v109 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v103, 0), v82));
          v104.i16[0] = *(v51 + 2 * v109.u16[0]);
          v104.i16[1] = *(v51 + 2 * v109.u16[1]);
          v104.i16[2] = *(v51 + 2 * v109.u16[2]);
          v104.i16[3] = *(v51 + 2 * v109.u16[3]);
          v104.i16[4] = *(v51 + 2 * v109.u16[4]);
          v104.i16[5] = *(v51 + 2 * v109.u16[5]);
          v104.i16[6] = *(v51 + 2 * v109.u16[6]);
          v110 = v109.u16[7];
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v105, 0), v82));
          v88.i16[0] = *(v51 + 2 * v111.u16[0]);
          v88.i16[1] = *(v51 + 2 * v111.u16[1]);
          v88.i16[2] = *(v51 + 2 * v111.u16[2]);
          v88.i16[3] = *(v51 + 2 * v111.u16[3]);
          v88.i16[4] = *(v51 + 2 * v111.u16[4]);
          v88.i16[5] = *(v51 + 2 * v111.u16[5]);
          v88.i16[6] = *(v51 + 2 * v111.u16[6]);
          v112 = vuzp1q_s16(v104, v88);
          v104.i16[7] = *(v51 + 2 * v110);
          v88.i16[7] = *(v51 + 2 * v111.u16[7]);
          v113 = vminq_f16(vmaxq_f16(v107, 0), v82);
          v114 = vcvtq_u16_f16(v113);
          v113.i16[0] = *(v51 + 2 * v114.u16[0]);
          v113.i16[1] = *(v51 + 2 * v114.u16[1]);
          v113.i16[2] = *(v51 + 2 * v114.u16[2]);
          v113.i16[3] = *(v51 + 2 * v114.u16[3]);
          v113.i16[4] = *(v51 + 2 * v114.u16[4]);
          v113.i16[5] = *(v51 + 2 * v114.u16[5]);
          v113.i16[6] = *(v51 + 2 * v114.u16[6]);
          v115 = vmlaq_n_f16(vmulq_n_f16(v101, v264), v100, *v265.n128_u16);
          v116 = (v51 + 2 * v114.u16[7]);
          v117 = v113;
          v117.i16[7] = *v116;
          v118 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v99, v271), v100, *v270.n128_u16), v101, *v269.n128_u16), 0), v82));
          v96.i16[0] = *(v51 + 2 * v118.u16[0]);
          v96.i16[1] = *(v51 + 2 * v118.u16[1]);
          v96.i16[2] = *(v51 + 2 * v118.u16[2]);
          v96.i16[3] = *(v51 + 2 * v118.u16[3]);
          v96.i16[4] = *(v51 + 2 * v118.u16[4]);
          v96.i16[5] = *(v51 + 2 * v118.u16[5]);
          v96.i16[6] = *(v51 + 2 * v118.u16[6]);
          v103.i16[7] = v299.n128_i16[7];
          LOWORD(v116) = v118.i16[7];
          v119 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v108, 0), v82));
          v103.i16[0] = *(v51 + 2 * v119.u16[0]);
          v103.i16[1] = *(v51 + 2 * v119.u16[1]);
          v103.i16[2] = *(v51 + 2 * v119.u16[2]);
          v103.i16[3] = *(v51 + 2 * v119.u16[3]);
          v103.i16[4] = *(v51 + 2 * v119.u16[4]);
          v103.i16[5] = *(v51 + 2 * v119.u16[5]);
          v103.i16[6] = *(v51 + 2 * v119.u16[6]);
          v120 = vuzp1q_s16(v96, v103);
          v96.i16[7] = *(v51 + 2 * v116);
          v103.i16[7] = *(v51 + 2 * v119.u16[7]);
          v121 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v115, v99, *v299.n128_u16), 0), v82));
          v102.i16[0] = *(v51 + 2 * v121.u16[0]);
          v25 = v51 + 2 * v121.u16[6];
          v102.i16[1] = *(v51 + 2 * v121.u16[1]);
          v102.i16[2] = *(v51 + 2 * v121.u16[2]);
          v102.i16[3] = *(v51 + 2 * v121.u16[3]);
          v102.i16[4] = *(v51 + 2 * v121.u16[4]);
          v102.i16[5] = *(v51 + 2 * v121.u16[5]);
          v102.i16[6] = *v25;
          v122 = (v51 + 2 * v121.u16[7]);
          v123 = v102;
          v123.i16[7] = *v122;
          *v61++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v263, v104, v281), v88, v279), v117, v277), v263), v261)));
          *v68++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v263, v96, v281), v103, v279), v123, v277), v263), v261)));
          v124 = vaddq_f16(vaddq_f16(vaddq_f16(v112, vuzp2q_s16(v104, v88)), v120), vuzp2q_s16(v96, v103));
          *&v60[v67] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v262, v280, vzip1q_s16(v124, v124)), v278, vzip2q_s16(v124, v124)), v276, vaddq_f16(vaddq_f16(vaddq_f16(vtrn1q_s16(v113, v113), vtrn2q_s16(v117, v117)), vtrn1q_s16(v102, v102)), vtrn2q_s16(v123, v123))), v260), v259)));
          if (v59)
          {
            *v59++ = v72;
            *v65++ = v73;
          }

          v62 += 128;
          v66 += 32;
          v67 += 8;
        }

        while (v67 < v254 - 7);
        v125 = &v60[v67];
        v126 = v254 & 0xFFFFFFF8;
      }

      if (v126 < v50)
      {
        v127 = 0;
        v128 = v66 + 4;
        v129 = v62 + 16;
        do
        {
          v130 = v127 + 4 * v302;
          v131.i32[0] = *(v129 + v130 - 16);
          v132 = v127 + 4 * BYTE1(v302);
          v131.i32[1] = *(v129 + v132 - 16);
          v133 = vdup_n_s32(0x45FFF800u);
          _D0 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v131, v133), 0), v133)));
          v135 = v127 + 4 * BYTE2(v302);
          _D0.i16[0] = *(v52 + 2 * _D0.u32[0]);
          _D1.i32[0] = *(v129 + v135 - 16);
          __asm { FCVT            S30, H0 }

          _D0.i16[0] = *(v52 + 2 * _D0.u32[1]);
          __asm { FCVT            S8, H0 }

          _D1.i32[1] = *(v129 + v130);
          v139 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(_D1, v133), 0), v133)));
          _D1.i16[0] = *(v52 + 2 * v139.u32[0]);
          __asm { FCVT            S9, H1 }

          v141 = fmaxf(_S30, fmaxf(_S8, _S9));
          v142 = (((_S18 * _S8) + (_S29 * _S30)) + (_S19 * _S9)) + (_S20 * v141);
          v143 = 8191.0;
          if (v142 <= 8191.0)
          {
            v143 = (((_S18 * _S8) + (_S29 * _S30)) + (_S19 * _S9)) + (_S20 * v141);
            if (v142 < 0.0)
            {
              v143 = 0.0;
            }
          }

          v144.i32[0] = *(v129 + v132);
          _H0 = *(v52 + 2 * v139.u32[1]);
          __asm { FCVT            S12, H0 }

          v144.i32[1] = *(v129 + v135);
          _D0 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v144, v133), 0), v133)));
          _D0.i16[0] = *(v52 + 2 * _D0.u32[0]);
          __asm { FCVT            S13, H0 }

          _D0.i16[0] = *(v52 + 2 * _D0.u32[1]);
          __asm { FCVT            S14, H0 }

          v150 = (((_S18 * _S13) + (_S29 * _S12)) + (_S19 * _S14)) + (_S20 * fmaxf(_S12, fmaxf(_S13, _S14)));
          v151 = 8191.0;
          if (v150 <= 8191.0)
          {
            v151 = v150;
            if (v150 < 0.0)
            {
              v151 = 0.0;
            }
          }

          v152.f32[0] = *(v128 + v130 - 16);
          v152.f32[1] = *(v128 + v132 - 16);
          _D1 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v152, v133), 0), v133)));
          _D1.i16[0] = *(v52 + 2 * _D1.u32[0]);
          _D3.f32[0] = *(v128 + v135 - 16);
          __asm { FCVT            S1, H1 }

          _H2 = *(v52 + 2 * _D1.u32[1]);
          _D3.f32[1] = *(v128 + v130);
          __asm { FCVT            S2, H2 }

          v158 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(_D3, v133), 0), v133)));
          _D3.i16[0] = *(v52 + 2 * v158.u32[0]);
          __asm { FCVT            S3, H3 }

          v160 = (((_S18 * _S2) + (_S29 * _S1)) + (_S19 * _S3)) + (_S20 * fmaxf(_S1, fmaxf(_S2, _S3)));
          v161 = 8191.0;
          if (v160 <= 8191.0)
          {
            v161 = v160;
            if (v160 < 0.0)
            {
              v161 = 0.0;
            }
          }

          v162.f32[0] = *(v128 + v132);
          _H5 = *(v52 + 2 * v158.u32[1]);
          __asm { FCVT            S5, H5 }

          v162.f32[1] = *(v128 + v135);
          _D6 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v162, v133), 0), v133)));
          _D6.i16[0] = *(v52 + 2 * _D6.u32[0]);
          __asm { FCVT            S15, H6 }

          _D6.i16[0] = *(v52 + 2 * _D6.u32[1]);
          __asm { FCVT            S6, H6 }

          v168 = (((_S18 * _S15) + (_S29 * _S5)) + (_S19 * _S6)) + (_S20 * fmaxf(_S5, fmaxf(_S15, _S6)));
          v169 = 8191.0;
          if (v168 <= 8191.0)
          {
            v169 = v168;
            if (v168 < 0.0)
            {
              v169 = 0.0;
            }
          }

          v170 = _S20;
          v171 = _S19;
          v172 = _S18;
          if (v59)
          {
            v173 = v127 + 4 * HIBYTE(v302);
            v174 = *(v129 + v173 - 16);
            v175 = *(v129 + v173);
            v176 = (v128 + v173);
            v177 = *v176;
            LODWORD(v25) = llroundf(v174 * 255.0);
            v178 = llroundf(v175 * 255.0);
            v179 = llroundf(*(v176 - 4) * 255.0);
            v180 = llroundf(v177 * 255.0);
          }

          else
          {
            v179 = 0;
            LODWORD(v25) = 0;
            v178 = 0;
            v180 = 0;
          }

          _H7 = *(v49 + 2 * llroundf(v143));
          __asm { FCVT            S7, H7 }

          v183 = _S30 * _S7;
          v184 = _S8 * _S7;
          v185 = _S9 * _S7;
          _H0 = *(v49 + 2 * llroundf(v151));
          __asm { FCVT            S0, H0 }

          v188 = _S12 * _S0;
          v189 = _S13 * _S0;
          _S0 = _S14 * _S0;
          _H4 = *(v49 + 2 * llroundf(v161));
          __asm { FCVT            S4, H4 }

          v193 = _S1 * _S4;
          v194 = _S2 * _S4;
          _S3 = _S3 * _S4;
          LOWORD(_S4) = *(v49 + 2 * llroundf(v169));
          __asm { FCVT            S4, H4 }

          v197 = _S5 * _S4;
          v198 = _S15 * _S4;
          _S4 = _S6 * _S4;
          _S6 = ((v293 * v184) + (v183 * v294)) + (v185 * v292);
          v201 = ((v290 * v184) + (v183 * v291)) + (v185 * v289);
          _S7 = ((v287 * v184) + (v183 * v288)) + (v185 * v286);
          _S17 = ((v293 * v189) + (v188 * v294)) + (_S0 * v292);
          v204 = ((v290 * v189) + (v188 * v291)) + (_S0 * v289);
          v205 = ((v287 * v189) + (v188 * v288)) + (_S0 * v286);
          v206 = ((v293 * v194) + (v193 * v294)) + (_S3 * v292);
          v207 = ((v290 * v194) + (v193 * v291)) + (_S3 * v289);
          v208 = ((v287 * v194) + (v193 * v288)) + (_S3 * v286);
          _S1 = (v290 * v198) + (v197 * v291);
          v210 = (v287 * v198) + (v197 * v288);
          _S16 = ((v293 * v198) + (v197 * v294)) + (_S4 * v292);
          v212 = _S1 + (_S4 * v289);
          v213 = v210 + (_S4 * v286);
          LOWORD(_S0) = *(v51 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          __asm { FCVT            S2, H0 }

          LOWORD(_S0) = *(v51 + 2 * llroundf(fminf(fmaxf(v201, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S1) = *(v51 + 2 * llroundf(fminf(fmaxf(_S7, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          LOWORD(_S3) = *(v51 + 2 * llroundf(fminf(fmaxf(_S17, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          LOWORD(_S4) = *(v51 + 2 * llroundf(fminf(fmaxf(v204, 0.0), 8191.0)));
          LOWORD(_S6) = *(v51 + 2 * llroundf(fminf(fmaxf(v205, 0.0), 8191.0)));
          __asm
          {
            FCVT            S5, H4
            FCVT            S4, H6
          }

          LOWORD(_S6) = *(v51 + 2 * llroundf(fminf(fmaxf(v206, 0.0), 8191.0)));
          v220 = llroundf(fminf(fmaxf(v207, 0.0), 8191.0));
          __asm { FCVT            S8, H6 }

          LOWORD(_S6) = *(v51 + 2 * v220);
          __asm { FCVT            S30, H6 }

          LOWORD(_S6) = *(v51 + 2 * llroundf(fminf(fmaxf(v208, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          LOWORD(_S7) = *(v51 + 2 * llroundf(fminf(fmaxf(_S16, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          LOWORD(_S16) = *(v51 + 2 * llroundf(fminf(fmaxf(v212, 0.0), 8191.0)));
          LOWORD(_S17) = *(v51 + 2 * llroundf(fminf(fmaxf(v213, 0.0), 8191.0)));
          __asm
          {
            FCVT            S16, H16
            FCVT            S31, H17
          }

          v227 = (((v296 * _S0) + (v297 * _S2)) + (v295 * _S1)) + v42;
          if (v227 < v42)
          {
            v228 = v26;
          }

          else
          {
            v228 = (((v296 * _S0) + (v297 * _S2)) + (v295 * _S1)) + v42;
          }

          v229 = v227 <= v43;
          v230 = (((v296 * _S5) + (v297 * _S3)) + (v295 * _S4)) + v42;
          if (!v229)
          {
            v228 = v28;
          }

          v231 = llroundf(v228);
          if (v230 < v42)
          {
            v232 = v26;
          }

          else
          {
            v232 = (((v296 * _S5) + (v297 * _S3)) + (v295 * _S4)) + v42;
          }

          v229 = v230 <= v43;
          v233 = (((v296 * _S30) + (v297 * _S8)) + (v295 * _S6)) + v42;
          if (!v229)
          {
            v232 = v28;
          }

          v234 = llroundf(v232);
          if (v233 < v42)
          {
            v235 = v26;
          }

          else
          {
            v235 = (((v296 * _S30) + (v297 * _S8)) + (v295 * _S6)) + v42;
          }

          v229 = v233 <= v43;
          v236 = (((v296 * _S16) + (v297 * _S7)) + (v295 * _S31)) + v42;
          if (!v229)
          {
            v235 = v28;
          }

          v237 = llroundf(v235);
          if (v236 < v42)
          {
            v238 = v26;
          }

          else
          {
            v238 = (((v296 * _S16) + (v297 * _S7)) + (v295 * _S31)) + v42;
          }

          if (v236 <= v43)
          {
            v239 = v238;
          }

          else
          {
            v239 = v28;
          }

          v240 = ((_S2 + _S3) + _S8) + _S7;
          v241 = ((_S0 + _S5) + _S30) + _S16;
          v61->i8[0] = v231;
          v61->i8[1] = v234;
          v68->i8[0] = v237;
          v68->i8[1] = llroundf(v239);
          v242 = ((_S1 + _S4) + _S6) + _S31;
          v243 = ((v285 + (v240 * v283)) + (v241 * v282)) + (v242 * *&v63);
          v244 = v284;
          if (v243 <= v284)
          {
            v244 = ((v285 + (v240 * v283)) + (v241 * v282)) + (v242 * *&v63);
            if (v243 < v298)
            {
              v244 = v298;
            }
          }

          v245 = ((v285 + (v240 * v258)) + (v241 * v257)) + (v242 * *(&v63 + 1));
          *v125 = llroundf(v244);
          v246 = v284;
          _S18 = v172;
          _S19 = v171;
          _S20 = v170;
          if (v245 <= v284)
          {
            v246 = v245;
            if (v245 < v298)
            {
              v246 = v298;
            }
          }

          v125[1] = llroundf(v246);
          if (v59)
          {
            v59->i8[0] = v25;
            v59->i8[1] = v178;
            v59 = (v59 + 2);
            v65->i8[0] = v179;
            v65->i8[1] = v180;
            v65 = (v65 + 2);
          }

          v126 += 2;
          v127 += 32;
          v61 = (v61 + 2);
          v68 = (v68 + 2);
          v125 += 2;
        }

        while (v126 < v50);
      }

      v20 = v251;
      v17 = v252;
      v62 = v255 + v252;
      v61 = (v64 + v251);
      v60 += v253;
      v23 = v250;
      v59 = &v256[v250];
      v41 += 2;
    }

    while (v41 < 2 * v33);
  }

  *&a1[4 * a2 + 160] = 0;
  return v25;
}

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_420vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 16 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((v39 + v31 + *v61 * v45) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * ((v40 + v37 + 1) / 2 - 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_RGfA_TRC_Tone_Mat_TRC_420vf_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
  while (1)
  {
    v54 = *v52++;
    v24 = v54;
    if (v54)
    {
      break;
    }

    if (!--v53)
    {
      v24 = 0;
      break;
    }
  }

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}