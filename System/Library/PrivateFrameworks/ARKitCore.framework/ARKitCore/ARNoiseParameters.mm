@interface ARNoiseParameters
+ (int)modelIdentifierForDevicePosition:(int64_t)position longEdgeImageResolution:(unsigned int)resolution;
@end

@implementation ARNoiseParameters

+ (int)modelIdentifierForDevicePosition:(int64_t)position longEdgeImageResolution:(unsigned int)resolution
{
  v6 = MGGetProductType();
  if (v6 <= 2309863437)
  {
    if (v6 <= 1293446024)
    {
      if (v6 <= 574536382)
      {
        if (v6 > 240711086)
        {
          if (v6 > 341800272)
          {
            if (v6 != 341800273)
            {
              if (v6 == 369845484)
              {
                goto LABEL_193;
              }

              v7 = 555503454;
              goto LABEL_192;
            }

            goto LABEL_208;
          }

          if (v6 == 240711087 || v6 == 313020436)
          {
            goto LABEL_193;
          }

          v8 = 330877086;
          goto LABEL_140;
        }

        if (v6 > 157833460)
        {
          if (v6 != 157833461)
          {
            if (v6 == 185765807)
            {
              goto LABEL_193;
            }

            v14 = 228444038;
LABEL_169:
            if (v6 != v14)
            {
              return 69;
            }

            goto LABEL_170;
          }

          goto LABEL_216;
        }

        if (v6 != 79936591)
        {
          if (v6 != 88647037)
          {
            v8 = 133314240;
            goto LABEL_140;
          }

          goto LABEL_216;
        }

        goto LABEL_205;
      }

      if (v6 > 851437780)
      {
        if (v6 > 1169082143)
        {
          if (v6 <= 1260109172)
          {
            if (v6 != 1169082144)
            {
              if (v6 == 1234705395)
              {
                if (position == 1 && resolution == 1280)
                {
                  return 25;
                }

                if (position == 1 && resolution == 1920)
                {
                  return 26;
                }

                if (position == 2 && resolution == 1280)
                {
                  return 27;
                }

                if (position == 2 && resolution == 1440)
                {
                  return 28;
                }
              }

              return 69;
            }

            goto LABEL_187;
          }

          if (v6 == 1260109173)
          {
            goto LABEL_141;
          }

          if (v6 != 1280441783)
          {
            return 69;
          }

          goto LABEL_216;
        }

        if (v6 == 851437781)
        {
          goto LABEL_141;
        }

        if (v6 != 910181310)
        {
          if (v6 != 1060988941)
          {
            return 69;
          }

          goto LABEL_158;
        }

        goto LABEL_164;
      }

      if (v6 <= 789142226)
      {
        if (v6 != 574536383)
        {
          if (v6 != 689804742)
          {
            v7 = 746003606;
            goto LABEL_192;
          }

          goto LABEL_234;
        }

        goto LABEL_141;
      }

      if (v6 == 789142227 || v6 == 810906663)
      {
        goto LABEL_193;
      }

      v13 = 820711327;
    }

    else
    {
      if (v6 <= 1895344377)
      {
        if (v6 > 1522473354)
        {
          if (v6 <= 1834147426)
          {
            if (v6 == 1522473355 || v6 == 1625227434)
            {
              goto LABEL_193;
            }

            v8 = 1781728947;
            goto LABEL_140;
          }

          if (v6 <= 1872992316)
          {
            if (v6 == 1834147427)
            {
              goto LABEL_193;
            }

            v7 = 1868379043;
            goto LABEL_192;
          }

          if (v6 != 1872992317)
          {
            v7 = 1878257790;
            goto LABEL_192;
          }

LABEL_141:
          if (position == 1 && resolution == 1280)
          {
            return 64;
          }

          if (position == 1 && resolution == 1920)
          {
            return 65;
          }

          if (position == 1 && resolution == 3840)
          {
            return 66;
          }

          if (position == 2 && resolution == 1280)
          {
            return 67;
          }

          if (position == 2 && resolution == 1440)
          {
            return 68;
          }

          return 69;
        }

        if (v6 <= 1373516432)
        {
          if (v6 == 1293446025)
          {
            goto LABEL_180;
          }

          if (v6 != 1353145733)
          {
            if (v6 != 1371389549)
            {
              return 69;
            }

            goto LABEL_161;
          }

          goto LABEL_208;
        }

        if (v6 == 1373516433)
        {
          goto LABEL_193;
        }

        if (v6 == 1380747801)
        {
          if (position == 1 && resolution == 1280)
          {
            return 29;
          }

          return 69;
        }

        v12 = 1434404433;
LABEL_104:
        if (v6 == v12)
        {
          if (position == 1 && resolution == 1280)
          {
            return 54;
          }

          if (position == 1 && resolution == 1920)
          {
            return 55;
          }

          if (position == 1 && resolution == 3840)
          {
            return 56;
          }

          if (position == 2 && resolution == 1280)
          {
            return 57;
          }

          if (position == 2 && resolution == 1440)
          {
            return 58;
          }
        }

        return 69;
      }

      if (v6 <= 2080700390)
      {
        if (v6 <= 2023824666)
        {
          if (v6 == 1895344378)
          {
            goto LABEL_193;
          }

          if (v6 == 2001966017)
          {
            goto LABEL_208;
          }

          v12 = 2021146989;
          goto LABEL_104;
        }

        if (v6 == 2023824667)
        {
          goto LABEL_193;
        }

        if (v6 == 2032616841)
        {
          goto LABEL_164;
        }

        v10 = 2078329141;
LABEL_111:
        if (v6 == v10)
        {
          if (position == 1 && resolution == 1280)
          {
            return 50;
          }

          if (position == 1 && resolution == 1920)
          {
            return 51;
          }

          if (position == 2 && resolution == 1280)
          {
            return 52;
          }

          if (position == 2 && resolution == 1440)
          {
            return 53;
          }
        }

        return 69;
      }

      if (v6 <= 2158787295)
      {
        if (v6 == 2080700391)
        {
          goto LABEL_161;
        }

        if (v6 == 2089455188)
        {
          goto LABEL_193;
        }

        v15 = 2103978418;
        goto LABEL_153;
      }

      if (v6 <= 2236272847)
      {
        if (v6 != 2158787296)
        {
          v10 = 2159747553;
          goto LABEL_111;
        }

LABEL_205:
        if (position == 1 && resolution == 1280)
        {
          return 0;
        }

        if (position == 1 && resolution == 1920)
        {
          return 1;
        }

        return 69;
      }

      if (v6 == 2236272848)
      {
        goto LABEL_208;
      }

      v13 = 2262113699;
    }

    if (v6 != v13)
    {
      return 69;
    }

    goto LABEL_205;
  }

  if (v6 > 3184375230)
  {
    if (v6 <= 3645319984)
    {
      if (v6 > 3397214290)
      {
        if (v6 > 3585085678)
        {
          if (v6 <= 3599094682)
          {
            if (v6 != 3585085679)
            {
              v8 = 3591055299;
              goto LABEL_140;
            }

LABEL_158:
            if (position == 1 && resolution == 1280)
            {
              return 40;
            }

            if (position == 1 && resolution == 1920)
            {
              return 41;
            }

            if (position == 1 && resolution == 3840)
            {
              return 42;
            }

            if (position == 2 && resolution == 1280)
            {
              return 43;
            }

            if (position == 2 && resolution == 1440)
            {
              return 44;
            }

            return 69;
          }

          if (v6 != 3599094683)
          {
            v11 = 3636345305;
LABEL_178:
            if (v6 != v11)
            {
              return 69;
            }

            goto LABEL_208;
          }

LABEL_180:
          if (position == 1 && resolution == 1280)
          {
            return 8;
          }

          if (position == 1 && resolution == 1920)
          {
            return 9;
          }

          if (position == 2 && resolution == 1280)
          {
            return 10;
          }

          if (position == 2 && resolution == 1440)
          {
            return 11;
          }

          return 69;
        }

        if (v6 != 3397214291)
        {
          if (v6 != 3455223061)
          {
            v7 = 3540156652;
            goto LABEL_192;
          }

LABEL_237:
          if (position == 1 && resolution == 1280)
          {
            return 15;
          }

          if (position == 1 && resolution == 1920)
          {
            return 16;
          }

          goto LABEL_241;
        }

LABEL_231:
        if (position == 1 && resolution == 1280)
        {
          return 19;
        }

        if (position == 1 && resolution == 1440)
        {
          return 20;
        }

LABEL_277:
        if (position == 2 && resolution == 1280)
        {
          return 17;
        }

        if (position == 2 && resolution == 1440)
        {
          return 18;
        }

        return 69;
      }

      if (v6 > 3228373940)
      {
        if (v6 == 3228373941 || v6 == 3241053352)
        {
          goto LABEL_193;
        }

        v7 = 3361025853;
        goto LABEL_192;
      }

      if (v6 != 3184375231)
      {
        if (v6 != 3196158497)
        {
          if (v6 != 3215673114)
          {
            return 69;
          }

          goto LABEL_231;
        }

LABEL_208:
        if (position == 1 && resolution == 1280)
        {
          return 4;
        }

        if (position == 1 && resolution == 1920)
        {
          return 5;
        }

LABEL_241:
        if (position == 2 && resolution == 1280)
        {
          return 6;
        }

        if (position == 2 && resolution == 1440)
        {
          return 7;
        }

        return 69;
      }

LABEL_216:
      if (position == 1 && resolution == 1280)
      {
        return 12;
      }

      if (position == 1 && resolution == 1440)
      {
        return 13;
      }

      return 69;
    }

    if (v6 > 3801472100)
    {
      if (v6 > 3885279869)
      {
        if (v6 > 4201643248)
        {
          if (v6 != 4201643249)
          {
            v7 = 4242862982;
            goto LABEL_192;
          }
        }

        else if (v6 != 3885279870)
        {
          v7 = 4184216061;
          goto LABEL_192;
        }

        goto LABEL_187;
      }

      if (v6 == 3801472101)
      {
        goto LABEL_208;
      }

      if (v6 == 3825599860)
      {
        goto LABEL_141;
      }

      v15 = 3863625342;
LABEL_153:
      if (v6 != v15)
      {
        return 69;
      }

      goto LABEL_180;
    }

    if (v6 <= 3700458386)
    {
      if (v6 == 3645319985)
      {
        goto LABEL_170;
      }

      if (v6 == 3667751753)
      {
        goto LABEL_193;
      }

      v7 = 3677894691;
      goto LABEL_192;
    }

    if (v6 == 3700458387)
    {
      goto LABEL_193;
    }

    if (v6 == 3711192744)
    {
      goto LABEL_237;
    }

    if (v6 != 3743999268)
    {
      return 69;
    }

LABEL_164:
    if (position == 1 && resolution == 1280)
    {
      return 21;
    }

    if (position == 1 && resolution == 1920)
    {
      return 22;
    }

    if (position == 2 && resolution == 1280)
    {
      return 23;
    }

    if (position == 2 && resolution == 1440)
    {
      return 24;
    }

    return 69;
  }

  if (v6 > 2688879998)
  {
    if (v6 > 2941181570)
    {
      if (v6 > 3048527335)
      {
        if (v6 > 3101941569)
        {
          if (v6 == 3101941570)
          {
            goto LABEL_193;
          }

          v7 = 3113954710;
          goto LABEL_192;
        }

        if (v6 != 3048527336)
        {
          v7 = 3054476161;
          goto LABEL_192;
        }

        goto LABEL_141;
      }

      if (v6 == 2941181571)
      {
        goto LABEL_141;
      }

      if (v6 == 2959111092)
      {
        goto LABEL_193;
      }

      if (v6 != 3001488778)
      {
        return 69;
      }

LABEL_187:
      if (position == 1 && resolution == 1280)
      {
        return 35;
      }

      if (position == 1 && resolution == 1920)
      {
        return 36;
      }

      if (position == 1 && resolution == 3840)
      {
        return 37;
      }

      if (position == 2 && resolution == 1280)
      {
        return 38;
      }

      if (position == 2 && resolution == 1440)
      {
        return 39;
      }

      return 69;
    }

    if (v6 > 2795618602)
    {
      if (v6 == 2795618603)
      {
        goto LABEL_141;
      }

      if (v6 == 2903084588)
      {
        goto LABEL_193;
      }

      if (v6 != 2940697645)
      {
        return 69;
      }
    }

    else if (v6 != 2688879999)
    {
      if (v6 != 2722529672)
      {
        v8 = 2793418701;
LABEL_140:
        if (v6 != v8)
        {
          return 69;
        }

        goto LABEL_141;
      }

LABEL_161:
      if (position == 1 && resolution == 1280)
      {
        return 30;
      }

      if (position == 1 && resolution == 1920)
      {
        return 31;
      }

      if (position == 1 && resolution == 3840)
      {
        return 32;
      }

      if (position == 2 && resolution == 1280)
      {
        return 33;
      }

      if (position == 2 && resolution == 1440)
      {
        return 34;
      }

      return 69;
    }

    if (position == 1 && resolution == 1280)
    {
      return 59;
    }

    if (position == 1 && resolution == 1920)
    {
      return 60;
    }

    if (position == 1 && resolution == 3840)
    {
      return 61;
    }

    if (position == 2 && resolution == 1280)
    {
      return 62;
    }

    if (position == 2 && resolution == 1440)
    {
      return 63;
    }

    return 69;
  }

  if (v6 <= 2614323574)
  {
    if (v6 > 2487868871)
    {
      if (v6 == 2487868872)
      {
        goto LABEL_193;
      }

      if (v6 == 2516717268)
      {
LABEL_170:
        if (position == 1 && resolution == 1280)
        {
          return 2;
        }

        if (position == 1 && resolution == 1440)
        {
          return 3;
        }

        return 69;
      }

      v7 = 2566016329;
      goto LABEL_192;
    }

    if (v6 != 2309863438)
    {
      if (v6 == 2385671069)
      {
        goto LABEL_170;
      }

      v11 = 2458172802;
      goto LABEL_178;
    }

LABEL_234:
    if (position == 1 && resolution == 1280)
    {
      return 45;
    }

    if (position == 1 && resolution == 1920)
    {
      return 46;
    }

    if (position == 1 && resolution == 3840)
    {
      return 47;
    }

    if (position == 2 && resolution == 1280)
    {
      return 48;
    }

    if (position == 2 && resolution == 1440)
    {
      return 49;
    }

    return 69;
  }

  if (v6 > 2628394913)
  {
    if (v6 <= 2644487443)
    {
      if (v6 != 2628394914)
      {
        v7 = 2634105757;
        goto LABEL_192;
      }

LABEL_193:
      if (position == 1 && resolution == 1280)
      {
        return 15;
      }

      if (position == 1 && resolution == 1920)
      {
        return 16;
      }

      if (position == 1 && resolution == 3840)
      {
        return 14;
      }

      goto LABEL_277;
    }

    if (v6 == 2644487444)
    {
      goto LABEL_193;
    }

    v14 = 2673319456;
    goto LABEL_169;
  }

  if (v6 == 2614323575)
  {
    goto LABEL_170;
  }

  if (v6 == 2619317134)
  {
    goto LABEL_193;
  }

  v7 = 2622433984;
LABEL_192:
  if (v6 == v7)
  {
    goto LABEL_193;
  }

  return 69;
}

@end