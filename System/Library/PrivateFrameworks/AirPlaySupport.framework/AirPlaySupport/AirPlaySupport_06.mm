uint64_t APAudioFormatToASBD(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = 4294960561;
  if (a1 > 0x3FFFFFFF)
  {
    if (a1 <= 0x7FFFFFFFFFFFLL)
    {
      if (a1 > 0x7FFFFFFFFFLL)
      {
        if (a1 <= 0x7FFFFFFFFFFLL)
        {
          if (a1 <= 0x1FFFFFFFFFFLL)
          {
            if (a1 != 0x8000000000)
            {
              if (a1 != 0x10000000000)
              {
                return v3;
              }

              v4 = 0;
              v5 = xmmword_22234D1F0;
              goto LABEL_144;
            }

            v4 = 0;
            v5 = xmmword_22234D1F0;
LABEL_159:
            v6 = 6;
            goto LABEL_160;
          }

          if (a1 == 0x20000000000)
          {
            v4 = 0;
            v5 = xmmword_22234D1E0;
            goto LABEL_159;
          }

          if (a1 != 0x40000000000)
          {
            return v3;
          }

          v4 = 0;
          v5 = xmmword_22234D1E0;
          goto LABEL_144;
        }

        if (a1 <= 0x1FFFFFFFFFFFLL)
        {
          if (a1 != 0x80000000000)
          {
            if (a1 != 0x100000000000)
            {
              return v3;
            }

            v5 = xmmword_22234D370;
            v4 = 16;
            goto LABEL_159;
          }

          v4 = 0;
          v5 = xmmword_22234D1E0;
          goto LABEL_154;
        }

        if (a1 != 0x200000000000)
        {
          if (a1 != 0x400000000000)
          {
            return v3;
          }

          v5 = xmmword_22234D2E0;
          v4 = 32;
          goto LABEL_151;
        }

        v5 = xmmword_22234D300;
        v4 = 32;
LABEL_157:
        v6 = 1;
        goto LABEL_160;
      }

      if (a1 > 0x1FFFFFFFFLL)
      {
        if (a1 <= 0x7FFFFFFFFLL)
        {
          if (a1 == 0x200000000)
          {
            v4 = 0;
            v5 = xmmword_22234D140;
            goto LABEL_144;
          }

          if (a1 != 0x400000000)
          {
            return v3;
          }

          v4 = 0;
          v5 = xmmword_22234D140;
LABEL_149:
          v6 = 12;
          goto LABEL_160;
        }

        if (a1 != 0x800000000)
        {
          if (a1 != 0x4000000000)
          {
            return v3;
          }

          v5 = xmmword_22234D350;
          v4 = 16;
          goto LABEL_144;
        }

        v4 = 0;
        v5 = xmmword_22234D140;
        goto LABEL_147;
      }

      if (a1 == 0x40000000)
      {
        v4 = 0;
        v5 = xmmword_22234D1A0;
        goto LABEL_157;
      }

      if (a1 != 0x80000000)
      {
        if (a1 != 0x100000000)
        {
          return v3;
        }

        v4 = 0;
        v5 = xmmword_22234D1E0;
        goto LABEL_157;
      }

      v4 = 0;
      v5 = xmmword_22234D1E0;
      goto LABEL_117;
    }

    if (a1 <= 0x3FFFFFFFFFFFFFLL)
    {
      if (a1 > 0x3FFFFFFFFFFFFLL)
      {
        if (a1 <= 0xFFFFFFFFFFFFFLL)
        {
          if (a1 == 0x4000000000000)
          {
            v4 = 0;
            v5 = xmmword_22234D230;
            goto LABEL_159;
          }

          if (a1 != 0x8000000000000)
          {
            return v3;
          }

          v4 = 0;
          v5 = xmmword_22234D230;
          goto LABEL_144;
        }

        if (a1 == 0x10000000000000)
        {
          v4 = 0;
          v5 = xmmword_22234D230;
          goto LABEL_149;
        }

        if (a1 != 0x20000000000000)
        {
          return v3;
        }

        v4 = 0;
        v5 = xmmword_22234D230;
LABEL_147:
        v6 = 16;
        goto LABEL_160;
      }

      if (a1 == 0x800000000000)
      {
        v5 = xmmword_22234D2C0;
        v4 = 32;
        goto LABEL_159;
      }

      if (a1 == 0x1000000000000)
      {
        v5 = xmmword_22234D2A0;
        v4 = 32;
        goto LABEL_144;
      }

      if (a1 != 0x2000000000000)
      {
        return v3;
      }

      v4 = 0;
      v5 = xmmword_22234D230;
    }

    else if (a1 > 0x3FFFFFFFFFFFFFFLL)
    {
      if (a1 <= 0x1FFFFFFFFFFFFFFFLL)
      {
        if (a1 == 0x400000000000000)
        {
          v4 = 0;
          v5 = xmmword_22234D150;
          goto LABEL_159;
        }

        if (a1 != 0x1000000000000000)
        {
          return v3;
        }

        v4 = 0;
        v5 = xmmword_22234D150;
LABEL_144:
        v6 = 8;
LABEL_160:
        v7 = 0x40E7700000000000;
        goto LABEL_161;
      }

      if (a1 == 0x2000000000000000)
      {
        v4 = 0;
        v5 = xmmword_22234D170;
      }

      else
      {
        if (a1 != 0x4000000000000000)
        {
          return v3;
        }

        v4 = 0;
        v5 = xmmword_22234D140;
      }
    }

    else if (a1 > 0xFFFFFFFFFFFFFFLL)
    {
      if (a1 == 0x100000000000000)
      {
        v4 = 0;
        v5 = xmmword_22234D160;
        goto LABEL_144;
      }

      if (a1 != 0x200000000000000)
      {
        return v3;
      }

      v4 = 0;
      v5 = xmmword_22234D150;
    }

    else
    {
      if (a1 != 0x40000000000000)
      {
        if (a1 != 0x80000000000000)
        {
          return v3;
        }

        v4 = 0;
        v5 = xmmword_22234D160;
        goto LABEL_159;
      }

      v4 = 0;
      v5 = xmmword_22234D160;
    }

LABEL_151:
    v6 = 2;
    goto LABEL_160;
  }

  if (a1 >= 0x8000)
  {
    if (a1 >= 0x400000)
    {
      if (a1 <= 0x3FFFFFF)
      {
        if (a1 > 0xFFFFFF)
        {
          if (a1 != 0x1000000)
          {
            if (a1 != 0x2000000)
            {
              return v3;
            }

            v4 = 0;
            v5 = xmmword_22234D1E0;
            goto LABEL_151;
          }

          v4 = 0;
          v5 = xmmword_22234D1E0;
        }

        else
        {
          if (a1 != 0x400000)
          {
            if (a1 != 0x800000)
            {
              return v3;
            }

            v4 = 0;
            v5 = xmmword_22234D1F0;
            goto LABEL_151;
          }

          v4 = 0;
          v5 = xmmword_22234D1F0;
        }

        goto LABEL_133;
      }

      if (a1 <= 0xFFFFFFF)
      {
        if (a1 != 0x4000000)
        {
          if (a1 != 0x8000000)
          {
            return v3;
          }

          v4 = 0;
          v5 = xmmword_22234D1E0;
          goto LABEL_130;
        }

        v4 = 0;
        v5 = xmmword_22234D1E0;
        goto LABEL_126;
      }

      if (a1 != 0x10000000)
      {
        if (a1 != 0x20000000)
        {
          return v3;
        }

        v4 = 0;
        v5 = xmmword_22234D1C0;
        goto LABEL_130;
      }

      v4 = 0;
      v5 = xmmword_22234D1D0;
      goto LABEL_126;
    }

    if (a1 < 0x40000)
    {
      if (a1 != 0x8000)
      {
        if (a1 != 0x10000)
        {
          if (a1 != 0x20000)
          {
            return v3;
          }

          v5 = xmmword_22234D390;
          v4 = 24;
          goto LABEL_151;
        }

        v5 = xmmword_22234D3B0;
        v4 = 24;
        goto LABEL_157;
      }

      v5 = xmmword_22234D3D0;
      v4 = 16;
      goto LABEL_151;
    }

    if (a1 >= 0x100000)
    {
      if (a1 == 0x100000)
      {
        v4 = 0;
        v5 = xmmword_22234D220;
      }

      else
      {
        if (a1 != 0x200000)
        {
          return v3;
        }

        v4 = 0;
        v5 = xmmword_22234D200;
      }

      goto LABEL_151;
    }

    if (a1 == 0x40000)
    {
      v4 = 0;
      v5 = xmmword_22234D220;
    }

    else
    {
      if (a1 != 0x80000)
      {
        return v3;
      }

      v4 = 0;
      v5 = xmmword_22234D200;
    }

LABEL_133:
    v6 = 2;
    goto LABEL_134;
  }

  v5 = xmmword_22234D3F0;
  if (a1 > 255)
  {
    if (a1 <= 2047)
    {
      if (a1 == 256)
      {
        v4 = 16;
LABEL_154:
        v6 = 1;
        goto LABEL_155;
      }

      if (a1 == 512)
      {
        v5 = xmmword_22234D3D0;
        v4 = 16;
        v6 = 2;
LABEL_155:
        v7 = 0x40DF400000000000;
        goto LABEL_161;
      }

      if (a1 != 1024)
      {
        return v3;
      }

      v4 = 16;
    }

    else
    {
      if (a1 >= 0x2000)
      {
        if (a1 != 0x2000)
        {
          if (a1 != 0x4000)
          {
            return v3;
          }

          v4 = 16;
          goto LABEL_157;
        }

        v5 = xmmword_22234D390;
        v4 = 24;
        goto LABEL_133;
      }

      if (a1 == 2048)
      {
        v5 = xmmword_22234D3D0;
        v4 = 16;
        goto LABEL_133;
      }

      if (a1 != 4096)
      {
        return v3;
      }

      v5 = xmmword_22234D3B0;
      v4 = 24;
    }

LABEL_117:
    v6 = 1;
LABEL_134:
    v7 = 0x40E5888000000000;
    goto LABEL_161;
  }

  if (a1 <= 15)
  {
    if (a1 != 0x8000000000000000)
    {
      v7 = 0x40BF400000000000;
      if (a1 == 4)
      {
        v4 = 16;
        v6 = 1;
      }

      else
      {
        if (a1 != 8)
        {
          return v3;
        }

        v5 = xmmword_22234D3D0;
        v4 = 16;
        v6 = 2;
      }

      goto LABEL_161;
    }

    v4 = 0;
    v5 = xmmword_22234D140;
    goto LABEL_159;
  }

  if (a1 > 63)
  {
    if (a1 != 64)
    {
      if (a1 != 128)
      {
        return v3;
      }

      v5 = xmmword_22234D3D0;
      v4 = 16;
      v6 = 2;
      goto LABEL_131;
    }

    v4 = 16;
LABEL_130:
    v6 = 1;
LABEL_131:
    v7 = 0x40D7700000000000;
    goto LABEL_161;
  }

  if (a1 != 16)
  {
    if (a1 != 32)
    {
      return v3;
    }

    v5 = xmmword_22234D3D0;
    v4 = 16;
    v6 = 2;
    goto LABEL_127;
  }

  v4 = 16;
LABEL_126:
  v6 = 1;
LABEL_127:
  v7 = 0x40CF400000000000;
LABEL_161:
  *a2 = v7;
  *(a2 + 8) = v5;
  *(a2 + 24) = DWORD2(v5);
  *(a2 + 28) = v6;
  *(a2 + 32) = v4;
  *(a2 + 36) = 0;
  if (a3)
  {
    v8 = 16;
    if (a1 <= 0x7FFFFFFFFLL)
    {
      if (a1 > 0x3FFFFFF)
      {
        if (a1 <= 0x3FFFFFFF)
        {
          if (a1 > 0xFFFFFFF)
          {
            if (a1 != 0x10000000)
            {
              v9 = 0x20000000;
              goto LABEL_216;
            }
          }

          else if (a1 != 0x4000000)
          {
            v9 = 0x8000000;
            goto LABEL_216;
          }
        }

        else
        {
          if (a1 > 0xFFFFFFFFLL)
          {
            if (a1 == 0x100000000 || a1 == 0x200000000)
            {
              goto LABEL_217;
            }

            v9 = 0x400000000;
            goto LABEL_216;
          }

          if (a1 != 0x40000000)
          {
            v9 = 0x80000000;
            goto LABEL_216;
          }
        }

        goto LABEL_217;
      }

      if (a1 < 0x200000)
      {
        if (a1 < 0x80000)
        {
          if (a1 == 0x8000000000000000 || a1 == 0x40000)
          {
            goto LABEL_217;
          }

          goto LABEL_219;
        }

        if (a1 != 0x80000)
        {
          goto LABEL_217;
        }
      }

      else
      {
        if (a1 >= 0x800000)
        {
          if (a1 == 0x800000 || a1 == 0x1000000)
          {
            goto LABEL_217;
          }

          v9 = 0x2000000;
          goto LABEL_216;
        }

        if (a1 != 0x200000)
        {
          goto LABEL_217;
        }
      }
    }

    else
    {
      if (a1 <= 0xFFFFFFFFFFFFFLL)
      {
        if (a1 <= 0x3FFFFFFFFFFLL)
        {
          if (a1 > 0xFFFFFFFFFFLL)
          {
            if (a1 != 0x10000000000)
            {
              v9 = 0x20000000000;
              goto LABEL_216;
            }
          }

          else if (a1 != 0x800000000)
          {
            v9 = 0x8000000000;
            goto LABEL_216;
          }
        }

        else
        {
          if (a1 > 0x1FFFFFFFFFFFFLL)
          {
            if (a1 == 0x2000000000000 || a1 == 0x4000000000000)
            {
              goto LABEL_217;
            }

            v9 = 0x8000000000000;
            goto LABEL_216;
          }

          if (a1 != 0x40000000000)
          {
            v9 = 0x80000000000;
            goto LABEL_216;
          }
        }

LABEL_217:
        v3 = 0;
        *a3 = v8;
        return v3;
      }

      if (a1 <= 0x1FFFFFFFFFFFFFFLL)
      {
        if (a1 > 0x3FFFFFFFFFFFFFLL)
        {
          if (a1 == 0x40000000000000 || a1 == 0x80000000000000)
          {
            goto LABEL_217;
          }

          v9 = 0x100000000000000;
LABEL_216:
          if (a1 == v9)
          {
            goto LABEL_217;
          }

LABEL_219:
          v8 = v4;
          goto LABEL_217;
        }

        if (a1 != 0x10000000000000)
        {
          v9 = 0x20000000000000;
          goto LABEL_216;
        }

        goto LABEL_217;
      }

      if (a1 <= 0xFFFFFFFFFFFFFFFLL)
      {
        if (a1 != 0x200000000000000)
        {
          v9 = 0x400000000000000;
          goto LABEL_216;
        }

        goto LABEL_217;
      }

      if (a1 == 0x1000000000000000 || a1 == 0x4000000000000000)
      {
        goto LABEL_217;
      }
    }

    v8 = 24;
    goto LABEL_217;
  }

  return 0;
}

uint64_t APAudioFormatIndexToAPAudioFormat(unint64_t a1)
{
  if (a1 >= 0x40)
  {
    return 0;
  }

  else
  {
    return 1 << a1;
  }
}

uint64_t ASBDToAPAudioFormat(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = 4294960561;
  if (v2 > 1869641074)
  {
    if (v2 <= 1902207847)
    {
      if (v2 == 1869641075)
      {
        if (*(a1 + 28) == 1)
        {
          v10 = *a1;
          if (*a1 == 16000.0)
          {
            v6 = 0x10000000;
            goto LABEL_175;
          }

          if (v10 == 24000.0)
          {
            v6 = 0x20000000;
            goto LABEL_175;
          }

          if (v10 == 48000.0)
          {
            v6 = 0x40000000;
            goto LABEL_175;
          }
        }

        return 4294960561;
      }

      if (v2 == 1902207331)
      {
        v8 = *(a1 + 28);
        if (v8 == 8)
        {
          if (*a1 == 48000.0)
          {
            v6 = 0x100000000000000;
            goto LABEL_175;
          }
        }

        else if (v8 == 6)
        {
          if (*a1 == 48000.0)
          {
            v6 = 0x80000000000000;
            goto LABEL_175;
          }
        }

        else if (v8 == 2 && *a1 == 48000.0)
        {
          v6 = 0x40000000000000;
          goto LABEL_175;
        }

        return 4294960561;
      }
    }

    else
    {
      switch(v2)
      {
        case 1902207848:
          v12 = *(a1 + 28);
          if (v12 == 8)
          {
            if (*a1 == 48000.0)
            {
              v6 = 0x1000000000000000;
              goto LABEL_175;
            }
          }

          else if (v12 == 6)
          {
            if (*a1 == 48000.0)
            {
              v6 = 0x400000000000000;
              goto LABEL_175;
            }
          }

          else if (v12 == 2 && *a1 == 48000.0)
          {
            v6 = 0x200000000000000;
            goto LABEL_175;
          }

          return 4294960561;
        case 1902324531:
          HIDWORD(v16) = *(a1 + 28) - 2;
          LODWORD(v16) = HIDWORD(v16);
          v15 = v16 >> 1;
          v3 = 4294960561;
          if (v15 <= 2)
          {
            if (!v15)
            {
              if (*a1 == 48000.0)
              {
                v6 = 0x4000000000000000;
                goto LABEL_175;
              }

              return 4294960561;
            }

            if (v15 == 2)
            {
              if (*a1 == 48000.0)
              {
                v6 = 0x8000000000000000;
                goto LABEL_175;
              }

              return 4294960561;
            }
          }

          else
          {
            switch(v15)
            {
              case 3:
                if (*a1 == 48000.0)
                {
                  v6 = 0x200000000;
                  goto LABEL_175;
                }

                return 4294960561;
              case 5:
                if (*a1 == 48000.0)
                {
                  v6 = 0x400000000;
                  goto LABEL_175;
                }

                return 4294960561;
              case 7:
                if (*a1 == 48000.0)
                {
                  v6 = 0x800000000;
                  goto LABEL_175;
                }

                return 4294960561;
            }
          }

          break;
        case 1902928227:
          if (*a1 == 48000.0 && *(a1 + 28) == 2 && *(a1 + 12) == 3)
          {
            v6 = 0x2000000000000000;
            goto LABEL_175;
          }

          return 4294960561;
      }
    }

    return v3;
  }

  if (v2 <= 1634492770)
  {
    if (v2 == 1633772320)
    {
      v9 = *(a1 + 28);
      switch(v9)
      {
        case 8:
          v6 = 0x10000000000;
          goto LABEL_175;
        case 6:
          v6 = 0x8000000000;
          goto LABEL_175;
        case 2:
          if (*a1 == 44100.0)
          {
            v6 = 0x400000;
            goto LABEL_175;
          }

          if (*a1 == 48000.0)
          {
            v6 = 0x800000;
            goto LABEL_175;
          }

          break;
      }

      return 4294960561;
    }

    if (v2 == 1633772389)
    {
      v7 = *(a1 + 28);
      if (v7 > 5)
      {
        if (v7 == 6)
        {
          v6 = 0x20000000000;
          goto LABEL_175;
        }

        if (v7 == 8)
        {
          v6 = 0x40000000000;
          goto LABEL_175;
        }
      }

      else
      {
        if (v7 == 1)
        {
          v19 = *a1;
          if (*a1 == 16000.0)
          {
            v6 = 0x4000000;
            goto LABEL_175;
          }

          if (v19 == 24000.0)
          {
            v6 = 0x8000000;
            goto LABEL_175;
          }

          if (v19 == 32000.0)
          {
            v6 = 0x80000000000;
            goto LABEL_175;
          }

          if (v19 == 44100.0)
          {
            v6 = 0x80000000;
            goto LABEL_175;
          }

          if (v19 == 48000.0)
          {
            v6 = 0x100000000;
            goto LABEL_175;
          }

          return 4294960561;
        }

        if (v7 == 2)
        {
          if (*a1 == 44100.0)
          {
            v6 = 0x1000000;
            goto LABEL_175;
          }

          if (*a1 == 48000.0)
          {
            v6 = 0x2000000;
            goto LABEL_175;
          }

          return 4294960561;
        }
      }
    }

    return v3;
  }

  if (v2 == 1634492771)
  {
    if (*a1 == 44100.0 && *(a1 + 28) == 2)
    {
      v11 = *(a1 + 12);
      if (v11 == 1)
      {
        v6 = 0x40000;
        goto LABEL_175;
      }

      if (v11 == 3)
      {
        v6 = 0x80000;
        goto LABEL_175;
      }
    }

    else if (*a1 == 48000.0 && *(a1 + 28) == 2)
    {
      v17 = *(a1 + 12);
      if (v17 == 1)
      {
        v6 = 0x100000;
        goto LABEL_175;
      }

      if (v17 == 3)
      {
        v6 = 0x200000;
        goto LABEL_175;
      }
    }

    return 4294960561;
  }

  if (v2 == 1700997939)
  {
    HIDWORD(v14) = *(a1 + 28) - 2;
    LODWORD(v14) = HIDWORD(v14);
    v13 = v14 >> 1;
    v3 = 4294960561;
    if (v13 <= 2)
    {
      if (!v13)
      {
        if (*a1 == 48000.0)
        {
          v6 = 0x2000000000000;
          goto LABEL_175;
        }

        return 4294960561;
      }

      if (v13 == 2)
      {
        if (*a1 == 48000.0)
        {
          v6 = 0x4000000000000;
          goto LABEL_175;
        }

        return 4294960561;
      }
    }

    else
    {
      switch(v13)
      {
        case 3:
          if (*a1 == 48000.0)
          {
            v6 = 0x8000000000000;
            goto LABEL_175;
          }

          return 4294960561;
        case 5:
          if (*a1 == 48000.0)
          {
            v6 = 0x10000000000000;
            goto LABEL_175;
          }

          return 4294960561;
        case 7:
          if (*a1 == 48000.0)
          {
            v6 = 0x20000000000000;
            goto LABEL_175;
          }

          return 4294960561;
      }
    }

    return v3;
  }

  if (v2 != 1819304813)
  {
    return v3;
  }

  v4 = *a1;
  if (*a1 == 8000.0)
  {
    v5 = *(a1 + 28);
    if (v5 == 1)
    {
      v6 = 4;
      goto LABEL_175;
    }

    if (v5 == 2)
    {
      v6 = 8;
LABEL_175:
      v3 = 0;
      *a2 = v6;
      return v3;
    }

    return 4294960561;
  }

  if (v4 == 16000.0)
  {
    v18 = *(a1 + 28);
    if (v18 == 1)
    {
      v6 = 16;
      goto LABEL_175;
    }

    if (v18 == 2)
    {
      v6 = 32;
      goto LABEL_175;
    }

    return 4294960561;
  }

  if (v4 == 24000.0)
  {
    v20 = *(a1 + 28);
    if (v20 == 1)
    {
      v6 = 64;
      goto LABEL_175;
    }

    if (v20 == 2)
    {
      v6 = 128;
      goto LABEL_175;
    }

    return 4294960561;
  }

  if (v4 == 32000.0)
  {
    v21 = *(a1 + 28);
    if (v21 == 1)
    {
      v6 = 256;
      goto LABEL_175;
    }

    if (v21 == 2)
    {
      v6 = 512;
      goto LABEL_175;
    }

    return 4294960561;
  }

  if (v4 == 44100.0)
  {
    v22 = *(a1 + 28);
    if (v22 == 2)
    {
      v26 = *(a1 + 32);
      if (v26 == 16)
      {
        v6 = 2048;
        goto LABEL_175;
      }

      if (v26 == 24)
      {
        v6 = 0x2000;
        goto LABEL_175;
      }
    }

    else if (v22 == 1)
    {
      v23 = *(a1 + 32);
      if (v23 == 16)
      {
        v6 = 1024;
        goto LABEL_175;
      }

      if (v23 == 24)
      {
        v6 = 4096;
        goto LABEL_175;
      }
    }

    return 4294960561;
  }

  if (v4 != 48000.0)
  {
    return 4294960561;
  }

  v24 = *(a1 + 28);
  v3 = 4294960561;
  if (v24 > 5)
  {
    if (v24 == 6)
    {
      if (*(a1 + 32) == 16)
      {
        v6 = 0x100000000000;
        goto LABEL_175;
      }

      if (*(a1 + 12))
      {
        v6 = 0x800000000000;
        goto LABEL_175;
      }
    }

    else
    {
      if (v24 != 8)
      {
        return v3;
      }

      if (*(a1 + 32) == 16)
      {
        v6 = 0x4000000000;
        goto LABEL_175;
      }

      if (*(a1 + 12))
      {
        v6 = 0x1000000000000;
        goto LABEL_175;
      }
    }

    return 4294960561;
  }

  if (v24 == 1)
  {
    v27 = *(a1 + 32);
    if (v27 == 16)
    {
      v6 = 0x4000;
      goto LABEL_175;
    }

    if (v27 == 24)
    {
      v6 = 0x10000;
      goto LABEL_175;
    }

    if (*(a1 + 12))
    {
      v6 = 0x200000000000;
      goto LABEL_175;
    }

    return 4294960561;
  }

  if (v24 == 2)
  {
    v25 = *(a1 + 32);
    if (v25 == 16)
    {
      v6 = 0x8000;
      goto LABEL_175;
    }

    if (v25 == 24)
    {
      v6 = 0x20000;
      goto LABEL_175;
    }

    if (*(a1 + 12))
    {
      v6 = 0x400000000000;
      goto LABEL_175;
    }

    return 4294960561;
  }

  return v3;
}

uint64_t APAudioFormatToCompressionType(uint64_t a1, int *a2)
{
  v3 = 1;
  result = 4294960561;
  if (a1 > 0x7FFFFFFFFFLL)
  {
    if (a1 > 0x7FFFFFFFFFFFFLL)
    {
      if (a1 > 0xFFFFFFFFFFFFFFLL)
      {
        if (a1 <= 0xFFFFFFFFFFFFFFFLL)
        {
          if (a1 == 0x100000000000000)
          {
            goto LABEL_57;
          }

          if (a1 != 0x200000000000000 && a1 != 0x400000000000000)
          {
            return result;
          }

LABEL_53:
          v3 = 1902207848;
          goto LABEL_75;
        }

        if (a1 == 0x1000000000000000)
        {
          goto LABEL_53;
        }

        if (a1 == 0x2000000000000000)
        {
          v3 = 1902928227;
          goto LABEL_75;
        }

        v7 = 0x4000000000000000;
        goto LABEL_73;
      }

      if (a1 > 0x1FFFFFFFFFFFFFLL)
      {
        if (a1 != 0x20000000000000)
        {
          if (a1 != 0x40000000000000)
          {
            v5 = 0x80000000000000;
LABEL_44:
            if (a1 != v5)
            {
              return result;
            }

            goto LABEL_57;
          }

          goto LABEL_57;
        }

LABEL_74:
        v3 = 128;
        goto LABEL_75;
      }

      if (a1 == 0x8000000000000)
      {
        goto LABEL_74;
      }

      v7 = 0x10000000000000;
LABEL_73:
      if (a1 != v7)
      {
        return result;
      }

      goto LABEL_74;
    }

    if (a1 > 0x3FFFFFFFFFFFLL)
    {
      if (a1 > 0xFFFFFFFFFFFFLL)
      {
        if (a1 == 0x1000000000000)
        {
LABEL_75:
          result = 0;
          *a2 = v3;
          return result;
        }

        if (a1 == 0x2000000000000)
        {
          goto LABEL_74;
        }

        v7 = 0x4000000000000;
        goto LABEL_73;
      }

      if (a1 == 0x400000000000)
      {
        goto LABEL_75;
      }

      v6 = 0x800000000000;
    }

    else
    {
      if (a1 <= 0x1FFFFFFFFFFLL)
      {
        if (a1 == 0x8000000000 || a1 == 0x10000000000)
        {
          goto LABEL_60;
        }

        return result;
      }

      if (a1 == 0x20000000000 || a1 == 0x40000000000)
      {
LABEL_46:
        v3 = 8;
        goto LABEL_75;
      }

      v6 = 0x200000000000;
    }

LABEL_66:
    if (a1 != v6)
    {
      return result;
    }

    goto LABEL_75;
  }

  if (a1 < 0x80000)
  {
    if (a1 > 2047)
    {
      if (a1 >= 0x8000)
      {
        if (a1 == 0x8000 || a1 == 0x20000)
        {
          goto LABEL_75;
        }

        if (a1 != 0x40000)
        {
          return result;
        }

        goto LABEL_70;
      }

      if (a1 == 2048 || a1 == 0x2000)
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (a1 <= 31)
      {
        if (a1 != 0x8000000000000000)
        {
          if (a1 != 8)
          {
            return result;
          }

          goto LABEL_75;
        }

        goto LABEL_57;
      }

      if (a1 == 32 || a1 == 128 || a1 == 512)
      {
        goto LABEL_75;
      }
    }
  }

  else
  {
    if (a1 > 0xFFFFFF)
    {
      if (a1 <= 0x3FFFFFFFFLL)
      {
        if (a1 != 0x1000000 && a1 != 0x2000000)
        {
          v5 = 0x200000000;
          goto LABEL_44;
        }

        goto LABEL_46;
      }

      if (a1 != 0x400000000 && a1 != 0x800000000)
      {
        v6 = 0x4000000000;
        goto LABEL_66;
      }

LABEL_57:
      v3 = 1902207331;
      goto LABEL_75;
    }

    if (a1 >= 0x200000)
    {
      if (a1 != 0x200000)
      {
        if (a1 != 0x400000 && a1 != 0x800000)
        {
          return result;
        }

LABEL_60:
        v3 = 4;
        goto LABEL_75;
      }

LABEL_70:
      v3 = 2;
      goto LABEL_75;
    }

    if (a1 == 0x80000 || a1 == 0x100000)
    {
      goto LABEL_70;
    }
  }

  return result;
}

uint64_t APAudioFormatToPCMASBD(uint64_t a1, uint64_t a2)
{
  v3 = 2;
  v4 = 16;
  result = 4294960561;
  v6 = 0x40E7700000000000;
  if (a1 > 0x3FFFFFFF)
  {
    if (a1 <= 0x7FFFFFFFFFFFLL)
    {
      if (a1 > 0x7FFFFFFFFFLL)
      {
        if (a1 <= 0x7FFFFFFFFFFLL)
        {
          if (a1 <= 0x1FFFFFFFFFFLL)
          {
            if (a1 != 0x8000000000)
            {
              v7 = 0x10000000000;
              goto LABEL_95;
            }

            goto LABEL_98;
          }

          if (a1 != 0x20000000000)
          {
            v7 = 0x40000000000;
LABEL_95:
            if (a1 != v7)
            {
              return result;
            }

            goto LABEL_96;
          }

          goto LABEL_98;
        }

        if (a1 <= 0x1FFFFFFFFFFFLL)
        {
          if (a1 == 0x80000000000)
          {
            v4 = 16;
            v3 = 1;
            v6 = 0x40DF400000000000;
            goto LABEL_126;
          }

          if (a1 != 0x100000000000)
          {
            return result;
          }

          v8 = 0x60000000CLL;
          goto LABEL_112;
        }

        if (a1 == 0x200000000000)
        {
          v8 = 0x100000004;
        }

        else
        {
          if (a1 != 0x400000000000)
          {
            return result;
          }

          v8 = 0x200000008;
        }

LABEL_137:
        v4 = 32;
        v9 = 1;
        goto LABEL_138;
      }

      if (a1 > 0x1FFFFFFFFLL)
      {
        if (a1 <= 0x7FFFFFFFFLL)
        {
          if (a1 == 0x200000000)
          {
LABEL_96:
            v4 = 16;
LABEL_97:
            v3 = 8;
            goto LABEL_126;
          }

          if (a1 != 0x400000000)
          {
            return result;
          }

LABEL_119:
          v4 = 16;
          v3 = 12;
          goto LABEL_126;
        }

        if (a1 != 0x800000000)
        {
          if (a1 != 0x4000000000)
          {
            return result;
          }

          v8 = 0x800000010;
LABEL_112:
          v4 = 16;
          goto LABEL_135;
        }

LABEL_115:
        v3 = 16;
        v4 = 16;
        goto LABEL_126;
      }

      if (a1 == 0x40000000)
      {
        goto LABEL_73;
      }

      if (a1 != 0x80000000)
      {
        if (a1 != 0x100000000)
        {
          return result;
        }

LABEL_73:
        v4 = 16;
        v3 = 1;
        goto LABEL_126;
      }

      v4 = 16;
      v3 = 1;
LABEL_125:
      v6 = 0x40E5888000000000;
      goto LABEL_126;
    }

    if (a1 <= 0x3FFFFFFFFFFFFFLL)
    {
      if (a1 > 0x3FFFFFFFFFFFFLL)
      {
        if (a1 <= 0xFFFFFFFFFFFFFLL)
        {
          if (a1 != 0x4000000000000)
          {
            v7 = 0x8000000000000;
            goto LABEL_95;
          }

          goto LABEL_98;
        }

        if (a1 == 0x10000000000000)
        {
          goto LABEL_119;
        }

        if (a1 != 0x20000000000000)
        {
          return result;
        }

        goto LABEL_115;
      }

      if (a1 == 0x800000000000)
      {
        v8 = 0x600000018;
        goto LABEL_137;
      }

      if (a1 == 0x1000000000000)
      {
        v8 = 0x800000020;
        goto LABEL_137;
      }

      v12 = 0x2000000000000;
      goto LABEL_107;
    }

    if (a1 <= 0x3FFFFFFFFFFFFFFLL)
    {
      if (a1 <= 0xFFFFFFFFFFFFFFLL)
      {
        if (a1 != 0x40000000000000)
        {
          if (a1 == 0x80000000000000)
          {
            goto LABEL_98;
          }

          return result;
        }

LABEL_126:
        result = 0;
        *a2 = v6;
        *(a2 + 8) = 0xC6C70636DLL;
        v13 = v3 * (v4 >> 3);
        *(a2 + 16) = v13;
        *(a2 + 20) = 1;
        *(a2 + 24) = v13;
        *(a2 + 28) = v3;
LABEL_140:
        *(a2 + 32) = v4;
        *(a2 + 36) = 0;
        return result;
      }

      if (a1 == 0x100000000000000)
      {
        goto LABEL_97;
      }

      v12 = 0x200000000000000;
      goto LABEL_107;
    }

    if (a1 <= 0x1FFFFFFFFFFFFFFFLL)
    {
      if (a1 != 0x400000000000000)
      {
        v7 = 0x1000000000000000;
        goto LABEL_95;
      }

LABEL_98:
      v4 = 16;
      goto LABEL_99;
    }

    if (a1 != 0x2000000000000000)
    {
      v12 = 0x4000000000000000;
      goto LABEL_107;
    }

    goto LABEL_117;
  }

  if (a1 >= 0x8000)
  {
    if (a1 < 0x400000)
    {
      if (a1 < 0x40000)
      {
        if (a1 == 0x8000)
        {
          v8 = 0x200000004;
        }

        else
        {
          if (a1 == 0x10000)
          {
            v8 = 0x100000003;
          }

          else
          {
            if (a1 != 0x20000)
            {
              return result;
            }

            v8 = 0x200000006;
          }

          v4 = 24;
        }

        goto LABEL_135;
      }

      if (a1 < 0x100000)
      {
        if (a1 == 0x40000)
        {
          goto LABEL_125;
        }

        if (a1 != 0x80000)
        {
          return result;
        }

        v6 = 0x40E5888000000000;
LABEL_118:
        v4 = 24;
        goto LABEL_126;
      }

      if (a1 == 0x100000)
      {
        goto LABEL_126;
      }

      if (a1 != 0x200000)
      {
        return result;
      }

LABEL_117:
      v6 = 0x40E7700000000000;
      goto LABEL_118;
    }

    if (a1 <= 0x3FFFFFF)
    {
      if (a1 <= 0xFFFFFF)
      {
        if (a1 == 0x400000)
        {
          goto LABEL_125;
        }

        if (a1 != 0x800000)
        {
          return result;
        }

        goto LABEL_126;
      }

      if (a1 == 0x1000000)
      {
        goto LABEL_125;
      }

      v12 = 0x2000000;
LABEL_107:
      if (a1 == v12)
      {
        goto LABEL_126;
      }

      return result;
    }

    if (a1 > 0xFFFFFFF)
    {
      if (a1 != 0x10000000)
      {
        v11 = 0x20000000;
        goto LABEL_81;
      }
    }

    else if (a1 != 0x4000000)
    {
      v11 = 0x8000000;
LABEL_81:
      if (a1 != v11)
      {
        return result;
      }

      v4 = 16;
      v3 = 1;
      v6 = 0x40D7700000000000;
      goto LABEL_126;
    }

    v4 = 16;
    v3 = 1;
    v6 = 0x40CF400000000000;
    goto LABEL_126;
  }

  v8 = 0x100000002;
  if (a1 <= 255)
  {
    if (a1 <= 15)
    {
      if (a1 == 0x8000000000000000)
      {
LABEL_99:
        v3 = 6;
        goto LABEL_126;
      }

      v10 = 0x40BF400000000000;
      if (a1 != 4)
      {
        if (a1 != 8)
        {
          return result;
        }

        v8 = 0x200000004;
      }

      v9 = 12;
    }

    else if (a1 > 63)
    {
      if (a1 != 64)
      {
        if (a1 != 128)
        {
          return result;
        }

        v8 = 0x200000004;
      }

      v9 = 12;
      v10 = 0x40D7700000000000;
    }

    else
    {
      if (a1 != 16)
      {
        if (a1 != 32)
        {
          return result;
        }

        v8 = 0x200000004;
      }

      v9 = 12;
      v10 = 0x40CF400000000000;
    }

LABEL_139:
    result = 0;
    *a2 = v10;
    *(a2 + 8) = 1819304813;
    *(a2 + 12) = v9;
    *(a2 + 16) = v8;
    *(a2 + 20) = 1;
    *(a2 + 24) = v8;
    goto LABEL_140;
  }

  if (a1 <= 2047)
  {
    if (a1 != 256)
    {
      if (a1 != 512)
      {
        if (a1 != 1024)
        {
          return result;
        }

        goto LABEL_131;
      }

      v8 = 0x200000004;
    }

    v9 = 12;
    v10 = 0x40DF400000000000;
    goto LABEL_139;
  }

  if (a1 < 0x2000)
  {
    if (a1 == 2048)
    {
      v8 = 0x200000004;
LABEL_131:
      v9 = 12;
      v10 = 0x40E5888000000000;
      goto LABEL_139;
    }

    if (a1 != 4096)
    {
      return result;
    }

    v8 = 0x100000003;
LABEL_130:
    v4 = 24;
    goto LABEL_131;
  }

  if (a1 == 0x2000)
  {
    v8 = 0x200000006;
    goto LABEL_130;
  }

  if (a1 == 0x4000)
  {
LABEL_135:
    v9 = 12;
LABEL_138:
    v10 = 0x40E7700000000000;
    goto LABEL_139;
  }

  return result;
}

uint64_t APAudioFormatIndexToPCMASBD(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v4 = APAudioFormatIndexToASBD(a1, &v11);
  if (!v4)
  {
    if (DWORD2(v11) == 1819304813)
    {
      v5 = v12;
      *a2 = v11;
      *(a2 + 16) = v5;
      *(a2 + 32) = v13;
    }

    else
    {
      BitsPerChannel = APAudioFormatIndexGetBitsPerChannel(a1);
      if (BitsPerChannel == ((BitsPerChannel + 7) & 0x38))
      {
        v7 = 12;
      }

      else
      {
        v7 = 20;
      }

      *a2 = v11;
      *(a2 + 8) = 1819304813;
      *(a2 + 12) = v7;
      v8 = HIDWORD(v12);
      v9 = HIDWORD(v12) * ((BitsPerChannel + 7) >> 3);
      *(a2 + 16) = v9;
      *(a2 + 20) = 1;
      *(a2 + 24) = v9;
      *(a2 + 28) = v8;
      *(a2 + 32) = BitsPerChannel;
      *(a2 + 36) = 0;
    }
  }

  return v4;
}

uint64_t APAudioFormatGetAudioFormatCount(uint64_t result)
{
  v1 = result;
  LODWORD(result) = 0;
  v2 = 65;
  v3 = 1;
  do
  {
    if ((v3 & v1) != 0)
    {
      result = (result + 1);
    }

    else
    {
      result = result;
    }

    v3 *= 2;
    --v2;
  }

  while (v2 > 1);
  return result;
}

uint64_t APAudioFormatCreateDescriptionArray(uint64_t a1, int a2, char a3, CFAllocatorRef allocator, const __CFData **a5)
{
  if (a2 != 1634955876)
  {
    if (a2 != 1634951780)
    {
      return 4294954516;
    }

    v8 = 0;
    v9 = 65;
    v10 = 1;
    do
    {
      if ((v10 & a1) != 0)
      {
        ++v8;
      }

      v10 *= 2;
      --v9;
    }

    while (v9 > 1);
    if (v8)
    {
      v11 = 40 * v8;
      Mutable = CFDataCreateMutable(allocator, v11);
      if (Mutable)
      {
        v13 = Mutable;
        CFDataSetLength(Mutable, v11);
        BytePtr = CFDataGetBytePtr(v13);
        v15 = 65;
        v16 = 1;
        while ((v16 & a1) == 0)
        {
LABEL_177:
          v16 *= 2;
          if (--v15 <= 1)
          {
            goto LABEL_354;
          }
        }

        if (a3)
        {
          APAudioFormatToPCMASBD(v16, BytePtr);
          goto LABEL_176;
        }

        if (v16 > 0x3FFFFFFF)
        {
          if (v16 <= 0x7FFFFFFFFFFFLL)
          {
            if (v16 > 0x7FFFFFFFFFLL)
            {
              if (v16 <= 0x7FFFFFFFFFFLL)
              {
                if (v16 > 0x1FFFFFFFFFFLL)
                {
                  if (v16 != 0x20000000000)
                  {
                    if (v16 == 0x40000000000)
                    {
                      v17 = 0x40E7700000000000;
                      v18 = xmmword_22234D1E0;
                      goto LABEL_159;
                    }

LABEL_176:
                    BytePtr += 40;
                    goto LABEL_177;
                  }

                  v17 = 0x40E7700000000000;
                  v18 = xmmword_22234D1E0;
                }

                else
                {
                  if (v16 != 0x8000000000)
                  {
                    if (v16 == 0x10000000000)
                    {
                      v17 = 0x40E7700000000000;
                      v18 = xmmword_22234D1F0;
LABEL_159:
                      v19 = 8;
                      goto LABEL_175;
                    }

                    goto LABEL_176;
                  }

                  v17 = 0x40E7700000000000;
                  v18 = xmmword_22234D1F0;
                }

LABEL_169:
                v19 = 6;
                goto LABEL_175;
              }

              if (v16 > 0x1FFFFFFFFFFFLL)
              {
                if (v16 == 0x200000000000)
                {
                  v19 = 0x2000000001;
                  v18 = xmmword_22234D300;
                }

                else
                {
                  if (v16 != 0x400000000000)
                  {
                    goto LABEL_176;
                  }

                  v19 = 0x2000000002;
                  v18 = xmmword_22234D2E0;
                }

                goto LABEL_174;
              }

              if (v16 != 0x80000000000)
              {
                if (v16 != 0x100000000000)
                {
                  goto LABEL_176;
                }

                v19 = 0x1000000006;
                v18 = xmmword_22234D370;
LABEL_174:
                v17 = 0x40E7700000000000;
                goto LABEL_175;
              }

              v17 = 0x40DF400000000000;
              goto LABEL_148;
            }

            if (v16 <= 0x1FFFFFFFFLL)
            {
              switch(v16)
              {
                case 0x40000000:
                  v17 = 0x40E7700000000000;
                  v18 = xmmword_22234D1A0;
                  goto LABEL_149;
                case 0x80000000:
                  v17 = 0x40E5888000000000;
                  break;
                case 0x100000000:
                  v17 = 0x40E7700000000000;
                  break;
                default:
                  goto LABEL_176;
              }

LABEL_148:
              v18 = xmmword_22234D1E0;
LABEL_149:
              v19 = 1;
              goto LABEL_175;
            }

            if (v16 <= 0x7FFFFFFFFLL)
            {
              if (v16 == 0x200000000)
              {
                v17 = 0x40E7700000000000;
                v18 = xmmword_22234D140;
                goto LABEL_159;
              }

              if (v16 != 0x400000000)
              {
                goto LABEL_176;
              }

              v17 = 0x40E7700000000000;
              v18 = xmmword_22234D140;
LABEL_165:
              v19 = 12;
              goto LABEL_175;
            }

            if (v16 != 0x800000000)
            {
              if (v16 != 0x4000000000)
              {
                goto LABEL_176;
              }

              v17 = 0x40E7700000000000;
              v18 = xmmword_22234D350;
              v19 = 0x1000000008;
              goto LABEL_175;
            }

            v17 = 0x40E7700000000000;
            v18 = xmmword_22234D140;
LABEL_163:
            v19 = 16;
            goto LABEL_175;
          }

          if (v16 <= 0x3FFFFFFFFFFFFFLL)
          {
            if (v16 <= 0x3FFFFFFFFFFFFLL)
            {
              if (v16 == 0x800000000000)
              {
                v19 = 0x2000000006;
                v18 = xmmword_22234D2C0;
                goto LABEL_174;
              }

              if (v16 == 0x1000000000000)
              {
                v19 = 0x2000000008;
                v18 = xmmword_22234D2A0;
                goto LABEL_174;
              }

              if (v16 != 0x2000000000000)
              {
                goto LABEL_176;
              }

              v18 = xmmword_22234D230;
              goto LABEL_156;
            }

            if (v16 > 0xFFFFFFFFFFFFFLL)
            {
              if (v16 == 0x10000000000000)
              {
                v18 = xmmword_22234D230;
                v17 = 0x40E7700000000000;
                goto LABEL_165;
              }

              if (v16 != 0x20000000000000)
              {
                goto LABEL_176;
              }

              v18 = xmmword_22234D230;
              v17 = 0x40E7700000000000;
              goto LABEL_163;
            }

            if (v16 != 0x4000000000000)
            {
              if (v16 != 0x8000000000000)
              {
                goto LABEL_176;
              }

              v18 = xmmword_22234D230;
              goto LABEL_153;
            }

            v18 = xmmword_22234D230;
          }

          else
          {
            if (v16 <= 0x3FFFFFFFFFFFFFFLL)
            {
              if (v16 <= 0xFFFFFFFFFFFFFFLL)
              {
                if (v16 != 0x40000000000000)
                {
                  if (v16 != 0x80000000000000)
                  {
                    goto LABEL_176;
                  }

                  v18 = xmmword_22234D160;
                  goto LABEL_161;
                }

                v18 = xmmword_22234D160;
                goto LABEL_156;
              }

              if (v16 != 0x100000000000000)
              {
                if (v16 != 0x200000000000000)
                {
                  goto LABEL_176;
                }

                v18 = xmmword_22234D150;
LABEL_156:
                v17 = 0x40E7700000000000;
                goto LABEL_157;
              }

              v18 = xmmword_22234D160;
LABEL_153:
              v17 = 0x40E7700000000000;
              goto LABEL_159;
            }

            if (v16 > 0x1FFFFFFFFFFFFFFFLL)
            {
              if (v16 != 0x2000000000000000)
              {
                if (v16 != 0x4000000000000000)
                {
                  goto LABEL_176;
                }

                v17 = 0x40E7700000000000;
                v18 = xmmword_22234D140;
                goto LABEL_157;
              }

              v18 = xmmword_22234D170;
              goto LABEL_156;
            }

            if (v16 != 0x400000000000000)
            {
              if (v16 != 0x1000000000000000)
              {
                goto LABEL_176;
              }

              v18 = xmmword_22234D150;
              goto LABEL_153;
            }

            v18 = xmmword_22234D150;
          }

LABEL_161:
          v17 = 0x40E7700000000000;
          goto LABEL_169;
        }

        if (v16 >= 0x8000)
        {
          if (v16 >= 0x400000)
          {
            if (v16 > 0x3FFFFFF)
            {
              if (v16 > 0xFFFFFFF)
              {
                if (v16 == 0x10000000)
                {
                  v17 = 0x40CF400000000000;
                  v18 = xmmword_22234D1D0;
                }

                else
                {
                  if (v16 != 0x20000000)
                  {
                    goto LABEL_176;
                  }

                  v17 = 0x40D7700000000000;
                  v18 = xmmword_22234D1C0;
                }

                goto LABEL_149;
              }

              if (v16 == 0x4000000)
              {
                v17 = 0x40CF400000000000;
              }

              else
              {
                if (v16 != 0x8000000)
                {
                  goto LABEL_176;
                }

                v17 = 0x40D7700000000000;
              }

              goto LABEL_148;
            }

            if (v16 > 0xFFFFFF)
            {
              if (v16 == 0x1000000)
              {
                v17 = 0x40E5888000000000;
              }

              else
              {
                if (v16 != 0x2000000)
                {
                  goto LABEL_176;
                }

                v17 = 0x40E7700000000000;
              }

              v18 = xmmword_22234D1E0;
            }

            else
            {
              if (v16 == 0x400000)
              {
                v17 = 0x40E5888000000000;
              }

              else
              {
                if (v16 != 0x800000)
                {
                  goto LABEL_176;
                }

                v17 = 0x40E7700000000000;
              }

              v18 = xmmword_22234D1F0;
            }

LABEL_157:
            v19 = 2;
            goto LABEL_175;
          }

          if (v16 >= 0x40000)
          {
            if (v16 >= 0x100000)
            {
              if (v16 != 0x100000)
              {
                if (v16 != 0x200000)
                {
                  goto LABEL_176;
                }

                v17 = 0x40E7700000000000;
LABEL_101:
                v18 = xmmword_22234D200;
                goto LABEL_157;
              }

              v17 = 0x40E7700000000000;
            }

            else
            {
              if (v16 != 0x40000)
              {
                if (v16 != 0x80000)
                {
                  goto LABEL_176;
                }

                v17 = 0x40E5888000000000;
                goto LABEL_101;
              }

              v17 = 0x40E5888000000000;
            }

            v18 = xmmword_22234D220;
            goto LABEL_157;
          }

          if (v16 != 0x8000)
          {
            if (v16 != 0x10000)
            {
              if (v16 != 0x20000)
              {
                goto LABEL_176;
              }

              v17 = 0x40E7700000000000;
              goto LABEL_144;
            }

            v17 = 0x40E7700000000000;
LABEL_127:
            v18 = xmmword_22234D3B0;
            v19 = 0x1800000001;
            goto LABEL_175;
          }

          v17 = 0x40E7700000000000;
          goto LABEL_167;
        }

        if (v16 > 255)
        {
          if (v16 <= 2047)
          {
            switch(v16)
            {
              case 256:
                v17 = 0x40DF400000000000;
                break;
              case 512:
                v17 = 0x40DF400000000000;
                goto LABEL_167;
              case 1024:
                v17 = 0x40E5888000000000;
                break;
              default:
                goto LABEL_176;
            }
          }

          else
          {
            if (v16 < 0x2000)
            {
              if (v16 != 2048)
              {
                if (v16 != 4096)
                {
                  goto LABEL_176;
                }

                v17 = 0x40E5888000000000;
                goto LABEL_127;
              }

              v17 = 0x40E5888000000000;
LABEL_167:
              v18 = xmmword_22234D3D0;
              v19 = 0x1000000002;
              goto LABEL_175;
            }

            if (v16 == 0x2000)
            {
              v17 = 0x40E5888000000000;
LABEL_144:
              v18 = xmmword_22234D390;
              v19 = 0x1800000002;
              goto LABEL_175;
            }

            if (v16 != 0x4000)
            {
              goto LABEL_176;
            }

            v17 = 0x40E7700000000000;
          }
        }

        else
        {
          if (v16 <= 15)
          {
            if (v16 == 0x8000000000000000)
            {
              v17 = 0x40E7700000000000;
              v18 = xmmword_22234D140;
              goto LABEL_169;
            }

            v17 = 0x40BF400000000000;
            v18 = xmmword_22234D3F0;
            v19 = 0x1000000001;
            if (v16 == 4)
            {
LABEL_175:
              *BytePtr = v17;
              *(BytePtr + 8) = v18;
              *(BytePtr + 6) = DWORD2(v18);
              *(BytePtr + 28) = v19;
              *(BytePtr + 9) = 0;
              goto LABEL_176;
            }

            if (v16 != 8)
            {
              goto LABEL_176;
            }

            v17 = 0x40BF400000000000;
            goto LABEL_167;
          }

          if (v16 > 63)
          {
            if (v16 != 64)
            {
              if (v16 != 128)
              {
                goto LABEL_176;
              }

              v17 = 0x40D7700000000000;
              goto LABEL_167;
            }

            v17 = 0x40D7700000000000;
          }

          else
          {
            if (v16 != 16)
            {
              if (v16 != 32)
              {
                goto LABEL_176;
              }

              v17 = 0x40CF400000000000;
              goto LABEL_167;
            }

            v17 = 0x40CF400000000000;
          }
        }

        v18 = xmmword_22234D3F0;
        v19 = 0x1000000001;
        goto LABEL_175;
      }

      goto LABEL_357;
    }

LABEL_355:
    APSLogErrorAt(0);
    return 4294954516;
  }

  v20 = 0;
  v21 = 65;
  v22 = 1;
  do
  {
    if ((v22 & a1) != 0)
    {
      ++v20;
    }

    v22 *= 2;
    --v21;
  }

  while (v21 > 1);
  if (!v20)
  {
    goto LABEL_355;
  }

  v23 = 56 * v20;
  v24 = CFDataCreateMutable(allocator, v23);
  if (v24)
  {
    v13 = v24;
    CFDataSetLength(v24, v23);
    v25 = CFDataGetBytePtr(v13);
    v26 = 65;
    v27 = 1;
    while ((v27 & a1) == 0)
    {
LABEL_353:
      v27 *= 2;
      if (--v26 <= 1)
      {
LABEL_354:
        result = 0;
        *a5 = v13;
        return result;
      }
    }

    if (a3)
    {
      APAudioFormatToPCMASBD(v27, v25);
      goto LABEL_352;
    }

    if (v27 > 0x3FFFFFFF)
    {
      if (v27 <= 0x7FFFFFFFFFFFLL)
      {
        if (v27 > 0x7FFFFFFFFFLL)
        {
          if (v27 <= 0x7FFFFFFFFFFLL)
          {
            if (v27 > 0x1FFFFFFFFFFLL)
            {
              if (v27 != 0x20000000000)
              {
                if (v27 == 0x40000000000)
                {
                  v28 = 0x40E7700000000000;
                  v29 = xmmword_22234D1E0;
                  goto LABEL_335;
                }

LABEL_352:
                v31 = *v25;
                *(v25 + 5) = *v25;
                *(v25 + 6) = v31;
                v25 += 56;
                goto LABEL_353;
              }

              v28 = 0x40E7700000000000;
              v29 = xmmword_22234D1E0;
            }

            else
            {
              if (v27 != 0x8000000000)
              {
                if (v27 == 0x10000000000)
                {
                  v28 = 0x40E7700000000000;
                  v29 = xmmword_22234D1F0;
LABEL_335:
                  v30 = 8;
                  goto LABEL_351;
                }

                goto LABEL_352;
              }

              v28 = 0x40E7700000000000;
              v29 = xmmword_22234D1F0;
            }

LABEL_345:
            v30 = 6;
            goto LABEL_351;
          }

          if (v27 > 0x1FFFFFFFFFFFLL)
          {
            if (v27 == 0x200000000000)
            {
              v30 = 0x2000000001;
              v29 = xmmword_22234D300;
            }

            else
            {
              if (v27 != 0x400000000000)
              {
                goto LABEL_352;
              }

              v30 = 0x2000000002;
              v29 = xmmword_22234D2E0;
            }

            goto LABEL_350;
          }

          if (v27 != 0x80000000000)
          {
            if (v27 != 0x100000000000)
            {
              goto LABEL_352;
            }

            v30 = 0x1000000006;
            v29 = xmmword_22234D370;
LABEL_350:
            v28 = 0x40E7700000000000;
            goto LABEL_351;
          }

          v28 = 0x40DF400000000000;
          goto LABEL_324;
        }

        if (v27 <= 0x1FFFFFFFFLL)
        {
          switch(v27)
          {
            case 0x40000000:
              v28 = 0x40E7700000000000;
              v29 = xmmword_22234D1A0;
              goto LABEL_325;
            case 0x80000000:
              v28 = 0x40E5888000000000;
              break;
            case 0x100000000:
              v28 = 0x40E7700000000000;
              break;
            default:
              goto LABEL_352;
          }

LABEL_324:
          v29 = xmmword_22234D1E0;
LABEL_325:
          v30 = 1;
          goto LABEL_351;
        }

        if (v27 <= 0x7FFFFFFFFLL)
        {
          if (v27 == 0x200000000)
          {
            v28 = 0x40E7700000000000;
            v29 = xmmword_22234D140;
            goto LABEL_335;
          }

          if (v27 != 0x400000000)
          {
            goto LABEL_352;
          }

          v28 = 0x40E7700000000000;
          v29 = xmmword_22234D140;
LABEL_341:
          v30 = 12;
          goto LABEL_351;
        }

        if (v27 != 0x800000000)
        {
          if (v27 != 0x4000000000)
          {
            goto LABEL_352;
          }

          v28 = 0x40E7700000000000;
          v29 = xmmword_22234D350;
          v30 = 0x1000000008;
          goto LABEL_351;
        }

        v28 = 0x40E7700000000000;
        v29 = xmmword_22234D140;
LABEL_339:
        v30 = 16;
        goto LABEL_351;
      }

      if (v27 <= 0x3FFFFFFFFFFFFFLL)
      {
        if (v27 <= 0x3FFFFFFFFFFFFLL)
        {
          if (v27 == 0x800000000000)
          {
            v30 = 0x2000000006;
            v29 = xmmword_22234D2C0;
            goto LABEL_350;
          }

          if (v27 == 0x1000000000000)
          {
            v30 = 0x2000000008;
            v29 = xmmword_22234D2A0;
            goto LABEL_350;
          }

          if (v27 != 0x2000000000000)
          {
            goto LABEL_352;
          }

          v29 = xmmword_22234D230;
          goto LABEL_332;
        }

        if (v27 > 0xFFFFFFFFFFFFFLL)
        {
          if (v27 == 0x10000000000000)
          {
            v29 = xmmword_22234D230;
            v28 = 0x40E7700000000000;
            goto LABEL_341;
          }

          if (v27 != 0x20000000000000)
          {
            goto LABEL_352;
          }

          v29 = xmmword_22234D230;
          v28 = 0x40E7700000000000;
          goto LABEL_339;
        }

        if (v27 != 0x4000000000000)
        {
          if (v27 != 0x8000000000000)
          {
            goto LABEL_352;
          }

          v29 = xmmword_22234D230;
          goto LABEL_329;
        }

        v29 = xmmword_22234D230;
      }

      else
      {
        if (v27 <= 0x3FFFFFFFFFFFFFFLL)
        {
          if (v27 <= 0xFFFFFFFFFFFFFFLL)
          {
            if (v27 != 0x40000000000000)
            {
              if (v27 != 0x80000000000000)
              {
                goto LABEL_352;
              }

              v29 = xmmword_22234D160;
              goto LABEL_337;
            }

            v29 = xmmword_22234D160;
            goto LABEL_332;
          }

          if (v27 != 0x100000000000000)
          {
            if (v27 != 0x200000000000000)
            {
              goto LABEL_352;
            }

            v29 = xmmword_22234D150;
LABEL_332:
            v28 = 0x40E7700000000000;
            goto LABEL_333;
          }

          v29 = xmmword_22234D160;
LABEL_329:
          v28 = 0x40E7700000000000;
          goto LABEL_335;
        }

        if (v27 > 0x1FFFFFFFFFFFFFFFLL)
        {
          if (v27 != 0x2000000000000000)
          {
            if (v27 != 0x4000000000000000)
            {
              goto LABEL_352;
            }

            v28 = 0x40E7700000000000;
            v29 = xmmword_22234D140;
            goto LABEL_333;
          }

          v29 = xmmword_22234D170;
          goto LABEL_332;
        }

        if (v27 != 0x400000000000000)
        {
          if (v27 != 0x1000000000000000)
          {
            goto LABEL_352;
          }

          v29 = xmmword_22234D150;
          goto LABEL_329;
        }

        v29 = xmmword_22234D150;
      }

LABEL_337:
      v28 = 0x40E7700000000000;
      goto LABEL_345;
    }

    if (v27 >= 0x8000)
    {
      if (v27 >= 0x400000)
      {
        if (v27 > 0x3FFFFFF)
        {
          if (v27 > 0xFFFFFFF)
          {
            if (v27 == 0x10000000)
            {
              v28 = 0x40CF400000000000;
              v29 = xmmword_22234D1D0;
            }

            else
            {
              if (v27 != 0x20000000)
              {
                goto LABEL_352;
              }

              v28 = 0x40D7700000000000;
              v29 = xmmword_22234D1C0;
            }

            goto LABEL_325;
          }

          if (v27 == 0x4000000)
          {
            v28 = 0x40CF400000000000;
          }

          else
          {
            if (v27 != 0x8000000)
            {
              goto LABEL_352;
            }

            v28 = 0x40D7700000000000;
          }

          goto LABEL_324;
        }

        if (v27 > 0xFFFFFF)
        {
          if (v27 == 0x1000000)
          {
            v28 = 0x40E5888000000000;
          }

          else
          {
            if (v27 != 0x2000000)
            {
              goto LABEL_352;
            }

            v28 = 0x40E7700000000000;
          }

          v29 = xmmword_22234D1E0;
        }

        else
        {
          if (v27 == 0x400000)
          {
            v28 = 0x40E5888000000000;
          }

          else
          {
            if (v27 != 0x800000)
            {
              goto LABEL_352;
            }

            v28 = 0x40E7700000000000;
          }

          v29 = xmmword_22234D1F0;
        }

LABEL_333:
        v30 = 2;
        goto LABEL_351;
      }

      if (v27 >= 0x40000)
      {
        if (v27 >= 0x100000)
        {
          if (v27 != 0x100000)
          {
            if (v27 != 0x200000)
            {
              goto LABEL_352;
            }

            v28 = 0x40E7700000000000;
LABEL_277:
            v29 = xmmword_22234D200;
            goto LABEL_333;
          }

          v28 = 0x40E7700000000000;
        }

        else
        {
          if (v27 != 0x40000)
          {
            if (v27 != 0x80000)
            {
              goto LABEL_352;
            }

            v28 = 0x40E5888000000000;
            goto LABEL_277;
          }

          v28 = 0x40E5888000000000;
        }

        v29 = xmmword_22234D220;
        goto LABEL_333;
      }

      if (v27 != 0x8000)
      {
        if (v27 != 0x10000)
        {
          if (v27 != 0x20000)
          {
            goto LABEL_352;
          }

          v28 = 0x40E7700000000000;
          goto LABEL_320;
        }

        v28 = 0x40E7700000000000;
LABEL_303:
        v29 = xmmword_22234D3B0;
        v30 = 0x1800000001;
        goto LABEL_351;
      }

      v28 = 0x40E7700000000000;
      goto LABEL_343;
    }

    if (v27 > 255)
    {
      if (v27 <= 2047)
      {
        switch(v27)
        {
          case 256:
            v28 = 0x40DF400000000000;
            break;
          case 512:
            v28 = 0x40DF400000000000;
            goto LABEL_343;
          case 1024:
            v28 = 0x40E5888000000000;
            break;
          default:
            goto LABEL_352;
        }
      }

      else
      {
        if (v27 < 0x2000)
        {
          if (v27 != 2048)
          {
            if (v27 != 4096)
            {
              goto LABEL_352;
            }

            v28 = 0x40E5888000000000;
            goto LABEL_303;
          }

          v28 = 0x40E5888000000000;
LABEL_343:
          v29 = xmmword_22234D3D0;
          v30 = 0x1000000002;
          goto LABEL_351;
        }

        if (v27 == 0x2000)
        {
          v28 = 0x40E5888000000000;
LABEL_320:
          v29 = xmmword_22234D390;
          v30 = 0x1800000002;
          goto LABEL_351;
        }

        if (v27 != 0x4000)
        {
          goto LABEL_352;
        }

        v28 = 0x40E7700000000000;
      }
    }

    else
    {
      if (v27 <= 15)
      {
        if (v27 == 0x8000000000000000)
        {
          v28 = 0x40E7700000000000;
          v29 = xmmword_22234D140;
          goto LABEL_345;
        }

        v28 = 0x40BF400000000000;
        v29 = xmmword_22234D3F0;
        v30 = 0x1000000001;
        if (v27 == 4)
        {
LABEL_351:
          *v25 = v28;
          *(v25 + 8) = v29;
          *(v25 + 6) = DWORD2(v29);
          *(v25 + 28) = v30;
          *(v25 + 9) = 0;
          goto LABEL_352;
        }

        if (v27 != 8)
        {
          goto LABEL_352;
        }

        v28 = 0x40BF400000000000;
        goto LABEL_343;
      }

      if (v27 > 63)
      {
        if (v27 != 64)
        {
          if (v27 != 128)
          {
            goto LABEL_352;
          }

          v28 = 0x40D7700000000000;
          goto LABEL_343;
        }

        v28 = 0x40D7700000000000;
      }

      else
      {
        if (v27 != 16)
        {
          if (v27 != 32)
          {
            goto LABEL_352;
          }

          v28 = 0x40CF400000000000;
          goto LABEL_343;
        }

        v28 = 0x40CF400000000000;
      }
    }

    v29 = xmmword_22234D3F0;
    v30 = 0x1000000001;
    goto LABEL_351;
  }

LABEL_357:
  APSLogErrorAt(0);
  return 4294954510;
}

uint64_t APCompressionTypeToAPAudioFormat(int a1, uint64_t *a2)
{
  result = 4294960561;
  if (a1 <= 127)
  {
    if (a1 > 3)
    {
      if (a1 == 4)
      {
        v4 = 0x400000;
      }

      else
      {
        if (a1 != 8)
        {
          return result;
        }

        v4 = 0x1000000;
      }
    }

    else if (a1 == 1)
    {
      v4 = 2048;
    }

    else
    {
      if (a1 != 2)
      {
        return result;
      }

      v4 = 0x40000;
    }
  }

  else if (a1 <= 511)
  {
    if (a1 == 128)
    {
      v4 = 0x2000000000000;
    }

    else
    {
      if (a1 != 256)
      {
        return result;
      }

      v4 = 0x4000000000000000;
    }
  }

  else
  {
    switch(a1)
    {
      case 512:
        v4 = 0x200000000000000;
        break;
      case 1024:
        v4 = 0x40000000000000;
        break;
      case 2048:
        v4 = 0x2000000000000000;
        break;
      default:
        return result;
    }
  }

  result = 0;
  *a2 = v4;
  return result;
}

uint64_t APCompressionTypeToAPAudioFormatIndex(int a1, uint64_t *a2)
{
  if (!a2)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  result = 4294960561;
  if (a1 > 255)
  {
    if (a1 <= 1023)
    {
      if (a1 == 256)
      {
        result = 0;
        v4 = 62;
      }

      else
      {
        if (a1 != 512)
        {
          return result;
        }

        result = 0;
        v4 = 57;
      }
    }

    else
    {
      switch(a1)
      {
        case 1024:
          result = 0;
          v4 = 54;
          break;
        case 2048:
          result = 0;
          v4 = 61;
          break;
        case 4096:
          result = 0;
          v4 = 64;
          break;
        default:
          return result;
      }
    }
  }

  else if (a1 <= 3)
  {
    if (a1 == 1)
    {
      result = 0;
      v4 = 11;
    }

    else
    {
      if (a1 != 2)
      {
        return result;
      }

      result = 0;
      v4 = 18;
    }
  }

  else
  {
    switch(a1)
    {
      case 4:
        result = 0;
        v4 = 22;
        break;
      case 8:
        result = 0;
        v4 = 24;
        break;
      case 128:
        result = 0;
        v4 = 49;
        break;
      default:
        return result;
    }
  }

  *a2 = v4;
  return result;
}

uint64_t APAudioFormatCopyPreferredBufferedAudioFormats(CFMutableArrayRef *a1)
{
  v9 = 0;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  v3 = Mutable;
  if (!APAudioFormatGetCompressionTypeOverrideAudioFormat(&v9))
  {
    appended = CFArrayAppendInt64();
    if (appended)
    {
      v5 = appended;
    }

    else
    {
      appended = CFArrayAppendInt64();
      if (appended)
      {
        v5 = appended;
      }

      else
      {
        appended = CFArrayAppendInt64();
        if (appended)
        {
          v5 = appended;
        }

        else
        {
          SupportedTransportAudioFormatsForBufferedSender = APAudioFormatGetSupportedTransportAudioFormatsForBufferedSender(0);
          v7 = 0;
          while (1)
          {
            if (((1 << v7) & SupportedTransportAudioFormatsForBufferedSender) != 0)
            {
              appended = CFArrayAppendInt64();
              if (appended)
              {
                break;
              }
            }

            if (++v7 == 64)
            {
              goto LABEL_12;
            }
          }

          v5 = appended;
        }
      }
    }

    goto LABEL_15;
  }

  appended = CFArrayAppendInt64();
  if (appended)
  {
    v5 = appended;
LABEL_15:
    APSLogErrorAt(appended);
    goto LABEL_16;
  }

LABEL_12:
  v5 = 0;
  if (!a1)
  {
LABEL_16:
    CFRelease(v3);
    return v5;
  }

  *a1 = v3;
  return v5;
}

uint64_t APAudioFormatGetCompressionTypeOverrideAudioFormat(void *a1)
{
  v8 = 0;
  if (!a1)
  {
    v4 = 0;
LABEL_10:
    v6 = 0;
    goto LABEL_13;
  }

  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  if ((CFPreferenceNumberWithDefault & 0xF) != 0)
  {
    v3 = CFPreferenceNumberWithDefault;
    if (gLogCategory_APAudioFormat <= 50 && (gLogCategory_APAudioFormat != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = APCompressionTypeToAPAudioFormat(v3, &v8);
    v4 = v8;
    if (v5 || !v8)
    {
      goto LABEL_10;
    }

    *a1 = v8;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  v6 = 1;
LABEL_13:
  if (v4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t APAudioFormatGetSupportedTransportAudioFormatsForBufferedSender(uint64_t *a1)
{
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_initOnce != -1)
  {
    dispatch_once(&APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_initOnce, &__block_literal_global_104);
  }

  v3 = APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_atmosAllowed;
  BufferedPassthroughSupportedFormats = APAudioFormatGetBufferedPassthroughSupportedFormats(APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_atmosAllowed);
  if (a1)
  {
    v5 = 0x200000;
    if (!CFPreferenceNumberWithDefault)
    {
      v5 = 0x400000;
    }

    *a1 = v5;
  }

  v6 = 0x400000;
  if (v3)
  {
    v6 = 0x18000C00000;
  }

  v7 = BufferedPassthroughSupportedFormats | v6;
  if (CFPreferenceNumberWithDefault)
  {
    return v7 | 0x200000;
  }

  else
  {
    return v7;
  }
}

unint64_t APAudioFormatGetBufferedPassthroughSupportedFormats(int a1)
{
  if (!IsAppleTV())
  {
    if (APSIsAPMSpeaker_sCheckOnce != -1)
    {
      dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
    }

    if (!APSIsAPMSpeaker_sIsAPMSpeaker)
    {
      return 0;
    }
  }

  if (APAudioFormatGetBufferedPassthroughSupportedFormats_initOnce != -1)
  {
    dispatch_once(&APAudioFormatGetBufferedPassthroughSupportedFormats_initOnce, &__block_literal_global_113);
  }

  if (!APAudioFormatGetBufferedPassthroughSupportedFormats_sPassthroughEnabled)
  {
    return 0;
  }

  v2 = 0x18000E80000;
  if (a1 != 0 && APAudioFormatGetBufferedPassthroughSupportedFormats_sPassthroughDDPAtmosEnabled != 0)
  {
    v2 = 0x3E018000E80000;
  }

  v3 = 0x37C0018000E80000;
  if (a1 != 0 && APAudioFormatGetBufferedPassthroughSupportedFormats_sPassthroughDDPAtmosEnabled != 0)
  {
    v3 = 0xF7FE018E00E80000;
  }

  if (APAudioFormatGetBufferedPassthroughSupportedFormats_sPassthroughEncryptedEnabled)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t __APAudioFormatGetBufferedPassthroughSupportedFormats_block_invoke()
{
  APAudioFormatGetBufferedPassthroughSupportedFormats_sPassthroughEnabled = APSSettingsIsFeatureEnabled(@"BufferedPassthrough");
  APAudioFormatGetBufferedPassthroughSupportedFormats_sPassthroughDDPAtmosEnabled = APSSettingsIsFeatureEnabled(@"BufferedPassthroughDDP");
  result = APSSettingsIsFeatureEnabled(@"BufferedPassthroughEncrypted");
  APAudioFormatGetBufferedPassthroughSupportedFormats_sPassthroughEncryptedEnabled = result;
  return result;
}

void __APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_block_invoke()
{
  if (APSSettingsIsFeatureEnabled(@"BufferedSurround"))
  {
    APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_atmosAllowed = 1;
  }

  if (IsAppleTV() && MGGetProductType() != 1110205732)
  {
    goto LABEL_8;
  }

  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  if (APSIsAPMSpeaker_sIsAPMSpeaker)
  {
LABEL_8:
    APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_atmosAllowed = 1;
  }
}

uint64_t APAudioFormatCopyPreferredRealTimeAudioFormatsSender(int a1, CFMutableArrayRef *a2)
{
  v9 = 0;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v5 = Mutable;
    if (APAudioFormatGetCompressionTypeOverrideAudioFormat(&v9))
    {
      appended = CFArrayAppendInt64();
      if (appended)
      {
        v7 = appended;
LABEL_24:
        APSLogErrorAt(appended);
        goto LABEL_25;
      }
    }

    else if (a1)
    {
      appended = CFArrayAppendInt64();
      if (appended)
      {
        v7 = appended;
        goto LABEL_24;
      }

      if (APSSettingsIsFeatureEnabled(@"ScreenSpatialAudioSender"))
      {
        appended = CFArrayAppendInt64();
        if (appended)
        {
          v7 = appended;
          goto LABEL_24;
        }
      }

      appended = CFArrayAppendInt64();
      if (appended)
      {
        v7 = appended;
        goto LABEL_24;
      }

      appended = CFArrayAppendInt64();
      if (appended)
      {
        v7 = appended;
        goto LABEL_24;
      }

      appended = CFArrayAppendInt64();
      if (appended)
      {
        v7 = appended;
        goto LABEL_24;
      }
    }

    else
    {
      appended = CFArrayAppendInt64();
      if (appended)
      {
        v7 = appended;
        goto LABEL_24;
      }

      appended = CFArrayAppendInt64();
      if (appended)
      {
        v7 = appended;
        goto LABEL_24;
      }
    }

    v7 = 0;
    if (!a2)
    {
LABEL_25:
      CFRelease(v5);
      return v7;
    }

    *a2 = v5;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  return v7;
}

BOOL APAudioFormatIsScreenSpatialAudioReceiver()
{
  if (!APSSettingsIsFeatureEnabled(@"ScreenSpatialAudioReceiver"))
  {
    return 0;
  }

  v0 = 1;
  v1 = MGGetProductType();
  if (v1 != 1540760353 && v1 != 2702125347 && v1 != 4240173202)
  {
    return IsAppleTV() != 0;
  }

  return v0;
}

uint64_t APAudioFormatCopyPreferredLowLatencyAudioFormats(CFMutableArrayRef *a1)
{
  v8 = 0;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  v3 = Mutable;
  if (!APAudioFormatGetCompressionTypeOverrideAudioFormat(&v8))
  {
    v6 = 0;
    while (1)
    {
      if (((1 << v6) & 0x40002000000) != 0)
      {
        appended = CFArrayAppendInt64();
        if (appended)
        {
          break;
        }
      }

      if (++v6 == 64)
      {
        goto LABEL_9;
      }
    }

    v5 = appended;
    goto LABEL_12;
  }

  appended = CFArrayAppendInt64();
  if (appended)
  {
    v5 = appended;
LABEL_12:
    APSLogErrorAt(appended);
    goto LABEL_13;
  }

LABEL_9:
  v5 = 0;
  if (!a1)
  {
LABEL_13:
    CFRelease(v3);
    return v5;
  }

  *a1 = v3;
  return v5;
}

uint64_t APAudioFormatGetSupportedTransportAudioFormatsLowLatencySender(void *a1)
{
  if (a1)
  {
    *a1 = 0x2000000;
  }

  return 0x40002000000;
}

uint64_t APAudioFormatChooseFromPreferredAudioFormats(const __CFArray *a1, uint64_t a2, uint64_t a3)
{
  Count = CFArrayGetCount(a1);
  if (a3 && Count >= 1)
  {
    CFArrayGetValueAtIndex(a1, 0);
    CFGetInt64();
    APSLogErrorAt(4294960591);
  }

  return 4294960591;
}

uint64_t ASBDGetBitsPerChannel(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = 16;
  if (v2 > 1634492770)
  {
    v4 = v2 == 1634492771;
    v5 = 1869641075;
  }

  else
  {
    v4 = v2 == 1633772320;
    v5 = 1633772389;
  }

  if (!v4 && v2 != v5)
  {
    return *(a1 + 32);
  }

  return result;
}

uint64_t APAudioFormatAudioCompressionTypeSupportsVBR(int a1)
{
  result = 0;
  if (a1 > 255)
  {
    if (a1 > 1023)
    {
      if (a1 != 4096 && a1 != 1024)
      {
        return result;
      }
    }

    else if (a1 != 256 && a1 != 512)
    {
      return result;
    }

    return 1;
  }

  if (a1 <= 0x20 && ((1 << a1) & 0x100000110) != 0 || a1 == 128)
  {
    return 1;
  }

  return result;
}

uint64_t APAudioFormatSupportsVBR(uint64_t a1)
{
  v2 = 1;
  if (a1 > 0x7FFFFFFFFFLL)
  {
    if (a1 <= 0x7FFFFFFFFFFFFLL)
    {
      if (a1 <= 0x3FFFFFFFFFFFLL)
      {
        if (a1 > 0x1FFFFFFFFFFLL)
        {
          if (a1 == 0x20000000000 || a1 == 0x40000000000)
          {
LABEL_46:
            v2 = 8;
            goto LABEL_75;
          }

          v4 = 0x200000000000;
          goto LABEL_66;
        }

        if (a1 != 0x8000000000 && a1 != 0x10000000000)
        {
          goto LABEL_79;
        }

LABEL_60:
        v2 = 4;
        goto LABEL_75;
      }

      if (a1 <= 0xFFFFFFFFFFFFLL)
      {
        if (a1 == 0x400000000000)
        {
          goto LABEL_75;
        }

        v4 = 0x800000000000;
        goto LABEL_66;
      }

      if (a1 == 0x1000000000000)
      {
        goto LABEL_75;
      }

      if (a1 == 0x2000000000000)
      {
        goto LABEL_74;
      }

      v5 = 0x4000000000000;
    }

    else if (a1 <= 0xFFFFFFFFFFFFFFLL)
    {
      if (a1 > 0x1FFFFFFFFFFFFFLL)
      {
        if (a1 != 0x20000000000000)
        {
          if (a1 != 0x40000000000000)
          {
            v3 = 0x80000000000000;
LABEL_44:
            if (a1 != v3)
            {
              goto LABEL_79;
            }

            goto LABEL_57;
          }

          goto LABEL_57;
        }

        goto LABEL_74;
      }

      if (a1 == 0x8000000000000)
      {
        goto LABEL_74;
      }

      v5 = 0x10000000000000;
    }

    else
    {
      if (a1 <= 0xFFFFFFFFFFFFFFFLL)
      {
        if (a1 == 0x100000000000000)
        {
          goto LABEL_57;
        }

        if (a1 != 0x200000000000000 && a1 != 0x400000000000000)
        {
          goto LABEL_79;
        }

LABEL_53:
        v2 = 1902207848;
        goto LABEL_75;
      }

      if (a1 == 0x1000000000000000)
      {
        goto LABEL_53;
      }

      if (a1 == 0x2000000000000000)
      {
        v2 = 1902928227;
        goto LABEL_75;
      }

      v5 = 0x4000000000000000;
    }

    if (a1 != v5)
    {
      goto LABEL_79;
    }

LABEL_74:
    v2 = 128;
    goto LABEL_75;
  }

  if (a1 >= 0x80000)
  {
    if (a1 > 0xFFFFFF)
    {
      if (a1 <= 0x3FFFFFFFFLL)
      {
        if (a1 != 0x1000000 && a1 != 0x2000000)
        {
          v3 = 0x200000000;
          goto LABEL_44;
        }

        goto LABEL_46;
      }

      if (a1 != 0x400000000 && a1 != 0x800000000)
      {
        v4 = 0x4000000000;
LABEL_66:
        if (a1 != v4)
        {
          goto LABEL_79;
        }

        goto LABEL_75;
      }

LABEL_57:
      v2 = 1902207331;
      goto LABEL_75;
    }

    if (a1 < 0x200000)
    {
      if (a1 != 0x80000 && a1 != 0x100000)
      {
        goto LABEL_79;
      }
    }

    else if (a1 != 0x200000)
    {
      if (a1 != 0x400000 && a1 != 0x800000)
      {
        goto LABEL_79;
      }

      goto LABEL_60;
    }

LABEL_70:
    v2 = 2;
    goto LABEL_75;
  }

  if (a1 > 2047)
  {
    if (a1 < 0x8000)
    {
      if (a1 != 2048 && a1 != 0x2000)
      {
        goto LABEL_79;
      }

      goto LABEL_75;
    }

    if (a1 == 0x8000 || a1 == 0x20000)
    {
      goto LABEL_75;
    }

    if (a1 == 0x40000)
    {
      goto LABEL_70;
    }

LABEL_79:
    APSLogErrorAt(4294960561);
    return 0;
  }

  if (a1 > 31)
  {
    if (a1 != 32 && a1 != 128 && a1 != 512)
    {
      goto LABEL_79;
    }

    goto LABEL_75;
  }

  if (a1 == 0x8000000000000000)
  {
    goto LABEL_57;
  }

  if (a1 != 8)
  {
    goto LABEL_79;
  }

LABEL_75:

  return APAudioFormatAudioCompressionTypeSupportsVBR(v2);
}

uint64_t APAudioFormatCompressionTypeToAudioFormatID(int a1)
{
  if (a1 <= 31)
  {
    if (a1 > 3)
    {
      if (a1 == 4)
      {
        return 1633772320;
      }

      if (a1 == 8)
      {
        return 1633772389;
      }
    }

    else
    {
      if (a1 == 1)
      {
        return 1819304813;
      }

      if (a1 == 2)
      {
        return 1634492771;
      }
    }
  }

  else if (a1 <= 511)
  {
    if (a1 == 32)
    {
      return 1869641075;
    }

    if (a1 == 256)
    {
      return 1902324531;
    }
  }

  else
  {
    switch(a1)
    {
      case 512:
        return 1902207848;
      case 1024:
        return 1902207331;
      case 2048:
        return 1902928227;
    }
  }

  return 0;
}

uint64_t APAudioFormatIDToAPCompressionType(int a1)
{
  if (a1 <= 1869641074)
  {
    if (a1 > 1634492770)
    {
      if (a1 == 1634492771)
      {
        return 2;
      }

      if (a1 == 1819304813)
      {
        return 1;
      }
    }

    else
    {
      if (a1 == 1633772320)
      {
        return 4;
      }

      if (a1 == 1633772389)
      {
        return 8;
      }
    }
  }

  else if (a1 <= 1902207847)
  {
    if (a1 == 1869641075)
    {
      return 32;
    }

    if (a1 == 1902207331)
    {
      return 1024;
    }
  }

  else
  {
    switch(a1)
    {
      case 1902207848:
        return 512;
      case 1902324531:
        return 256;
      case 1902928227:
        return 2048;
    }
  }

  return 0;
}

uint64_t APAudioFormatFindMaxChannelPerFrameFromAudioFormat(uint64_t a1, int *a2)
{
  if ((a1 & 0x1109054200000000) != 0)
  {
    v2 = 8;
  }

  else if ((a1 & 0x8484928000000000) != 0)
  {
    v2 = 6;
  }

  else if ((a1 & 0x6242400003FEAAA8) != 0)
  {
    v2 = 2;
  }

  else
  {
    if ((a1 & 0x2801FC015554) == 0)
    {
      v3 = 4294960591;
      APSSignalErrorAt(4294960591);
      return v3;
    }

    v2 = 1;
  }

  v3 = 0;
  *a2 = v2;
  return v3;
}

uint64_t APAudioFormatCopyTransportFormatDescriptionForSourceContentFormatDescriptionAndSupportedFormats(const opaqueCMFormatDescription *a1, uint64_t a2, CMAudioFormatDescriptionRef *a3)
{
  memset(layoutSize, 0, sizeof(layoutSize));
  memset(&layout, 0, sizeof(layout));
  formatDescriptionOut = 0;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  if (!a1 || (v7 = CFPreferenceNumberWithDefault, (StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(a1)) == 0))
  {
    APSLogErrorAt(0);
    goto LABEL_67;
  }

  mChannelsPerFrame = StreamBasicDescription->mChannelsPerFrame;
  if (mChannelsPerFrame - 1 >= 2)
  {
    if (mChannelsPerFrame != 6)
    {
      if (mChannelsPerFrame != 8)
      {
        v11 = gLogCategory_APAudioFormat;
        if (gLogCategory_APAudioFormat <= 50)
        {
          if (gLogCategory_APAudioFormat == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_67;
          }

LABEL_66:
          LogPrintF();
LABEL_67:
          v11 = gLogCategory_APAudioFormat;
        }

LABEL_68:
        if (v11 <= 90 && (v11 != -1 || _LogCategory_Initialize()))
        {
          v22 = 4294960561;
          LogPrintF();
        }

        else
        {
          v22 = 4294960561;
        }

        goto LABEL_83;
      }

      v10 = 0x40E7700000000000;
      if ((a2 & 0x10000000000) != 0)
      {
        v12 = 1633772320;
        goto LABEL_48;
      }

      if ((a2 & 0x40000000000) != 0)
      {
        goto LABEL_49;
      }

      if (gLogCategory_APAudioFormat <= 50 && (gLogCategory_APAudioFormat != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
    if (MediaSubType > 1885692722)
    {
      if (MediaSubType <= 1902469938)
      {
        if (MediaSubType != 1885692723)
        {
          v14 = 1902324531;
LABEL_33:
          if (MediaSubType != v14)
          {
            goto LABEL_50;
          }

LABEL_44:
          v12 = 1633772320;
          v10 = 0x40E7700000000000;
          if ((a2 & 0x10000000000) == 0)
          {
            if ((a2 & 0x40000000000) == 0)
            {
              if ((a2 & 0x8000000000) == 0)
              {
LABEL_52:
                if (gLogCategory_APAudioFormat <= 50 && (gLogCategory_APAudioFormat != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                goto LABEL_59;
              }

LABEL_56:
              v19 = 6;
              v20 = 1024;
              v21 = 0x8000000000;
              goto LABEL_73;
            }

LABEL_49:
            v12 = 1633772389;
            v19 = 8;
            v20 = 480;
            v21 = 0x40000000000;
            goto LABEL_73;
          }

LABEL_48:
          v19 = 8;
          v20 = 1024;
          v21 = 0x10000000000;
          goto LABEL_73;
        }

        goto LABEL_35;
      }

      if (MediaSubType == 2053464883)
      {
LABEL_35:
        sizeOut = 0;
        FormatList = CMAudioFormatDescriptionGetFormatList(a1, &sizeOut);
        if (!FormatList || sizeOut <= 0x2F)
        {
          goto LABEL_50;
        }

        mFormatID = FormatList->mASBD.mFormatID;
        if (mFormatID <= 1885547314)
        {
          if (mFormatID == 1667574579)
          {
            goto LABEL_44;
          }

          v18 = 1700997939;
        }

        else
        {
          if (mFormatID == 1885547315 || mFormatID == 1902324531)
          {
            goto LABEL_44;
          }

          v18 = 2053319475;
        }

        if (mFormatID == v18)
        {
          goto LABEL_44;
        }

LABEL_50:
        v10 = 0x40E7700000000000;
        if ((a2 & 0x8000000000) == 0)
        {
          if ((a2 & 0x20000000000) != 0)
          {
            v12 = 1633772389;
            v19 = 6;
            v20 = 480;
            v21 = 0x20000000000;
            goto LABEL_73;
          }

          goto LABEL_52;
        }

        v12 = 1633772320;
        goto LABEL_56;
      }

      if (MediaSubType == 2053319475)
      {
        goto LABEL_44;
      }

      v15 = 1902469939;
    }

    else
    {
      if (MediaSubType > 1700997938)
      {
        if (MediaSubType == 1700997939)
        {
          goto LABEL_44;
        }

        if (MediaSubType != 1700998451)
        {
          v14 = 1885547315;
          goto LABEL_33;
        }

        goto LABEL_35;
      }

      if (MediaSubType == 1667574579)
      {
        goto LABEL_44;
      }

      v15 = 1667575091;
    }

    if (MediaSubType != v15)
    {
      goto LABEL_50;
    }

    goto LABEL_35;
  }

LABEL_59:
  v10 = 0x40E7700000000000;
  if ((a2 & 0x200000) != 0 && v7)
  {
    v12 = 0x3616C6163;
    v19 = 2;
    v20 = 352;
    v21 = 0x200000;
    goto LABEL_73;
  }

  v12 = 1633772320;
  if ((a2 & 0x800000) != 0)
  {
    v19 = 2;
    v20 = 1024;
    v21 = 0x800000;
  }

  else
  {
    if ((a2 & 0x400000) == 0)
    {
      v11 = gLogCategory_APAudioFormat;
      if (gLogCategory_APAudioFormat <= 50)
      {
        if (gLogCategory_APAudioFormat == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      goto LABEL_68;
    }

    v19 = 2;
    v20 = 1024;
    v10 = 0x40E5888000000000;
    v21 = 0x400000;
  }

LABEL_73:
  *&layoutSize[1] = v10;
  *&layoutSize[3] = v12;
  layoutSize[5] = 0;
  layoutSize[6] = v20;
  layoutSize[7] = 0;
  layoutSize[8] = v19;
  *&layoutSize[9] = 0;
  v23 = APAudioFormatToAudioChannelLayout(v21, &layout, layoutSize);
  if (v23)
  {
    v22 = v23;
LABEL_93:
    APSLogErrorAt(v23);
    goto LABEL_83;
  }

  v23 = CMAudioFormatDescriptionCreate(*MEMORY[0x277CBECE8], &layoutSize[1], layoutSize[0], &layout, 0, 0, 0, &formatDescriptionOut);
  if (v23)
  {
    v22 = v23;
    goto LABEL_93;
  }

  if (formatDescriptionOut)
  {
    if (a3)
    {
      *a3 = formatDescriptionOut;
      formatDescriptionOut = 0;
    }

    if (gLogCategory_APAudioFormat <= 50 && (gLogCategory_APAudioFormat != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v22 = 0;
  }

  else
  {
    APSLogErrorAt(0);
    v22 = 4294954510;
    APSSignalErrorAt(4294954510);
  }

LABEL_83:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  return v22;
}

uint64_t APAudioFormatToAudioChannelLayout(uint64_t a1, __int128 *a2, _DWORD *a3)
{
  v3 = 4294960591;
  if (a2 && a3)
  {
    if (a1 > 0x3FFFFFFF)
    {
      if (a1 <= 0x7FFFFFFFFFFFLL)
      {
        if (a1 > 0x7FFFFFFFFFLL)
        {
          if (a1 <= 0x7FFFFFFFFFFLL)
          {
            if (a1 <= 0x1FFFFFFFFFFLL)
            {
              if (a1 != 0x8000000000)
              {
                v4 = 0x10000000000;
                goto LABEL_99;
              }

              goto LABEL_87;
            }

            if (a1 != 0x20000000000)
            {
              v4 = 0x40000000000;
              goto LABEL_99;
            }

LABEL_87:
            v3 = 0;
            v9 = &APAudioFormatIndexToAudioChannelLayout_gAPLayout_5_1;
LABEL_101:
            v10 = v9[1];
            *a2 = *v9;
            a2[1] = v10;
            *a3 = 12;
            return v3;
          }

          if (a1 <= 0x1FFFFFFFFFFFLL)
          {
            if (a1 != 0x80000000000)
            {
              v5 = 0x100000000000;
LABEL_54:
              if (a1 != v5)
              {
                goto LABEL_107;
              }

              goto LABEL_87;
            }

LABEL_92:
            v3 = 0;
            v9 = &APAudioFormatIndexToAudioChannelLayout_gAPLayout_Mono;
            goto LABEL_101;
          }

          if (a1 == 0x200000000000)
          {
            goto LABEL_92;
          }

          v8 = 0x400000000000;
          goto LABEL_95;
        }

        if (a1 > 0x1FFFFFFFFLL)
        {
          if (a1 <= 0x7FFFFFFFFLL)
          {
            if (a1 != 0x200000000)
            {
              if (a1 != 0x400000000)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            }

LABEL_100:
            v3 = 0;
            v9 = &APAudioFormatIndexToAudioChannelLayout_gAPLayout_5_1_2;
            goto LABEL_101;
          }

          if (a1 != 0x800000000)
          {
            v4 = 0x4000000000;
LABEL_99:
            if (a1 == v4)
            {
              goto LABEL_100;
            }

LABEL_107:
            v3 = 4294960561;
            APSLogErrorAt(4294960561);
            return v3;
          }

LABEL_105:
          v3 = 0;
          v9 = &APAudioFormatIndexToAudioChannelLayout_gAPLayout_9_1_6;
          goto LABEL_101;
        }

        if (a1 == 0x40000000 || a1 == 0x80000000)
        {
          goto LABEL_92;
        }

        v7 = 0x100000000;
LABEL_77:
        if (a1 != v7)
        {
          goto LABEL_107;
        }

        goto LABEL_92;
      }

      if (a1 <= 0x3FFFFFFFFFFFFFLL)
      {
        if (a1 > 0x3FFFFFFFFFFFFLL)
        {
          if (a1 <= 0xFFFFFFFFFFFFFLL)
          {
            if (a1 != 0x4000000000000)
            {
              v4 = 0x8000000000000;
              goto LABEL_99;
            }

            goto LABEL_87;
          }

          if (a1 == 0x10000000000000)
          {
LABEL_106:
            v3 = 0;
            v9 = &APAudioFormatIndexToAudioChannelLayout_gAPLayout_7_1_4;
            goto LABEL_101;
          }

          if (a1 != 0x20000000000000)
          {
            goto LABEL_107;
          }

          goto LABEL_105;
        }

        if (a1 == 0x800000000000)
        {
          goto LABEL_87;
        }

        if (a1 == 0x1000000000000)
        {
          goto LABEL_100;
        }

        v8 = 0x2000000000000;
      }

      else if (a1 > 0x3FFFFFFFFFFFFFFLL)
      {
        if (a1 <= 0x1FFFFFFFFFFFFFFFLL)
        {
          if (a1 != 0x400000000000000)
          {
            v4 = 0x1000000000000000;
            goto LABEL_99;
          }

          goto LABEL_87;
        }

        if (a1 == 0x2000000000000000)
        {
          goto LABEL_96;
        }

        v8 = 0x4000000000000000;
      }

      else
      {
        if (a1 <= 0xFFFFFFFFFFFFFFLL)
        {
          if (a1 != 0x40000000000000)
          {
            v5 = 0x80000000000000;
            goto LABEL_54;
          }

          goto LABEL_96;
        }

        if (a1 == 0x100000000000000)
        {
          goto LABEL_100;
        }

        v8 = 0x200000000000000;
      }

LABEL_95:
      if (a1 != v8)
      {
        goto LABEL_107;
      }

      goto LABEL_96;
    }

    if (a1 < 0x8000)
    {
      if (a1 > 255)
      {
        if (a1 <= 2047)
        {
          if (a1 == 256)
          {
            goto LABEL_92;
          }

          if (a1 != 512)
          {
            if (a1 != 1024)
            {
              goto LABEL_107;
            }

            goto LABEL_92;
          }
        }

        else if (a1 >= 0x2000)
        {
          if (a1 != 0x2000)
          {
            if (a1 != 0x4000)
            {
              goto LABEL_107;
            }

            goto LABEL_92;
          }
        }

        else if (a1 != 2048)
        {
          if (a1 != 4096)
          {
            goto LABEL_107;
          }

          goto LABEL_92;
        }
      }

      else
      {
        v6 = a1 - 4;
        if ((a1 - 4) > 0x3C)
        {
          goto LABEL_26;
        }

        if (((1 << v6) & 0x1000000000001001) != 0)
        {
          goto LABEL_92;
        }

        if (((1 << v6) & 0x10000010) == 0)
        {
LABEL_26:
          if (a1 == 0x8000000000000000)
          {
            goto LABEL_87;
          }

          if (a1 != 128)
          {
            goto LABEL_107;
          }
        }
      }
    }

    else if (a1 < 0x400000)
    {
      if (a1 < 0x40000)
      {
        if (a1 != 0x8000)
        {
          if (a1 == 0x10000)
          {
            goto LABEL_92;
          }

          if (a1 != 0x20000)
          {
            goto LABEL_107;
          }
        }
      }

      else if (a1 >= 0x100000)
      {
        if (a1 != 0x100000 && a1 != 0x200000)
        {
          goto LABEL_107;
        }
      }

      else if (a1 != 0x40000 && a1 != 0x80000)
      {
        goto LABEL_107;
      }
    }

    else
    {
      if (a1 > 0x3FFFFFF)
      {
        if (a1 > 0xFFFFFFF)
        {
          if (a1 == 0x10000000)
          {
            goto LABEL_92;
          }

          v7 = 0x20000000;
        }

        else
        {
          if (a1 == 0x4000000)
          {
            goto LABEL_92;
          }

          v7 = 0x8000000;
        }

        goto LABEL_77;
      }

      if (a1 <= 0xFFFFFF)
      {
        if (a1 != 0x400000 && a1 != 0x800000)
        {
          goto LABEL_107;
        }

        goto LABEL_96;
      }

      if (a1 != 0x1000000)
      {
        v8 = 0x2000000;
        goto LABEL_95;
      }
    }

LABEL_96:
    v3 = 0;
    v9 = &APAudioFormatIndexToAudioChannelLayout_gAPLayout_Stereo;
    goto LABEL_101;
  }

  return v3;
}

uint64_t APAudioFormatSelectTransportFormatForAudioSourceInputFormat(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v7 = a1 & 0xF7FFF7CF42B3C000;
  if ((a1 & 0x814C3C00) != 0 && (a2 & 0x814C3C00) != 0)
  {
    if (!v7)
    {
      v8 = 0;
      v9 = 0x400000;
LABEL_97:
      *a3 = v9;
      return v8;
    }
  }

  else if (!v7 || (a2 & 0xF7FFF7CF42B3C000) == 0)
  {
    APSLogErrorAt(0);
    v8 = 4294960591;
    goto LABEL_89;
  }

  if (a1 <= 0x3FFFFFFFFFLL)
  {
    if (a1 >= 0x800000)
    {
      if (a1 <= 0xFFFFFFF)
      {
        if (a1 <= 0x1FFFFFF)
        {
          if (a1 == 0x800000)
          {
            goto LABEL_91;
          }

          v10 = 0x1000000;
        }

        else
        {
          if (a1 == 0x2000000 || a1 == 0x4000000)
          {
            goto LABEL_91;
          }

          v10 = 0x8000000;
        }

        goto LABEL_67;
      }

      if (a1 <= 0x7FFFFFFF)
      {
        if (a1 == 0x10000000 || a1 == 0x20000000)
        {
          goto LABEL_91;
        }

        v10 = 0x40000000;
        goto LABEL_67;
      }

      if (a1 == 0x80000000 || a1 == 0x100000000)
      {
        goto LABEL_91;
      }

      v12 = 0x200000000;
      goto LABEL_57;
    }

    if (a1 >= 0x40000)
    {
      if (a1 < 0x100000)
      {
        if (a1 != 0x40000 && a1 != 0x80000)
        {
          goto LABEL_88;
        }
      }

      else if (a1 != 0x100000 && a1 != 0x200000 && a1 != 0x400000)
      {
        goto LABEL_88;
      }

      goto LABEL_91;
    }

    if (a1 >= 0x8000)
    {
      if (a1 != 0x8000 && a1 != 0x10000 && a1 != 0x20000)
      {
        goto LABEL_88;
      }

      goto LABEL_91;
    }

    if (a1 == 0x8000000000000000)
    {
      goto LABEL_80;
    }

    if (a1 == 0x4000)
    {
      goto LABEL_91;
    }
  }

  else
  {
    if (a1 > 0x1FFFFFFFFFFFFLL)
    {
      if (a1 <= 0xFFFFFFFFFFFFFFLL)
      {
        if (a1 <= 0x7FFFFFFFFFFFFLL)
        {
          if (a1 == 0x2000000000000)
          {
            goto LABEL_91;
          }

          v11 = 0x4000000000000;
        }

        else
        {
          if (a1 == 0x8000000000000)
          {
            goto LABEL_71;
          }

          if (a1 == 0x40000000000000)
          {
            goto LABEL_91;
          }

          v11 = 0x80000000000000;
        }
      }

      else
      {
        if (a1 > 0xFFFFFFFFFFFFFFFLL)
        {
          if (a1 == 0x4000000000000000 || a1 == 0x2000000000000000)
          {
            goto LABEL_91;
          }

          v12 = 0x1000000000000000;
          goto LABEL_57;
        }

        if (a1 == 0x100000000000000)
        {
          goto LABEL_71;
        }

        if (a1 == 0x200000000000000)
        {
          goto LABEL_91;
        }

        v11 = 0x400000000000000;
      }
    }

    else
    {
      if (a1 > 0x7FFFFFFFFFFLL)
      {
        if (a1 <= 0x3FFFFFFFFFFFLL)
        {
          if (a1 == 0x80000000000)
          {
            goto LABEL_91;
          }

          if (a1 != 0x100000000000)
          {
            v10 = 0x200000000000;
LABEL_67:
            if (a1 != v10)
            {
              goto LABEL_88;
            }

LABEL_91:
            if ((a2 & 0x200000) != 0 && CFPreferenceNumberWithDefault)
            {
              v8 = 0;
              v9 = 0x200000;
            }

            else if ((a2 & 0x800000) != 0)
            {
              v8 = 0;
              v9 = 0x800000;
            }

            else
            {
              v8 = 4294960591;
              APSSignalErrorAt(4294960591);
              v9 = 0;
            }

            goto LABEL_97;
          }

LABEL_80:
          if ((a2 & 0x8000000000) != 0)
          {
            v8 = 0;
            v9 = 0x8000000000;
            goto LABEL_97;
          }

          if ((a2 & 0x20000000000) != 0)
          {
            v8 = 0;
            v9 = 0x20000000000;
            goto LABEL_97;
          }

          if (gLogCategory_APAudioFormat <= 50 && (gLogCategory_APAudioFormat != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          goto LABEL_91;
        }

        if (a1 == 0x400000000000)
        {
          goto LABEL_91;
        }

        if (a1 == 0x800000000000)
        {
          goto LABEL_80;
        }

        v12 = 0x1000000000000;
LABEL_57:
        if (a1 != v12)
        {
          goto LABEL_88;
        }

LABEL_71:
        if ((a2 & 0x10000000000) != 0)
        {
          v8 = 0;
          v9 = 0x10000000000;
          goto LABEL_97;
        }

        if ((a2 & 0x40000000000) != 0)
        {
          v8 = 0;
          v9 = 0x40000000000;
          goto LABEL_97;
        }

        if (gLogCategory_APAudioFormat <= 50 && (gLogCategory_APAudioFormat != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_80;
      }

      if (a1 > 0xFFFFFFFFFFLL)
      {
        if (a1 == 0x10000000000)
        {
          goto LABEL_71;
        }

        if (a1 == 0x20000000000)
        {
          goto LABEL_80;
        }

        v12 = 0x40000000000;
        goto LABEL_57;
      }

      if (a1 == 0x4000000000)
      {
        goto LABEL_71;
      }

      v11 = 0x8000000000;
    }

    if (a1 == v11)
    {
      goto LABEL_80;
    }
  }

LABEL_88:
  v8 = 4294960591;
LABEL_89:
  APSSignalErrorAt(4294960591);
  return v8;
}

unint64_t APAudioFormatGetAudioFormatForFormatDescription(const opaqueCMFormatDescription *a1, uint64_t a2)
{
  v13 = 0;
  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(a1);
  if (RichestDecodableFormat)
  {
    mFormatID = RichestDecodableFormat->mASBD.mFormatID;
    if (mFormatID <= 1885547314)
    {
      v6 = mFormatID == 1667574579;
      v7 = 1700997939;
    }

    else
    {
      v6 = mFormatID == 1885547315 || mFormatID == 1902324531;
      v7 = 2053319475;
    }

    if (v6 || mFormatID == v7)
    {
      if (!a2)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  RichestDecodableFormat = CMAudioFormatDescriptionGetStreamBasicDescription(a1);
  if (a2)
  {
LABEL_14:
    v9 = *&RichestDecodableFormat->mASBD.mSampleRate;
    v10 = *&RichestDecodableFormat->mASBD.mBytesPerPacket;
    *(a2 + 32) = *&RichestDecodableFormat->mASBD.mBitsPerChannel;
    *a2 = v9;
    *(a2 + 16) = v10;
  }

LABEL_15:
  v11 = ASBDToAPAudioFormat(RichestDecodableFormat, &v13);
  if (!v11)
  {
    return v13;
  }

  APSLogErrorAt(v11);
  return 0;
}

uint64_t APAudioFormatGetPassthroughAudioFormatsForFormatDescription(const opaqueCMFormatDescription *a1)
{
  if (!a1)
  {
    APSLogErrorAt(0);
    return 0;
  }

  v7 = 0;
  memset(v6, 0, sizeof(v6));
  AudioFormatForFormatDescription = APAudioFormatGetAudioFormatForFormatDescription(a1, v6);
  if (!AudioFormatForFormatDescription)
  {
    APSLogErrorAt(0);
    if (gLogCategory_APAudioFormat <= 50 && (gLogCategory_APAudioFormat != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 0;
  }

  v2 = AudioFormatForFormatDescription;
  if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_initOnce != -1)
  {
    dispatch_once(&APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_initOnce, &__block_literal_global_104);
  }

  BufferedPassthroughSupportedFormats = APAudioFormatGetBufferedPassthroughSupportedFormats(APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_atmosAllowed);
  cf = 0;
  APAudioFormatCopyAudioFormatsToReadableString(BufferedPassthroughSupportedFormats, &cf);
  if (gLogCategory_APAudioFormat <= 50 && (gLogCategory_APAudioFormat != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  APAudioFormatCopyAudioFormatsToReadableString(v2, &cf);
  if (gLogCategory_APAudioFormat <= 50 && (gLogCategory_APAudioFormat != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if ((BufferedPassthroughSupportedFormats & v2) != 0)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t APAudioFormatCopyAudioFormatsToReadableString(uint64_t a1, __CFString **a2)
{
  if (a2)
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    if (Mutable)
    {
      v5 = Mutable;
      v6 = 65;
      for (i = 1; (i & a1) == 0; i *= 2)
      {
LABEL_149:
        if (--v6 <= 1)
        {
          result = 0;
          *a2 = v5;
          return result;
        }
      }

      CFStringAppend(v5, @"[");
      if (i > 0x3FFFFFFF)
      {
        if (i <= 0x7FFFFFFFFFFFLL)
        {
          if (i > 0xFFFFFFFFFFLL)
          {
            if (i <= 0x7FFFFFFFFFFLL)
            {
              switch(i)
              {
                case 0x10000000000:
                  v8 = "AAC_LC/48000/5.1.2";
                  goto LABEL_148;
                case 0x20000000000:
                  v8 = "AAC_ELD/48000/5.1";
                  goto LABEL_148;
                case 0x40000000000:
                  v8 = "AAC_ELD/48000/5.1.2";
                  goto LABEL_148;
              }
            }

            else if (i > 0x1FFFFFFFFFFFLL)
            {
              if (i == 0x200000000000)
              {
                v8 = "PCM/48000/32f/1";
                goto LABEL_148;
              }

              if (i == 0x400000000000)
              {
                v8 = "PCM/48000/32f/2";
                goto LABEL_148;
              }
            }

            else
            {
              if (i == 0x80000000000)
              {
                v8 = "AAC-ELD/32000/1";
                goto LABEL_148;
              }

              if (i == 0x100000000000)
              {
                v8 = "PCM/48000/16/5.1";
                goto LABEL_148;
              }
            }
          }

          else if (i <= 0x1FFFFFFFFLL)
          {
            switch(i)
            {
              case 0x40000000:
                v8 = "OPUS/48000/1";
                goto LABEL_148;
              case 0x80000000:
                v8 = "AAC-ELD/44100/1";
                goto LABEL_148;
              case 0x100000000:
                v8 = "AAC-ELD/48000/1";
                goto LABEL_148;
            }
          }

          else if (i > 0x3FFFFFFFFFLL)
          {
            if (i == 0x4000000000)
            {
              v8 = "PCM/48000/16/5.1.2";
              goto LABEL_148;
            }

            if (i == 0x8000000000)
            {
              v8 = "AAC_LC/48000/5.1";
              goto LABEL_148;
            }
          }

          else
          {
            if (i == 0x200000000)
            {
              v8 = "QC3/48000/5.1.2";
              goto LABEL_148;
            }

            if (i == 0x400000000)
            {
              v8 = "QC3/48000/7.1.4";
              goto LABEL_148;
            }
          }
        }

        else if (i <= 0x3FFFFFFFFFFFFFLL)
        {
          if (i <= 0x3FFFFFFFFFFFFLL)
          {
            switch(i)
            {
              case 0x800000000000:
                v8 = "PCM/48000/32f/5.1";
                goto LABEL_148;
              case 0x1000000000000:
                v8 = "PCM/48000/32f/5.1.2";
                goto LABEL_148;
              case 0x2000000000000:
                v8 = "DDPLUS/48000/2";
                goto LABEL_148;
            }
          }

          else if (i > 0xFFFFFFFFFFFFFLL)
          {
            if (i == 0x10000000000000)
            {
              v8 = "DDPLUS/48000/7.1.4";
              goto LABEL_148;
            }

            if (i == 0x20000000000000)
            {
              v8 = "DDPLUS/48000/9.1.6";
              goto LABEL_148;
            }
          }

          else
          {
            if (i == 0x4000000000000)
            {
              v8 = "DDPLUS/48000/5.1";
              goto LABEL_148;
            }

            if (i == 0x8000000000000)
            {
              v8 = "DDPLUS/48000/5.1.2";
              goto LABEL_148;
            }
          }
        }

        else if (i > 0x3FFFFFFFFFFFFFFLL)
        {
          if (i > 0x1FFFFFFFFFFFFFFFLL)
          {
            if (i == 0x2000000000000000)
            {
              v8 = "QLAC/48000/24/2";
              goto LABEL_148;
            }

            if (i == 0x4000000000000000)
            {
              v8 = "QC3/48000/2";
              goto LABEL_148;
            }
          }

          else
          {
            if (i == 0x400000000000000)
            {
              v8 = "QAACHE/48000/5.1";
              goto LABEL_148;
            }

            if (i == 0x1000000000000000)
            {
              v8 = "QAACHE/48000/5.1.2";
              goto LABEL_148;
            }
          }
        }

        else if (i > 0xFFFFFFFFFFFFFFLL)
        {
          if (i == 0x100000000000000)
          {
            v8 = "QAAC/48000/5.1.2";
            goto LABEL_148;
          }

          if (i == 0x200000000000000)
          {
            v8 = "QAACHE/48000/2";
            goto LABEL_148;
          }
        }

        else
        {
          if (i == 0x40000000000000)
          {
            v8 = "QAAC/48000/2";
            goto LABEL_148;
          }

          if (i == 0x80000000000000)
          {
            v8 = "QAAC/48000/5.1";
            goto LABEL_148;
          }
        }
      }

      else if (i < 0x8000)
      {
        if (i > 255)
        {
          if (i <= 2047)
          {
            switch(i)
            {
              case 256:
                v8 = "PCM/32000/16/1";
                goto LABEL_148;
              case 512:
                v8 = "PCM/32000/16/2";
                goto LABEL_148;
              case 1024:
                v8 = "PCM/44100/16/1";
                goto LABEL_148;
            }
          }

          else if (i >= 0x2000)
          {
            if (i == 0x2000)
            {
              v8 = "PCM/44100/24/2";
              goto LABEL_148;
            }

            if (i == 0x4000)
            {
              v8 = "PCM/48000/16/1";
              goto LABEL_148;
            }
          }

          else
          {
            if (i == 2048)
            {
              v8 = "PCM/44100/16/2";
              goto LABEL_148;
            }

            if (i == 4096)
            {
              v8 = "PCM/44100/24/1";
              goto LABEL_148;
            }
          }
        }

        else if (i <= 15)
        {
          switch(i)
          {
            case 0x8000000000000000:
              v8 = "QC3/48000/5.1";
              goto LABEL_148;
            case 4:
              v8 = "PCM/8000/16/1";
              goto LABEL_148;
            case 8:
              v8 = "PCM/8000/16/2";
              goto LABEL_148;
          }
        }

        else if (i > 63)
        {
          v8 = "PCM/24000/16/1";
          if (i == 64)
          {
            goto LABEL_148;
          }

          if (i == 128)
          {
            v8 = "PCM/24000/16/2";
            goto LABEL_148;
          }
        }

        else
        {
          if (i == 16)
          {
            v8 = "PCM/16000/16/1";
            goto LABEL_148;
          }

          if (i == 32)
          {
            v8 = "PCM/16000/16/2";
            goto LABEL_148;
          }
        }
      }

      else if (i < 0x400000)
      {
        if (i < 0x40000)
        {
          switch(i)
          {
            case 0x8000:
              v8 = "PCM/48000/16/2";
              goto LABEL_148;
            case 0x10000:
              v8 = "PCM/48000/24/1";
              goto LABEL_148;
            case 0x20000:
              v8 = "PCM/48000/24/2";
              goto LABEL_148;
          }
        }

        else if (i >= 0x100000)
        {
          if (i == 0x100000)
          {
            v8 = "ALAC/48000/16/2";
            goto LABEL_148;
          }

          if (i == 0x200000)
          {
            v8 = "ALAC/48000/24/2";
            goto LABEL_148;
          }
        }

        else
        {
          if (i == 0x40000)
          {
            v8 = "ALAC/44100/16/2";
            goto LABEL_148;
          }

          if (i == 0x80000)
          {
            v8 = "ALAC/44100/24/2";
            goto LABEL_148;
          }
        }
      }

      else if (i > 0x3FFFFFF)
      {
        if (i > 0xFFFFFFF)
        {
          if (i == 0x10000000)
          {
            v8 = "OPUS/16000/1";
            goto LABEL_148;
          }

          if (i == 0x20000000)
          {
            v8 = "OPUS/24000/1";
            goto LABEL_148;
          }
        }

        else
        {
          if (i == 0x4000000)
          {
            v8 = "AAC-ELD/16000/1";
            goto LABEL_148;
          }

          if (i == 0x8000000)
          {
            v8 = "AAC-ELD/24000/1";
            goto LABEL_148;
          }
        }
      }

      else if (i > 0xFFFFFF)
      {
        if (i == 0x1000000)
        {
          v8 = "AAC-ELD/44100/2";
          goto LABEL_148;
        }

        if (i == 0x2000000)
        {
          v8 = "AAC-ELD/48000/2";
          goto LABEL_148;
        }
      }

      else
      {
        if (i == 0x400000)
        {
          v8 = "AAC-LC/44100/2";
          goto LABEL_148;
        }

        if (i == 0x800000)
        {
          v8 = "AAC-LC/48000/2";
LABEL_148:
          CFStringAppendCString(v5, v8, 0x8000100u);
          CFStringAppend(v5, @"]");
          goto LABEL_149;
        }
      }

      if (i == 0x800000000)
      {
        v8 = "QC3/48000/9.1.6";
      }

      else
      {
        v8 = "";
      }

      goto LABEL_148;
    }

    APSLogErrorAt(0);
    return 4294954510;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender()
{
  if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_initOnce != -1)
  {
    dispatch_once(&APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_initOnce, &__block_literal_global_104);
  }

  return APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_atmosAllowed;
}

uint64_t APAudioFormatIndexToAudioChannelLayout(uint64_t a1, __int128 *a2, _DWORD *a3)
{
  v3 = 4294960591;
  if (a2 && a3)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v7 = APAudioFormatIndexToASBD(a1, &v13);
    if (v7)
    {
      v3 = v7;
      APSLogErrorAt(v7);
      return v3;
    }

    if (SHIDWORD(v14) <= 7)
    {
      switch(HIDWORD(v14))
      {
        case 1:
          v3 = 0;
          v9 = &APAudioFormatIndexToAudioChannelLayout_gAPLayout_Mono;
          goto LABEL_34;
        case 2:
          v3 = 0;
          v9 = &APAudioFormatIndexToAudioChannelLayout_gAPLayout_Stereo;
          goto LABEL_34;
        case 6:
          if ((a1 - 39) <= 0x34 && ((1 << (a1 - 39)) & 0x10000005090925) != 0)
          {
            v3 = 0;
            v9 = &APAudioFormatIndexToAudioChannelLayout_gAPLayout_5_1;
            goto LABEL_34;
          }

LABEL_36:
          APSSignalErrorAt(4294960591);
          break;
      }
    }

    else if (SHIDWORD(v14) > 11)
    {
      if (HIDWORD(v14) == 12)
      {
        if ((a1 - 34) <= 0x32 && ((1 << (a1 - 34)) & 0x4000C00040001) != 0)
        {
          v3 = 0;
          v9 = &APAudioFormatIndexToAudioChannelLayout_gAPLayout_7_1_4;
          goto LABEL_34;
        }

        goto LABEL_36;
      }

      if (HIDWORD(v14) == 16)
      {
        if ((a1 - 35) <= 0x3B && ((1 << (a1 - 35)) & 0xE00000000040001) != 0)
        {
          v3 = 0;
          v9 = &APAudioFormatIndexToAudioChannelLayout_gAPLayout_9_1_6;
          goto LABEL_34;
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (HIDWORD(v14) == 8)
      {
        v10 = a1 - 33;
        if ((a1 - 33) <= 0x39)
        {
          if (((1 << v10) & 0x2088482A1) != 0)
          {
            v3 = 0;
            v9 = &APAudioFormatIndexToAudioChannelLayout_gAPLayout_5_1_2;
            goto LABEL_34;
          }

          if (((1 << v10) & 0x200600400000000) != 0)
          {
            v3 = 0;
            v9 = &APAudioFormatIndexToAudioChannelLayout_gAPLayout_7_1;
            goto LABEL_34;
          }
        }

        goto LABEL_36;
      }

      if (HIDWORD(v14) == 10)
      {
        v8 = a1 - 76;
        if ((a1 - 76) <= 7)
        {
          if (((1 << v8) & 0x31) != 0)
          {
            v3 = 0;
            v9 = &APAudioFormatIndexToAudioChannelLayout_gAPLayout_5_1_4;
            goto LABEL_34;
          }

          if (((1 << v8) & 0xC2) != 0)
          {
            v3 = 0;
            v9 = &APAudioFormatIndexToAudioChannelLayout_gAPLayout_7_1_2;
LABEL_34:
            v11 = v9[1];
            *a2 = *v9;
            a2[1] = v11;
            *a3 = 12;
            return v3;
          }
        }

        goto LABEL_36;
      }
    }
  }

  return v3;
}

uint64_t APSAudioFormatDoesAudioChannelLayoutTagHaveHeights(int a1)
{
  result = 0;
  if (a1 > 12779529)
  {
    if (a1 != 12779530 && a1 != 13238284)
    {
      v3 = 12845066;
LABEL_8:
      if (a1 != v3)
      {
        return result;
      }
    }
  }

  else if (a1 != 12582924 && a1 != 12648464)
  {
    v3 = 12713992;
    goto LABEL_8;
  }

  return 1;
}

uint64_t APSAudioFormatGetFullRangeChannelCountFromChannelLayoutTag(int a1)
{
  if (a1 <= 12582923)
  {
    if (a1 > 8126469)
    {
      if (a1 != 8126470)
      {
        v1 = 8388616;
LABEL_12:
        if (a1 != v1)
        {
          goto LABEL_20;
        }

        return 7;
      }

      return 5;
    }

    if (a1 == 6553601)
    {
      return 1;
    }

    if (a1 == 6619138)
    {
      return 2;
    }
  }

  else
  {
    if (a1 > 12713991)
    {
      if (a1 != 12713992 && a1 != 12779530)
      {
        v1 = 12845066;
        goto LABEL_12;
      }

      return 5;
    }

    if (a1 == 12582924)
    {
      return 7;
    }

    if (a1 == 12648464)
    {
      return 9;
    }
  }

LABEL_20:
  if (gLogCategory_APAudioFormat > 90)
  {
    return 0;
  }

  if (gLogCategory_APAudioFormat != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF();
    return 0;
  }

  return result;
}

uint64_t APAudioFormatASBDArrayToAPAudioFormats(const __CFData *a1, void *a2)
{
  v10 = 0;
  Length = CFDataGetLength(a1);
  if (Length <= 0x27)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  else
  {
    v5 = Length / 0x28;
    BytePtr = CFDataGetBytePtr(a1);
    v7 = 0;
    do
    {
      result = ASBDToAPAudioFormat(BytePtr, &v10);
      v9 = v10;
      if (result)
      {
        v9 = 0;
      }

      v7 |= v9;
      BytePtr += 40;
      --v5;
    }

    while (v5);
    *a2 = v7;
  }

  return result;
}

BOOL APAudioFormatAPACIsAllowedForCurrentDeviceAsSender()
{
  if (APAudioFormatAPACIsAllowedForCurrentDeviceAsSender_initOnce != -1)
  {
    dispatch_once(&APAudioFormatAPACIsAllowedForCurrentDeviceAsSender_initOnce, &__block_literal_global_2386);
  }

  return APAudioFormatAPACIsAllowedForCurrentDeviceAsSender_apacAllowed == 1 && APSSettingsIsFeatureEnabled(@"BufferedAPAC") != 0;
}

void __APAudioFormatAPACIsAllowedForCurrentDeviceAsSender_block_invoke()
{
  if (IsAppleTV() && MGGetProductType() != 1110205732)
  {
    goto LABEL_12;
  }

  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  if (APSIsAPMSpeaker_sIsAPMSpeaker)
  {
    goto LABEL_12;
  }

  if (APSIsIPhone_onceToken != -1)
  {
    dispatch_once(&APSIsIPhone_onceToken, &__block_literal_global_28);
  }

  if (APSIsIPhone_sIsiPhone)
  {
    goto LABEL_12;
  }

  if (APSIsIPad_onceToken != -1)
  {
    dispatch_once(&APSIsIPad_onceToken, &__block_literal_global_30);
  }

  if (APSIsIPad_sIsiPad == 1)
  {
LABEL_12:
    APAudioFormatAPACIsAllowedForCurrentDeviceAsSender_apacAllowed = 1;
  }
}

uint64_t APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver()
{
  if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_initOnce != -1)
  {
    dispatch_once(&APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_initOnce, &__block_literal_global_110);
  }

  return APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_atmosAllowed;
}

void __APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_block_invoke()
{
  if (APSSettingsIsFeatureEnabled(@"BufferedSurround"))
  {
    APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_atmosAllowed = 1;
  }

  if (IsAppleTV() && MGGetProductType() != 1110205732)
  {
    APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_atmosAllowed = 1;
  }

  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  if (APSIsAPMSpeaker_sIsAPMSpeaker)
  {
    APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_atmosAllowed = 1;
  }
}

uint64_t APAudioFormatFilterFormatsForSpatialSender(uint64_t a1, CFArrayRef theArray, int a3)
{
  v3 = a1;
  value = 0;
  v23 = 0;
  v22 = 0;
  if (!theArray)
  {
    v9 = 0;
    goto LABEL_34;
  }

  v4 = theArray;
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v9 = 0;
    goto LABEL_25;
  }

  v6 = Count;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = @"IsLocalStream";
  v11 = @"TightSyncUUID";
  v20 = v4;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v8);
    FigCFDictionaryGetBooleanIfPresent();
    if (CFDictionaryGetValueIfPresent(ValueAtIndex, v11, &value) && (!v9 || !CFEqual(value, v9)))
    {
      v13 = v11;
      v14 = v10;
      v15 = value;
      if (value)
      {
        CFRetain(value);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      v9 = v15;
      v10 = v14;
      v11 = v13;
      v4 = v20;
    }

    v7 |= v22 != 0;
    FigCFDictionaryGetInt64IfPresent();
    ++v8;
  }

  while (v6 != v8);
  if (IsAppleTV() && MGGetProductType() != 1110205732)
  {
    if (APSSettingsGetIntWithOverrideAndDefault(@"DisableATVWHASurround", 0, 0))
    {
      LODWORD(v3) = a1;
      goto LABEL_28;
    }

    if (v7)
    {
      if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_initOnce != -1)
      {
        dispatch_once(&APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_initOnce, &__block_literal_global_104);
      }

      v3 = a1;
      v16 = APAudioFormatGetBufferedPassthroughSupportedFormats(APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_atmosAllowed) | 0x600000;
      goto LABEL_33;
    }

LABEL_25:
    v3 = a1;
    goto LABEL_34;
  }

  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  v3 = a1;
  if (!APSIsAPMSpeaker_sIsAPMSpeaker)
  {
    goto LABEL_34;
  }

  if (!a3)
  {
LABEL_28:
    v3 &= 0x400000uLL;
    goto LABEL_34;
  }

  if (!FigGetCFPreferenceNumberWithDefault())
  {
    if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_initOnce != -1)
    {
      dispatch_once(&APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_initOnce, &__block_literal_global_104);
    }

    v16 = APAudioFormatGetBufferedPassthroughSupportedFormats(APAudioFormatAtmosIsAllowedForCurrentDeviceAsSender_atmosAllowed) | 0xE6C6FA81FFFFFFFCLL;
LABEL_33:
    v3 &= v16;
  }

LABEL_34:
  cf = 0;
  APAudioFormatCopyAudioFormatsToReadableString(v3, &cf);
  if (gLogCategory_APAudioFormat <= 50 && (gLogCategory_APAudioFormat != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v3;
}

uint64_t APAudioFormatGetSupportedTransportAudioFormatsForRealTimeSender(void *a1)
{
  if (a1)
  {
    *a1 = 0x40000;
  }

  return 0x40000;
}

unint64_t APAudioFormatGetSupportedTransportAudioFormatsForBufferedReceiver(void *a1)
{
  if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_initOnce != -1)
  {
    dispatch_once(&APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_initOnce, &__block_literal_global_110);
  }

  v2 = APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_atmosAllowed;
  BufferedPassthroughSupportedFormats = APAudioFormatGetBufferedPassthroughSupportedFormats(APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_atmosAllowed);
  if (a1)
  {
    *a1 = 0x800000;
  }

  v4 = 14680064;
  if (v2)
  {
    v4 = 0x18000E00000;
  }

  return BufferedPassthroughSupportedFormats | v4;
}

uint64_t APAudioFormatGetSupportedTransportAudioFormatsForRealTimeReceiver(void *a1)
{
  IsScreenSpatialAudioReceiver = APAudioFormatIsScreenSpatialAudioReceiver();
  if (a1)
  {
    *a1 = 0x40000;
  }

  if (IsScreenSpatialAudioReceiver)
  {
    return 0x40001440800;
  }

  else
  {
    return 21235712;
  }
}

uint64_t APAudioFormatGetSupportedTransportAudioFormatsForScreenReceiver(void *a1)
{
  IsScreenSpatialAudioReceiver = APAudioFormatIsScreenSpatialAudioReceiver();
  if (a1)
  {
    *a1 = 0x400000;
  }

  if (IsScreenSpatialAudioReceiver)
  {
    return 0x40001440800;
  }

  else
  {
    return 21235712;
  }
}

uint64_t APAudioFormatGetTransportAudioFormatForPCMFormatSender(uint64_t a1)
{
  v2 = 0;
  APAudioFormatFindMaxChannelPerFrameFromAudioFormat(a1, &v2);
  if (v2 <= 2)
  {
    return 0x2000000;
  }

  else
  {
    return 0x40000000000;
  }
}

uint64_t APAudioFormatGetSupportedTransportAudioFormatsLowLatencyReceiver(uint64_t *a1)
{
  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  if (APSIsAPMSpeaker_sIsAPMSpeaker)
  {
    v2 = MGGetProductType();
    v3 = v2 == 1540760353 || v2 == 4240173202 || v2 == 2702125347;
    IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"lowLatencyAudioSurroundReceiver", 0, v3);
    v4 = 0x2000000;
    if (IntWithOverrideAndDefault)
    {
      result = 0x40002000000;
    }

    else
    {
      result = 0x2000000;
    }

    if (a1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = 0;
    result = 0;
    if (a1)
    {
LABEL_15:
      *a1 = v4;
    }
  }

  return result;
}

unint64_t APAudioFormatGetSupportedAudioFormatsForLocalEchoCancellationReferenceReceiver(void *a1)
{
  SupportedAudioFormatsForLocalBufferedReceiver = APAudioFormatGetSupportedAudioFormatsForLocalBufferedReceiver(0);
  if (a1)
  {
    *a1 = 0x800000;
  }

  return SupportedAudioFormatsForLocalBufferedReceiver & 0xF7CFFFC3FFFFFFFCLL;
}

unint64_t APAudioFormatGetSupportedAudioFormatsForLocalBufferedReceiver(void *a1)
{
  if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_initOnce != -1)
  {
    dispatch_once(&APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_initOnce, &__block_literal_global_110);
  }

  v2 = APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_atmosAllowed;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  if (APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_initOnce != -1)
  {
    dispatch_once(&APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_initOnce, &__block_literal_global_110);
  }

  BufferedPassthroughSupportedFormats = APAudioFormatGetBufferedPassthroughSupportedFormats(APAudioFormatAtmosIsAllowedForCurrentDeviceAsReceiver_atmosAllowed);
  if (a1)
  {
    *a1 = 0x800000;
  }

  v5 = 0x400000;
  if (v2)
  {
    v5 = 0x18000C00000;
  }

  if (CFPreferenceNumberWithDefault)
  {
    v5 |= 0x200000uLL;
  }

  return BufferedPassthroughSupportedFormats | v5;
}

uint64_t APAudioFormatGetSupportedAudioFormatsForLocalRealTimeReceiver(void *a1)
{
  if (a1)
  {
    *a1 = 0x40000;
  }

  return 21235712;
}

uint64_t APAudioFormatGetMagicCookieForAACLC(int a1, void *a2, int *a3, double a4)
{
  if (APAudioFormatInitializeMagicCookieForCodec_initOnce != -1)
  {
    dispatch_once(&APAudioFormatInitializeMagicCookieForCodec_initOnce, &__block_literal_global_162);
  }

  if (a4 != 48000.0)
  {
    return 0;
  }

  if (sAAC_LCMagicSurround51 && sAAC_LCMagicSurround512)
  {
    if (a1 == 8)
    {
      result = 0;
      *a2 = sAAC_LCMagicSurround512;
      v9 = sAAC_LCMagicSurroundSize512;
      goto LABEL_11;
    }

    if (a1 == 6)
    {
      result = 0;
      *a2 = sAAC_LCMagicSurround51;
      v9 = sAAC_LCMagicSurroundSize51;
LABEL_11:
      *a3 = v9;
      return result;
    }

    return 0;
  }

  APSLogErrorAt(0);
  return 4294960561;
}

uint64_t __APAudioFormatInitializeMagicCookieForCodec_block_invoke()
{
  if (IsAppleTV())
  {
    goto LABEL_5;
  }

  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  if (APSIsAPMSpeaker_sIsAPMSpeaker)
  {
LABEL_5:
    outAudioConverter[0] = 0;
    inSourceFormat.mSampleRate = 48000.0;
    *&inSourceFormat.mFormatID = xmmword_22234D2C0;
    *&inSourceFormat.mBytesPerFrame = xmmword_22234D2D0;
    inDestinationFormat.mSampleRate = 48000.0;
    *&inDestinationFormat.mFormatID = xmmword_22234D1F0;
    *&inDestinationFormat.mBytesPerFrame = xmmword_22234D100;
    PropertyInfo = AudioConverterNew(&inSourceFormat, &inDestinationFormat, outAudioConverter);
    if (PropertyInfo || (PropertyInfo = AudioConverterGetPropertyInfo(outAudioConverter[0], 0x636D6763u, &sAAC_LCMagicSurroundSize51, 0), PropertyInfo) || (sAAC_LCMagicSurround51 = malloc_type_malloc(sAAC_LCMagicSurroundSize51, 0x2642D3A1uLL), PropertyInfo = AudioConverterGetProperty(outAudioConverter[0], 0x636D6763u, &sAAC_LCMagicSurroundSize51, sAAC_LCMagicSurround51), PropertyInfo))
    {
      APSLogErrorAt(PropertyInfo);
    }

    AudioConverterDispose(outAudioConverter[0]);
    inAudioConverter = 0;
    inPropertyData = 699835888;
    *outAudioConverter = 0u;
    v17 = 0u;
    inSourceFormat.mSampleRate = 48000.0;
    *&inSourceFormat.mFormatID = xmmword_22234D2A0;
    *&inSourceFormat.mBytesPerFrame = xmmword_22234D2B0;
    inDestinationFormat.mSampleRate = 48000.0;
    *&inDestinationFormat.mFormatID = xmmword_22234D1F0;
    *&inDestinationFormat.mBytesPerFrame = xmmword_22234D0F0;
    Property = AudioConverterNew(&inSourceFormat, &inDestinationFormat, &inAudioConverter);
    if (Property)
    {
      goto LABEL_108;
    }

    *outAudioConverter = APAudioFormatIndexToAudioChannelLayout_gAPLayout_5_1_2;
    v17 = *algn_22234D72C;
    Property = AudioConverterSetProperty(inAudioConverter, 0x6869646Eu, 4u, &inPropertyData);
    if (Property || (Property = AudioConverterSetProperty(inAudioConverter, 0x69636C20u, 0xCu, outAudioConverter), Property) || (Property = AudioConverterSetProperty(inAudioConverter, 0x6F636C20u, 0xCu, outAudioConverter), Property) || (Property = AudioConverterGetPropertyInfo(inAudioConverter, 0x636D6763u, &sAAC_LCMagicSurroundSize512, 0), Property) || (sAAC_LCMagicSurround512 = malloc_type_malloc(sAAC_LCMagicSurroundSize512, 0x286E182EuLL), Property = AudioConverterGetProperty(inAudioConverter, 0x636D6763u, &sAAC_LCMagicSurroundSize512, sAAC_LCMagicSurround512), Property))
    {
LABEL_108:
      APSLogErrorAt(Property);
    }

    AudioConverterDispose(inAudioConverter);
    outAudioConverter[0] = 0;
    inSourceFormat.mSampleRate = 48000.0;
    *&inSourceFormat.mFormatID = xmmword_22234D2A0;
    *&inSourceFormat.mBytesPerFrame = xmmword_22234D2B0;
    inDestinationFormat.mSampleRate = 48000.0;
    *&inDestinationFormat.mBytesPerFrame = xmmword_22234D0F0;
    *&inDestinationFormat.mFormatID = xmmword_22234D410;
    v2 = AudioConverterNew(&inSourceFormat, &inDestinationFormat, outAudioConverter);
    if (v2 || (v2 = AudioConverterGetPropertyInfo(outAudioConverter[0], 0x636D6763u, &sAAC_ELDMagicSurroundSize512, 0), v2) || (sAAC_ELDMagicSurround512 = malloc_type_malloc(sAAC_ELDMagicSurroundSize512, 0xCA5A1142uLL), v2 = AudioConverterGetProperty(outAudioConverter[0], 0x636D6763u, &sAAC_ELDMagicSurroundSize512, sAAC_ELDMagicSurround512), v2))
    {
      APSLogErrorAt(v2);
    }

    AudioConverterDispose(outAudioConverter[0]);
  }

  outAudioConverter[0] = 0;
  inSourceFormat.mSampleRate = 44100.0;
  *&inSourceFormat.mFormatID = xmmword_22234D3D0;
  *&inSourceFormat.mBytesPerFrame = xmmword_22234D3E0;
  inDestinationFormat.mSampleRate = 44100.0;
  *&inDestinationFormat.mFormatID = xmmword_22234D220;
  *&inDestinationFormat.mBytesPerFrame = xmmword_22234D0A0;
  v3 = AudioConverterNew(&inSourceFormat, &inDestinationFormat, outAudioConverter);
  if (v3 || (v3 = AudioConverterGetPropertyInfo(outAudioConverter[0], 0x636D6763u, &sAAC_ALAC44k16BitSizeStereo, 0), v3) || (v3 = malloc_type_malloc(sAAC_ALAC44k16BitSizeStereo, 0x5E7E0F6BuLL), (sAAC_ALAC44k16BitStereo = v3) == 0) || (v3 = AudioConverterGetProperty(outAudioConverter[0], 0x636D6763u, &sAAC_ALAC44k16BitSizeStereo, v3), v3))
  {
    APSLogErrorAt(v3);
  }

  AudioConverterDispose(outAudioConverter[0]);
  outAudioConverter[0] = 0;
  inSourceFormat.mSampleRate = 44100.0;
  *&inSourceFormat.mFormatID = xmmword_22234D390;
  *&inSourceFormat.mBytesPerFrame = xmmword_22234D3A0;
  inDestinationFormat.mSampleRate = 44100.0;
  *&inDestinationFormat.mFormatID = xmmword_22234D200;
  *&inDestinationFormat.mBytesPerFrame = xmmword_22234D0A0;
  v4 = AudioConverterNew(&inSourceFormat, &inDestinationFormat, outAudioConverter);
  if (v4 || (v4 = AudioConverterGetPropertyInfo(outAudioConverter[0], 0x636D6763u, &sAAC_ALAC44k24BitSizeStereo, 0), v4) || (v4 = malloc_type_malloc(sAAC_ALAC44k24BitSizeStereo, 0x9816C2E8uLL), (sAAC_ALAC44k24BitStereo = v4) == 0) || (v4 = AudioConverterGetProperty(outAudioConverter[0], 0x636D6763u, &sAAC_ALAC44k24BitSizeStereo, v4), v4))
  {
    APSLogErrorAt(v4);
  }

  AudioConverterDispose(outAudioConverter[0]);
  outAudioConverter[0] = 0;
  inSourceFormat.mSampleRate = 48000.0;
  *&inSourceFormat.mFormatID = xmmword_22234D3D0;
  *&inSourceFormat.mBytesPerFrame = xmmword_22234D3E0;
  inDestinationFormat.mSampleRate = 48000.0;
  *&inDestinationFormat.mFormatID = xmmword_22234D220;
  *&inDestinationFormat.mBytesPerFrame = xmmword_22234D0A0;
  v5 = AudioConverterNew(&inSourceFormat, &inDestinationFormat, outAudioConverter);
  if (v5 || (v5 = AudioConverterGetPropertyInfo(outAudioConverter[0], 0x636D6763u, &sAAC_ALAC48k16BitSizeStereo, 0), v5) || (v5 = malloc_type_malloc(sAAC_ALAC48k16BitSizeStereo, 0xD752BDC9uLL), (sAAC_ALAC48k16BitStereo = v5) == 0) || (v5 = AudioConverterGetProperty(outAudioConverter[0], 0x636D6763u, &sAAC_ALAC48k16BitSizeStereo, v5), v5))
  {
    APSLogErrorAt(v5);
  }

  AudioConverterDispose(outAudioConverter[0]);
  outAudioConverter[0] = 0;
  inSourceFormat.mSampleRate = 48000.0;
  *&inSourceFormat.mFormatID = xmmword_22234D390;
  *&inSourceFormat.mBytesPerFrame = xmmword_22234D3A0;
  inDestinationFormat.mSampleRate = 48000.0;
  *&inDestinationFormat.mFormatID = xmmword_22234D200;
  *&inDestinationFormat.mBytesPerFrame = xmmword_22234D0A0;
  v6 = AudioConverterNew(&inSourceFormat, &inDestinationFormat, outAudioConverter);
  if (v6 || (v6 = AudioConverterGetPropertyInfo(outAudioConverter[0], 0x636D6763u, &sAAC_ALAC48k24BitSizeStereo, 0), v6) || (v6 = malloc_type_malloc(sAAC_ALAC48k24BitSizeStereo, 0x4E9DF81AuLL), (sAAC_ALAC48k24BitStereo = v6) == 0) || (v6 = AudioConverterGetProperty(outAudioConverter[0], 0x636D6763u, &sAAC_ALAC48k24BitSizeStereo, v6), v6))
  {
    APSLogErrorAt(v6);
  }

  AudioConverterDispose(outAudioConverter[0]);
  outAudioConverter[0] = 0;
  LODWORD(inAudioConverter) = 0;
  inSourceFormat.mSampleRate = 48000.0;
  *&inSourceFormat.mFormatID = xmmword_22234D2E0;
  *&inSourceFormat.mBytesPerFrame = xmmword_22234D2F0;
  inDestinationFormat.mSampleRate = 48000.0;
  *&inDestinationFormat.mFormatID = xmmword_22234D0B0;
  *&inDestinationFormat.mBytesPerFrame = xmmword_22234D0A0;
  v7 = AudioConverterNew(&inSourceFormat, &inDestinationFormat, outAudioConverter);
  if (v7 || (AudioConverterSetProperty(outAudioConverter[0], 0x63647263u, 4u, &inAudioConverter), v7 = AudioConverterGetPropertyInfo(outAudioConverter[0], 0x636D6763u, &sAPAC_MagicStereoSize, 0), v7) || (sAPAC_MagicStereo = malloc_type_malloc(sAPAC_MagicStereoSize, 0xF1A031FCuLL), v7 = AudioConverterGetProperty(outAudioConverter[0], 0x636D6763u, &sAPAC_MagicStereoSize, sAPAC_MagicStereo), v7))
  {
    APSLogErrorAt(v7);
  }

  AudioConverterDispose(outAudioConverter[0]);
  outAudioConverter[0] = 0;
  LODWORD(inAudioConverter) = 0;
  inSourceFormat.mSampleRate = 48000.0;
  *&inSourceFormat.mFormatID = xmmword_22234D2C0;
  *&inSourceFormat.mBytesPerFrame = xmmword_22234D2D0;
  inDestinationFormat.mSampleRate = 48000.0;
  *&inDestinationFormat.mFormatID = xmmword_22234D0B0;
  *&inDestinationFormat.mBytesPerFrame = xmmword_22234D100;
  v8 = AudioConverterNew(&inSourceFormat, &inDestinationFormat, outAudioConverter);
  if (v8 || (AudioConverterSetProperty(outAudioConverter[0], 0x63647263u, 4u, &inAudioConverter), v8 = AudioConverterGetPropertyInfo(outAudioConverter[0], 0x636D6763u, &sAPAC_MagicSurround51Size, 0), v8) || (sAPAC_MagicSurround51 = malloc_type_malloc(sAPAC_MagicSurround51Size, 0xEBD0FD66uLL), v8 = AudioConverterGetProperty(outAudioConverter[0], 0x636D6763u, &sAPAC_MagicSurround51Size, sAPAC_MagicSurround51), v8))
  {
    APSLogErrorAt(v8);
  }

  AudioConverterDispose(outAudioConverter[0]);
  outAudioConverter[0] = 0;
  LODWORD(inAudioConverter) = 0;
  inSourceFormat.mSampleRate = 48000.0;
  *&inSourceFormat.mFormatID = xmmword_22234D2A0;
  *&inSourceFormat.mBytesPerFrame = xmmword_22234D2B0;
  inDestinationFormat.mSampleRate = 48000.0;
  *&inDestinationFormat.mFormatID = xmmword_22234D0B0;
  *&inDestinationFormat.mBytesPerFrame = xmmword_22234D0F0;
  v9 = AudioConverterNew(&inSourceFormat, &inDestinationFormat, outAudioConverter);
  if (v9 || (AudioConverterSetProperty(outAudioConverter[0], 0x63647263u, 4u, &inAudioConverter), v9 = AudioConverterGetPropertyInfo(outAudioConverter[0], 0x636D6763u, &sAPAC_MagicSurround512Size, 0), v9) || (sAPAC_MagicSurround512 = malloc_type_malloc(sAPAC_MagicSurround512Size, 0xB1E5DA72uLL), v9 = AudioConverterGetProperty(outAudioConverter[0], 0x636D6763u, &sAPAC_MagicSurround512Size, sAPAC_MagicSurround512), v9))
  {
    APSLogErrorAt(v9);
  }

  AudioConverterDispose(outAudioConverter[0]);
  outAudioConverter[0] = 0;
  LODWORD(inAudioConverter) = 0;
  inSourceFormat.mSampleRate = 48000.0;
  *&inSourceFormat.mFormatID = xmmword_22234D2A0;
  *&inSourceFormat.mBytesPerFrame = xmmword_22234D2B0;
  inDestinationFormat.mSampleRate = 48000.0;
  *&inDestinationFormat.mFormatID = xmmword_22234D0B0;
  *&inDestinationFormat.mBytesPerFrame = xmmword_22234D0F0;
  v10 = AudioConverterNew(&inSourceFormat, &inDestinationFormat, outAudioConverter);
  if (v10 || (AudioConverterSetProperty(outAudioConverter[0], 0x63647263u, 4u, &inAudioConverter), v10 = AudioConverterGetPropertyInfo(outAudioConverter[0], 0x636D6763u, &sAPAC_MagicSurround71Size, 0), v10) || (sAPAC_MagicSurround71 = malloc_type_malloc(sAPAC_MagicSurround71Size, 0xE1BF6954uLL), v10 = AudioConverterGetProperty(outAudioConverter[0], 0x636D6763u, &sAPAC_MagicSurround71Size, sAPAC_MagicSurround71), v10))
  {
    APSLogErrorAt(v10);
  }

  AudioConverterDispose(outAudioConverter[0]);
  outAudioConverter[0] = 0;
  LODWORD(inAudioConverter) = 0;
  inSourceFormat.mSampleRate = 48000.0;
  *&inSourceFormat.mFormatID = xmmword_22234D280;
  *&inSourceFormat.mBytesPerFrame = xmmword_22234D290;
  inDestinationFormat.mSampleRate = 48000.0;
  *&inDestinationFormat.mFormatID = xmmword_22234D0B0;
  *&inDestinationFormat.mBytesPerFrame = xmmword_22234D0E0;
  v11 = AudioConverterNew(&inSourceFormat, &inDestinationFormat, outAudioConverter);
  if (v11 || (AudioConverterSetProperty(outAudioConverter[0], 0x63647263u, 4u, &inAudioConverter), v11 = AudioConverterGetPropertyInfo(outAudioConverter[0], 0x636D6763u, &sAPAC_MagicSurround514Size, 0), v11) || (sAPAC_MagicSurround514 = malloc_type_malloc(sAPAC_MagicSurround514Size, 0x63A0C252uLL), v11 = AudioConverterGetProperty(outAudioConverter[0], 0x636D6763u, &sAPAC_MagicSurround514Size, sAPAC_MagicSurround514), v11))
  {
    APSLogErrorAt(v11);
  }

  AudioConverterDispose(outAudioConverter[0]);
  outAudioConverter[0] = 0;
  LODWORD(inAudioConverter) = 0;
  inSourceFormat.mSampleRate = 48000.0;
  *&inSourceFormat.mFormatID = xmmword_22234D280;
  *&inSourceFormat.mBytesPerFrame = xmmword_22234D290;
  inDestinationFormat.mSampleRate = 48000.0;
  *&inDestinationFormat.mFormatID = xmmword_22234D0B0;
  *&inDestinationFormat.mBytesPerFrame = xmmword_22234D0E0;
  v12 = AudioConverterNew(&inSourceFormat, &inDestinationFormat, outAudioConverter);
  if (v12 || (AudioConverterSetProperty(outAudioConverter[0], 0x63647263u, 4u, &inAudioConverter), v12 = AudioConverterGetPropertyInfo(outAudioConverter[0], 0x636D6763u, &sAPAC_MagicSurround712Size, 0), v12) || (sAPAC_MagicSurround712 = malloc_type_malloc(sAPAC_MagicSurround71Size, 0x70D1B059uLL), v12 = AudioConverterGetProperty(outAudioConverter[0], 0x636D6763u, &sAPAC_MagicSurround712Size, sAPAC_MagicSurround712), v12))
  {
    APSLogErrorAt(v12);
  }

  AudioConverterDispose(outAudioConverter[0]);
  outAudioConverter[0] = 0;
  LODWORD(inAudioConverter) = 0;
  inSourceFormat.mSampleRate = 48000.0;
  *&inSourceFormat.mFormatID = xmmword_22234D260;
  *&inSourceFormat.mBytesPerFrame = xmmword_22234D270;
  inDestinationFormat.mSampleRate = 48000.0;
  *&inDestinationFormat.mFormatID = xmmword_22234D0B0;
  *&inDestinationFormat.mBytesPerFrame = xmmword_22234D0D0;
  v13 = AudioConverterNew(&inSourceFormat, &inDestinationFormat, outAudioConverter);
  if (v13 || (AudioConverterSetProperty(outAudioConverter[0], 0x63647263u, 4u, &inAudioConverter), v13 = AudioConverterGetPropertyInfo(outAudioConverter[0], 0x636D6763u, &sAPAC_MagicSurround714Size, 0), v13) || (sAPAC_MagicSurround714 = malloc_type_malloc(sAPAC_MagicSurround714Size, 0x7B857F85uLL), v13 = AudioConverterGetProperty(outAudioConverter[0], 0x636D6763u, &sAPAC_MagicSurround714Size, sAPAC_MagicSurround714), v13))
  {
    APSLogErrorAt(v13);
  }

  AudioConverterDispose(outAudioConverter[0]);
  outAudioConverter[0] = 0;
  LODWORD(inAudioConverter) = 0;
  inSourceFormat.mSampleRate = 48000.0;
  *&inSourceFormat.mFormatID = xmmword_22234D240;
  *&inSourceFormat.mBytesPerFrame = xmmword_22234D250;
  inDestinationFormat.mSampleRate = 48000.0;
  *&inDestinationFormat.mFormatID = xmmword_22234D0B0;
  *&inDestinationFormat.mBytesPerFrame = xmmword_22234D0C0;
  v14 = AudioConverterNew(&inSourceFormat, &inDestinationFormat, outAudioConverter);
  if (v14 || (AudioConverterSetProperty(outAudioConverter[0], 0x63647263u, 4u, &inAudioConverter), v14 = AudioConverterGetPropertyInfo(outAudioConverter[0], 0x636D6763u, &sAPAC_MagicSurround916Size, 0), v14) || (sAPAC_MagicSurround916 = malloc_type_malloc(sAPAC_MagicSurround916Size, 0x85F59F14uLL), v14 = AudioConverterGetProperty(outAudioConverter[0], 0x636D6763u, &sAPAC_MagicSurround916Size, sAPAC_MagicSurround916), v14))
  {
    APSLogErrorAt(v14);
  }

  return AudioConverterDispose(outAudioConverter[0]);
}

uint64_t APAudioFormatGetMagicCookieForAACELD(int a1, void *a2, _DWORD *a3)
{
  if (APAudioFormatInitializeMagicCookieForCodec_initOnce != -1)
  {
    dispatch_once(&APAudioFormatInitializeMagicCookieForCodec_initOnce, &__block_literal_global_162);
  }

  if (sAAC_ELDMagicSurround512)
  {
    result = 0;
    if (a1 == 8)
    {
      *a2 = sAAC_ELDMagicSurround512;
      *a3 = sAAC_ELDMagicSurroundSize512;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960561;
  }

  return result;
}

uint64_t APAudioFormatGetMagicCookieForALAC(int a1, int a2, void *a3, int *a4)
{
  if (APAudioFormatInitializeMagicCookieForCodec_initOnce == -1)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_27:
    v8 = 4294960591;
    goto LABEL_29;
  }

  dispatch_once(&APAudioFormatInitializeMagicCookieForCodec_initOnce, &__block_literal_global_162);
  if (!a3)
  {
    goto LABEL_27;
  }

LABEL_3:
  if (!a4)
  {
    v8 = 4294960591;
    goto LABEL_29;
  }

  if (a1 == 48000)
  {
    if (a2 != 24)
    {
      if (a2 == 16)
      {
        if (sAAC_ALAC48k16BitStereo)
        {
          v8 = 0;
          *a3 = sAAC_ALAC48k16BitStereo;
          v9 = sAAC_ALAC48k16BitSizeStereo;
          goto LABEL_22;
        }

        v8 = 4294960561;
        goto LABEL_29;
      }

      goto LABEL_14;
    }

    if (sAAC_ALAC48k24BitStereo)
    {
      v8 = 0;
      *a3 = sAAC_ALAC48k24BitStereo;
      v9 = sAAC_ALAC48k24BitSizeStereo;
      goto LABEL_22;
    }

    v8 = 4294960561;
LABEL_29:
    APSLogErrorAt(0);
    goto LABEL_15;
  }

  if (a1 != 44100)
  {
    goto LABEL_14;
  }

  if (a2 == 24)
  {
    if (sAAC_ALAC44k24BitStereo)
    {
      v8 = 0;
      *a3 = sAAC_ALAC44k24BitStereo;
      v9 = sAAC_ALAC44k24BitSizeStereo;
      goto LABEL_22;
    }

    v8 = 4294960561;
    goto LABEL_29;
  }

  if (a2 == 16)
  {
    if (sAAC_ALAC44k16BitStereo)
    {
      v8 = 0;
      *a3 = sAAC_ALAC44k16BitStereo;
      v9 = sAAC_ALAC44k16BitSizeStereo;
LABEL_22:
      *a4 = v9;
      return v8;
    }

    v8 = 4294960561;
    goto LABEL_29;
  }

LABEL_14:
  v8 = 4294960561;
LABEL_15:
  if (gLogCategory_APAudioFormat <= 90 && (gLogCategory_APAudioFormat != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v8;
}

uint64_t APAudioFormatGetMagicCookieForAPAC(uint64_t a1, void *a2, int *a3, double a4)
{
  if (APAudioFormatInitializeMagicCookieForCodec_initOnce != -1)
  {
    dispatch_once(&APAudioFormatInitializeMagicCookieForCodec_initOnce, &__block_literal_global_162);
  }

  if (!sAPAC_MagicStereo || !sAPAC_MagicSurround51 || !sAPAC_MagicSurround512 || !sAPAC_MagicSurround71 || !sAPAC_MagicSurround714)
  {
    APSLogErrorAt(0);
    return 4294960561;
  }

  result = 0;
  if (a4 == 48000.0)
  {
    if (a1 <= 67)
    {
      if (a1 > 65)
      {
        result = 0;
        if (a1 == 66)
        {
          *a2 = sAPAC_MagicSurround512;
          v9 = sAPAC_MagicSurround512Size;
        }

        else
        {
          *a2 = sAPAC_MagicSurround71;
          v9 = sAPAC_MagicSurround71Size;
        }
      }

      else if (a1 == 64)
      {
        result = 0;
        *a2 = sAPAC_MagicStereo;
        v9 = sAPAC_MagicStereoSize;
      }

      else
      {
        if (a1 != 65)
        {
          return result;
        }

        result = 0;
        *a2 = sAPAC_MagicSurround51;
        v9 = sAPAC_MagicSurround51Size;
      }

      goto LABEL_28;
    }

    if (a1 > 76)
    {
      if (a1 == 77)
      {
        result = 0;
        *a2 = sAPAC_MagicSurround712;
        v9 = sAPAC_MagicSurround712Size;
        goto LABEL_28;
      }

      if (a1 != 92)
      {
        return result;
      }
    }

    else
    {
      if (a1 != 68)
      {
        if (a1 != 76)
        {
          return result;
        }

        result = 0;
        *a2 = sAPAC_MagicSurround514;
        v9 = sAPAC_MagicSurround514Size;
        goto LABEL_28;
      }

      *a3 = sAPAC_MagicSurround714Size;
    }

    result = 0;
    *a2 = sAPAC_MagicSurround916;
    v9 = sAPAC_MagicSurround916Size;
LABEL_28:
    *a3 = v9;
  }

  return result;
}

uint64_t APSRealTimeWritableGetTypeID()
{
  if (gAPSRealTimeWritableInitOnce != -1)
  {
    dispatch_once_f(&gAPSRealTimeWritableInitOnce, 0, _APSRealTimeWritableGetTypeID);
  }

  return gAPSRealTimeWritableTypeID;
}

uint64_t _APSRealTimeWritableGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSRealTimeWritableTypeID = result;
  return result;
}

void _APSRealTimeWritableFinalize(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    free(v3);
  }
}

uint64_t APSRealTimeWritableCreate(const void *a1, size_t a2, CFTypeRef *a3)
{
  if (a2 && a3)
  {
    if (gAPSRealTimeWritableInitOnce != -1)
    {
      dispatch_once_f(&gAPSRealTimeWritableInitOnce, 0, _APSRealTimeWritableGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      *(Instance + 33) = 0;
      *(Instance + 25) = 0;
      *(Instance + 48) = 0;
      *(Instance + 41) = 0;
      *(Instance + 16) = a2;
      *(Instance + 24) = 0;
      atomic_store(0, (Instance + 32));
      v8 = malloc_type_malloc(a2, 0x2ACCE347uLL);
      v7[5] = v8;
      if (v8 && (v9 = malloc_type_malloc(a2, 0xC0896FB6uLL), (v7[6] = v9) != 0))
      {
        v10 = v7[5];
        if (a1)
        {
          memcpy(v10, a1, a2);
        }

        else
        {
          bzero(v10, a2);
        }

        v11 = 0;
        *a3 = CFRetain(v7);
      }

      else
      {
        APSLogErrorAt(0);
        v11 = 4294960568;
      }

      CFRelease(v7);
    }

    else
    {
      APSLogErrorAt(0);
      return 4294960568;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v11;
}

uint64_t APSRealTimeWritableRead(uint64_t a1, void *__dst)
{
  if (a1 && __dst)
  {
    v4 = *(a1 + 32);
    v5 = a1 + 40;
    v6 = v4;
    do
    {
      __dmb(9u);
      memcpy(__dst, *(v5 + 8 * (v4 & 1)), *(a1 + 16));
      atomic_compare_exchange_strong_explicit((a1 + 32), &v6, v6, memory_order_release, memory_order_relaxed);
      v7 = v6 == v4;
      v4 = v6;
    }

    while (!v7);
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSRealTimeWritableWrite(uint64_t a1, const void *a2)
{
  if (a1 && a2)
  {
    __swp(a1 + 24, (a1 + 24));
    if ((a1 + 24))
    {
      APSLogErrorAt(0);
      v4 = 4294960537;
      APSSignalErrorAt(4294960537);
    }

    else
    {
      v3 = *(a1 + 32) + 1;
      memcpy(*(a1 + 8 * (v3 & 1) + 40), a2, *(a1 + 16));
      v4 = 0;
      atomic_store(v3, (a1 + 32));
      *(a1 + 24) = 0;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v4;
}

uint64_t APSRTPSeqNumRangeMake(int a1, unsigned int a2)
{
  if (a2 > 0x8000)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a1 | (a2 << 16);
  }
}

uint64_t APSRTPSeqNumRangeEqual(unsigned int a1, unsigned int a2)
{
  v3 = a1 > 0x8000FFFF && a2 > 0x8000FFFF;
  v4 = ((a2 | a1) & 0xFFFF0000) == 0 || v3;
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

uint64_t APSRTPSeqNumRangeIntersection(unsigned int a1, unsigned int a2)
{
  if (a1 > 0x8000FFFFuLL || a2 > 0x8000FFFFuLL)
  {
    LOWORD(a1) = -1;
    LOWORD(v2) = -1;
  }

  else
  {
    if (a1 < 0x10000uLL)
    {
LABEL_23:
      LOWORD(v2) = 0;
      return a1 | (v2 << 16);
    }

    if (a2 < 0x10000uLL)
    {
      LOWORD(v2) = 0;
      LOWORD(a1) = a2;
    }

    else
    {
      LOWORD(v2) = HIWORD(a1);
      if (a1 != a2)
      {
        v2 = a1 >> 16;
        v3 = (a1 - a2);
        if (v3 >= 1)
        {
          v4 = a2;
        }

        else
        {
          v4 = a1;
        }

        if (v3 >= 1)
        {
          v5 = HIWORD(a2);
        }

        else
        {
          v5 = HIWORD(a1);
        }

        if (v3 < 1)
        {
          LOWORD(a1) = a2;
        }

        v6 = v5 >= (a1 - v4);
        v7 = v5 - (a1 - v4);
        if (v7 == 0 || !v6)
        {
          LOWORD(a1) = 0;
          goto LABEL_23;
        }

        if (v3 < 1)
        {
          LODWORD(v2) = HIWORD(a2);
        }

        if (v7 < v2)
        {
          LOWORD(v2) = v7;
        }
      }
    }
  }

  return a1 | (v2 << 16);
}

uint64_t APSRTPSeqNumRangeMerge(unsigned int a1, unsigned int a2)
{
  if (a1 > 0x8000FFFFuLL || a2 > 0x8000FFFFuLL)
  {
    LOWORD(a2) = -1;
    v2 = -1;
  }

  else if (a1 < 0x10000uLL)
  {
    v2 = HIWORD(a2);
  }

  else
  {
    v2 = HIWORD(a1);
    if (a2 < 0x10000uLL || (v3 = a2 >> 16, (a1 | (HIWORD(a1) << 16)) == a2))
    {
      LOWORD(a2) = a1;
    }

    else
    {
      v4 = (a1 - a2);
      if (v4 >= 1)
      {
        v5 = a2;
      }

      else
      {
        v5 = a1;
      }

      if (v4 >= 1)
      {
        v6 = a1;
      }

      else
      {
        LODWORD(v3) = HIWORD(a1);
        v6 = a2;
      }

      v7 = v6 - v5;
      if (v3 < v7)
      {
        LOWORD(a2) = 0;
        v2 = 0;
      }

      else
      {
        v8 = HIWORD(a1);
        if (v4 < 1)
        {
          v8 = HIWORD(a2);
        }

        v9 = v7 + v8;
        v11 = v9 <= v7 || v9 > 0x8000u;
        if (v3 > v9)
        {
          v9 = v3;
        }

        if (v11)
        {
          LOWORD(a2) = -1;
        }

        else
        {
          LOWORD(a2) = v5;
        }

        if (v11)
        {
          v2 = -1;
        }

        else
        {
          v2 = v9;
        }
      }
    }
  }

  return a2 | (v2 << 16);
}

uint64_t APSRTPSeqNumRangeUnion(unsigned int a1, unsigned int a2)
{
  if (a1 > 0x8000FFFFuLL || a2 > 0x8000FFFFuLL)
  {
    LOWORD(a2) = -1;
    v2 = -1;
  }

  else if (a1 < 0x10000uLL)
  {
    v2 = HIWORD(a2);
  }

  else
  {
    v2 = HIWORD(a1);
    if (a2 < 0x10000uLL || (a1 | (HIWORD(a1) << 16)) == a2)
    {
      LOWORD(a2) = a1;
    }

    else
    {
      v3 = a1 >> 16;
      v4 = (a1 - a2);
      v5 = v4 < 1;
      if (v4 >= 1)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      if (v5)
      {
        v7 = HIWORD(a1);
      }

      else
      {
        v7 = HIWORD(a2);
      }

      if (v5)
      {
        v8 = a2;
      }

      else
      {
        v8 = a1;
      }

      if (v5)
      {
        LOWORD(v3) = HIWORD(a2);
      }

      v2 = v8 - v6 + v3;
      v10 = v2 <= (v8 - v6) || v2 > 0x8000u;
      if (v7 > v2)
      {
        v2 = v7;
      }

      if (v10)
      {
        LOWORD(a2) = -1;
      }

      else
      {
        LOWORD(a2) = v6;
      }

      if (v10)
      {
        v2 = -1;
      }
    }
  }

  return a2 | (v2 << 16);
}

const void *APSEncryptionUtilsDeriveAESKeySHA512(const void *result, CC_LONG a2, const void *a3, CC_LONG a4, const void *a5, CC_LONG a6, _OWORD *a7, _OWORD *a8)
{
  v12 = result;
  v20 = *MEMORY[0x277D85DE8];
  memset(&v18, 0, sizeof(v18));
  if (a7)
  {
    CC_SHA512_Init(&v18);
    CC_SHA512_Update(&v18, a3, a4);
    CC_SHA512_Update(&v18, v12, a2);
    result = CC_SHA512_Final(md, &v18);
    *a7 = *md;
  }

  if (a8)
  {
    CC_SHA512_Init(&v18);
    CC_SHA512_Update(&v18, a5, a6);
    CC_SHA512_Update(&v18, v12, a2);
    result = CC_SHA512_Final(md, &v18);
    *a8 = *md;
  }

  for (i = 0; i != 64; ++i)
  {
    md[i] = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void APSEncryptionUtilsDeriveAESKeySHA512ForScreen(const void *a1, CC_LONG a2, uint64_t a3, _OWORD *a4, _OWORD *a5)
{
  v9 = ASPrintF();
  v10 = v9;
  v11 = ASPrintF();
  v12 = v11;
  APSEncryptionUtilsDeriveAESKeySHA512(a1, a2, 0, v9, 0, v11, a4, a5);
  if (v9)
  {
    v13 = 0;
    do
    {
      *v13++ = 0;
      --v10;
    }

    while (v10);
  }

  if (v12)
  {
    v14 = 0;
    do
    {
      *v14++ = 0;
      --v12;
    }

    while (v12);
  }

  free(0);
  free(0);
}

uint64_t APSThreadSafeDictionaryGetTypeID()
{
  if (gAPSThreadSafeDictionaryInitOnce != -1)
  {
    dispatch_once_f(&gAPSThreadSafeDictionaryInitOnce, 0, _APSThreadSafeDictionaryGetTypeID);
  }

  return gAPSThreadSafeDictionaryTypeID;
}

uint64_t _APSThreadSafeDictionaryGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSThreadSafeDictionaryTypeID = result;
  return result;
}

uint64_t _APSThreadSafeDictionaryFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);

  return FigSimpleMutexDestroy();
}

uint64_t APSThreadSafeDictionaryCreate(CFTypeRef *a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  if (gAPSThreadSafeDictionaryInitOnce != -1)
  {
    dispatch_once_f(&gAPSThreadSafeDictionaryInitOnce, 0, _APSThreadSafeDictionaryGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v3 = Instance;
  *(Instance + 16) = 0;
  *(Instance + 24) = 0;
  *(Instance + 16) = FigSimpleMutexCreate();
  v3[3] = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *a1 = CFRetain(v3);
  CFRelease(v3);
  return 0;
}

uint64_t APSThreadSafeDictionaryCopyValueIfPresent(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  v6 = *(a1 + 16);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v7 = *(a1 + 16);
  FigSimpleMutexLock();
  if (CFDictionaryGetValueIfPresent(*(a1 + 24), a2, a3))
  {
    if (*a3)
    {
      CFRetain(*a3);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 16);
  FigSimpleMutexUnlock();
  return v8;
}

void *APSThreadSafeDictionaryCopyValue(uint64_t a1, const void *a2)
{
  value = 0;
  if (!*(a1 + 24))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v5 = *(a1 + 16);
  FigSimpleMutexLock();
  if (CFDictionaryGetValueIfPresent(*(a1 + 24), a2, &value))
  {
    if (value)
    {
      CFRetain(value);
    }
  }

  v6 = *(a1 + 16);
  FigSimpleMutexUnlock();
  return value;
}

uint64_t APSThreadSafeDictionaryGetInt32IfPresent(uint64_t a1)
{
  v2 = *(a1 + 16);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v3 = *(a1 + 16);
  FigSimpleMutexLock();
  v4 = *(a1 + 24);
  Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
  v6 = *(a1 + 16);
  FigSimpleMutexUnlock();
  return Int32IfPresent;
}

uint64_t APSThreadSafeDictionaryGetInt64IfPresent(uint64_t a1)
{
  v2 = *(a1 + 16);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v3 = *(a1 + 16);
  FigSimpleMutexLock();
  v4 = *(a1 + 24);
  Int64IfPresent = FigCFDictionaryGetInt64IfPresent();
  v6 = *(a1 + 16);
  FigSimpleMutexUnlock();
  return Int64IfPresent;
}

uint64_t APSThreadSafeDictionaryGetInt64(uint64_t a1)
{
  v2 = *(a1 + 16);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v3 = *(a1 + 16);
  FigSimpleMutexLock();
  v4 = *(a1 + 24);
  Int64 = CFDictionaryGetInt64();
  v6 = *(a1 + 16);
  FigSimpleMutexUnlock();
  return Int64;
}

uint64_t APSThreadSafeDictionarySetValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v3 = *(a1 + 16);
  FigSimpleMutexLock();
  v4 = *(a1 + 24);
  FigCFDictionarySetValue();
  v5 = *(a1 + 16);

  return FigSimpleMutexUnlock();
}

uint64_t APSThreadSafeDictionarySetInt64(uint64_t a1)
{
  v2 = *(a1 + 16);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v3 = *(a1 + 16);
  FigSimpleMutexLock();
  v4 = *(a1 + 24);
  FigCFDictionarySetInt64();
  v5 = *(a1 + 16);

  return FigSimpleMutexUnlock();
}

uint64_t APSThreadSafeDictionarySetInt32(uint64_t a1)
{
  v2 = *(a1 + 16);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v3 = *(a1 + 16);
  FigSimpleMutexLock();
  v4 = *(a1 + 24);
  FigCFDictionarySetInt32();
  v5 = *(a1 + 16);

  return FigSimpleMutexUnlock();
}

uint64_t APSThreadSafeDictionaryCopyMutableDictionary(uint64_t a1)
{
  v2 = *(a1 + 16);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v3 = *(a1 + 16);
  FigSimpleMutexLock();
  v4 = *MEMORY[0x277CBECE8];
  v5 = *(a1 + 24);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v7 = *(a1 + 16);
  FigSimpleMutexUnlock();
  return MutableCopy;
}

uint64_t APSThreadSafeDictionaryRemoveValue(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 16);
  FigSimpleMutexLock();
  CFDictionaryRemoveValue(*(a1 + 24), a2);
  v5 = *(a1 + 16);

  return FigSimpleMutexUnlock();
}

uint64_t APSThreadSafeDictionaryAddEntriesToDictionaryWithRecursion(uint64_t a1)
{
  v2 = *(a1 + 16);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v3 = *(a1 + 16);
  FigSimpleMutexLock();
  v4 = *(a1 + 24);
  FigCFDictionaryAddEntriesToDictionaryWithRecursion();
  v5 = *(a1 + 16);

  return FigSimpleMutexUnlock();
}

uint64_t APSHierarchyReporterProtocolGetProtocolID()
{
  if (APSHierarchyReporterProtocolGetProtocolID_sAPSHierarchyReporterProtocolIDOnce != -1)
  {
    dispatch_once_f(&APSHierarchyReporterProtocolGetProtocolID_sAPSHierarchyReporterProtocolIDOnce, &APSHierarchyReporterProtocolGetProtocolID_sAPSHierarchyReporterProtocolID, endpointHierarchy_registerProtocol);
  }

  return APSHierarchyReporterProtocolGetProtocolID_sAPSHierarchyReporterProtocolID;
}

uint64_t APSXPCServerStart(const void *a1, const __CFDictionary *a2)
{
  if (a1)
  {
    v3 = apsxpc_serverLookup(a1);
    v4 = v3[3];
    FigSimpleMutexLock();
    if (!v3[6])
    {
      v3[6] = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
      v3[7] = FigSimpleMutexCreate();
    }

    if (v3[4])
    {
      v5 = v3[3];
      FigSimpleMutexUnlock();
      return 0;
    }

    else
    {
      v19 = 0;
      name = 0;
      v15 = *v3;
      ASPrintF();
      v7 = *v3;
      v8 = CFStringCopyUTF8CString();
      v6 = v8;
      if (v8)
      {
        APSLogErrorAt(v8);
      }

      else
      {
        v9 = dispatch_queue_create(v19, 0);
        v3[4] = v9;
        if (a2)
        {
          Value = CFDictionaryGetValue(a2, @"EntitlementName");
          if (Value)
          {
            Value = CFRetain(Value);
          }

          v3[2] = Value;
          v11 = v3[4];
        }

        else
        {
          v11 = v9;
        }

        mach_service = xpc_connection_create_mach_service(name, v11, 1uLL);
        v3[5] = mach_service;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 0x40000000;
        handler[2] = __apsxpc_serverEnsureStart_block_invoke;
        handler[3] = &__block_descriptor_tmp_15_2457;
        handler[4] = v3;
        xpc_connection_set_event_handler(mach_service, handler);
        xpc_connection_resume(v3[5]);
        if (gLogCategory_APSXPCService <= 50 && (gLogCategory_APSXPCService != -1 || _LogCategory_Initialize()))
        {
          v16 = *v3;
          LogPrintF();
        }
      }

      free(v19);
      free(name);
      v13 = v3[3];
      FigSimpleMutexUnlock();
      if (v6)
      {
        APSLogErrorAt(v6);
      }
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v6;
}

void *apsxpc_serverLookup(const void *a1)
{
  if (apsxpc_getServerTable_once != -1)
  {
    dispatch_once(&apsxpc_getServerTable_once, &__block_literal_global_2479);
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(apsxpc_getServerTable_serverTable_0, a1);
  if (!Value)
  {
    Value = malloc_type_calloc(1uLL, 0x60uLL, 0x1070040C487B433uLL);
    *Value = CFRetain(a1);
    Value[1] = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"APSXPCServerDisconnected-%@", a1);
    Value[3] = FigSimpleMutexCreate();
    CFDictionaryAddValue(apsxpc_getServerTable_serverTable_0, a1, Value);
  }

  FigSimpleMutexUnlock();
  return Value;
}

void __apsxpc_serverEnsureStart_block_invoke(uint64_t a1, _xpc_connection_s *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x223DB62E0](a2);
  if (v4 == MEMORY[0x277D86450])
  {
    v6 = *(a1 + 32);
    memset(v29, 0, sizeof(v29));
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    memset(buffer, 63, sizeof(buffer));
    pid = xpc_connection_get_pid(a2);
    proc_name(pid, buffer, 0x80u);
    if (gLogCategory_APSXPCService <= 50 && (gLogCategory_APSXPCService != -1 || _LogCategory_Initialize()))
    {
      v13 = *v6;
      LogPrintF();
    }

    label = 0;
    if (!v6[2])
    {
      goto LABEL_18;
    }

    v8 = CFStringCopyUTF8CString();
    if (v8)
    {
      APSLogErrorAt(v8);
      free(label);
    }

    else
    {
      has_entitlement = xpc_connection_has_entitlement();
      free(label);
      if (has_entitlement)
      {
LABEL_18:
        if (!v6[9])
        {
          label = 0;
          if (gLogCategory_APSXPCService <= 50 && (gLogCategory_APSXPCService != -1 || _LogCategory_Initialize()))
          {
            v16 = *v6;
            LogPrintF();
          }

          v6[9] = xpc_retain(a2);
          *(v6 + 22) = pid;
          v6[8] = strdup(buffer);
          v18 = *v6;
          ASPrintF();
          v10 = dispatch_queue_create(label, 0);
          v6[10] = v10;
          xpc_connection_set_target_queue(a2, v10);
          free(label);
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 0x40000000;
          handler[2] = __apsxpc_serverHandleNewClientConnection_block_invoke;
          handler[3] = &__block_descriptor_tmp_20;
          handler[4] = v6;
          xpc_connection_set_event_handler(a2, handler);
          xpc_connection_resume(a2);
          goto LABEL_46;
        }

        if (gLogCategory_APSXPCService > 90 || gLogCategory_APSXPCService == -1 && !_LogCategory_Initialize())
        {
LABEL_45:
          xpc_connection_cancel(a2);
          goto LABEL_46;
        }

        v15 = *v6;
LABEL_43:
        LogPrintF();
        goto LABEL_45;
      }
    }

    if (gLogCategory_APSXPCService > 90 || gLogCategory_APSXPCService == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_45;
    }

    v19 = *v6;
    goto LABEL_43;
  }

  if (v4 == MEMORY[0x277D86480])
  {
    v5 = *(a1 + 32);
    if (a2 == MEMORY[0x277D863F8])
    {
      if (gLogCategory_APSXPCService <= 90 && (gLogCategory_APSXPCService != -1 || _LogCategory_Initialize()))
      {
        v14 = *v5;
        goto LABEL_28;
      }
    }

    else if (a2 == MEMORY[0x277D863F0])
    {
      if (gLogCategory_APSXPCService <= 90 && (gLogCategory_APSXPCService != -1 || _LogCategory_Initialize()))
      {
        v17 = *v5;
        goto LABEL_28;
      }
    }

    else if (gLogCategory_APSXPCService <= 90 && (gLogCategory_APSXPCService != -1 || _LogCategory_Initialize()))
    {
      v12 = *v5;
LABEL_28:
      LogPrintF();
    }
  }

LABEL_46:
  v11 = *MEMORY[0x277D85DE8];
}

void __apsxpc_serverHandleNewClientConnection_block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x223DB62E0](a2);
  if (v4 == MEMORY[0x277D86468])
  {
    v7 = *(a1 + 32);
    reply = xpc_dictionary_create_reply(a2);
    remote_connection = xpc_dictionary_get_remote_connection(a2);
    cf = 0;
    key[0] = 0;
    v16 = 0;
    v10 = FigXPCMessageCopyCFString();
    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = -6705;
      v10 = 4294960591;
    }

    APSLogErrorAt(v10);
    if (key[0])
    {
      CFRelease(key[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    xpc_dictionary_set_int64(reply, "OutError", v14);
    xpc_connection_send_message(remote_connection, reply);
    xpc_release(reply);
  }

  else if (v4 == MEMORY[0x277D86480])
  {
    v5 = *(a1 + 32);
    string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
    if (a2 == MEMORY[0x277D863F8])
    {
      v11 = v5[4];
      key[0] = MEMORY[0x277D85DD0];
      key[1] = 0x40000000;
      key[2] = __apsxpc_serverHandleClientConnectionError_block_invoke;
      key[3] = &__block_descriptor_tmp_30_2474;
      key[4] = v5;
      key[5] = string;
      dispatch_sync(v11, key);
      CMNotificationCenterGetDefaultLocalCenter();
      v13 = *v5;
      v12 = v5[1];
      CMNotificationCenterPostNotification();
    }

    else if (gLogCategory_APSXPCService <= 90 && (gLogCategory_APSXPCService != -1 || _LogCategory_Initialize()))
    {
      v15 = *v5;
      LogPrintF();
    }
  }
}

void __apsxpc_serverHandleClientConnectionError_block_invoke(uint64_t a1)
{
  if (gLogCategory_APSXPCService <= 90 && (gLogCategory_APSXPCService != -1 || _LogCategory_Initialize()))
  {
    v2 = *(a1 + 32);
    v10 = v2[8];
    v12 = *(a1 + 40);
    v8 = *v2;
    LogPrintF();
  }

  v3 = *(a1 + 32);
  if (*(v3 + 22) && gLogCategory_APSXPCService <= 50)
  {
    if (gLogCategory_APSXPCService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v7 = *(v3 + 22);
    }

    v11 = v3[8];
    v9 = *v3;
    LogPrintF();
  }

LABEL_10:
  v4 = v3[9];
  if (v4)
  {
    xpc_connection_cancel(v4);
    v5 = v3[9];
    if (v5)
    {
      v3[9] = 0;
      xpc_release(v5);
    }
  }

  v6 = v3[10];
  if (v6)
  {
    dispatch_release(v6);
    v3[10] = 0;
  }

  free(v3[8]);
  v3[8] = 0;
  *(v3 + 22) = 0;
}

uint64_t __apsxpc_getServerTable_block_invoke()
{
  apsxpc_getServerTable_serverTable_0 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
  result = FigSimpleMutexCreate();
  apsxpc_getServerTable_serverTable_1 = result;
  return result;
}

uint64_t APSXPCServerAddCommandHandler(const void *a1, const void *a2, const void *a3)
{
  if (!a1 || !a2 || !a3)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v5 = apsxpc_serverLookup(a1);
  v6 = v5[3];
  FigSimpleMutexLock();
  if (!v5[6])
  {
    v5[6] = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
    v5[7] = FigSimpleMutexCreate();
  }

  v7 = v5[3];
  FigSimpleMutexUnlock();
  v8 = v5[7];
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(v5[6], a2);
  if (Value)
  {
    v10 = v5[7];
    FigSimpleMutexUnlock();
    if (Value != a3)
    {
      v11 = 4294960577;
      APSLogErrorAt(4294960577);
      return v11;
    }
  }

  else
  {
    CFDictionaryAddValue(v5[6], a2, a3);
    v12 = v5[7];
    FigSimpleMutexUnlock();
  }

  if (Value != a3 && gLogCategory_APSXPCService <= 50 && (gLogCategory_APSXPCService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 0;
}

uint64_t APSXPCServerPostEvent(const void *a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    v11 = 4294960591;
    goto LABEL_13;
  }

  v4 = apsxpc_serverLookup(a1);
  v5 = v4[3];
  FigSimpleMutexLock();
  v6 = v4[3];
  v7 = v4[4];
  FigSimpleMutexUnlock();
  if (!v7)
  {
    v11 = 4294960551;
    APSLogErrorAt(4294960551);
    goto LABEL_13;
  }

  v8 = v4[4];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APSXPCServerPostEvent_block_invoke;
  block[3] = &unk_2784A3910;
  block[4] = &v15;
  block[5] = v4;
  dispatch_sync(v8, block);
  if (!v16[3])
  {
    v11 = 4294960543;
    goto LABEL_13;
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = FigXPCMessageSetCFString();
  if (v10)
  {
    v11 = v10;
LABEL_19:
    APSLogErrorAt(v10);
    goto LABEL_13;
  }

  if (a3)
  {
    v10 = FigXPCMessageSetCFDictionary();
    if (v10)
    {
      v11 = v10;
      goto LABEL_19;
    }
  }

  xpc_connection_send_message(v16[3], v9);
  if (gLogCategory_APSXPCService <= 50 && (gLogCategory_APSXPCService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11 = 0;
LABEL_13:
  FigXPCRelease();
  v12 = v16[3];
  FigXPCRelease();
  _Block_object_dispose(&v15, 8);
  return v11;
}

uint64_t __APSXPCServerPostEvent_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 72);
  result = FigXPCRetain();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t APSXPCServerGetDisconnectNotificationName(const void *a1)
{
  if (a1)
  {
    return apsxpc_serverLookup(a1)[1];
  }

  APSLogErrorAt(0);
  return 0;
}

uint64_t APSXPCClientSendCommandCreatingReply(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  if (a1 && a2)
  {
    v7 = apsxpc_clientLookup(a1);
    if (gLogCategory_APSXPCService <= 50 && (gLogCategory_APSXPCService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v8 = v7[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APSXPCClientSendCommandCreatingReply_block_invoke;
    block[3] = &unk_2784A3938;
    block[4] = &v12;
    block[5] = v7;
    block[6] = a2;
    block[7] = a3;
    block[8] = a4;
    dispatch_sync(v8, block);
    v9 = *(v13 + 6);
  }

  else
  {
    APSLogErrorAt(0);
    v9 = 4294960591;
    *(v13 + 6) = -6705;
  }

  _Block_object_dispose(&v12, 8);
  return v9;
}

void *apsxpc_clientLookup(const void *a1)
{
  if (apsxpc_getClientTable_once != -1)
  {
    dispatch_once(&apsxpc_getClientTable_once, &__block_literal_global_40);
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(apsxpc_getClientTable_clientTable_0, a1);
  if (!Value)
  {
    Value = malloc_type_calloc(1uLL, 0x40uLL, 0x6004065B7E030uLL);
    *Value = CFRetain(a1);
    v3 = *MEMORY[0x277CBECE8];
    Value[1] = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"APSXPCClientDisconnected-%@", a1);
    ASPrintF();
    Value[2] = dispatch_queue_create(0, 0);
    ASPrintF();
    Value[3] = dispatch_queue_create(0, 0);
    ASPrintF();
    Value[7] = dispatch_queue_create(0, 0);
    Value[5] = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], 0);
    Value[6] = FigSimpleMutexCreate();
    CFDictionaryAddValue(apsxpc_getClientTable_clientTable_0, a1, Value);
  }

  FigSimpleMutexUnlock();
  return Value;
}

uint64_t __APSXPCClientSendCommandCreatingReply_block_invoke(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  v5 = a1[7];
  v4 = a1[8];
  name = 0;
  if (!v3[4])
  {
    v6 = *v3;
    v7 = CFStringCopyUTF8CString();
    v8 = v7;
    if (v7)
    {
      APSLogErrorAt(v7);
    }

    else
    {
      mach_service = xpc_connection_create_mach_service(name, v3[3], 0);
      v3[4] = mach_service;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = __apsxpc_clientEnsureConnection_block_invoke;
      handler[3] = &__block_descriptor_tmp_50_2491;
      handler[4] = v3;
      xpc_connection_set_event_handler(mach_service, handler);
      xpc_connection_resume(v3[4]);
    }

    if (name)
    {
      free(name);
    }

    if (v8)
    {
      APSLogErrorAt(v8);
      goto LABEL_23;
    }
  }

  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = FigXPCMessageSetCFString();
  if (v11)
  {
    LODWORD(v8) = v11;
LABEL_27:
    APSLogErrorAt(v11);
    goto LABEL_23;
  }

  if (v5)
  {
    v11 = FigXPCMessageSetCFDictionary();
    if (v11)
    {
      LODWORD(v8) = v11;
      goto LABEL_27;
    }
  }

  v12 = xpc_connection_send_message_with_reply_sync(v3[4], v10);
  if (MEMORY[0x223DB62E0]() != MEMORY[0x277D86468])
  {
    if (gLogCategory_APSXPCService <= 50 && (gLogCategory_APSXPCService != -1 || _LogCategory_Initialize()))
    {
      v17 = *v3;
      LogPrintF();
    }

    xpc_connection_cancel(v3[4]);
    v15 = v3[4];
    if (v15)
    {
      v3[4] = 0;
      xpc_release(v15);
    }

    LODWORD(v8) = -6753;
    v14 = 4294960543;
    goto LABEL_22;
  }

  int64 = xpc_dictionary_get_int64(v12, "OutError");
  LODWORD(v8) = int64;
  if (v4)
  {
    if (!int64)
    {
      v14 = FigXPCMessageCopyCFDictionary();
      LODWORD(v8) = v14;
      if (v14)
      {
LABEL_22:
        APSLogErrorAt(v14);
      }
    }
  }

LABEL_23:
  FigXPCRelease();
  result = FigXPCRelease();
  *(*(a1[4] + 8) + 24) = v8;
  return result;
}

void __apsxpc_clientEnsureConnection_block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x223DB62E0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
    v7 = *(a1 + 32);
    if (gLogCategory_APSXPCService <= 90 && (gLogCategory_APSXPCService != -1 || _LogCategory_Initialize()))
    {
      v8 = *v7;
      LogPrintF();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v10 = *v7;
    v9 = v7[1];

    CMNotificationCenterPostNotification();
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v5 = *(a1 + 32);
    v6 = FigXPCMessageCopyCFString();
    if (!v6)
    {
      v6 = 0;
    }

    APSLogErrorAt(v6);
  }
}

void __apsxpc_clientHandleMessageFromServer_block_invoke(uint64_t a1)
{
  if (gLogCategory_APSXPCService <= 50 && (gLogCategory_APSXPCService != -1 || _LogCategory_Initialize()))
  {
    v4 = *(a1 + 32);
    v5 = **(a1 + 40);
    LogPrintF();
  }

  (*(a1 + 48))(*(a1 + 32), *(a1 + 56));
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t __apsxpc_getClientTable_block_invoke()
{
  apsxpc_getClientTable_clientTable_0 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
  result = FigSimpleMutexCreate();
  apsxpc_getClientTable_clientTable_1 = result;
  return result;
}

uint64_t APSXPCClientAddEventHandler(const void *a1, const void *a2, const void *a3)
{
  if (!a1 || !a2 || !a3)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v5 = apsxpc_clientLookup(a1);
  v6 = v5[6];
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(v5[5], a2);
  if (Value)
  {
    v8 = v5[6];
    FigSimpleMutexUnlock();
    if (Value != a3)
    {
      v9 = 4294960577;
      APSLogErrorAt(4294960577);
      return v9;
    }
  }

  else
  {
    CFDictionaryAddValue(v5[5], a2, a3);
    v10 = v5[6];
    FigSimpleMutexUnlock();
  }

  if (Value != a3 && gLogCategory_APSXPCService <= 50 && (gLogCategory_APSXPCService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 0;
}

uint64_t APSXPCClientGetDisconnectNotificationName(const void *a1)
{
  if (a1)
  {
    return apsxpc_clientLookup(a1)[1];
  }

  APSLogErrorAt(0);
  return 0;
}

uint64_t APSRTPJitterBufferSimCreate(uint64_t a1, __int128 *a2, uint64_t a3, int a4, char a5, const void *a6, _DWORD *a7)
{
  if (!a2 || !a3 || *(a3 + 8) != 1819304813 || !a4)
  {
    APSLogErrorAt(0);
    v14 = 0;
    LODWORD(v37) = -6705;
    goto LABEL_43;
  }

  if (APSRTPJitterBufferSimGetTypeID_once != -1)
  {
    dispatch_once(&APSRTPJitterBufferSimGetTypeID_once, &__block_literal_global_2510);
  }

  Instance = _CFRuntimeCreateInstance();
  v14 = Instance;
  if (!Instance)
  {
    goto LABEL_47;
  }

  *(Instance + 16) = 0u;
  v15 = (Instance + 16);
  *(Instance + 272) = 0;
  *(Instance + 240) = 0u;
  *(Instance + 256) = 0u;
  *(Instance + 208) = 0u;
  *(Instance + 224) = 0u;
  *(Instance + 176) = 0u;
  *(Instance + 192) = 0u;
  *(Instance + 144) = 0u;
  *(Instance + 160) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 112) = 0u;
  v16 = (Instance + 112);
  *(Instance + 32) = 0u;
  v17 = *a2;
  v18 = a2[1];
  *(Instance + 104) = *(a2 + 4);
  *(Instance + 88) = v18;
  *(Instance + 72) = v17;
  v19 = *(a3 + 32);
  v20 = *(a3 + 16);
  *(Instance + 112) = *a3;
  *(Instance + 144) = v19;
  *(Instance + 128) = v20;
  *(Instance + 156) = *(Instance + 112) * a4 / 0x3E8;
  *(Instance + 160) = a4;
  *(Instance + 266) = 0;
  *(Instance + 236) = 0;
  if (a5)
  {
    *(Instance + 164) = 257;
  }

  *(Instance + 16) = CFRetain(a6);
  v21 = dispatch_queue_create("com.apple.APSRTPJitterBufferSim.log", 0);
  *(v14 + 24) = v21;
  if (!v21)
  {
LABEL_47:
    APSLogErrorAt(0);
    LODWORD(v37) = -6728;
    goto LABEL_43;
  }

  if (gLogCategory_APSRTPJitterBufferSim <= 50 && (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize()))
  {
    *(v14 + 164);
    LogPrintF();
  }

  if (*(v14 + 80) == 1819304813)
  {
    v22 = 0x5A0u / *(v14 + 88);
  }

  else
  {
    v22 = *(v14 + 92);
  }

  *(v14 + 152) = v22;
  if (v22)
  {
    v23 = 4 * *(v14 + 156) / v22 + 1;
    *(v14 + 40) = v23;
    v24 = malloc_type_calloc(v23, 0x18uLL, 0x1000040FC63CA6CuLL);
    *(v14 + 32) = v24;
    if (!v24)
    {
LABEL_53:
      APSLogErrorAt(0);
      v37 = 4294960568;
      goto LABEL_54;
    }

    if (gLogCategory_APSRTPJitterBufferSim <= 30 && (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize()))
    {
      v44 = *(v14 + 16);
      v46 = *(v14 + 40);
      LogPrintF();
    }

    v25 = CFGetAllocator(v14);
    v26 = CMSimpleQueueCreate(v25, *(v14 + 40), (v14 + 56));
    if (v26)
    {
      v37 = v26;
    }

    else
    {
      v27 = CFGetAllocator(v14);
      v26 = CMSimpleQueueCreate(v27, *(v14 + 40), (v14 + 48));
      if (!v26)
      {
        v28 = dispatch_semaphore_create(0);
        *(v14 + 64) = v28;
        if (v28)
        {
          if (*(v14 + 40))
          {
            v29 = 0;
            v30 = 0;
            do
            {
              CMSimpleQueueEnqueue(*(v14 + 48), (*(v14 + 32) + v29));
              ++v30;
              v29 += 24;
            }

            while (v30 < *(v14 + 40));
          }

          if (*(v14 + 72) != *v16 || *(v14 + 100) != *(v14 + 140))
          {
            APSLogErrorAt(0);
            v37 = 4294960591;
LABEL_57:
            v39 = v37;
            goto LABEL_58;
          }

          *(v14 + 224) = 20 * *(v14 + 156) * *(v14 + 136);
          v31 = *MEMORY[0x277D85F88];
          v32 = iceil2();
          *(v14 + 192) = 0;
          *(v14 + 200) = v32;
          *(v14 + 208) = v32;
          *(v14 + 212) = v32 - 1;
          *(v14 + 216) = 0;
          if (gLogCategory_APSRTPJitterBufferSim <= 30)
          {
            if (gLogCategory_APSRTPJitterBufferSim == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_36;
              }

              v40 = *(v14 + 208);
              v41 = *(v14 + 216) - *(v14 + 220);
            }

            v45 = *v15;
            LogPrintF();
          }

LABEL_36:
          v33 = pthread_create((v14 + 248), 0, _APSRTPJitterBufferSimDecodeThreadEntry, v14);
          if (!v33)
          {
            *(v14 + 256) = v14 + 248;
            if (!*(v14 + 164))
            {
              goto LABEL_42;
            }

            LODWORD(v34) = *(v14 + 224);
            HIDWORD(v35) = 1072483532;
            LODWORD(v35) = *(v14 + 136);
            v36 = 4 * a4 * *(v14 + 112) / 0x3E8;
            *(v14 + 180) = (v34 * 0.9 / v35);
            *(v14 + 184) = v36;
            if (gLogCategory_APSRTPJitterBufferSim > 40)
            {
              goto LABEL_42;
            }

            if (gLogCategory_APSRTPJitterBufferSim == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_42;
              }

              v42 = *(v14 + 180);
              v43 = *(v14 + 184);
            }

            LogPrintF();
LABEL_42:
            LODWORD(v37) = 0;
            goto LABEL_43;
          }

          v37 = v33;
          APSLogErrorAt(v33);
          goto LABEL_57;
        }

        goto LABEL_53;
      }

      v37 = v26;
    }

    APSLogErrorAt(v26);
  }

  else
  {
    APSLogErrorAt(0);
    v37 = 4294960591;
  }

LABEL_54:
  v39 = v37;
LABEL_58:
  APSLogErrorAt(v39);
LABEL_43:
  if (a7)
  {
    *a7 = v37;
  }

  return v14;
}

uint64_t _APSRTPJitterBufferSimDecodeThreadEntry(uint64_t a1)
{
  SetCurrentThreadPriority();
  if (gLogCategory_APSRTPJitterBufferSim <= 30 && (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize()))
  {
    v2 = *(a1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___APSRTPJitterBufferSimDecodeThreadEntry_block_invoke;
    block[3] = &__block_descriptor_tmp_23;
    block[4] = a1;
    dispatch_async(v2, block);
  }

  while (!*(a1 + 265))
  {
    dispatch_semaphore_wait(*(a1 + 64), 0xFFFFFFFFFFFFFFFFLL);
    if (*(a1 + 265))
    {
      break;
    }

    v4 = CMSimpleQueueDequeue(*(a1 + 56));
    if (*(a1 + 265))
    {
      break;
    }

    v5 = v4;
    if (v4)
    {
      if (*(v4 + 2))
      {
        if (!*(a1 + 264))
        {
          v6 = *(a1 + 228);
          if (*(a1 + 164))
          {
            *(a1 + 232) = v6;
            *(a1 + 236) = v6 - v4[1];
            *(a1 + 240) = v6;
          }

          else
          {
            v7 = v4[1];
            v8 = *(a1 + 156);
            v9 = v6 - v7 + v8;
            if (v7 - v6 >= v8)
            {
              v9 = 0;
            }

            *(a1 + 232) = v7;
            *(a1 + 236) = v9;
            v10 = v9 + v4[1];
            *(a1 + 232) = v10;
            *(a1 + 240) = v10;
            v11 = *(a1 + 136) * (v10 - v6);
            if (v11)
            {
              v12 = *(a1 + 224);
              if (v11 >= v12)
              {
                v13 = v12;
              }

              else
              {
                v13 = v11;
              }

              bzero((*(a1 + 192) + (*(a1 + 212) & *(a1 + 220))), v13);
              *(a1 + 220) += v11;
            }
          }

          if (gLogCategory_APSRTPJitterBufferSim <= 30 && (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize()))
          {
            v14 = *(a1 + 24);
            v43 = MEMORY[0x277D85DD0];
            v44 = 0x40000000;
            v45 = ___APSRTPJitterBufferSimInitializeWritePointers_block_invoke;
            v46 = &__block_descriptor_tmp_33_2518;
            v47 = a1;
            v48 = v5;
            dispatch_async(v14, &v43);
          }
        }

        v15 = v5[1] + *(a1 + 236);
        v5[1] = v15;
        v16 = *(a1 + 240);
        v17 = v15 - v16;
        if (v15 < v16)
        {
          if (gLogCategory_APSRTPJitterBufferSim <= 30 && (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize()))
          {
            v32 = *(a1 + 24);
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 0x40000000;
            v42[2] = ___APSRTPJitterBufferSimWritePacket_block_invoke;
            v42[3] = &__block_descriptor_tmp_27;
            v42[4] = a1;
            v42[5] = v5;
            dispatch_async(v32, v42);
          }
        }

        else
        {
          if (v15 == v16)
          {
            v17 = 0;
          }

          else
          {
            if (gLogCategory_APSRTPJitterBufferSim <= 30 && (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize()))
            {
              v18 = *(a1 + 24);
              v38[0] = MEMORY[0x277D85DD0];
              v38[1] = 0x40000000;
              v38[2] = ___APSRTPJitterBufferSimWritePacket_block_invoke_2;
              v38[3] = &__block_descriptor_tmp_29;
              v38[4] = a1;
              v39 = v15 - v16;
              v40 = v16;
              v41 = v15;
              dispatch_async(v18, v38);
            }

            ++*(a1 + 276);
          }

          v19 = *(a1 + 88);
          if (v19)
          {
            v20 = v5[4] / v19;
          }

          else
          {
            v20 = *(a1 + 92);
          }

          v21 = v20 + v17;
          v22 = *(a1 + 220);
          v23 = *(a1 + 136);
          v24 = (*(a1 + 208) - v22 + *(a1 + 216)) / v23;
          v25 = *(a1 + 232);
          if (v24 < v21)
          {
            if (gLogCategory_APSRTPJitterBufferSim <= 50)
            {
              v26 = *(a1 + 228);
              if (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize())
              {
                v27 = *(a1 + 24);
                v43 = MEMORY[0x277D85DD0];
                v44 = 0x40000000;
                v45 = ___APSRTPJitterBufferSimCheckOverrun_block_invoke;
                v46 = &__block_descriptor_tmp_35_2519;
                v47 = a1;
                v48 = __PAIR64__(v25, v26);
                v49 = v24;
                dispatch_async(v27, &v43);
              }
            }

            ++*(a1 + 272);
            v23 = *(a1 + 136);
            v22 = *(a1 + 220);
            v19 = *(a1 + 88);
            v25 = *(a1 + 232);
          }

          if (v19)
          {
            v28 = v5[4] / v19;
          }

          else
          {
            v28 = *(a1 + 92);
          }

          *(a1 + 232) = v25 + v17 + v28;
          *(a1 + 220) = v22 + (v28 + v17) * v23;
          *(a1 + 240) += v28;
          if (*(a1 + 164))
          {
            if (!*(a1 + 176))
            {
              v29 = *(a1 + 244) - *(a1 + 228);
              if (v29 >= *(a1 + 180))
              {
                if (gLogCategory_APSRTPJitterBufferSim <= 30 && (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize()))
                {
                  v30 = *(a1 + 24);
                  v36[0] = MEMORY[0x277D85DD0];
                  v36[1] = 0x40000000;
                  v36[2] = ___APSRTPJitterBufferSimWritePacket_block_invoke_3;
                  v36[3] = &__block_descriptor_tmp_31;
                  v36[4] = a1;
                  v37 = v29;
                  dispatch_async(v30, v36);
                }

                ++*(a1 + 272);
                *(a1 + 176) = 1;
              }
            }
          }

          if (!*(a1 + 264))
          {
            if (*(a1 + 165))
            {
              v31 = mach_absolute_time();
              *(a1 + 168) = v31 - MillisecondsToUpTicks();
            }

            *(a1 + 264) = 1;
          }
        }
      }

      CMSimpleQueueEnqueue(*(a1 + 48), v5);
    }

    else
    {
      APSLogErrorAt(0);
    }
  }

  if (gLogCategory_APSRTPJitterBufferSim <= 30 && (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize()))
  {
    v3 = *(a1 + 24);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 0x40000000;
    v34[2] = ___APSRTPJitterBufferSimDecodeThreadEntry_block_invoke_2;
    v34[3] = &__block_descriptor_tmp_25;
    v34[4] = a1;
    dispatch_async(v3, v34);
  }

  return 0;
}

uint64_t __APSRTPJitterBufferSimGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APSRTPJitterBufferSimGetTypeID_typeID = result;
  return result;
}

void _APSRTPJitterBufferSimFinalize(uint64_t a1)
{
  if (*(a1 + 256))
  {
    *(a1 + 265) = 1;
    dispatch_semaphore_signal(*(a1 + 64));
    pthread_join(*(a1 + 248), 0);
    *(a1 + 256) = 0;
  }

  dispatch_sync(*(a1 + 24), &__block_literal_global_38);
  if (gLogCategory_APSRTPJitterBufferSim <= 50 && (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize()))
  {
    v11 = *(a1 + 272);
    v12 = *(a1 + 276);
    v9 = *(a1 + 16);
    v10 = *(a1 + 268);
    LogPrintF();
  }

  v2 = *(a1 + 192);
  if (v2)
  {
    mach_vm_deallocate(*MEMORY[0x277D85F48], v2, (2 * *(a1 + 208)));
  }

  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  v3 = *(a1 + 32);
  if (v3)
  {
    free(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    dispatch_release(v6);
    *(a1 + 64) = 0;
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    dispatch_release(v7);
    *(a1 + 24) = 0;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 16) = 0;
  }
}

uint64_t APSRTPJitterBufferSimGetTypeID()
{
  if (APSRTPJitterBufferSimGetTypeID_once != -1)
  {
    dispatch_once(&APSRTPJitterBufferSimGetTypeID_once, &__block_literal_global_2510);
  }

  return APSRTPJitterBufferSimGetTypeID_typeID;
}

const void *APSRTPJitterBufferSimGetEmptyPacket(uint64_t a1, int *a2)
{
  if (!a1 || (v4 = *(a1 + 48)) == 0)
  {
    APSLogErrorAt(0);
    result = 0;
    v6 = -6718;
    if (!a2)
    {
      return result;
    }

    goto LABEL_11;
  }

  result = CMSimpleQueueDequeue(v4);
  if (result)
  {
    v6 = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (gLogCategory_APSRTPJitterBufferSim <= 30 && (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize()))
  {
    CMSimpleQueueGetCount(*(a1 + 56));
    LogPrintF();
  }

  result = 0;
  v6 = -6728;
  if (a2)
  {
LABEL_11:
    *a2 = v6;
  }

  return result;
}

intptr_t APSRTPJitterBufferSimDiscardPacket(intptr_t result, void *a2)
{
  if (a2)
  {
    v2 = result;
    a2[2] = 0;
    CMSimpleQueueEnqueue(*(result + 56), a2);
    v3 = *(v2 + 64);

    return dispatch_semaphore_signal(v3);
  }

  return result;
}

intptr_t APSRTPJitterBufferSimEnqueuePacket(intptr_t result, _DWORD *a2)
{
  if (a2)
  {
    v2 = result;
    if (*(result + 80) == 1819304813)
    {
      v3 = a2[4] / *(result + 96);
    }

    else
    {
      v3 = *(result + 92);
    }

    *(result + 244) = v3 + a2[1];
    CMSimpleQueueEnqueue(*(result + 56), a2);
    v4 = *(v2 + 64);

    return dispatch_semaphore_signal(v4);
  }

  return result;
}

uint64_t APSRTPJitterBufferSimRead(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 232);
  v6 = *(a1 + 264);
  v7 = a3 / *(a1 + 136);
  if (gLogCategory_APSRTPJitterBufferSim <= 10 && (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize()))
  {
    v9 = *(a1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APSRTPJitterBufferSimRead_block_invoke;
    block[3] = &__block_descriptor_tmp_12_2533;
    block[4] = a1;
    block[5] = a3;
    v54 = v7;
    dispatch_async(v9, block);
  }

  if (!*(a1 + 164))
  {
    v13 = *(a1 + 228);
    v14 = *(a1 + 266);
    if (v7 + a2 < *(a1 + 232) || *(a1 + 264) == 0)
    {
      if (*(a1 + 266))
      {
        if (gLogCategory_APSRTPJitterBufferSim <= 30 && (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize()))
        {
          v40 = *(a1 + 16);
          LogPrintF();
        }

        *(a1 + 266) = 0;
      }
    }

    else if (!*(a1 + 266))
    {
      if (gLogCategory_APSRTPJitterBufferSim <= 50 && (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize()))
      {
        v41 = *(a1 + 16);
        LogPrintF();
      }

      *(a1 + 266) = 1;
      ++*(a1 + 268);
    }
  }

  if (!v6)
  {
    v16 = 0;
    goto LABEL_77;
  }

  if (!*(a1 + 164))
  {
    v17 = *(a1 + 228);
    if (v17 <= a2)
    {
      if (v17 >= a2)
      {
        v16 = 0;
      }

      else
      {
        v18 = a2 - v17;
        if (gLogCategory_APSRTPJitterBufferSim <= 30 && (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize()))
        {
          v19 = *(a1 + 24);
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 0x40000000;
          v51[2] = __APSRTPJitterBufferSimRead_block_invoke_2;
          v51[3] = &__block_descriptor_tmp_14_2539;
          v51[4] = a1;
          v52 = v18;
          dispatch_async(v19, v51);
        }

        v16 = 0;
        *(a1 + 216) += *(a1 + 136) * v18;
        v17 = *(a1 + 228) + v18;
        *(a1 + 228) = v17;
      }
    }

    else if (v17 - a2 >= v7)
    {
      v16 = v7;
    }

    else
    {
      v16 = v17 - a2;
    }

    goto LABEL_57;
  }

  mach_absolute_time();
  if (!*(a1 + 165))
  {
    goto LABEL_39;
  }

  v10 = *(a1 + 168);
  v11 = UpTicksToMilliseconds();
  v12 = *(a1 + 160);
  if ((1000 * (*(a1 + 236) + *(a1 + 244) - *(a1 + 228)) / *(a1 + 112)) >= v12 + v11 || v11 >= v12)
  {
    *(a1 + 176) = 1;
    *(a1 + 165) = 0;
    *(a1 + 168) = 0;
    if (gLogCategory_APSRTPJitterBufferSim > 30)
    {
      goto LABEL_39;
    }

    if (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize())
    {
      v39 = *(a1 + 16);
      LogPrintF();
    }
  }

  if (!*(a1 + 165))
  {
LABEL_39:
    if (*(a1 + 176))
    {
      v20 = *(a1 + 228);
      v21 = *(a1 + 236) + *(a1 + 244) - v20;
      if (v21 <= *(a1 + 184))
      {
        v22 = 0;
      }

      else
      {
        v22 = v5 - v20;
        if (gLogCategory_APSRTPJitterBufferSim <= 30 && (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize()))
        {
          v23 = *(a1 + 24);
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 0x40000000;
          v57[2] = ___APSRTPJitterBufferSimLegacyDiscardExcess_block_invoke;
          v57[3] = &__block_descriptor_tmp_44_2537;
          v57[4] = a1;
          v58 = v21;
          dispatch_async(v23, v57);
        }

        if (v21 - *(a1 + 184) < v22)
        {
          v22 = v21 - *(a1 + 184);
        }

        *(a1 + 216) += v22 * *(a1 + 136);
        *(a1 + 228) += v22;
        if (gLogCategory_APSRTPJitterBufferSim <= 50 && (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize()))
        {
          v24 = *(a1 + 24);
          v55[0] = MEMORY[0x277D85DD0];
          v55[1] = 0x40000000;
          v55[2] = ___APSRTPJitterBufferSimLegacyDiscardExcess_block_invoke_2;
          v55[3] = &__block_descriptor_tmp_46_2538;
          v55[4] = a1;
          v56 = v22;
          dispatch_async(v24, v55);
        }
      }

      if (v21 - v22 <= *(a1 + 184))
      {
        *(a1 + 176) = 0;
      }
    }
  }

  v16 = 0;
  v17 = *(a1 + 228);
LABEL_57:
  v25 = v7 - v16;
  if (v7 <= v16 || *(a1 + 165) != 0 || v5 < v17)
  {
    goto LABEL_74;
  }

  if (v5 - v17 < v25)
  {
    v25 = v5 - v17;
  }

  v28 = *(a1 + 136);
  v29 = v25 >= (*(a1 + 220) - *(a1 + 216)) / v28 ? (*(a1 + 220) - *(a1 + 216)) / v28 : v25;
  v16 += v29;
  if (!v29)
  {
LABEL_74:
    a2 = v17;
    goto LABEL_78;
  }

  if (gLogCategory_APSRTPJitterBufferSim <= 10 && (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize()))
  {
    v30 = *(a1 + 24);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 0x40000000;
    v47[2] = __APSRTPJitterBufferSimRead_block_invoke_3;
    v47[3] = &__block_descriptor_tmp_16;
    v47[4] = a1;
    v48 = v28 * v29;
    v49 = v29;
    v50 = v5;
    dispatch_async(v30, v47);
  }

  *(a1 + 216) += *(a1 + 136) * v29;
  a2 = *(a1 + 228) + v29;
LABEL_77:
  *(a1 + 228) = a2;
LABEL_78:
  v31 = v7 - v16;
  if (v31)
  {
    if (*(a1 + 164))
    {
      if (!*(a1 + 165))
      {
        v33 = *(a1 + 216);
        v32 = *(a1 + 220);
        v34 = *(a1 + 136);
        Count = CMSimpleQueueGetCount(*(a1 + 56));
        if (gLogCategory_APSRTPJitterBufferSim <= 50)
        {
          v36 = Count;
          if (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize())
          {
            v37 = *(a1 + 24);
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 0x40000000;
            v43[2] = __APSRTPJitterBufferSimRead_block_invoke_4;
            v43[3] = &__block_descriptor_tmp_18;
            v43[4] = a1;
            v44 = v31;
            v45 = (v32 - v33) / v34;
            v46 = v36;
            dispatch_async(v37, v43);
          }
        }

        *(a1 + 165) = 1;
        *(a1 + 168) = mach_absolute_time();
        ++*(a1 + 268);
      }
    }

    else
    {
      if (v6)
      {
        *(a1 + 216) += *(a1 + 136) * v31;
        if (!*(a1 + 266))
        {
          if (gLogCategory_APSRTPJitterBufferSim <= 50 && (gLogCategory_APSRTPJitterBufferSim != -1 || _LogCategory_Initialize()))
          {
            v42 = *(a1 + 16);
            LogPrintF();
          }

          ++*(a1 + 268);
          *(a1 + 266) = 1;
          a2 = *(a1 + 228);
        }
      }

      *(a1 + 228) = a2 + v31;
    }
  }

  return 0;
}