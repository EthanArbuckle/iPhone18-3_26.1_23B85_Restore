@interface GLKTextureTXR
- (BOOL)uploadToGLTexture:(unsigned int)a3 error:(id *)a4;
- (GLKTextureTXR)initWithTexture:(id)a3 API:(unint64_t)a4 options:(id)a5 error:(id *)a6;
- (void)dealloc;
@end

@implementation GLKTextureTXR

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GLKTextureTXR;
  [(GLKTextureTXR *)&v3 dealloc];
}

- (GLKTextureTXR)initWithTexture:(id)a3 API:(unint64_t)a4 options:(id)a5 error:(id *)a6
{
  v24.receiver = self;
  v24.super_class = GLKTextureTXR;
  v9 = [(GLKTextureTXR *)&v24 init:a3];
  v10 = v9;
  if (!v9)
  {
    return v10;
  }

  v9->_texture = a3;
  v11 = a3;
  v10->_arrayLength = [objc_msgSend(objc_msgSend(objc_msgSend(a3 "mipmapLevels")];
  if ([(TXRTexture *)v10->_texture cubemap])
  {
    if (v10->_arrayLength >= 2)
    {
      if (a6)
      {
        *a6 = _GLKTextureErrorWithCodeAndErrorString(19, @"OpenGL ES does not support cubemap arrays");
      }

      v10->_arrayLength = 1;
    }

    v10->_target = 34067;
    [a3 dimensions];
    if (v12 != 1)
    {
      [GLKTextureTXR initWithTexture:API:options:error:];
    }

    [a3 dimensions];
    v14 = v13;
    [a3 dimensions];
    if (v14 != v15)
    {
      [GLKTextureTXR initWithTexture:API:options:error:];
    }
  }

  else
  {
    [(TXRTexture *)v10->_texture dimensions];
    arrayLength = v10->_arrayLength;
    if (v17 < 2)
    {
      if (arrayLength < 2)
      {
        v18 = 3553;
      }

      else
      {
        v18 = 35866;
      }
    }

    else
    {
      if (arrayLength >= 2)
      {
        if (a6)
        {
          *a6 = _GLKTextureErrorWithCodeAndErrorString(19, @"OpenGL does not support 3D texture arrays");
        }

        goto LABEL_19;
      }

      v18 = 32879;
    }

    v10->_target = v18;
  }

LABEL_19:
  if (([(TXRTexture *)v10->_texture cubemap]& 1) != 0)
  {
    target = 34069;
  }

  else
  {
    target = v10->_target;
  }

  v10->_loadTarget = target;
  v10->_mipmapLevelCount = [-[TXRTexture mipmapLevels](v10->_texture "mipmapLevels")];
  [(TXRTexture *)v10->_texture dimensions];
  v10->_width = v20;
  [(TXRTexture *)v10->_texture dimensions];
  v10->_height = v21;
  [(TXRTexture *)v10->_texture dimensions];
  v10->_depth = v22;
  v10->_hasAlpha = [MEMORY[0x277D71430] hasAlpha:{-[TXRTexture pixelFormat](v10->_texture, "pixelFormat")}];
  v10->_API = a4;
  return v10;
}

- (BOOL)uploadToGLTexture:(unsigned int)a3 error:(id *)a4
{
  v6 = self;
  self->_lossyCompressedSource = [MEMORY[0x277D71430] isCompressed:{-[TXRTexture pixelFormat](self->_texture, "pixelFormat")}];
  v7 = [(TXRTexture *)v6->_texture pixelFormat];
  API = v6->_API;
  if (v7 > 79)
  {
    if (v7 <= 551)
    {
      switch(v7)
      {
        case 80:
          v62 = 0x80E100001401;
          v9 = 37793;
          goto LABEL_134;
        case 81:
          v62 = 0x80E100001401;
          v9 = 35907;
          goto LABEL_134;
        case 90:
          v62 = 0x190800008368;
          v9 = 32857;
          goto LABEL_134;
        case 92:
          v62 = 0x190700008C3BLL;
          v9 = 35898;
          goto LABEL_134;
        case 93:
          v62 = 0x190700008C3ELL;
          v9 = 35901;
          goto LABEL_134;
        case 105:
          v62 = 0x822700001406;
          v9 = 33328;
          goto LABEL_134;
        case 110:
          v64 = 32856;
          v62 = 0x190800001401;
          v10 = 70;
          goto LABEL_147;
        case 112:
          v64 = 36759;
          v62 = 0x190800001400;
          v10 = 72;
          goto LABEL_147;
        case 115:
          v13 = API == 3;
          if (API == 3)
          {
            v14 = 34842;
          }

          else
          {
            v14 = 6408;
          }

          v64 = v14;
          if (v13)
          {
            v15 = 5131;
          }

          else
          {
            v15 = 36193;
          }

          v62 = v15 | 0x190800000000;
          goto LABEL_135;
        case 125:
          v62 = 0x190800001406;
          v9 = 34836;
          goto LABEL_134;
        case 160:
          v62 = 0;
          v9 = 35841;
          goto LABEL_134;
        case 161:
          v62 = 0;
          v9 = 35412;
          goto LABEL_134;
        case 162:
          v62 = 0;
          v9 = 35840;
          goto LABEL_134;
        case 163:
          v62 = 0;
          v9 = 35413;
          goto LABEL_134;
        case 164:
          v62 = 0;
          v9 = 35843;
          goto LABEL_134;
        case 165:
          v62 = 0;
          v9 = 35414;
          goto LABEL_134;
        case 166:
          v62 = 0;
          v9 = 35842;
          goto LABEL_134;
        case 167:
          v62 = 0;
          v9 = 35415;
          goto LABEL_134;
        case 170:
          v62 = 0;
          v9 = 37488;
          goto LABEL_134;
        case 172:
          v62 = 0;
          v9 = 37489;
          goto LABEL_134;
        case 174:
          v62 = 0;
          v9 = 37490;
          goto LABEL_134;
        case 176:
          v62 = 0;
          v9 = 37491;
          goto LABEL_134;
        case 178:
          v62 = 0;
          v9 = 37496;
          goto LABEL_134;
        case 179:
          v62 = 0;
          v9 = 37497;
          goto LABEL_134;
        case 180:
          v62 = 0;
          v9 = 37492;
          goto LABEL_134;
        case 181:
          v62 = 0;
          v9 = 37493;
          goto LABEL_134;
        case 182:
          v62 = 0;
          v9 = 37494;
          goto LABEL_134;
        case 183:
          v62 = 0;
          v9 = 37495;
          goto LABEL_134;
        case 186:
          v62 = 0;
          v9 = 37840;
          goto LABEL_134;
        case 187:
          v62 = 0;
          v9 = 37841;
          goto LABEL_134;
        case 188:
          v62 = 0;
          v9 = 37842;
          goto LABEL_134;
        case 189:
          v62 = 0;
          v9 = 37843;
          goto LABEL_134;
        case 190:
          v62 = 0;
          v9 = 37844;
          goto LABEL_134;
        case 192:
          v62 = 0;
          v9 = 37845;
          goto LABEL_134;
        case 193:
          v62 = 0;
          v9 = 37846;
          goto LABEL_134;
        case 194:
          v62 = 0;
          v9 = 37847;
          goto LABEL_134;
        case 195:
          v62 = 0;
          v9 = 37848;
          goto LABEL_134;
        case 196:
          v62 = 0;
          v9 = 37849;
          goto LABEL_134;
        case 197:
          v62 = 0;
          v9 = 37850;
          goto LABEL_134;
        case 198:
          v62 = 0;
          v9 = 37851;
          goto LABEL_134;
        case 199:
          v62 = 0;
          v9 = 37852;
          goto LABEL_134;
        case 200:
          v62 = 0;
          v9 = 37853;
          goto LABEL_134;
        case 204:
          v62 = 0;
          v9 = 37808;
          goto LABEL_134;
        case 205:
          v62 = 0;
          v9 = 37809;
          goto LABEL_134;
        case 206:
          v62 = 0;
          v9 = 37810;
          goto LABEL_134;
        case 207:
          v62 = 0;
          v9 = 37811;
          goto LABEL_134;
        case 208:
          v62 = 0;
          v9 = 37812;
          goto LABEL_134;
        case 210:
          v62 = 0;
          v9 = 37813;
          goto LABEL_134;
        case 211:
          v62 = 0;
          v9 = 37814;
          goto LABEL_134;
        case 212:
          v62 = 0;
          v9 = 37815;
          goto LABEL_134;
        case 213:
          v62 = 0;
          v9 = 37816;
          goto LABEL_134;
        case 214:
          v62 = 0;
          v9 = 37817;
          goto LABEL_134;
        case 215:
          v62 = 0;
          v9 = 37818;
          goto LABEL_134;
        case 216:
          v62 = 0;
          v9 = 37819;
          goto LABEL_134;
        case 217:
          v62 = 0;
          v9 = 37820;
          goto LABEL_134;
        case 218:
          v62 = 0;
          v9 = 37821;
          goto LABEL_134;
        default:
          goto LABEL_126;
      }
    }

    if (v7 <= 554)
    {
      if (v7 != 553)
      {
        v64 = 32856;
        v62 = 0x80E100001401;
        v10 = 80;
        goto LABEL_147;
      }

LABEL_46:
      v64 = 35907;
      v62 = 0x80E100001401;
      v10 = 81;
      goto LABEL_147;
    }

    switch(v7)
    {
      case 555:
        goto LABEL_46;
      case 2147483649:
        HIDWORD(v62) = 6407;
        v12 = 32819;
        goto LABEL_125;
      case 2147483650:
        HIDWORD(v62) = 6407;
        v12 = 5121;
LABEL_125:
        LODWORD(v62) = v12;
        v9 = 32849;
        goto LABEL_134;
    }

LABEL_126:
    v18 = [MEMORY[0x277D71430] isGammaEncoded:v7];
    if (v18)
    {
      v19 = 35906;
    }

    else
    {
      v19 = 6408;
    }

    if (v18)
    {
      v10 = 71;
    }

    else
    {
      v10 = 70;
    }

    LODWORD(v62) = 5121;
    HIDWORD(v62) = v19;
    v64 = v19;
    goto LABEL_147;
  }

  if (v7 <= 39)
  {
    v64 = 33321;
    v62 = 0x190300001401;
    v10 = 10;
    if (v7 > 19)
    {
      if (v7 <= 24)
      {
        if (v7 == 20)
        {
          goto LABEL_147;
        }

        if (v7 == 22)
        {
          v64 = 36756;
          v62 = 0x190300001400;
          v10 = 12;
          goto LABEL_147;
        }

        goto LABEL_126;
      }

      switch(v7)
      {
        case 25:
          v62 = 0x19030000140BLL;
          v9 = 33325;
          break;
        case 30:
          v62 = 0x822700001401;
          v9 = 33323;
          break;
        case 32:
          v62 = 0x822700001400;
          v9 = 36757;
          break;
        default:
          goto LABEL_126;
      }

      goto LABEL_134;
    }

    if (v7 > 10)
    {
      if (v7 == 11)
      {
        goto LABEL_147;
      }

      if (v7 != 12)
      {
        goto LABEL_126;
      }

      v62 = 0x190300001400;
      v9 = 36756;
      goto LABEL_134;
    }

    if (v7 != 1)
    {
      if (v7 != 10)
      {
        goto LABEL_126;
      }

      v62 = 0x190300001401;
      v9 = 33321;
      goto LABEL_134;
    }

    v11 = 6406;
LABEL_109:
    v64 = v11;
    HIDWORD(v62) = v11;
    goto LABEL_135;
  }

  if (v7 <= 61)
  {
    if (v7 <= 41)
    {
      if (v7 == 40)
      {
        v62 = 0x190700008363;
        v9 = 36194;
      }

      else
      {
        v62 = 0x190800008034;
        v9 = 32855;
      }

      goto LABEL_134;
    }

    switch(v7)
    {
      case '*':
        v62 = 0x190800008033;
        v9 = 32854;
        break;
      case '7':
        v62 = 0x190300001406;
        v9 = 33326;
        break;
      case '<':
        v64 = 33323;
        v62 = 0x822700001401;
        v10 = 30;
LABEL_147:
        [(TXRTexture *)v6->_texture reformat:v10 gammaDegamma:0 bufferAllocator:0 error:a4];
        goto LABEL_148;
      default:
        goto LABEL_126;
    }

LABEL_134:
    v64 = v9;
    goto LABEL_135;
  }

  if (v7 <= 69)
  {
    if (v7 == 62)
    {
      v64 = 36756;
      v62 = 0x822700001400;
      v10 = 32;
      goto LABEL_147;
    }

    if (v7 != 65)
    {
      goto LABEL_126;
    }

    v62 = 0x82270000140BLL;
    v9 = 33327;
    goto LABEL_134;
  }

  if (v7 == 70)
  {
    v62 = 0x190800001401;
    v9 = 32856;
    goto LABEL_134;
  }

  if (v7 != 71)
  {
    if (v7 != 72)
    {
      goto LABEL_126;
    }

    if (API != 2)
    {
      v62 = 0x190800001400;
      v9 = 36759;
      goto LABEL_134;
    }

    LODWORD(v62) = 0;
    v11 = 35906;
    goto LABEL_109;
  }

  if (API == 2)
  {
    v16 = 35906;
  }

  else
  {
    v16 = 35907;
  }

  v64 = v16;
  if (API == 2)
  {
    v17 = 35906;
  }

  else
  {
    v17 = 6408;
  }

  LODWORD(v62) = 5121;
  HIDWORD(v62) = v17;
LABEL_135:
  v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:glGetString(0x1F03u)];
  v21 = [v20 componentsSeparatedByString:@" "];
  if ([MEMORY[0x277D71430] isASTC:{-[TXRTexture pixelFormat](v6->_texture, "pixelFormat")}] && !objc_msgSend(v21, "containsObject:", @"GL_KHR_texture_compression_astc_ldr") || objc_msgSend(MEMORY[0x277D71430], "isETC2:", -[TXRTexture pixelFormat](v6->_texture, "pixelFormat")) && v6->_API != 3)
  {
    v22 = [(TXRTexture *)v6->_texture pixelFormat];
    v23 = [MEMORY[0x277D71430] isGammaEncoded:v22];
    if (v23)
    {
      v24 = 35906;
    }

    else
    {
      v24 = 6408;
    }

    if (v23)
    {
      v10 = 71;
    }

    else
    {
      v10 = 70;
    }

    LODWORD(v62) = 5121;
    HIDWORD(v62) = v24;
    v64 = v24;
    goto LABEL_147;
  }

LABEL_148:
  [(TXRTexture *)v6->_texture dimensions];
  v26 = v25;
  [(TXRTexture *)v6->_texture dimensions];
  if (((v27 - 1) & v26) == 0)
  {
    [(TXRTexture *)v6->_texture dimensions];
    v29 = v28;
    [(TXRTexture *)v6->_texture dimensions];
    if (((v30 - 1) & v29) == 0)
    {
      goto LABEL_153;
    }
  }

  v31 = v6->_API;
  if (v31 != 1)
  {
    if (v31 == 2)
    {
      v6->_mipmapLevelCount = 1;
    }

LABEL_153:
    v59 = a4;
    glBindTexture(v6->_target, a3);
    glTexParameteri(v6->_target, 0x2802u, 33071);
    glTexParameteri(v6->_target, 0x2803u, 33071);
    glTexParameteri(v6->_target, 0x2800u, 9729);
    glTexParameteri(v6->_target, 0x813Du, v6->_mipmapLevelCount);
    v32 = [MEMORY[0x277D71430] isCompressed:{-[TXRTexture pixelFormat](v6->_texture, "pixelFormat")}];
    if ((v32 & 1) == 0)
    {
      [MEMORY[0x277D71430] pixelBytes:{-[TXRTexture pixelFormat](v6->_texture, "pixelFormat")}];
    }

    if (v6->_mipmapLevelCount <= 1)
    {
      v33 = 9729;
    }

    else
    {
      v33 = 9987;
    }

    glTexParameteri(v6->_target, 0x2801u, v33);
    [(TXRTexture *)v6->_texture dimensions];
    v63 = v34;
    if (v6->_mipmapLevelCount)
    {
      v35 = 0;
      while (1)
      {
        v60 = [-[TXRTexture mipmapLevels](v6->_texture "mipmapLevels")];
        if (v6->_arrayLength)
        {
          break;
        }

LABEL_181:
        v49 = vcgt_u32(*&v63, 0x100000001);
        *&v50 = vsub_s32(vand_s8(vshr_n_u32(*&v63, 1uLL), v49), vmvn_s8(v49));
        if (DWORD2(v63) <= 1)
        {
          v51 = 1;
        }

        else
        {
          v51 = DWORD2(v63) >> 1;
        }

        *(&v50 + 1) = __PAIR64__(HIDWORD(v63), v51);
        ++v35;
        v63 = v50;
        if (v35 >= v6->_mipmapLevelCount)
        {
          goto LABEL_185;
        }
      }

      v36 = 0;
      while (1)
      {
        v37 = v6;
        v61 = v36;
        v38 = [objc_msgSend(v60 "elements")];
        if ([objc_msgSend(v38 "faces")])
        {
          break;
        }

LABEL_180:
        v36 = v61 + 1;
        v6 = v37;
        if (v61 + 1 >= v37->_arrayLength)
        {
          goto LABEL_181;
        }
      }

      v39 = 0;
      while (1)
      {
        v40 = [objc_msgSend(v38 "faces")];
        v41 = [objc_msgSend(v40 "buffer")];
        v42 = [v40 bytesPerRow];
        if (!v42)
        {
          v42 = [MEMORY[0x277D71430] packedMemoryLayoutForFormat:-[TXRTexture pixelFormat](v37->_texture dimensions:"pixelFormat"), *&v63];
        }

        v43 = [v41 bytes];
        v44 = [v40 offset];
        target = v37->_target;
        if (target > 34066)
        {
          break;
        }

        if (target == 3553)
        {
          goto LABEL_171;
        }

        if (target == 32879)
        {
          [GLKTextureTXR uploadToGLTexture:error:];
        }

LABEL_179:
        if (++v39 >= [objc_msgSend(v38 "faces")])
        {
          goto LABEL_180;
        }
      }

      if (target != 34067)
      {
        if (target == 35866)
        {
          [GLKTextureTXR uploadToGLTexture:error:];
        }

        goto LABEL_179;
      }

LABEL_171:
      pixels = (v43 + v44);
      if (v32)
      {
        v47 = [v40 bytesPerImage];
        if (v47)
        {
          v48 = v47;
        }

        else
        {
          v48 = v42 * DWORD1(v63);
        }

        glCompressedTexImage2D(v39 + v37->_loadTarget, v35, v64, v63, SDWORD1(v63), 0, v48, pixels);
      }

      else
      {
        params = 0;
        glGetIntegerv(0xCF5u, &params);
        glPixelStorei(0xCF5u, 1);
        if (v42 != v63 * [MEMORY[0x277D71430] pixelBytes:{-[TXRTexture pixelFormat](v37->_texture, "pixelFormat")}])
        {
          [GLKTextureTXR uploadToGLTexture:error:];
        }

        glTexImage2D(v39 + v37->_loadTarget, v35, v64, v63, SDWORD1(v63), 0, HIDWORD(v62), v62, pixels);
        glPixelStorei(0xCF5u, params);
      }

      goto LABEL_179;
    }

LABEL_185:
    Error = glGetError();
    if (!Error)
    {
      return 1;
    }

    if (Error == 1281)
    {
      v65 = 0;
      v66 = 0;
      glGetIntegerv(0xD33u, &v66);
      glGetIntegerv(0x851Cu, &v65);
      a4 = v59;
      if (([(TXRTexture *)v6->_texture cubemap]& 1) != 0 || ([(TXRTexture *)v6->_texture dimensions], v53 <= v66))
      {
        if (([(TXRTexture *)v6->_texture cubemap]& 1) != 0 || ([(TXRTexture *)v6->_texture dimensions], v56 <= v66))
        {
          if ([(TXRTexture *)v6->_texture cubemap])
          {
            [(TXRTexture *)v6->_texture dimensions];
            if (v57 <= v65)
            {
              v54 = 0;
            }

            else
            {
              v54 = @"Cube Map width / height are greater than GL_MAX_CUBE_MAP_TEXTURE_SIZE";
            }
          }

          else
          {
            v54 = 0;
          }
        }

        else
        {
          v54 = @"Texture height is greater than GL_MAX_TEXTURE_SIZE";
        }
      }

      else
      {
        v54 = @"Texture width is greater than GL_MAX_TEXTURE_SIZE";
      }
    }

    else
    {
      v54 = @"OpenGL Error";
      a4 = v59;
    }

    if (a4)
    {
      goto LABEL_204;
    }

    return 0;
  }

  if (a4)
  {
    v54 = @"OpenGL ES 1 does not support non-power-of-two-textures";
LABEL_204:
    v58 = _GLKTextureErrorWithCodeAndErrorString(0, v54);
    result = 0;
    *a4 = v58;
    return result;
  }

  return 0;
}

@end