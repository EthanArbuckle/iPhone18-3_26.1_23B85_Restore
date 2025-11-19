uint64_t __CFStringGetLongCharacterFromInlineBuffer(UniChar *buffer, int64_t a2, int64_t a3, int64_t *a4)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = a3;
    if (a3 < a2)
    {
      v8 = *(buffer + 20);
      if (v8 <= a3)
      {
        v11 = 0;
      }

      else
      {
        v9 = *(buffer + 17);
        if (v9)
        {
          v10 = *(v9 + 2 * *(buffer + 19) + 2 * a3);
        }

        else
        {
          v14 = *(buffer + 18);
          if (v14)
          {
            v10 = *(v14 + *(buffer + 19) + a3);
          }

          else
          {
            if (*(buffer + 22) <= a3 || (v15 = *(buffer + 21), v15 > a3))
            {
              v16 = a3 - 4;
              if (a3 < 4)
              {
                v16 = 0;
              }

              if (v16 + 64 < v8)
              {
                v8 = v16 + 64;
              }

              *(buffer + 21) = v16;
              *(buffer + 22) = v8;
              v32.length = v8 - v16;
              v32.location = *(buffer + 19) + v16;
              CFStringGetCharacters(*(buffer + 16), v32, buffer);
              v15 = *(buffer + 21);
            }

            v10 = buffer[v5 - v15];
          }
        }

        v11 = v10;
        if ((v10 & 0xFC00) != 0xD800 || a2 - 1 <= v5)
        {
          v12 = 1;
          if (v5 && (v10 & 0xFC00) == 0xDC00)
          {
            v18 = *(buffer + 20);
            if (v18 < v5)
            {
              goto LABEL_9;
            }

            v19 = v5 - 1;
            v20 = *(buffer + 17);
            if (v20)
            {
              v21 = *(v20 + 2 * *(buffer + 19) + 2 * v19);
            }

            else
            {
              v27 = *(buffer + 18);
              if (v27)
              {
                v21 = *(v27 + *(buffer + 19) + v19);
              }

              else
              {
                if (*(buffer + 22) < v5 || (v30 = *(buffer + 21), v30 >= v5))
                {
                  v31 = v5 - 5;
                  if (v19 < 4)
                  {
                    v31 = 0;
                  }

                  if (v31 + 64 < v18)
                  {
                    v18 = v31 + 64;
                  }

                  *(buffer + 21) = v31;
                  *(buffer + 22) = v18;
                  v34.length = v18 - v31;
                  v34.location = *(buffer + 19) + v31;
                  CFStringGetCharacters(*(buffer + 16), v34, buffer);
                  v30 = *(buffer + 21);
                }

                v21 = buffer[v19 - v30];
              }
            }

            if (v21 >> 10 != 54)
            {
              goto LABEL_9;
            }

            v11 = v11 + (v21 << 10) - 56613888;
            v12 = 2;
            --v5;
          }

LABEL_10:
          if (a4)
          {
            goto LABEL_11;
          }

          return v11;
        }

        v22 = v5 + 1;
        v23 = *(buffer + 20);
        if (v23 > v5 + 1)
        {
          v24 = *(buffer + 17);
          if (v24)
          {
            v25 = *(v24 + 2 * *(buffer + 19) + 2 * v22);
          }

          else
          {
            v26 = *(buffer + 18);
            if (v26)
            {
              v25 = *(v26 + *(buffer + 19) + v22);
            }

            else
            {
              if (*(buffer + 22) <= v22 || (v28 = *(buffer + 21), v28 > v22))
              {
                v29 = v5 - 3;
                if (v5 < 3)
                {
                  v29 = 0;
                }

                if (v29 + 64 < v23)
                {
                  v23 = v29 + 64;
                }

                *(buffer + 21) = v29;
                *(buffer + 22) = v23;
                v33.length = v23 - v29;
                v33.location = *(buffer + 19) + v29;
                CFStringGetCharacters(*(buffer + 16), v33, buffer);
                v28 = *(buffer + 21);
              }

              v25 = buffer[v22 - v28];
            }
          }

          if (v25 >> 10 == 55)
          {
            v11 = (v11 << 10) + v25 - 56613888;
            v12 = 2;
            goto LABEL_10;
          }
        }
      }

LABEL_9:
      v12 = 1;
      goto LABEL_10;
    }
  }

  v11 = 0;
  if (a4)
  {
    v12 = 0;
    v5 = -1;
LABEL_11:
    *a4 = v5;
    a4[1] = v12;
  }

  return v11;
}

uint64_t __CFStringGetExtendedPictographicSequenceComponent(UniChar *buffer, int64_t a2, int64_t a3, uint64_t *a4)
{
  result = 0;
  v24 = *MEMORY[0x1E69E9840];
  if (a3 < 0 || a3 >= a2)
  {
    goto LABEL_49;
  }

  v22 = a3;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  v23 = 0;
  v10 = -1;
  v11 = -1;
  v12 = -1;
  while (1)
  {
    LongCharacterFromInlineBuffer = __CFStringGetLongCharacterFromInlineBuffer(buffer, a2, a3, &v22);
    if (u_hasBinaryProperty(LongCharacterFromInlineBuffer, UCHAR_GRAPHEME_EXTEND) || u_hasBinaryProperty(LongCharacterFromInlineBuffer, UCHAR_EMOJI_MODIFIER))
    {
      v14 = v7 + 1;
      if (v7 > 63)
      {
        goto LABEL_21;
      }

      v9 = v22;
      v12 = v22;
      goto LABEL_8;
    }

    if (LongCharacterFromInlineBuffer == 8205)
    {
      if (v12 != -1 || v11 != -1)
      {
        break;
      }

      v12 = -1;
      v9 = v22;
      v11 = v22;
      goto LABEL_19;
    }

    if (!u_hasBinaryProperty(LongCharacterFromInlineBuffer, UCHAR_EXTENDED_PICTOGRAPHIC) || v10 != -1 || v11 != -1 || v12 != -1)
    {
      break;
    }

    v9 = v22;
    v11 = -1;
    v10 = v22;
LABEL_19:
    v14 = v7;
LABEL_8:
    v8 += v23;
    v7 = v14;
    a3 = v9 - 1;
    v22 = v9 - 1;
    if (v9 < 1)
    {
      goto LABEL_21;
    }
  }

  v14 = v7;
LABEL_21:
  if (v10 != -1)
  {
    v15 = a4;
    if (a4)
    {
      if (v12 != -1 && v11 == -1)
      {
        v9 = v10;
        v16 = v12 - v10;
      }

      else
      {
        v16 = 0;
      }

      v8 += v16;
LABEL_27:
      *v15 = v9;
      v15[1] = v8;
      v15[2] = v12;
      v15[3] = v11;
      result = 1;
      v15[4] = v10;
      goto LABEL_49;
    }

LABEL_48:
    result = 1;
    goto LABEL_49;
  }

  if (v11 == -1 && v12 == -1 || (v17 = v9 + v8, v22 = v9 + v8, v23 = 0, v9 + v8 >= a2))
  {
LABEL_44:
    result = 0;
    goto LABEL_49;
  }

  do
  {
    v18 = __CFStringGetLongCharacterFromInlineBuffer(buffer, a2, v17, &v22);
    if (u_hasBinaryProperty(v18, UCHAR_GRAPHEME_EXTEND) || u_hasBinaryProperty(v18, UCHAR_EMOJI_MODIFIER))
    {
      result = 0;
      if (v11 != -1 || v14 > 62)
      {
        goto LABEL_49;
      }

      ++v14;
      v11 = -1;
      v19 = v22;
      v10 = -1;
    }

    else if (v18 == 8205)
    {
      if (v11 != -1)
      {
        goto LABEL_44;
      }

      v10 = -1;
      v19 = v22;
      v11 = v22;
    }

    else
    {
      result = u_hasBinaryProperty(v18, UCHAR_EXTENDED_PICTOGRAPHIC);
      if (!result)
      {
        goto LABEL_49;
      }

      v19 = v22;
      v10 = v22;
    }

    v8 += v23;
    v17 = v19 + v23;
    v22 = v19 + v23;
    v23 = 0;
  }

  while (v10 == -1 && v17 < a2);
  result = 0;
  if (v10 != -1 && v14 <= 63)
  {
    v15 = a4;
    if (a4)
    {
      goto LABEL_27;
    }

    goto LABEL_48;
  }

LABEL_49:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

CFUUIDRef CFUUIDCreateFromString(CFAllocatorRef alloc, CFStringRef uuidStr)
{
  v128 = *MEMORY[0x1E69E9840];
  if (!uuidStr)
  {
    goto LABEL_13;
  }

  Length = CFStringGetLength(uuidStr);
  if (Length >= 101)
  {
    v5 = 100;
    v129.location = 0;
    v129.length = 100;
    CFStringGetCharacters(uuidStr, v129, v127);
    goto LABEL_6;
  }

  v5 = Length;
  if (!Length)
  {
LABEL_13:
    result = 0;
    goto LABEL_217;
  }

  v130.location = 0;
  v130.length = Length;
  CFStringGetCharacters(uuidStr, v130, v127);
  if (v5 >= 1)
  {
LABEL_6:
    v6 = 0;
    while (1)
    {
      v7 = v127[v6];
      v8 = v7 - 58;
      v9 = (v7 & 0xFFFFFFDF) - 71;
      if (v8 > 0xFFFFFFF5 || v9 > 0xFFFFFFF9)
      {
        goto LABEL_15;
      }

      if (v5 == ++v6)
      {
        v6 = v5;
        goto LABEL_15;
      }
    }
  }

  v6 = 0;
LABEL_15:
  v12 = v6 + 1;
  if (v6 + 1 >= v5)
  {
    v14 = 0;
    goto LABEL_28;
  }

  v13 = 0;
  LOBYTE(v14) = 0;
  v15 = 1;
  while (1)
  {
    v16 = v15;
    v17 = v127[v6 + v13];
    if ((v17 - 48) >= 0xA)
    {
      break;
    }

    v18 = -48;
LABEL_23:
    v15 = 0;
    LOBYTE(v14) = (v18 + v17) | (16 * v14);
    v13 = 1;
    if ((v16 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if ((v17 - 97) < 6)
  {
    v18 = -87;
    goto LABEL_23;
  }

  if ((v17 - 65) <= 5)
  {
    v18 = -55;
    goto LABEL_23;
  }

  LOBYTE(v14) = 0;
LABEL_27:
  v12 = v6 + 3;
  v6 += 2;
  v14 = v14;
LABEL_28:
  if (v12 >= v5)
  {
    v25 = 0;
    goto LABEL_41;
  }

  v19 = 0;
  v20 = 0;
  v21 = 1;
  while (2)
  {
    v22 = v21;
    v23 = v127[v6 + v19];
    if ((v23 - 48) < 0xA)
    {
      v24 = -48;
      goto LABEL_36;
    }

    if ((v23 - 97) < 6)
    {
      v24 = -87;
      goto LABEL_36;
    }

    if ((v23 - 65) <= 5)
    {
      v24 = -55;
LABEL_36:
      v21 = 0;
      v20 = (v24 + v23) | (16 * v20);
      v19 = 1;
      if ((v22 & 1) == 0)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  v20 = 0;
LABEL_40:
  v12 = v6 + 3;
  v6 += 2;
  v25 = v20 << 8;
LABEL_41:
  if (v12 >= v5)
  {
    v32 = 0;
    goto LABEL_54;
  }

  v26 = 0;
  v27 = 0;
  v28 = 1;
  while (2)
  {
    v29 = v28;
    v30 = v127[v6 + v26];
    if ((v30 - 48) < 0xA)
    {
      v31 = -48;
      goto LABEL_49;
    }

    if ((v30 - 97) < 6)
    {
      v31 = -87;
      goto LABEL_49;
    }

    if ((v30 - 65) <= 5)
    {
      v31 = -55;
LABEL_49:
      v28 = 0;
      v27 = (v31 + v30) | (16 * v27);
      v26 = 1;
      if ((v29 & 1) == 0)
      {
        goto LABEL_53;
      }

      continue;
    }

    break;
  }

  v27 = 0;
LABEL_53:
  v12 = v6 + 3;
  v6 += 2;
  v32 = v27 << 16;
LABEL_54:
  if (v12 >= v5)
  {
    v39 = 0;
    goto LABEL_67;
  }

  v33 = 0;
  v34 = 0;
  v35 = 1;
  while (2)
  {
    v36 = v35;
    v37 = v127[v6 + v33];
    if ((v37 - 48) < 0xA)
    {
      v38 = -48;
      goto LABEL_62;
    }

    if ((v37 - 97) < 6)
    {
      v38 = -87;
      goto LABEL_62;
    }

    if ((v37 - 65) <= 5)
    {
      v38 = -55;
LABEL_62:
      v35 = 0;
      v34 = (v38 + v37) | (16 * v34);
      v33 = 1;
      if ((v36 & 1) == 0)
      {
        goto LABEL_66;
      }

      continue;
    }

    break;
  }

  v34 = 0;
LABEL_66:
  v12 = v6 + 3;
  v6 += 2;
  v39 = v34 << 24;
LABEL_67:
  if (v6 + 2 >= v5)
  {
    v47 = 0;
    goto LABEL_80;
  }

  v40 = 0;
  v41 = 0;
  v42 = &v127[v12];
  v43 = 1;
  while (2)
  {
    v44 = v43;
    v45 = v42[v40];
    if ((v45 - 48) < 0xA)
    {
      v46 = -48;
      goto LABEL_75;
    }

    if ((v45 - 97) < 6)
    {
      v46 = -87;
      goto LABEL_75;
    }

    if ((v45 - 65) <= 5)
    {
      v46 = -55;
LABEL_75:
      v43 = 0;
      v41 = (v46 + v45) | (16 * v41);
      v40 = 1;
      if ((v44 & 1) == 0)
      {
        goto LABEL_79;
      }

      continue;
    }

    break;
  }

  v41 = 0;
LABEL_79:
  v12 = v6 + 3;
  v47 = v41 << 32;
LABEL_80:
  v48 = v12 + 1;
  if (v12 + 1 >= v5)
  {
    v55 = 0;
    goto LABEL_93;
  }

  v49 = 0;
  v50 = 0;
  v51 = 1;
  while (2)
  {
    v52 = v51;
    v53 = v127[v12 + v49];
    if ((v53 - 48) < 0xA)
    {
      v54 = -48;
      goto LABEL_88;
    }

    if ((v53 - 97) < 6)
    {
      v54 = -87;
      goto LABEL_88;
    }

    if ((v53 - 65) <= 5)
    {
      v54 = -55;
LABEL_88:
      v51 = 0;
      v50 = (v54 + v53) | (16 * v50);
      v49 = 1;
      if ((v52 & 1) == 0)
      {
        goto LABEL_92;
      }

      continue;
    }

    break;
  }

  v50 = 0;
LABEL_92:
  v48 = v12 + 3;
  v12 += 2;
  v55 = v50 << 40;
LABEL_93:
  if (v12 + 2 >= v5)
  {
    v63 = 0;
    goto LABEL_106;
  }

  v56 = 0;
  v57 = 0;
  v58 = &v127[v48];
  v59 = 1;
  while (2)
  {
    v60 = v59;
    v61 = v58[v56];
    if ((v61 - 48) < 0xA)
    {
      v62 = -48;
      goto LABEL_101;
    }

    if ((v61 - 97) < 6)
    {
      v62 = -87;
      goto LABEL_101;
    }

    if ((v61 - 65) <= 5)
    {
      v62 = -55;
LABEL_101:
      v59 = 0;
      v57 = (v62 + v61) | (16 * v57);
      v56 = 1;
      if ((v60 & 1) == 0)
      {
        goto LABEL_105;
      }

      continue;
    }

    break;
  }

  v57 = 0;
LABEL_105:
  v48 = v12 + 3;
  v63 = v57 << 48;
LABEL_106:
  v64 = v48 + 1;
  if (v48 + 1 >= v5)
  {
    v71 = 0;
    goto LABEL_119;
  }

  v65 = 0;
  LODWORD(v66) = 0;
  v67 = 1;
  while (2)
  {
    v68 = v67;
    v69 = v127[v48 + v65];
    if ((v69 - 48) < 0xA)
    {
      v70 = 208;
      goto LABEL_114;
    }

    if ((v69 - 97) < 6)
    {
      v70 = 169;
      goto LABEL_114;
    }

    if ((v69 - 65) <= 5)
    {
      v70 = 201;
LABEL_114:
      v67 = 0;
      v66 = (v70 + v69) | (16 * v66);
      v65 = 1;
      if ((v68 & 1) == 0)
      {
        goto LABEL_118;
      }

      continue;
    }

    break;
  }

  v66 = 0;
LABEL_118:
  v64 = v48 + 3;
  v48 += 2;
  v71 = v66 << 56;
LABEL_119:
  if (v48 + 2 >= v5)
  {
    v79 = 0;
    goto LABEL_132;
  }

  v72 = 0;
  v73 = 0;
  v74 = &v127[v64];
  v75 = 1;
  while (2)
  {
    v76 = v75;
    v77 = v74[v72];
    if ((v77 - 48) < 0xA)
    {
      v78 = -48;
      goto LABEL_127;
    }

    if ((v77 - 97) < 6)
    {
      v78 = -87;
      goto LABEL_127;
    }

    if ((v77 - 65) <= 5)
    {
      v78 = -55;
LABEL_127:
      v75 = 0;
      v73 = (v78 + v77) | (16 * v73);
      v72 = 1;
      if ((v76 & 1) == 0)
      {
        goto LABEL_131;
      }

      continue;
    }

    break;
  }

  v73 = 0;
LABEL_131:
  v79 = v73;
  v64 = v48 + 3;
LABEL_132:
  v80 = v64 + 1;
  if (v64 + 1 >= v5)
  {
    goto LABEL_144;
  }

  v81 = 0;
  v82 = 0;
  v83 = 1;
  while (2)
  {
    v84 = v83;
    v85 = v127[v64 + v81];
    if ((v85 - 48) < 0xA)
    {
      v86 = -48;
      goto LABEL_140;
    }

    if ((v85 - 97) < 6)
    {
      v86 = -87;
      goto LABEL_140;
    }

    if ((v85 - 65) <= 5)
    {
      v86 = -55;
LABEL_140:
      v83 = 0;
      v82 = (v86 + v85) | (16 * v82);
      v81 = 1;
      if ((v84 & 1) == 0)
      {
        goto LABEL_143;
      }

      continue;
    }

    break;
  }

  v82 = 0;
LABEL_143:
  v79 = v79 & 0xFFFFFFFFFFFF00FFLL | (v82 << 8);
  v80 = v64 + 3;
  v64 += 2;
LABEL_144:
  if (v64 + 2 >= v5)
  {
    goto LABEL_156;
  }

  v87 = 0;
  v88 = 0;
  v89 = &v127[v80];
  v90 = 1;
  while (2)
  {
    v91 = v90;
    v92 = v89[v87];
    if ((v92 - 48) < 0xA)
    {
      v93 = -48;
      goto LABEL_152;
    }

    if ((v92 - 97) < 6)
    {
      v93 = -87;
      goto LABEL_152;
    }

    if ((v92 - 65) <= 5)
    {
      v93 = -55;
LABEL_152:
      v90 = 0;
      v88 = (v93 + v92) | (16 * v88);
      v87 = 1;
      if ((v91 & 1) == 0)
      {
        goto LABEL_155;
      }

      continue;
    }

    break;
  }

  v88 = 0;
LABEL_155:
  v79 = v79 & 0xFFFFFFFFFF00FFFFLL | (v88 << 16);
  v80 = v64 + 3;
LABEL_156:
  v94 = v80 + 1;
  if (v80 + 1 >= v5)
  {
    goto LABEL_168;
  }

  v95 = 0;
  v96 = 0;
  v97 = 1;
  while (2)
  {
    v98 = v97;
    v99 = v127[v80 + v95];
    if ((v99 - 48) < 0xA)
    {
      v100 = -48;
      goto LABEL_164;
    }

    if ((v99 - 97) < 6)
    {
      v100 = -87;
      goto LABEL_164;
    }

    if ((v99 - 65) <= 5)
    {
      v100 = -55;
LABEL_164:
      v97 = 0;
      v96 = (v100 + v99) | (16 * v96);
      v95 = 1;
      if ((v98 & 1) == 0)
      {
        goto LABEL_167;
      }

      continue;
    }

    break;
  }

  v96 = 0;
LABEL_167:
  v79 = v79 & 0xFFFFFFFF00FFFFFFLL | (v96 << 24);
  v94 = v80 + 3;
  v80 += 2;
LABEL_168:
  if (v94 >= v5)
  {
    goto LABEL_180;
  }

  v101 = 0;
  v102 = 0;
  v103 = 1;
  while (2)
  {
    v104 = v103;
    v105 = v127[v80 + v101];
    if ((v105 - 48) < 0xA)
    {
      v106 = -48;
      goto LABEL_176;
    }

    if ((v105 - 97) < 6)
    {
      v106 = -87;
      goto LABEL_176;
    }

    if ((v105 - 65) <= 5)
    {
      v106 = -55;
LABEL_176:
      v103 = 0;
      v102 = (v106 + v105) | (16 * v102);
      v101 = 1;
      if ((v104 & 1) == 0)
      {
        goto LABEL_179;
      }

      continue;
    }

    break;
  }

  v102 = 0;
LABEL_179:
  v79 |= v102 << 32;
  v94 = v80 + 3;
  v80 += 2;
LABEL_180:
  if (v94 >= v5)
  {
    goto LABEL_192;
  }

  v107 = 0;
  v108 = 0;
  v109 = 1;
  while (2)
  {
    v110 = v109;
    v111 = v127[v80 + v107];
    if ((v111 - 48) < 0xA)
    {
      v112 = -48;
      goto LABEL_188;
    }

    if ((v111 - 97) < 6)
    {
      v112 = -87;
      goto LABEL_188;
    }

    if ((v111 - 65) <= 5)
    {
      v112 = -55;
LABEL_188:
      v109 = 0;
      v108 = (v112 + v111) | (16 * v108);
      v107 = 1;
      if ((v110 & 1) == 0)
      {
        goto LABEL_191;
      }

      continue;
    }

    break;
  }

  v108 = 0;
LABEL_191:
  v79 |= v108 << 40;
  v94 = v80 + 3;
  v80 += 2;
LABEL_192:
  if (v94 >= v5)
  {
    goto LABEL_204;
  }

  v113 = 0;
  v114 = 0;
  v115 = 1;
  while (2)
  {
    v116 = v115;
    v117 = v127[v80 + v113];
    if ((v117 - 48) < 0xA)
    {
      v118 = -48;
      goto LABEL_200;
    }

    if ((v117 - 97) < 6)
    {
      v118 = -87;
      goto LABEL_200;
    }

    if ((v117 - 65) <= 5)
    {
      v118 = -55;
LABEL_200:
      v115 = 0;
      v114 = (v118 + v117) | (16 * v114);
      v113 = 1;
      if ((v116 & 1) == 0)
      {
        goto LABEL_203;
      }

      continue;
    }

    break;
  }

  v114 = 0;
LABEL_203:
  v79 |= v114 << 48;
  v94 = v80 + 3;
  v80 += 2;
LABEL_204:
  if (v94 >= v5)
  {
    goto LABEL_216;
  }

  v119 = 0;
  LODWORD(v120) = 0;
  v121 = &v127[v80];
  v122 = 1;
  while (2)
  {
    v123 = v122;
    v124 = v121[v119];
    if ((v124 - 48) < 0xA)
    {
      v125 = 208;
      goto LABEL_212;
    }

    if ((v124 - 97) < 6)
    {
      v125 = 169;
      goto LABEL_212;
    }

    if ((v124 - 65) <= 5)
    {
      v125 = 201;
LABEL_212:
      v122 = 0;
      v120 = (v125 + v124) | (16 * v120);
      v119 = 1;
      if ((v123 & 1) == 0)
      {
        goto LABEL_215;
      }

      continue;
    }

    break;
  }

  v120 = 0;
LABEL_215:
  v79 |= v120 << 56;
LABEL_216:
  result = __CFUUIDCreateWithBytesPrimitive(alloc, v25 | v14 | v32 | v39 | v47 | v55 | v63 | v71, v79, 0);
LABEL_217:
  v126 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef createFileReferencePath(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_13;
  }

  if (!a5)
  {
    v13 = "/";
    if (!a6)
    {
      v13 = "";
    }

    if (snprintf(v16, 0x400uLL, "/.file/id=%lld.%lld%s", a2, a4, v13) <= 0x3FF)
    {
      result = CFStringCreateWithCString(a1, v16, 0x8000100u);
      goto LABEL_14;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](a1, a2);
  if (!CFStringGetCString(v10, v15, 1024, 0x8000100u))
  {
    goto LABEL_8;
  }

  v11 = "/";
  if (!a6)
  {
    v11 = "";
  }

  if (snprintf(v16, 0x400uLL, "/.file/id=%lld.%lld/%s%s", a2, a3, v15, v11) <= 0x3FF)
  {
    result = CFStringCreateWithCString(a1, v16, 0x8000100u);
  }

  else
  {
LABEL_8:
    result = 0;
  }

LABEL_14:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFURLGetQueryResolveFlags(const __CFURL *a1)
{
  String = CFURLCopyQueryString(a1, 0);
  v2 = [(__CFString *)String _queryResolveFlags];
  if (String)
  {
    CFRelease(String);
  }

  return v2;
}

uint64_t _CFURLCacheSetAutoFlushingEnabled(uint64_t a1, uint64_t a2)
{
  v4 = __CFURLResourceInfoPtr(a1);

  return MEMORY[0x1EEE00708](a1, v4, a2);
}

uint64_t _CFURLCopyResourcePropertyValuesAndFlags(const __CFURL *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  if (!_CFURLHasFileURLScheme(a1, &v18))
  {
    if (!v18)
    {
      CFLog(4, @"_CFURLCopyResourcePropertyValuesAndFlags failed because it was passed a URL which has no scheme", v9, v10, v11, v12, v13, v14, v17);
    }

    goto LABEL_6;
  }

  __CFURLResourceInfoPtr(a1);
  result = _FSURLCopyResourcePropertyValuesAndFlags();
  if (!result)
  {
LABEL_6:
    *a3 = 0;
    *a6 = 0;
    result = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFPreferencesAppSynchronizeWithContainer(__CFString *a1, const __CFString *a2)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v4 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesAppSynchronizeWithContainer_cold_1();
    }

    v4 = [qword_1ED40BE18 copyPrefs];
  }

  v5 = [(_CFXPreferences *)v4 appSynchronizeWithIdentifier:a1 container:a2];

  return v5;
}

CFStringRef FileReferenceURLPathToFullURLPath(const __CFString *a1, const __CFAllocator *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (CFStringGetCString(a1, buffer, 2048, 0x8000100u) && (*buffer == 0x692F656C69662E2FLL ? (v3 = v20 == 15716) : (v3 = 0), v3 && (__endptr = 0, strtoll(v21, &__endptr, 10), *__endptr == 46) && ((strtoll(__endptr + 1, &__endptr, 10), *__endptr == 47) ? (v4 = __endptr + 1) : (v4 = __endptr), (v5 = _FSCreatePathForFileID()) != 0)))
  {
    v6 = v5;
    Length = CFStringGetLength(v5);
    if (Length <= 1)
    {
      Length = 1;
    }

    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v9 = MaximumSizeForEncoding;
    if (MaximumSizeForEncoding >= 1024)
    {
      v10 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    }

    else
    {
      v10 = v22;
    }

    if (CFStringGetCString(v6, v10, v9 + 1, 0x8000100u))
    {
      v14 = strlen(v10);
      StringFromFileSystemRepresentationByAddingPercentEscapes = CreateStringFromFileSystemRepresentationByAddingPercentEscapes(0, v10, v14, 0, 0, 0, 0);
    }

    else
    {
      StringFromFileSystemRepresentationByAddingPercentEscapes = 0;
    }

    if (v10 != v22)
    {
      free(v10);
    }

    CFRelease(v6);
    if (*v4)
    {
      v15 = CFStringCreateWithCString(a2, v4, 0x8000100u);
      if (v15)
      {
        v16 = v15;
        v17 = CFStringCreateWithFormat(a2, 0, @"%@/%@", StringFromFileSystemRepresentationByAddingPercentEscapes, v15);
        CFRelease(v16);
      }

      else
      {
        v17 = 0;
      }

      CFRelease(StringFromFileSystemRepresentationByAddingPercentEscapes);
      StringFromFileSystemRepresentationByAddingPercentEscapes = v17;
    }
  }

  else
  {
    StringFromFileSystemRepresentationByAddingPercentEscapes = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return StringFromFileSystemRepresentationByAddingPercentEscapes;
}

CFTypeRef _CFRunLoopGet2(uint64_t a1)
{
  os_unfair_lock_lock(&loopsLock);
  v2 = *(a1 + 2704);
  if (v2)
  {
    os_unfair_lock_unlock(&loopsLock);
  }

  else
  {
    v3 = objc_lookUpClass("NSRunLoop");
    if (v3 && (v4 = v3, (objc_opt_respondsToSelector() & 1) != 0))
    {
      v5 = [(objc_class *)v4 _new:a1];
      if (v5)
      {
        v2 = CFRetain(v5);
      }

      else
      {
        v2 = 0;
      }

      *(a1 + 2704) = v2;
    }

    else
    {
      v2 = *(a1 + 2704);
    }

    os_unfair_lock_unlock(&loopsLock);
    if (!v2)
    {
      _CFRunLoopGet2_cold_1();
    }
  }

  return v2;
}

void _CFPrefsSynchronizeForProcessTermination()
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v0 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPrefsSynchronizeForProcessTermination_cold_1();
    }

    v0 = [qword_1ED40BE18 copyPrefs];
  }

  v1 = v0;
  [(_CFXPreferences *)v0 synchronizeEverything];
}

void sub_183175CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _CFGetCachedUnsandboxedHomeDirectoryForCurrentUser()
{
  if (_CFGetCachedUnsandboxedHomeDirectoryForCurrentUser_onceToken != -1)
  {
    _CFGetCachedUnsandboxedHomeDirectoryForCurrentUser_cold_1();
  }

  return _CFGetCachedUnsandboxedHomeDirectoryForCurrentUser_unsandboxedHomePath;
}

void _CFErrorInitializeCallBackTable()
{
  v8 = *MEMORY[0x1E69E9840];
  v2.version = kCFTypeDictionaryValueCallBacks.version;
  v2.copyDescription = kCFTypeDictionaryValueCallBacks.copyDescription;
  v2.equal = CFEqual;
  v2.retain = blockCopyValueCallBack;
  v2.release = blockReleaseValueCallBack;
  v0 = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, &v2);
  os_unfair_lock_lock_with_options();
  if (_CFErrorCallBackTable)
  {
    os_unfair_lock_unlock(&_CFErrorLock);
    CFRelease(v0);
  }

  else
  {
    _CFErrorCallBackTable = v0;
    value = MEMORY[0x1E69E9820];
    v4 = 3221225472;
    v5 = ____CFErrorSetCallBackForDomainNoLock_block_invoke;
    v6 = &__block_descriptor_40_e89__v24__0____CFError____CFRuntimeBase_QAQ_q____CFString_____CFDictionary__8____CFString__16l;
    v7 = _CFErrorPOSIXCallBack;
    CFDictionarySetValue(v0, @"NSPOSIXErrorDomain", &value);
    value = MEMORY[0x1E69E9820];
    v4 = 3221225472;
    v5 = ____CFErrorSetCallBackForDomainNoLock_block_invoke;
    v6 = &__block_descriptor_40_e89__v24__0____CFError____CFRuntimeBase_QAQ_q____CFString_____CFDictionary__8____CFString__16l;
    v7 = _CFErrorMachCallBack;
    CFDictionarySetValue(_CFErrorCallBackTable, @"NSMachErrorDomain", &value);
    value = MEMORY[0x1E69E9820];
    v4 = 3221225472;
    v5 = ____CFErrorSetCallBackForDomainNoLock_block_invoke;
    v6 = &__block_descriptor_40_e89__v24__0____CFError____CFRuntimeBase_QAQ_q____CFString_____CFDictionary__8____CFString__16l;
    v7 = _CFErrorCocoaCallBack;
    CFDictionarySetValue(_CFErrorCallBackTable, @"NSCocoaErrorDomain", &value);
    os_unfair_lock_unlock(&_CFErrorLock);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void ___isValidSpecialCase_block_invoke()
{
  v0 = dlopen("/usr/lib/libMobileGestalt.dylib", 5);
  if (v0)
  {
    v1 = dlsym(v0, "MGCopyAnswer");
    if (v1)
    {
      v2 = v1(@"h63QSdBCiT/z0WU6rdQv6Q", 0);
      if (v2)
      {
        v3 = v2;
        _isValidSpecialCase_useSpecialCase = CFEqual(v2, @"CH") != 0;

        CFRelease(v3);
      }

      else
      {
        _isValidSpecialCase_useSpecialCase = 0;
      }
    }
  }
}

void CFCharacterSetAddCharactersInRange(CFMutableCharacterSetRef theSet, CFRange theRange)
{
  length = theRange.length;
  location = theRange.location;
  if (CF_IS_OBJC(0x19uLL, theSet))
  {

    [(__CFCharacterSet *)theSet addCharactersInRange:location, length];
    return;
  }

  v11 = atomic_load(theSet + 1);
  if ((v11 & 1) == 0)
  {
    CFLog(3, @"%s: Immutable character set passed to mutable function", v5, v6, v7, v8, v9, v10, "void CFCharacterSetAddCharactersInRange(CFMutableCharacterSetRef, CFRange)");
    if (dyld_program_sdk_at_least())
    {
      CFCharacterSetAddCharactersInRange_cold_1();
    }
  }

  if (location >> 16 > 0x10 || length >= 1114113 || (v12 = location + length, location + length >= 0x110001))
  {
    CFLog(3, @"%s: Range (location: %ld, length: %ld) outside of valid Unicode range (0x0 - 0x10FFFF)", v5, v6, v7, v8, v9, v10, "void CFCharacterSetAddCharactersInRange(CFMutableCharacterSetRef, CFRange)");
    qword_1EA849A30 = "CFCharacterSet range is outside of valid Unicode range (0x0 - 0x10FFFF)";
    __break(1u);
    return;
  }

  v13 = atomic_load(theSet + 1);
  if ((v13 & 0x70) == 0)
  {
    v14 = atomic_load(theSet + 1);
    if ((v14 & 1) == 0)
    {
      v15 = atomic_load(theSet + 1);
      if ((v15 & 8) == 0 && CFCharacterSetGetPredefined(*(theSet + 3)) == theSet)
      {
        return;
      }
    }
  }

  if (!length)
  {
    return;
  }

  v16 = atomic_load(theSet + 1);
  if ((v16 & 8) != 0)
  {
    v17 = *(theSet + 5);
    if (!v17 || !*(v17 + 8) && !*(v17 + 13))
    {
      v18 = atomic_load(theSet + 1);
      v19 = (v18 >> 4) & 7;
      if (v19 > 2)
      {
        if ((v19 == 3 || v19 == 4) && !*(theSet + 3))
        {
          return;
        }
      }

      else if ((v19 == 1 || v19 == 2) && !*(theSet + 4))
      {
        return;
      }
    }
  }

  v20 = atomic_load(theSet + 1);
  if ((v20 & 8) != 0)
  {
LABEL_87:
    __CFCSetMakeBitmap(theSet);
    __CFCSetAddNonBMPPlanesInRange(theSet);
    if (!(location >> 16))
    {
      v61 = *(theSet + 3);
      if (v12 >> 16)
      {
        v62 = -location;
      }

      else
      {
        LOWORD(v62) = length;
      }

      v63 = v62 + location - 1;
      if (v63 == location)
      {
        *(v61 + (location >> 3)) |= 1 << (location & 7);
      }

      else
      {
        v64 = location >> 3;
        v65 = v63 >> 3;
        v66 = 255 << (location & 7);
        if (v64 == v65)
        {
          *(v61 + v64) |= (0xFFu >> (~v63 & 7)) & v66;
        }

        else
        {
          *(v61 + v64) |= v66;
          *(v61 + (v63 >> 3)) |= 0xFFu >> (~v63 & 7);
          if (v64 + 1 < v65)
          {
            memset((v61 + (location >> 3) + 1), 255, v65 - v64 - 2 + 1);
          }
        }
      }
    }

    v67 = atomic_load(theSet + 1);
    v68 = v67;
    do
    {
      atomic_compare_exchange_strong(theSet + 1, &v68, v67 & 0xFFFFFFFFFFFFFFFBLL);
      v30 = v68 == v67;
      v67 = v68;
    }

    while (!v30);
    if (__CFCheckForExapendedSet == 1)
    {

      __CFCheckForExpandedSet(theSet, v54, v55, v56, v57, v58, v59, v60);
    }

    return;
  }

  v21 = *(theSet + 5);
  if (!v21 || !*(v21 + 8) && !*(v21 + 13))
  {
    v22 = atomic_load(theSet + 1);
    v23 = (v22 >> 4) & 7;
    if (v23 > 2)
    {
      if ((v23 == 3 || v23 == 4) && !*(theSet + 3))
      {
        goto LABEL_104;
      }
    }

    else if ((v23 == 1 || v23 == 2) && !*(theSet + 4))
    {
LABEL_104:
      v69 = atomic_load(theSet + 1);
      v70 = v69;
      do
      {
        atomic_compare_exchange_strong(theSet + 1, &v70, v69 & 0xFFFFFFFFFFFFFF8FLL | 0x10);
        v30 = v70 == v69;
        v69 = v70;
      }

      while (!v30);
      *(theSet + 6) = location;
      *(theSet + 4) = length;
      v71 = atomic_load(theSet + 1);
      v72 = v71;
      do
      {
        atomic_compare_exchange_strong(theSet + 1, &v72, v71 & 0xFFFFFFFFFFFFFFFBLL);
        v30 = v72 == v71;
        v71 = v72;
      }

      while (!v30);
      return;
    }
  }

  v24 = atomic_load(theSet + 1);
  if ((v24 & 0x70) != 0x10)
  {
    v31 = atomic_load(theSet + 1);
    if ((v31 & 0x70) == 0x20)
    {
      v32 = *(theSet + 4);
      v33 = v32 + length;
      if (v32 + length <= 63)
      {
        Typed = *(theSet + 3);
        if (!Typed)
        {
          v35 = CFGetAllocator(theSet);
          Typed = CFAllocatorAllocateTyped(v35, 128, 0x1000040BDFB0063, 0);
          *(theSet + 3) = Typed;
          v32 = *(theSet + 4);
          v33 = v32 + length;
        }

        *(theSet + 4) = v33;
        v36 = 0;
        v37 = vdupq_n_s64(length - 1);
        v38 = (Typed + 2 * v32 + 8);
        do
        {
          v39 = vdupq_n_s64(v36);
          v40 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v39, xmmword_183306C30)));
          if (vuzp1_s8(vuzp1_s16(v40, *v37.i8), *v37.i8).u8[0])
          {
            *(v38 - 4) = location;
          }

          if (vuzp1_s8(vuzp1_s16(v40, *&v37), *&v37).i8[1])
          {
            *(v38 - 3) = location + 1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v39, xmmword_183306C20)))), *&v37).i8[2])
          {
            *(v38 - 2) = location + 2;
            *(v38 - 1) = location + 3;
          }

          v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v39, xmmword_183306C10)));
          if (vuzp1_s8(*&v37, vuzp1_s16(v41, *&v37)).i32[1])
          {
            *v38 = location + 4;
          }

          if (vuzp1_s8(*&v37, vuzp1_s16(v41, *&v37)).i8[5])
          {
            v38[1] = location + 5;
          }

          if (vuzp1_s8(*&v37, vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v39, xmmword_183306C00))))).i8[6])
          {
            v38[2] = location + 6;
            v38[3] = location + 7;
          }

          v36 += 8;
          LOWORD(location) = location + 8;
          v38 += 8;
        }

        while (((length + 7) & 0xFFFFFFFFFFFFFFF8) != v36);
        qsort(*(theSet + 3), *(theSet + 4), 2uLL, chcompar);
        v42 = *(theSet + 4);
        if (v42 >= 2)
        {
          v43 = 0;
          v44 = *(theSet + 3);
          v45 = v42 - 1;
          v46 = (v44 + 2);
          do
          {
            v48 = *v46++;
            v47 = v48;
            if (*(v44 + 2 * v43) != v48)
            {
              ++v43;
              *(v44 + 2 * v43) = v47;
            }

            --v45;
          }

          while (v45);
          v42 = v43 + 1;
        }

        *(theSet + 4) = v42;
        v49 = atomic_load(theSet + 1);
        v50 = v49;
        do
        {
          atomic_compare_exchange_strong(theSet + 1, &v50, v49 & 0xFFFFFFFFFFFFFFFBLL);
          v30 = v50 == v49;
          v49 = v50;
        }

        while (!v30);
        return;
      }
    }

    goto LABEL_87;
  }

  v25 = *(theSet + 6);
  v26 = *(theSet + 4);
  if (location == v25)
  {
    if (v26 <= length)
    {
      v27 = length;
    }

    else
    {
      v27 = *(theSet + 4);
    }

    *(theSet + 4) = v27;
    v28 = atomic_load(theSet + 1);
    v29 = v28;
    do
    {
      atomic_compare_exchange_strong(theSet + 1, &v29, v28 & 0xFFFFFFFFFFFFFFFBLL);
      v30 = v29 == v28;
      v28 = v29;
    }

    while (!v30);
    return;
  }

  if (location <= v25 || location > (v26 + v25))
  {
    if (location < v25 && v12 >= v25)
    {
      *(theSet + 6) = location;
      v51 = v26 + v25;
      if (v51 <= v12)
      {
        v51 = location + length;
      }

      *(theSet + 4) = v51 - location;
      v52 = atomic_load(theSet + 1);
      v53 = v52;
      do
      {
        atomic_compare_exchange_strong(theSet + 1, &v53, v52 & 0xFFFFFFFFFFFFFFFBLL);
        v30 = v53 == v52;
        v52 = v53;
      }

      while (!v30);
      return;
    }

    goto LABEL_87;
  }

  if (v26 + v25 < v12)
  {
    *(theSet + 4) = v12 - v25;
  }

  v73 = atomic_load(theSet + 1);
  v74 = v73;
  do
  {
    atomic_compare_exchange_strong(theSet + 1, &v74, v73 & 0xFFFFFFFFFFFFFFFBLL);
    v30 = v74 == v73;
    v73 = v74;
  }

  while (!v30);
}

void CFCharacterSetUnion(CFMutableCharacterSetRef theSet, CFCharacterSetRef theOtherSet)
{
  v2 = MEMORY[0x1EEE9AC00](theSet, theOtherSet);
  v4 = v3;
  v5 = v2;
  v134 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x19uLL, v2))
  {
    v12 = *MEMORY[0x1E69E9840];

    [v5 formUnionWithCharacterSet:v4];
    return;
  }

  v13 = atomic_load((v5 + 8));
  if ((v13 & 1) == 0)
  {
    CFLog(3, @"%s: Immutable character set passed to mutable function", v6, v7, v8, v9, v10, v11, "void CFCharacterSetUnion(CFMutableCharacterSetRef, CFCharacterSetRef)");
    if (dyld_program_sdk_at_least())
    {
      CFCharacterSetUnion_cold_1();
    }
  }

  v14 = atomic_load((v5 + 8));
  if ((v14 & 0x70) == 0)
  {
    v15 = atomic_load((v5 + 8));
    if ((v15 & 1) == 0)
    {
      v16 = atomic_load((v5 + 8));
      if ((v16 & 8) == 0 && CFCharacterSetGetPredefined(*(v5 + 24)) == v5)
      {
        goto LABEL_183;
      }
    }
  }

  v17 = *(v5 + 40);
  if (!v17 || !*(v17 + 8) && !*(v17 + 13))
  {
    v18 = atomic_load((v5 + 8));
    v19 = (v18 >> 4) & 7;
    if (v19 > 2)
    {
      if ((v19 == 3 || v19 == 4) && !*(v5 + 24))
      {
LABEL_23:
        v20 = atomic_load((v5 + 8));
        if ((v20 & 8) == 0)
        {
          goto LABEL_24;
        }

LABEL_183:
        v132 = *MEMORY[0x1E69E9840];
        return;
      }
    }

    else if ((v19 == 1 || v19 == 2) && !*(v5 + 32))
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if (!CF_IS_OBJC(0x19uLL, v4))
  {
    v28 = 0;
LABEL_38:
    if (v28)
    {
      v4 = v28;
    }

    v39 = *(v4 + 40);
    if (!v39 || !*(v39 + 8) && !*(v39 + 13))
    {
      v40 = atomic_load((v4 + 8));
      v41 = (v40 >> 4) & 7;
      if (v41 > 2)
      {
        if ((v41 == 3 || v41 == 4) && !*(v4 + 24))
        {
LABEL_73:
          v59 = atomic_load((v4 + 8));
          if ((v59 & 8) != 0)
          {
            v60 = atomic_load((v5 + 8));
            if ((v60 & 0x70) == 0x20 && *(v5 + 24) || (v61 = atomic_load((v5 + 8)), (v61 & 0x70) == 0x30) && *(v5 + 24) || (v62 = atomic_load((v5 + 8)), (v62 & 0x70) == 0x40) && *(v5 + 24))
            {
              v63 = CFGetAllocator(v5);
              CFAllocatorDeallocate(v63, *(v5 + 24));
            }

            v64 = atomic_load((v5 + 8));
            v65 = v64;
            do
            {
              atomic_compare_exchange_strong((v5 + 8), &v65, v64 & 0xFFFFFFFFFFFFFF8FLL | 0x10);
              v37 = v65 == v64;
              v64 = v65;
            }

            while (!v37);
            *(v5 + 32) = 0;
            v66 = atomic_load((v5 + 8));
            v67 = v66;
            do
            {
              atomic_compare_exchange_strong((v5 + 8), &v67, v66 | 8);
              v37 = v67 == v66;
              v66 = v67;
            }

            while (!v37);
            v68 = atomic_load((v5 + 8));
            v69 = v68;
            do
            {
              atomic_compare_exchange_strong((v5 + 8), &v69, v68 & 0xFFFFFFFFFFFFFFFBLL);
              v37 = v69 == v68;
              v68 = v69;
            }

            while (!v37);
            if (*(v5 + 40))
            {
              for (i = 0; i != 16; ++i)
              {
                v71 = *(v5 + 40);
                if (((*(v71 + 8) >> i) & 2) != 0)
                {
                  CFRelease(*(*v71 + 8 * i));
                }
              }

              v72 = CFGetAllocator(v5);
              CFAllocatorDeallocate(v72, **(v5 + 40));
              v73 = CFGetAllocator(v5);
              CFAllocatorDeallocate(v73, *(v5 + 40));
              *(v5 + 40) = 0;
            }
          }

          goto LABEL_181;
        }
      }

      else if ((v41 == 1 || v41 == 2) && !*(v4 + 32))
      {
        goto LABEL_73;
      }
    }

    v42 = (v4 + 8);
    v43 = atomic_load((v4 + 8));
    if ((v43 & 0x70) == 0)
    {
      v51 = *(v5 + 40);
      if (!v51 || !*(v51 + 8) && !*(v51 + 13))
      {
        v52 = atomic_load((v5 + 8));
        v53 = (v52 >> 4) & 7;
        if (v53 > 2)
        {
          if ((v53 == 3 || v53 == 4) && !*(v5 + 24))
          {
            goto LABEL_147;
          }
        }

        else if ((v53 == 1 || v53 == 2) && !*(v5 + 32))
        {
LABEL_147:
          v107 = atomic_load((v5 + 8));
          v108 = v107;
          do
          {
            atomic_compare_exchange_strong((v5 + 8), &v108, v107 & 0xFFFFFFFFFFFFFF8FLL);
            v37 = v108 == v107;
            v107 = v108;
          }

          while (!v37);
          *(v5 + 24) = *(v4 + 24);
          v109 = atomic_load((v4 + 8));
          if ((v109 & 8) != 0)
          {
            v110 = atomic_load((v5 + 8));
            v111 = v110;
            do
            {
              atomic_compare_exchange_strong((v5 + 8), &v111, v110 | 8);
              v37 = v111 == v110;
              v110 = v111;
            }

            while (!v37);
          }

          v112 = *(v4 + 40);
          if (v112 && *(v112 + 13))
          {
            Typed = *(v5 + 40);
            if (!Typed)
            {
              v114 = CFGetAllocator(v5);
              Typed = CFAllocatorAllocateTyped(v114, 16, 0x1080040FC6463CFLL, 0);
              *(v5 + 40) = Typed;
              *Typed = 0;
              *(Typed + 6) = 0;
            }

            *(Typed + 13) = 1;
          }

          v115 = atomic_load((v5 + 8));
          v116 = v115;
          do
          {
            atomic_compare_exchange_strong((v5 + 8), &v116, v115 & 0xFFFFFFFFFFFFFFFBLL);
            v37 = v116 == v115;
            v115 = v116;
          }

          while (!v37);
          goto LABEL_181;
        }
      }
    }

    v44 = atomic_load(v42);
    v45 = atomic_load(v42);
    if ((v44 & 0x70) == 0x10)
    {
      v46 = *(v4 + 24);
      if ((v45 & 8) != 0)
      {
        v54 = *(v4 + 32);
        if (v46)
        {
          v136.location = 0;
          v136.length = *(v4 + 24);
          CFCharacterSetAddCharactersInRange(v5, v136);
        }

        v48.location = (v46 + v54);
        v48.length = (1114112 - LODWORD(v48.location));
        v47 = v5;
      }

      else
      {
        v48.length = *(v4 + 32);
        v47 = v5;
        v48.location = *(v4 + 24);
      }

      CFCharacterSetAddCharactersInRange(v47, v48);
    }

    else if ((v45 & 0x70) == 0x20)
    {
      v49 = CFGetAllocator(v5);
      v50 = CFStringCreateWithCharactersNoCopy(v49, *(v4 + 24), *(v4 + 32), &__kCFAllocatorNull);
      CFCharacterSetAddCharactersInString(v5, v50);
      CFRelease(v50);
    }

    else
    {
      __CFCSetMakeBitmap(v5);
      v55 = atomic_load((v4 + 8));
      v56 = *(v5 + 24);
      if ((v55 & 0x70) == 0x30)
      {
        v57 = 0;
        v58 = *(v4 + 24);
        do
        {
          *(v56 + v57) |= *(v58 + v57);
          v57 += 4;
        }

        while (v57 != 0x2000);
      }

      else
      {
        __CFCSetGetBitmap(v4, __b);
        for (j = 0; j != 2048; ++j)
        {
          *(v56 + j * 4) |= __b[0].u32[j];
        }
      }

      v75 = atomic_load((v5 + 8));
      v76 = v75;
      do
      {
        atomic_compare_exchange_strong((v5 + 8), &v76, v75 & 0xFFFFFFFFFFFFFFFBLL);
        v37 = v76 == v75;
        v75 = v76;
      }

      while (!v37);
    }

    v77 = *(v4 + 40);
    if (v77)
    {
      v78 = *(v77 + 13);
      if (*(v77 + 8))
      {
        v79 = 0;
        v80 = 8;
        while (1)
        {
          v81 = *(v4 + 40);
          if (v81)
          {
            v82 = 1 << (v79 + 1);
            if ((*(v81 + 8) & v82) != 0)
            {
              v83 = (v79 + 1);
              if (*(v81 + 12) >= v83)
              {
                v84 = *(*v81 + 8 * v79);
                if (v84)
                {
                  break;
                }
              }
            }
          }

LABEL_129:
          ++v79;
          v80 += 8;
          if (v79 == 16)
          {
            goto LABEL_181;
          }
        }

        v85 = *(v5 + 40);
        if (!v78)
        {
          if (v85)
          {
            if (*(v85 + 12) < v83)
            {
              *(v85 + 12) = v83;
              v89 = *v85;
              v90 = CFGetAllocator(v5);
              if (v89)
              {
                v91 = __CFSafelyReallocateWithAllocatorTyped(v90, **(v5 + 40), v80, 0x6004044C4A2DFLL, 0, 0);
                goto LABEL_125;
              }

LABEL_124:
              v91 = CFAllocatorAllocateTyped(v90, v80, 0x6004044C4A2DFLL, 0);
LABEL_125:
              v85 = *(v5 + 40);
              *v85 = v91;
            }

            if ((v85[1] & v82) == 0)
            {
              v97 = CFGetAllocator(v5);
              *(**(v5 + 40) + 8 * v79) = CFCharacterSetCreateMutable(v97);
              v85 = *(v5 + 40);
              *(v85 + 2) |= v82;
            }

            CFCharacterSetUnion(*(*v85 + 8 * v79), v84);
            goto LABEL_129;
          }

          v95 = CFGetAllocator(v5);
          v96 = CFAllocatorAllocateTyped(v95, 16, 0x1080040FC6463CFLL, 0);
          *(v5 + 40) = v96;
          *(v96 + 12) = v83;
          *(v96 + 8) = 0;
          v90 = CFGetAllocator(v5);
          goto LABEL_124;
        }

        if (v85)
        {
          if (*(v85 + 12) >= v83)
          {
LABEL_120:
            if ((v85[1] & v82) == 0)
            {
              v94 = CFGetAllocator(v5);
              *(**(v5 + 40) + 8 * v79) = CFCharacterSetCreateMutable(v94);
              v85 = *(v5 + 40);
              *(v85 + 2) |= v82;
            }

            CFCharacterSetIntersect(*(*v85 + 8 * v79), v84);
            goto LABEL_129;
          }

          *(v85 + 12) = v83;
          v86 = *v85;
          v87 = CFGetAllocator(v5);
          if (v86)
          {
            v88 = __CFSafelyReallocateWithAllocatorTyped(v87, **(v5 + 40), v80, 0x6004044C4A2DFLL, 0, 0);
LABEL_119:
            v85 = *(v5 + 40);
            *v85 = v88;
            goto LABEL_120;
          }
        }

        else
        {
          v92 = CFGetAllocator(v5);
          v93 = CFAllocatorAllocateTyped(v92, 16, 0x1080040FC6463CFLL, 0);
          *(v5 + 40) = v93;
          *(v93 + 12) = v83;
          *(v93 + 8) = 0;
          v87 = CFGetAllocator(v5);
        }

        v88 = CFAllocatorAllocateTyped(v87, v80, 0x6004044C4A2DFLL, 0);
        goto LABEL_119;
      }

      if (*(v77 + 13))
      {
        v98 = *(v5 + 40);
        if (v98)
        {
          if (!*(v98 + 8))
          {
LABEL_140:
            *(v98 + 13) = 1;
            goto LABEL_181;
          }

          for (k = 0; k != 16; ++k)
          {
            v100 = *(v5 + 40);
            if (((*(v100 + 8) >> k) & 2) != 0)
            {
              CFRelease(*(*v100 + 8 * k));
            }
          }

          v101 = CFGetAllocator(v5);
          CFAllocatorDeallocate(v101, **(v5 + 40));
          v102 = CFGetAllocator(v5);
          CFAllocatorDeallocate(v102, *(v5 + 40));
          *(v5 + 40) = 0;
        }

        v103 = CFGetAllocator(v5);
        v98 = CFAllocatorAllocateTyped(v103, 16, 0x1080040FC6463CFLL, 0);
        *(v5 + 40) = v98;
        *v98 = 0;
        *(v98 + 6) = 0;
        goto LABEL_140;
      }
    }

    v104 = atomic_load((v4 + 8));
    if ((v104 & 0x70) != 0)
    {
LABEL_181:
      if (__CFCheckForExapendedSet == 1)
      {
        __CFCheckForExpandedSet(v5, v21, v22, v23, v24, v25, v26, v27);
      }

      goto LABEL_183;
    }

    v105 = *(v4 + 40);
    if (v105)
    {
      v106 = *(v105 + 13) != 0;
    }

    else
    {
      v106 = 0;
    }

    v117 = 1;
    while (1)
    {
      BitmapForPlane = CFUniCharGetBitmapForPlane(*(v4 + 24), v117, __b, v106);
      if (BitmapForPlane != 255)
      {
        break;
      }

LABEL_180:
      if (++v117 == 17)
      {
        goto LABEL_181;
      }
    }

    v119 = BitmapForPlane;
    v120 = *(v5 + 40);
    if (v120)
    {
      if (v117 <= *(v120 + 12))
      {
LABEL_174:
        if ((v120[1] & (1 << v117)) == 0)
        {
          v127 = CFGetAllocator(v5);
          *(**(v5 + 40) + 8 * v117 - 8) = CFCharacterSetCreateMutable(v127);
          v120 = *(v5 + 40);
          *(v120 + 2) |= 1 << v117;
        }

        v128 = *v120 + 8 * v117;
        v129 = *(v128 - 8);
        if (v119 == 1)
        {
          v137.location = 0;
          v137.length = 0x10000;
          CFCharacterSetAddCharactersInRange(*(v128 - 8), v137);
        }

        else
        {
          __CFCSetMakeBitmap(*(v128 - 8));
          v130 = 0;
          v131 = *(v129 + 24);
          do
          {
            *(v131 + v130 * 4) |= __b[0].u32[v130];
            ++v130;
          }

          while (v130 != 2048);
        }

        goto LABEL_180;
      }

      *(v120 + 12) = v117;
      v121 = *v120;
      v122 = CFGetAllocator(v5);
      if (v121)
      {
        v123 = __CFSafelyReallocateWithAllocatorTyped(v122, **(v5 + 40), 8 * v117, 0x6004044C4A2DFLL, 0, 0);
LABEL_173:
        v120 = *(v5 + 40);
        *v120 = v123;
        goto LABEL_174;
      }

      v126 = 8 * v117;
    }

    else
    {
      v124 = CFGetAllocator(v5);
      v125 = CFAllocatorAllocateTyped(v124, 16, 0x1080040FC6463CFLL, 0);
      *(v5 + 40) = v125;
      *(v125 + 12) = v117;
      *(v125 + 13) = 0;
      *(v125 + 8) = 0;
      v122 = CFGetAllocator(v5);
      v126 = 8 * v117;
    }

    v123 = CFAllocatorAllocateTyped(v122, v126, 0x6004044C4A2DFLL, 0);
    goto LABEL_173;
  }

  v28 = [v4 _expandedCFCharacterSet];
  if (v28)
  {
    goto LABEL_38;
  }

  BitmapRepresentation = CFCharacterSetCreateBitmapRepresentation(&__kCFAllocatorSystemDefault, v4);
  if (!BitmapRepresentation)
  {
    goto LABEL_183;
  }

  v30 = BitmapRepresentation;
  if (CFDataGetLength(BitmapRepresentation))
  {
    BytePtr = CFDataGetBytePtr(v30);
    if (BytePtr)
    {
      v32 = BytePtr;
      __CFCSetMakeBitmap(v5);
      v33 = 0;
      v34 = *(v5 + 24);
      do
      {
        *(v34 + v33) |= *&v32[v33];
        v33 += 4;
      }

      while (v33 != 0x2000);
      v35 = atomic_load((v5 + 8));
      v36 = v35;
      do
      {
        atomic_compare_exchange_strong((v5 + 8), &v36, v35 & 0xFFFFFFFFFFFFFFFBLL);
        v37 = v36 == v35;
        v35 = v36;
      }

      while (!v37);
    }
  }

  v38 = *MEMORY[0x1E69E9840];

  CFRelease(v30);
}

void __CFCSetAddNonBMPPlanesInRange(CFTypeRef cf, unint64_t a2, int a3)
{
  v3 = a2 >> 16;
  if ((a2 + a3 - 1) >> 16 >= 16)
  {
    v4 = 16;
  }

  else
  {
    v4 = (a2 + a3 - 1) >> 16;
  }

  if (v3 <= 16)
  {
    v6 = *(cf + 5);
    if (v6)
    {
      v7 = *(v6 + 13) == 0;
    }

    else
    {
      v7 = 1;
    }

    v48 = v7;
    if (v3 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = a2 >> 16;
    }

    if (v8 <= v4)
    {
      v9 = a2;
      v47 = (a2 + a3);
      v10 = (a2 + a3);
      v11 = 8 * v8;
      while (1)
      {
        if (v47)
        {
          v12 = v4 == v8;
        }

        else
        {
          v12 = 0;
        }

        v13 = 0x10000;
        if (v12)
        {
          v13 = v10;
        }

        v14 = v13 - v9;
        if (v48)
        {
          if (!v8)
          {
            goto LABEL_76;
          }

          if (v8 <= 0x10u)
          {
            v15 = *(cf + 5);
            if (v15)
            {
              if (*(v15 + 12) < v8)
              {
                *(v15 + 12) = v8;
                v16 = *v15;
                v17 = CFGetAllocator(cf);
                if (v16)
                {
                  Typed = __CFSafelyReallocateWithAllocatorTyped(v17, **(cf + 5), v11 & 0xF8, 0x6004044C4A2DFLL, 0, 0);
                  goto LABEL_54;
                }

LABEL_53:
                Typed = CFAllocatorAllocateTyped(v17, v11 & 0xF8, 0x6004044C4A2DFLL, 0);
LABEL_54:
                v15 = *(cf + 5);
                *v15 = Typed;
              }

              if ((v15[1] & (1 << v8)) != 0)
              {
                v38 = v8 & 0x1F;
              }

              else
              {
                v39 = CFGetAllocator(cf);
                Mutable = CFCharacterSetCreateMutable(v39);
                v38 = v8 & 0x1F;
                *(**(cf + 5) + 8 * v38 - 8) = Mutable;
                v15 = *(cf + 5);
                *(v15 + 2) |= 1 << v8;
              }

              v41 = *(*v15 + 8 * v38 - 8);
              if (v41)
              {
                v51.location = v9;
                v51.length = v14;
                CFCharacterSetAddCharactersInRange(v41, v51);
              }

              goto LABEL_60;
            }

            v36 = CFGetAllocator(cf);
            v37 = CFAllocatorAllocateTyped(v36, 16, 0x1080040FC6463CFLL, 0);
            *(cf + 5) = v37;
            *(v37 + 12) = v8;
            *(v37 + 8) = 0;
            v17 = CFGetAllocator(cf);
            goto LABEL_53;
          }
        }

        else
        {
          if (!v8)
          {
LABEL_76:
            __break(1u);
            return;
          }

          if (v8 > 0x10u || (v19 = *(cf + 5)) == 0 || ((*(v19 + 8) >> v8) & 1) == 0 || *(v19 + 12) < v8 || (v20 = *v19 + 8 * (v8 & 0x1F), (v21 = *(v20 - 8)) == 0))
          {
            v25 = CFGetAllocator(cf);
            v26 = CFCharacterSetCreateMutable(v25);
            v50.location = v9;
            v50.length = v14;
            CFCharacterSetAddCharactersInRange(v26, v50);
            v27 = *(cf + 5);
            if (v27)
            {
              if (*(v27 + 12) < v8)
              {
                *(v27 + 12) = v8;
                v28 = *v27;
                v29 = CFGetAllocator(cf);
                if (v28)
                {
                  v30 = __CFSafelyReallocateWithAllocatorTyped(v29, **(cf + 5), v11 & 0x7F8, 0x6004044C4A2DFLL, 0, 0);
                  goto LABEL_45;
                }

LABEL_44:
                v30 = CFAllocatorAllocateTyped(v29, v11 & 0x7F8, 0x6004044C4A2DFLL, 0);
LABEL_45:
                v27 = *(cf + 5);
                *v27 = v30;
              }

              v33 = 1 << v8;
              if ((v27[1] & (1 << v8)) != 0)
              {
                CFRelease(*(*v27 + 8 * v8 - 8));
              }

              if (v26)
              {
                *(**(cf + 5) + 8 * v8 - 8) = CFRetain(v26);
                v34 = *(cf + 5);
                v35 = *(v34 + 8) | v33;
              }

              else
              {
                v34 = *(cf + 5);
                v35 = *(v34 + 8) & ~v33;
              }

              *(v34 + 8) = v35;
              CFRelease(v26);
              goto LABEL_60;
            }

            v31 = CFGetAllocator(cf);
            v32 = CFAllocatorAllocateTyped(v31, 16, 0x1080040FC6463CFLL, 0);
            *(cf + 5) = v32;
            *(v32 + 12) = v8;
            *(v32 + 8) = 0;
            v29 = CFGetAllocator(cf);
            goto LABEL_44;
          }

          v49.location = v9;
          v49.length = v14;
          CFCharacterSetRemoveCharactersInRange(*(v20 - 8), v49);
          v22 = v21[5];
          if (!v22 || !*(v22 + 8) && !*(v22 + 13))
          {
            v23 = atomic_load(v21 + 1);
            v24 = (v23 >> 4) & 7;
            if (v24 > 2)
            {
              if ((v24 == 3 || v24 == 4) && !v21[3])
              {
LABEL_65:
                v42 = atomic_load(v21 + 1);
                if ((v42 & 8) == 0)
                {
                  CFRelease(v21);
                  *(*(cf + 5) + 8) &= ~(1 << v8);
                }
              }
            }

            else if ((v24 == 1 || v24 == 2) && !v21[4])
            {
              goto LABEL_65;
            }
          }
        }

LABEL_60:
        ++v8;
        v11 += 8;
        if (v4 + 1 == v8)
        {
          v6 = *(cf + 5);
          break;
        }
      }
    }

    if (v6 && !*(v6 + 8) && !*(v6 + 13))
    {
      for (i = 0; i != 16; ++i)
      {
        v44 = *(cf + 5);
        if (((*(v44 + 8) >> i) & 2) != 0)
        {
          CFRelease(*(*v44 + 8 * i));
        }
      }

      v45 = CFGetAllocator(cf);
      CFAllocatorDeallocate(v45, **(cf + 5));
      v46 = CFGetAllocator(cf);
      CFAllocatorDeallocate(v46, *(cf + 5));
      *(cf + 5) = 0;
    }
  }
}

uint64_t CFUniCharGetBitmapForPlane(unsigned int a1, unsigned int a2, _BYTE *a3, int a4)
{
  BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane(a1, a2);
  if (BitmapPtrForPlane)
  {
    v9 = 8193;
    if (a4)
    {
      do
      {
        v10 = *BitmapPtrForPlane++;
        *a3++ = ~v10;
        --v9;
      }

      while (v9 > 1);
    }

    else
    {
      do
      {
        v11 = *BitmapPtrForPlane++;
        *a3++ = v11;
        --v9;
      }

      while (v9 > 1);
    }

LABEL_6:
    LOBYTE(v12) = 0;
    return v12;
  }

  if (a1 != 12)
  {
    if ((a1 < 4 || a1 == 15) && !a2)
    {
      memset(a3, a4 << 31 >> 31, 0x2000uLL);
      if (a1 != 15 && a1 != 3)
      {
        goto LABEL_33;
      }

      for (i = 0; i != 7; ++i)
      {
        v22 = word_1833782B0[i];
        v23 = 1 << (v22 & 7);
        v24 = v22 >> 3;
        v25 = a3[v24];
        v26 = v25 & ~v23;
        v27 = v25 | v23;
        if (a4)
        {
          v27 = v26;
        }

        a3[v24] = v27;
      }

      if (a1 != 15)
      {
LABEL_33:
        v28 = a3[1];
        if (a4)
        {
          a3[1] = v28 & 0xFD;
          a3[4] &= ~1u;
          a3[20] &= ~1u;
          a3[720] &= ~1u;
          a3[1029] &= ~0x80u;
          a3[1035] &= ~0x80u;
          v29 = a3[1536] & 0xFE;
        }

        else
        {
          a3[1] = v28 | 2;
          a3[4] |= 1u;
          a3[20] |= 1u;
          a3[720] |= 1u;
          a3[1029] |= 0x80u;
          a3[1035] |= 0x80u;
          v29 = a3[1536] | 1;
        }

        a3[1536] = v29;
        for (j = 0x2000; j != 8204; ++j)
        {
          v41 = 1 << (j & 7);
          v42 = a3[j >> 3];
          v43 = v42 & ~v41;
          v44 = v42 | v41;
          if (a4)
          {
            v44 = v43;
          }

          a3[j >> 3] = v44;
        }
      }

      goto LABEL_6;
    }

    v17 = a4 == 0;
    v18 = 1;
    goto LABEL_64;
  }

  if (a2 > 0xE)
  {
    if (a2 - 15 <= 1)
    {
      for (k = 2049; k > 1; --k)
      {
        *a3 = a4 << 31 >> 31;
        a3 += 4;
      }

      LOBYTE(v12) = 0;
      if (a4)
      {
        v20 = 63;
      }

      else
      {
        v20 = -64;
      }

      *(a3 - 5) = v20;
      return v12;
    }

    goto LABEL_63;
  }

  v13 = *(&__CFUniCharLegalCharacterSetBitmap + a2);
  if (v13)
  {
    v14 = 8193;
    if (a4)
    {
      do
      {
        LOBYTE(v12) = 0;
        v15 = *v13++;
        *a3++ = v15;
        --v14;
      }

      while (v14 > 1);
    }

    else
    {
      do
      {
        LOBYTE(v12) = 0;
        v16 = *v13++;
        *a3++ = ~v16;
        --v14;
      }

      while (v14 > 1);
    }

    return v12;
  }

  if (a2 != 14)
  {
LABEL_63:
    v17 = a4 == 0;
    v18 = -1;
LABEL_64:
    if (v17)
    {
      return -v18;
    }

    else
    {
      LOBYTE(v12) = v18;
    }

    return v12;
  }

  v30 = 0;
  *a3 = 2;
  v31 = a3 + 8;
  v32 = a4 - 1;
  v33 = vdupq_n_s64(0x1FFFuLL);
  do
  {
    v34 = vdupq_n_s64(v30);
    v35 = vorrq_s8(v34, xmmword_183306C30);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v33, v35)), 14), 14).u8[0])
    {
      v31[v30 - 7] = v32;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), v35)), 14), 14).i8[1])
    {
      v31[v30 - 6] = v32;
    }

    if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), vorrq_s8(v34, xmmword_183306C20)))), 14).i8[2])
    {
      v31[v30 - 5] = v32;
      v31[v30 - 4] = ((v30 != 0) ^ a4) << 31 >> 31;
    }

    v36 = vorrq_s8(v34, xmmword_183306C10);
    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), v36)), 14)).i32[1])
    {
      v31[v30 - 3] = (((v30 - 11) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
    }

    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), v36)), 14)).i8[5])
    {
      v31[v30 - 2] = (((v30 - 10) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
    }

    if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), vorrq_s8(v34, xmmword_183306C00))))).i8[6])
    {
      v31[v30 - 1] = (((v30 - 9) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
      v31[v30] = (((v30 - 8) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
    }

    v37 = vorrq_s8(v34, xmmword_1833782A0);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), v37)), 14), 14).u8[0])
    {
      v31[v30 + 1] = (((v30 - 7) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), v37)), 14), 14).i8[1])
    {
      v31[v30 + 2] = (((v30 - 6) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
    }

    if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), vorrq_s8(v34, xmmword_183378290)))), 14).i8[2])
    {
      v31[v30 + 3] = (((v30 - 5) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
      v31[v30 + 4] = (((v30 - 4) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
    }

    v38 = vorrq_s8(v34, xmmword_183378280);
    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), v38)), 14)).i32[1])
    {
      v31[v30 + 5] = (((v30 - 3) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
    }

    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), v38)), 14)).i8[5])
    {
      v31[v30 + 6] = (((v30 - 2) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
    }

    if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FFFuLL), vorrq_s8(v34, xmmword_183378270))))).i8[6])
    {
      v31[v30 + 7] = (((v30 - 1) < 0xFFFFFFF4) ^ a4) << 31 >> 31;
      v31[v30 + 8] = v32;
    }

    LOBYTE(v12) = 0;
    v30 += 16;
  }

  while (v30 != 0x2000);
  return v12;
}

uint64_t parseArrayTag(uint64_t a1, CFArrayRef *a2, unint64_t a3)
{
  cf[1] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  if (!*(a1 + 80))
  {
    Mutable = CFArrayCreateMutable(*(a1 + 32), 0, &kCFTypeArrayCallBacks);
    v8 = *(a1 + 72);
    v22 = 0;
    v23 = 0;
    __CFPropertyListCreateSplitKeypaths(*(a1 + 32), v8, &v22, &v23);
    v9 = v22;
    v21 = a2;
    if (!v22)
    {
      ContentObject = getContentObject(a1, 0, cf, a3);
      v13 = 0;
      v11 = v23;
      if (ContentObject)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }

    v10 = CFStringCreateWithFormat(*(a1 + 32), 0, @"%ld", 0);
    if (!CFSetContainsValue(v9, v10) && !CFSetContainsValue(v9, @"*"))
    {
      *(a1 + 80) = 1;
    }

    if (v10)
    {
      CFRelease(v10);
    }

    v11 = v23;
    *(a1 + 72) = v23;
    v12 = getContentObject(a1, 0, cf, a3);
    *(a1 + 72) = v8;
    *(a1 + 80) = 0;
    v13 = 1;
    if (!v12)
    {
LABEL_31:
      if (v11)
      {
        CFRelease(v11);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (!*(a1 + 24) && checkForCloseTag(a1, "array", 5uLL))
      {
        v17 = allowImmutableCollections;
        if (allowImmutableCollections == -1)
        {
          v17 = getenv("CFPropertyListAllowImmutableCollections") != 0;
          allowImmutableCollections = v17;
        }

        if (v17 == 1)
        {
          v18 = v21;
          if (*(a1 + 40))
          {
            Copy = Mutable;
          }

          else
          {
            Copy = CFArrayCreateCopy(*(a1 + 32), Mutable);
            if (Mutable)
            {
              CFRelease(Mutable);
            }
          }
        }

        else
        {
          Copy = Mutable;
          v18 = v21;
        }

        *v18 = Copy;
        goto LABEL_47;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
LABEL_17:
        if (cf[0])
        {
          CFArrayAppendValue(Mutable, cf[0]);
          if (cf[0])
          {
            CFRelease(cf[0]);
          }
        }

        if (v9)
        {
          break;
        }

        if (!getContentObject(a1, 0, cf, a3))
        {
          goto LABEL_31;
        }
      }

      v15 = CFStringCreateWithFormat(*(a1 + 32), 0, @"%ld", v13);
      if (!CFSetContainsValue(v9, v15) && !CFSetContainsValue(v9, @"*"))
      {
        break;
      }

      if (v15)
      {
        goto LABEL_24;
      }

LABEL_25:
      ++v13;
      *(a1 + 72) = v11;
      v16 = getContentObject(a1, 0, cf, a3);
      *(a1 + 72) = v8;
      *(a1 + 80) = 0;
      if (!v16)
      {
        goto LABEL_31;
      }
    }

    *(a1 + 80) = 1;
    if (!v15)
    {
      goto LABEL_25;
    }

LABEL_24:
    CFRelease(v15);
    goto LABEL_25;
  }

  while (getContentObject(a1, 0, cf, a3))
  {
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  if (*(a1 + 24))
  {
LABEL_38:
    result = 0;
    goto LABEL_48;
  }

  result = checkForCloseTag(a1, "array", 5uLL);
  if (result)
  {
    *a2 = 0;
LABEL_47:
    result = 1;
  }

LABEL_48:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void _CFPreferencesSetValueWithContainer()
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v0 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      dispatch_once(&qword_1ED40BE20, &__block_literal_global_263);
    }

    v0 = [qword_1ED40BE18 copyPrefs];
  }

  v1 = v0;
  [_CFXPreferences setValue:v0 forKey:? identifier:? user:? host:? container:?];
}

uint64_t lineNumber(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  if (*a1 >= v2)
  {
    return 1;
  }

  v3 = a1[1];
  result = 1;
  do
  {
    if (v1 >= v3)
    {
      break;
    }

    v5 = *v1;
    if (v5 == 10)
    {
      result = (result + 1);
    }

    else if (v5 == 13)
    {
      result = (result + 1);
      if ((v1 + 1) < v2 && (v1 + 1) < v3 && v1[1] == 10)
      {
        ++v1;
      }
    }

    ++v1;
  }

  while (v1 < v2);
  return result;
}

uint64_t containsKey(_DWORD *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a4)
  {
    *a1 = a3;
  }

  return a4;
}

Boolean CFPreferencesAppSynchronize(CFStringRef applicationID)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v2 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      CFPreferencesAppSynchronize_cold_1();
    }

    v2 = [qword_1ED40BE18 copyPrefs];
  }

  v3 = [(_CFXPreferences *)v2 appSynchronizeWithIdentifier:0 container:?];

  return v3;
}

uint64_t _CFPreferencesSynchronizeWithContainer(__CFString *a1, const __CFString *a2, const void *a3, __CFString *a4)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v8 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesSynchronizeWithContainer_cold_1();
    }

    v8 = [qword_1ED40BE18 copyPrefs];
  }

  v9 = [(_CFXPreferences *)v8 synchronizeIdentifier:a1 user:a2 host:a3 container:a4];

  return v9;
}

SInt32 CFStringGetIntValue(CFStringRef str)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v16 = str;
  v19 = 0;
  Length = CFStringGetLength(str);
  CharactersPtr = CFStringGetCharactersPtr(v16);
  CStringPtrInternal = 0;
  v17 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtrInternal = _CFStringGetCStringPtrInternal(str, 0x600u, 0, 1);
  }

  v7 = 0;
  *buffer = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v21 = 0;
  v22 = 0;
  v18 = CStringPtrInternal;
  if (__CFStringScanInteger(buffer, 0, &v6, 0, &v7))
  {
    result = v7;
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFStringScanInteger(UniChar *buffer, uint64_t a2, int *a3, int a4, uint64_t *a5)
{
  v9 = *a3;
  if ((*a3 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

LABEL_17:
  v13 = -1;
  while (v13 == 12288 || (v13 - 8204) > 0xFFF3u || v13 < 0x21u || (v13 - 161) >= 0xFFDEu)
  {
    v9 = *a3 + 1;
    *a3 = v9;
    if (v9 < 0)
    {
      goto LABEL_17;
    }

LABEL_4:
    v10 = v9;
    v11 = *(buffer + 20);
    if (v11 <= v10)
    {
      goto LABEL_17;
    }

    v12 = *(buffer + 17);
    if (v12)
    {
      v13 = *(v12 + 2 * *(buffer + 19) + 2 * v10);
    }

    else
    {
      v14 = *(buffer + 18);
      if (v14)
      {
        v13 = *(v14 + *(buffer + 19) + v10);
      }

      else
      {
        if (*(buffer + 22) <= v10 || (v15 = *(buffer + 21), v15 > v10))
        {
          v16 = v10 - 4;
          if (v10 < 4)
          {
            v16 = 0;
          }

          if (v16 + 64 < v11)
          {
            v11 = v16 + 64;
          }

          *(buffer + 21) = v16;
          *(buffer + 22) = v11;
          v66.length = v11 - v16;
          v66.location = *(buffer + 19) + v16;
          CFStringGetCharacters(*(buffer + 16), v66, buffer);
          v15 = *(buffer + 21);
        }

        v13 = buffer[v10 - v15];
      }
    }
  }

  if (v13 == 45 || v13 == 43)
  {
    do
    {
      v17 = *a3;
      v18 = v17 + 1;
      *a3 = v17 + 1;
      if (v17 < -1 || (v19 = *(buffer + 20), v19 <= v18))
      {
        v21 = -1;
      }

      else
      {
        v20 = *(buffer + 17);
        if (v20)
        {
          v21 = *(v20 + 2 * *(buffer + 19) + 2 * v18);
        }

        else
        {
          v22 = *(buffer + 18);
          if (v22)
          {
            v21 = *(v22 + *(buffer + 19) + v18);
          }

          else
          {
            if (*(buffer + 22) <= v18 || (v23 = *(buffer + 21), v23 > v18))
            {
              v24 = v18 - 4;
              if (v18 < 4)
              {
                v24 = 0;
              }

              if (v24 + 64 < v19)
              {
                v19 = v24 + 64;
              }

              *(buffer + 21) = v24;
              *(buffer + 22) = v19;
              v67.length = v19 - v24;
              v67.location = *(buffer + 19) + v24;
              CFStringGetCharacters(*(buffer + 16), v67, buffer);
              v23 = *(buffer + 21);
            }

            v21 = buffer[v18 - v23];
          }
        }
      }
    }

    while (v21 == 12288 || (v21 - 8204) > 0xFFF3u || v21 < 0x21u || (v21 - 161) > 0xFFDDu);
    v25 = v13 == 45;
    v13 = v21;
  }

  else
  {
    v25 = 0;
  }

  if ((v13 - 58) < 0xFFF6u)
  {
    return 0;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (v27)
    {
      if (v29 > 0xCCCCCCCCCCCCCCBLL && (v29 != 0xCCCCCCCCCCCCCCCLL || v13 - v25 - 48 >= 7))
      {
        if (v25)
        {
          v29 = 0x8000000000000000;
        }

        else
        {
          v29 = 0x7FFFFFFFFFFFFFFFLL;
        }

        while (1)
        {
          v30 = *a3;
          v31 = v30 + 1;
          *a3 = v30 + 1;
          if (v30 < -1)
          {
            break;
          }

          v32 = *(buffer + 20);
          if (v32 <= v31)
          {
            break;
          }

          v33 = *(buffer + 17);
          if (v33)
          {
            v13 = *(v33 + 2 * *(buffer + 19) + 2 * v31);
          }

          else
          {
            v34 = *(buffer + 18);
            if (v34)
            {
              v13 = *(v34 + *(buffer + 19) + v31);
            }

            else
            {
              if (*(buffer + 22) <= v31 || (v35 = *(buffer + 21), v35 > v31))
              {
                v36 = v31 - 4;
                if (v31 < 4)
                {
                  v36 = 0;
                }

                if (v36 + 64 < v32)
                {
                  v32 = v36 + 64;
                }

                *(buffer + 21) = v36;
                *(buffer + 22) = v32;
                v68.length = v32 - v36;
                v68.location = *(buffer + 19) + v36;
                CFStringGetCharacters(*(buffer + 16), v68, buffer);
                v35 = *(buffer + 21);
              }

              v13 = buffer[v31 - v35];
            }
          }

          if ((v13 - 58) < 0xFFF6u)
          {
            v37 = 0;
            v25 = 0;
            goto LABEL_122;
          }
        }

        v37 = 0;
        v63 = 1;
        goto LABEL_139;
      }

      v29 = 10 * v29 + v13 - 48;
      v38 = *a3;
      v39 = v38 + 1;
      *a3 = v38 + 1;
      if (v38 < -1 || (v40 = *(buffer + 20), v40 <= v39))
      {
        v37 = 0;
LABEL_138:
        v63 = !v25;
        goto LABEL_139;
      }

      v41 = *(buffer + 17);
      if (v41)
      {
        v37 = 0;
        v13 = *(v41 + 2 * *(buffer + 19) + 2 * v39);
      }

      else
      {
        v50 = *(buffer + 18);
        if (v50)
        {
          v37 = 0;
          v13 = *(v50 + *(buffer + 19) + v39);
        }

        else
        {
          if (*(buffer + 22) <= v39 || (v59 = *(buffer + 21), v59 > v39))
          {
            v60 = v39 - 4;
            if (v39 < 4)
            {
              v60 = 0;
            }

            if (v60 + 64 < v40)
            {
              v40 = v60 + 64;
            }

            *(buffer + 21) = v60;
            *(buffer + 22) = v40;
            v70.length = v40 - v60;
            v70.location = *(buffer + 19) + v60;
            CFStringGetCharacters(*(buffer + 16), v70, buffer);
            v59 = *(buffer + 21);
          }

          v37 = 0;
          v13 = buffer[v39 - v59];
        }
      }

      goto LABEL_122;
    }

    if (v28 > 214748363)
    {
      break;
    }

    v42 = v13 - 48;
    v43 = v13 - 48;
LABEL_84:
    if (v42 >= 0xAu)
    {
      v45 = -1;
    }

    else
    {
      v45 = v43;
    }

    v28 = v45 + 10 * v28;
    v46 = *a3;
    v47 = v46 + 1;
    *a3 = v46 + 1;
    if (v46 < -1 || (v48 = *(buffer + 20), v48 <= v47))
    {
      v37 = 1;
      goto LABEL_138;
    }

    v49 = *(buffer + 17);
    if (v49)
    {
      v27 = 0;
      v13 = *(v49 + 2 * *(buffer + 19) + 2 * v47);
    }

    else
    {
      v51 = *(buffer + 18);
      if (v51)
      {
        v27 = 0;
        v13 = *(v51 + *(buffer + 19) + v47);
      }

      else
      {
        if (*(buffer + 22) <= v47 || (v61 = *(buffer + 21), v61 > v47))
        {
          v62 = v47 - 4;
          if (v47 < 4)
          {
            v62 = 0;
          }

          if (v62 + 64 < v48)
          {
            v48 = v62 + 64;
          }

          *(buffer + 21) = v62;
          *(buffer + 22) = v48;
          v71.length = v48 - v62;
          v71.location = *(buffer + 19) + v62;
          CFStringGetCharacters(*(buffer + 16), v71, buffer);
          v61 = *(buffer + 21);
        }

        v27 = 0;
        v13 = buffer[v47 - v61];
      }
    }

    v37 = 1;
LABEL_132:
    if ((v13 - 58) <= 0xFFF5u)
    {
      goto LABEL_138;
    }
  }

  if (v28 == 214748364)
  {
    v42 = v13 - 48;
    v43 = v13 - 48;
    v44 = (v13 - 48) >= 0xAu ? -1 : v13 - 48;
    if (v44 - v25 < 7)
    {
      goto LABEL_84;
    }
  }

  if (a4)
  {
    v37 = 0;
    v29 = v28;
LABEL_122:
    v27 = 1;
    goto LABEL_132;
  }

  if (v25)
  {
    v28 = 0x80000000;
  }

  else
  {
    v28 = 0x7FFFFFFF;
  }

  while (1)
  {
    v52 = *a3;
    v53 = v52 + 1;
    *a3 = v52 + 1;
    if (v52 < -1)
    {
      break;
    }

    v54 = *(buffer + 20);
    if (v54 <= v53)
    {
      break;
    }

    v55 = *(buffer + 17);
    if (v55)
    {
      v13 = *(v55 + 2 * *(buffer + 19) + 2 * v53);
    }

    else
    {
      v56 = *(buffer + 18);
      if (v56)
      {
        v13 = *(v56 + *(buffer + 19) + v53);
      }

      else
      {
        if (*(buffer + 22) <= v53 || (v57 = *(buffer + 21), v57 > v53))
        {
          v58 = v53 - 4;
          if (v53 < 4)
          {
            v58 = 0;
          }

          if (v58 + 64 < v54)
          {
            v54 = v58 + 64;
          }

          *(buffer + 21) = v58;
          *(buffer + 22) = v54;
          v69.length = v54 - v58;
          v69.location = *(buffer + 19) + v58;
          CFStringGetCharacters(*(buffer + 16), v69, buffer);
          v57 = *(buffer + 21);
        }

        v13 = buffer[v53 - v57];
      }
    }

    v37 = 1;
    if ((v13 - 58) < 0xFFF6u)
    {
      v27 = 0;
      v25 = 0;
      goto LABEL_132;
    }
  }

  v63 = 1;
  v37 = 1;
LABEL_139:
  if (a5)
  {
    if (a4)
    {
      if (v37)
      {
        v64 = v28;
      }

      else
      {
        v64 = v29;
      }

      if (!v63)
      {
        v64 = -v64;
      }

      *a5 = v64;
    }

    else
    {
      if (v63)
      {
        v65 = v28;
      }

      else
      {
        v65 = -v28;
      }

      *a5 = v65;
    }
  }

  return 1;
}

void CFStringCapitalize(CFMutableStringRef theString, CFLocaleRef locale)
{
  v67 = *MEMORY[0x1E69E9840];
  p_info = &theString->info;
  v5 = atomic_load(&theString->info);
  if (!CF_IS_OBJC(7uLL, theString))
  {
    v7 = atomic_load(p_info);
    if ((v7 & 1) == 0)
    {
      v8 = _CFOSLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        CFStringCapitalize_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }

      goto LABEL_101;
    }

    v16 = atomic_load(&theString->info);
    v17 = v16 & 5;
    v18 = atomic_load(&theString->info);
    v19 = v18 & 0x60;
    if (v17 == 4)
    {
      p_data = &theString->data;
      if (v19)
      {
        v21 = *p_data;
      }

      else
      {
        v23 = atomic_load(&theString->info);
        v21 = &p_data[(v23 & 5) != 4];
      }

      length = *v21;
    }

    else if ((v18 & 0x60) != 0)
    {
      length = theString->length;
    }

    else
    {
      length = theString->data;
    }

    BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane(0x6Du, 0);
    if (locale)
    {
      locale = _CFStrGetSpecialCaseHandlingLanguageIdentifierForLocale(locale, 0);
    }

    v24 = 0;
    IsMemberOf = 0;
    if (!locale && (v5 & 0x10) == 0)
    {
      v26 = atomic_load(&theString->info);
      v27 = &theString->data;
      if ((v26 & 0x60) != 0)
      {
        v28 = *v27;
      }

      else
      {
        v29 = atomic_load(&theString->info);
        v28 = &v27[(v29 & 5) != 4];
      }

      v30 = atomic_load(&theString->info);
      if (length >= 1)
      {
        v24 = 0;
        IsMemberOf = 0;
        v31 = &v28[(v30 >> 2) & 1];
        while (1)
        {
          v32 = v31[v24];
          if (v32 < 0)
          {
            goto LABEL_42;
          }

          if ((v32 - 65) > 0x19u)
          {
            if ((v32 - 97) > 0x19u)
            {
              if (BitmapPtrForPlane)
              {
                if (((1 << (v32 & 7)) & *(BitmapPtrForPlane + (v31[v24] >> 3))) == 0)
                {
                  IsMemberOf = 0;
                }
              }

              else
              {
                IsMemberOf = 0;
              }

              goto LABEL_34;
            }

            if (IsMemberOf)
            {
              v34 = 0;
            }

            else
            {
              v34 = -32;
            }

            v33 = v32 + v34;
          }

          else
          {
            v33 = v32 | (32 * (IsMemberOf != 0));
          }

          v31[v24] = v33;
          IsMemberOf = 1;
LABEL_34:
          if (length == ++v24)
          {
            goto LABEL_101;
          }
        }
      }

      IsMemberOf = 0;
      v24 = 0;
    }

LABEL_42:
    if (v24 >= length)
    {
LABEL_101:
      v60 = *MEMORY[0x1E69E9840];
      return;
    }

    if ((v5 & 0x10) == 0)
    {
      v63 = 0;
      v64 = 0;
      __CFStringChangeSizeMultiple(theString, &v63, 1, 0, 1);
    }

    v35 = atomic_load(&theString->info);
    v36 = &theString->data;
    v62 = &theString->data;
    if ((v35 & 0x60) != 0)
    {
      v37 = *v36;
    }

    else
    {
      v38 = atomic_load(&theString->info);
      v37 = &v36[(v38 & 5) != 4];
    }

    v39 = BitmapPtrForPlane;
    ConditionalCaseMappingFlags = 0;
    while (1)
    {
      v41 = *(v37 + 2 * v24);
      v42 = v24 + 1;
      if ((v41 & 0xFC00) == 0xD800 && v42 < length)
      {
        v51 = *(v37 + 2 * v42);
        if ((v51 & 0xFC00) == 0xDC00)
        {
          v41 = v51 + (v41 << 10) - 56613888;
        }
      }

      if (!locale && (v41 == 931 ? (v44 = IsMemberOf == 0) : (v44 = 1), v44))
      {
        ConditionalCaseMappingFlags = 0;
      }

      else
      {
        ConditionalCaseMappingFlags = CFUniCharGetConditionalCaseMappingFlags(v41, v37, v24, length, 2 * (IsMemberOf == 0), locale, ConditionalCaseMappingFlags);
      }

      v45 = CFUniCharMapCaseTo(v41, &v65, 8, 2 * (IsMemberOf == 0), ConditionalCaseMappingFlags, locale);
      v46 = v45 - 1;
      if (v45 >= 1)
      {
        *(v37 + 2 * v24) = v65;
      }

      if (v41 >= 0x10000)
      {
        v47 = v45 - 2;
        if (v45 == 2)
        {
          ++v24;
          *(v37 + 2 * v24) = v66[0];
        }

        else
        {
          v48 = v45 - 1;
          if (v45 == 1)
          {
            v63 = v24 + 1;
            v64 = 1;
            __CFStringChangeSizeMultiple(theString, &v63, 1, 0, 1);
            v53 = atomic_load(&theString->info);
            if ((v53 & 0x60) != 0)
            {
              v37 = *v62;
            }

            else
            {
              v57 = atomic_load(&theString->info);
              v37 = &v62[(v57 & 5) != 4];
            }

            v39 = BitmapPtrForPlane;
            --length;
          }

          else if (v45)
          {
            v63 = v24 + 1;
            v64 = 0;
            __CFStringChangeSizeMultiple(theString, &v63, 1, v47, 1);
            v54 = atomic_load(&theString->info);
            if ((v54 & 0x60) != 0)
            {
              v37 = *v62;
            }

            else
            {
              v59 = atomic_load(&theString->info);
              v37 = &v62[(v59 & 5) != 4];
            }

            memmove((v37 + 2 * v24 + 2), v66, 2 * v48);
            length += v47;
            v24 += v48;
            v39 = BitmapPtrForPlane;
          }

          else
          {
            v63 = v24;
            v64 = 2;
            __CFStringChangeSizeMultiple(theString, &v63, 1, 0, 1);
            v49 = atomic_load(&theString->info);
            if ((v49 & 0x60) != 0)
            {
              v37 = *v62;
            }

            else
            {
              v58 = atomic_load(&theString->info);
              v37 = &v62[(v58 & 5) != 4];
            }

            v39 = BitmapPtrForPlane;
            length -= 2;
          }
        }

        if (CFUniCharIsMemberOf(v41, 0x6Du))
        {
          goto LABEL_100;
        }

LABEL_97:
        if (CFUniCharIsMemberOf(v41, 7u))
        {
          IsMemberOf = 1;
        }

        else
        {
          IsMemberOf = CFUniCharIsMemberOf(v41, 6u);
        }

        goto LABEL_100;
      }

      if (!v45)
      {
        break;
      }

      if (v45 < 2)
      {
        goto LABEL_84;
      }

      v63 = v24 + 1;
      v64 = 0;
      __CFStringChangeSizeMultiple(theString, &v63, 1, v46, 1);
      v50 = atomic_load(&theString->info);
      if ((v50 & 0x60) != 0)
      {
        v37 = *v62;
      }

      else
      {
        v56 = atomic_load(&theString->info);
        v37 = &v62[(v56 & 5) != 4];
      }

      memmove((v37 + 2 * v24 + 2), v66, 2 * v46);
      length += v46;
      v24 += v46;
      if (!v39)
      {
        goto LABEL_97;
      }

LABEL_88:
      if (((*(v39 + (v41 >> 3)) >> (v41 & 7)) & 1) == 0)
      {
        goto LABEL_97;
      }

LABEL_100:
      if (++v24 >= length)
      {
        goto LABEL_101;
      }
    }

    v63 = v24;
    v64 = 1;
    __CFStringChangeSizeMultiple(theString, &v63, 1, 0, 1);
    v52 = atomic_load(&theString->info);
    if ((v52 & 0x60) != 0)
    {
      v37 = *v62;
    }

    else
    {
      v55 = atomic_load(&theString->info);
      v37 = &v62[(v55 & 5) != 4];
    }

    --length;
LABEL_84:
    if (!v39)
    {
      goto LABEL_97;
    }

    goto LABEL_88;
  }

  v6 = *MEMORY[0x1E69E9840];

  [(__CFString *)theString _cfCapitalize:locale];
}

BOOL _CFBundleIsLanguageDefaultLanguageOfOther(const void *a1, const void *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = _CFBundleCopyDefaultLanguageForLanguage(a1);
    if (v4)
    {
      v5 = v4;
      v6 = _CFBundleCopyDefaultLanguageForLanguage(a2);
      if (v6)
      {
        v7 = v6;
        v2 = CFStringCompare(v5, v6, 1uLL) == kCFCompareEqualTo;
        CFRelease(v5);
        v5 = v7;
      }

      else
      {
        v2 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

const CFArrayCallBacks *__CFArrayGetCallBacks(uint64_t a1)
{
  v1 = atomic_load((a1 + 8));
  v2 = (v1 >> 2) & 3;
  if (!v2)
  {
    return &__kCFNullArrayCallBacks;
  }

  if (v2 == 1)
  {
    return &kCFTypeArrayCallBacks;
  }

  v4 = atomic_load((a1 + 8));
  v5 = v4 & 3;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 + 48;
  }

  if (v5 == 2)
  {
    return (a1 + 48);
  }

  else
  {
    return v6;
  }
}

const void *_CFBundleCopyDefaultLanguageForLanguage(const void *a1)
{
  os_unfair_lock_lock_with_options();
  Mutable = _CFBundleCopyDefaultLanguageForLanguage_cache;
  if (!_CFBundleCopyDefaultLanguageForLanguage_cache)
  {
    Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    _CFBundleCopyDefaultLanguageForLanguage_cache = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, a1);
  if (Value)
  {
    Copy = CFStringCreateCopy(0, Value);
LABEL_7:
    os_unfair_lock_unlock(&_CFBundleCopyDefaultLanguageForLanguage_defaultLanguageLock);
    return Copy;
  }

  os_unfair_lock_unlock(&_CFBundleCopyDefaultLanguageForLanguage_defaultLanguageLock);
  Copy = _CFLocaleCopyLocaleIdentifierByAddingLikelySubtags(a1);
  if (Copy)
  {
    os_unfair_lock_lock_with_options();
    CFDictionarySetValue(_CFBundleCopyDefaultLanguageForLanguage_cache, a1, Copy);
    goto LABEL_7;
  }

  return Copy;
}

id _CFLocaleCopyLocaleIdentifierByAddingLikelySubtags(uint64_t a1)
{
  v1 = [NSLocale _localeIdentifierByAddingLikelySubtags:a1];

  return v1;
}

Boolean CFURLSetResourcePropertyForKey(CFURLRef url, CFStringRef key, CFTypeRef propertyValue, CFErrorRef *error)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (_CFURLHasFileURLScheme(url, &v14))
  {
    __CFURLResourceInfoPtr(url);
    _FSURLSetResourcePropertyForKey();
  }

  else if (!v14)
  {
    CFLog(4, @"CFURLSetResourcePropertyForKey failed because it was passed a URL which has no scheme", v5, v6, v7, v8, v9, v10, v13);
  }

  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

void __CFRunLoopAddItemsToCommonMode(void *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = CFGetTypeID(a1);
  switch(v5)
  {
    case '-':

      CFRunLoopAddObserver(v4, a1, v3);
      break;
    case '/':

      CFRunLoopAddTimer(v4, a1, v3);
      break;
    case '.':

      CFRunLoopAddSource(v4, a1, v3);
      break;
  }
}

uint64_t _CFURLComponentsGetURLQueryAllowedCharacterSet()
{
  if (InitializeURLAllowedCharacterSets_static_init != -1)
  {
    _CFURLComponentsGetURLQueryAllowedCharacterSet_cold_1();
  }

  return *(sURLAllowedCharacterSets + 32);
}

void CFCharacterSetRemoveCharactersInRange(CFMutableCharacterSetRef theSet, CFRange theRange)
{
  length = theRange.length;
  location = theRange.location;
  if (CF_IS_OBJC(0x19uLL, theSet))
  {

    [(__CFCharacterSet *)theSet removeCharactersInRange:location, length];
  }

  else
  {
    v11 = atomic_load(theSet + 1);
    if ((v11 & 1) == 0)
    {
      CFLog(3, @"%s: Immutable character set passed to mutable function", v5, v6, v7, v8, v9, v10, "void CFCharacterSetRemoveCharactersInRange(CFMutableCharacterSetRef, CFRange)");
      if (dyld_program_sdk_at_least())
      {
        CFCharacterSetRemoveCharactersInRange_cold_2();
      }
    }

    CFCharacterSetRemoveCharactersInRange_cold_1(location, length, theSet + 1, theSet, v7, v8, v9, v10);
  }
}

void CFCharacterSetRemoveCharactersInRange_cold_1(unint64_t a1, uint64_t a2, unint64_t *a3, CFCharacterSetPredefinedSet *cf, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  v10 = a1 + a2;
  v11 = a1 >> 16;
  if (a1 >> 16 > 0x10 || a2 >= 1114113 || v10 >= 0x110001)
  {
LABEL_160:
    CFLog(3, @"%s: Range (location: %ld, length: %ld) outside of valid Unicode range (0x0 - 0x10FFFF)", a3, cf, a5, a6, a7, a8, "void CFCharacterSetRemoveCharactersInRange(CFMutableCharacterSetRef, CFRange)");
    qword_1EA849A30 = "CFCharacterSet range is outside of valid Unicode range (0x0 - 0x10FFFF)";
    __break(1u);
    JUMPOUT(0x18317A1A4);
  }

  v14 = cf;
  v16 = atomic_load(a3);
  if (v16 & 0x70) != 0 || (v17 = atomic_load(a3), (v17) || (v18 = atomic_load(a3), (v18 & 8) != 0) || CFCharacterSetGetPredefined(cf[3]) != cf)
  {
    if (a2)
    {
      v19 = atomic_load(a3);
      if ((v19 & 8) == 0)
      {
        v20 = *(v14 + 5);
        if (!v20 || !*(v20 + 8) && !*(v20 + 13))
        {
          v21 = atomic_load(a3);
          switch((v21 >> 4) & 7)
          {
            case 1u:
            case 2u:
              if (!*(v14 + 4))
              {
                return;
              }

              break;
            case 3u:
            case 4u:
              if (*(v14 + 3))
              {
                break;
              }

              return;
            default:
              break;
          }
        }
      }

      v22 = atomic_load(a3);
      if ((v22 & 8) != 0)
      {
        v32 = *(v14 + 5);
        if (!v32 || !*(v32 + 8) && !*(v32 + 13))
        {
          v33 = atomic_load(a3);
          switch((v33 >> 4) & 7)
          {
            case 1u:
            case 2u:
              if (*(v14 + 4))
              {
                goto LABEL_46;
              }

              goto LABEL_136;
            case 3u:
            case 4u:
              if (*(v14 + 3))
              {
                goto LABEL_46;
              }

LABEL_136:
              OUTLINED_FUNCTION_6();
              do
              {
                atomic_compare_exchange_strong(a3, &v95, v96 & 0xFFFFFFFFFFFFFF8FLL | 0x10);
                v45 = v95 == v96;
                v96 = v95;
              }

              while (!v45);
              *(v14 + 6) = v9;
              *(v14 + 4) = a2;
              OUTLINED_FUNCTION_6();
              do
              {
                OUTLINED_FUNCTION_1_1(v97);
              }

              while (!v45);
              break;
            default:
              goto LABEL_46;
          }

          return;
        }

LABEL_46:
        v34 = atomic_load(a3);
        if ((v34 & 0x70) == 0x10)
        {
          v35 = *(v14 + 6);
          v36 = *(v14 + 4);
          if (v35 == v9)
          {
            if (v36 >= a2)
            {
              v36 = a2;
            }

            *(v14 + 4) = v36;
            OUTLINED_FUNCTION_6();
            do
            {
              OUTLINED_FUNCTION_1_1(v37);
            }

            while (!v45);
            return;
          }

          v91 = v36 + v35;
          if (v35 < v9 && v9 <= v91)
          {
            if (v91 < v10)
            {
              *(v14 + 4) = v10 - v35;
            }

            OUTLINED_FUNCTION_6();
            do
            {
              OUTLINED_FUNCTION_1_1(v106);
            }

            while (!v45);
            return;
          }

          if (v35 > v9 && v10 >= v35)
          {
            *(v14 + 6) = v9;
            *(v14 + 4) = v35 - v9 + v36;
            OUTLINED_FUNCTION_6();
            do
            {
              OUTLINED_FUNCTION_1_1(v94);
            }

            while (!v45);
            return;
          }
        }

        else
        {
          v62 = atomic_load(a3);
          if ((v62 & 0x70) == 0x20)
          {
            v63 = *(v14 + 4);
            v64 = v63 + a2;
            if (v63 + a2 <= 63)
            {
              v65 = *(v14 + 3);
              if (!v65)
              {
                v66 = CFGetAllocator(v14);
                v65 = OUTLINED_FUNCTION_3(v66);
                *(v14 + 3) = v65;
                v63 = *(v14 + 4);
                v64 = v63 + a2;
              }

              *(v14 + 4) = v64;
              v67 = 0;
              v68 = vdupq_n_s64(a2 - 1);
              v69 = (v65 + 2 * v63 + 8);
              do
              {
                v70 = vdupq_n_s64(v67);
                v71 = vmovn_s64(vcgeq_u64(v68, vorrq_s8(v70, xmmword_183306C30)));
                if (vuzp1_s8(vuzp1_s16(v71, *v68.i8), *v68.i8).u8[0])
                {
                  *(v69 - 4) = v9;
                }

                if (vuzp1_s8(vuzp1_s16(v71, *&v68), *&v68).i8[1])
                {
                  *(v69 - 3) = v9 + 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v68, vmovn_s64(vcgeq_u64(v68, vorrq_s8(v70, xmmword_183306C20)))), *&v68).i8[2])
                {
                  *(v69 - 2) = v9 + 2;
                  *(v69 - 1) = v9 + 3;
                }

                v72 = vmovn_s64(vcgeq_u64(v68, vorrq_s8(v70, xmmword_183306C10)));
                if (vuzp1_s8(*&v68, vuzp1_s16(v72, *&v68)).i32[1])
                {
                  *v69 = v9 + 4;
                }

                if (vuzp1_s8(*&v68, vuzp1_s16(v72, *&v68)).i8[5])
                {
                  v69[1] = v9 + 5;
                }

                if (vuzp1_s8(*&v68, vuzp1_s16(*&v68, vmovn_s64(vcgeq_u64(v68, vorrq_s8(v70, xmmword_183306C00))))).i8[6])
                {
                  v69[2] = v9 + 6;
                  v69[3] = v9 + 7;
                }

                v67 += 8;
                LOWORD(v9) = v9 + 8;
                v69 += 8;
              }

              while (((a2 + 7) & 0xFFFFFFFFFFFFFFF8) != v67);
              v73 = *(v14 + 3);
              v74 = *(v14 + 4);
              OUTLINED_FUNCTION_0_1();
              qsort(v75, v76, 2uLL, v77);
              v78 = *(v14 + 4);
              if (v78 >= 2)
              {
                v79 = 0;
                v80 = *(v14 + 3) + 2;
                do
                {
                  OUTLINED_FUNCTION_10(v79);
                  if (!v45)
                  {
                    ++v79;
                    *(v81 + 2 * v79) = v83;
                  }
                }

                while (v82 != 1);
                v78 = v79 + 1;
              }

              *(v14 + 4) = v78;
              OUTLINED_FUNCTION_6();
              do
              {
                OUTLINED_FUNCTION_1_1(v84);
              }

              while (!v45);
              return;
            }
          }
        }
      }

      v107 = a2;
      v109 = v9;
      __CFCSetMakeBitmap(v14);
      v108 = v10;
      v23 = v10 - 1;
      if (v11 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v11;
      }

      if (v24 <= v23 >> 16)
      {
        v38 = v9;
        v39 = v23 >> 16;
        v40 = v108;
        v41 = v108;
        v42 = 8 * v24;
        v43 = (v23 >> 16) + 1;
        v44 = 0x10000;
        do
        {
          v45 = v39 != v24 || v40 == 0;
          if (v45)
          {
            v46 = v44;
          }

          else
          {
            v46 = v41;
          }

          v47 = v46 - v38;
          v48 = *(v14 + 5);
          if (v48 && *(v48 + 13))
          {
            if (!v24)
            {
              goto LABEL_159;
            }

            if (v24 <= 0x10u)
            {
              if (*(v48 + 12) < v24)
              {
                *(v48 + 12) = v24;
                v49 = v14;
                v50 = *v48;
                v51 = CFGetAllocator(v49);
                if (v50)
                {
                  Typed = __CFSafelyReallocateWithAllocatorTyped(v51, **(v49 + 5), v42 & 0xF8, 0x6004044C4A2DFLL, 0, 0);
                }

                else
                {
                  Typed = CFAllocatorAllocateTyped(v51, v42 & 0xF8, 0x6004044C4A2DFLL, 0);
                }

                v14 = v49;
                v48 = *(v49 + 5);
                *v48 = Typed;
                v40 = v108;
                v41 = v108;
                v44 = 0x10000;
              }

              if ((v48[1] & (1 << v24)) != 0)
              {
                v57 = v24 & 0x1F;
              }

              else
              {
                v58 = CFGetAllocator(v14);
                CFCharacterSetCreateMutable(v58);
                OUTLINED_FUNCTION_14();
                v57 = v24 & 0x1F;
                *(**(v14 + 5) + 8 * v57 - 8) = v59;
                v48 = *(v14 + 5);
                *(v48 + 2) |= 1 << v24;
              }

              v60 = *(*v48 + 8 * v57 - 8);
              if (v60)
              {
                v112.location = v38;
                v112.length = v47;
                CFCharacterSetAddCharactersInRange(v60, v112);
                OUTLINED_FUNCTION_14();
              }
            }
          }

          else
          {
            if (!v24)
            {
LABEL_159:
              __break(1u);
              goto LABEL_160;
            }

            if (v24 <= 0x10u)
            {
              if (v48)
              {
                if (((*(v48 + 2) >> v24) & 1) != 0 && *(v48 + 12) >= v24)
                {
                  v53 = *v48 + 8 * (v24 & 0x1F);
                  v54 = *(v53 - 8);
                  if (v54)
                  {
                    v111.location = v38;
                    v111.length = v47;
                    CFCharacterSetRemoveCharactersInRange(*(v53 - 8), v111);
                    OUTLINED_FUNCTION_14();
                    v55 = v54[5];
                    if (!v55 || !*(v55 + 8) && !*(v55 + 13))
                    {
                      v56 = atomic_load(v54 + 1);
                      switch((v56 >> 4) & 7)
                      {
                        case 1u:
                        case 2u:
                          if (!v54[4])
                          {
                            goto LABEL_90;
                          }

                          break;
                        case 3u:
                        case 4u:
                          if (!v54[3])
                          {
LABEL_90:
                            v61 = atomic_load(v54 + 1);
                            if ((v61 & 8) == 0)
                            {
                              CFRelease(v54);
                              OUTLINED_FUNCTION_14();
                              *(*(v14 + 5) + 8) &= ~(1 << v24);
                            }
                          }

                          break;
                        default:
                          break;
                      }
                    }
                  }
                }
              }
            }
          }

          ++v24;
          v42 += 8;
        }

        while (v43 != v24);
      }

      v25 = *(v14 + 5);
      if (v25 && !*(v25 + 8) && !*(v25 + 13))
      {
        for (i = 0; i != 16; ++i)
        {
          v27 = *(v14 + 5);
          if (((*(v27 + 8) >> i) & 2) != 0)
          {
            CFRelease(*(*v27 + 8 * i));
          }
        }

        v28 = CFGetAllocator(v14);
        CFAllocatorDeallocate(v28, **(v14 + 5));
        v29 = CFGetAllocator(v14);
        CFAllocatorDeallocate(v29, *(v14 + 5));
        *(v14 + 5) = 0;
      }

      if (v109 < 0x10000)
      {
        if (v108 <= 0x10000)
        {
          v30 = v107;
        }

        else
        {
          v30 = 0x10000 - v109;
        }

        if (v109 || v30 != 0x10000)
        {
          v85 = *(v14 + 3);
          v86 = v30 + v109 - 1;
          v87 = v109 >> 3;
          v88 = v86;
          v89 = v86 >> 3;
          v90 = 255 << (v109 & 7);
          if (v89 == v87)
          {
            *(v85 + v87) &= ~((0xFFu >> (~v88 & 7)) & v90);
          }

          else
          {
            *(v85 + v87) &= ~v90;
            *(v85 + v89) &= -256 >> (~v88 & 7);
            if ((v109 >> 3) + 1 < (v88 >> 3))
            {
              bzero((v85 + v87 + 1), (v89 - v87 - 2) + 1);
            }
          }
        }

        else
        {
          v31 = CFGetAllocator(v14);
          CFAllocatorDeallocate(v31, *(v14 + 3));
          *(v14 + 3) = 0;
        }
      }

      OUTLINED_FUNCTION_6();
      do
      {
        OUTLINED_FUNCTION_1_1(v98);
      }

      while (!v45);
      OUTLINED_FUNCTION_9();
      if (v45)
      {

        __CFCheckForExpandedSet(v14, v99, v100, v101, v102, v103, v104, v105);
      }
    }
  }
}

IMP _CFErrorCocoaCallBack(uint64_t a1, uint64_t a2)
{
  result = _CFErrorCocoaCallBack_cocoaCallBack;
  if (!_CFErrorCocoaCallBack_cocoaCallBack)
  {
    v5 = objc_lookUpClass("NSError");
    if (v5)
    {
      v6 = v5;
      v7 = sel_registerName("_retainedUserInfoCallBackForKey:");
      result = class_getMethodImplementation(v6, v7);
      _CFErrorCocoaCallBack_cocoaCallBack = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = _CFErrorCocoaCallBack_cocoaCallBack;
      if (!_CFErrorCocoaCallBack_cocoaCallBack)
      {
        return result;
      }
    }
  }

  v9 = result;
  v8 = sel_registerName("_retainedUserInfoCallBackForKey:");

  return v9(a1, v8, a2);
}

unint64_t *_CFURLCreateCopyAppendingPathComponent(void *a1, const __CFString *a2, int a3)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    _CFURLCreateCopyAppendingPathComponent_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, a1))
    {
      a1 = [a1 _cfurl];
    }

    v6 = [a1 _URLByAppendingPathComponent:a2 isDirectory:a3 != 0 encodingSlashes:1];

    return v6;
  }

  else
  {

    return __CFURLCreateCopyAppendingPathComponent(0, a1, a2, a3, @";?/");
  }
}

BOOL __CFStringFindTypeAndSizeForArgumentIndex(uint64_t a1, int a2, uint64_t a3, _WORD *a4, __int16 *a5)
{
  if (a2 < 1)
  {
    return 0;
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 26);
    v7 = 1;
    v8 = a2;
    v9 = 1;
    while (1)
    {
      v10 = *v6;
      if (*v6 < 0)
      {
        v11 = -1;
      }

      else
      {
        v11 = *v6;
      }

      if (v10 == 254)
      {
        v12 = v5 + 1;
      }

      else
      {
        v12 = v5;
      }

      if (v10 == 254)
      {
        v13 = v5;
      }

      else
      {
        v13 = v11;
      }

      v14 = *(v6 - 1);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v15 = -1;
      }

      if (v14 == 254)
      {
        v15 = v12;
      }

      if (a3 == v13 || v15 == a3)
      {
        *a4 = 33;
        v19 = 3;
        goto LABEL_34;
      }

      v5 = v14 == 254 ? v12 + 1 : v12;
      v17 = *(v6 - 2);
      v18 = v17 == 255 ? v5 : *(v6 - 2);
      if (a3 == v18)
      {
        break;
      }

      if (v17 == 255)
      {
        ++v5;
      }

      v9 = v7++ < a2;
      v6 += 32;
      if (!--v8)
      {
        return v9;
      }
    }

    *a4 = *(v6 - 12);
    v19 = *(v6 - 13);
LABEL_34:
    *a5 = v19;
  }

  return v9;
}

CFTimeZoneRef CFTimeZoneCopySystem(void)
{
  v0 = _CFAutoreleasePoolPush();
  v1 = +[NSTimeZone systemTimeZone];
  if (v1)
  {
    v2 = CFRetain(v1);
  }

  else
  {
    v2 = 0;
  }

  _CFAutoreleasePoolPop(v0);
  return v2;
}

uint64_t parseIntegerTag(uint64_t a1, CFNumberRef *a2)
{
  valuePtr[2] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
LABEL_22:
    v8 = v5;
    goto LABEL_23;
  }

  v6 = v4 - v5;
  v7 = v5 + 1;
  v8 = *(a1 + 8);
  while (1)
  {
    v9 = *(v7 - 1);
    if (v9 >= 0x21 && v9 - 127 >= 0x22)
    {
      if (v6 < 3 || (v9 & 0xFE) != 0xE2)
      {
        goto LABEL_22;
      }

      v10 = *v7;
      v11 = v7[1];
      if (v9 == 226 && v10 == 128)
      {
        if (v11 != 175 && (v11 - 80) > 0x3B)
        {
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      if (v9 == 226 && v10 == 129)
      {
        if (v11 != 159)
        {
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      if (v9 != 227 || v10 != 128 || v11 != 128)
      {
        break;
      }
    }

LABEL_19:
    ++v5;
    *(a1 + 8) = v7;
    ++v8;
    --v6;
    v22 = v7++ == v4;
    if (v22)
    {
      v8 = v4;
      v5 = v4;
      goto LABEL_23;
    }
  }

  v5 = v7 - 1;
LABEL_23:
  if (v5 == v4)
  {
    goto LABEL_97;
  }

  v12 = *v5;
  if (v12 == 60)
  {
    v44 = lineNumber(a1);
    Error = __CFPropertyListCreateError(3840, @"Encountered empty <integer> on line %u", v44);
    goto LABEL_98;
  }

  v14 = v12 == 45;
  if (v12 == 45 || v12 == 43)
  {
    v15 = v5 + 1;
    *(a1 + 8) = v5 + 1;
    if ((v5 + 1) >= v4)
    {
LABEL_48:
      v5 = v15;
    }

    else
    {
      v16 = &v5[v4 - v8];
      v17 = v4 - 1 - v8;
      v18 = v4 - 1 - v5;
      do
      {
        v19 = *v15;
        if (v19 >= 0x21 && v19 - 127 >= 0x22)
        {
          if (v18 < 3 || (v19 & 0xFE) != 0xE2)
          {
            goto LABEL_48;
          }

          v20 = v15[1];
          v21 = v15[2];
          if (v19 == 226 && v20 == 128)
          {
            if (v21 != 175 && (v21 - 80) > 0x3B)
            {
              goto LABEL_48;
            }
          }

          else if (v19 == 226 && v20 == 129)
          {
            if (v21 != 159)
            {
              goto LABEL_48;
            }
          }

          else if (v19 != 227 || v20 != 128 || v21 != 128)
          {
            goto LABEL_48;
          }
        }

        *(a1 + 8) = ++v15;
        --v18;
        --v17;
      }

      while (v17);
      v5 = v16;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v5 == v4)
  {
    goto LABEL_97;
  }

  if (*v5 == 48)
  {
    if ((v5 + 1) >= v4)
    {
      v23 = 0;
      v24 = 1;
    }

    else
    {
      v22 = (v5[1] | 0x20) == 120;
      if ((v5[1] | 0x20) == 0x78)
      {
        ++v5;
        v23 = 1;
      }

      else
      {
        v23 = 0;
      }

      v24 = !v22;
    }

    *(a1 + 8) = ++v5;
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  if (v5 == v4)
  {
LABEL_97:
    v46 = lineNumber(a1);
    Error = __CFPropertyListCreateError(3840, @"Premature end of file after <integer> on line %u", v46);
LABEL_98:
    v39 = Error;
    result = 0;
    *(a1 + 24) = v39;
    goto LABEL_99;
  }

  v25 = *v5;
  if (v25 == 48)
  {
    v26 = v5 + 1;
    while (1)
    {
      *(a1 + 8) = v26;
      if (v26 == v4)
      {
        goto LABEL_97;
      }

      v27 = *v26++;
      v25 = v27;
      if (v27 != 48)
      {
        v5 = v26 - 1;
        v24 = 1;
        break;
      }
    }
  }

  if (!v24 || v25 != 60)
  {
    if (v25 != 60)
    {
      v30 = 0;
      v31 = 0x1999999999999999;
      if (v23)
      {
        v31 = 0xFFFFFFFFFFFFFFFLL;
      }

      v32 = 10;
      if (v23)
      {
        v32 = 16;
      }

      for (i = (v5 + 1); ; ++i)
      {
        v34 = v25;
        if (v25 <= 0x40u)
        {
          if (v25 - 48 >= 0xA)
          {
            if (v25 != 60)
            {
LABEL_111:
              v50 = lineNumber(a1);
              Error = __CFPropertyListCreateError(3840, @"Unknown character '%c' (0x%x) in <integer> on line %u", v34, v34, v50);
              goto LABEL_98;
            }

            result = checkForCloseTag(a1, "integer", 7uLL);
            if (!result)
            {
              goto LABEL_99;
            }

            if (*(a1 + 80))
            {
              *a2 = 0;
              goto LABEL_103;
            }

            if (((v30 < 0) & ~v14) != 0)
            {
              valuePtr[0] = 0;
              valuePtr[1] = v30;
              v41 = *(a1 + 32);
              v42 = kCFNumberMaxType|kCFNumberSInt8Type;
            }

            else
            {
              if (v14)
              {
                v43 = -v30;
              }

              else
              {
                v43 = v30;
              }

              valuePtr[0] = v43;
              v41 = *(a1 + 32);
              v42 = kCFNumberSInt64Type;
            }

LABEL_101:
            v29 = CFNumberCreate(v41, v42, valuePtr);
            goto LABEL_102;
          }

          v36 = v34 - 48;
        }

        else
        {
          if (v25 - 65 < 6)
          {
            v35 = -55;
          }

          else
          {
            if (v25 - 97 >= 6)
            {
              goto LABEL_111;
            }

            v35 = -87;
          }

          if ((v23 & 1) == 0)
          {
            v49 = lineNumber(a1);
            Error = __CFPropertyListCreateError(3840, @"Hex digit in non-hex <integer> on line %u", v49);
            goto LABEL_98;
          }

          v36 = v35 + v34;
        }

        if (v31 < v30 || __CFADD__(v30 * v32, v36))
        {
          v47 = lineNumber(a1);
          Error = __CFPropertyListCreateError(3840, @"Integer overflow in <integer> on line %u", v47);
          goto LABEL_98;
        }

        v30 = v30 * v32 + v36;
        v37 = v14 ^ 1;
        if (v30 < 0x8000000000000001)
        {
          v37 = 1;
        }

        if ((v37 & 1) == 0)
        {
          v48 = lineNumber(a1);
          Error = __CFPropertyListCreateError(3840, @"Integer underflow in <integer> on line %u", v48);
          goto LABEL_98;
        }

        *(a1 + 8) = i;
        if (i == v4)
        {
          goto LABEL_97;
        }

        v38 = *i;
        LOBYTE(v25) = v38;
      }
    }

    v45 = lineNumber(a1);
    Error = __CFPropertyListCreateError(3840, @"Incomplete <integer> on line %u", v45);
    goto LABEL_98;
  }

  LODWORD(valuePtr[0]) = 0;
  result = checkForCloseTag(a1, "integer", 7uLL);
  if (result)
  {
    if (!*(a1 + 80))
    {
      v41 = *(a1 + 32);
      v42 = kCFNumberSInt32Type;
      goto LABEL_101;
    }

    v29 = 0;
LABEL_102:
    *a2 = v29;
LABEL_103:
    result = 1;
  }

LABEL_99:
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

CFURLRef CFBundleCopyResourceURLForLocalization(CFURLRef bundle, CFStringRef resourceName, CFStringRef resourceType, CFStringRef subDirName, CFStringRef localizationName)
{
  if (bundle)
  {
    return _CFBundleCopyFindResources(bundle, 0, resourceType, resourceName, resourceType, subDirName, localizationName, 0, 1, 0);
  }

  return bundle;
}

CFURLRef CFURLCreateFilePathURL(CFAllocatorRef allocator, CFURLRef url, CFErrorRef *error)
{
  v84 = *MEMORY[0x1E69E9840];
  v49 = 0;
  if (!_CFURLHasFileURLScheme(url, &v49))
  {
    if (v49)
    {
      if (error)
      {
LABEL_10:
        v22 = 0;
        *error = CFErrorCreate(0, @"NSCocoaErrorDomain", 262, 0);
        goto LABEL_65;
      }
    }

    else
    {
      CFLog(4, @"CFURLCreateFilePathURL failed because it was passed a URL which has no scheme", v6, v7, v8, v9, v10, v11, v48);
      if (error)
      {
        goto LABEL_10;
      }
    }

    v22 = 0;
    goto LABEL_65;
  }

  if (CFURLGetBaseURL(url))
  {
    v12 = CFURLCopyAbsoluteURL(url);
    v13 = CFGetAllocator(v12);
    v14 = CFURLCreateStringWithFileSystemPath(v13, v12, 0, 0);
    v15 = CFURLCopyNetLocation(v12);
    v16 = CFURLCopyResourceSpecifier(v12);
    ResolveFlags = _CFURLGetQueryResolveFlags(v12);
    CFRelease(v12);
    if (v14)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v23 = CFGetAllocator(url);
    v14 = CFURLCreateStringWithFileSystemPath(v23, url, 0, 0);
    v15 = CFURLCopyNetLocation(url);
    v16 = CFURLCopyResourceSpecifier(url);
    ResolveFlags = _CFURLGetQueryResolveFlags(url);
    if (v14)
    {
LABEL_4:
      Length = CFStringGetLength(v14);
      if (Length <= 1)
      {
        Length = 1;
      }

      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v20 = MaximumSizeForEncoding;
      if (MaximumSizeForEncoding >= 1024)
      {
        v21 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
      }

      else
      {
        v21 = buffer;
      }

      if (CFStringGetCString(v14, v21, v20 + 1, 0x8000100u))
      {
        v24 = strlen(v21);
        StringFromFileSystemRepresentationByAddingPercentEscapes = CreateStringFromFileSystemRepresentationByAddingPercentEscapes(0, v21, v24, 0, 0, 0, 0);
      }

      else
      {
        StringFromFileSystemRepresentationByAddingPercentEscapes = 0;
      }

      if (v21 != buffer)
      {
        free(v21);
      }

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      *buffer = 0u;
      v51 = 0u;
      v82 = 0;
      Mutable = CFStringCreateMutable(allocator, 0);
      v26 = CFStringGetLength(@"file://");
      v27 = v82;
      if (v26 < 1025)
      {
        v28 = v26;
        if (v82 + v26 >= 1025)
        {
          CFStringAppendCharacters(Mutable, buffer, v82);
          v27 = 0;
          v82 = 0;
        }

        v29 = &buffer[2 * v27];
        v85.location = 0;
        v85.length = v28;
        CFStringGetCharacters(@"file://", v85, v29);
        v82 += v28;
        if (!v15)
        {
LABEL_38:
          v34 = CFStringGetLength(StringFromFileSystemRepresentationByAddingPercentEscapes);
          v35 = v82;
          if (v34 < 1025)
          {
            v36 = v34;
            if (v82 + v34 >= 1025)
            {
              CFStringAppendCharacters(Mutable, buffer, v82);
              v35 = 0;
              v82 = 0;
            }

            v37 = &buffer[2 * v35];
            v87.location = 0;
            v87.length = v36;
            CFStringGetCharacters(StringFromFileSystemRepresentationByAddingPercentEscapes, v87, v37);
            v82 += v36;
          }

          else
          {
            if (v82)
            {
              CFStringAppendCharacters(Mutable, buffer, v82);
              v82 = 0;
            }

            CFStringAppend(Mutable, StringFromFileSystemRepresentationByAddingPercentEscapes);
          }

          if (CFURLHasDirectoryPath(url) && CFStringCompare(StringFromFileSystemRepresentationByAddingPercentEscapes, @"/", 0))
          {
            v38 = v82;
            if (v82 >= 1024)
            {
              CFStringAppendCharacters(Mutable, buffer, v82);
              v38 = 0;
              v82 = 0;
            }

            *&buffer[2 * v38] = 47;
            ++v82;
          }

          if (v16)
          {
            v39 = CFStringGetLength(v16);
            v40 = v82;
            if (v39 < 1025)
            {
              v46 = v39;
              if (v82 + v39 >= 1025)
              {
                CFStringAppendCharacters(Mutable, buffer, v82);
                v40 = 0;
                v82 = 0;
              }

              v47 = &buffer[2 * v40];
              v88.location = 0;
              v88.length = v46;
              CFStringGetCharacters(v16, v88, v47);
              v41 = v82 + v46;
              v82 = v41;
              if (!v41)
              {
LABEL_57:
                v42 = Mutable;
                Mutable = 0;
                v43 = v42;
                if (ResolveFlags)
                {
                  v43 = [(__CFString *)v42 _urlStringByInsertingPathResolveFlags:ResolveFlags];
                }

                v22 = CFURLCreateWithString(allocator, v43, 0);
                if (v42)
                {
                  CFRelease(v42);
                }

                CFRelease(StringFromFileSystemRepresentationByAddingPercentEscapes);
                CFRelease(v14);
                if (!v15)
                {
                  goto LABEL_63;
                }

                goto LABEL_62;
              }

LABEL_56:
              CFStringAppendCharacters(Mutable, buffer, v41);
              v82 = 0;
              goto LABEL_57;
            }

            if (v82)
            {
              CFStringAppendCharacters(Mutable, buffer, v82);
              v82 = 0;
            }

            CFStringAppend(Mutable, v16);
          }

          v41 = v82;
          if (!v82)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        }
      }

      else
      {
        if (v82)
        {
          CFStringAppendCharacters(Mutable, buffer, v82);
          v82 = 0;
        }

        CFStringAppend(Mutable, @"file://");
        if (!v15)
        {
          goto LABEL_38;
        }
      }

      v30 = CFStringGetLength(v15);
      v31 = v82;
      if (v30 < 1025)
      {
        v32 = v30;
        if (v82 + v30 >= 1025)
        {
          CFStringAppendCharacters(Mutable, buffer, v82);
          v31 = 0;
          v82 = 0;
        }

        v33 = &buffer[2 * v31];
        v86.location = 0;
        v86.length = v32;
        CFStringGetCharacters(v15, v86, v33);
        v82 += v32;
      }

      else
      {
        if (v82)
        {
          CFStringAppendCharacters(Mutable, buffer, v82);
          v82 = 0;
        }

        CFStringAppend(Mutable, v15);
      }

      goto LABEL_38;
    }
  }

  if (error)
  {
    v22 = 0;
    *error = CFErrorCreate(0, @"NSCocoaErrorDomain", 4, 0);
    if (!v15)
    {
      goto LABEL_63;
    }

LABEL_62:
    CFRelease(v15);
    goto LABEL_63;
  }

  v22 = 0;
  if (v15)
  {
    goto LABEL_62;
  }

LABEL_63:
  if (v16)
  {
    CFRelease(v16);
  }

LABEL_65:
  v44 = *MEMORY[0x1E69E9840];
  return v22;
}

const void *_CFStreamCreateWithFile(__objc2_class **a1, CFURLRef anURL, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!anURL)
  {
    goto LABEL_6;
  }

  result = CFURLCopyScheme(anURL);
  if (result)
  {
    v7 = result;
    if (CFEqual(result, @"file"))
    {
      v15 = 0u;
      v14 = 0u;
      CFRelease(v7);
      v13 = anURL;
      LODWORD(v14) = -1;
      result = _CFStreamCreateWithConstantCallbacks(a1, &v13, fileCallBacks, a3, v8, v9, v10, v11);
      goto LABEL_7;
    }

    CFRelease(v7);
LABEL_6:
    result = 0;
  }

LABEL_7:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

id _NSObjectLoadWeak(id *a1, _BYTE *a2)
{
  if (*a2)
  {
    WeakRetained = *a1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1);
  }

  return WeakRetained;
}

uint64_t _CFURLGetVolumePropertyFlags(const __CFURL *a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (!_CFURLHasFileURLScheme(a1, &v14))
  {
    if (!v14)
    {
      CFLog(4, @"_CFURLGetVolumePropertyFlags failed because it was passed a URL which has no scheme", v5, v6, v7, v8, v9, v10, v13);
    }

    goto LABEL_6;
  }

  __CFURLResourceInfoPtr(a1);
  result = _FSURLGetVolumePropertyFlags();
  if (!result)
  {
LABEL_6:
    *a3 = 0;
    result = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFURLCopyFileURL(unint64_t a1)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    _CFURLCopyFileURL_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled != 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, a1))
    {
      a1 = [a1 _cfurl];
    }

    if (!*(a1 + 32) && _CFURLHasFileURLScheme(a1, 0))
    {
      v5 = CFGetAllocator(a1);
      v10 = *(a1 + 16) & 0x1FF;
      if (v10)
      {
        v11 = 0;
        do
        {
          v11 += v10 & 1;
          v12 = v10 > 1;
          v10 >>= 1;
        }

        while (v12);
        v13 = 16 * v11;
      }

      else
      {
        v13 = 0;
      }

      Instance = _CFRuntimeCreateInstance(v5, 0x1DuLL, (v13 & 0xFF0) + 40, 0, v6, v7, v8, v9);
      v4 = Instance;
      if (Instance)
      {
        *(Instance + 20) = 134217984;
        *(Instance + 16) = *(a1 + 16);
        v15 = atomic_load((a1 + 24));
        atomic_store(CFRetain(v15), (v4 + 24));
        *(v4 + 32) = 0;
        *(v4 + 40) = 0;
        if ((*(v4 + 18) & 1) == 0)
        {
          v16 = *(a1 + 40);
          if (v16)
          {
            v17 = *(v16 + 8);
            if (v17)
            {
              _CFURLAllocateExtraDataspace(v4);
              v18 = *(v4 + 40);
              if (v18)
              {
                v19 = *(v18 + 8);
                if (v19)
                {
                  CFRelease(v19);
                }

                v20 = CFGetAllocator(v4);
                Copy = CFStringCreateCopy(v20, v17);
                v18 = *(v4 + 40);
                *(v18 + 8) = Copy;
              }

              v22 = *(a1 + 40);
              if (v22)
              {
                v23 = *(v22 + 16);
                if (v23 && !v18)
                {
                  _CFURLAllocateExtraDataspace(v4);
                  v18 = *(v4 + 40);
                }
              }

              else
              {
                v23 = 0;
              }

              if (v18)
              {
                *(v18 + 16) = v23;
              }
            }
          }
        }

        if (atomic_load((a1 + 48)))
        {
          atomic_store(_FileCacheCreateShallowCopy(), (v4 + 48));
        }

        memcpy((v4 + 56), (a1 + 56), v13);
      }

      return v4;
    }

    return 0;
  }

  if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || (v2 = a1, CF_IS_OBJC(0x1DuLL, a1)))
  {
    v2 = [a1 _cfurl];
  }

  if ([v2 baseURL] || !objc_msgSend(v2, "isFileURL"))
  {
    return 0;
  }

  return [a1 copy];
}

uint64_t fileCreate(const void *a1, uint64_t a2)
{
  v3 = CFGetAllocator(a1);
  Typed = CFAllocatorAllocateTyped(v3, 40, 0x10600401BE82CDFLL, 0);
  if (Typed)
  {
    v5 = *a2;
    *Typed = *a2;
    if (v5)
    {
      CFRetain(v5);
    }

    *(Typed + 8) = *(a2 + 8);
    *(Typed + 16) = 0;
    *(Typed + 24) = 0;
    *(Typed + 32) = -1;
  }

  return Typed;
}

uint64_t fileOpen(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = CFGetTypeID(a1);
  TypeID = CFReadStreamGetTypeID();
  v10 = v8 == TypeID;
  *a3 = 1;
  if (*a4)
  {
    if (!CFURLGetFileSystemRepresentation(*a4, 1u, buffer, 1026))
    {
      v14 = 2;
      goto LABEL_19;
    }

    if (v8 == TypeID)
    {
      v11 = 0;
    }

    else
    {
      v11 = 1537;
    }

    if ((*(a4 + 24) & 8) != 0)
    {
      v12 = open(buffer, v11 & 0x3F7 | 8, 438);
    }

    else
    {
      v12 = open(buffer, v11, 438);
    }

    *(a4 + 8) = v12;
    if (v12 < 0 || (v13 = *(a4 + 32), v13 != -1) && lseek(v12, v13, 0) == -1 || *(a4 + 16) && !constructCFFD(a4, v10, a1))
    {
      *(a4 + 24) |= 0x20uLL;
      v14 = *__error();
LABEL_19:
      result = 0;
      *(a2 + 8) = v14;
      *a2 = 1;
      goto LABEL_20;
    }
  }

  else if (*(a4 + 16))
  {
    constructCFFD(a4, v10, a1);
  }

  result = 1;
LABEL_20:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

ssize_t fdRead(int a1, void *a2, size_t a3, uint64_t a4, BOOL *a5)
{
  result = read(a1, a2, a3);
  if (result < 0)
  {
    v8 = *__error();
    *a4 = 1;
    result = -1;
  }

  else
  {
    v8 = 0;
    *a5 = result == 0;
  }

  *(a4 + 8) = v8;
  return result;
}

uint64_t CFStringHashNSString(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [a1 length];
  v3 = v2;
  v4 = v10;
  if (v2 >= 97)
  {
    [a1 getCharacters:v10 range:{0, 32}];
    [a1 getCharacters:&v11 range:{(v2 >> 1) - 16, 32}];
    [a1 getCharacters:&v12 range:{v2 - 32, 32}];
    v5 = &v13;
    v6 = &v13;
LABEL_5:
    v4 = v10;
    do
    {
      v3 = v4[3] + 67503105 * v3 + 257 * (257 * (257 * *v4 + v4[1]) + v4[2]);
      v4 += 4;
    }

    while (v4 < v6);
    goto LABEL_9;
  }

  [a1 getCharacters:v10 range:{0, v2}];
  v5 = &v10[v2];
  if ((v2 & 0xFFFFFFFFFFFFFFFCLL) >= 1)
  {
    v6 = &v10[v2 & 0xFFFFFFFFFFFFFFFCLL];
    goto LABEL_5;
  }

LABEL_9:
  while (v4 < v5)
  {
    v7 = *v4++;
    v3 = 257 * v3 + v7;
  }

  v8 = *MEMORY[0x1E69E9840];
  return (v3 << (v2 & 0x1F)) + v3;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  __CFCheckCFInfoPACSignature(uuid);
  v2 = _CFGetNonObjCTypeID(uuid);
  if (v2 != 34)
  {
    _CFAssertMismatchedTypeID(0x22uLL, v2);
  }

  v3 = *(uuid + 2);
  v4 = *(uuid + 3);
  result.byte8 = v4;
  result.byte9 = BYTE1(v4);
  result.byte10 = BYTE2(v4);
  result.byte11 = BYTE3(v4);
  result.byte12 = BYTE4(v4);
  result.byte13 = BYTE5(v4);
  result.byte14 = BYTE6(v4);
  result.byte15 = HIBYTE(v4);
  result.byte0 = v3;
  result.byte1 = BYTE1(v3);
  result.byte2 = BYTE2(v3);
  result.byte3 = BYTE3(v3);
  result.byte4 = BYTE4(v3);
  result.byte5 = BYTE5(v3);
  result.byte6 = BYTE6(v3);
  result.byte7 = HIBYTE(v3);
  return result;
}

ssize_t fileRead(uint64_t a1, void *a2, size_t a3, uint64_t a4, BOOL *a5, uint64_t a6)
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = fdRead(*(a6 + 8), a2, a3, a4, a5);
  v9 = *(a6 + 24);
  if ((v9 & 2) != 0)
  {
    *(a6 + 24) = v9 & 0xFFFFFFFFFFFFFFFDLL;
    if (!*a5)
    {
      if (*(a6 + 16))
      {
        memset(&v14, 0, sizeof(v14));
        if ((fstat(*(a6 + 8), &v14) & 0x80000000) == 0 && (v14.st_mode & 0xF000) == 0x8000)
        {
          v13 = lseek(*(a6 + 8), 0, 1);
          if (v14.st_size == v13)
          {
            _CFFileDescriptorInduceFakeReadCallBack(*(a6 + 16));
          }
        }
      }
    }

    v10 = *(a6 + 16);
    if (v10)
    {
      CFFileDescriptorEnableCallBacks(v10, 1uLL);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

void ___loadLocTable_block_invoke_2(uint64_t a1, const __CFString *a2)
{
  ValueWithKeyPath = _CFPropertyListGetValueWithKeyPath(*(a1 + 40), a2);
  if (ValueWithKeyPath)
  {
    v5 = ValueWithKeyPath;
    if (CFGetTypeID(ValueWithKeyPath) == 18)
    {
      *(*(a1 + 48) + 75) = 1;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a2, 1);
    CFDictionaryAddValue(*(a1 + 56), ValueAtIndex, v5);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void __CFPlatformSpecificStringDictionaryApplyFunction(const void *a1, const __CFDictionary *a2, CFDictionaryRef *a3)
{
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    Value = CFDictionaryGetValue(a2, @"NSStringDeviceSpecificRuleType");
    if (Value)
    {
      v8 = Value;
      v9 = _CFGetProductName();
      if (!CFDictionaryGetCount(v8))
      {
        goto LABEL_16;
      }

      if (!v9 || (v10 = CFDictionaryGetValue(v8, v9)) == 0 && (!CFEqual(v9, @"ipod") && !CFEqual(v9, @"ipad") || (v10 = CFDictionaryGetValue(v8, @"iphone")) == 0))
      {
        v10 = CFDictionaryGetValue(v8, @"other");
        if (!v10)
        {
          goto LABEL_16;
        }
      }

      v11 = v10;
      v12 = CFGetTypeID(v10);
      if (v12 == CFStringGetTypeID() || (v13 = CFGetTypeID(v11), v13 == CFDictionaryGetTypeID()))
      {
        CFDictionarySetValue(a3[1], a1, v11);
      }

      v14 = CFGetTypeID(v11);
      if (v14 != CFStringGetTypeID())
      {
        v15 = CFGetTypeID(v11);
        if (v15 != CFDictionaryGetTypeID())
        {
LABEL_16:
          v16 = CFDictionaryGetValue(*a3, a1);
          v17 = a3[1];
          if (v16)
          {

            CFDictionarySetValue(v17, a1, v16);
          }

          else
          {

            CFDictionaryRemoveValue(v17, a1);
          }
        }
      }
    }
  }
}

CFRunLoopObserverRef CFRunLoopObserverCreateWithHandler(CFAllocatorRef allocator, CFOptionFlags activities, Boolean repeats, CFIndex order, void *block)
{
  v8 = *MEMORY[0x1E69E9840];
  v7.version = 0;
  v7.info = block;
  v7.retain = MEMORY[0x1E69E97F0];
  v7.release = MEMORY[0x1E69E97F8];
  v7.copyDescription = 0;
  result = CFRunLoopObserverCreate(allocator, activities, repeats, order, __CFRunLoopObserverWithHandlerPerform, &v7);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void fileClose(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 < 0)
  {
    v5 = (a2 + 16);
    v7 = *(a2 + 16);
    if (!v7)
    {
      return;
    }
  }

  else
  {
    close(v3);
    v6 = *(a2 + 16);
    v5 = (a2 + 16);
    v4 = v6;
    *(v5 - 2) = -1;
    if (!v6)
    {
      return;
    }

    CFFileDescriptorInvalidate(v4);
    v7 = *v5;
  }

  CFRelease(v7);
  *v5 = 0;
}

uint64_t _CFGetProductName()
{
  if (_CFGetProductName_onceToken != -1)
  {
    _CFGetProductName_cold_1();
  }

  return _CFGetProductName__cfBundlePlatform;
}

void fileFinalize(const void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 < 1)
  {
    if (v5)
    {
      CFRelease(*(a2 + 16));
    }
  }

  else
  {
    if (v5)
    {
      CFFileDescriptorInvalidate(*(a2 + 16));
      CFRelease(*(a2 + 16));
      *(a2 + 16) = 0;
      v4 = *(a2 + 8);
    }

    close(v4);
  }

  if (*a2)
  {
    CFRelease(*a2);
  }

  v6 = CFGetAllocator(a1);

  CFAllocatorDeallocate(v6, a2);
}

void __CFLocalizedFormatStringApplyFunction(const void *a1, const __CFDictionary *a2, uint64_t a3)
{
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    Value = CFDictionaryGetValue(a2, @"NSStringLocalizedFormatKey");
    if (Value)
    {
      v8 = _CFStringCopyWithFomatStringConfiguration(Value, a2);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(*(a3 + 8), a1, v8);

        CFRelease(v9);
      }
    }
  }
}

void __CFVariableWidthStringDictionaryApplyFunction(const void *a1, const __CFDictionary *a2, CFDictionaryRef *a3)
{
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    Value = CFDictionaryGetValue(a2, @"NSStringVariableWidthRuleType");
    if (Value)
    {
      v8 = Value;
      if (CFDictionaryGetCount(Value))
      {
        v9 = _CFStringCreateWithWidthContexts(v8);
        if (v9)
        {
          v10 = v9;
          CFDictionarySetValue(a3[1], a1, v9);

          CFRelease(v10);
        }
      }

      else if (*a3 && (v11 = CFDictionaryGetValue(*a3, a1)) != 0)
      {
        v12 = v11;
        v13 = a3[1];

        CFDictionarySetValue(v13, a1, v12);
      }

      else
      {
        v14 = a3[1];

        CFDictionaryRemoveValue(v14, a1);
      }
    }
  }
}

unint64_t __NSOrderedSetGetIndexPassingTest(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  if ([a1 count])
  {
    if ((a3 & 0x1000000000000000) != 0)
    {
      v8 = [a4 firstIndex];
      v9 = [a4 lastIndex];
    }

    else
    {
      v8 = 0;
      v9 = [a1 count] - 1;
    }

    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL && v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (a3)
      {
        v11 = __CFActiveProcessorCount();
        if (v11 < 2)
        {
          a3 &= ~1uLL;
        }
      }

      else
      {
        v11 = 1;
      }

      if ((a3 & 3) != 0)
      {
        v12 = (v9 - v8 + 1) / v11 / v11;
        if (v12 >= 0x10)
        {
          if (v12 <= 0x1000)
          {
            v13 = (v12 + 15) & 0x3FF0;
          }

          else
          {
            v13 = 4096;
          }
        }

        else
        {
          v13 = 16;
        }

        v21 = v13 + v9 - v8;
        if (a3)
        {
          v46[0] = 0;
          v46[1] = v46;
          v46[2] = 0x2020000000;
          v47 = 0;
          v42 = 0;
          v43 = &v42;
          v44 = 0x2020000000;
          v45 = 0x7FFFFFFFFFFFFFFFLL;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = ____NSOrderedSetGetIndexPassingTest_block_invoke;
          block[3] = &unk_1E6D82388;
          block[10] = v13;
          block[11] = v9;
          block[12] = a3;
          block[4] = a1;
          block[5] = a4;
          block[6] = a2;
          block[7] = v46;
          block[8] = &v42;
          block[9] = v8;
          dispatch_apply(v21 / v13, 0, block);
          v10 = atomic_load(v43 + 3);
          _Block_object_dispose(&v42, 8);
          _Block_object_dispose(v46, 8);
        }

        else
        {
          contexta = v9;
          v37 = a1;
          v38 = a2;
          v40 = a4;
          v46[0] = 0x7FFFFFFFFFFFFFFFLL;
          if (v13 <= v21)
          {
            v22 = v8;
            v23 = 0;
            v24 = v13 - 1;
            v25 = 1;
            v26 = v22;
            v27 = contexta;
            v28 = v21 / v13;
            do
            {
              if ((a3 & 2) != 0)
              {
                if (v24 >= &v27[-v22])
                {
                  v30 = v22;
                }

                else
                {
                  v30 = &v27[1 - v13];
                }

                v29 = v27;
              }

              else
              {
                if (v24 >= &v27[-v22])
                {
                  v29 = contexta;
                }

                else
                {
                  v29 = v24 + v23 * v13 + v22;
                }

                v30 = v26;
              }

              if (__NSOrderedSetChunkIterate(v37, a3, v30, v29, v40, v38, v46, 0, 0))
              {
                break;
              }

              ++v23;
              v27 -= v13;
              v26 += v13;
            }

            while (v25++ < v28);
          }

          v10 = atomic_load(v46);
        }
      }

      else
      {
        v39 = a4;
        v14 = _CFAutoreleasePoolPush();
        LOBYTE(v46[0]) = 0;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v15 = [a1 countByEnumeratingWithState:&v49 objects:v48 count:16];
        if (v15)
        {
          v16 = v15;
          context = v14;
          v36 = v8;
          v17 = 0;
          v10 = 0;
          v18 = *v50;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v50 != v18)
              {
                objc_enumerationMutation(a1);
              }

              v20 = *(*(&v49 + 1) + 8 * i);
              if ((a3 & 0x1000000000000000) == 0 || v36 <= v10 && v10 <= v9 && [v39 containsIndex:v10])
              {
                if ((*(a2 + 16))(a2, v20, v10, v46))
                {
                  goto LABEL_33;
                }

                if (v46[0])
                {
                  goto LABEL_32;
                }

                if (v17 >= 0x3FF)
                {
                  _CFAutoreleasePoolPop(context);
                  context = _CFAutoreleasePoolPush();
                  v17 = 0;
                }

                else
                {
                  ++v17;
                }
              }

              ++v10;
            }

            v16 = [a1 countByEnumeratingWithState:&v49 objects:v48 count:16];
          }

          while (v16);
LABEL_32:
          v10 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_33:
          v14 = context;
        }

        _CFAutoreleasePoolPop(v14);
      }
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v10;
}

Boolean CFPropertyListIsValid(CFPropertyListRef plist, CFPropertyListFormat format)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 1;
  v5 = 0u;
  v6 = 0;
  v4[1] = format;
  result = __CFPropertyListIsValidAux(plist, v4);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef CFURLCopyPathExtension(CFURLRef url)
{
  v10 = *MEMORY[0x1E69E9840];
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCopyPathExtension_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    v2 = [(__CFURL *)url pathExtension];
    v3 = v2;
    if (v2 && !CFStringGetLength(v2))
    {
      CFRelease(v3);
LABEL_10:
      v3 = 0;
    }
  }

  else
  {
    PathComponent = CFURLCopyLastPathComponent(url);
    if (!PathComponent)
    {
      goto LABEL_10;
    }

    v5 = PathComponent;
    v9.location = 0;
    v9.length = 0;
    _CFGetPathExtensionRangesFromPathComponent(PathComponent, &v9.location, 0);
    if (v9.location == -1)
    {
      v3 = 0;
    }

    else
    {
      v6 = CFGetAllocator(url);
      v3 = CFStringCreateWithSubstring(v6, v5, v9);
    }

    CFRelease(v5);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

CFLocaleIdentifier CFLocaleCreateCanonicalLocaleIdentifierFromString(CFAllocatorRef allocator, CFStringRef localeIdentifier)
{
  v23 = *MEMORY[0x1E69E9840];
  if (localeIdentifier && CFStringGetCString(localeIdentifier, buffer, 257, 0x600u))
  {
    __key = 0;
    v19 = 0;
    for (i = buffer; ; ++i)
    {
      if (!*i)
      {
        v21[0] = 0;
        goto LABEL_13;
      }

      if (*i == 64)
      {
        break;
      }
    }

    v21[0] = 64;
    *i = 0;
    v5 = v21;
    do
    {
      do
      {
        v7 = *++i;
        v6 = v7;
      }

      while (v7 == 32);
      *++v5 = v6;
    }

    while (*i);
LABEL_13:
    __key = buffer;
    v19 = 0;
    v8 = bsearch(&__key, oldAppleLocaleToCanonical, 0xB8uLL, 0x10uLL, _CompareTestEntryToTableEntryKey);
    if (v8)
    {
      v9 = v8[1];
      __strlcpy_chk();
      v20[0] = 0;
LABEL_25:
      _AppendKeyValueString(buffer, v20);
      _AppendKeyValueString(buffer, v21);
      result = CFStringCreateWithCString(allocator, buffer, 0x600u);
      goto LABEL_26;
    }

    v16 = 0;
    v17 = 0;
    _UpdateFullLocaleString(buffer, &v17, &v16, v20);
    v10 = v16;
    v11 = v17;
    if (v17 && v16)
    {
      if (strncmp(v17 + 1, v16 + 1, 2uLL))
      {
        goto LABEL_21;
      }

      do
      {
        v12 = v11[3];
        *v11++ = v12;
      }

      while (v12);
      v10 = v16;
    }

    if (!v10)
    {
LABEL_23:
      __key = buffer;
      v14 = bsearch(&__key, localeStringPrefixToDefaults, 0xB7uLL, 0x10uLL, _CompareTestEntryPrefixToTableEntryKey);
      if (v14)
      {
        _RemoveSubstringsIfPresent(buffer, v14[1]);
      }

      goto LABEL_25;
    }

LABEL_21:
    __key = v10;
    v13 = bsearch(&__key, localeStringRegionToDefaults, 5uLL, 0x10uLL, _CompareTestEntryToTableEntryKey);
    if (v13)
    {
      _RemoveSubstringsIfPresent(buffer, v13[1]);
    }

    goto LABEL_23;
  }

  result = 0;
LABEL_26:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

CFNumberFormatterRef CFNumberFormatterCreate(CFAllocatorRef allocator, CFLocaleRef locale, CFNumberFormatterStyle style)
{
  v9 = allocator;
  v55 = *MEMORY[0x1E69E9840];
  if (!allocator)
  {
    v10 = _CFGetTSD(1u);
    if (v10)
    {
      v9 = v10;
    }

    else
    {
      v9 = &__kCFAllocatorSystemDefault;
    }
  }

  Instance = _CFRuntimeCreateInstance(v9, 0x39uLL, 72, 0, v3, v4, v5, v6);
  if (Instance)
  {
    if (!locale)
    {
      locale = CFLocaleGetSystem();
    }

    *(Instance + 32) = style;
    if (style >= (kCFNumberFormatterCurrencyAccountingStyle|kCFNumberFormatterDecimalStyle))
    {
      *(Instance + 32) = 1;
      if (locale)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = dword_1833094CC[style];
      if (locale)
      {
LABEL_10:
        Identifier = CFLocaleGetIdentifier(locale);
        goto LABEL_13;
      }
    }

    Identifier = &stru_1EF068AA8;
LABEL_13:
    if (!CFStringGetCStringPtr(Identifier, 0x600u) && !CFStringGetCString(Identifier, buffer, 768, 0x600u) || (v14 = __cficu_unum_open(), (*(Instance + 16) = v14) == 0))
    {
      CFRelease(Instance);
      Instance = 0;
      goto LABEL_34;
    }

    if (style)
    {
      if (locale)
      {
LABEL_18:
        System = CFRetain(locale);
LABEL_22:
        *(Instance + 24) = System;
        v19 = *(Instance + 32);
        if (v19 > 9 || ((1 << v19) & 0x2E1) == 0)
        {
          AppleICUNumberFormatStringsPref = _CFLocaleGetAppleICUNumberFormatStringsPref(System, v16);
          if (AppleICUNumberFormatStringsPref)
          {
            v35 = AppleICUNumberFormatStringsPref;
            v36 = CFGetTypeID(AppleICUNumberFormatStringsPref);
            if (v36 == CFDictionaryGetTypeID())
            {
              v37 = v19 - 1;
              v38 = v37 > 9 ? @"0" : *(&off_1E6D81D70 + v37);
              Value = CFDictionaryGetValue(v35, v38);
              if (Value)
              {
                v40 = Value;
                v41 = CFGetTypeID(Value);
                if (v41 == CFStringGetTypeID())
                {
                  if (v37 <= 9)
                  {
                    v42 = dword_1833094F8[v37];
                  }

                  v43 = CFLocaleGetIdentifier(*(Instance + 24));
                  if (!CFStringGetCStringPtr(v43, 0x600u))
                  {
                    CFStringGetCString(v43, v54, 768, 0x600u);
                  }

                  v51 = 0;
                  if (__cficu_unum_open())
                  {
                    v51 = 0;
                    v44 = __cficu_unum_toPattern();
                    if (v44 <= 768)
                    {
                      v45 = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, chars, v44);
                      v51 = 0;
                      v46 = *(Instance + 16);
                      v47 = __cficu_unum_toPattern();
                      v48 = v47;
                      if (v47 <= 768)
                      {
                        Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
                        CFStringAppendCharacters(Mutable, chars, v48);
                        result.location = 0;
                        result.length = 0;
                        v56.location = 0;
                        v56.length = v48;
                        if (CFStringFindWithOptions(Mutable, v45, v56, 0, &result))
                        {
                          CFStringReplace(Mutable, result, v40);
                          __CFNumberFormatterApplyPattern(Instance, Mutable);
                        }

                        CFRelease(Mutable);
                      }

                      CFRelease(v45);
                    }

                    __cficu_unum_close();
                  }
                }
              }
            }
          }
        }

        AppleICUNumberSymbolsPref = _CFLocaleGetAppleICUNumberSymbolsPref(*(Instance + 24), v16);
        if (AppleICUNumberSymbolsPref)
        {
          v21 = AppleICUNumberSymbolsPref;
          v22 = CFGetTypeID(AppleICUNumberSymbolsPref);
          if (v22 == CFDictionaryGetTypeID())
          {
            CFDictionaryApplyFunction(v21, __CFNumberFormatterApplySymbolPrefs, Instance);
          }
        }

        v23 = *(Instance + 32);
        if (v23 > 9 || ((1 << v23) & 0x2E0) == 0)
        {
          v30 = *(Instance + 16);
          v31 = __cficu_unum_toPattern();
          if (v31 <= 768)
          {
            *(Instance + 40) = CFStringCreateWithCharacters(v9, chars, v31);
          }
        }

        v24 = *(Instance + 40);
        if (v24)
        {
          *(Instance + 48) = CFRetain(v24);
          *(Instance + 56) = __CFNumberFormatterCreateCompressedString(*(Instance + 40), 1, 0);
        }

        v25 = *(Instance + 32);
        if (v25 > 9 || ((1 << v25) & 0x2E0) == 0)
        {
          v32 = *(Instance + 16);
          *chars = __cficu_unum_getAttribute();
          if (*chars != 1)
          {
            *(Instance + 64) = CFNumberCreate(v9, kCFNumberSInt32Type, chars);
            v33 = *(Instance + 16);
            __cficu_unum_setAttribute();
          }
        }

        v26 = *(Instance + 16);
        __cficu_unum_setAttribute();
        v27 = *(Instance + 16);
        __cficu_unum_setContext();
        goto LABEL_34;
      }
    }

    else
    {
      __cficu_unum_applyPattern();
      v17 = *(Instance + 16);
      __cficu_unum_setAttribute();
      v18 = *(Instance + 16);
      __cficu_unum_setAttribute();
      if (locale)
      {
        goto LABEL_18;
      }
    }

    System = CFLocaleGetSystem();
    goto LABEL_22;
  }

LABEL_34:
  v28 = *MEMORY[0x1E69E9840];
  return Instance;
}

CFMutableDictionaryRef _CFXPreferencesCopyDictionaryForSourceWithBundleID(__CFString *a1)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v2 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFXPreferencesCopyDictionaryForSourceWithBundleID_cold_1();
    }

    v2 = [qword_1ED40BE18 copyPrefs];
  }

  v3 = [(_CFXPreferences *)v2 copyDictionaryForSourceWithIdentifier:a1];

  return v3;
}

__CFString *__CFNumberFormatterCreateCompressedString(CFStringRef theString, int a2, CFIndex *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (theString)
  {
    v4 = theString;
    if (a3)
    {
      v6 = *a3;
      Length = a3[1];
    }

    else
    {
      Length = CFStringGetLength(theString);
      v6 = 0;
    }

    Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetLetter);
    v9 = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
    if (Length >= 1)
    {
      v20 = v4;
      theSet = v9;
      v10 = 0;
      v11 = 0;
      v12 = v6 + Length;
      do
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(v4, v6);
        v14 = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
        if (CFCharacterSetIsCharacterMember(v14, CharacterAtIndex))
        {
          v15 = 32;
        }

        else
        {
          v15 = CharacterAtIndex;
        }

        chars = v15;
        if (++v6 >= Length)
        {
          v16 = 0;
        }

        else
        {
          v16 = CFStringGetCharacterAtIndex(v4, v6);
          v15 = chars;
        }

        if (v15 == 39 && a2 != 0)
        {
          v10 = !v10;
        }

        if (v10 || v15 != 32 || CFCharacterSetIsCharacterMember(Predefined, v11) && CFCharacterSetIsCharacterMember(Predefined, v16))
        {
          goto LABEL_25;
        }

        if (!CFCharacterSetIsCharacterMember(theSet, v11))
        {
          v4 = v20;
          continue;
        }

        v4 = v20;
        if (CFCharacterSetIsCharacterMember(theSet, v16))
        {
LABEL_25:
          CFStringAppendCharacters(Mutable, &chars, 1);
          v11 = chars;
        }
      }

      while (v6 < v12);
    }
  }

  else
  {
    Mutable = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFCharacterSetRef CFCharacterSetGetPredefined(CFCharacterSetPredefinedSet theSetIdentifier)
{
  if ((theSetIdentifier - 16) <= 0xFFFFFFFFFFFFFFF0)
  {
    CFCharacterSetGetPredefined_cold_1(theSetIdentifier, v1, v2, v3, v4, v5, v6, v7);
  }

  return (&__CFBuiltinSets + 6 * theSetIdentifier - 6);
}

void CFNumberFormatterSetProperty(CFNumberFormatterRef formatter, CFNumberFormatterKey key, CFTypeRef value)
{
  v48 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  v45 = 0;
  __CFCheckCFInfoPACSignature(formatter);
  v6 = _CFGetNonObjCTypeID(formatter);
  if (v6 != 57)
  {
    _CFAssertMismatchedTypeID(0x39uLL, v6);
  }

  if (CFEqual(@"kCFNumberFormatterFormattingContextKey", key))
  {
    CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
    v7 = *(formatter + 2);
    __cficu_unum_setContext();
  }

  v8 = *(formatter + 4);
  if ((v8 - 8) < 0xFFFFFFFFFFFFFFFDLL && v8 != 9 || @"kCFNumberFormatterIsLenientKey" == key)
  {
    if (@"kCFNumberFormatterCurrencyCodeKey" == key)
    {
      Length = CFStringGetLength(value);
      if (Length >= 768)
      {
        v13 = 768;
      }

      else
      {
        v13 = Length;
      }

      goto LABEL_58;
    }

    if (@"kCFNumberFormatterDecimalSeparatorKey" == key)
    {
      v15 = CFStringGetLength(value);
      if (v15 >= 768)
      {
        v16 = 768;
      }

      else
      {
        v16 = v15;
      }

      goto LABEL_98;
    }

    if (@"kCFNumberFormatterCurrencyDecimalSeparatorKey" == key)
    {
      v17 = CFStringGetLength(value);
      if (v17 >= 768)
      {
        v16 = 768;
      }

      else
      {
        v16 = v17;
      }

      goto LABEL_98;
    }

    if (@"kCFNumberFormatterAlwaysShowDecimalSeparatorKey" == key)
    {
      v18 = *(formatter + 2);
    }

    else
    {
      if (@"kCFNumberFormatterGroupingSeparatorKey" == key)
      {
        v19 = CFStringGetLength(value);
        if (v19 >= 768)
        {
          v16 = 768;
        }

        else
        {
          v16 = v19;
        }

        goto LABEL_98;
      }

      if (@"kCFNumberFormatterUseGroupingSeparatorKey" != key)
      {
        if (@"kCFNumberFormatterPercentSymbolKey" == key)
        {
          v21 = CFStringGetLength(value);
          if (v21 >= 768)
          {
            v16 = 768;
          }

          else
          {
            v16 = v21;
          }

          goto LABEL_98;
        }

        if (@"kCFNumberFormatterZeroSymbolKey" == key)
        {
          v22 = *(formatter + 9);
          if (value)
          {
            v23 = CFRetain(value);
          }

          else
          {
            v23 = 0;
          }

          *(formatter + 9) = v23;
          if (!v22)
          {
            goto LABEL_99;
          }
        }

        else
        {
          if (@"kCFNumberFormatterNaNSymbolKey" == key)
          {
            v24 = CFStringGetLength(value);
            if (v24 >= 768)
            {
              v16 = 768;
            }

            else
            {
              v16 = v24;
            }

            goto LABEL_98;
          }

          if (@"kCFNumberFormatterInfinitySymbolKey" == key)
          {
            v25 = CFStringGetLength(value);
            if (v25 >= 768)
            {
              v16 = 768;
            }

            else
            {
              v16 = v25;
            }

            goto LABEL_98;
          }

          if (@"kCFNumberFormatterMinusSignKey" == key)
          {
            v26 = CFStringGetLength(value);
            if (v26 >= 768)
            {
              v16 = 768;
            }

            else
            {
              v16 = v26;
            }

            goto LABEL_98;
          }

          if (@"kCFNumberFormatterPlusSignKey" == key)
          {
            v27 = CFStringGetLength(value);
            if (v27 >= 768)
            {
              v16 = 768;
            }

            else
            {
              v16 = v27;
            }

            goto LABEL_98;
          }

          if (@"kCFNumberFormatterCurrencySymbolKey" == key)
          {
            v28 = CFStringGetLength(value);
            if (v28 >= 768)
            {
              v16 = 768;
            }

            else
            {
              v16 = v28;
            }

            goto LABEL_98;
          }

          if (@"kCFNumberFormatterExponentSymbolKey" == key)
          {
            v29 = CFStringGetLength(value);
            if (v29 >= 768)
            {
              v16 = 768;
            }

            else
            {
              v16 = v29;
            }

            goto LABEL_98;
          }

          if (@"kCFNumberFormatterMinIntegerDigitsKey" == key || @"kCFNumberFormatterMaxIntegerDigitsKey" == key || @"kCFNumberFormatterMinFractionDigitsKey" == key || @"kCFNumberFormatterMaxFractionDigitsKey" == key || @"kCFNumberFormatterGroupingSizeKey" == key || @"kCFNumberFormatterSecondaryGroupingSizeKey" == key || @"kCFNumberFormatterRoundingModeKey" == key)
          {
            goto LABEL_102;
          }

          if (@"kCFNumberFormatterRoundingIncrementKey" == key)
          {
            CFNumberGetValue(value, kCFNumberDoubleType, &v45);
            v33 = *(formatter + 2);
            __cficu_unum_setDoubleAttribute();
            goto LABEL_99;
          }

          if (@"kCFNumberFormatterFormatWidthKey" == key || @"kCFNumberFormatterPaddingPositionKey" == key)
          {
LABEL_102:
            CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
            v32 = *(formatter + 2);
            goto LABEL_70;
          }

          if (@"kCFNumberFormatterPaddingCharacterKey" == key)
          {
            v34 = CFStringGetLength(value);
            if (v34 >= 768)
            {
              v13 = 768;
            }

            else
            {
              v13 = v34;
            }

            goto LABEL_58;
          }

          if (@"kCFNumberFormatterDefaultFormatKey" == key)
          {
            goto LABEL_99;
          }

          if (@"kCFNumberFormatterMultiplierKey" != key)
          {
            if (@"kCFNumberFormatterPositivePrefixKey" == key)
            {
              v36 = CFStringGetLength(value);
              if (v36 >= 768)
              {
                v13 = 768;
              }

              else
              {
                v13 = v36;
              }
            }

            else if (@"kCFNumberFormatterPositiveSuffixKey" == key)
            {
              v37 = CFStringGetLength(value);
              if (v37 >= 768)
              {
                v13 = 768;
              }

              else
              {
                v13 = v37;
              }
            }

            else if (@"kCFNumberFormatterNegativePrefixKey" == key)
            {
              v38 = CFStringGetLength(value);
              if (v38 >= 768)
              {
                v13 = 768;
              }

              else
              {
                v13 = v38;
              }
            }

            else
            {
              if (@"kCFNumberFormatterNegativeSuffixKey" != key)
              {
                if (@"kCFNumberFormatterPerMillSymbolKey" == key)
                {
                  v40 = CFStringGetLength(value);
                  if (v40 >= 768)
                  {
                    v16 = 768;
                  }

                  else
                  {
                    v16 = v40;
                  }
                }

                else if (@"kCFNumberFormatterInternationalCurrencySymbolKey" == key)
                {
                  v41 = CFStringGetLength(value);
                  if (v41 >= 768)
                  {
                    v16 = 768;
                  }

                  else
                  {
                    v16 = v41;
                  }
                }

                else
                {
                  if (@"kCFNumberFormatterCurrencyGroupingSeparatorKey" != key)
                  {
                    if (@"kCFNumberFormatterIsLenientKey" == key)
                    {
                      *(formatter + 80) = &__kCFBooleanTrue == value;
                      v43 = *(formatter + 2);
                      goto LABEL_70;
                    }

                    if (@"kCFNumberFormatterUseSignificantDigitsKey" == key)
                    {
                      v44 = *(formatter + 2);
                      goto LABEL_70;
                    }

                    if (@"kCFNumberFormatterMinSignificantDigitsKey" != key && @"kCFNumberFormatterMaxSignificantDigitsKey" != key)
                    {
                      if (@"kCFNumberFormatterUsesCharacterDirectionKey" != key)
                      {
                        if (@"kCFNumberFormatterMinGroupingDigitsKey" != key)
                        {
                          goto LABEL_99;
                        }

                        CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
                        if (valuePtr == -1)
                        {
                          valuePtr = -2;
                        }

                        v11 = *(formatter + 2);
                        goto LABEL_70;
                      }

                      *(formatter + 82) = &__kCFBooleanTrue == value;
LABEL_99:
                      if (_CFExecutableLinkedOnOrAfter(6uLL))
                      {
                        CFNumberFormatterGetFormat(formatter);
                      }

                      goto LABEL_101;
                    }

                    goto LABEL_102;
                  }

                  v42 = CFStringGetLength(value);
                  if (v42 >= 768)
                  {
                    v16 = 768;
                  }

                  else
                  {
                    v16 = v42;
                  }
                }

LABEL_98:
                v50.location = 0;
                v50.length = v16;
                CFStringGetCharacters(value, v50, buffer);
                v30 = *(formatter + 2);
                __cficu_unum_setSymbol();
                goto LABEL_99;
              }

              v39 = CFStringGetLength(value);
              if (v39 >= 768)
              {
                v13 = 768;
              }

              else
              {
                v13 = v39;
              }
            }

LABEL_58:
            v49.location = 0;
            v49.length = v13;
            CFStringGetCharacters(value, v49, buffer);
            v14 = *(formatter + 2);
            __cficu_unum_setTextAttribute();
            goto LABEL_99;
          }

          v22 = *(formatter + 8);
          if (value)
          {
            v35 = CFRetain(value);
          }

          else
          {
            v35 = 0;
          }

          *(formatter + 8) = v35;
          *(formatter + 81) = value != 0;
          if (!v22)
          {
            goto LABEL_99;
          }
        }

        CFRelease(v22);
        goto LABEL_99;
      }

      v20 = *(formatter + 2);
    }

LABEL_70:
    __cficu_unum_setAttribute();
    goto LABEL_99;
  }

LABEL_101:
  v31 = *MEMORY[0x1E69E9840];
}

CFStringRef CFNumberFormatterGetFormat(CFNumberFormatterRef formatter)
{
  v15 = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(formatter);
  v2 = _CFGetNonObjCTypeID(formatter);
  if (v2 != 57)
  {
    _CFAssertMismatchedTypeID(0x39uLL, v2);
  }

  v3 = *(formatter + 4) - 5;
  if (v3 >= 5 || ((0x17u >> v3) & 1) == 0)
  {
    v5 = *(formatter + 2);
    v6 = __cficu_unum_toPattern();
    v7 = v6;
    if (v6 > 768)
    {
      goto LABEL_15;
    }

    v8 = CFGetAllocator(formatter);
    v9 = CFStringCreateWithCharacters(v8, chars, v7);
    if (!v9)
    {
      goto LABEL_15;
    }

    v10 = v9;
    v11 = *(formatter + 5);
    if (v11)
    {
      if (CFEqual(v9, v11))
      {
        CFRelease(v10);
LABEL_15:
        result = *(formatter + 5);
        goto LABEL_16;
      }

      CFRelease(*(formatter + 5));
    }

    *(formatter + 5) = v10;
    v12 = *(formatter + 7);
    if (v12)
    {
      CFRelease(v12);
      v10 = *(formatter + 5);
    }

    *(formatter + 7) = __CFNumberFormatterCreateCompressedString(v10, 1, 0);
    goto LABEL_15;
  }

  result = 0;
LABEL_16:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef CFNumberFormatterCopyProperty(CFNumberFormatterRef formatter, CFNumberFormatterKey key)
{
  v68 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  v64 = 0;
  __CFCheckCFInfoPACSignature(formatter);
  v4 = _CFGetNonObjCTypeID(formatter);
  if (v4 != 57)
  {
    _CFAssertMismatchedTypeID(0x39uLL, v4);
  }

  if (CFEqual(@"kCFNumberFormatterFormattingContextKey", key))
  {
    v5 = *(formatter + 2);
    Context = __cficu_unum_getContext();
LABEL_4:
    valuePtr = Context;
LABEL_5:
    v7 = CFGetAllocator(formatter);
    p_valuePtr = &valuePtr;
    v9 = kCFNumberSInt32Type;
LABEL_6:
    result = CFNumberCreate(v7, v9, p_valuePtr);
LABEL_93:
    v41 = *MEMORY[0x1E69E9840];
    return result;
  }

  v11 = *(formatter + 4);
  if (((v11 - 8) >= 0xFFFFFFFFFFFFFFFDLL || v11 == 9) && @"kCFNumberFormatterIsLenientKey" != key)
  {
LABEL_63:
    result = 0;
    goto LABEL_93;
  }

  if (@"kCFNumberFormatterCurrencyCodeKey" == key)
  {
    v17 = *(formatter + 2);
    TextAttribute = __cficu_unum_getTextAttribute();
    v19 = TextAttribute;
    if (!TextAttribute)
    {
      Identifier = CFLocaleGetIdentifier(*(formatter + 3));
      if (!CFStringGetCStringPtr(Identifier, 0x600u) && !CFStringGetCString(Identifier, buffer, 768, 0x600u))
      {
        goto LABEL_63;
      }

      if (__cficu_unum_open())
      {
        v19 = __cficu_unum_getTextAttribute();
        __cficu_unum_close();
      }

      else
      {
        v19 = 0;
      }
    }

    result = 0;
    if ((v19 - 1) > 0x2FF)
    {
      goto LABEL_93;
    }

LABEL_92:
    v40 = CFGetAllocator(formatter);
    result = CFStringCreateWithCharacters(v40, chars, v19);
    goto LABEL_93;
  }

  if (@"kCFNumberFormatterDecimalSeparatorKey" == key)
  {
    v21 = *(formatter + 2);
LABEL_89:
    Symbol = __cficu_unum_getSymbol();
LABEL_90:
    v39 = Symbol;
    result = 0;
    if (v39 > 768)
    {
      goto LABEL_93;
    }

    v19 = v39;
    goto LABEL_92;
  }

  if (@"kCFNumberFormatterCurrencyDecimalSeparatorKey" == key)
  {
    v22 = *(formatter + 2);
    goto LABEL_89;
  }

  if (@"kCFNumberFormatterAlwaysShowDecimalSeparatorKey" == key)
  {
    v23 = *(formatter + 2);
    goto LABEL_72;
  }

  if (@"kCFNumberFormatterGroupingSeparatorKey" == key)
  {
    v24 = *(formatter + 2);
    goto LABEL_89;
  }

  if (@"kCFNumberFormatterUseGroupingSeparatorKey" == key)
  {
    v25 = *(formatter + 2);
    goto LABEL_72;
  }

  if (@"kCFNumberFormatterPercentSymbolKey" == key)
  {
    v30 = *(formatter + 2);
    goto LABEL_89;
  }

  if (@"kCFNumberFormatterZeroSymbolKey" == key)
  {
    result = *(formatter + 9);
    if (!result)
    {
      goto LABEL_93;
    }

    goto LABEL_81;
  }

  if (@"kCFNumberFormatterNaNSymbolKey" == key)
  {
    v32 = *(formatter + 2);
    goto LABEL_89;
  }

  if (@"kCFNumberFormatterInfinitySymbolKey" == key)
  {
    v33 = *(formatter + 2);
    goto LABEL_89;
  }

  if (@"kCFNumberFormatterMinusSignKey" == key)
  {
    v34 = *(formatter + 2);
    goto LABEL_89;
  }

  if (@"kCFNumberFormatterPlusSignKey" == key)
  {
    v35 = *(formatter + 2);
    goto LABEL_89;
  }

  if (@"kCFNumberFormatterCurrencySymbolKey" == key)
  {
    v36 = *(formatter + 2);
    goto LABEL_89;
  }

  if (@"kCFNumberFormatterExponentSymbolKey" == key)
  {
    v37 = *(formatter + 2);
    goto LABEL_89;
  }

  if (@"kCFNumberFormatterMinIntegerDigitsKey" == key)
  {
    v42 = *(formatter + 2);
    goto LABEL_104;
  }

  if (@"kCFNumberFormatterMaxIntegerDigitsKey" == key)
  {
    v43 = *(formatter + 2);
    goto LABEL_104;
  }

  if (@"kCFNumberFormatterMinFractionDigitsKey" == key)
  {
    v44 = *(formatter + 2);
    goto LABEL_104;
  }

  if (@"kCFNumberFormatterMaxFractionDigitsKey" == key)
  {
    v45 = *(formatter + 2);
    goto LABEL_104;
  }

  if (@"kCFNumberFormatterGroupingSizeKey" == key)
  {
    v46 = *(formatter + 2);
    goto LABEL_104;
  }

  if (@"kCFNumberFormatterSecondaryGroupingSizeKey" == key)
  {
    v47 = *(formatter + 2);
    goto LABEL_104;
  }

  if (@"kCFNumberFormatterRoundingModeKey" == key)
  {
    v48 = *(formatter + 2);
    goto LABEL_104;
  }

  if (@"kCFNumberFormatterRoundingIncrementKey" == key)
  {
    v49 = *(formatter + 2);
    __cficu_unum_getDoubleAttribute();
    v64 = v50;
    v7 = CFGetAllocator(formatter);
    p_valuePtr = &v64;
    v9 = kCFNumberDoubleType;
    goto LABEL_6;
  }

  if (@"kCFNumberFormatterFormatWidthKey" == key)
  {
    v51 = *(formatter + 2);
    goto LABEL_104;
  }

  if (@"kCFNumberFormatterPaddingPositionKey" == key)
  {
    v52 = *(formatter + 2);
    goto LABEL_104;
  }

  if (@"kCFNumberFormatterPaddingCharacterKey" == key)
  {
    v53 = *(formatter + 2);
    goto LABEL_106;
  }

  if (@"kCFNumberFormatterDefaultFormatKey" == key)
  {
    result = *(formatter + 6);
    if (!result)
    {
      goto LABEL_93;
    }
  }

  else
  {
    if (@"kCFNumberFormatterMultiplierKey" != key)
    {
      if (@"kCFNumberFormatterPositivePrefixKey" == key)
      {
        v54 = *(formatter + 2);
      }

      else if (@"kCFNumberFormatterPositiveSuffixKey" == key)
      {
        v55 = *(formatter + 2);
      }

      else if (@"kCFNumberFormatterNegativePrefixKey" == key)
      {
        v56 = *(formatter + 2);
      }

      else
      {
        if (@"kCFNumberFormatterNegativeSuffixKey" != key)
        {
          if (@"kCFNumberFormatterPerMillSymbolKey" == key)
          {
            v58 = *(formatter + 2);
          }

          else if (@"kCFNumberFormatterInternationalCurrencySymbolKey" == key)
          {
            v59 = *(formatter + 2);
          }

          else
          {
            if (@"kCFNumberFormatterCurrencyGroupingSeparatorKey" != key)
            {
              if (@"kCFNumberFormatterIsLenientKey" == key)
              {
                v27 = &kCFBooleanTrue;
                v28 = *(formatter + 80) == 0;
                goto LABEL_73;
              }

              if (@"kCFNumberFormatterUseSignificantDigitsKey" != key)
              {
                if (@"kCFNumberFormatterMinSignificantDigitsKey" == key)
                {
                  v62 = *(formatter + 2);
                }

                else
                {
                  if (@"kCFNumberFormatterMaxSignificantDigitsKey" != key)
                  {
                    if (@"kCFNumberFormatterMinGroupingDigitsKey" == key)
                    {
                      v14 = *(formatter + 2);
                      Attribute = __cficu_unum_getAttribute();
                      if (Attribute == -2)
                      {
                        v16 = -1;
                      }

                      else
                      {
                        v16 = Attribute;
                      }

                      valuePtr = v16;
                      goto LABEL_5;
                    }

                    goto LABEL_63;
                  }

                  v63 = *(formatter + 2);
                }

LABEL_104:
                Context = __cficu_unum_getAttribute();
                goto LABEL_4;
              }

              v61 = *(formatter + 2);
LABEL_72:
              v26 = __cficu_unum_getAttribute();
              v27 = &kCFBooleanTrue;
              v28 = v26 == 0;
LABEL_73:
              if (v28)
              {
                v27 = &kCFBooleanFalse;
              }

              v29 = *MEMORY[0x1E69E9840];
              result = *v27;
              goto LABEL_76;
            }

            v60 = *(formatter + 2);
          }

          goto LABEL_89;
        }

        v57 = *(formatter + 2);
      }

LABEL_106:
      Symbol = __cficu_unum_getTextAttribute();
      goto LABEL_90;
    }

    result = *(formatter + 8);
    if (!result)
    {
      goto LABEL_93;
    }
  }

LABEL_81:
  v31 = *MEMORY[0x1E69E9840];
LABEL_76:

  return CFRetain(result);
}

uint64_t _dictionaryContainsAllKeysInSet(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___dictionaryContainsAllKeysInSet_block_invoke;
  v5[3] = &unk_1E6DD1658;
  v5[4] = &v6;
  v5[5] = a1;
  CFSetApply(a2, v5);
  v2 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_18317E778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFIndex CFAllocatorGetPreferredSizeForSize(CFAllocatorRef allocator, CFIndex size, CFOptionFlags hint)
{
  if (!allocator)
  {
    allocator = _CFGetTSD(1u);
    if (!allocator)
    {
      allocator = &__kCFAllocatorSystemDefault;
    }
  }

  v5 = *allocator & ~MEMORY[0x1E69E58F0];
  if ((*allocator & MEMORY[0x1E69E58F0]) != 0)
  {
    v5 |= *allocator & MEMORY[0x1E69E58F0];
  }

  if (v5 == qword_1ED40C0D0)
  {
    v6 = 0;
    if (size >= 1)
    {
      v7 = *(allocator + 25);
      if (v7)
      {
        v6 = v7(size, hint, *(allocator + 18));
      }
    }

    if (v6 <= size)
    {
      return size;
    }

    else
    {
      return v6;
    }
  }

  else
  {

    return malloc_good_size(size);
  }
}

const __CFURL *_CFURLPromiseCopyPhysicalURL(const __CFURL *result)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (result)
  {
    v1 = result;
    if (_CFURLIsFileURL(result))
    {
      CFURLCopyResourcePropertyForKey(v1, @"_NSURLPromisePhysicalURLKey", v3, 0);
      result = v3[0];
      if (v3[0] == &__kCFNull)
      {
        result = CFRetain(v1);
      }
    }

    else
    {
      result = 0;
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void _loadLocTable(const void *a1, void *a2, CFTypeRef cf1, void *a4, void *a5, uint64_t a6, CFURLRef *a7)
{
  values[1] = *MEMORY[0x1E69E9840];
  values[0] = cf1;
  if (cf1)
  {
    v13 = *(a6 + 80);
    if (!v13 || !CFEqual(cf1, v13))
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      if (!a4 || *(a6 + 73) && *(a6 + 72))
      {
        cf = CFArrayCreate(&__kCFAllocatorSystemDefault, values, 1, &kCFTypeArrayCallBacks);
        v14 = [[NSSet alloc] initWithObjects:&cf count:1];
        StringsFromPlistData = __CFBundleCreateStringsFromPlistData(a1, v14, *(a6 + 56), *(a6 + 66), a2);
        ValueWithKeyPath = _CFPropertyListGetValueWithKeyPath(StringsFromPlistData, values[0]);
        v17 = ValueWithKeyPath;
        if (ValueWithKeyPath && CFGetTypeID(ValueWithKeyPath) == 18 && CFDictionaryGetCount(v17) >= 1)
        {
          v23 = 0;
          _CFBundleGetLocTableProvenanceForLanguage(*(a6 + 56), values[0], &v24, &v23);
          if (v23)
          {
            *(a6 + 75) = 1;
          }

          CFDictionaryApplyFunction(v17, __CFStringsDictAddFunction, a5);
          *(v29 + 24) = 1;
          *(a6 + 74) = 1;
          *(a6 + 80) = CFRetain(values[0]);
        }

        CFRelease(cf);

        if (StringsFromPlistData)
        {
          CFRelease(StringsFromPlistData);
        }
      }

      else
      {
        if (_dictionaryContainsAllKeysInSet(a5, a4))
        {
LABEL_23:
          _Block_object_dispose(&v28, 8);
          goto LABEL_24;
        }

        Count = CFSetGetCount(a4);
        Mutable = CFSetCreateMutable(&__kCFAllocatorSystemDefault, Count, &kCFTypeSetCallBacks);
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = ___loadLocTable_block_invoke;
        v27[3] = &__block_descriptor_48_e13_v24__0r_v8_16l;
        v27[4] = values[0];
        v27[5] = Mutable;
        CFSetApply(a4, v27);
        v20 = __CFBundleCreateStringsFromPlistData(a1, Mutable, *(a6 + 56), *(a6 + 66), a2);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = ___loadLocTable_block_invoke_2;
        v26[3] = &unk_1E6DD15E8;
        v26[6] = a6;
        v26[7] = a5;
        v26[4] = &v28;
        v26[5] = v20;
        CFSetApply(Mutable, v26);
        if (v20)
        {
          CFRelease(v20);
        }

        CFRelease(Mutable);
      }

      if (a7 && !*a7 && *(v29 + 24))
      {
        v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"/LocTable/%@.lproj", values[0]);
        *a7 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, v21, kCFURLPOSIXPathStyle, 1u);
        CFRelease(v21);
      }

      goto LABEL_23;
    }
  }

LABEL_24:
  v22 = *MEMORY[0x1E69E9840];
}

const void *___dictionaryContainsAllKeysInSet_block_invoke(uint64_t a1, const void *a2, _BYTE *a3)
{
  result = CFDictionaryGetValue(*(a1 + 40), a2);
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

void ___loadLocTable_block_invoke(uint64_t a1, void *a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = *(a1 + 32);
  values[1] = a2;
  v3 = CFArrayCreate(&__kCFAllocatorSystemDefault, values, 2, &kCFTypeArrayCallBacks);
  CFSetAddValue(*(a1 + 40), v3);
  CFRelease(v3);
  v4 = *MEMORY[0x1E69E9840];
}

void _CFURLPromiseSetPhysicalURL(const __CFURL *a1, const __CFURL *a2)
{
  if (a1 && _CFURLIsFileURL(a1))
  {
    if (a2 == a1 || a2)
    {

      _CFURLSetPermanentResourcePropertyForKey();
    }

    else
    {

      CFURLClearResourcePropertyCacheForKey(a1, @"_NSURLPromisePhysicalURLKey");
    }
  }
}

void *__CFBundleCreateStringsFromPlistData(CFTypeRef cf, const __CFSet *a2, const __CFData *a3, int a4, void *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  error = 0;
  if (!a2)
  {
    v12 = (a4 != 0) << 16;
    v13 = CFGetAllocator(cf);
    v14 = CFPropertyListCreateWithData(v13, a3, v12, 0, &error);
    if (v14)
    {
      v11 = v14;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v11))
      {
        goto LABEL_20;
      }

      v16 = _CFBundleLocalizedStringLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __CFBundleCreateStringsFromPlistData_cold_1();
      }

      v17 = v11;
      goto LABEL_18;
    }

    if (error)
    {
      v22 = _CFBundleLocalizedStringLogger();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v28 = cf;
        v29 = 2112;
        v30 = a5;
        v31 = 2112;
        v32 = error;
        v19 = "Unable to load .strings file: %@ / %@: %@";
        v20 = v22;
        v21 = 32;
        goto LABEL_22;
      }

LABEL_17:
      v17 = error;
LABEL_18:
      CFRelease(v17);
    }

LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  v25 = 0;
  if (a4)
  {
    v9 = 65537;
  }

  else
  {
    v9 = 1;
  }

  v10 = CFGetAllocator(cf);
  if (!_CFPropertyListCreateFiltered(v10, a3, v9, a2, &v25, &error))
  {
    if (error)
    {
      v18 = _CFBundleLocalizedStringLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v28 = a2;
        v29 = 2112;
        v30 = cf;
        v31 = 2112;
        v32 = a5;
        v33 = 2112;
        v34 = error;
        v19 = "Unable to read key-paths %@ from .strings file: %@ / %@: %@";
        v20 = v18;
        v21 = 42;
LABEL_22:
        _os_log_error_impl(&dword_1830E6000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  v11 = v25;
LABEL_20:
  v23 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t ___CFBasicHashFindBucket_Linear_Indirect_NoCollision(uint64_t a1, unint64_t a2)
{
  v3 = __CFBasicHashTableSizes[*(a1 + 26)];
  v4 = *(CFBasicHashCallBackPtrs[(*(a1 + 32) >> 49) & 0x1FLL] + 8 * ((*(a1 + 32) >> 44) & 0x1FLL));
  if (v4)
  {
    a2 = v4(a2);
  }

  result = a2 % v3;
  v6 = 48;
  if ((*(a1 + 18) & 4) == 0)
  {
    v6 = 40;
  }

  v7 = *(a1 + v6);
  if (v3 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v3;
  }

  while (*(v7 + 8 * result))
  {
    if (v3 <= result + 1)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0;
    }

    result = result + 1 - v9;
    if (!--v8)
    {
      return -1;
    }
  }

  return result;
}

const __CFURL *__CFBundleCopyFrameworkURLForExecutablePath(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v5 = v2;
  v21 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x804uLL);
  bzero(v19, 0x804uLL);
  MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(&__kCFAllocatorSystemDefault, 0, 0, 0, 0);
  Length = CFStringGetLength(v5);
  if (Length >= 1026)
  {
    v8 = 1026;
  }

  else
  {
    v8 = Length;
  }

  v22.location = 0;
  v22.length = v8;
  CFStringGetCharacters(v5, v22, buffer);
  v9 = _CFLengthAfterDeletingPathExtension(buffer, v8);
  _CFStartOfLastPathComponent(buffer, v9);
  __memmove_chk();
  PathComponent = _CFLengthAfterDeletingLastPathComponent(buffer, v9);
  if (v4)
  {
    v11 = &stru_1EF068AA8;
  }

  else
  {
    v11 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, v19);
  }

  if (PathComponent >= 1)
  {
    do
    {
      v12 = _CFStartOfLastPathComponent(buffer, PathComponent);
      if (PathComponent <= v12)
      {
        break;
      }

      CFStringSetExternalCharactersNoCopy(MutableWithExternalCharactersNoCopy, &buffer[v12], PathComponent - v12, 1026 - v12);
      if (!v4 && CFEqual(MutableWithExternalCharactersNoCopy, @"Resources"))
      {
        v16 = 0;
        goto LABEL_26;
      }

      if (CFEqual(MutableWithExternalCharactersNoCopy, @"Support Files") || CFEqual(MutableWithExternalCharactersNoCopy, @"Contents"))
      {
        if (v4 || (v13 = _CFStartOfLastPathComponent(buffer, PathComponent), CFStringSetExternalCharactersNoCopy(MutableWithExternalCharactersNoCopy, &buffer[v13], PathComponent - v13, 1026 - v13), CFStringHasPrefix(MutableWithExternalCharactersNoCopy, v11)))
        {
          v15 = _CFLengthAfterDeletingLastPathComponent(buffer, PathComponent);
          v14 = MutableWithExternalCharactersNoCopy;
          goto LABEL_22;
        }
      }

      else if (CFStringHasSuffix(MutableWithExternalCharactersNoCopy, @".framework") && (v4 || CFStringHasPrefix(MutableWithExternalCharactersNoCopy, v11)))
      {
        v14 = MutableWithExternalCharactersNoCopy;
        v15 = PathComponent;
LABEL_22:
        CFStringSetExternalCharactersNoCopy(v14, buffer, v15, 1026);
        v16 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, MutableWithExternalCharactersNoCopy, kCFURLPOSIXPathStyle, 1u);
        if (_CFBundleCouldBeBundle(v16))
        {
          goto LABEL_25;
        }

        CFRelease(v16);
        break;
      }

      PathComponent = _CFLengthAfterDeletingLastPathComponent(buffer, PathComponent);
    }

    while (PathComponent > 0);
  }

  v16 = 0;
LABEL_25:
  if (!v4)
  {
LABEL_26:
    CFRelease(v11);
  }

  CFStringSetExternalCharactersNoCopy(MutableWithExternalCharactersNoCopy, 0, 0, 0);
  CFRelease(MutableWithExternalCharactersNoCopy);
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void _CFBundleEnsureBundleExistsForImagePath(uint64_t a1, uint64_t a2)
{
  v2 = __CFBundleCopyFrameworkURLForExecutablePath(a1, a2);
  if (v2)
  {
    v3 = v2;
    v4 = _CFBundleCreate(&__kCFAllocatorSystemDefault, v2, 4, 0);
    if (v4)
    {
      v5 = v4;
      os_unfair_lock_lock(v4 + 24);
      if (!*(v5 + 52))
      {
        _CFBundleDlfcnCheckLoaded(v5);
        v6 = *(v5 + 48);
        if (v6 != 6 && v6 != 1)
        {
          if (!v6)
          {
            *(v5 + 48) = 4;
          }

          *(v5 + 64) = 1;
        }

        if (!*(v5 + 52))
        {
          if (_CFBundleLoadingLogger_onceToken != -1)
          {
            _CFBundleEnsureBundleExistsForImagePath_cold_1();
          }

          if (os_log_type_enabled(_CFBundleLoadingLogger__log, OS_LOG_TYPE_DEBUG))
          {
            _CFBundleEnsureBundleExistsForImagePath_cold_2();
          }
        }
      }

      os_unfair_lock_unlock((v5 + 96));
      InfoDictionary = CFBundleGetInfoDictionary(v5);
      _CFBundleInitPlugIn(v5, InfoDictionary, 0);
      _CFPlugInHandleDynamicRegistration(v5);
    }

    else
    {
      if (_CFBundleLoadingLogger_onceToken != -1)
      {
        _CFBundleEnsureBundleExistsForImagePath_cold_3();
      }

      if (os_log_type_enabled(_CFBundleLoadingLogger__log, OS_LOG_TYPE_DEBUG))
      {
        _CFBundleEnsureBundleExistsForImagePath_cold_4();
      }
    }

    CFRelease(v3);
  }
}

void ___copyIngestedCacheResult_block_invoke(uint64_t a1, const void *a2, const void *a3)
{
  CFDictionaryAddValue(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  CFSetRemoveValue(v5, a2);
}

uint64_t CFUniCharMapCaseTo(unsigned int a1, __int16 *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, unsigned __int16 *a6)
{
  v8 = a4;
  *&v61[36] = *MEMORY[0x1E69E9840];
  v10 = (a1 == 931) & a5;
  v11 = v61;
  v57 = a1 & 0xFFFFFFDF;
  v12 = (a5 & 2) != 0 && a1 == 775;
  v13 = !v12;
  v14 = BYTE2(a1);
  v15 = 1 << (a1 & 7);
  v59 = a1 >> 3;
  v54 = a4;
  v16 = __CFUniCharBitmapDataArray;
  while (1)
  {
    if (v10)
    {
      v30 = v54 == 0;
      v31 = 931;
      v32 = 962;
      goto LABEL_75;
    }

    if (!a6)
    {
      goto LABEL_51;
    }

    if ((a5 & 0x10) != 0)
    {
      if (a1 == 769)
      {
        goto LABEL_126;
      }

      if (a1 == 836)
      {
        v31 = 776;
        goto LABEL_77;
      }

      v17 = v16;
      IsMemberOf = CFUniCharIsMemberOf(a1, 9u);
      v16 = v17;
      if (IsMemberOf)
      {
        v56 = v15;
        v19 = CFUniCharDecomposeCharacter(a1, &v60, 10);
        if (v19 >= 2)
        {
          v20 = &v61[4 * v19 - 4];
          v21 = v61;
          do
          {
            if (*v21 == 769)
            {
              result = CFUniCharMapCaseTo(v60, a2, a3, v8, 0, a6);
              if (!result)
              {
                *a2 = v60;
                result = 1;
              }

              do
              {
                v28 = *v11;
                if (*v11 != 769)
                {
                  if (HIWORD(v28))
                  {
                    v29 = &a2[result];
                    *v29 = ((v28 + 67043328) >> 10) - 10240;
                    result += 2;
                    v29[1] = v28 & 0x3FF | 0xDC00;
                  }

                  else
                  {
                    a2[result++] = v28;
                  }
                }

                ++v11;
              }

              while (v11 < v20);
              goto LABEL_80;
            }

            ++v21;
          }

          while (v21 < v20);
        }

        v15 = v56;
        v16 = v17;
      }
    }

    v22 = *a6;
    if (v22 > 0x746B)
    {
      if (v22 != 31329)
      {
        if (v22 != 29804)
        {
          goto LABEL_51;
        }

        if (!v13)
        {
          goto LABEL_126;
        }

        if (v8)
        {
          goto LABEL_51;
        }

        if ((a5 & 4) != 0)
        {
          if (a1 > 204)
          {
            switch(a1)
            {
              case 0xCDu:
                goto LABEL_127;
              case 0x128u:
LABEL_128:
                v46 = a2;
                *a2 = 50790505;
                v47 = 771;
                goto LABEL_129;
              case 0x12Eu:
                v48 = 303;
                goto LABEL_138;
            }

            goto LABEL_51;
          }

          if (a1 == 73)
          {
            v48 = 105;
LABEL_138:
            *a2 = v48 | 0x3070000;
LABEL_65:
            result = 2;
            goto LABEL_80;
          }

          if (a1 == 74)
          {
            v48 = 106;
            goto LABEL_138;
          }
        }

        else
        {
          if (a1 == 296)
          {
            goto LABEL_128;
          }

          if (a1 == 205)
          {
LABEL_127:
            v46 = a2;
            *a2 = 50790505;
            v47 = 769;
            goto LABEL_129;
          }
        }

        if (a1 == 204)
        {
          v46 = a2;
          *a2 = 50790505;
          v47 = 768;
LABEL_129:
          v46[2] = v47;
          result = 3;
          goto LABEL_80;
        }

        goto LABEL_51;
      }
    }

    else
    {
      if (v22 == 27758)
      {
        if (v57 == 74)
        {
          if ((a5 & 8) != 0)
          {
            v41 = 74;
          }

          else
          {
            v41 = 106;
          }

          if ((v8 - 1) >= 2)
          {
            v31 = v41;
          }

          else
          {
            v31 = 74;
          }

          goto LABEL_77;
        }

        goto LABEL_51;
      }

      if (v22 != 29300)
      {
        goto LABEL_51;
      }
    }

    if (a1 <= 304)
    {
      if (a1 == 73)
      {
        goto LABEL_104;
      }

      if (a1 == 105 || a1 == 304)
      {
        v30 = v8 == 3 || v8 == 0;
        v31 = 304;
        v32 = 105;
        goto LABEL_75;
      }

      goto LABEL_51;
    }

    if (a1 != 775)
    {
      if (a1 != 305)
      {
        goto LABEL_51;
      }

LABEL_104:
      if (v8 != 3 && v8)
      {
        v31 = 73;
        goto LABEL_77;
      }

      v30 = (a5 & 4) == 0;
      v31 = 105;
      v32 = 305;
LABEL_75:
      if (v30)
      {
        v31 = v32;
      }

      goto LABEL_77;
    }

    if ((a5 & 2) != 0)
    {
      if (!v8)
      {
        goto LABEL_126;
      }

      v31 = 775;
LABEL_77:
      *a2 = v31;
      goto LABEL_79;
    }

LABEL_51:
    v23 = (v8 + 87) >= 0x54 ? v8 + 103 : v8 + 188;
    v24 = v8 == -102 ? 108 : v23;
    if (v24 > 0x63)
    {
      v24 -= 85;
    }

    v25 = &v16[4 * v24 - 16];
    if (v14 < *v25)
    {
      v26 = *(*(v25 + 1) + 8 * v14);
      if (v26)
      {
        if ((v15 & *(v26 + v59)) != 0)
        {
          break;
        }
      }
    }

    v12 = v8 == 3;
    v8 = 0;
    if (!v12)
    {
      goto LABEL_63;
    }
  }

  v34 = (&__CFUniCharCaseMappingTable)[v8];
  if (*v34 <= a1)
  {
    v35 = &v34[2 * (__CFUniCharCaseMappingTableCounts[v8] - 1)];
    if (*v35 >= a1)
    {
      do
      {
        v36 = &v34[2 * ((v35 - v34) >> 4)];
        if (*v36 <= a1)
        {
          if (*v36 >= a1)
          {
            v37 = v36[1];
            goto LABEL_90;
          }

          v34 = (v36 + 2);
        }

        else
        {
          v35 = (v36 - 2);
        }
      }

      while (v34 <= v35);
    }
  }

  v37 = 0;
LABEL_90:
  if (v8 != 2 || v37)
  {
    if (!v37)
    {
      goto LABEL_63;
    }

    goto LABEL_108;
  }

  if (a1 - 125252 < 0xFFFE171D)
  {
    goto LABEL_63;
  }

  v38 = &__CFUniCharToUppercaseMappingTable;
  v39 = (&__CFUniCharToUppercaseMappingTable + 12408);
  while (2)
  {
    v40 = &v38[2 * ((v39 - v38) >> 4)];
    if (*v40 > a1)
    {
      v39 = v40 - 2;
      goto LABEL_98;
    }

    if (*v40 < a1)
    {
      v38 = v40 + 2;
LABEL_98:
      if (v38 > v39)
      {
        goto LABEL_63;
      }

      continue;
    }

    break;
  }

  v37 = v40[1];
  if (!v37)
  {
    goto LABEL_63;
  }

  LODWORD(v8) = 1;
LABEL_108:
  result = HIBYTE(v37) & 0x1F;
  if (result == 1)
  {
    if ((v37 & 0x80000000) == 0)
    {
      *a2 = v37;
      goto LABEL_79;
    }

    if (a3 < 2)
    {
      goto LABEL_63;
    }

    *a2 = (((v37 & 0xFFFC00) + 67043328) >> 10) - 10240;
    a2[1] = v37 & 0x3FF | 0xDC00;
    goto LABEL_65;
  }

  if (result >= a3)
  {
    goto LABEL_63;
  }

  v42 = (*(&__CFUniCharCaseMappingExtraTable + v8) + 4 * (v37 & 0xFFFFFF));
  if ((v37 & 0x80000000) == 0)
  {
    if (result)
    {
      v43 = HIBYTE(v37) & 0x1F;
      v44 = a2;
      do
      {
        v45 = *v42++;
        *v44++ = v45;
        --v43;
      }

      while (v43);
      goto LABEL_80;
    }

LABEL_126:
    result = 0;
    goto LABEL_80;
  }

  if (!result)
  {
    goto LABEL_63;
  }

  v49 = result + 1;
  result = 0;
  while (2)
  {
    v51 = *v42++;
    v50 = v51;
    if (v51 >= 0x10000)
    {
      v52 = result + 2;
      if (result + 2 >= a3)
      {
        break;
      }

      v53 = &a2[result];
      *v53 = (((v50 & 0xFFFC00) + 67043328) >> 10) - 10240;
      v53[1] = v50 & 0x3FF | 0xDC00;
      goto LABEL_146;
    }

    v52 = result + 1;
    if (result + 1 < a3)
    {
      a2[result] = v50;
LABEL_146:
      result = v52;
      if (--v49 <= 1)
      {
        goto LABEL_63;
      }

      continue;
    }

    break;
  }

  if (v49 == 2)
  {
    goto LABEL_80;
  }

LABEL_63:
  if (a1 >= 0x10000)
  {
    *a2 = (((a1 & 0xFFFC00) + 67043328) >> 10) - 10240;
    a2[1] = a1 & 0x3FF | 0xDC00;
    goto LABEL_65;
  }

  *a2 = a1;
LABEL_79:
  result = 1;
LABEL_80:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFLengthAfterDeletingPathExtension(_WORD *a1, uint64_t a2)
{
  result = _CFStartOfPathExtension(a1, a2);
  if (!result)
  {
    return a2;
  }

  return result;
}

uint64_t _CFStartOfPathExtension(_WORD *a1, uint64_t a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  v3 = &a1[a2 - 1];
  while (--a2)
  {
    if (*(v3 - 1) == 47)
    {
      return 0;
    }

    v4 = *v3--;
    if (v4 == 46)
    {
      if (a2 == 2 && a1[1] == 58 && (*a1 & 0xFFDFu) - 65 < 0x1A)
      {
        return 0;
      }

      return a2;
    }
  }

  return a2;
}

BOOL _CFBundleCouldBeBundle(CFURLRef url)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v4 = 0;
  v1 = _CFGetFileProperties(&__kCFAllocatorSystemDefault, url, &v5, &v4, 0, 0, 0, 0);
  result = 0;
  if (!v1)
  {
    if (v5)
    {
      result = (v4 & 0xF000) == 0x4000 && (v4 & 0x124) != 0;
    }

    else
    {
      result = 0;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void _CFPreferencesSetBackupDisabled(__CFString *a1, const __CFString *a2, const void *a3, __CFString *a4, int a5)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v10 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesSetBackupDisabled_cold_1();
    }

    v10 = [qword_1ED40BE18 copyPrefs];
  }

  v11 = v10;
  [(_CFXPreferences *)v10 setBackupDisabled:a1 identifier:a2 user:a3 host:a4 container:?];
}

CFLocaleRef CFNumberFormatterGetLocale(CFNumberFormatterRef formatter)
{
  __CFCheckCFInfoPACSignature(formatter);
  v2 = _CFGetNonObjCTypeID(formatter);
  if (v2 != 57)
  {
    _CFAssertMismatchedTypeID(0x39uLL, v2);
  }

  return *(formatter + 3);
}

CFMutableStringRef _CFBundleCopyLocalizedStringForLocalizationAndTableURL(unint64_t *a1, void *a2, __CFString *a3, __CFString *a4, const void *a5, CFTypeRef *a6)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = a5;
  if (a5)
  {
    v11 = CFArrayCreate(0, v16, 1, &kCFTypeArrayCallBacks);
    v12 = _CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption(a1, a2, a3, a4, v11, 0, a6);
    if (v11)
    {
      CFRelease(v11);
    }

    v13 = *MEMORY[0x1E69E9840];
    return v12;
  }

  else
  {
    v15 = *MEMORY[0x1E69E9840];

    return _CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption(a1, a2, a3, a4, 0, 0, a6);
  }
}

CFArrayRef CFBundleCopyResourceURLsOfType(CFBundleRef bundle, CFStringRef resourceType, CFStringRef subDirName)
{
  if (bundle)
  {
    return _CFBundleCopyFindResources(bundle, 0, subDirName, 0, resourceType, subDirName, 0, 1, 0, 0);
  }

  return CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
}

uint64_t __CFPropertyListKeyPassesFilterSet(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ____CFPropertyListKeyPassesFilterSet_block_invoke;
  v5[3] = &unk_1E6D82038;
  v5[4] = &v6;
  v5[5] = a1;
  CFSetApply(a2, v5);
  v2 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_18318028C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CFErrorSetCallBackBlockForDomain(const void *a1, const void *a2)
{
  if (!_CFErrorCallBackTable)
  {
    _CFErrorInitializeCallBackTable();
  }

  os_unfair_lock_lock_with_options();
  if (a2)
  {
    CFDictionarySetValue(_CFErrorCallBackTable, a1, a2);
  }

  else
  {
    CFDictionaryRemoveValue(_CFErrorCallBackTable, a1);
  }

  os_unfair_lock_unlock(&_CFErrorLock);
}

uint64_t parseDataTag(uint64_t a1, __CFData **a2)
{
  v4 = *(a1 + 8);
  if (*(a1 + 80))
  {
    Typed = 0;
    v6 = *(a1 + 8);
  }

  else
  {
    Typed = CFAllocatorAllocateTyped(*(a1 + 32), 256, 0x100004077774924, 0);
    v6 = *(a1 + 8);
  }

  if (v6 >= *(a1 + 16))
  {
    v10 = 0;
LABEL_29:
    if (*(a1 + 80))
    {
      result = checkForCloseTag(a1, "data", 4uLL);
      if (!result)
      {
        return result;
      }

      Mutable = 0;
      goto LABEL_35;
    }

    v19 = *(a1 + 32);
    if (*(a1 + 40) == 2)
    {
      Mutable = CFDataCreateMutable(v19, 0);
      CFDataAppendBytes(Mutable, Typed, v10);
      CFAllocatorDeallocate(*(a1 + 32), Typed);
      if (Mutable)
      {
        goto LABEL_34;
      }
    }

    else
    {
      Mutable = CFDataCreateWithBytesNoCopy(v19, Typed, v10, *(a1 + 32));
      if (Mutable)
      {
LABEL_34:
        if (!checkForCloseTag(a1, "data", 4uLL))
        {
          CFRelease(Mutable);
          return 0;
        }

LABEL_35:
        *a2 = Mutable;
        return 1;
      }
    }

    *(a1 + 8) = v4;
    v20 = lineNumber(a1);
    Error = __CFPropertyListCreateError(3840, @"Could not interpret <data> at line %u (should be base64-encoded)", v20);
    result = 0;
    *(a1 + 24) = Error;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  LODWORD(v10) = 0;
  v11 = 256;
  v12 = MEMORY[0x1E69E9830];
  while (1)
  {
    v13 = *v6;
    if (v13 != 61)
    {
      break;
    }

    ++v9;
LABEL_11:
    v14 = parseDataTag_dataDecodeTable[v13];
    if ((v14 & 0x80000000) == 0)
    {
      ++v7;
      v8 = v14 + (v8 << 6);
      if (!*(a1 + 80) && (v7 & 3) == 0)
      {
        v15 = v10 + 2;
        if (v11 <= v15)
        {
          if (v11 >= 0x40000)
          {
            if (HIBYTE(v11))
            {
              v11 += 0x40000;
            }

            else
            {
              v11 *= 2;
            }
          }

          else
          {
            v11 *= 4;
          }

          Typed = __CFSafelyReallocateWithAllocatorTyped(*(a1 + 32), Typed, v11, 242956814, 0, 0);
          v12 = MEMORY[0x1E69E9830];
        }

        Typed[v10] = BYTE2(v8);
        if (v9 > 1)
        {
          LODWORD(v10) = v10 + 1;
        }

        else
        {
          Typed[v10 + 1] = BYTE1(v8);
          if (v9 == 1)
          {
            LODWORD(v10) = v10 + 2;
          }

          else
          {
            LODWORD(v10) = v10 + 3;
            Typed[v15] = v8;
          }
        }
      }
    }

    v16 = *(a1 + 16);
    v6 = (*(a1 + 8) + 1);
    *(a1 + 8) = v6;
    if (v6 >= v16)
    {
LABEL_27:
      v10 = v10;
      goto LABEL_29;
    }
  }

  if (v13 == 60)
  {
    goto LABEL_27;
  }

  if ((v13 & 0x80) == 0)
  {
    v9 &= (*(v12 + 4 * v13 + 60) << 17) >> 31;
    goto LABEL_11;
  }

  __maskrune(*v6, 0x4000uLL);
  v22 = lineNumber(a1);
  *(a1 + 24) = __CFPropertyListCreateError(3840, @"Could not interpret <data> on line %u (invalid character 0x%hhX)", v22, v13);
  if (Typed)
  {
    CFAllocatorDeallocate(*(a1 + 32), Typed);
  }

  return 0;
}

CFRunLoopTimerRef CFRunLoopTimerCreateWithHandler(CFAllocatorRef allocator, CFAbsoluteTime fireDate, CFTimeInterval interval, CFOptionFlags flags, CFIndex order, void *block)
{
  v9 = *MEMORY[0x1E69E9840];
  v8.version = 0;
  v8.info = block;
  v8.retain = MEMORY[0x1E69E97F0];
  v8.release = MEMORY[0x1E69E97F8];
  v8.copyDescription = 0;
  result = CFRunLoopTimerCreate(allocator, fireDate, interval, flags, order, _runLoopTimerWithBlockContext, &v8);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void CFRunLoopRun(void)
{
  do
  {
    Current = CFRunLoopGetCurrent();
    v1 = _CFRunLoopRunSpecificWithOptions(Current, @"kCFRunLoopDefaultMode", 0, 1.0e10);
    if ((__CF_FORK_STATE & 2) == 0)
    {
      __CF_USED();
    }

    if (__CF_FORK_STATE)
    {
      __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
    }
  }

  while ((v1 - 3) < 0xFFFFFFFE);
}

CFArrayRef CFLocaleCopyPreferredLanguages(void)
{
  v0 = [NSLocale _preferredLanguagesForCurrentUser:0];

  return v0;
}

CFRange CFURLGetByteRangeForComponent(CFURLRef url, CFURLComponentType component, CFRange *rangeIncludingSeparators)
{
  v50 = *MEMORY[0x1E69E9840];
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLGetByteRangeForComponent_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, url))
    {
      url = [(__CFURL *)url _cfurl];
    }

    v49[0] = 0;
    v49[1] = 0;
    v6 = [(__CFURL *)url _rangeForComponent:component rangeIncludingSeparators:v49];
    if (rangeIncludingSeparators)
    {
      *rangeIncludingSeparators = *v49;
    }

    goto LABEL_97;
  }

  v49[0] = 0;
  v49[1] = 0;
  if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, url))
  {
    url = [(__CFURL *)url _cfurl];
  }

  v8 = *(url + 4);
  if ((v8 & 0x4000) == 0)
  {
    if (component == kCFURLComponentResourceSpecifier)
    {
      if (v8)
      {
        v20 = *(url + 8);
      }

      else
      {
        v20 = 0;
      }

      v22 = atomic_load(url + 3);
      Length = CFStringGetLength(v22);
      if (v20 + 1 == Length)
      {
        v13 = Length;
      }

      else
      {
        v13 = v20;
      }

      if (v20 + 1 == Length)
      {
        v21 = 0;
      }

      else
      {
        v21 = Length - v20;
      }

      if (v20 + 1 == Length)
      {
        v10 = -1;
      }

      else
      {
        v10 = v20 + 1;
      }

      if (v20 + 1 == Length)
      {
        v9 = 0;
      }

      else
      {
        v9 = Length - v20 - 1;
      }

      goto LABEL_72;
    }

    if (component == kCFURLComponentScheme)
    {
      if (v8)
      {
        v10 = *(url + 7);
        v9 = *(url + 8);
      }

      else
      {
        v9 = 0;
        v10 = -1;
      }

      v13 = 0;
      v21 = v9 + 1;
      goto LABEL_72;
    }

    v21 = 0;
    v9 = 0;
    v13 = -1;
    goto LABEL_40;
  }

  v11 = component - 1;
  if ((component - 1) > 0xB || ((0xDFFu >> v11) & 1) == 0)
  {
    goto LABEL_94;
  }

  v12 = qword_183378208[v11];
  *(url + 4);
  if ((v12 & v8) == 0)
  {
    if (component == kCFURLComponentScheme || component == kCFURLComponentParameterString)
    {
      goto LABEL_67;
    }

    v24 = 0;
    v25 = 1;
    do
    {
      *(url + 4);
      if ((v25 & v8) != 0)
      {
        v24 = v25;
      }

      if (2 * v25 > 256)
      {
        break;
      }

      v26 = v12 & (2 * v25);
      v25 *= 2;
    }

    while (!v26);
    if (!v24)
    {
LABEL_67:
      if (!rangeIncludingSeparators)
      {
        v9 = 0;
        goto LABEL_87;
      }

      v13 = 0;
      v21 = 0;
      v9 = 0;
      v28 = 0;
      v10 = -1;
LABEL_75:
      v30 = atomic_load(url + 3);
      v52.location = 0;
      v52.length = v13;
      CFStringGetBytes(v30, v52, *(url + 5), 0, 0, 0, 0, &rangeIncludingSeparators->location);
      if (v10 == -1)
      {
        v49[0] = -1;
        v49[1] = v28;
        v36 = atomic_load(url + 3);
        v55.location = v13;
        v55.length = v21;
        CFStringGetBytes(v36, v55, *(url + 5), 0, 0, 0, 0, &rangeIncludingSeparators->length);
      }

      else
      {
        v31 = v28 + v10;
        v32 = v21 + v13;
        if (v10 == v13)
        {
          location = rangeIncludingSeparators->location;
        }

        else
        {
          v48 = 0;
          v37 = atomic_load(url + 3);
          v56.location = v13;
          v56.length = v10 - v13;
          CFStringGetBytes(v37, v56, *(url + 5), 0, 0, 0, 0, &v48);
          location = v48 + v13;
        }

        v49[0] = location;
        v38 = atomic_load(url + 3);
        v57.location = v10;
        v57.length = v9;
        CFStringGetBytes(v38, v57, *(url + 5), 0, 0, 0, 0, &v49[1]);
        if (v32 == v31)
        {
          v39 = v49[1] + v49[0];
        }

        else
        {
          v48 = 0;
          v40 = atomic_load(url + 3);
          v58.location = v31;
          v58.length = v32 - v31;
          CFStringGetBytes(v40, v58, *(url + 5), 0, 0, 0, 0, &v48);
          v39 = v49[1] + v49[0] + v48;
        }

        rangeIncludingSeparators->length = v39 - rangeIncludingSeparators->location;
      }

LABEL_88:
      v6 = v49[0];
      v7 = v49[1];
      goto LABEL_97;
    }

    if (v24 == 1)
    {
      if (v8)
      {
        v27 = *(url + 8);
      }

      else
      {
        v27 = 0;
      }

      if ((v8 & 0x20) != 0)
      {
        v45 = 0;
        v46 = 32;
        do
        {
          v47 = v46;
          v46 >>= 1;
          v45 += v8 & 1;
          LODWORD(v8) = v8 >> 1;
        }

        while ((v47 & 2) == 0);
        v44 = *(url + 2 * v45 + 7);
      }

      else
      {
        v44 = -1;
      }

      v21 = 0;
      v9 = 0;
      if (v27 + 1 == v44)
      {
        v13 = v27 + 1;
      }

      else
      {
        v13 = v27 + 3;
      }
    }

    else
    {
      if ((v8 & v24) == 0)
      {
        goto LABEL_94;
      }

      if (v24)
      {
        v41 = 0;
      }

      else
      {
        LODWORD(v41) = 0;
        do
        {
          v42 = v24;
          LODWORD(v24) = v24 >> 1;
          v41 = (v8 & 1) + v41;
          LODWORD(v8) = v8 >> 1;
        }

        while ((v42 & 2) == 0);
      }

      v21 = 0;
      v9 = 0;
      v13 = *(url + 2 * v41 + 8) + *(url + 2 * v41 + 7);
    }

LABEL_40:
    v10 = -1;
    goto LABEL_72;
  }

  v13 = 0;
  v14 = 0;
  v9 = 0;
  v15 = (url + 56);
  v10 = -1;
  v16 = 1;
  while (v14)
  {
    *(url + 4);
    if ((v16 & v8) != 0)
    {
      goto LABEL_26;
    }

    v14 = 1;
LABEL_33:
    v19 = v16 >= 0x81;
    v16 *= 2;
    if (v19)
    {
      goto LABEL_70;
    }
  }

  v14 = (v16 & v12) != 0;
  *(url + 4);
  if ((v16 & v8) == 0)
  {
    goto LABEL_33;
  }

  if ((v16 & v12) == 0)
  {
    v14 = 0;
    v13 = v15[1] + *v15;
LABEL_32:
    v15 += 2;
    goto LABEL_33;
  }

LABEL_26:
  if (v16 <= v12)
  {
    v17 = *v15 - v10 + v15[1];
    v18 = v10 == -1;
    v14 = 1;
    if (v10 == -1)
    {
      v10 = *v15;
    }

    if (v18)
    {
      v9 = v15[1];
    }

    else
    {
      v9 = v17;
    }

    goto LABEL_32;
  }

  v29 = *v15;
  if (*v15 != -1)
  {
    goto LABEL_71;
  }

LABEL_70:
  v29 = v9 + v10;
LABEL_71:
  v21 = v29 - v13;
LABEL_72:
  if (v13 != -1)
  {
    if (rangeIncludingSeparators)
    {
      v28 = v9;
      goto LABEL_75;
    }

    if (v10 != -1)
    {
      v34 = atomic_load(url + 3);
      v53.location = 0;
      v53.length = v10;
      CFStringGetBytes(v34, v53, *(url + 5), 0, 0, 0, 0, v49);
      v35 = atomic_load(url + 3);
      v54.location = v10;
      v54.length = v9;
      CFStringGetBytes(v35, v54, *(url + 5), 0, 0, 0, 0, &v49[1]);
      goto LABEL_88;
    }

LABEL_87:
    v49[0] = -1;
    v49[1] = v9;
    goto LABEL_88;
  }

LABEL_94:
  v7 = 0;
  if (rangeIncludingSeparators)
  {
    *rangeIncludingSeparators = xmmword_183306FB0;
  }

  v6 = -1;
LABEL_97:
  v43 = *MEMORY[0x1E69E9840];
  result.length = v7;
  result.location = v6;
  return result;
}