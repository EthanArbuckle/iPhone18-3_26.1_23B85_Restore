@interface ASDTIOA2DefaultChannelLayout
- (id)description;
@end

@implementation ASDTIOA2DefaultChannelLayout

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  scope = [(ASDCustomProperty *)self scope];
  v5 = "Output";
  if (scope == 1768845428)
  {
    v5 = "Input";
  }

  v6 = [v3 stringWithFormat:@"%s Channel Layout:", v5];
  propertyValue = [(ASDTCustomProperty *)self propertyValue];
  if ([propertyValue length] <= 0x1F)
  {
    [v6 appendString:@" nil"];
    v8 = [v6 copy];
    goto LABEL_120;
  }

  bytes = [propertyValue bytes];
  v10 = bytes[2];
  if (v10 <= 1)
  {
    v10 = 1;
  }

  std::vector<char>::vector[abi:ne200100](&__dst, 20 * v10 + 12);
  memcpy(__dst, bytes, 20 * bytes[2] + 12);
  if (*__dst == 0x10000)
  {
    v12 = vcnt_s8(*(__dst + 1));
    v12.i16[0] = vaddlv_u8(v12);
    v11 = v12.u32[0];
  }

  else if (*__dst)
  {
    v11 = *__dst;
  }

  else
  {
    v11 = *(__dst + 2);
  }

  [v6 appendFormat:@" count: %u", v11];
  v13 = *__dst;
  if (!v13)
  {
    [v6 appendString:{@", channels: "}];
    v15 = __dst;
    v16 = *(__dst + 2);
    if (v16 > (v26 - __dst - 12) / 0x14uLL)
    {
LABEL_123:
      __assert_rtn("GetNumberChannelDescriptions", "CoreAudioBaseTypes.hpp", 2252, "GetAudioChannelLayout().mNumberChannelDescriptions <= (mStorage.size() - kHeaderSize) / sizeof(AudioChannelDescription)");
    }

    v17 = 0;
    v18 = &unk_2416E02DB;
    v19 = -1;
    while (1)
    {
      if (++v19 >= v16)
      {
        goto LABEL_118;
      }

      v20 = &v15[v17];
      v21 = (*&v15[v17 + 12] & 0xFFF0000) - 0x10000;
      if (v21 >= 0x40000)
      {
        v23 = *&v15[v17 + 12];
        if (v23 <= 0xC7)
        {
          v22 = "unused";
          switch(*&v15[v17 + 12])
          {
            case 0u:
              goto LABEL_20;
            case 1u:
              v22 = "left";
              break;
            case 2u:
              v22 = "right";
              break;
            case 3u:
              v22 = "center";
              break;
            case 4u:
              v22 = "subwoofer";
              break;
            case 5u:
              v22 = "surround-left";
              break;
            case 6u:
              v22 = "surround-right";
              break;
            case 7u:
              v22 = "center-left";
              break;
            case 8u:
              v22 = "center-right";
              break;
            case 9u:
              v22 = "surround-center";
              break;
            case 0xAu:
              v22 = "surround-left-direct";
              break;
            case 0xBu:
              v22 = "surround-right-direct";
              break;
            case 0xCu:
              v22 = "top-surround-center";
              break;
            case 0xDu:
              v22 = "top-left";
              break;
            case 0xEu:
              v22 = "top-center";
              break;
            case 0xFu:
              v22 = "top-right";
              break;
            case 0x10u:
              v22 = "back-top-left";
              break;
            case 0x11u:
              v22 = "back-top-center";
              break;
            case 0x12u:
              v22 = "back-top-right";
              break;
            case 0x21u:
              v22 = "rear-surround-left";
              break;
            case 0x22u:
              v22 = "rear-surround-right";
              break;
            case 0x23u:
              v22 = "wide-left";
              break;
            case 0x24u:
              v22 = "wide-right";
              break;
            case 0x25u:
              v22 = "subwoofer-2";
              break;
            case 0x26u:
              v22 = "left-total";
              break;
            case 0x27u:
              v22 = "right-total";
              break;
            case 0x28u:
              v22 = "hearing-impaired";
              break;
            case 0x29u:
              v22 = "narration";
              break;
            case 0x2Au:
              v22 = "mono";
              break;
            case 0x2Bu:
              v22 = "dialog-mix";
              break;
            case 0x2Cu:
              v22 = "surround-center-direct";
              break;
            case 0x2Du:
              v22 = "haptic";
              break;
            case 0x31u:
              v22 = "middle-top-left";
              break;
            case 0x33u:
              v22 = "middle-top-right";
              break;
            case 0x34u:
              v22 = "rear-top-left";
              break;
            case 0x35u:
              v22 = "rear-top-center";
              break;
            case 0x36u:
              v22 = "rear-top-right";
              break;
            case 0x37u:
              v22 = "surround-side-left";
              break;
            case 0x38u:
              v22 = "surround-side-right";
              break;
            case 0x39u:
              v22 = "bottom-left";
              break;
            case 0x3Au:
              v22 = "bottom-right";
              break;
            case 0x3Bu:
              v22 = "bottom-center";
              break;
            case 0x3Cu:
              v22 = "surround-top-left";
              break;
            case 0x3Du:
              v22 = "surround-top-right";
              break;
            case 0x3Eu:
              v22 = "subwoofer-3";
              break;
            case 0x3Fu:
              v22 = "surround-back-left";
              break;
            case 0x40u:
              v22 = "surround-back-right";
              break;
            case 0x41u:
              v22 = "screen-edge-left";
              break;
            case 0x42u:
              v22 = "screen-edge-right";
              break;
            case 0x64u:
              v22 = "coordinates";
              break;
            default:
              goto LABEL_115;
          }

          goto LABEL_20;
        }

        if (*&v15[v17 + 12] > 0xCFu)
        {
          if (*&v15[v17 + 12] > 0x12Fu)
          {
            if (*&v15[v17 + 12] > 0x18Fu)
            {
              if (v23 == 400)
              {
                v22 = "discrete";
              }

              else
              {
                if (v23 != 500)
                {
LABEL_115:
                  v22 = "unknown";
                  goto LABEL_20;
                }

                v22 = "hoa-acn";
              }
            }

            else if (v23 == 304)
            {
              v22 = "click-track";
            }

            else
            {
              if (v23 != 305)
              {
                goto LABEL_115;
              }

              v22 = "foreign-language";
            }
          }

          else if (*&v15[v17 + 12] > 0x12Cu)
          {
            if (v23 == 301)
            {
              v22 = "headphones-left";
            }

            else
            {
              if (v23 != 302)
              {
                goto LABEL_115;
              }

              v22 = "headphones-right";
            }
          }

          else if (v23 == 208)
          {
            v22 = "binaural-left";
          }

          else
          {
            if (v23 != 209)
            {
              goto LABEL_115;
            }

            v22 = "binaural-right";
          }
        }

        else
        {
          if (*&v15[v17 + 12] > 0xCBu)
          {
            if (*&v15[v17 + 12] > 0xCDu)
            {
              if (v23 == 206)
              {
                v22 = "x";
              }

              else
              {
                v22 = "y";
              }
            }

            else if (v23 == 204)
            {
              v22 = "mid";
            }

            else
            {
              v22 = "side";
            }

            goto LABEL_20;
          }

          if (*&v15[v17 + 12] > 0xC9u)
          {
            if (v23 == 202)
            {
              v22 = "ambisonic-y";
            }

            else
            {
              v22 = "ambisonic-z";
            }

            goto LABEL_20;
          }

          if (v23 == 200)
          {
            v22 = "ambisonic-w";
          }

          else
          {
            if (v23 != 201)
            {
              goto LABEL_115;
            }

            v22 = "ambisonic-x";
          }
        }
      }

      else
      {
        v22 = off_278CE8D08[HIWORD(v21)];
      }

LABEL_20:
      [v6 appendFormat:@"%s%s", v18, v22];
      if ((*(v20 + 3) & 0xFFF0000u) - 0x10000 >= 0x40000)
      {
        if (*(v20 + 3) == 100)
        {
          [v6 appendFormat:@" (%1.3f, %1.3f, %1.3f)", *&v15[v17 + 20], *&v15[v17 + 24], *&v15[v17 + 28]];
        }
      }

      else
      {
        [v6 appendFormat:@" %u", *(v20 + 3)];
      }

      if (*&v15[v17 + 16])
      {
        [v6 appendFormat:@", flags: %x", *&v15[v17 + 16]];
      }

      v17 += 20;
      v15 = __dst;
      v16 = *(__dst + 2);
      v18 = "; ";
      if (v16 > (v26 - __dst - 12) / 0x14uLL)
      {
        goto LABEL_123;
      }
    }
  }

  if ((v13 & 0x10000) != 0)
  {
    v13 = *(__dst + 1);
    v14 = @", bitmap: %x";
  }

  else
  {
    v14 = @", tag: %x";
  }

  [v6 appendFormat:v14, v13];
LABEL_118:
  v8 = [v6 copy];
  if (__dst)
  {
    v26 = __dst;
    operator delete(__dst);
  }

LABEL_120:

  return v8;
}

@end