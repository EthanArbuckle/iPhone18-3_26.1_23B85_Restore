void sub_23F2E2A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48)
{
  sub_23F0771F4((v48 - 160));
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a40)
  {
    operator delete(a40);
  }

  if (!a48)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a48);
  _Unwind_Resume(a1);
}

void sub_23F2E2F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (a31)
  {
    operator delete(a31);
  }

  sub_23F2E6568(&a38);
  _Unwind_Resume(a1);
}

uint64_t sub_23F2E2F80(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    if (sub_23F07515C(a1) == 239)
    {
      if (sub_23F07515C(a1) != 187 || sub_23F07515C(a1) != 191)
      {
        v2 = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
LABEL_35:
        *(a1 + 104) = v2;
        return 14;
      }
    }

    else
    {
      v3 = (a1 + 40);
      v4 = *(a1 + 40);
      *(a1 + 24) = 1;
      --*(a1 + 32);
      if (v4 || (v3 = (a1 + 48), (v4 = *(a1 + 48)) != 0))
      {
        *v3 = v4 - 1;
      }

      if (*(a1 + 20) != -1)
      {
        --*(a1 + 64);
      }
    }
  }

  sub_23F073748(a1);
  if (*(a1 + 16) == 1)
  {
    v5 = (a1 + 48);
    while (1)
    {
      if (*(a1 + 20) != 47)
      {
        goto LABEL_30;
      }

      v6 = sub_23F07515C(a1);
      if (v6 != 47)
      {
        break;
      }

      do
      {
        v10 = sub_23F07515C(a1);
      }

      while ((v10 + 1) > 0xE || ((1 << (v10 + 1)) & 0x4803) == 0);
LABEL_29:
      sub_23F073748(a1);
      if ((*(a1 + 16) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    if (v6 == 42)
    {
      do
      {
        while (1)
        {
          v7 = sub_23F07515C(a1);
          if (v7 != 42)
          {
            break;
          }

          if (sub_23F07515C(a1) == 47)
          {
            goto LABEL_29;
          }

          *(a1 + 24) = 1;
          v8 = *(a1 + 40);
          --*(a1 + 32);
          v9 = (a1 + 40);
          if (v8 || (v8 = *v5, v9 = (a1 + 48), *v5))
          {
            *v9 = v8 - 1;
          }

          if (*(a1 + 20) != -1)
          {
            --*(a1 + 64);
          }
        }
      }

      while ((v7 + 1) >= 2);
      v2 = "invalid comment; missing closing '*/'";
    }

    else
    {
      v2 = "invalid comment; expecting '/' or '*' after '/'";
    }

    goto LABEL_35;
  }

LABEL_30:
  v12 = *(a1 + 20);
  result = 8;
  switch(v12)
  {
    case -1:
    case 0:
      return 15;
    case 34:
      if (*(a1 + 103) < 0)
      {
        **(a1 + 80) = 0;
        *(a1 + 88) = 0;
        v42 = *(a1 + 20);
      }

      else
      {
        *(a1 + 80) = 0;
        *(a1 + 103) = 0;
        LOBYTE(v42) = 34;
      }

      v43 = *(a1 + 56);
      *(a1 + 64) = v43;
      v44 = *(a1 + 72);
      if (v43 >= v44)
      {
        operator new();
      }

      *v43 = v42;
      v45 = (a1 + 80);
      *(a1 + 64) = v43 + 1;
      v123 = vdupq_n_s64(1uLL);
      while (2)
      {
        *(a1 + 32) = vaddq_s64(*(a1 + 32), v123);
        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          v49 = *(a1 + 20);
        }

        else
        {
          v50 = *a1;
          if (*a1 == *(a1 + 8))
          {
            v49 = -1;
          }

          else
          {
            v49 = *v50;
            *a1 = v50 + 1;
          }

          *(a1 + 20) = v49;
        }

        if (v49 == -1)
        {
          v2 = "invalid string: missing closing quote";
          goto LABEL_35;
        }

        v52 = *(a1 + 64);
        v51 = *(a1 + 72);
        if (v52 >= v51)
        {
          v54 = *(a1 + 56);
          v55 = (v52 - v54);
          v56 = v52 - v54 + 1;
          if (v56 < 0)
          {
            goto LABEL_340;
          }

          v57 = v51 - v54;
          if (2 * v57 > v56)
          {
            v56 = 2 * v57;
          }

          if (v57 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v58 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v58 = v56;
          }

          if (v58)
          {
            operator new();
          }

          v59 = v52 - v54;
          *v55 = v49;
          v53 = v55 + 1;
          memcpy(0, v54, v59);
          *(a1 + 56) = 0;
          *(a1 + 64) = v55 + 1;
          *(a1 + 72) = 0;
          if (v54)
          {
            operator delete(v54);
          }
        }

        else
        {
          *v52 = v49;
          v53 = v52 + 1;
        }

        *(a1 + 64) = v53;
        v60 = *(a1 + 20);
        if (v60 == 10)
        {
          v111 = *(a1 + 48) + 1;
          *(a1 + 40) = 0;
          *(a1 + 48) = v111;
          v2 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
          goto LABEL_35;
        }

        v2 = "invalid string: missing closing quote";
        switch(v60)
        {
          case -1:
            goto LABEL_35;
          case 0:
            v2 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
            goto LABEL_35;
          case 1:
            v2 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
            goto LABEL_35;
          case 2:
            v2 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
            goto LABEL_35;
          case 3:
            v2 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
            goto LABEL_35;
          case 4:
            v2 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
            goto LABEL_35;
          case 5:
            v2 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
            goto LABEL_35;
          case 6:
            v2 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
            goto LABEL_35;
          case 7:
            v2 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
            goto LABEL_35;
          case 8:
            v2 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
            goto LABEL_35;
          case 9:
            v2 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
            goto LABEL_35;
          case 11:
            v2 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
            goto LABEL_35;
          case 12:
            v2 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
            goto LABEL_35;
          case 13:
            v2 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
            goto LABEL_35;
          case 14:
            v2 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
            goto LABEL_35;
          case 15:
            v2 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
            goto LABEL_35;
          case 16:
            v2 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
            goto LABEL_35;
          case 17:
            v2 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
            goto LABEL_35;
          case 18:
            v2 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
            goto LABEL_35;
          case 19:
            v2 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
            goto LABEL_35;
          case 20:
            v2 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
            goto LABEL_35;
          case 21:
            v2 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
            goto LABEL_35;
          case 22:
            v2 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
            goto LABEL_35;
          case 23:
            v2 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
            goto LABEL_35;
          case 24:
            v2 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
            goto LABEL_35;
          case 25:
            v2 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
            goto LABEL_35;
          case 26:
            v2 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
            goto LABEL_35;
          case 27:
            v2 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
            goto LABEL_35;
          case 28:
            v2 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
            goto LABEL_35;
          case 29:
            v2 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
            goto LABEL_35;
          case 30:
            v2 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
            goto LABEL_35;
          case 31:
            v2 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
            goto LABEL_35;
          case 32:
          case 33:
          case 35:
          case 36:
          case 37:
          case 38:
          case 39:
          case 40:
          case 41:
          case 42:
          case 43:
          case 44:
          case 45:
          case 46:
          case 47:
          case 48:
          case 49:
          case 50:
          case 51:
          case 52:
          case 53:
          case 54:
          case 55:
          case 56:
          case 57:
          case 58:
          case 59:
          case 60:
          case 61:
          case 62:
          case 63:
          case 64:
          case 65:
          case 66:
          case 67:
          case 68:
          case 69:
          case 70:
          case 71:
          case 72:
          case 73:
          case 74:
          case 75:
          case 76:
          case 77:
          case 78:
          case 79:
          case 80:
          case 81:
          case 82:
          case 83:
          case 84:
          case 85:
          case 86:
          case 87:
          case 88:
          case 89:
          case 90:
          case 91:
          case 93:
          case 94:
          case 95:
          case 96:
          case 97:
          case 98:
          case 99:
          case 100:
          case 101:
          case 102:
          case 103:
          case 104:
          case 105:
          case 106:
          case 107:
          case 108:
          case 109:
          case 110:
          case 111:
          case 112:
          case 113:
          case 114:
          case 115:
          case 116:
          case 117:
          case 118:
          case 119:
          case 120:
          case 121:
          case 122:
          case 123:
          case 124:
          case 125:
          case 126:
          case 127:
            goto LABEL_209;
          case 34:
            return 4;
          case 92:
            v107 = sub_23F07515C(a1);
            v2 = "invalid string: forbidden character after backslash";
            if (v107 <= 101)
            {
              if (v107 > 91)
              {
                if (v107 == 92)
                {
                  std::string::push_back((a1 + 80), 92);
                  continue;
                }

                if (v107 == 98)
                {
                  std::string::push_back((a1 + 80), 8);
                  continue;
                }
              }

              else
              {
                if (v107 == 34)
                {
                  std::string::push_back((a1 + 80), 34);
                  continue;
                }

                if (v107 == 47)
                {
                  std::string::push_back((a1 + 80), 47);
                  continue;
                }
              }

              goto LABEL_35;
            }

            if (v107 <= 113)
            {
              if (v107 == 102)
              {
                std::string::push_back((a1 + 80), 12);
                continue;
              }

              if (v107 == 110)
              {
                std::string::push_back((a1 + 80), 10);
                continue;
              }

              goto LABEL_35;
            }

            if (v107 == 114)
            {
              std::string::push_back((a1 + 80), 13);
              continue;
            }

            if (v107 == 116)
            {
              std::string::push_back((a1 + 80), 9);
              continue;
            }

            if (v107 != 117)
            {
              goto LABEL_35;
            }

            v108 = sub_23F0752C4(a1);
            if (v108 == -1)
            {
              goto LABEL_342;
            }

            v109 = v108;
            if ((v108 & 0xFFFFFC00) == 0xD800)
            {
              if (sub_23F07515C(a1) != 92 || sub_23F07515C(a1) != 117)
              {
                goto LABEL_343;
              }

              v110 = sub_23F0752C4(a1);
              if (v110 == -1)
              {
LABEL_342:
                v2 = "invalid string: '\\u' must be followed by 4 hex digits";
                goto LABEL_35;
              }

              if (v110 >> 10 != 55)
              {
LABEL_343:
                v2 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
                goto LABEL_35;
              }

              v109 = v110 + (v109 << 10) - 56613888;
              goto LABEL_238;
            }

            if ((v108 & 0xFFFFFC00) == 0xDC00)
            {
              v2 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
              goto LABEL_35;
            }

            if (v108 > 127)
            {
              if (v108 > 0x7FF)
              {
                if (!HIWORD(v108))
                {
                  std::string::push_back((a1 + 80), (v108 >> 12) | 0xE0);
                  goto LABEL_239;
                }

LABEL_238:
                std::string::push_back((a1 + 80), (v109 >> 18) | 0xF0);
                std::string::push_back((a1 + 80), (v109 >> 12) & 0x3F | 0x80);
LABEL_239:
                std::string::push_back((a1 + 80), (v109 >> 6) & 0x3F | 0x80);
                std::string::push_back((a1 + 80), v109 & 0x3F | 0x80);
                continue;
              }

              std::string::push_back((a1 + 80), (v108 >> 6) | 0xC0);
              v106 = v109 & 0x3F | 0x80;
            }

            else
            {
              v106 = v108;
            }

LABEL_225:
            std::string::push_back((a1 + 80), v106);
            continue;
          case 194:
          case 195:
          case 196:
          case 197:
          case 198:
          case 199:
          case 200:
          case 201:
          case 202:
          case 203:
          case 204:
          case 205:
          case 206:
          case 207:
          case 208:
          case 209:
          case 210:
          case 211:
          case 212:
          case 213:
          case 214:
          case 215:
          case 216:
          case 217:
          case 218:
          case 219:
          case 220:
          case 221:
          case 222:
          case 223:
            std::string::push_back((a1 + 80), v60);
            *(a1 + 32) = vaddq_s64(*(a1 + 32), vdupq_n_s64(1uLL));
            if (*(a1 + 24) == 1)
            {
              *(a1 + 24) = 0;
              v61 = *(a1 + 20);
            }

            else
            {
              v62 = *a1;
              if (*a1 == *(a1 + 8))
              {
                v61 = -1;
              }

              else
              {
                v61 = *v62;
                *a1 = v62 + 1;
              }

              *(a1 + 20) = v61;
            }

            if (v61 == -1)
            {
              goto LABEL_270;
            }

            v64 = *(a1 + 64);
            v63 = *(a1 + 72);
            if (v64 < v63)
            {
              *v64 = v61;
              v65 = v64 + 1;
              goto LABEL_173;
            }

            v66 = *(a1 + 56);
            v67 = (v64 - v66);
            v68 = v64 - v66 + 1;
            if (v68 >= 0)
            {
              v69 = v63 - v66;
              if (2 * v69 > v68)
              {
                v68 = 2 * v69;
              }

              if (v69 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v70 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v70 = v68;
              }

              if (v70)
              {
                operator new();
              }

              v81 = v64 - v66;
              *v67 = v61;
              v65 = v67 + 1;
              memcpy(0, v66, v81);
              *(a1 + 56) = 0;
              *(a1 + 64) = v67 + 1;
              *(a1 + 72) = 0;
              if (v66)
              {
                operator delete(v66);
              }

LABEL_173:
              *(a1 + 64) = v65;
              v60 = *(a1 + 20);
              if (v60 == 10)
              {
                goto LABEL_305;
              }

LABEL_208:
              if ((v60 - 192) >= 0xFFFFFFC0)
              {
LABEL_209:
                v102 = *(a1 + 103);
                if (v102 < 0)
                {
                  v103 = *(a1 + 96) & 0x7FFFFFFFFFFFFFFFLL;
                  if (*(a1 + 88) == v103 - 1)
                  {
                    if (v103 == 0x7FFFFFFFFFFFFFF8)
                    {
                      goto LABEL_341;
                    }

                    v104 = *v45;
                    if ((v103 - 1) >= 0x3FFFFFFFFFFFFFF3)
                    {
                      operator new();
                    }

LABEL_215:
                    operator new();
                  }

                  v47 = *v45;
                  v46 = *(a1 + 88);
                  *(a1 + 88) = v46 + 1;
                }

                else
                {
                  if (*(a1 + 103) == 22)
                  {
                    goto LABEL_215;
                  }

                  v46 = *(a1 + 103);
                  *(a1 + 103) = (v102 + 1) & 0x7F;
                  v47 = a1 + 80;
                }

                v48 = (v47 + v46);
                *v48 = v60;
                v48[1] = 0;
                continue;
              }

              goto LABEL_270;
            }

            goto LABEL_340;
          case 224:
            std::string::push_back((a1 + 80), -32);
            sub_23F07515C(a1);
            v105 = *(a1 + 20);
            if ((v105 - 192) < 0xFFFFFFE0)
            {
              goto LABEL_270;
            }

            goto LABEL_223;
          case 225:
          case 226:
          case 227:
          case 228:
          case 229:
          case 230:
          case 231:
          case 232:
          case 233:
          case 234:
          case 235:
          case 236:
          case 238:
          case 239:
            std::string::push_back((a1 + 80), v60);
            *(a1 + 32) = vaddq_s64(*(a1 + 32), vdupq_n_s64(1uLL));
            if (*(a1 + 24) == 1)
            {
              *(a1 + 24) = 0;
              v71 = *(a1 + 20);
            }

            else
            {
              v72 = *a1;
              if (*a1 == *(a1 + 8))
              {
                v71 = -1;
              }

              else
              {
                v71 = *v72;
                *a1 = v72 + 1;
              }

              *(a1 + 20) = v71;
            }

            if (v71 == -1)
            {
              goto LABEL_270;
            }

            v74 = *(a1 + 64);
            v73 = *(a1 + 72);
            if (v74 >= v73)
            {
              v76 = *(a1 + 56);
              v77 = (v74 - v76);
              v78 = v74 - v76 + 1;
              if (v78 < 0)
              {
                goto LABEL_340;
              }

              v79 = v73 - v76;
              if (2 * v79 > v78)
              {
                v78 = 2 * v79;
              }

              if (v79 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v80 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v80 = v78;
              }

              if (v80)
              {
                operator new();
              }

              v83 = v74 - v76;
              *v77 = v71;
              v75 = v77 + 1;
              memcpy(0, v76, v83);
              *(a1 + 56) = 0;
              *(a1 + 64) = v77 + 1;
              *(a1 + 72) = 0;
              if (v76)
              {
                operator delete(v76);
              }
            }

            else
            {
              *v74 = v71;
              v75 = v74 + 1;
            }

            *(a1 + 64) = v75;
            v84 = *(a1 + 20);
            if (v84 == 10)
            {
              goto LABEL_305;
            }

            if ((v84 - 192) < 0xFFFFFFC0)
            {
              goto LABEL_270;
            }

            v85 = *(a1 + 103);
            if (v85 < 0)
            {
              v86 = *(a1 + 96) & 0x7FFFFFFFFFFFFFFFLL;
              if (*(a1 + 88) == v86 - 1)
              {
                if (v86 == 0x7FFFFFFFFFFFFFF8)
                {
                  goto LABEL_341;
                }

                v87 = *v45;
                if ((v86 - 1) >= 0x3FFFFFFFFFFFFFF3)
                {
                  operator new();
                }

LABEL_187:
                operator new();
              }

              v89 = *v45;
              v88 = *(a1 + 88);
              *(a1 + 88) = v88 + 1;
            }

            else
            {
              if (*(a1 + 103) == 22)
              {
                goto LABEL_187;
              }

              v88 = *(a1 + 103);
              *(a1 + 103) = (v85 + 1) & 0x7F;
              v89 = a1 + 80;
            }

            v90 = (v89 + v88);
            *v90 = v84;
            v90[1] = 0;
            *(a1 + 32) = vaddq_s64(*(a1 + 32), vdupq_n_s64(1uLL));
            if (*(a1 + 24))
            {
              *(a1 + 24) = 0;
              v91 = *(a1 + 20);
              if (v91 == -1)
              {
                goto LABEL_270;
              }
            }

            else
            {
              v92 = *a1;
              if (*a1 == *(a1 + 8))
              {
                *(a1 + 20) = -1;
                goto LABEL_270;
              }

              v93 = *v92;
              LOBYTE(v91) = *v92;
              *a1 = v92 + 1;
              *(a1 + 20) = v93;
              if (v93 == -1)
              {
LABEL_270:
                v2 = "invalid string: ill-formed UTF-8 byte";
                goto LABEL_35;
              }
            }

            v94 = *(a1 + 64);
            v95 = *(a1 + 72);
            if (v94 < v95)
            {
              *v94 = v91;
              v96 = v94 + 1;
              goto LABEL_207;
            }

            v97 = *(a1 + 56);
            v98 = (v94 - v97);
            v99 = v94 - v97 + 1;
            if (v99 >= 0)
            {
              v100 = v95 - v97;
              if (2 * v100 > v99)
              {
                v99 = 2 * v100;
              }

              if (v100 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v101 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v101 = v99;
              }

              if (v101)
              {
                operator new();
              }

              *v98 = v91;
              v96 = v98 + 1;
              memcpy(0, v97, v94 - v97);
              *(a1 + 56) = 0;
              *(a1 + 64) = v96;
              *(a1 + 72) = 0;
              if (v97)
              {
                operator delete(v97);
              }

LABEL_207:
              *(a1 + 64) = v96;
              v60 = *(a1 + 20);
              if (v60 != 10)
              {
                goto LABEL_208;
              }

LABEL_305:
              v120 = *(a1 + 48) + 1;
              *(a1 + 40) = 0;
              *(a1 + 48) = v120;
              v2 = "invalid string: ill-formed UTF-8 byte";
              goto LABEL_35;
            }

LABEL_340:
            sub_23EF3AE74();
          case 237:
            std::string::push_back((a1 + 80), -19);
            sub_23F07515C(a1);
            v105 = *(a1 + 20);
            if ((v105 - 160) < 0xFFFFFFE0)
            {
              goto LABEL_270;
            }

            goto LABEL_223;
          case 240:
            std::string::push_back((a1 + 80), -16);
            sub_23F07515C(a1);
            v82 = *(a1 + 20);
            if ((v82 - 192) < 0xFFFFFFD0)
            {
              goto LABEL_270;
            }

            goto LABEL_222;
          case 241:
          case 242:
          case 243:
            std::string::push_back((a1 + 80), v60);
            sub_23F07515C(a1);
            v82 = *(a1 + 20);
            if ((v82 - 192) < 0xFFFFFFC0)
            {
              goto LABEL_270;
            }

            goto LABEL_222;
          case 244:
            std::string::push_back((a1 + 80), -12);
            sub_23F07515C(a1);
            v82 = *(a1 + 20);
            if ((v82 - 144) < 0xFFFFFFF0)
            {
              goto LABEL_270;
            }

LABEL_222:
            std::string::push_back((a1 + 80), v82);
            sub_23F07515C(a1);
            v105 = *(a1 + 20);
            if ((v105 - 192) < 0xFFFFFFC0)
            {
              goto LABEL_270;
            }

LABEL_223:
            std::string::push_back((a1 + 80), v105);
            sub_23F07515C(a1);
            if ((*(a1 + 20) - 192) < 0xFFFFFFC0)
            {
              goto LABEL_270;
            }

            v106 = *(a1 + 20);
            goto LABEL_225;
          default:
            goto LABEL_270;
        }
      }

    case 44:
      return 13;
    case 45:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
      if (*(a1 + 103) < 0)
      {
        **(a1 + 80) = 0;
        *(a1 + 88) = 0;
        v12 = *(a1 + 20);
        v14 = *(a1 + 56);
        *(a1 + 64) = v14;
        v16 = *(a1 + 72);
        if (v14 < v16)
        {
          goto LABEL_33;
        }

LABEL_38:
        operator new();
      }

      *(a1 + 80) = 0;
      *(a1 + 103) = 0;
      v14 = *(a1 + 56);
      *(a1 + 64) = v14;
      v15 = *(a1 + 72);
      if (v14 >= v15)
      {
        goto LABEL_38;
      }

LABEL_33:
      *v14 = v12;
      v17 = (a1 + 80);
      *(a1 + 64) = v14 + 1;
      v18 = *(a1 + 20);
      v19 = 5;
      if ((v18 - 49) >= 9)
      {
        if (v18 != 48)
        {
          if (v18 == 45)
          {
            std::string::push_back((a1 + 80), 45);
          }

          v40 = sub_23F07515C(a1);
          if ((v40 - 49) < 9)
          {
            v18 = *(a1 + 20);
            v20 = 6;
            goto LABEL_41;
          }

          if (v40 != 48)
          {
            v2 = "invalid number; expected digit after '-'";
            goto LABEL_35;
          }

          v18 = *(a1 + 20);
          v19 = 6;
        }

        std::string::push_back((a1 + 80), v18);
        v112 = sub_23F07515C(a1);
        if (v112 == 46)
        {
LABEL_76:
          std::string::push_back((a1 + 80), *(a1 + 136));
          if (sub_23F07515C(a1) - 48 > 9)
          {
            v2 = "invalid number; expected digit after '.'";
            goto LABEL_35;
          }

          do
          {
            std::string::push_back((a1 + 80), *(a1 + 20));
            v39 = sub_23F07515C(a1);
          }

          while ((v39 - 48) < 0xA);
          if (v39 != 101 && v39 != 69)
          {
            goto LABEL_280;
          }
        }

        else if (v112 != 69 && v112 != 101)
        {
          goto LABEL_281;
        }

        v35 = *(a1 + 20);
LABEL_278:
        std::string::push_back((a1 + 80), v35);
        v113 = sub_23F07515C(a1);
        if ((v113 - 48) >= 0xA)
        {
          if (v113 != 43 && v113 != 45)
          {
            v2 = "invalid number; expected '+', '-', or digit after exponent";
            goto LABEL_35;
          }

          std::string::push_back((a1 + 80), *(a1 + 20));
          if (sub_23F07515C(a1) - 48 >= 0xA)
          {
            v2 = "invalid number; expected digit after exponent sign";
            goto LABEL_35;
          }
        }

        do
        {
          std::string::push_back((a1 + 80), *(a1 + 20));
        }

        while (sub_23F07515C(a1) - 48 < 0xA);
LABEL_280:
        v19 = 7;
        goto LABEL_281;
      }

      v20 = 5;
LABEL_41:
      v121 = v20;
      std::string::push_back((a1 + 80), v18);
      v122 = vdupq_n_s64(1uLL);
      while (1)
      {
        *(a1 + 32) = vaddq_s64(*(a1 + 32), v122);
        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          v24 = *(a1 + 20);
        }

        else
        {
          v25 = *a1;
          if (*a1 == *(a1 + 8))
          {
            v24 = -1;
          }

          else
          {
            v24 = *v25;
            *a1 = v25 + 1;
          }

          *(a1 + 20) = v24;
        }

        if (v24 == -1)
        {
          v19 = v121;
          goto LABEL_281;
        }

        v27 = *(a1 + 64);
        v26 = *(a1 + 72);
        if (v27 >= v26)
        {
          v29 = *(a1 + 56);
          v30 = (v27 - v29);
          v31 = v27 - v29 + 1;
          if (v31 < 0)
          {
            goto LABEL_340;
          }

          v32 = v26 - v29;
          if (2 * v32 > v31)
          {
            v31 = 2 * v32;
          }

          if (v32 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v33 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            operator new();
          }

          v34 = v27 - v29;
          *v30 = v24;
          v28 = v30 + 1;
          memcpy(0, v29, v34);
          *(a1 + 56) = 0;
          *(a1 + 64) = v30 + 1;
          *(a1 + 72) = 0;
          if (v29)
          {
            operator delete(v29);
          }
        }

        else
        {
          *v27 = v24;
          v28 = v27 + 1;
        }

        *(a1 + 64) = v28;
        v35 = *(a1 + 20);
        if ((v35 - 48) >= 0xA)
        {
          break;
        }

        v36 = *(a1 + 103);
        if (v36 < 0)
        {
          v37 = *(a1 + 96) & 0x7FFFFFFFFFFFFFFFLL;
          if (*(a1 + 88) == v37 - 1)
          {
            if (v37 != 0x7FFFFFFFFFFFFFF8)
            {
              v38 = *v17;
              if ((v37 - 1) >= 0x3FFFFFFFFFFFFFF3)
              {
                operator new();
              }

LABEL_69:
              operator new();
            }

LABEL_341:
            sub_23EF2F8F4();
          }

          v22 = *v17;
          v21 = *(a1 + 88);
          *(a1 + 88) = v21 + 1;
        }

        else
        {
          if (*(a1 + 103) == 22)
          {
            goto LABEL_69;
          }

          v21 = *(a1 + 103);
          *(a1 + 103) = (v36 + 1) & 0x7F;
          v22 = a1 + 80;
        }

        v23 = (v22 + v21);
        *v23 = v35;
        v23[1] = 0;
      }

      if (v35 <= 68)
      {
        v19 = v121;
        if (v35 == 10)
        {
          v41 = *(a1 + 48) + 1;
          *(a1 + 40) = 0;
          *(a1 + 48) = v41;
        }

        else if (v35 == 46)
        {
          goto LABEL_76;
        }

        goto LABEL_281;
      }

      v19 = v121;
      if (v35 == 69 || v35 == 101)
      {
        goto LABEL_278;
      }

LABEL_281:
      v114 = (a1 + 40);
      v115 = *(a1 + 40);
      *(a1 + 24) = 1;
      --*(a1 + 32);
      if (v115 || (v114 = (a1 + 48), (v115 = *(a1 + 48)) != 0))
      {
        *v114 = v115 - 1;
      }

      if (*(a1 + 20) != -1)
      {
        --*(a1 + 64);
      }

      __endptr = 0;
      *__error() = 0;
      if (v19 == 6)
      {
        v118 = (a1 + 80);
        if (*(a1 + 103) < 0)
        {
          v118 = *v17;
        }

        v119 = strtoll(v118, &__endptr, 10);
        if (!*__error())
        {
          *(a1 + 112) = v119;
          return 6;
        }
      }

      else if (v19 == 5)
      {
        v116 = (a1 + 80);
        if (*(a1 + 103) < 0)
        {
          v116 = *v17;
        }

        v117 = strtoull(v116, &__endptr, 10);
        if (!*__error())
        {
          *(a1 + 120) = v117;
          return 5;
        }
      }

      if (*(a1 + 103) < 0)
      {
        v17 = *v17;
      }

      *(a1 + 128) = strtod(v17, &__endptr);
      return 7;
    case 58:
      return 12;
    case 91:
      return result;
    case 93:
      return 10;
    case 102:
      if (sub_23F07515C(a1) != 97 || sub_23F07515C(a1) != 108 || sub_23F07515C(a1) != 115 || sub_23F07515C(a1) != 101)
      {
        goto LABEL_112;
      }

      return 2;
    case 110:
      if (sub_23F07515C(a1) != 117 || sub_23F07515C(a1) != 108 || sub_23F07515C(a1) != 108)
      {
        goto LABEL_112;
      }

      return 3;
    case 116:
      if (sub_23F07515C(a1) != 114 || sub_23F07515C(a1) != 117 || sub_23F07515C(a1) != 101)
      {
        goto LABEL_112;
      }

      return 1;
    case 123:
      return 9;
    case 125:
      return 11;
    default:
LABEL_112:
      v2 = "invalid literal";
      goto LABEL_35;
  }
}

uint64_t sub_23F2E4B3C(uint64_t result, uint64_t a2)
{
  *(result + 88) = 1;
  if (*(result + 128) == 1)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v4 = sub_23F07A500(exception, a2);
    __cxa_throw(v4, &unk_28517D130, sub_23F0771F4);
  }

  return result;
}

void sub_23F2E4B94(std::string *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = *v4;
      if (v6 > 0x1F)
      {
        std::string::push_back(this, v6);
      }

      else
      {
        v10 = 0;
        *__str = 0;
        snprintf(__str, 9uLL, "<U+%.4X>", v6);
        v7 = strlen(__str);
        std::string::append(this, __str, v7);
      }

      ++v4;
    }

    while (v4 != a3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F2E4C6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2E4C8C(std::string *this, uint64_t a2, int a3, const void **a4)
{
  v70 = *MEMORY[0x277D85DE8];
  *(&this->__r_.__value_.__s + 23) = 13;
  strcpy(this, "syntax error ");
  v7 = *(a4 + 23);
  if (v7 >= 0)
  {
    v8 = *(a4 + 23);
  }

  else
  {
    v8 = a4[1];
  }

  if (v8)
  {
    if (v8 + 14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    if (v8 + 14 > 0x16)
    {
      operator new();
    }

    memset(&v66, 0, sizeof(v66));
    *(&v66.__r_.__value_.__s + 23) = v8 + 14;
    qmemcpy(&v66, "while parsing ", 14);
    if ((v7 & 0x80u) == 0)
    {
      v9 = a4;
    }

    else
    {
      v9 = *a4;
    }

    memmove(&v66.__r_.__value_.__r.__words[1] + 6, v9, v8);
    *(&v66.__r_.__value_.__r.__words[1] + v8 + 6) = 0;
    size = SHIBYTE(v66.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v66.__r_.__value_.__l.__size_;
      v12 = (v66.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v12 == v66.__r_.__value_.__l.__size_)
      {
        if ((v66.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
        {
          sub_23EF2F8F4();
        }

LABEL_16:
        operator new();
      }

      v11 = v66.__r_.__value_.__r.__words[0];
    }

    else
    {
      v11 = &v66;
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_16;
      }
    }

    v11->__r_.__value_.__s.__data_[size] = 32;
    v13 = size + 1;
    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      v66.__r_.__value_.__l.__size_ = v13;
    }

    else
    {
      *(&v66.__r_.__value_.__s + 23) = v13 & 0x7F;
    }

    v11->__r_.__value_.__s.__data_[v13] = 0;
    __p = v66;
    memset(&v66, 0, sizeof(v66));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(this, p_p, v15);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    else if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    operator delete(v66.__r_.__value_.__l.__data_);
  }

LABEL_29:
  std::string::append(this, "- ", 2uLL);
  v16 = *(a2 + 32);
  if (v16 == 14)
  {
    v17 = *(a2 + 144);
    v18 = strlen(v17);
    if (v18 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v18;
    if (v18)
    {
      memmove(&__dst, v17, v18);
      __dst.__r_.__value_.__s.__data_[v19] = 0;
      v20 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      v62 = a3;
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      v20 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      v62 = a3;
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
LABEL_34:
        if (v20 - 9 < 0xE)
        {
          goto LABEL_47;
        }

        p_dst = &__dst;
        goto LABEL_66;
      }
    }

    v20 = __dst.__r_.__value_.__l.__size_;
    v24 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v24 - __dst.__r_.__value_.__l.__size_ < 0xE)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 14 - v24)
      {
        sub_23EF2F8F4();
      }

LABEL_47:
      operator new();
    }

    p_dst = __dst.__r_.__value_.__r.__words[0];
LABEL_66:
    qmemcpy(p_dst + v20, "; last read: '", 14);
    v30 = v20 + 14;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v20 + 14;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v30 & 0x7F;
    }

    p_dst->__r_.__value_.__s.__data_[v30] = 0;
    v65 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    v32 = *(a2 + 96);
    v31 = *(a2 + 104);
    memset(&v63, 0, sizeof(v63));
    if (v32 == v31)
    {
      v41 = 0;
      v42 = 0;
      v40 = 0;
    }

    else
    {
      do
      {
        while (1)
        {
          while (1)
          {
            v34 = *v32;
            if (v34 > 0x1F)
            {
              break;
            }

            v69 = 0;
            *__str = 0;
            snprintf(__str, 9uLL, "<U+%.4X>", v34);
            v33 = strlen(__str);
            std::string::append(&v63, __str, v33);
            if (++v32 == v31)
            {
              goto LABEL_82;
            }
          }

          v35 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
          {
            break;
          }

          if (HIBYTE(v63.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_78;
          }

          *(&v63.__r_.__value_.__s + 23) = (*(&v63.__r_.__value_.__s + 23) + 1) & 0x7F;
          v37 = &v63 + v35;
          *v37 = v34;
          v37[1] = 0;
          if (++v32 == v31)
          {
            goto LABEL_82;
          }
        }

        v36 = (v63.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v63.__r_.__value_.__l.__size_ == v36)
        {
          if ((v63.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_23EF2F8F4();
          }

LABEL_78:
          operator new();
        }

        v38 = *&v63.__r_.__value_.__l.__data_;
        ++v63.__r_.__value_.__l.__size_;
        v39 = (v38 + *(&v38 + 1));
        *v39 = v34;
        v39[1] = 0;
        ++v32;
      }

      while (v32 != v31);
LABEL_82:
      v40 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
      v41 = v63.__r_.__value_.__l.__size_;
      v42 = v63.__r_.__value_.__r.__words[0];
    }

    if ((v40 & 0x80u) == 0)
    {
      v43 = &v63;
    }

    else
    {
      v43 = v42;
    }

    if ((v40 & 0x80u) == 0)
    {
      v44 = v40;
    }

    else
    {
      v44 = v41;
    }

    v45 = std::string::append(&v65, v43, v44);
    a3 = v62;
    v46 = *&v45->__r_.__value_.__l.__data_;
    v66.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
    *&v66.__r_.__value_.__l.__data_ = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    v47 = SHIBYTE(v66.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v47 = v66.__r_.__value_.__l.__size_;
      v49 = (v66.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v49 == v66.__r_.__value_.__l.__size_)
      {
        if ((v66.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
        {
          sub_23EF2F8F4();
        }

LABEL_95:
        operator new();
      }

      v48 = v66.__r_.__value_.__r.__words[0];
    }

    else
    {
      v48 = &v66;
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_95;
      }
    }

    v48->__r_.__value_.__s.__data_[v47] = 39;
    v50 = v47 + 1;
    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      v66.__r_.__value_.__l.__size_ = v50;
    }

    else
    {
      *(&v66.__r_.__value_.__s + 23) = v50 & 0x7F;
    }

    v48->__r_.__value_.__s.__data_[v50] = 0;
    __p = v66;
    memset(&v66, 0, sizeof(v66));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = &__p;
    }

    else
    {
      v51 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v52 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(this, v51, v52);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_108:
        if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_109;
        }

        goto LABEL_131;
      }
    }

    else if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_108;
    }

    operator delete(v66.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_109:
      if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_110;
      }

      goto LABEL_132;
    }

LABEL_131:
    operator delete(v63.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_110:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_111;
      }

LABEL_133:
      operator delete(__dst.__r_.__value_.__l.__data_);
      if (!v62)
      {
        goto LABEL_134;
      }

      goto LABEL_112;
    }

LABEL_132:
    operator delete(v65.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_111:
      if (!a3)
      {
        goto LABEL_134;
      }

      goto LABEL_112;
    }

    goto LABEL_133;
  }

  if (v16 > 0x10)
  {
    v21 = "unknown token";
  }

  else
  {
    v21 = off_278C75470[v16];
  }

  v22 = strlen(v21);
  if (v22 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  v23 = v22;
  if (v22 >= 0x17)
  {
    operator new();
  }

  *(&v66.__r_.__value_.__s + 23) = v22;
  if (v22)
  {
    memcpy(&v66, v21, v22);
  }

  v66.__r_.__value_.__s.__data_[v23] = 0;
  v25 = std::string::insert(&v66, 0, "unexpected ", 0xBuLL);
  v26 = *&v25->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &__p;
  }

  else
  {
    v27 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(this, v27, v28);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_111;
    }
  }

  else if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_111;
  }

  operator delete(v66.__r_.__value_.__l.__data_);
  if (!a3)
  {
    goto LABEL_134;
  }

LABEL_112:
  v53 = off_278C754F8[a3 - 1];
  v54 = strlen(v53);
  if (v54 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  v55 = v54;
  if (v54 >= 0x17)
  {
    operator new();
  }

  *(&v66.__r_.__value_.__s + 23) = v54;
  if (v54)
  {
    memcpy(&v66, v53, v54);
  }

  v66.__r_.__value_.__s.__data_[v55] = 0;
  v56 = std::string::insert(&v66, 0, "; expected ", 0xBuLL);
  v57 = *&v56->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v57;
  v56->__r_.__value_.__l.__size_ = 0;
  v56->__r_.__value_.__r.__words[2] = 0;
  v56->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v58 = &__p;
  }

  else
  {
    v58 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v59 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(this, v58, v59);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_128:
      operator delete(v66.__r_.__value_.__l.__data_);
      v60 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_128;
  }

LABEL_134:
  v61 = *MEMORY[0x277D85DE8];
}

void sub_23F2E57EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a37 < 0)
  {
    operator delete(a32);
    if (a18 < 0)
    {
LABEL_3:
      operator delete(__p);
      if ((a30 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (a18 < 0)
  {
    goto LABEL_3;
  }

  if ((a30 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a24 & 0x80000000) == 0)
    {
LABEL_10:
      if (*(a12 + 23) < 0)
      {
        operator delete(*a12);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a19);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a25);
  if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t sub_23F2E5944(uint64_t result, uint64_t a2)
{
  *(result + 40) = 1;
  if (*(result + 41) == 1)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v4 = sub_23F07A500(exception, a2);
    __cxa_throw(v4, &unk_28517D130, sub_23F0771F4);
  }

  return result;
}

void sub_23F2E599C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 - 8))
  {
    v32 = ((v2 - *(a1 + 8)) >> 3) - 1;
    v31[0] = 1;
    v3 = *(a1 + 120);
    if (!v3)
    {
      sub_23EF38C6C();
    }

    if (((*(*v3 + 48))(v3, &v32, v31) & 1) == 0)
    {
      sub_23F06F0C0(v29, (a1 + 136));
      v4 = *(*(a1 + 16) - 8);
      v5 = *v4;
      *v4 = v29[0];
      v29[0] = v5;
      v6 = *(v4 + 1);
      *(v4 + 1) = v30;
      v30 = v6;
      sub_23F0655DC(&v30, v5);
    }
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 16) = v7 - 8;
  --*(a1 + 40);
  if (v8 != v7 - 8)
  {
    v9 = *(v7 - 16);
    if (v9)
    {
      v10 = *v9;
      if ((v10 - 1) <= 1)
      {
        v11 = *(v9 + 1);
        v12 = *v11;
        if (v10 == 1)
        {
          v13 = *v11;
        }

        else
        {
          v13 = 0;
        }

        if (v10 == 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = *v11;
        }

        while (1)
        {
          if (v10 == 1)
          {
            if (v13 == v11[1])
            {
              return;
            }

            v15 = v13 + 3;
          }

          else
          {
            if (v10 != 2)
            {
              exception = __cxa_allocate_exception(0x20uLL);
              sub_23EF3F240(&v32, "cannot get value");
              sub_23F070D14(214, &v32, exception);
              __cxa_throw(exception, &unk_28517D0C8, sub_23F070EA8);
            }

            v15 = v14;
            if (v14 == v11[1])
            {
              return;
            }
          }

          if (*v15 == 9)
          {
            break;
          }

          if (v10 == 1)
          {
            v13 += 5;
          }

          else
          {
            v14 += 2;
          }
        }

        if (v10 == 2)
        {
          v20 = v11[1];
          v21 = v14 + 2;
          if (v14 + 2 != v20)
          {
            do
            {
              v22 = *v21;
              v23 = v21[1];
              *v21 = 0;
              v21[1] = 0;
              v24 = *(v21 - 16);
              *(v21 - 16) = v22;
              LOBYTE(v32) = v24;
              v25 = *(v21 - 1);
              *(v21 - 1) = v23;
              v33 = v25;
              sub_23F0655DC(&v33, v24);
              v21 += 2;
            }

            while (v21 != v20);
            v20 = v11[1];
            v14 = v21 - 2;
          }

          if (v20 != v14)
          {
            v26 = v20 - 1;
            do
            {
              v27 = v26 - 1;
              sub_23F0655DC(v26, *(v26 - 8));
              v26 -= 2;
            }

            while (v27 != v14);
          }

          v11[1] = v14;
        }

        else
        {
          v16 = v11[1];
          for (i = v13 + 5; i != v16; i += 5)
          {
            v18 = (i - 5);
            sub_23F0655DC(i - 1, *(i - 16));
            if (*(i - 17) < 0)
            {
              operator delete(*v18);
            }

            if (*(i + 23) < 0)
            {
              sub_23EF34EA4(i - 40, *i, i[1]);
            }

            else
            {
              *v18 = *i;
              *(i - 3) = i[2];
            }

            *(i - 16) = *(i + 24);
            *(i - 1) = i[4];
            *(i + 24) = 0;
            i[4] = 0;
            v16 = v11[1];
          }

          v19 = (v16 - 5);
          sub_23F0655DC(v16 - 1, *(v16 - 16));
          if (*(v16 - 17) < 0)
          {
            operator delete(*v19);
          }

          v11[1] = v19;
        }
      }
    }
  }
}

void sub_23F2E5E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (v23)
  {
    __cxa_free_exception(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2E6078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t *a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, unsigned __int8 a15)
{
  sub_23F0655DC((v15 + 8), a15);
  sub_23F0655DC(&a11, a10);
  sub_23F0655DC((v16 + 8), a12);
  _Unwind_Resume(a1);
}

void sub_23F2E60D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4 = *(v2 - 8);
  v3 = v2 - 8;
  if (!v4)
  {
    *(a1 + 16) = v3;
    goto LABEL_6;
  }

  v18 = ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1;
  v17 = 3;
  v5 = *(a1 + 120);
  if (!v5)
  {
    sub_23EF38C6C();
  }

  if ((*(*v5 + 48))(v5, &v18, &v17))
  {
    *(a1 + 16) -= 8;
LABEL_6:
    --*(a1 + 40);
    return;
  }

  sub_23F06F0C0(v15, (a1 + 136));
  v6 = *(*(a1 + 16) - 8);
  v7 = *v6;
  *v6 = v15[0];
  v15[0] = v7;
  v8 = *(v6 + 1);
  *(v6 + 1) = v16;
  v16 = v8;
  sub_23F0655DC(&v16, v7);
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  *(a1 + 16) = v9 - 8;
  --*(a1 + 40);
  if (v10 != v9 - 8)
  {
    v11 = *(v9 - 16);
    if (*v11 == 2)
    {
      v12 = *(v11 + 8);
      v13 = *(v12 + 8);
      v14 = *(v13 - 16);
      v13 -= 16;
      sub_23F0655DC((v13 + 8), v14);
      *(v12 + 8) = v13;
    }
  }
}

uint64_t sub_23F2E6220(uint64_t result, uint64_t a2)
{
  *(result + 88) = 1;
  if (*(result + 128) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = sub_23F079730(exception, a2);
    __cxa_throw(v4, &unk_28517D0B0, sub_23F078DC8);
  }

  return result;
}

uint64_t sub_23F2E6278(unsigned __int8 **a1, unsigned __int8 a2)
{
  if (((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)) & 1) == 0)
  {
    return 0;
  }

  v25[0] = a2;
  sub_23F2DA120(&v26, a2);
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = v25[0];
    v10 = v26;
    v25[0] = 0;
    v26 = 0;
    v11 = *a1;
    v12 = **a1;
    *v11 = v9;
    v23 = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v10;
    v24 = v13;
    sub_23F0655DC(&v24, v12);
    v14 = *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (!v4)
    {
      goto LABEL_11;
    }

    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = v5[1];
      if (v6 >= v5[2])
      {
        v7 = sub_23F065DA8(v5, v25);
      }

      else
      {
        *v6 = v25[0];
        *(v6 + 8) = v26;
        v25[0] = 0;
        v26 = 0;
        v7 = v6 + 16;
      }

      v5[1] = v7;
      v14 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
      goto LABEL_14;
    }

    v15 = (a1[8] - 1);
    v16 = *&a1[7][(v15 >> 3) & 0x1FFFFFFFFFFFFFF8];
    a1[8] = v15;
    if ((v16 >> v15))
    {
      v17 = v25[0];
      v18 = v26;
      v25[0] = 0;
      v26 = 0;
      v19 = a1[10];
      v20 = *v19;
      *v19 = v17;
      v21 = *(v19 + 1);
      *(v19 + 1) = v18;
      v22 = v21;
      sub_23F0655DC(&v22, v20);
      v14 = a1[10];
    }

    else
    {
LABEL_11:
      v14 = 0;
    }
  }

LABEL_14:
  sub_23F0655DC(&v26, v25[0]);
  return v14;
}

void sub_23F2E6438(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_23F2E6550();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t sub_23F2E6568(uint64_t a1)
{
  sub_23F0655DC((a1 + 144), *(a1 + 136));
  v2 = *(a1 + 120);
  if (v2 == a1 + 96)
  {
    (*(*v2 + 32))(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
LABEL_5:
      operator delete(v3);
    }
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    v3 = *(a1 + 56);
    if (v3)
    {
      goto LABEL_5;
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    *(a1 + 16) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_23F2E6628(uint64_t result, uint64_t a2)
{
  *(result + 40) = 1;
  if (*(result + 41) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = sub_23F079730(exception, a2);
    __cxa_throw(v4, &unk_28517D0B0, sub_23F078DC8);
  }

  return result;
}

uint64_t sub_23F2E6680(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v10 = *a2;
    v33 = v10;
    sub_23F2DA120(v34, v10);
    v11 = *a1;
    v12 = **a1;
    *v11 = v33;
    v33 = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v34[0];
    v34[0] = v13;
    sub_23F0655DC(v34, v12);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v7 = v5[1];
      v6 = v5[2];
      if (v7 >= v6)
      {
        v19 = (v7 - *v5) >> 4;
        if ((v19 + 1) >> 60)
        {
          sub_23F063D28();
        }

        v20 = v6 - *v5;
        v21 = v20 >> 3;
        if (v20 >> 3 <= (v19 + 1))
        {
          v21 = v19 + 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF0)
        {
          v22 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        v38 = v5;
        if (v22)
        {
          if (!(v22 >> 60))
          {
            operator new();
          }

          sub_23EF34E18();
        }

        v34[1] = 0;
        v35 = (16 * v19);
        v36 = 16 * v19;
        v37 = 0;
        v23 = *a2;
        *v35 = v23;
        sub_23F2DA120((16 * v19 + 8), v23);
        v9 = v36 + 16;
        v24 = *v5;
        v25 = v5[1];
        v26 = &v35[*v5 - v25];
        if (v25 != *v5)
        {
          v27 = *v5;
          v28 = &v35[*v5 - v25];
          do
          {
            *v28 = *v27;
            *(v28 + 1) = v27[1];
            *v27 = 0;
            v27[1] = 0;
            v27 += 2;
            v28 += 16;
          }

          while (v27 != v25);
          v29 = v24;
          do
          {
            v30 = *v29;
            v29 += 2;
            sub_23F0655DC(v24 + 1, v30);
            v24 = v29;
          }

          while (v29 != v25);
          v24 = *v5;
        }

        *v5 = v26;
        v5[1] = v9;
        v5[2] = v37;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        v8 = *a2;
        *v7 = v8;
        sub_23F2DA120(v7 + 1, v8);
        v9 = (v7 + 2);
        v5[1] = v9;
      }

      v5[1] = v9;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v15 = *a2;
      v31 = v15;
      sub_23F2DA120(&v32, v15);
      v16 = a1[4];
      v17 = *v16;
      *v16 = v31;
      v18 = *(v16 + 1);
      *(v16 + 1) = v32;
      v32 = v18;
      sub_23F0655DC(&v32, v17);
      return a1[4];
    }
  }
}

void sub_23F2E68E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_23F071EA8(va);
  _Unwind_Resume(a1);
}

void sub_23F2E6904(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v2 = a1[2];
  if (a1[1] == v2)
  {
    v9 = &v32;
    v10 = *a2;
    v11 = *a1;
    v12 = **a1;
    *v11 = 4;
    v32 = v12;
    v13 = *(v11 + 8);
    *(v11 + 8) = v10;
    v33 = v13;
LABEL_7:
    sub_23F0655DC(v9 + 1, v12);
    return;
  }

  v3 = *(v2 - 1);
  if (*v3 != 2)
  {
    v9 = &v30;
    v14 = *a2;
    v15 = a1[4];
    v12 = *v15;
    *v15 = 4;
    v30 = v12;
    v16 = *(v15 + 1);
    *(v15 + 1) = v14;
    v31 = v16;
    goto LABEL_7;
  }

  v4 = *(v3 + 8);
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  if (v6 >= v5)
  {
    v17 = *v4;
    v18 = (v6 - *v4) >> 4;
    v19 = v18 + 1;
    if ((v18 + 1) >> 60)
    {
      sub_23F063D28();
    }

    v20 = v5 - v17;
    if (v20 >> 3 > v19)
    {
      v19 = v20 >> 3;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF0)
    {
      v21 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (!(v21 >> 60))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v22 = (v6 - *v4) >> 4;
    v23 = 16 * v18;
    v24 = *a2;
    *v23 = 4;
    *(v23 + 8) = v24;
    v8 = 16 * v18 + 16;
    v25 = v23 - 16 * v22;
    if (v17 != v6)
    {
      v26 = v17;
      v27 = v23 - 16 * v22;
      do
      {
        *v27 = *v26;
        *(v27 + 8) = v26[1];
        *v26 = 0;
        v26[1] = 0;
        v26 += 2;
        v27 += 16;
      }

      while (v26 != v6);
      v28 = v17;
      do
      {
        v29 = *v28;
        v28 += 2;
        sub_23F0655DC(v17 + 1, v29);
        v17 = v28;
      }

      while (v28 != v6);
      v17 = *v4;
    }

    *v4 = v25;
    *(v4 + 8) = v8;
    *(v4 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *(v6 + 8) = 0;
    v7 = *a2;
    *v6 = 4;
    *(v6 + 8) = v7;
    v8 = v6 + 16;
  }

  *(v4 + 8) = v8;
}

uint64_t sub_23F2E6B08(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3 == a1)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void sub_23F2E6BD4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518D780;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t *sub_23F2E6C78(uint64_t a1)
{
  v2 = *(a1 + 100);
  if (*(a1 + 88) != 1)
  {
    if (*(a1 + 100))
    {
      v31 = *(a1 + 96);
      v17 = sub_23F0699D8(*(a1 + 40), 0);
      v18 = *v17;
      *v17 = 6;
      v19 = v17[1];
      v17[1] = v31;
      v31 = v19;
      sub_23F06357C(&v31, v18);
      if (*(a1 + 100) == 1)
      {
        *(a1 + 100) = 0;
      }
    }

    v20 = *(a1 + 40);
    v21 = *v20;
    if (*v20)
    {
      if (v21 == 1)
      {
        v21 = *(*(v20 + 1) + 16);
      }

      else if (v21 == 2)
      {
        v21 = (*(*(v20 + 1) + 8) - **(v20 + 1)) >> 4;
      }

      else
      {
        v21 = 1;
      }
    }

    return sub_23F0699D8(v20, v21);
  }

  if (!*(a1 + 100))
  {
    goto LABEL_41;
  }

  v3 = *(a1 + 96);
  v32 = 6;
  v33 = v3;
  v4 = *(a1 + 40);
  if (!*v4)
  {
    *v4 = 1;
    operator new();
  }

  if (*v4 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v30 = sub_23F06D864(v4);
    sub_23EF3F240(&v34, v30);
    sub_23F06C3EC("cannot use operator[] with a string argument with ", &v34, &__s1);
    sub_23F06D6C8(305, &__s1, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v5 = *(v4 + 8);
  *(&__s1.__r_.__value_.__s + 23) = 7;
  strcpy(&__s1, "version");
  v6 = *(v5 + 8);
  if (!v6)
  {
LABEL_38:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v7 = v6;
      v10 = v6[4];
      v8 = v6 + 4;
      v9 = v10;
      v11 = *(v8 + 23);
      v12 = v11 >= 0 ? v8 : v9;
      v13 = v11 >= 0 ? *(v8 + 23) : v8[1];
      v14 = v13 >= 7 ? 7 : v13;
      v15 = memcmp(&__s1, v12, v14);
      if (v15)
      {
        break;
      }

      if (v13 <= 7)
      {
        goto LABEL_22;
      }

LABEL_8:
      v6 = *v7;
      if (!*v7)
      {
        goto LABEL_38;
      }
    }

    if (v15 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v16 = memcmp(v12, &__s1, v14);
    if (v16)
    {
      if ((v16 & 0x80000000) == 0)
      {
        break;
      }

      goto LABEL_26;
    }

    if (v13 >= 7)
    {
      break;
    }

LABEL_26:
    v6 = v7[1];
    if (!v6)
    {
      goto LABEL_38;
    }
  }

  v23 = *(v7 + 56);
  *(v7 + 56) = 6;
  v32 = v23;
  v24 = v7[8];
  v7[8] = v33;
  v33 = v24;
  sub_23F06357C(&v33, v23);
  if (*(a1 + 100) == 1)
  {
    *(a1 + 100) = 0;
  }

LABEL_41:
  v25 = *(a1 + 80);
  if (v25 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v26 = *(a1 + 40);
  v27 = *(a1 + 72);
  if (v25 >= 0x17)
  {
    operator new();
  }

  *(&__s1.__r_.__value_.__s + 23) = v25;
  if (v25)
  {
    memmove(&__s1, v27, v25);
  }

  __s1.__r_.__value_.__s.__data_[v25] = 0;
  result = sub_23F06CB80(v26, &__s1.__r_.__value_.__l.__data_);
  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
  {
    v28 = result;
    operator delete(__s1.__r_.__value_.__l.__data_);
    return v28;
  }

  return result;
}

uint64_t *sub_23F2E710C(uint64_t a1)
{
  sub_23F07903C(a1 + 48, (a1 + 40));
  result = sub_23F2E6C78(a1);
  *(a1 + 40) = result;
  if (*(a1 + 88) == 1)
  {
    *(a1 + 88) = 0;
  }

  return result;
}

void sub_23F2E7154(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = *a2;
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2EF594();
}

void sub_23F2E7294(_Unwind_Exception *a1)
{
  sub_23F06357C((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t **sub_23F2E72C0(uint64_t a1)
{
  v2 = *(a1 + 100);
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 100))
    {
      v3 = *(a1 + 96);
      v22 = 6;
      v23 = v3;
      v4 = *(a1 + 40);
      if (!*v4)
      {
        *v4 = 1;
        operator new();
      }

      if (*v4 != 1)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        v20 = sub_23F06D864(v4);
        sub_23EF3F240(&v24, v20);
        sub_23F06C3EC("cannot use operator[] with a string argument with ", &v24, &__p);
        sub_23F06D6C8(305, &__p, exception);
        __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
      }

      v5 = *(v4 + 8);
      *(&__p.__r_.__value_.__s + 23) = 7;
      strcpy(&__p, "version");
      v24.__r_.__value_.__s.__data_[0] = 0;
      v24.__r_.__value_.__l.__size_ = 0;
      v6 = sub_23F06EDE4(v5, &__p, &v24);
      sub_23F0655DC(&v24.__r_.__value_.__l.__size_, v24.__r_.__value_.__s.__data_[0]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v7 = *(v6 + 24);
      *(v6 + 24) = 6;
      v22 = v7;
      v8 = *(v6 + 32);
      *(v6 + 32) = v23;
      v23 = v8;
      sub_23F0655DC(&v23, v7);
      if (*(a1 + 100) == 1)
      {
        *(a1 + 100) = 0;
      }
    }

    v9 = *(a1 + 80);
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23EF2F8F4();
    }

    v10 = *(a1 + 40);
    v11 = *(a1 + 72);
    if (v9 >= 0x17)
    {
      operator new();
    }

    *(&__p.__r_.__value_.__s + 23) = v9;
    if (v9)
    {
      memmove(&__p, v11, v9);
    }

    __p.__r_.__value_.__s.__data_[v9] = 0;
    result = sub_23F06E270(v10, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v18 = result;
      operator delete(__p.__r_.__value_.__l.__data_);
      return v18;
    }
  }

  else
  {
    if (*(a1 + 100))
    {
      v21 = *(a1 + 96);
      v12 = sub_23F069D1C(*(a1 + 40), 0);
      v13 = *v12;
      *v12 = 6;
      v14 = v12[1];
      v12[1] = v21;
      v21 = v14;
      sub_23F0655DC(&v21, v13);
      if (*(a1 + 100) == 1)
      {
        *(a1 + 100) = 0;
      }
    }

    v15 = *(a1 + 40);
    v16 = *v15;
    if (*v15)
    {
      if (v16 == 1)
      {
        v16 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(v15 + 1) + 8) - **(v15 + 1)) >> 3);
      }

      else if (v16 == 2)
      {
        v16 = (*(*(v15 + 1) + 8) - **(v15 + 1)) >> 4;
      }

      else
      {
        v16 = 1;
      }
    }

    return sub_23F069D1C(v15, v16);
  }

  return result;
}

uint64_t **sub_23F2E76AC(uint64_t a1)
{
  sub_23F2E6438(a1 + 48, (a1 + 40));
  result = sub_23F2E72C0(a1);
  *(a1 + 40) = result;
  if (*(a1 + 88) == 1)
  {
    *(a1 + 88) = 0;
  }

  return result;
}

void sub_23F2E76F4(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = *a2;
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2EFF70();
}

void sub_23F2E7834(_Unwind_Exception *a1)
{
  sub_23F0655DC((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E7860(uint64_t a1, float *a2)
{
  if (*(a1 + 32) == 1 && (*a2 & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    v11 = 0;
    sub_23EF8158C(&v13, v10, a2);
    if (v11 != -1)
    {
      v13 = &v12;
      (off_28518D820[v11])(__p, &v13, v10);
      if (v11 != -1)
      {
        (off_28518D808[v11])(&v13, v10);
      }

      v9 = 0;
      v8 = 3;
      operator new();
    }

    sub_23EF41D6C();
  }

  v6 = *a2;
  v3 = sub_23F2E6C78(a1);
  v4 = *v3;
  *v3 = 7;
  v5 = *(v3 + 1);
  *(v3 + 1) = v6;
  v6 = v5;
  sub_23F06357C(&v6, v4);
}

void sub_23F2E79F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_23F06357C((v20 + 8), 3);
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E7A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2E7A64(uint64_t a1, double *a2)
{
  if (*(a1 + 32) == 1 && (*a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v11 = 0;
    sub_23F05B5C8(&v13, v10, a2);
    if (v11 != -1)
    {
      v13 = &v12;
      (off_28518D820[v11])(__p, &v13, v10);
      if (v11 != -1)
      {
        (off_28518D808[v11])(&v13, v10);
      }

      v9 = 0;
      v8 = 3;
      operator new();
    }

    sub_23EF41D6C();
  }

  v6 = *a2;
  v3 = sub_23F2E6C78(a1);
  v4 = *v3;
  *v3 = 7;
  v5 = *(v3 + 1);
  *(v3 + 1) = v6;
  v6 = v5;
  sub_23F06357C(&v6, v4);
}

void sub_23F2E7BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_23F06357C((v20 + 8), 3);
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E7C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F2E7C64(uint64_t result)
{
  if (*(result + 88) != 1 || *(result + 80) != 7 || ((v1 = *(result + 72), v2 = *v1, v3 = *(v1 + 3), v2 == 1936876918) ? (v4 = v3 == 1852795251) : (v4 = 0), !v4))
  {
    operator new();
  }

  return result;
}

void sub_23F2E7D88(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = *a2;
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2EF4B0();
}

void sub_23F2E7EC8(_Unwind_Exception *a1)
{
  sub_23F06357C((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E7EF4(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = *a2;
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2EF678();
}

void sub_23F2E8050(_Unwind_Exception *a1)
{
  sub_23F06357C((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E807C(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = *a2;
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2EF760();
}

void sub_23F2E81D8(_Unwind_Exception *a1)
{
  sub_23F06357C((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E8204(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = *a2;
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2EF848();
}

void sub_23F2E8360(_Unwind_Exception *a1)
{
  sub_23F06357C((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E838C(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = *a2;
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2EF930();
}

void sub_23F2E84E8(_Unwind_Exception *a1)
{
  sub_23F06357C((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E8514(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = *a2;
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2EFA18();
}

void sub_23F2E8670(_Unwind_Exception *a1)
{
  sub_23F06357C((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E869C(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = *a2;
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2EFB00();
}

void sub_23F2E87F8(_Unwind_Exception *a1)
{
  sub_23F06357C((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E8824(uint64_t a1, __int16 **a2)
{
  if (*(a1 + 32) != 1)
  {
    v13 = a2[1];
    if (v13)
    {
      if (!(-((-2 * v13) >> 1) >> 61))
      {
        v14 = *a2;
        operator new();
      }

      sub_23EF62578();
    }

    __p[0] = 0;
    v18 = 0;
    sub_23F2EFDA4();
  }

  v3 = sub_23F2E6C78(a1);
  v4 = a2[1];
  if (!v4)
  {
    v18 = 0;
    __p[0] = 0;
    sub_23F2EFDA4();
  }

  v5 = *a2;
  v6 = 2 * v4;
  do
  {
    if ((~*v5 & 0x7C00) == 0)
    {
      v20 = 0;
      sub_23F286EC0(&v22, &v18, v5);
      if (v20 != -1)
      {
        v22 = &v21;
        (off_28518D820[v20])(__p, &v22, &v18);
        if (v20 != -1)
        {
          (off_28518D808[v20])(&v22, &v18);
        }

        v17 = 0;
        v16 = 3;
        operator new();
      }

      sub_23EF41D6C();
    }

    _H0 = *v5;
    __asm { FCVT            D0, H0 }

    LOBYTE(v18) = 7;
    v19 = _D0;
    sub_23F2EFBE8(v3, &v18);
    sub_23F06357C(&v19, v18);
    ++v5;
    v6 -= 2;
  }

  while (v6);
}

void sub_23F2E8B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23F06357C((v23 + 8), 2);
  if (v22)
  {
    operator delete(v22);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E8C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2E8C48(uint64_t a1, float **a2)
{
  if (*(a1 + 32) != 1)
  {
    v8 = a2[1];
    if (v8)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v9 = *a2;
        operator new();
      }

      sub_23EF62578();
    }

    operator new();
  }

  v3 = sub_23F2E6C78(a1);
  v4 = a2[1];
  if (!v4)
  {
    v13 = 0;
    __p[0] = 0;
    sub_23F2EFDA4();
  }

  v5 = *a2;
  v6 = 4 * v4;
  do
  {
    v7 = *v5;
    if ((*v5 & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      v15 = 0;
      sub_23EF8158C(&v17, &v13, v5);
      if (v15 != -1)
      {
        v17 = &v16;
        (off_28518D820[v15])(__p, &v17, &v13);
        if (v15 != -1)
        {
          (off_28518D808[v15])(&v17, &v13);
        }

        v12 = 0;
        v11 = 3;
        operator new();
      }

      sub_23EF41D6C();
    }

    LOBYTE(v13) = 7;
    v14[0] = v7;
    sub_23F2EFBE8(v3, &v13);
    sub_23F06357C(v14, v13);
    ++v5;
    v6 -= 4;
  }

  while (v6);
}

void sub_23F2E8FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23F06357C((v23 + 8), 2);
  if (v22)
  {
    operator delete(v22);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E9094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2E90A8(uint64_t a1, double **a2)
{
  if (*(a1 + 32) != 1)
  {
    v8 = a2[1];
    if (v8)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v9 = *a2;
        operator new();
      }

      sub_23EF62578();
    }

    __p[0] = 0;
    v13 = 0;
    sub_23F2EFDA4();
  }

  v3 = sub_23F2E6C78(a1);
  v4 = a2[1];
  if (!v4)
  {
    v13 = 0;
    __p[0] = 0;
    sub_23F2EFDA4();
  }

  v5 = *a2;
  v6 = 8 * v4;
  do
  {
    v7 = *v5;
    if ((*v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v15 = 0;
      sub_23F05B5C8(&v17, &v13, v5);
      if (v15 != -1)
      {
        v17 = &v16;
        (off_28518D820[v15])(__p, &v17, &v13);
        if (v15 != -1)
        {
          (off_28518D808[v15])(&v17, &v13);
        }

        v12 = 0;
        v11 = 3;
        operator new();
      }

      sub_23EF41D6C();
    }

    LOBYTE(v13) = 7;
    v14[0] = v7;
    sub_23F2EFBE8(v3, &v13);
    sub_23F06357C(v14, v13);
    ++v5;
    v6 -= 8;
  }

  while (v6);
}

void sub_23F2E93B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23F06357C((v23 + 8), 2);
  if (v22)
  {
    operator delete(v22);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E945C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2E9470(uint64_t a1, uint64_t *a2)
{
  sub_23EF367A0(&__p, *a2, *a2 + 24 * a2[1]);
  v4 = 0;
  v3 = 2;
  operator new();
}

void sub_23F2E9674(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F06357C((v2 + 8), 2);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23F2E9694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23F2E96A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23F071E1C(va1);
  operator delete(v2);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23F2E96F0(uint64_t a1, float *a2)
{
  if (*(a1 + 32) == 1 && (*a2 & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    v11 = 0;
    sub_23EF8158C(&v13, v10, a2);
    if (v11 != -1)
    {
      v13 = &v12;
      (off_28518D820[v11])(__p, &v13, v10);
      if (v11 != -1)
      {
        (off_28518D808[v11])(&v13, v10);
      }

      v9 = 0;
      v8 = 3;
      operator new();
    }

    sub_23EF41D6C();
  }

  v6 = *a2;
  v3 = sub_23F2E72C0(a1);
  v4 = *v3;
  *v3 = 7;
  v5 = v3[1];
  *(v3 + 1) = v6;
  v6 = *&v5;
  sub_23F0655DC(&v6, v4);
}

void sub_23F2E9884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_23F0655DC((v20 + 8), 3);
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E98E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2E98F4(uint64_t a1, double *a2)
{
  if (*(a1 + 32) == 1 && (*a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v11 = 0;
    sub_23F05B5C8(&v13, v10, a2);
    if (v11 != -1)
    {
      v13 = &v12;
      (off_28518D820[v11])(__p, &v13, v10);
      if (v11 != -1)
      {
        (off_28518D808[v11])(&v13, v10);
      }

      v9 = 0;
      v8 = 3;
      operator new();
    }

    sub_23EF41D6C();
  }

  v6 = *a2;
  v3 = sub_23F2E72C0(a1);
  v4 = *v3;
  *v3 = 7;
  v5 = v3[1];
  v3[1] = v6;
  v6 = v5;
  sub_23F0655DC(&v6, v4);
}

void sub_23F2E9A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_23F0655DC((v20 + 8), 3);
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E9AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F2E9AF4(uint64_t result)
{
  if (*(result + 88) != 1 || *(result + 80) != 7 || ((v1 = *(result + 72), v2 = *v1, v3 = *(v1 + 3), v2 == 1936876918) ? (v4 = v3 == 1852795251) : (v4 = 0), !v4))
  {
    operator new();
  }

  return result;
}

void sub_23F2E9C18(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = *a2;
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2EFE8C();
}

void sub_23F2E9D58(_Unwind_Exception *a1)
{
  sub_23F0655DC((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E9D84(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = *a2;
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2F0054();
}

void sub_23F2E9EE0(_Unwind_Exception *a1)
{
  sub_23F0655DC((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2E9F0C(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = *a2;
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2F013C();
}

void sub_23F2EA068(_Unwind_Exception *a1)
{
  sub_23F0655DC((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2EA094(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = *a2;
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2F0224();
}

void sub_23F2EA1F0(_Unwind_Exception *a1)
{
  sub_23F0655DC((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2EA21C(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = *a2;
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2F030C();
}

void sub_23F2EA378(_Unwind_Exception *a1)
{
  sub_23F0655DC((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2EA3A4(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = *a2;
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2F03F4();
}

void sub_23F2EA500(_Unwind_Exception *a1)
{
  sub_23F0655DC((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2EA52C(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = *a2;
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2F04DC();
}

void sub_23F2EA688(_Unwind_Exception *a1)
{
  sub_23F0655DC((v2 + 8), 2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2EA6B4(uint64_t a1, __int16 **a2)
{
  if (*(a1 + 32) != 1)
  {
    v13 = a2[1];
    if (v13)
    {
      if (!(-((-2 * v13) >> 1) >> 61))
      {
        v14 = *a2;
        operator new();
      }

      sub_23EF62578();
    }

    __p[0] = 0;
    v18 = 0;
    sub_23F2F0780();
  }

  v3 = sub_23F2E72C0(a1);
  v4 = a2[1];
  if (!v4)
  {
    v18 = 0;
    __p[0] = 0;
    sub_23F2F0780();
  }

  v5 = *a2;
  v6 = 2 * v4;
  do
  {
    if ((~*v5 & 0x7C00) == 0)
    {
      v20 = 0;
      sub_23F286EC0(&v22, &v18, v5);
      if (v20 != -1)
      {
        v22 = &v21;
        (off_28518D820[v20])(__p, &v22, &v18);
        if (v20 != -1)
        {
          (off_28518D808[v20])(&v22, &v18);
        }

        v17 = 0;
        v16 = 3;
        operator new();
      }

      sub_23EF41D6C();
    }

    _H0 = *v5;
    __asm { FCVT            D0, H0 }

    LOBYTE(v18) = 7;
    v19 = _D0;
    sub_23F2F05C4(v3, &v18);
    sub_23F0655DC(&v19, v18);
    ++v5;
    v6 -= 2;
  }

  while (v6);
}

void sub_23F2EAA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23F0655DC((v23 + 8), 2);
  if (v22)
  {
    operator delete(v22);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2EAAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2EAAD8(uint64_t a1, float **a2)
{
  if (*(a1 + 32) != 1)
  {
    v8 = a2[1];
    if (v8)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v9 = *a2;
        operator new();
      }

      sub_23EF62578();
    }

    operator new();
  }

  v3 = sub_23F2E72C0(a1);
  v4 = a2[1];
  if (!v4)
  {
    v13 = 0;
    __p[0] = 0;
    sub_23F2F0780();
  }

  v5 = *a2;
  v6 = 4 * v4;
  do
  {
    v7 = *v5;
    if ((*v5 & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      v15 = 0;
      sub_23EF8158C(&v17, &v13, v5);
      if (v15 != -1)
      {
        v17 = &v16;
        (off_28518D820[v15])(__p, &v17, &v13);
        if (v15 != -1)
        {
          (off_28518D808[v15])(&v17, &v13);
        }

        v12 = 0;
        v11 = 3;
        operator new();
      }

      sub_23EF41D6C();
    }

    LOBYTE(v13) = 7;
    v14 = v7;
    sub_23F2F05C4(v3, &v13);
    sub_23F0655DC(&v14, v13);
    ++v5;
    v6 -= 4;
  }

  while (v6);
}

void sub_23F2EAE68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23F0655DC((v23 + 8), 2);
  if (v22)
  {
    operator delete(v22);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2EAF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2EAF38(uint64_t a1, double **a2)
{
  if (*(a1 + 32) != 1)
  {
    v8 = a2[1];
    if (v8)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v9 = *a2;
        operator new();
      }

      sub_23EF62578();
    }

    __p[0] = 0;
    v13 = 0;
    sub_23F2F0780();
  }

  v3 = sub_23F2E72C0(a1);
  v4 = a2[1];
  if (!v4)
  {
    v13 = 0;
    __p[0] = 0;
    sub_23F2F0780();
  }

  v5 = *a2;
  v6 = 8 * v4;
  do
  {
    v7 = *v5;
    if ((*v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v15 = 0;
      sub_23F05B5C8(&v17, &v13, v5);
      if (v15 != -1)
      {
        v17 = &v16;
        (off_28518D820[v15])(__p, &v17, &v13);
        if (v15 != -1)
        {
          (off_28518D808[v15])(&v17, &v13);
        }

        v12 = 0;
        v11 = 3;
        operator new();
      }

      sub_23EF41D6C();
    }

    LOBYTE(v13) = 7;
    v14 = v7;
    sub_23F2F05C4(v3, &v13);
    sub_23F0655DC(&v14, v13);
    ++v5;
    v6 -= 8;
  }

  while (v6);
}

void sub_23F2EB248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23F0655DC((v23 + 8), 2);
  if (v22)
  {
    operator delete(v22);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2EB2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2EB300(uint64_t a1, uint64_t *a2)
{
  sub_23EF367A0(&__p, *a2, *a2 + 24 * a2[1]);
  v4 = 0;
  v3 = 2;
  operator new();
}

void sub_23F2EB504(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F0655DC((v2 + 8), 2);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23F2EB524(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23F2EB538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23F06F5C0(va1);
  operator delete(v2);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23F2EB580(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v2;
  sub_23F2EB5F4(a1 + 40, &v3);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }
}

void sub_23F2EB5F4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_23F2EDA68();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t *sub_23F2EB70C(void *a1)
{
  v1 = a1[4];
  if (*v1 == 2)
  {
    v2 = a1[14];
    v3 = a1[4];

    return sub_23F06F884(v3, v2);
  }

  else
  {
    v5 = a1[12];
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23EF2F8F4();
    }

    v6 = a1[11];
    if (v5 >= 0x17)
    {
      operator new();
    }

    v9 = a1[12];
    if (v5)
    {
      memmove(&__dst, v6, v5);
    }

    *(&__dst + v5) = 0;
    result = sub_23F2D9694(v1, &__dst);
    if (v9 < 0)
    {
      v7 = result;
      operator delete(__dst);
      return v7;
    }
  }

  return result;
}

void sub_23F2EB83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EB858(unint64_t a1, void *a2)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_23F2EDFA0(a1, &__p);
  v3 = __p;
  v4 = v8;
  if (__p != v8)
  {
    v5 = *a2;
    do
    {
      if (*v3 >= 0x100uLL)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v3++;
    }

    while (v3 != v4);
    v3 = __p;
  }

  if (v3)
  {
    v8 = v3;
    operator delete(v3);
  }
}

void sub_23F2EB910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EB930(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v2;
  sub_23F2EB5F4(a1 + 40, &v3);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }
}

uint64_t sub_23F2EB9A4(void *a1)
{
  v1 = a1[4];
  if (*v1 == 2)
  {
    v2 = a1[14];
    v3 = a1[4];

    return sub_23F07019C(v3, v2);
  }

  else
  {
    v5 = a1[12];
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23EF2F8F4();
    }

    v6 = a1[11];
    if (v5 >= 0x17)
    {
      operator new();
    }

    v9 = a1[12];
    if (v5)
    {
      memmove(&__dst, v6, v5);
    }

    *(&__dst + v5) = 0;
    result = sub_23F2D97AC(v1, &__dst);
    if (v9 < 0)
    {
      v7 = result;
      operator delete(__dst);
      return v7;
    }
  }

  return result;
}

void sub_23F2EBAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EBAF0(unint64_t a1, void *a2)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_23F2EEE3C(a1, &__p);
  v3 = __p;
  v4 = v8;
  if (__p != v8)
  {
    v5 = *a2;
    do
    {
      if (*v3 >= 0x100uLL)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v3++;
    }

    while (v3 != v4);
    v3 = __p;
  }

  if (v3)
  {
    v8 = v3;
    operator delete(v3);
  }
}

void sub_23F2EBBA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EBBC8(void *a1, _BYTE *a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];
  v6 = 0;
  sub_23F06FC08(v4, &v6);
  if (v6 != v6)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

void sub_23F2EBC60(void *a1, _BYTE *a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];
  v6 = 0;
  sub_23F06FAB4(v4, &v6);
  if (v6 >= 0x100)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

void sub_23F2EBCF8(void *a1, _WORD *a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];
  v6 = 0;
  sub_23F06FC08(v4, &v6);
  if (v6 != v6)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

void sub_23F2EBD90(void *a1, _WORD *a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];
  v6 = 0;
  sub_23F06FAB4(v4, &v6);
  if (v6 >= 0x10000)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

void sub_23F2EBE28(void *a1, _DWORD *a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];
  v6 = 0;
  sub_23F06FC08(v4, &v6);
  if (v6 != v6)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

void sub_23F2EBEC0(void *a1, _DWORD *a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];
  v6 = 0;
  sub_23F06FAB4(v4, &v6);
  if (HIDWORD(v6))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

double sub_23F2EBF58(void *a1, double *a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];
  v5 = *v4;
  if ((v5 - 5) <= 2)
  {
    __str.__r_.__value_.__r.__words[0] = 0;
    sub_23F06FD5C(v4, &__str);
    result = *&__str.__r_.__value_.__l.__data_;
LABEL_3:
    *a2 = result;
    return result;
  }

  if (v5 == 3)
  {
    memset(&__str, 0, sizeof(__str));
    sub_23F06FFE4(v4, &__str);
    result = std::stod(&__str, 0);
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

    v7 = result;
    operator delete(__str.__r_.__value_.__l.__data_);
    result = v7;
    *a2 = v7;
  }

  else
  {
    result = NAN;
    *a2 = NAN;
  }

  return result;
}

void sub_23F2EC034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EC054(unint64_t a1, void *a2)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_23F2EDA80(a1, &__p);
  v3 = __p;
  v4 = v8;
  if (__p != v8)
  {
    v5 = *a2;
    do
    {
      if (*v3 != *v3)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v3++;
    }

    while (v3 != v4);
    v3 = __p;
  }

  if (v3)
  {
    v8 = v3;
    operator delete(v3);
  }
}

void sub_23F2EC10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EC12C(void *a1, void *a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];

  sub_23F2EB858(v4, a2);
}

void sub_23F2EC174(unint64_t a1, _WORD **a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_23F2EDA80(a1, &v8);
  v3 = v8;
  v4 = v9;
  if (v8 != v9)
  {
    v5 = *a2;
    v6 = v8;
    do
    {
      if (*v6 != *v6)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v6++;
    }

    while (v6 != v4);
  }

  if (v3)
  {
    v9 = v3;
    operator delete(v3);
  }
}

void sub_23F2EC22C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EC24C(void *a1, _WORD **a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];

  sub_23F2EC294(v4, a2);
}

void sub_23F2EC294(unint64_t a1, _WORD **a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_23F2EDFA0(a1, &v8);
  v3 = v8;
  v4 = v9;
  if (v8 != v9)
  {
    v5 = *a2;
    v6 = v8;
    do
    {
      if (*v6 >= 0x10000uLL)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v6++;
    }

    while (v6 != v4);
  }

  if (v3)
  {
    v9 = v3;
    operator delete(v3);
  }
}

void sub_23F2EC34C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EC36C(unint64_t a1, _DWORD **a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_23F2EDA80(a1, &v8);
  v3 = v8;
  v4 = v9;
  if (v8 != v9)
  {
    v5 = *a2;
    v6 = v8;
    do
    {
      if (*v6 != *v6)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v6++;
    }

    while (v6 != v4);
  }

  if (v3)
  {
    v9 = v3;
    operator delete(v3);
  }
}

void sub_23F2EC424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EC444(unint64_t a1, _DWORD **a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_23F2EDFA0(a1, &v8);
  v3 = v8;
  v4 = v9;
  if (v8 != v9)
  {
    v5 = *a2;
    v6 = v8;
    do
    {
      if (HIDWORD(*v6))
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v6++;
    }

    while (v6 != v4);
  }

  if (v3)
  {
    v9 = v3;
    operator delete(v3);
  }
}

void sub_23F2EC4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EC51C(void *a1, __int16 **a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];

  sub_23F2EC564(v4, a2);
}

void sub_23F2EC564(unint64_t a1, __int16 **a2)
{
  if (*a1 == 2)
  {
    v2 = *(a1 + 8);
    v4 = *v2;
    v3 = v2[1];
    v23 = v4;
    v24 = 0x8000000000000000;
    v20[2] = v3;
    v20[3] = 0x8000000000000000;
    v5 = *a2;
    v21 = a1;
    v22 = 0;
    v20[0] = a1;
    for (v20[1] = 0; !sub_23F070C08(&v21, v20); ++v5)
    {
      v6 = sub_23F070F64(&v21);
      v7 = *v6;
      if ((v7 - 5) > 2)
      {
        if (v7 == 3)
        {
          memset(v25, 0, sizeof(v25));
          sub_23F06FFE4(v6, v25);
          sub_23F2F0868(v25);
        }

        v13 = 0x7FFF;
      }

      else
      {
        v25[0] = 0.0;
        sub_23F06FD5C(v6, v25);
        _S0 = v25[0];
        __asm { FCVT            H0, S0 }

        v13 = LOWORD(_S0);
      }

      *v5 = v13;
      v14 = *v21;
      if (v14 == 2)
      {
        v23 += 16;
      }

      else if (v14 == 1)
      {
        v15 = v22;
        v16 = v22[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v15[2];
            _ZF = *v17 == v15;
            v15 = v17;
          }

          while (!_ZF);
        }

        v22 = v17;
      }

      else
      {
        ++v24;
      }
    }
  }

  else
  {
    memset(__p, 0, sizeof(__p));
    sub_23F2F0A3C(a1, __p);
    v18 = __p[0];
    if (__p[0])
    {

      operator delete(v18);
    }
  }
}

void sub_23F2EC700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EC730(void *a1, float **a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];

  sub_23F2EC778(v4, a2);
}

void sub_23F2EC778(unint64_t a1, float **a2)
{
  if (*a1 == 2)
  {
    v2 = *(a1 + 8);
    v4 = *v2;
    v3 = v2[1];
    v17 = v4;
    v18 = 0x8000000000000000;
    v14[2] = v3;
    v14[3] = 0x8000000000000000;
    v5 = *a2;
    v15 = a1;
    v16 = 0;
    v14[0] = a1;
    for (v14[1] = 0; !sub_23F070C08(&v15, v14); ++v5)
    {
      v6 = sub_23F070F64(&v15);
      *v5 = sub_23F2F0960(v6);
      v7 = *v15;
      if (v7 == 2)
      {
        v17 += 16;
      }

      else if (v7 == 1)
      {
        v8 = v16;
        v9 = v16[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v8[2];
            v11 = *v10 == v8;
            v8 = v10;
          }

          while (!v11);
        }

        v16 = v10;
      }

      else
      {
        ++v18;
      }
    }
  }

  else
  {
    memset(__p, 0, sizeof(__p));
    sub_23F2F0A3C(a1, __p);
    v12 = __p[0];
    if (__p[0])
    {

      operator delete(v12);
    }
  }
}

void sub_23F2EC8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EC8BC(unint64_t a1, double **a2)
{
  if (*a1 == 2)
  {
    v2 = *(a1 + 8);
    v4 = *v2;
    v3 = v2[1];
    v20 = v4;
    v21 = 0x8000000000000000;
    v17[2] = v3;
    v17[3] = 0x8000000000000000;
    v5 = *a2;
    v18 = a1;
    v19 = 0;
    v17[0] = a1;
    for (v17[1] = 0; !sub_23F070C08(&v18, v17); ++v5)
    {
      v6 = sub_23F070F64(&v18);
      v7 = *v6;
      if ((v7 - 5) > 2)
      {
        if (v7 == 3)
        {
          memset(&__str, 0, sizeof(__str));
          sub_23F06FFE4(v6, &__str);
          v8 = std::stod(&__str, 0);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            v9 = v8;
            operator delete(__str.__r_.__value_.__l.__data_);
            v8 = v9;
          }
        }

        else
        {
          v8 = NAN;
        }
      }

      else
      {
        __str.__r_.__value_.__r.__words[0] = 0;
        sub_23F06FD5C(v6, &__str);
        v8 = *&__str.__r_.__value_.__l.__data_;
      }

      *v5 = v8;
      v10 = *v18;
      if (v10 == 2)
      {
        v20 += 16;
      }

      else if (v10 == 1)
      {
        v11 = v19;
        v12 = v19[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v11[2];
            v14 = *v13 == v11;
            v11 = v13;
          }

          while (!v14);
        }

        v19 = v13;
      }

      else
      {
        ++v21;
      }
    }
  }

  else
  {
    memset(__p, 0, sizeof(__p));
    sub_23F2F0A3C(a1, __p);
    v15 = __p[0];
    if (__p[0])
    {

      operator delete(v15);
    }
  }
}

void sub_23F2ECA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F2ECA8C(void *a1, void ***a2)
{
  v4 = sub_23F2EB70C(a1);
  ++a1[14];
  v10 = 0uLL;
  v11 = 0;
  sub_23F2EE4C0(v4, &v10);
  v5 = *a2;
  if (*a2)
  {
    v6 = a2[1];
    v7 = *a2;
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *a2;
    }

    a2[1] = v5;
    operator delete(v7);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  result = *&v10;
  *a2 = v10;
  a2[2] = v11;
  return result;
}

void sub_23F2ECB54(void *a1, _BYTE *a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];
  v6 = 0;
  sub_23F070408(v4, &v6);
  if (v6 != v6)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

void sub_23F2ECBEC(void *a1, _BYTE *a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];
  v6 = 0;
  sub_23F0702B4(v4, &v6);
  if (v6 >= 0x100)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

void sub_23F2ECC84(void *a1, _WORD *a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];
  v6 = 0;
  sub_23F070408(v4, &v6);
  if (v6 != v6)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

void sub_23F2ECD1C(void *a1, _WORD *a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];
  v6 = 0;
  sub_23F0702B4(v4, &v6);
  if (v6 >= 0x10000)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

void sub_23F2ECDB4(void *a1, _DWORD *a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];
  v6 = 0;
  sub_23F070408(v4, &v6);
  if (v6 != v6)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

void sub_23F2ECE4C(void *a1, _DWORD *a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];
  v6 = 0;
  sub_23F0702B4(v4, &v6);
  if (HIDWORD(v6))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  *a2 = v6;
}

double sub_23F2ECEE4(void *a1, double *a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];
  v5 = *v4;
  if ((v5 - 5) <= 2)
  {
    __str.__r_.__value_.__r.__words[0] = 0;
    sub_23F07055C(v4, &__str);
    result = *&__str.__r_.__value_.__l.__data_;
LABEL_3:
    *a2 = result;
    return result;
  }

  if (v5 == 3)
  {
    memset(&__str, 0, sizeof(__str));
    sub_23F0707E4(v4, &__str);
    result = std::stod(&__str, 0);
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

    v7 = result;
    operator delete(__str.__r_.__value_.__l.__data_);
    result = v7;
    *a2 = v7;
  }

  else
  {
    result = NAN;
    *a2 = NAN;
  }

  return result;
}

void sub_23F2ECFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2ECFE0(unint64_t a1, void *a2)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_23F2EEB70(a1, &__p);
  v3 = __p;
  v4 = v8;
  if (__p != v8)
  {
    v5 = *a2;
    do
    {
      if (*v3 != *v3)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v3++;
    }

    while (v3 != v4);
    v3 = __p;
  }

  if (v3)
  {
    v8 = v3;
    operator delete(v3);
  }
}

void sub_23F2ED098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2ED0B8(void *a1, void *a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];

  sub_23F2EBAF0(v4, a2);
}

void sub_23F2ED100(unint64_t a1, _WORD **a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_23F2EEB70(a1, &v8);
  v3 = v8;
  v4 = v9;
  if (v8 != v9)
  {
    v5 = *a2;
    v6 = v8;
    do
    {
      if (*v6 != *v6)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v6++;
    }

    while (v6 != v4);
  }

  if (v3)
  {
    v9 = v3;
    operator delete(v3);
  }
}

void sub_23F2ED1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2ED1D8(void *a1, _WORD **a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];

  sub_23F2ED220(v4, a2);
}

void sub_23F2ED220(unint64_t a1, _WORD **a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_23F2EEE3C(a1, &v8);
  v3 = v8;
  v4 = v9;
  if (v8 != v9)
  {
    v5 = *a2;
    v6 = v8;
    do
    {
      if (*v6 >= 0x10000uLL)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v6++;
    }

    while (v6 != v4);
  }

  if (v3)
  {
    v9 = v3;
    operator delete(v3);
  }
}

void sub_23F2ED2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2ED2F8(unint64_t a1, _DWORD **a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_23F2EEB70(a1, &v8);
  v3 = v8;
  v4 = v9;
  if (v8 != v9)
  {
    v5 = *a2;
    v6 = v8;
    do
    {
      if (*v6 != *v6)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v6++;
    }

    while (v6 != v4);
  }

  if (v3)
  {
    v9 = v3;
    operator delete(v3);
  }
}

void sub_23F2ED3B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2ED3D0(unint64_t a1, _DWORD **a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_23F2EEE3C(a1, &v8);
  v3 = v8;
  v4 = v9;
  if (v8 != v9)
  {
    v5 = *a2;
    v6 = v8;
    do
    {
      if (HIDWORD(*v6))
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = &unk_28518DEE8;
        __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
      }

      *v5++ = *v6++;
    }

    while (v6 != v4);
  }

  if (v3)
  {
    v9 = v3;
    operator delete(v3);
  }
}

void sub_23F2ED488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2ED4A8(void *a1, __int16 **a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];

  sub_23F2ED4F0(v4, a2);
}

void sub_23F2ED4F0(unint64_t a1, __int16 **a2)
{
  if (*a1 == 2)
  {
    v2 = *(a1 + 8);
    v4 = *v2;
    v3 = v2[1];
    v20 = v4;
    v21 = 0x8000000000000000;
    v17[2] = v3;
    v17[3] = 0x8000000000000000;
    v5 = *a2;
    v18 = a1;
    v19 = 0;
    v17[0] = a1;
    for (v17[1] = 0; !sub_23F0711B0(&v18, v17); ++v5)
    {
      v6 = sub_23F0712BC(&v18);
      v7 = *v6;
      if ((v7 - 5) > 2)
      {
        if (v7 == 3)
        {
          memset(v22, 0, sizeof(v22));
          sub_23F0707E4(v6, v22);
          sub_23F2F0868(v22);
        }

        v13 = 0x7FFF;
      }

      else
      {
        v22[0] = 0.0;
        sub_23F07055C(v6, v22);
        _S0 = v22[0];
        __asm { FCVT            H0, S0 }

        v13 = LOWORD(_S0);
      }

      *v5 = v13;
      v14 = *v18;
      if (v14 == 2)
      {
        v20 += 16;
      }

      else if (v14 == 1)
      {
        v19 += 40;
      }

      else
      {
        ++v21;
      }
    }
  }

  else
  {
    memset(__p, 0, sizeof(__p));
    sub_23F2F1038(a1, __p);
    v15 = __p[0];
    if (__p[0])
    {

      operator delete(v15);
    }
  }
}

void sub_23F2ED664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2ED694(void *a1, float **a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];

  sub_23F2ED6DC(v4, a2);
}

void sub_23F2ED6DC(unint64_t a1, float **a2)
{
  if (*a1 == 2)
  {
    v2 = *(a1 + 8);
    v4 = *v2;
    v3 = v2[1];
    v13 = v4;
    v14 = 0x8000000000000000;
    v10[2] = v3;
    v10[3] = 0x8000000000000000;
    v5 = *a2;
    v11 = a1;
    v12 = 0;
    v10[0] = a1;
    for (v10[1] = 0; !sub_23F0711B0(&v11, v10); ++v5)
    {
      v6 = sub_23F0712BC(&v11);
      *v5 = sub_23F2F0F5C(v6);
      v7 = *v11;
      if (v7 == 2)
      {
        v13 += 16;
      }

      else if (v7 == 1)
      {
        v12 += 40;
      }

      else
      {
        ++v14;
      }
    }
  }

  else
  {
    memset(__p, 0, sizeof(__p));
    sub_23F2F1038(a1, __p);
    v8 = __p[0];
    if (__p[0])
    {

      operator delete(v8);
    }
  }
}

void sub_23F2ED7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2ED7F8(unint64_t a1, double **a2)
{
  if (*a1 == 2)
  {
    v2 = *(a1 + 8);
    v4 = *v2;
    v3 = v2[1];
    v16 = v4;
    v17 = 0x8000000000000000;
    v13[2] = v3;
    v13[3] = 0x8000000000000000;
    v5 = *a2;
    v14 = a1;
    v15 = 0;
    v13[0] = a1;
    for (v13[1] = 0; !sub_23F0711B0(&v14, v13); ++v5)
    {
      v6 = sub_23F0712BC(&v14);
      v7 = *v6;
      if ((v7 - 5) > 2)
      {
        if (v7 == 3)
        {
          memset(&__str, 0, sizeof(__str));
          sub_23F0707E4(v6, &__str);
          v8 = std::stod(&__str, 0);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            v9 = v8;
            operator delete(__str.__r_.__value_.__l.__data_);
            v8 = v9;
          }
        }

        else
        {
          v8 = NAN;
        }
      }

      else
      {
        __str.__r_.__value_.__r.__words[0] = 0;
        sub_23F07055C(v6, &__str);
        v8 = *&__str.__r_.__value_.__l.__data_;
      }

      *v5 = v8;
      v10 = *v14;
      if (v10 == 2)
      {
        v16 += 16;
      }

      else if (v10 == 1)
      {
        v15 += 40;
      }

      else
      {
        ++v17;
      }
    }
  }

  else
  {
    memset(__p, 0, sizeof(__p));
    sub_23F2F1038(a1, __p);
    v11 = __p[0];
    if (__p[0])
    {

      operator delete(v11);
    }
  }
}

void sub_23F2ED970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F2ED9A0(void *a1, void ***a2)
{
  v4 = sub_23F2EB9A4(a1);
  ++a1[14];
  v10 = 0uLL;
  v11 = 0;
  sub_23F2EF108(v4, &v10);
  v5 = *a2;
  if (*a2)
  {
    v6 = a2[1];
    v7 = *a2;
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *a2;
    }

    a2[1] = v5;
    operator delete(v7);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  result = *&v10;
  *a2 = v10;
  a2[2] = v11;
  return result;
}

double sub_23F2EDA80(unint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v16 = sub_23F06D864(a1);
    sub_23EF3F240(&v17, v16);
    sub_23F06C3EC("type must be array, but is ", &v17, &v19);
    sub_23F06D6C8(302, &v19, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v21 = 0uLL;
  v22 = 0;
  v5 = **(a1 + 8);
  v4 = *(*(a1 + 8) + 8);
  if (v4 != v5)
  {
    if (!(((v4 - v5) >> 4) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v6 = 0;
  *&v19.__r_.__value_.__l.__data_ = a1;
  v20 = 0x8000000000000000;
  v19.__r_.__value_.__r.__words[2] = v5;
  *&v17.__r_.__value_.__l.__data_ = a1;
  v17.__r_.__value_.__r.__words[2] = v4;
  v18 = 0x8000000000000000;
  while (!sub_23F070C08(&v19, &v17))
  {
    v7 = sub_23F070F64(&v19);
    v23 = 0;
    sub_23F06FC08(v7, &v23);
    v6 = sub_23F2EDD70(&v21, v6, &v23) + 8;
    v8 = *v19.__r_.__value_.__l.__data_;
    if (v8 == 2)
    {
      v19.__r_.__value_.__r.__words[2] += 16;
    }

    else if (v8 == 1)
    {
      size = v19.__r_.__value_.__l.__size_;
      v10 = *(v19.__r_.__value_.__l.__size_ + 8);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(size + 16);
          v12 = *v11 == size;
          size = v11;
        }

        while (!v12);
      }

      v19.__r_.__value_.__l.__size_ = v11;
    }

    else
    {
      ++v20;
    }
  }

  v13 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v13;
    operator delete(v13);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *&v21;
  *a2 = v21;
  *(a2 + 16) = v22;
  return result;
}

void sub_23F2EDCE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EDD38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v14);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v14);
  _Unwind_Resume(a1);
}

char *sub_23F2EDD70(uint64_t a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v9 = *a1;
    v10 = (&v6[-*a1] >> 3) + 1;
    if (v10 >> 61)
    {
      sub_23EF62578();
    }

    v11 = v7 - v9;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v13 = __src - v9;
    v14 = (__src - v9) >> 3;
    v15 = (8 * v14);
    if (!v14)
    {
      if (v13 < 1)
      {
        v16 = v13 >> 2;
        if (v9 == __src)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        if (!(v17 >> 61))
        {
          operator new();
        }

        sub_23EF34E18();
      }

      v15 = (v15 - (((v13 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }

    *v15 = *a3;
    v18 = *(a1 + 8) - __src;
    memcpy(v15 + 1, __src, v18);
    *(a1 + 8) = v4;
    v19 = &v4[-*a1];
    v20 = v15 - v19;
    memcpy(v15 - v19, *a1, v19);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v15 + v18 + 8;
    *(a1 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }

    return v15;
  }

  else
  {
    if (__src != v6)
    {
      v8 = __src + 8;
      if (v6 < 8)
      {
        *(a1 + 8) = v6;
        if (v6 == v8)
        {
LABEL_21:
          *v4 = *a3;
          return v4;
        }
      }

      else
      {
        *v6 = *(v6 - 1);
        *(a1 + 8) = v6 + 8;
        if (v6 == v8)
        {
          goto LABEL_21;
        }
      }

      memmove(__src + 8, __src, v6 - v8);
      goto LABEL_21;
    }

    *v6 = *a3;
    *(a1 + 8) = v6 + 8;
  }

  return v4;
}

void sub_23F2EDF88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F2EDFA0(unint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v16 = sub_23F06D864(a1);
    sub_23EF3F240(&v17, v16);
    sub_23F06C3EC("type must be array, but is ", &v17, &v19);
    sub_23F06D6C8(302, &v19, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v21 = 0uLL;
  v22 = 0;
  v5 = **(a1 + 8);
  v4 = *(*(a1 + 8) + 8);
  if (v4 != v5)
  {
    if (!(((v4 - v5) >> 4) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v6 = 0;
  *&v19.__r_.__value_.__l.__data_ = a1;
  v20 = 0x8000000000000000;
  v19.__r_.__value_.__r.__words[2] = v5;
  *&v17.__r_.__value_.__l.__data_ = a1;
  v17.__r_.__value_.__r.__words[2] = v4;
  v18 = 0x8000000000000000;
  while (!sub_23F070C08(&v19, &v17))
  {
    v7 = sub_23F070F64(&v19);
    v23 = 0;
    sub_23F06FAB4(v7, &v23);
    v6 = sub_23F2EE290(&v21, v6, &v23) + 8;
    v8 = *v19.__r_.__value_.__l.__data_;
    if (v8 == 2)
    {
      v19.__r_.__value_.__r.__words[2] += 16;
    }

    else if (v8 == 1)
    {
      size = v19.__r_.__value_.__l.__size_;
      v10 = *(v19.__r_.__value_.__l.__size_ + 8);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(size + 16);
          v12 = *v11 == size;
          size = v11;
        }

        while (!v12);
      }

      v19.__r_.__value_.__l.__size_ = v11;
    }

    else
    {
      ++v20;
    }
  }

  v13 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v13;
    operator delete(v13);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *&v21;
  *a2 = v21;
  *(a2 + 16) = v22;
  return result;
}

void sub_23F2EE208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EE258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v14);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v14);
  _Unwind_Resume(a1);
}

char *sub_23F2EE290(uint64_t a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v9 = *a1;
    v10 = (&v6[-*a1] >> 3) + 1;
    if (v10 >> 61)
    {
      sub_23EF62578();
    }

    v11 = v7 - v9;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v13 = __src - v9;
    v14 = (__src - v9) >> 3;
    v15 = (8 * v14);
    if (!v14)
    {
      if (v13 < 1)
      {
        v16 = v13 >> 2;
        if (v9 == __src)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        if (!(v17 >> 61))
        {
          operator new();
        }

        sub_23EF34E18();
      }

      v15 = (v15 - (((v13 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }

    *v15 = *a3;
    v18 = *(a1 + 8) - __src;
    memcpy(v15 + 1, __src, v18);
    *(a1 + 8) = v4;
    v19 = &v4[-*a1];
    v20 = v15 - v19;
    memcpy(v15 - v19, *a1, v19);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v15 + v18 + 8;
    *(a1 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }

    return v15;
  }

  else
  {
    if (__src != v6)
    {
      v8 = __src + 8;
      if (v6 < 8)
      {
        *(a1 + 8) = v6;
        if (v6 == v8)
        {
LABEL_21:
          *v4 = *a3;
          return v4;
        }
      }

      else
      {
        *v6 = *(v6 - 1);
        *(a1 + 8) = v6 + 8;
        if (v6 == v8)
        {
          goto LABEL_21;
        }
      }

      memmove(__src + 8, __src, v6 - v8);
      goto LABEL_21;
    }

    *v6 = *a3;
    *(a1 + 8) = v6 + 8;
  }

  return v4;
}

void sub_23F2EE4A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F2EE4C0(unsigned __int8 *a1, void ***a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v22 = sub_23F06D864(a1);
    sub_23EF3F240(&v23, v22);
    sub_23F06C3EC("type must be array, but is ", &v23, &v26);
    sub_23F06D6C8(302, &v26, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v29 = 0;
  v28 = 0uLL;
  v4 = *(*(a1 + 1) + 8) - **(a1 + 1);
  if (v4)
  {
    if ((v4 >> 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_23EF3AE74();
  }

  v6 = 0;
  *&v26.__r_.__value_.__l.__data_ = a1;
  v26.__r_.__value_.__r.__words[2] = 0;
  v27 = 0x8000000000000000;
  v7 = *a1;
  if (*a1)
  {
    if (v7 == 2)
    {
      v8 = *(a1 + 1);
      v26.__r_.__value_.__r.__words[2] = *v8;
      v23 = a1;
      v24 = 0;
      *(&v25 + 1) = 0x8000000000000000;
      *&v25 = v8[1];
      goto LABEL_13;
    }

    if (v7 == 1)
    {
      v5 = *(a1 + 1);
      v26.__r_.__value_.__l.__size_ = *v5;
      v25 = xmmword_23F3147D0;
      v23 = a1;
      v24 = v5 + 1;
      goto LABEL_13;
    }

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v23 = a1;
  v24 = 0;
  *&v25 = 0;
  *(&v25 + 1) = 1;
LABEL_13:
  while (!sub_23F070C08(&v26, &v23))
  {
    v9 = sub_23F070F64(&v26);
    v30 = 0uLL;
    v31 = 0;
    sub_23F06FFE4(v9, &v30);
    v10 = sub_23F2EE88C(&v28, v6, &v30);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
      v11 = *v26.__r_.__value_.__l.__data_;
      if (v11 != 2)
      {
LABEL_16:
        if (v11 == 1)
        {
          size = v26.__r_.__value_.__l.__size_;
          v13 = *(v26.__r_.__value_.__l.__size_ + 8);
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v14 = *(size + 16);
              v15 = *v14 == size;
              size = v14;
            }

            while (!v15);
          }

          v26.__r_.__value_.__l.__size_ = v14;
        }

        else
        {
          ++v27;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v11 = *v26.__r_.__value_.__l.__data_;
      if (v11 != 2)
      {
        goto LABEL_16;
      }
    }

    v26.__r_.__value_.__r.__words[2] += 16;
LABEL_26:
    v6 = (v10 + 24);
  }

  v16 = *a2;
  if (*a2)
  {
    v17 = a2[1];
    v18 = *a2;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = *a2;
    }

    a2[1] = v16;
    operator delete(v18);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  result = *&v28;
  *a2 = v28;
  a2[2] = v29;
  return result;
}

void sub_23F2EE7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23F2EE81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v22)
    {
LABEL_8:
      __cxa_free_exception(v21);
      _Unwind_Resume(a1);
    }
  }

  else if (v22)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23F2EE88C(void *a1, char *a2, __int128 *a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v16 = *a1;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) + 1;
    if (v17 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23EF3AE74();
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v16) >> 3);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x555555555555555)
    {
      v19 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      if (v19 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v22 = a2 - v16;
    v23 = 8 * ((a2 - v16) >> 3);
    if (!(0xAAAAAAAAAAAAAAABLL * ((a2 - v16) >> 3)))
    {
      if (v22 < 1)
      {
        operator new();
      }

      v23 -= 24 * ((1 - 0x5555555555555555 * (v22 >> 3)) >> 1);
    }

    *v23 = *a3;
    *(v23 + 16) = *(a3 + 2);
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    *a3 = 0;
    memcpy((v23 + 24), a2, a1[1] - a2);
    v24 = *a1;
    v25 = v23 + 24 + a1[1] - v4;
    a1[1] = v4;
    v26 = v4 - v24;
    v27 = (v23 - (v4 - v24));
    memcpy(v27, v24, v26);
    v28 = *a1;
    *a1 = v27;
    a1[1] = v25;
    a1[2] = 0;
    if (v28)
    {
      operator delete(v28);
    }

    return v23;
  }

  else if (a2 == v7)
  {
    v21 = *a3;
    *(v7 + 16) = *(a3 + 2);
    *v7 = v21;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    *a3 = 0;
    a1[1] = v7 + 24;
  }

  else
  {
    v8 = (v7 - 24);
    v9 = a1[1];
    if (v7 >= 0x18)
    {
      v9 = v7 + 24;
      v10 = *v8;
      *(v7 + 16) = *(v7 - 8);
      *v7 = v10;
      *(v7 - 16) = 0;
      *(v7 - 8) = 0;
      *v8 = 0;
    }

    a1[1] = v9;
    if (v7 != a2 + 24)
    {
      v11 = 0;
      v12 = &a2[-v7 + 24];
      do
      {
        v14 = v7 + v11;
        v15 = v7 + v11 - 24;
        if (*(v7 + v11 - 1) < 0)
        {
          operator delete(*v15);
        }

        v11 -= 24;
        v13 = *(v14 - 48);
        *(v15 + 16) = *(v14 - 32);
        *v15 = v13;
        *(v14 - 25) = 0;
        *(v14 - 48) = 0;
      }

      while (v12 != v11);
    }

    if (v4[23] < 0)
    {
      operator delete(*v4);
    }

    v20 = *a3;
    *(v4 + 2) = *(a3 + 2);
    *v4 = v20;
    *(a3 + 23) = 0;
    *a3 = 0;
  }

  return v4;
}

void sub_23F2EEB5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

double sub_23F2EEB70(unint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v12 = sub_23F06D864(a1);
    sub_23EF3F240(&v13, v12);
    sub_23F06C3EC("type must be array, but is ", &v13, &v15);
    sub_23F06D6C8(302, &v15, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v17 = 0uLL;
  v18 = 0;
  v5 = **(a1 + 8);
  v4 = *(*(a1 + 8) + 8);
  if (v4 != v5)
  {
    if (!(((v4 - v5) >> 4) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v6 = 0;
  *&v15.__r_.__value_.__l.__data_ = a1;
  v16 = 0x8000000000000000;
  v15.__r_.__value_.__r.__words[2] = v5;
  *&v13.__r_.__value_.__l.__data_ = a1;
  v13.__r_.__value_.__r.__words[2] = v4;
  v14 = 0x8000000000000000;
  while (!sub_23F0711B0(&v15, &v13))
  {
    v7 = sub_23F0712BC(&v15);
    v19 = 0;
    sub_23F070408(v7, &v19);
    v6 = sub_23F2EDD70(&v17, v6, &v19) + 8;
    v8 = *v15.__r_.__value_.__l.__data_;
    if (v8 == 2)
    {
      v15.__r_.__value_.__r.__words[2] += 16;
    }

    else if (v8 == 1)
    {
      v15.__r_.__value_.__l.__size_ += 40;
    }

    else
    {
      ++v16;
    }
  }

  v9 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v9;
    operator delete(v9);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *&v17;
  *a2 = v17;
  *(a2 + 16) = v18;
  return result;
}

void sub_23F2EEDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EEE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v14);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v14);
  _Unwind_Resume(a1);
}

double sub_23F2EEE3C(unint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v12 = sub_23F06D864(a1);
    sub_23EF3F240(&v13, v12);
    sub_23F06C3EC("type must be array, but is ", &v13, &v15);
    sub_23F06D6C8(302, &v15, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v17 = 0uLL;
  v18 = 0;
  v5 = **(a1 + 8);
  v4 = *(*(a1 + 8) + 8);
  if (v4 != v5)
  {
    if (!(((v4 - v5) >> 4) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v6 = 0;
  *&v15.__r_.__value_.__l.__data_ = a1;
  v16 = 0x8000000000000000;
  v15.__r_.__value_.__r.__words[2] = v5;
  *&v13.__r_.__value_.__l.__data_ = a1;
  v13.__r_.__value_.__r.__words[2] = v4;
  v14 = 0x8000000000000000;
  while (!sub_23F0711B0(&v15, &v13))
  {
    v7 = sub_23F0712BC(&v15);
    v19 = 0;
    sub_23F0702B4(v7, &v19);
    v6 = sub_23F2EE290(&v17, v6, &v19) + 8;
    v8 = *v15.__r_.__value_.__l.__data_;
    if (v8 == 2)
    {
      v15.__r_.__value_.__r.__words[2] += 16;
    }

    else if (v8 == 1)
    {
      v15.__r_.__value_.__l.__size_ += 40;
    }

    else
    {
      ++v16;
    }
  }

  v9 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v9;
    operator delete(v9);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *&v17;
  *a2 = v17;
  *(a2 + 16) = v18;
  return result;
}

void sub_23F2EF080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2EF0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v14);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v14);
  _Unwind_Resume(a1);
}

double sub_23F2EF108(unsigned __int8 *a1, void ***a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v19 = sub_23F06D864(a1);
    sub_23EF3F240(&v20, v19);
    sub_23F06C3EC("type must be array, but is ", &v20, &v23);
    sub_23F06D6C8(302, &v23, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v26 = 0;
  v25 = 0uLL;
  v4 = *(*(a1 + 1) + 8) - **(a1 + 1);
  if (v4)
  {
    if ((v4 >> 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_23EF3AE74();
  }

  v7 = 0;
  *&v23.__r_.__value_.__l.__data_ = a1;
  v23.__r_.__value_.__r.__words[2] = 0;
  v24 = 0x8000000000000000;
  v8 = *a1;
  if (*a1)
  {
    if (v8 == 2)
    {
      v9 = *(a1 + 1);
      v23.__r_.__value_.__r.__words[2] = *v9;
      v20 = a1;
      v21 = 0;
      *(&v22 + 1) = 0x8000000000000000;
      *&v22 = v9[1];
      goto LABEL_13;
    }

    if (v8 == 1)
    {
      v5 = *(a1 + 1);
      v23.__r_.__value_.__l.__size_ = *v5;
      v22 = xmmword_23F3147D0;
      v6 = v5[1];
      v20 = a1;
      v21 = v6;
      goto LABEL_13;
    }

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v20 = a1;
  v21 = 0;
  *&v22 = 0;
  *(&v22 + 1) = 1;
LABEL_13:
  while (!sub_23F0711B0(&v23, &v20))
  {
    v10 = sub_23F0712BC(&v23);
    v27 = 0uLL;
    v28 = 0;
    sub_23F0707E4(v10, &v27);
    v11 = sub_23F2EE88C(&v25, v7, &v27);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
      v12 = *v23.__r_.__value_.__l.__data_;
      if (v12 != 2)
      {
LABEL_16:
        if (v12 == 1)
        {
          v23.__r_.__value_.__l.__size_ += 40;
        }

        else
        {
          ++v24;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v12 = *v23.__r_.__value_.__l.__data_;
      if (v12 != 2)
      {
        goto LABEL_16;
      }
    }

    v23.__r_.__value_.__r.__words[2] += 16;
LABEL_21:
    v7 = (v11 + 24);
  }

  v13 = *a2;
  if (*a2)
  {
    v14 = a2[1];
    v15 = *a2;
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = *a2;
    }

    a2[1] = v13;
    operator delete(v15);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  result = *&v25;
  *a2 = v25;
  a2[2] = v26;
  return result;
}

void sub_23F2EF400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23F2EF440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v22)
    {
LABEL_8:
      __cxa_free_exception(v21);
      _Unwind_Resume(a1);
    }
  }

  else if (v22)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

void sub_23F2EF578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F071E1C(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2EF65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F071E1C(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2EF744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F071E1C(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2EF82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F071E1C(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2EF914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F071E1C(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2EF9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F071E1C(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2EFAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F071E1C(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2EFBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F071E1C(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_23F2EFBE8(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_23F06D864(a1);
    sub_23EF3F240(&v8, v7);
    sub_23F06C3EC("cannot use push_back() with ", &v8, &v9);
    sub_23F06D6C8(308, &v9, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v3 = *(a1 + 8);
  v4 = v3[1];
  if (v4 < v3[2])
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    result = v4 + 16;
    v3[1] = v4 + 16;
  }

  else
  {
    result = sub_23F063D40(v3, a2);
    v3[1] = result;
  }

  return result;
}

void sub_23F2EFD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

void sub_23F2EFE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F071E1C(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2EFF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F06F5C0(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2F0038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F06F5C0(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2F0120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F06F5C0(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2F0208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F06F5C0(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2F02F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F06F5C0(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2F03D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F06F5C0(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2F04C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F06F5C0(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2F05A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F06F5C0(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_23F2F05C4(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_23F06D864(a1);
    sub_23EF3F240(&v8, v7);
    sub_23F06C3EC("cannot use push_back() with ", &v8, &v9);
    sub_23F06D6C8(308, &v9, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v3 = *(a1 + 8);
  v4 = v3[1];
  if (v4 < v3[2])
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    result = v4 + 16;
    v3[1] = v4 + 16;
  }

  else
  {
    result = sub_23F065DA8(v3, a2);
    v3[1] = result;
  }

  return result;
}

void sub_23F2F0710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

void sub_23F2F084C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F06F5C0(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F2F0868(uint64_t *a1)
{
  if (*(a1 + 23) < 0)
  {
    v1 = *a1;
  }

  operator new();
}

void sub_23F2F092C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = 0;
  sub_23F302A54(&a9, v9);
  _Unwind_Resume(a1);
}

float sub_23F2F0960(void **a1)
{
  v1 = *a1;
  if ((v1 - 5) > 2)
  {
    if (v1 == 3)
    {
      memset(&__str, 0, sizeof(__str));
      sub_23F06FFE4(a1, &__str);
      result = std::stof(&__str, 0);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        v3 = result;
        operator delete(__str.__r_.__value_.__l.__data_);
        return v3;
      }
    }

    else
    {
      return NAN;
    }
  }

  else
  {
    __str.__r_.__value_.__r.__words[0] = 0;
    sub_23F06FD5C(a1, &__str);
    return *&__str.__r_.__value_.__l.__data_;
  }

  return result;
}

void sub_23F2F0A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F2F0A3C(unint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v16 = sub_23F06D864(a1);
    sub_23EF3F240(&v17, v16);
    sub_23F06C3EC("type must be array, but is ", &v17, &v19);
    sub_23F06D6C8(302, &v19, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v21 = 0uLL;
  v22 = 0;
  v5 = **(a1 + 8);
  v4 = *(*(a1 + 8) + 8);
  if (v4 != v5)
  {
    if (!(((v4 - v5) >> 4) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v6 = 0;
  *&v19.__r_.__value_.__l.__data_ = a1;
  v20 = 0x8000000000000000;
  v19.__r_.__value_.__r.__words[2] = v5;
  *&v17.__r_.__value_.__l.__data_ = a1;
  v17.__r_.__value_.__r.__words[2] = v4;
  v18 = 0x8000000000000000;
  while (!sub_23F070C08(&v19, &v17))
  {
    v7 = sub_23F070F64(&v19);
    v23 = 0;
    sub_23F06FD5C(v7, &v23);
    v6 = sub_23F2F0D2C(&v21, v6, &v23) + 8;
    v8 = *v19.__r_.__value_.__l.__data_;
    if (v8 == 2)
    {
      v19.__r_.__value_.__r.__words[2] += 16;
    }

    else if (v8 == 1)
    {
      size = v19.__r_.__value_.__l.__size_;
      v10 = *(v19.__r_.__value_.__l.__size_ + 8);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(size + 16);
          v12 = *v11 == size;
          size = v11;
        }

        while (!v12);
      }

      v19.__r_.__value_.__l.__size_ = v11;
    }

    else
    {
      ++v20;
    }
  }

  v13 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v13;
    operator delete(v13);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *&v21;
  *a2 = v21;
  *(a2 + 16) = v22;
  return result;
}

void sub_23F2F0CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F0CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v14);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v14);
  _Unwind_Resume(a1);
}

char *sub_23F2F0D2C(uint64_t a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v9 = *a1;
    v10 = (&v6[-*a1] >> 3) + 1;
    if (v10 >> 61)
    {
      sub_23EF62578();
    }

    v11 = v7 - v9;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v13 = __src - v9;
    v14 = (__src - v9) >> 3;
    v15 = (8 * v14);
    if (!v14)
    {
      if (v13 < 1)
      {
        v16 = v13 >> 2;
        if (v9 == __src)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        if (!(v17 >> 61))
        {
          operator new();
        }

        sub_23EF34E18();
      }

      v15 = (v15 - (((v13 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }

    *v15 = *a3;
    v18 = *(a1 + 8) - __src;
    memcpy(v15 + 1, __src, v18);
    *(a1 + 8) = v4;
    v19 = &v4[-*a1];
    v20 = v15 - v19;
    memcpy(v15 - v19, *a1, v19);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v15 + v18 + 8;
    *(a1 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }

    return v15;
  }

  else
  {
    if (__src != v6)
    {
      v8 = __src + 8;
      if (v6 < 8)
      {
        *(a1 + 8) = v6;
        if (v6 == v8)
        {
LABEL_21:
          *v4 = *a3;
          return v4;
        }
      }

      else
      {
        *v6 = *(v6 - 1);
        *(a1 + 8) = v6 + 8;
        if (v6 == v8)
        {
          goto LABEL_21;
        }
      }

      memmove(__src + 8, __src, v6 - v8);
      goto LABEL_21;
    }

    *v6 = *a3;
    *(a1 + 8) = v6 + 8;
  }

  return v4;
}

void sub_23F2F0F44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

float sub_23F2F0F5C(void **a1)
{
  v1 = *a1;
  if ((v1 - 5) > 2)
  {
    if (v1 == 3)
    {
      memset(&__str, 0, sizeof(__str));
      sub_23F0707E4(a1, &__str);
      result = std::stof(&__str, 0);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        v3 = result;
        operator delete(__str.__r_.__value_.__l.__data_);
        return v3;
      }
    }

    else
    {
      return NAN;
    }
  }

  else
  {
    __str.__r_.__value_.__r.__words[0] = 0;
    sub_23F07055C(a1, &__str);
    return *&__str.__r_.__value_.__l.__data_;
  }

  return result;
}

void sub_23F2F1018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F2F1038(unint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v12 = sub_23F06D864(a1);
    sub_23EF3F240(&v13, v12);
    sub_23F06C3EC("type must be array, but is ", &v13, &v15);
    sub_23F06D6C8(302, &v15, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v17 = 0uLL;
  v18 = 0;
  v5 = **(a1 + 8);
  v4 = *(*(a1 + 8) + 8);
  if (v4 != v5)
  {
    if (!(((v4 - v5) >> 4) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v6 = 0;
  *&v15.__r_.__value_.__l.__data_ = a1;
  v16 = 0x8000000000000000;
  v15.__r_.__value_.__r.__words[2] = v5;
  *&v13.__r_.__value_.__l.__data_ = a1;
  v13.__r_.__value_.__r.__words[2] = v4;
  v14 = 0x8000000000000000;
  while (!sub_23F0711B0(&v15, &v13))
  {
    v7 = sub_23F0712BC(&v15);
    v19 = 0;
    sub_23F07055C(v7, &v19);
    v6 = sub_23F2F0D2C(&v17, v6, &v19) + 8;
    v8 = *v15.__r_.__value_.__l.__data_;
    if (v8 == 2)
    {
      v15.__r_.__value_.__r.__words[2] += 16;
    }

    else if (v8 == 1)
    {
      v15.__r_.__value_.__l.__size_ += 40;
    }

    else
    {
      ++v16;
    }
  }

  v9 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v9;
    operator delete(v9);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *&v17;
  *a2 = v17;
  *(a2 + 16) = v18;
  return result;
}

void sub_23F2F127C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F12CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v14);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v14);
  _Unwind_Resume(a1);
}

void sub_23F2F1304(int a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  v5 = 0;
  v8 = v4;
  v9 = "Invalid ArithmeticType value '";
  v10 = v4;
  v11 = "Invalid ArithmeticType value '";
  v12 = "Invalid ArithmeticType value '";
  v6.__r_.__value_.__r.__words[0] = &v8;
  sub_23F084C60(&v6);
  std::to_string(&v6, a1);
  v8 = v4;
  v9 = &v6;
  v10 = v4;
  v11 = &v6;
  v12 = &v6;
  if (v5 == -1)
  {
    sub_23EF41D6C();
  }

  v7 = &v8;
  (off_28518D838[v5])(&v7, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  v8 = v4;
  v9 = "'";
  v10 = v4;
  v11 = "'";
  v12 = "'";
  if (v5 == -1)
  {
    sub_23EF41D6C();
  }

  v6.__r_.__value_.__r.__words[0] = &v8;
  (*(&off_28518D880 + v5))(&v6, v4);
  if (v5 == -1)
  {
    sub_23EF41D6C();
  }

  v8 = &v6;
  (off_28518D868[v5])(&v3, &v8, v4);
  if (v5 != -1)
  {
    (off_28518D850[v5])(&v8, v4);
  }

  std::logic_error::logic_error(exception, &v3);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_278C744A8, MEMORY[0x277D82610]);
}

void sub_23F2F14C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void *sub_23F2F1524(void *a1, _BYTE *a2)
{
  v2 = *a2;
  if (v2 > 5)
  {
    if (*a2 <= 7u)
    {
      if (v2 == 6)
      {
        v3 = "i16";
        v4 = 3;
        return sub_23EF2F9B0(a1, v3, v4);
      }

      if (v2 == 7)
      {
        v3 = "i32";
        v4 = 3;
        return sub_23EF2F9B0(a1, v3, v4);
      }
    }

    else
    {
      switch(v2)
      {
        case 8u:
          v3 = "i64";
          v4 = 3;
          return sub_23EF2F9B0(a1, v3, v4);
        case 0xBu:
          v3 = "f32";
          v4 = 3;
          return sub_23EF2F9B0(a1, v3, v4);
        case 0xCu:
          v3 = "f64";
          v4 = 3;
          return sub_23EF2F9B0(a1, v3, v4);
      }
    }

    goto LABEL_24;
  }

  if (*a2 > 1u)
  {
    switch(v2)
    {
      case 2u:
        v3 = "u32";
        v4 = 3;
        return sub_23EF2F9B0(a1, v3, v4);
      case 3u:
        v3 = "u64";
        v4 = 3;
        return sub_23EF2F9B0(a1, v3, v4);
      case 5u:
        v3 = "i8";
        v4 = 2;
        return sub_23EF2F9B0(a1, v3, v4);
    }

LABEL_24:
    v3 = "unknown arithmetic type";
    v4 = 23;
    return sub_23EF2F9B0(a1, v3, v4);
  }

  if (*a2)
  {
    v3 = "u16";
    v4 = 3;
  }

  else
  {
    v3 = "u8";
    v4 = 2;
  }

  return sub_23EF2F9B0(a1, v3, v4);
}

uint64_t *sub_23F2F163C(uint64_t *a1, _BYTE *a2)
{
  if ((atomic_load_explicit(&qword_27E396028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E396028))
  {
    sub_23F2F18F0();
  }

  __p = 0;
  v25 = 0;
  v26 = 0;
  sub_23F04A2C0(a1, &__p);
  v4 = qword_27E396038;
  if (!qword_27E396038)
  {
    goto LABEL_41;
  }

  if (v26 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v26 >= 0)
  {
    v6 = HIBYTE(v26);
  }

  else
  {
    v6 = v25;
  }

  v7 = &qword_27E396038;
  do
  {
    while (1)
    {
      v8 = *(v4 + 55);
      v9 = v8 >= 0 ? (v4 + 32) : *(v4 + 32);
      v10 = v8 >= 0 ? *(v4 + 55) : *(v4 + 40);
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, p_p, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_24;
      }

LABEL_10:
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v7 = v4;
    v4 = *v4;
  }

  while (v4);
LABEL_25:
  if (v7 == &qword_27E396038)
  {
    goto LABEL_41;
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(p_p, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_41:
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v20 = std::string::append(&v22, ", expected [u|i|f][{size}]", 0x1AuLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(exception, &v23);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278C744A8, MEMORY[0x277D82610]);
  }

  if (v6 < v15)
  {
    goto LABEL_41;
  }

LABEL_37:
  *a2 = *(v7 + 56);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_23F2F1878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v28 & 1) == 0)
    {
LABEL_8:
      if (a27 < 0)
      {
        operator delete(a22);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v27);
  goto LABEL_8;
}

void sub_23F2F18F0()
{
  v3 = *MEMORY[0x277D85DE8];
  qword_27E396038 = 0;
  v1 = 0x807060503020100;
  v2 = 3083;
  qword_27E396040 = 0;
  qword_27E396030 = &qword_27E396038;
  v0 = 0;
  sub_23EF848B8();
}

void sub_23F2F1C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2F1CA0(uint64_t a1)
{
  v2 = 0;
  if (*a1)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F2F1D88();
  }

  return *(a1 + 8);
}

void sub_23F2F1D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void sub_23F2F1D88()
{
  v0[23] = 14;
  strcpy(v0, "Value of type ");
  v1 = 1;
  sub_23EF848B8();
}

void sub_23F2F1EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2F1EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2F1EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2F1EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F2F1F04(uint64_t a1)
{
  v2 = 1;
  if (*a1 != 1)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F2F1D88();
  }

  return *(a1 + 8);
}

void sub_23F2F1FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t sub_23F2F1FF4(uint64_t a1)
{
  v2 = 2;
  if (*a1 != 2)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F2F1D88();
  }

  return *(a1 + 8);
}

void sub_23F2F20AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t sub_23F2F20E4(uint64_t a1)
{
  v2 = 3;
  if (*a1 != 3)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F2F1D88();
  }

  return *(a1 + 8);
}

void sub_23F2F219C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t sub_23F2F21D4(uint64_t a1)
{
  v2 = 5;
  if (*a1 != 5)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F2F1D88();
  }

  return *(a1 + 8);
}

void sub_23F2F228C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t sub_23F2F22C4(uint64_t a1)
{
  v2 = 6;
  if (*a1 != 6)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F2F1D88();
  }

  return *(a1 + 8);
}

void sub_23F2F237C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t sub_23F2F23B4(uint64_t a1)
{
  v2 = 7;
  if (*a1 != 7)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F2F1D88();
  }

  return *(a1 + 8);
}

void sub_23F2F246C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t sub_23F2F24A4(uint64_t a1)
{
  v2 = 8;
  if (*a1 != 8)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F2F1D88();
  }

  return *(a1 + 8);
}

void sub_23F2F255C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t sub_23F2F2594(uint64_t a1)
{
  v2 = 11;
  if (*a1 != 11)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F2F1D88();
  }

  return *(a1 + 8);
}

void sub_23F2F264C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t sub_23F2F2684(uint64_t a1)
{
  v2 = 12;
  if (*a1 != 12)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F2F1D88();
  }

  return *(a1 + 8);
}

void sub_23F2F273C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t sub_23F2F2774(_BYTE *a1, _BYTE *a2)
{
  v3 = *a1;
  if (v3 > 5)
  {
    if (*a1 <= 7u)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          goto LABEL_73;
        }

        sub_23F2F23B4(a1);
        v5 = *sub_23F2F23B4(a1);
        v6 = *a2;
        if (v6 > 5)
        {
          if (*a2 > 7u)
          {
            if (v6 != 8)
            {
LABEL_85:
              if (v6 != 11)
              {
                if (v6 != 12)
                {
                  goto LABEL_74;
                }

                sub_23F2F2684(a2);
                v32 = *sub_23F2F2684(a2);
                v33 = v5;
                goto LABEL_115;
              }

              sub_23F2F2594(a2);
              v37 = *sub_23F2F2594(a2);
              v38 = v5;
LABEL_200:
              if (v37 > v38)
              {
                return 0xFFFFFFFFLL;
              }

              else
              {
                return v37 < v38;
              }
            }

LABEL_121:
            sub_23F2F24A4(a2);
            v35 = sub_23F2F24A4(a2);
            if (*v35 > v5)
            {
              return 0xFFFFFFFFLL;
            }

            else
            {
              return *v35 < v5;
            }
          }

          if (v6 != 6)
          {
            if (v6 != 7)
            {
              goto LABEL_74;
            }

            sub_23F2F23B4(a2);
            v16 = *sub_23F2F23B4(a2);
            goto LABEL_160;
          }

          sub_23F2F22C4(a2);
          v13 = *sub_23F2F22C4(a2);
        }

        else if (*a2 <= 1u)
        {
          if (*a2)
          {
            sub_23F2F1F04(a2);
            v13 = *sub_23F2F1F04(a2);
          }

          else
          {
            sub_23F2F1CA0(a2);
            v13 = *sub_23F2F1CA0(a2);
          }
        }

        else
        {
          if (v6 == 2)
          {
LABEL_163:
            sub_23F2F1FF4(a2);
            v39 = sub_23F2F1FF4(a2);
LABEL_164:
            v11 = *v39;
LABEL_165:
            if (v5 < v11)
            {
              return 0xFFFFFFFFLL;
            }

            else
            {
              return v11 < v5;
            }
          }

          if (v6 == 3)
          {
            goto LABEL_80;
          }

          if (v6 != 5)
          {
            goto LABEL_74;
          }

          sub_23F2F21D4(a2);
          v13 = *sub_23F2F21D4(a2);
        }

        if (v5 < v13)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return v5 > v13;
        }
      }

      sub_23F2F22C4(a1);
      v5 = *sub_23F2F22C4(a1);
      v6 = *a2;
      if (v6 > 5)
      {
        goto LABEL_44;
      }

      if (*a2 <= 1u)
      {
        goto LABEL_118;
      }

      goto LABEL_38;
    }

    if (v3 == 8)
    {
      sub_23F2F24A4(a1);
      v22 = *sub_23F2F24A4(a1);
      v6 = *a2;
      if (v6 > 5)
      {
        if (*a2 > 7u)
        {
          if (v6 == 8)
          {
            sub_23F2F24A4(a2);
            v46 = *sub_23F2F24A4(a2);
            if (v22 < v46)
            {
              return 0xFFFFFFFFLL;
            }

            else
            {
              return v46 < v22;
            }
          }

          if (v6 != 11)
          {
            if (v6 != 12)
            {
              goto LABEL_74;
            }

            sub_23F2F2684(a2);
            v32 = *sub_23F2F2684(a2);
            v33 = v22;
            goto LABEL_115;
          }

          sub_23F2F2594(a2);
          v37 = *sub_23F2F2594(a2);
          v38 = v22;
          goto LABEL_200;
        }

        if (v6 == 6)
        {
          sub_23F2F22C4(a2);
          v23 = *sub_23F2F22C4(a2);
        }

        else
        {
          if (v6 != 7)
          {
            goto LABEL_74;
          }

          sub_23F2F23B4(a2);
          v23 = *sub_23F2F23B4(a2);
        }
      }

      else if (*a2 <= 1u)
      {
        if (*a2)
        {
          sub_23F2F1F04(a2);
          v23 = *sub_23F2F1F04(a2);
        }

        else
        {
          sub_23F2F1CA0(a2);
          v23 = *sub_23F2F1CA0(a2);
        }
      }

      else
      {
        switch(v6)
        {
          case 2u:
            sub_23F2F1FF4(a2);
            v23 = *sub_23F2F1FF4(a2);
            break;
          case 3u:
LABEL_168:
            sub_23F2F20E4(a2);
            v43 = sub_23F2F20E4(a2);
            goto LABEL_196;
          case 5u:
            sub_23F2F21D4(a2);
            v23 = *sub_23F2F21D4(a2);
            break;
          default:
            goto LABEL_74;
        }
      }

      v44 = v22 < v23;
      v45 = v22 > v23;
      if (v44)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v45;
      }
    }

    if (v3 != 11)
    {
      if (v3 != 12)
      {
        goto LABEL_73;
      }

      sub_23F2F2684(a1);
      v8 = *sub_23F2F2684(a1);
      v6 = *a2;
      if (v6 > 5)
      {
        if (*a2 <= 7u)
        {
          if (v6 == 6)
          {
            sub_23F2F22C4(a2);
            v49.i16[0] = *sub_23F2F22C4(a2);
            v42 = vmovl_s16(v49).i32[0];
          }

          else
          {
            if (v6 != 7)
            {
              goto LABEL_74;
            }

            sub_23F2F23B4(a2);
            v42 = *sub_23F2F23B4(a2);
          }

          v9 = v42;
        }

        else
        {
          switch(v6)
          {
            case 8u:
              sub_23F2F24A4(a2);
              v9 = *sub_23F2F24A4(a2);
              break;
            case 0xBu:
              sub_23F2F2594(a2);
              v9 = *sub_23F2F2594(a2);
              break;
            case 0xCu:
              sub_23F2F2684(a2);
              v34 = *sub_23F2F2684(a2);
              if (v8 < v34)
              {
                return 0xFFFFFFFFLL;
              }

              else
              {
                return v34 < v8;
              }

            default:
              goto LABEL_74;
          }
        }
      }

      else
      {
        if (*a2 <= 1u)
        {
          if (*a2)
          {
            sub_23F2F1F04(a2);
            LOWORD(v40) = *sub_23F2F1F04(a2);
          }

          else
          {
            sub_23F2F1CA0(a2);
            LOBYTE(v40) = *sub_23F2F1CA0(a2);
          }
        }

        else
        {
          switch(v6)
          {
            case 2u:
              sub_23F2F1FF4(a2);
              LODWORD(v40) = *sub_23F2F1FF4(a2);
              break;
            case 3u:
              sub_23F2F20E4(a2);
              v40 = *sub_23F2F20E4(a2);
              break;
            case 5u:
              sub_23F2F21D4(a2);
              v9 = *sub_23F2F21D4(a2);
              goto LABEL_215;
            default:
              goto LABEL_74;
          }
        }

        v9 = v40;
      }

LABEL_215:
      if (v8 < v9)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v8 > v9;
      }
    }

    sub_23F2F2594(a1);
    v27 = *sub_23F2F2594(a1);
    v6 = *a2;
    if (v6 > 5)
    {
      if (*a2 <= 7u)
      {
        if (v6 == 6)
        {
          sub_23F2F22C4(a2);
          v50.i16[0] = *sub_23F2F22C4(a2);
          v29 = vmovl_s16(v50).i32[0];
        }

        else
        {
          if (v6 != 7)
          {
            goto LABEL_74;
          }

          sub_23F2F23B4(a2);
          v29 = *sub_23F2F23B4(a2);
        }
      }

      else
      {
        if (v6 != 8)
        {
          if (v6 == 11)
          {
            sub_23F2F2594(a2);
            v51 = *sub_23F2F2594(a2);
            if (v27 < v51)
            {
              return 0xFFFFFFFFLL;
            }

            else
            {
              return v51 < v27;
            }
          }

          if (v6 != 12)
          {
            goto LABEL_74;
          }

          sub_23F2F2684(a2);
          v32 = *sub_23F2F2684(a2);
          v33 = v27;
LABEL_115:
          if (v32 > v33)
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return v32 < v33;
          }
        }

        sub_23F2F24A4(a2);
        v29 = *sub_23F2F24A4(a2);
      }
    }

    else
    {
      if (*a2 <= 1u)
      {
        if (*a2)
        {
          sub_23F2F1F04(a2);
          LOWORD(v41) = *sub_23F2F1F04(a2);
        }

        else
        {
          sub_23F2F1CA0(a2);
          LOBYTE(v41) = *sub_23F2F1CA0(a2);
        }
      }

      else
      {
        if (v6 != 2)
        {
          if (v6 == 3)
          {
            sub_23F2F20E4(a2);
            v29 = *sub_23F2F20E4(a2);
          }

          else
          {
            if (v6 != 5)
            {
              goto LABEL_74;
            }

            sub_23F2F21D4(a2);
            v28.i8[0] = *sub_23F2F21D4(a2);
            v29 = vmovl_s16(*&vmovl_s8(v28)).i32[0];
          }

          goto LABEL_219;
        }

        sub_23F2F1FF4(a2);
        v41 = *sub_23F2F1FF4(a2);
      }

      v29 = v41;
    }

LABEL_219:
    if (v27 < v29)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v27 > v29;
    }
  }

  if (*a1 > 1u)
  {
    if (v3 != 2)
    {
      if (v3 != 3)
      {
        if (v3 == 5)
        {
          sub_23F2F21D4(a1);
          v5 = *sub_23F2F21D4(a1);
          v6 = *a2;
          if (v6 <= 5)
          {
            if (*a2 <= 1u)
            {
LABEL_118:
              if (v6)
              {
                sub_23F2F1F04(a2);
                v16 = *sub_23F2F1F04(a2);
              }

              else
              {
                sub_23F2F1CA0(a2);
                v16 = *sub_23F2F1CA0(a2);
              }

              goto LABEL_160;
            }

            goto LABEL_38;
          }

LABEL_44:
          if (v6 > 7)
          {
            if (v6 == 8)
            {
              sub_23F2F24A4(a2);
              v17 = sub_23F2F24A4(a2);
              if (*v17 > v5)
              {
                return 0xFFFFFFFFLL;
              }

              else
              {
                return *v17 < v5;
              }
            }

            goto LABEL_85;
          }

          goto LABEL_75;
        }

LABEL_73:
        v6 = *a1;
        goto LABEL_74;
      }

      sub_23F2F20E4(a1);
      v22 = *sub_23F2F20E4(a1);
      v6 = *a2;
      if (v6 > 5)
      {
        if (*a2 <= 7u)
        {
          if (v6 == 6)
          {
            sub_23F2F22C4(a2);
            v25 = *sub_23F2F22C4(a2);
          }

          else
          {
            if (v6 != 7)
            {
              goto LABEL_74;
            }

            sub_23F2F23B4(a2);
            v25 = *sub_23F2F23B4(a2);
          }

          goto LABEL_191;
        }

        if (v6 != 8)
        {
          if (v6 != 11)
          {
            if (v6 != 12)
            {
              goto LABEL_74;
            }

            sub_23F2F2684(a2);
            v32 = *sub_23F2F2684(a2);
            v33 = v22;
            goto LABEL_115;
          }

          sub_23F2F2594(a2);
          v37 = *sub_23F2F2594(a2);
          v38 = v22;
          goto LABEL_200;
        }

        sub_23F2F24A4(a2);
        v43 = sub_23F2F24A4(a2);
LABEL_196:
        if (v22 < *v43)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return *v43 < v22;
        }
      }

      if (*a2 <= 1u)
      {
        if (*a2)
        {
          sub_23F2F1F04(a2);
          v25 = *sub_23F2F1F04(a2);
        }

        else
        {
          sub_23F2F1CA0(a2);
          v25 = *sub_23F2F1CA0(a2);
        }
      }

      else
      {
        if (v6 != 2)
        {
          if (v6 != 3)
          {
            if (v6 != 5)
            {
              goto LABEL_74;
            }

            sub_23F2F21D4(a2);
            v25 = *sub_23F2F21D4(a2);
            goto LABEL_191;
          }

          goto LABEL_168;
        }

        sub_23F2F1FF4(a2);
        v25 = *sub_23F2F1FF4(a2);
      }

LABEL_191:
      v47 = v22 >= v25;
      v48 = v22 > v25;
      if (v47)
      {
        return v48;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    sub_23F2F1FF4(a1);
    v5 = *sub_23F2F1FF4(a1);
    v6 = *a2;
    if (v6 <= 5)
    {
      if (*a2 > 1u)
      {
        if (v6 != 2)
        {
          if (v6 != 3)
          {
            if (v6 != 5)
            {
              goto LABEL_74;
            }

            sub_23F2F21D4(a2);
            v20 = *sub_23F2F21D4(a2);
            goto LABEL_177;
          }

LABEL_80:
          sub_23F2F20E4(a2);
          v31 = sub_23F2F20E4(a2);
          if (*v31 > v5)
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return *v31 < v5;
          }
        }

        goto LABEL_163;
      }

      if (*a2)
      {
        sub_23F2F1F04(a2);
        v20 = *sub_23F2F1F04(a2);
      }

      else
      {
        sub_23F2F1CA0(a2);
        v20 = *sub_23F2F1CA0(a2);
      }

LABEL_177:
      if (v5 < v20)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v5 > v20;
      }
    }

    if (*a2 <= 7u)
    {
      if (v6 != 6)
      {
        if (v6 != 7)
        {
          goto LABEL_74;
        }

        sub_23F2F23B4(a2);
        v39 = sub_23F2F23B4(a2);
        goto LABEL_164;
      }

      sub_23F2F22C4(a2);
      v20 = *sub_23F2F22C4(a2);
      goto LABEL_177;
    }

    goto LABEL_89;
  }

  if (*a1)
  {
    sub_23F2F1F04(a1);
    v5 = *sub_23F2F1F04(a1);
    v6 = *a2;
    if (v6 <= 5)
    {
      if (*a2 <= 1u)
      {
        if (*a2)
        {
LABEL_23:
          sub_23F2F1F04(a2);
          v11 = *sub_23F2F1F04(a2);
          goto LABEL_165;
        }

LABEL_35:
        sub_23F2F1CA0(a2);
        v11 = *sub_23F2F1CA0(a2);
        goto LABEL_165;
      }

      goto LABEL_38;
    }

LABEL_42:
    if (v6 <= 7)
    {
LABEL_75:
      if (v6 != 6)
      {
        if (v6 != 7)
        {
          goto LABEL_74;
        }

        sub_23F2F23B4(a2);
        v30 = sub_23F2F23B4(a2);
        if (*v30 > v5)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return *v30 < v5;
        }
      }

      sub_23F2F22C4(a2);
      v16 = *sub_23F2F22C4(a2);
LABEL_160:
      if (v5 < v16)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v16 < v5;
      }
    }

LABEL_89:
    if (v6 != 8)
    {
      if (v6 != 11)
      {
        if (v6 != 12)
        {
          goto LABEL_74;
        }

        sub_23F2F2684(a2);
        v32 = *sub_23F2F2684(a2);
        v33 = v5;
        goto LABEL_115;
      }

      sub_23F2F2594(a2);
      v37 = *sub_23F2F2594(a2);
      v38 = v5;
      goto LABEL_200;
    }

    goto LABEL_121;
  }

  sub_23F2F1CA0(a1);
  v5 = *sub_23F2F1CA0(a1);
  v6 = *a2;
  if (v6 > 5)
  {
    goto LABEL_42;
  }

  if (*a2 <= 1u)
  {
    if (*a2)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

LABEL_38:
  if (v6 != 2)
  {
    if (v6 != 3)
    {
      if (v6 == 5)
      {
        sub_23F2F21D4(a2);
        v16 = *sub_23F2F21D4(a2);
        goto LABEL_160;
      }

LABEL_74:
      sub_23F2F1304(v6);
    }

    goto LABEL_80;
  }

  sub_23F2F1FF4(a2);
  v36 = sub_23F2F1FF4(a2);
  if (*v36 > v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *v36 < v5;
  }
}

void *sub_23F2F34DC(void *a1, std::string::value_type *a2)
{
  v4 = sub_23EF2F9B0(a1, "{", 1);
  v18.__r_.__value_.__s.__data_[0] = *a2;
  v5 = sub_23F2F1524(v4, &v18);
  sub_23EF2F9B0(v5, ",", 1);
  v6 = *a2;
  if (v6 > 5)
  {
    if (*a2 <= 7u)
    {
      if (v6 == 6)
      {
        v13 = sub_23F2F22C4(a2);
        std::to_string(&v18, *v13);
        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v8 = &v18;
        }

        else
        {
          v8 = v18.__r_.__value_.__r.__words[0];
        }

        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v18.__r_.__value_.__l.__size_;
        }

        goto LABEL_62;
      }

      if (v6 == 7)
      {
        v11 = sub_23F2F23B4(a2);
        std::to_string(&v18, *v11);
        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v8 = &v18;
        }

        else
        {
          v8 = v18.__r_.__value_.__r.__words[0];
        }

        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v18.__r_.__value_.__l.__size_;
        }

        goto LABEL_62;
      }
    }

    else
    {
      switch(v6)
      {
        case 8u:
          v15 = sub_23F2F24A4(a2);
          std::to_string(&v18, *v15);
          if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v8 = &v18;
          }

          else
          {
            v8 = v18.__r_.__value_.__r.__words[0];
          }

          if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v18.__r_.__value_.__l.__size_;
          }

          goto LABEL_62;
        case 0xBu:
          LODWORD(v19) = *sub_23F2F2594(a2);
          v18.__r_.__value_.__r.__words[0] = a1;
          sub_23EF821A4(&v20, &v18, &v19);
          return sub_23EF2F9B0(a1, "}", 1);
        case 0xCu:
          v19 = *sub_23F2F2684(a2);
          v18.__r_.__value_.__r.__words[0] = a1;
          sub_23F2C8228(&v20, &v18, &v19);
          return sub_23EF2F9B0(a1, "}", 1);
      }
    }

    goto LABEL_65;
  }

  if (*a2 <= 1u)
  {
    if (*a2)
    {
      v10 = sub_23F2F1F04(a2);
      std::to_string(&v18, *v10);
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v18;
      }

      else
      {
        v8 = v18.__r_.__value_.__r.__words[0];
      }

      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v18.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      v12 = sub_23F2F1CA0(a2);
      std::to_string(&v18, *v12);
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v18;
      }

      else
      {
        v8 = v18.__r_.__value_.__r.__words[0];
      }

      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v18.__r_.__value_.__l.__size_;
      }
    }

    goto LABEL_62;
  }

  if (v6 == 2)
  {
    v14 = sub_23F2F1FF4(a2);
    std::to_string(&v18, *v14);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v18;
    }

    else
    {
      v8 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    goto LABEL_62;
  }

  if (v6 == 3)
  {
    v16 = sub_23F2F20E4(a2);
    std::to_string(&v18, *v16);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v18;
    }

    else
    {
      v8 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    goto LABEL_62;
  }

  if (v6 != 5)
  {
LABEL_65:
    sub_23F2F1304(v6);
  }

  v7 = sub_23F2F21D4(a2);
  std::to_string(&v18, *v7);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v18;
  }

  else
  {
    v8 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

LABEL_62:
  sub_23EF2F9B0(a1, v8, size);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return sub_23EF2F9B0(a1, "}", 1);
}

void sub_23F2F37F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F3834(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_28518D898[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23EF42150(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_23F2F39F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F3A50(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23EF3AE74();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_23F2F3C90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void sub_23F2F3CAC(uint64_t a1, char *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v9[0] = *(a1 + 32);
    sub_23EF2F9B0(v4, v9, 1);
  }

  v5 = *(a1 + 24);
  v10 = 0;
  std::to_string(&v11, *a2);
  __p = v11;
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v11.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v11.__r_.__value_.__l.__size_;
  }

  sub_23EF2F9B0(v5, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ++*(a1 + 40);
}

void sub_23F2F3D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F3D94(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v9[0] = *(a1 + 32);
    sub_23EF2F9B0(v4, v9, 1);
  }

  v5 = *(a1 + 24);
  v10 = 0;
  std::to_string(&v11, *a2);
  __p = v11;
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v11.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v11.__r_.__value_.__l.__size_;
  }

  sub_23EF2F9B0(v5, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ++*(a1 + 40);
}

void sub_23F2F3E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F3E7C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v3 = *(a1 + 24);
    LOBYTE(__p[0]) = *(a1 + 32);
    v4 = a2;
    sub_23EF2F9B0(v3, __p, 1);
    a2 = v4;
  }

  v10 = 5;
  v5 = *(a1 + 24);
  sub_23F2F3F50("{:.{}}", a2, &v10, __p);
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  sub_23EF2F9B0(v5, v6, v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  ++*(a1 + 40);
}

void sub_23F2F3F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F3F50(char *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, _BYTE *a4@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = strlen(a1);
  v9 = *a3;
  v15[3] = 0;
  v15[4] = 111;
  v15[0] = a2;
  v15[1] = sub_23F2F7780;
  v15[2] = v9;
  v16 = v20;
  *__len = xmmword_23F344780;
  v18 = sub_23F2ACDFC;
  v19 = 0;
  __p = v20;
  v14[0] = 2;
  v14[1] = v15;
  v14[2] = 111;
  sub_23F2ACEA0(&v16, a1, v8, v14);
  v10 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v11 = __p;
  if (__len[1] >= 0x17)
  {
    operator new();
  }

  a4[23] = __len[1];
  if (v10)
  {
    memmove(a4, v11, v10);
    a4[v10] = 0;
    v12 = __p;
    if (__p == v20)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *a4 = 0;
  v12 = __p;
  if (__p != v20)
  {
LABEL_5:
    operator delete(v12);
  }

LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
}

void sub_23F2F40D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p)
{
  if (__p != v57)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F40F0(uint64_t a1, int *a2)
{
  if (*(a1 + 40))
  {
    v3 = *(a1 + 24);
    LOBYTE(__p[0]) = *(a1 + 32);
    v4 = a2;
    sub_23EF2F9B0(v3, __p, 1);
    a2 = v4;
  }

  v10 = 9;
  v5 = *(a1 + 24);
  sub_23F2F41C4("{:.{}}", a2, &v10, __p);
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  sub_23EF2F9B0(v5, v6, v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  ++*(a1 + 40);
}

void sub_23F2F41A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F41C4(char *a1@<X0>, int *a2@<X1>, unsigned int *a3@<X2>, _BYTE *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = strlen(a1);
  v15 = *a2;
  v9 = *a3;
  v17 = 0;
  v18 = 105;
  v16 = v9;
  v19 = v23;
  *__len = xmmword_23F344780;
  v21 = sub_23F2ACDFC;
  v22 = 0;
  __p = v23;
  v14[0] = 2;
  v14[1] = &v15;
  v14[2] = 105;
  sub_23F2ACEA0(&v19, a1, v8, v14);
  v10 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v11 = __p;
  if (__len[1] >= 0x17)
  {
    operator new();
  }

  a4[23] = __len[1];
  if (v10)
  {
    memmove(a4, v11, v10);
    a4[v10] = 0;
    v12 = __p;
    if (__p == v23)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *a4 = 0;
  v12 = __p;
  if (__p != v23)
  {
LABEL_5:
    operator delete(v12);
  }

LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
}

void sub_23F2F433C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p)
{
  if (__p != v57)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F435C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 40))
  {
    v3 = *(a1 + 24);
    LOBYTE(__p[0]) = *(a1 + 32);
    v4 = a2;
    sub_23EF2F9B0(v3, __p, 1);
    a2 = v4;
  }

  v10 = 17;
  v5 = *(a1 + 24);
  sub_23F2F4430("{:.{}}", a2, &v10, __p);
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  sub_23EF2F9B0(v5, v6, v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  ++*(a1 + 40);
}

void sub_23F2F4414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F4430(char *a1@<X0>, uint64_t *a2@<X1>, unsigned int *a3@<X2>, _BYTE *a4@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = strlen(a1);
  v9 = *a2;
  v10 = *a3;
  v16[3] = 0;
  v16[4] = 106;
  v15[2] = 106;
  v16[0] = v9;
  v16[2] = v10;
  v17 = v21;
  *__len = xmmword_23F344780;
  v19 = sub_23F2ACDFC;
  v20 = 0;
  __p = v21;
  v15[0] = 2;
  v15[1] = v16;
  sub_23F2ACEA0(&v17, a1, v8, v15);
  v11 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v12 = __p;
  if (__len[1] >= 0x17)
  {
    operator new();
  }

  a4[23] = __len[1];
  if (v11)
  {
    memmove(a4, v12, v11);
    a4[v11] = 0;
    v13 = __p;
    if (__p == v21)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *a4 = 0;
  v13 = __p;
  if (__p != v21)
  {
LABEL_5:
    operator delete(v13);
  }

LABEL_6:
  v14 = *MEMORY[0x277D85DE8];
}

void sub_23F2F45A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p)
{
  if (__p != v57)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F45C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_23EF2F9B0(v4, &__p, 1);
  }

  v5 = *(a1 + 24);
  __p.__r_.__value_.__s.__data_[0] = 34;
  v6 = sub_23EF2F9B0(v5, &__p, 1);
  if (*(a2 + 23) < 0)
  {
    sub_23EF34EA4(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  sub_23F301470(&__p, "", 1, "", 2uLL, 0, 0, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v11 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = v10[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v8 = v11;
  }

  else
  {
    v8 = v10[1];
  }

  v9 = sub_23EF2F9B0(v6, v7, v8);
  __p.__r_.__value_.__s.__data_[0] = 34;
  sub_23EF2F9B0(v9, &__p, 1);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  ++*(a1 + 40);
}

void sub_23F2F46EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2F471C(uint64_t result, unsigned __int16 **a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(result + 40);
    v6 = 2 * v2;
    do
    {
      if (v5)
      {
        v8 = *(v3 + 24);
        v9 = *(v3 + 32);
        sub_23EF2F9B0(v8, &v9, 1);
      }

      v7 = *v4++;
      result = MEMORY[0x245CAC940](*(v3 + 24), v7);
      v5 = *(v3 + 40) + 1;
      *(v3 + 40) = v5;
      v6 -= 2;
    }

    while (v6);
  }

  return result;
}

void sub_23F2F47A8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_23EF2F9B0(v4, &__p, 1);
  }

  v5 = *(a2 + 8);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v6 = *a2;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v5;
  if (v5)
  {
    memmove(&__dst, v6, v5);
  }

  __dst.__r_.__value_.__s.__data_[v5] = 0;
  v7 = *(a1 + 24);
  __p.__r_.__value_.__s.__data_[0] = 34;
  v8 = sub_23EF2F9B0(v7, &__p, 1);
  v9 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  sub_23F301470(&__p, "", 1, "", 2uLL, 0, 0, v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v14 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = v13[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v11 = v14;
  }

  else
  {
    v11 = v13[1];
  }

  v12 = sub_23EF2F9B0(v8, v10, v11);
  __p.__r_.__value_.__s.__data_[0] = 34;
  sub_23EF2F9B0(v12, &__p, 1);
  if (v14 < 0)
  {
    operator delete(v13[0]);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_22;
  }

  if (v9 < 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  ++*(a1 + 40);
}

void sub_23F2F4968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (v26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F49B8(uint64_t a1, _BYTE *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &__p);
    if ((v25 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v16 = strtol(p_p, 0, 10);
    v17 = 127;
    if (v16 < 127)
    {
      v17 = v16;
    }

    if (v17 <= -128)
    {
      LOBYTE(v17) = 0x80;
    }

    *a2 = v17;
    if (!v16)
    {
      v18 = (v25 & 0x80u) == 0 ? &__p : __p;
      v19 = (v25 & 0x80u) == 0 ? v25 : v24;
      if (v19)
      {
        v20 = MEMORY[0x277D85DE0];
        while (1)
        {
          v21 = *v18;
          if (!((v21 & 0x80000000) != 0 ? __maskrune(v21, 0x500uLL) : *(v20 + 4 * v21 + 60) & 0x500))
          {
            break;
          }

          v18 = (v18 + 1);
          if (!--v19)
          {
            goto LABEL_35;
          }
        }

        *(a1 + 130) = 1;
      }
    }

LABEL_35:
    if (v25 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  v5 = *(a1 + 16);
  if (std::istream::peek() != -1)
  {
    LOBYTE(__p) = 0;
    v6 = *(a1 + 16);
    std::istream::read();
    v7 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v7 = *v7;
    }

    v8 = __p;
    sub_23F08C378(v7, &__p);
    v9 = v25;
    if ((v25 & 0x80u) == 0)
    {
      v10 = &__p;
    }

    else
    {
      v10 = __p;
    }

    if ((v25 & 0x80u) != 0)
    {
      v9 = v24;
    }

    if (v9)
    {
      v11 = v9 - 1;
      do
      {
        v12 = *v10++;
        v13 = v12 == v8;
      }

      while (v12 != v8 && v11-- != 0);
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 0;
      if ((v25 & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v13;
        goto LABEL_24;
      }
    }

    operator delete(__p);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F4BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F4C14(uint64_t a1, _BYTE *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &__p);
    if ((v25 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v16 = strtol(p_p, 0, 10);
    v17 = 255;
    if (v16 < 255)
    {
      v17 = v16;
    }

    *a2 = v17 & ~(v17 >> 63);
    if (v16 <= 0)
    {
      v18 = (v25 & 0x80u) == 0 ? &__p : __p;
      v19 = (v25 & 0x80u) == 0 ? v25 : v24;
      if (v19)
      {
        v20 = MEMORY[0x277D85DE0];
        while (1)
        {
          v21 = *v18;
          if (!((v21 & 0x80000000) != 0 ? __maskrune(v21, 0x500uLL) : *(v20 + 4 * v21 + 60) & 0x500))
          {
            break;
          }

          v18 = (v18 + 1);
          if (!--v19)
          {
            goto LABEL_33;
          }
        }

        *(a1 + 130) = 1;
      }
    }

LABEL_33:
    if (v25 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  v5 = *(a1 + 16);
  if (std::istream::peek() != -1)
  {
    LOBYTE(__p) = 0;
    v6 = *(a1 + 16);
    std::istream::read();
    v7 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v7 = *v7;
    }

    v8 = __p;
    sub_23F08C378(v7, &__p);
    v9 = v25;
    if ((v25 & 0x80u) == 0)
    {
      v10 = &__p;
    }

    else
    {
      v10 = __p;
    }

    if ((v25 & 0x80u) != 0)
    {
      v9 = v24;
    }

    if (v9)
    {
      v11 = v9 - 1;
      do
      {
        v12 = *v10++;
        v13 = v12 == v8;
      }

      while (v12 != v8 && v11-- != 0);
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 0;
      if ((v25 & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v13;
        goto LABEL_24;
      }
    }

    operator delete(__p);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F4E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2F4E70(uint64_t a1, _WORD *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &v22);
    sub_23EF32310(v16, &v22, 24);
    MEMORY[0x245CAC820](v16, a2);
    if ((*(&v19[0].__locale_ + *(v16[0] - 3)) & 5) != 0)
    {
      *(a1 + 130) = 1;
    }

    v16[0] = *MEMORY[0x277D82818];
    v15 = *(MEMORY[0x277D82818] + 72);
    *(v16 + *(v16[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v17 = v15;
    v18 = MEMORY[0x277D82878] + 16;
    if (v20 < 0)
    {
      operator delete(v19[7].__locale_);
    }

    v18 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v19);
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](&v21);
    if (v23 < 0)
    {
      operator delete(v22);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  v5 = *(a1 + 16);
  if (std::istream::peek() != -1)
  {
    LOBYTE(v16[0]) = 0;
    v6 = *(a1 + 16);
    std::istream::read();
    v7 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v7 = *v7;
    }

    v8 = LOBYTE(v16[0]);
    sub_23F08C378(v7, v16);
    v9 = HIBYTE(v17);
    if (v17 >= 0)
    {
      v10 = v16;
    }

    else
    {
      v10 = v16[0];
    }

    if (v17 < 0)
    {
      v9 = v16[1];
    }

    if (v9)
    {
      v11 = v9 - 1;
      do
      {
        v12 = *v10;
        v10 = (v10 + 1);
        v13 = v12 == v8;
      }

      while (v12 != v8 && v11-- != 0);
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 0;
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v13;
        goto LABEL_24;
      }
    }

    operator delete(v16[0]);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F5184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF327C8(&a9);
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_23F2F51B0(uint64_t a1, _WORD *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &v22);
    sub_23EF32310(v16, &v22, 24);
    MEMORY[0x245CAC830](v16, a2);
    if ((*(&v19[0].__locale_ + *(v16[0] - 3)) & 5) != 0)
    {
      *(a1 + 130) = 1;
    }

    v16[0] = *MEMORY[0x277D82818];
    v15 = *(MEMORY[0x277D82818] + 72);
    *(v16 + *(v16[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v17 = v15;
    v18 = MEMORY[0x277D82878] + 16;
    if (v20 < 0)
    {
      operator delete(v19[7].__locale_);
    }

    v18 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v19);
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](&v21);
    if (v23 < 0)
    {
      operator delete(v22);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  v5 = *(a1 + 16);
  if (std::istream::peek() != -1)
  {
    LOBYTE(v16[0]) = 0;
    v6 = *(a1 + 16);
    std::istream::read();
    v7 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v7 = *v7;
    }

    v8 = LOBYTE(v16[0]);
    sub_23F08C378(v7, v16);
    v9 = HIBYTE(v17);
    if (v17 >= 0)
    {
      v10 = v16;
    }

    else
    {
      v10 = v16[0];
    }

    if (v17 < 0)
    {
      v9 = v16[1];
    }

    if (v9)
    {
      v11 = v9 - 1;
      do
      {
        v12 = *v10;
        v10 = (v10 + 1);
        v13 = v12 == v8;
      }

      while (v12 != v8 && v11-- != 0);
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 0;
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v13;
        goto LABEL_24;
      }
    }

    operator delete(v16[0]);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F54C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF327C8(&a9);
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_23F2F54F0(uint64_t a1, _DWORD *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &v22);
    sub_23EF32310(v16, &v22, 24);
    MEMORY[0x245CAC800](v16, a2);
    if ((*(&v19[0].__locale_ + *(v16[0] - 3)) & 5) != 0)
    {
      *(a1 + 130) = 1;
    }

    v16[0] = *MEMORY[0x277D82818];
    v15 = *(MEMORY[0x277D82818] + 72);
    *(v16 + *(v16[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v17 = v15;
    v18 = MEMORY[0x277D82878] + 16;
    if (v20 < 0)
    {
      operator delete(v19[7].__locale_);
    }

    v18 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v19);
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](&v21);
    if (v23 < 0)
    {
      operator delete(v22);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  v5 = *(a1 + 16);
  if (std::istream::peek() != -1)
  {
    LOBYTE(v16[0]) = 0;
    v6 = *(a1 + 16);
    std::istream::read();
    v7 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v7 = *v7;
    }

    v8 = LOBYTE(v16[0]);
    sub_23F08C378(v7, v16);
    v9 = HIBYTE(v17);
    if (v17 >= 0)
    {
      v10 = v16;
    }

    else
    {
      v10 = v16[0];
    }

    if (v17 < 0)
    {
      v9 = v16[1];
    }

    if (v9)
    {
      v11 = v9 - 1;
      do
      {
        v12 = *v10;
        v10 = (v10 + 1);
        v13 = v12 == v8;
      }

      while (v12 != v8 && v11-- != 0);
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 0;
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v13;
        goto LABEL_24;
      }
    }

    operator delete(v16[0]);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F5804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF327C8(&a9);
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_23F2F5830(uint64_t a1, _DWORD *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &v22);
    sub_23EF32310(v16, &v22, 24);
    MEMORY[0x245CAC810](v16, a2);
    if ((*(&v19[0].__locale_ + *(v16[0] - 3)) & 5) != 0)
    {
      *(a1 + 130) = 1;
    }

    v16[0] = *MEMORY[0x277D82818];
    v15 = *(MEMORY[0x277D82818] + 72);
    *(v16 + *(v16[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v17 = v15;
    v18 = MEMORY[0x277D82878] + 16;
    if (v20 < 0)
    {
      operator delete(v19[7].__locale_);
    }

    v18 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v19);
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](&v21);
    if (v23 < 0)
    {
      operator delete(v22);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  v5 = *(a1 + 16);
  if (std::istream::peek() != -1)
  {
    LOBYTE(v16[0]) = 0;
    v6 = *(a1 + 16);
    std::istream::read();
    v7 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v7 = *v7;
    }

    v8 = LOBYTE(v16[0]);
    sub_23F08C378(v7, v16);
    v9 = HIBYTE(v17);
    if (v17 >= 0)
    {
      v10 = v16;
    }

    else
    {
      v10 = v16[0];
    }

    if (v17 < 0)
    {
      v9 = v16[1];
    }

    if (v9)
    {
      v11 = v9 - 1;
      do
      {
        v12 = *v10;
        v10 = (v10 + 1);
        v13 = v12 == v8;
      }

      while (v12 != v8 && v11-- != 0);
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 0;
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v13;
        goto LABEL_24;
      }
    }

    operator delete(v16[0]);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F5B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF327C8(&a9);
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_23F2F5B70(uint64_t a1, void *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &v22);
    sub_23EF32310(v16, &v22, 24);
    MEMORY[0x245CAC840](v16, a2);
    if ((*(&v19[0].__locale_ + *(v16[0] - 3)) & 5) != 0)
    {
      *(a1 + 130) = 1;
    }

    v16[0] = *MEMORY[0x277D82818];
    v15 = *(MEMORY[0x277D82818] + 72);
    *(v16 + *(v16[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v17 = v15;
    v18 = MEMORY[0x277D82878] + 16;
    if (v20 < 0)
    {
      operator delete(v19[7].__locale_);
    }

    v18 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v19);
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](&v21);
    if (v23 < 0)
    {
      operator delete(v22);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  v5 = *(a1 + 16);
  if (std::istream::peek() != -1)
  {
    LOBYTE(v16[0]) = 0;
    v6 = *(a1 + 16);
    std::istream::read();
    v7 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v7 = *v7;
    }

    v8 = LOBYTE(v16[0]);
    sub_23F08C378(v7, v16);
    v9 = HIBYTE(v17);
    if (v17 >= 0)
    {
      v10 = v16;
    }

    else
    {
      v10 = v16[0];
    }

    if (v17 < 0)
    {
      v9 = v16[1];
    }

    if (v9)
    {
      v11 = v9 - 1;
      do
      {
        v12 = *v10;
        v10 = (v10 + 1);
        v13 = v12 == v8;
      }

      while (v12 != v8 && v11-- != 0);
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 0;
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v13;
        goto LABEL_24;
      }
    }

    operator delete(v16[0]);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F5E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF327C8(&a9);
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_23F2F5EB0(uint64_t a1, void *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &v22);
    sub_23EF32310(v16, &v22, 24);
    MEMORY[0x245CAC850](v16, a2);
    if ((*(&v19[0].__locale_ + *(v16[0] - 3)) & 5) != 0)
    {
      *(a1 + 130) = 1;
    }

    v16[0] = *MEMORY[0x277D82818];
    v15 = *(MEMORY[0x277D82818] + 72);
    *(v16 + *(v16[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v17 = v15;
    v18 = MEMORY[0x277D82878] + 16;
    if (v20 < 0)
    {
      operator delete(v19[7].__locale_);
    }

    v18 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v19);
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](&v21);
    if (v23 < 0)
    {
      operator delete(v22);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  v5 = *(a1 + 16);
  if (std::istream::peek() != -1)
  {
    LOBYTE(v16[0]) = 0;
    v6 = *(a1 + 16);
    std::istream::read();
    v7 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v7 = *v7;
    }

    v8 = LOBYTE(v16[0]);
    sub_23F08C378(v7, v16);
    v9 = HIBYTE(v17);
    if (v17 >= 0)
    {
      v10 = v16;
    }

    else
    {
      v10 = v16[0];
    }

    if (v17 < 0)
    {
      v9 = v16[1];
    }

    if (v9)
    {
      v11 = v9 - 1;
      do
      {
        v12 = *v10;
        v10 = (v10 + 1);
        v13 = v12 == v8;
      }

      while (v12 != v8 && v11-- != 0);
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 0;
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v13;
        goto LABEL_24;
      }
    }

    operator delete(v16[0]);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F61C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF327C8(&a9);
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_23F2F61F0(uint64_t a1, _WORD *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &v27);
    sub_23EF32310(v21, &v27, 24);
    v29 = 0.0;
    v15 = MEMORY[0x245CAC7E0](v21, &v29);
    if ((*(v15 + *(*v15 - 24) + 32) & 5) == 0)
    {
      _S0 = v29;
      __asm { FCVT            H0, S0 }

      *a2 = LOWORD(_S0);
    }

    if ((*(&v24[0].__locale_ + *(v21[0] - 3)) & 5) != 0)
    {
      *(a1 + 130) = 1;
    }

    v21[0] = *MEMORY[0x277D82818];
    v20 = *(MEMORY[0x277D82818] + 72);
    *(v21 + *(v21[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v22 = v20;
    v23 = MEMORY[0x277D82878] + 16;
    if (v25 < 0)
    {
      operator delete(v24[7].__locale_);
    }

    v23 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v24);
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](&v26);
    if (v28 < 0)
    {
      operator delete(v27);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  v5 = *(a1 + 16);
  if (std::istream::peek() != -1)
  {
    LOBYTE(v21[0]) = 0;
    v6 = *(a1 + 16);
    std::istream::read();
    v7 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v7 = *v7;
    }

    v8 = LOBYTE(v21[0]);
    sub_23F08C378(v7, v21);
    v9 = HIBYTE(v22);
    if (v22 >= 0)
    {
      v10 = v21;
    }

    else
    {
      v10 = v21[0];
    }

    if (v22 < 0)
    {
      v9 = v21[1];
    }

    if (v9)
    {
      v11 = v9 - 1;
      do
      {
        v12 = *v10;
        v10 = (v10 + 1);
        v13 = v12 == v8;
      }

      while (v12 != v8 && v11-- != 0);
      if ((SHIBYTE(v22) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 0;
      if ((SHIBYTE(v22) & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v13;
        goto LABEL_24;
      }
    }

    operator delete(v21[0]);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F6538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF327C8(va);
  if (*(v2 - 41) < 0)
  {
    operator delete(*(v2 - 64));
  }

  _Unwind_Resume(a1);
}

void sub_23F2F6564(uint64_t a1, _DWORD *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &v22);
    sub_23EF32310(v16, &v22, 24);
    MEMORY[0x245CAC7F0](v16, a2);
    if ((*(&v19[0].__locale_ + *(v16[0] - 3)) & 5) != 0)
    {
      *(a1 + 130) = 1;
    }

    v16[0] = *MEMORY[0x277D82818];
    v15 = *(MEMORY[0x277D82818] + 72);
    *(v16 + *(v16[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v17 = v15;
    v18 = MEMORY[0x277D82878] + 16;
    if (v20 < 0)
    {
      operator delete(v19[7].__locale_);
    }

    v18 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v19);
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](&v21);
    if (v23 < 0)
    {
      operator delete(v22);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  v5 = *(a1 + 16);
  if (std::istream::peek() != -1)
  {
    LOBYTE(v16[0]) = 0;
    v6 = *(a1 + 16);
    std::istream::read();
    v7 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v7 = *v7;
    }

    v8 = LOBYTE(v16[0]);
    sub_23F08C378(v7, v16);
    v9 = HIBYTE(v17);
    if (v17 >= 0)
    {
      v10 = v16;
    }

    else
    {
      v10 = v16[0];
    }

    if (v17 < 0)
    {
      v9 = v16[1];
    }

    if (v9)
    {
      v11 = v9 - 1;
      do
      {
        v12 = *v10;
        v10 = (v10 + 1);
        v13 = v12 == v8;
      }

      while (v12 != v8 && v11-- != 0);
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 0;
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v13;
        goto LABEL_24;
      }
    }

    operator delete(v16[0]);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F6878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF327C8(&a9);
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_23F2F68A4(uint64_t a1, void *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    sub_23F2F7390(a1, &v22);
    sub_23EF32310(v16, &v22, 24);
    MEMORY[0x245CAC7E0](v16, a2);
    if ((*(&v19[0].__locale_ + *(v16[0] - 3)) & 5) != 0)
    {
      *(a1 + 130) = 1;
    }

    v16[0] = *MEMORY[0x277D82818];
    v15 = *(MEMORY[0x277D82818] + 72);
    *(v16 + *(v16[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v17 = v15;
    v18 = MEMORY[0x277D82878] + 16;
    if (v20 < 0)
    {
      operator delete(v19[7].__locale_);
    }

    v18 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v19);
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](&v21);
    if (v23 < 0)
    {
      operator delete(v22);
    }

    goto LABEL_26;
  }

  *a2 = 0;
  v5 = *(a1 + 16);
  if (std::istream::peek() != -1)
  {
    LOBYTE(v16[0]) = 0;
    v6 = *(a1 + 16);
    std::istream::read();
    v7 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v7 = *v7;
    }

    v8 = LOBYTE(v16[0]);
    sub_23F08C378(v7, v16);
    v9 = HIBYTE(v17);
    if (v17 >= 0)
    {
      v10 = v16;
    }

    else
    {
      v10 = v16[0];
    }

    if (v17 < 0)
    {
      v9 = v16[1];
    }

    if (v9)
    {
      v11 = v9 - 1;
      do
      {
        v12 = *v10;
        v10 = (v10 + 1);
        v13 = v12 == v8;
      }

      while (v12 != v8 && v11-- != 0);
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 0;
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v13;
        goto LABEL_24;
      }
    }

    operator delete(v16[0]);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F6BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF327C8(&a9);
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_23F2F6BE4(uint64_t a1, _BYTE *a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
  {
    *a2 = 0;
    *(a1 + 129) = 1;
    goto LABEL_26;
  }

  v4 = std::istream::peek();
  if (v4 != -1 && !sub_23F2F7268(a1, v4))
  {
    v40 = a2;
    sub_23F2F7390(a1, &__p);
    v15 = HIBYTE(v43);
    if (v43 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v43 >= 0)
    {
      v17 = HIBYTE(v43);
    }

    else
    {
      v17 = v42;
    }

    v45 = 0;
    v46 = 0;
    __dst = 0;
    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    if (v17 < 0x17)
    {
      if (v17)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if ((v17 | 7) == 0x17)
      {
        v18 = 24;
      }

      else
      {
        v18 = v17 | 7;
      }

      sub_23EF430F4(&__dst, v18);
      do
      {
LABEL_44:
        while (1)
        {
          v19 = __tolower(*p_p);
          v20 = HIBYTE(v46);
          if (SHIBYTE(v46) < 0)
          {
            break;
          }

          if (HIBYTE(v46) == 22)
          {
            goto LABEL_49;
          }

          HIBYTE(v46) = (HIBYTE(v46) + 1) & 0x7F;
          *(&__dst + v20) = v19;
          ++p_p;
          if (!--v17)
          {
            goto LABEL_51;
          }
        }

        v21 = (v46 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v45 == v21)
        {
          if ((v46 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_23EF2F8F4();
          }

LABEL_49:
          operator new();
        }

        v22 = v45++;
        v23 = __dst + v22;
        *v23 = v19;
        v23[1] = 0;
        ++p_p;
        --v17;
      }

      while (v17);
LABEL_51:
      v15 = HIBYTE(v43);
    }

    if (v15 < 0)
    {
      operator delete(__p);
    }

    v24 = SHIBYTE(v46);
    if ((SHIBYTE(v46) & 0x8000000000000000) != 0)
    {
      v24 = v45;
      if (!v45)
      {
        goto LABEL_91;
      }

      if (v45 == 1)
      {
        p_dst = __dst;
        if (*__dst != 48)
        {
          __p = 0;
          v42 = 0;
          v24 = 1;
          v43 = 0;
          goto LABEL_71;
        }

        goto LABEL_91;
      }

      p_dst = __dst;
      v42 = 0;
      v43 = 0;
      __p = 0;
      if (v45 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_23EF2F8F4();
      }
    }

    else
    {
      if (!HIBYTE(v46) || HIBYTE(v46) == 1 && __dst == 48)
      {
        goto LABEL_91;
      }

      __p = 0;
      v42 = 0;
      p_dst = &__dst;
      v43 = 0;
    }

    if (v24 >= 0x17)
    {
      if ((v24 | 7) == 0x17)
      {
        v26 = 24;
      }

      else
      {
        v26 = v24 | 7;
      }

      sub_23EF430F4(&__p, v26);
    }

    do
    {
LABEL_71:
      while (1)
      {
        v27 = __tolower(*p_dst);
        v28 = HIBYTE(v43);
        if (SHIBYTE(v43) < 0)
        {
          break;
        }

        if (HIBYTE(v43) == 22)
        {
          goto LABEL_76;
        }

        HIBYTE(v43) = (HIBYTE(v43) + 1) & 0x7F;
        *(&__p + v28) = v27;
        ++p_dst;
        if (!--v24)
        {
          goto LABEL_78;
        }
      }

      v29 = (v43 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v42 == v29)
      {
        if ((v43 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_23EF2F8F4();
        }

LABEL_76:
        operator new();
      }

      v30 = v42++;
      v31 = __p + v30;
      *v31 = v27;
      v31[1] = 0;
      ++p_dst;
      --v24;
    }

    while (v24);
LABEL_78:
    if (SHIBYTE(v43) < 0)
    {
      if (v42 != 5)
      {
        operator delete(__p);
        *a2 = 1;
        if ((SHIBYTE(v46) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_92;
      }

      v36 = bswap64(*__p | (*(__p + 4) << 32));
      v33 = v36 >= 0x66616C7365000000;
      v37 = v36 > 0x66616C7365000000;
      v38 = !v33;
      v39 = v37 - v38;
      operator delete(__p);
      if (v39)
      {
        goto LABEL_84;
      }
    }

    else if (SHIBYTE(v43) != 5 || ((v32 = bswap64(__p | (BYTE4(__p) << 32)), v33 = v32 >= 0x66616C7365000000, v34 = v32 > 0x66616C7365000000, v33) ? (v35 = 0) : (v35 = 1), v34 != v35))
    {
LABEL_84:
      *v40 = 1;
      if ((SHIBYTE(v46) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

LABEL_92:
      operator delete(__dst);
      goto LABEL_26;
    }

LABEL_91:
    *v40 = 0;
    if ((SHIBYTE(v46) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_92;
  }

  *a2 = 0;
  v5 = *(a1 + 16);
  if (std::istream::peek() != -1)
  {
    LOBYTE(__dst) = 0;
    v6 = *(a1 + 16);
    std::istream::read();
    v7 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v7 = *v7;
    }

    v8 = __dst;
    sub_23F08C378(v7, &__dst);
    v9 = HIBYTE(v46);
    if (v46 >= 0)
    {
      v10 = &__dst;
    }

    else
    {
      v10 = __dst;
    }

    if (v46 < 0)
    {
      v9 = v45;
    }

    if (v9)
    {
      v11 = v9 - 1;
      do
      {
        v12 = *v10++;
        v13 = v12 == v8;
      }

      while (v12 != v8 && v11-- != 0);
      if ((SHIBYTE(v46) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 0;
      if ((SHIBYTE(v46) & 0x80000000) == 0)
      {
LABEL_23:
        *(a1 + 131) = v13;
        goto LABEL_24;
      }
    }

    operator delete(__dst);
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 130) = 1;
LABEL_26:
  ++*(a1 + 104);
}

void sub_23F2F7208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2F7268(uint64_t a1, unsigned __int8 a2)
{
  v3 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    v3 = *v3;
  }

  v4 = a2;
  sub_23F08C378(v3, &v19);
  v5 = v21;
  if ((v21 & 0x80u) == 0)
  {
    v6 = &v19;
  }

  else
  {
    v6 = v19;
  }

  if ((v21 & 0x80u) != 0)
  {
    v5 = v20;
  }

  if (!v5)
  {
    v9 = 0;
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_20:
    operator delete(v19);
    if (v9)
    {
      return 1;
    }

    goto LABEL_21;
  }

  v7 = v5 - 1;
  do
  {
    v8 = *v6;
    v6 = (v6 + 1);
    v9 = v8 == v4;
  }

  while (v8 != v4 && v7-- != 0);
  if (v21 < 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  if (v9)
  {
    return 1;
  }

LABEL_21:
  v13 = (a1 + 24);
  if (*(a1 + 47) < 0)
  {
    v13 = *v13;
  }

  sub_23F08C378(v13, &v19);
  v14 = v21;
  if ((v21 & 0x80u) == 0)
  {
    v15 = &v19;
  }

  else
  {
    v15 = v19;
  }

  if ((v21 & 0x80u) != 0)
  {
    v14 = v20;
  }

  if (v14)
  {
    v16 = v14 - 1;
    do
    {
      v17 = *v15;
      v15 = (v15 + 1);
      v11 = v17 == v4;
    }

    while (v17 != v4 && v16-- != 0);
    if ((v21 & 0x80000000) == 0)
    {
      return v11;
    }
  }

  else
  {
    v11 = 0;
    if ((v21 & 0x80000000) == 0)
    {
      return v11;
    }
  }

  operator delete(v19);
  return v11;
}

void sub_23F2F7390(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + 136);
  if (*(a1 + 159) < 0 && (v5 = *(a1 + 152), (v5 & 0x7FFFFFFFFFFFFFFFuLL) - 1 > 0x1F))
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_23EF430F4((a1 + 136), 0x27uLL);
    if ((*(a1 + 159) & 0x80) == 0)
    {
LABEL_4:
      *(a1 + 159) = 0;
      v6 = v4;
      goto LABEL_7;
    }
  }

  v6 = *(a1 + 136);
  *(a1 + 144) = 0;
LABEL_7:
  v6->__r_.__value_.__s.__data_[0] = 0;
  LOBYTE(v16[0]) = 0;
  v7 = *(a1 + 16);
  std::istream::read();
  if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) == 0)
  {
    while (!sub_23F2F7268(a1, 0))
    {
      std::string::push_back(v4, 0);
      LOBYTE(v16[0]) = 0;
      v8 = *(a1 + 16);
      std::istream::read();
      if ((*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    v9 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v9 = *v9;
    }

    sub_23F08C378(v9, v16);
    v10 = v17;
    if ((v17 & 0x80u) == 0)
    {
      v11 = v16;
    }

    else
    {
      v11 = v16[0];
    }

    if ((v17 & 0x80u) != 0)
    {
      v10 = v16[1];
    }

    if (v10)
    {
      v12 = (v10 - 1);
      do
      {
        v13 = *v11;
        v11 = (v11 + 1);
        v14 = v13 == 0;
        if (v13)
        {
          v15 = v12 == 0;
        }

        else
        {
          v15 = 1;
        }

        --v12;
      }

      while (!v15);
      if ((v17 & 0x80000000) == 0)
      {
LABEL_29:
        *(a1 + 131) = v14;
        if (*(a1 + 159) < 0)
        {
          goto LABEL_30;
        }

LABEL_13:
        *a2 = *&v4->__r_.__value_.__l.__data_;
        *(a2 + 16) = *(&v4->__r_.__value_.__l + 2);
        return;
      }
    }

    else
    {
      v14 = 0;
      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    operator delete(v16[0]);
    *(a1 + 131) = v14;
    if (*(a1 + 159) < 0)
    {
      goto LABEL_30;
    }

    goto LABEL_13;
  }

LABEL_12:
  if ((*(a1 + 159) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_30:
  sub_23EF34EA4(a2, *(a1 + 136), *(a1 + 144));
}

void sub_23F2F75D0(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 80);
  if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
  {
    *(a1 + 132) = 1;
    return;
  }

  sub_23F2F7390(a1, &__src);
  v4 = __len;
  if ((__len & 0x8000000000000000) != 0)
  {
    v6 = v8;
    if (v8 == *(a2 + 8))
    {
      p_src = __src;
      if (!v8)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_14:
    operator new();
  }

  if (*(a2 + 8) != __len)
  {
    goto LABEL_14;
  }

  p_src = &__src;
  v6 = __len;
  if (__len)
  {
LABEL_7:
    memmove(*a2, p_src, v6);
    v4 = __len;
  }

LABEL_8:
  if (v4 < 0)
  {
    operator delete(__src);
  }

  ++*(a1 + 104);
}

void sub_23F2F7724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2F7780(unsigned __int8 **a1, uint64_t *a2, __int16 *a3)
{
  v16 = 0;
  v17 = -1;
  v18 = 32;
  v19 = 0;
  v20 = 0;
  v6 = sub_23F2ADDD4(&v16, a1, 319);
  if (BYTE1(v16) - 13 >= 6)
  {
    if (BYTE1(v16) > 0xCu || ((1 << SBYTE1(v16)) & 0x1801) == 0)
    {
      sub_23F2AE878();
    }
  }

  else if ((SWORD1(v16) & 0x80000000) == 0 && v17 == -1)
  {
    v17 = 6;
  }

  *a1 = v6;
  _H0 = *a3;
  __asm { FCVT            S8, H0 }

  v13 = sub_23F2AF2AC(&v16, a2);
  result = sub_23F2B5CC0(a2, v13, v14, _S8);
  *a2 = result;
  return result;
}

uint64_t sub_23F2F787C(uint64_t result, char **a2)
{
  v2 = *(result + 24);
  if (*(v2 + 40) == 1)
  {
    v10 = (v2 + 16);
    v3 = a2[1];
    if (v3)
    {
      v4 = *a2;
      do
      {
        result = sub_23F2FC63C(&v10, v4++);
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    v5 = a2[1];
    if (v5)
    {
      v6 = *a2;
      do
      {
        while (1)
        {
          v8 = *v6;
          if ((v8 & 0x80000000) == 0)
          {
            break;
          }

          v11 = -52;
          v12 = v8;
          v7 = *(v2 + 8);
          result = std::ostream::write();
          ++v6;
          if (!--v5)
          {
            return result;
          }
        }

        v13 = *v6;
        v9 = *(v2 + 8);
        result = std::ostream::write();
        ++v6;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t sub_23F2F7948(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (*(v2 + 40) == 1)
  {
    v12 = (v2 + 16);
    v3 = *(a2 + 8);
    if (v3)
    {
      v4 = *a2;
      v5 = 2 * v3;
      do
      {
        result = sub_23F2FCB5C(&v12, v4++);
        v5 -= 2;
      }

      while (v5);
    }
  }

  else
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      v7 = *a2;
      v8 = 2 * v6;
      do
      {
        v10 = *v7;
        if (v10 <= 0x7F)
        {
          v17 = *v7;
          v9 = *(v2 + 8);
        }

        else
        {
          if (v10 > 0xFF)
          {
            v13 = -51;
            v14 = __rev16(v10);
          }

          else
          {
            v15 = -52;
            v16 = v10;
          }

          v11 = *(v2 + 8);
        }

        result = std::ostream::write();
        ++v7;
        v8 -= 2;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t sub_23F2F7A44(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (*(v2 + 40) == 1)
  {
    v11 = (v2 + 16);
    v3 = *(a2 + 8);
    if (v3)
    {
      v4 = *a2;
      v5 = 4 * v3;
      do
      {
        result = sub_23F2FE06C(v12, &v11, v4++);
        v5 -= 4;
      }

      while (v5);
    }
  }

  else
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      v7 = *a2;
      v8 = 4 * v6;
      do
      {
        v9 = *v7++;
        v12[1] = -54;
        v13 = bswap32(v9);
        v10 = *(v2 + 8);
        result = std::ostream::write();
        v8 -= 4;
      }

      while (v8);
    }
  }

  return result;
}

void sub_23F2F7AF4(uint64_t *a1, _BYTE *a2)
{
  sub_23F2F9118(a1, &v10);
  v13 = v10;
  v14 = v11;
  *a2 = sub_23F2FE90C(&v13);
  v3 = v12;
  v12 = 0;
  if (v3)
  {
    for (i = v3[4]; ; i -= 16)
    {
      v5 = v3[6];
      if (i == v5)
      {
        break;
      }

      v7 = *(i - 2);
      v6 = *(i - 1);
      v7(v6);
    }

    free(v5);
    v8 = v3[3];
    if (v8)
    {
      do
      {
        v9 = *v8;
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    free(v3);
  }
}

void sub_23F2F7BA4(uint64_t *a1, _BYTE *a2)
{
  sub_23F2F9118(a1, &v12);
  if (v12 != 2 || v13 >= 0x100)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v11 = std::bad_cast::bad_cast(exception);
    v11->__vftable = &unk_28518DA90;
    __cxa_throw(v11, &unk_28518D9B0, std::exception::~exception);
  }

  *a2 = v13;
  v3 = v14;
  v14 = 0;
  if (v3)
  {
    for (i = v3[4]; ; i -= 16)
    {
      v5 = v3[6];
      if (i == v5)
      {
        break;
      }

      v7 = *(i - 2);
      v6 = *(i - 1);
      v7(v6);
    }

    free(v5);
    v8 = v3[3];
    if (v8)
    {
      do
      {
        v9 = *v8;
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    free(v3);
  }
}

void sub_23F2F7CA0(uint64_t *a1, _WORD *a2)
{
  sub_23F2F9118(a1, &v10);
  v13 = v10;
  v14 = v11;
  *a2 = sub_23F2FE97C(&v13);
  v3 = v12;
  v12 = 0;
  if (v3)
  {
    for (i = v3[4]; ; i -= 16)
    {
      v5 = v3[6];
      if (i == v5)
      {
        break;
      }

      v7 = *(i - 2);
      v6 = *(i - 1);
      v7(v6);
    }

    free(v5);
    v8 = v3[3];
    if (v8)
    {
      do
      {
        v9 = *v8;
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    free(v3);
  }
}

void sub_23F2F7D50(uint64_t *a1, _WORD *a2)
{
  sub_23F2F9118(a1, &v12);
  if (v12 != 2 || v13 >= 0x10000)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v11 = std::bad_cast::bad_cast(exception);
    v11->__vftable = &unk_28518DA90;
    __cxa_throw(v11, &unk_28518D9B0, std::exception::~exception);
  }

  *a2 = v13;
  v3 = v14;
  v14 = 0;
  if (v3)
  {
    for (i = v3[4]; ; i -= 16)
    {
      v5 = v3[6];
      if (i == v5)
      {
        break;
      }

      v7 = *(i - 2);
      v6 = *(i - 1);
      v7(v6);
    }

    free(v5);
    v8 = v3[3];
    if (v8)
    {
      do
      {
        v9 = *v8;
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    free(v3);
  }
}

void sub_23F2F7E4C(uint64_t *a1, _DWORD *a2)
{
  sub_23F2F9118(a1, &v10);
  v13 = v10;
  v14 = v11;
  *a2 = sub_23F2FE9F0(&v13);
  v3 = v12;
  v12 = 0;
  if (v3)
  {
    for (i = v3[4]; ; i -= 16)
    {
      v5 = v3[6];
      if (i == v5)
      {
        break;
      }

      v7 = *(i - 2);
      v6 = *(i - 1);
      v7(v6);
    }

    free(v5);
    v8 = v3[3];
    if (v8)
    {
      do
      {
        v9 = *v8;
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    free(v3);
  }
}

void sub_23F2F7EFC(uint64_t *a1, _DWORD *a2)
{
  sub_23F2F9118(a1, &v13);
  if (v13 != 2 || HIDWORD(v14) != 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v12 = std::bad_cast::bad_cast(exception);
    v12->__vftable = &unk_28518DA90;
    __cxa_throw(v12, &unk_28518D9B0, std::exception::~exception);
  }

  *a2 = v14;
  v4 = v15;
  v15 = 0;
  if (v4)
  {
    for (i = v4[4]; ; i -= 16)
    {
      v6 = v4[6];
      if (i == v6)
      {
        break;
      }

      v8 = *(i - 2);
      v7 = *(i - 1);
      v8(v7);
    }

    free(v6);
    v9 = v4[3];
    if (v9)
    {
      do
      {
        v10 = *v9;
        free(v9);
        v9 = v10;
      }

      while (v10);
    }

    free(v4);
  }
}

void sub_23F2F7FF8(uint64_t *a1, void *a2)
{
  sub_23F2F9118(a1, &v12);
  if (v12 != 3 && (v12 != 2 || v13 < 0))
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v11 = std::bad_cast::bad_cast(exception);
    v11->__vftable = &unk_28518DA90;
    __cxa_throw(v11, &unk_28518D9B0, std::exception::~exception);
  }

  *a2 = v13;
  v3 = v14;
  v14 = 0;
  if (v3)
  {
    for (i = v3[4]; ; i -= 16)
    {
      v5 = v3[6];
      if (i == v5)
      {
        break;
      }

      v7 = *(i - 2);
      v6 = *(i - 1);
      v7(v6);
    }

    free(v5);
    v8 = v3[3];
    if (v8)
    {
      do
      {
        v9 = *v8;
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    free(v3);
  }
}

void sub_23F2F80F8(uint64_t *a1, void *a2)
{
  sub_23F2F9118(a1, &v12);
  if (v12 != 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v11 = std::bad_cast::bad_cast(exception);
    v11->__vftable = &unk_28518DA90;
    __cxa_throw(v11, &unk_28518D9B0, std::exception::~exception);
  }

  v3 = v14;
  *a2 = v13;
  v14 = 0;
  if (v3)
  {
    for (i = v3[4]; ; i -= 16)
    {
      v5 = v3[6];
      if (i == v5)
      {
        break;
      }

      v7 = *(i - 2);
      v6 = *(i - 1);
      v7(v6);
    }

    free(v5);
    v8 = v3[3];
    if (v8)
    {
      do
      {
        v9 = *v8;
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    free(v3);
  }
}

void sub_23F2F81EC(uint64_t *a1, float *a2)
{
  sub_23F2F9118(a1, &v13);
  if (v13 == 2)
  {
    *a2 = v14;
    v4 = v15;
    v15 = 0;
    if (!v4)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v13 == 3)
  {
    *a2 = v14;
    v4 = v15;
    v15 = 0;
    if (!v4)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v13 != 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v12 = std::bad_cast::bad_cast(exception);
    v12->__vftable = &unk_28518DA90;
    __cxa_throw(v12, &unk_28518D9B0, std::exception::~exception);
  }

  v3 = *&v14;
  *a2 = v3;
  v4 = v15;
  v15 = 0;
  if (v4)
  {
LABEL_9:
    for (i = v4[4]; ; i -= 16)
    {
      v6 = v4[6];
      if (i == v6)
      {
        break;
      }

      v8 = *(i - 2);
      v7 = *(i - 1);
      v8(v7);
    }

    free(v6);
    v9 = v4[3];
    if (v9)
    {
      do
      {
        v10 = *v9;
        free(v9);
        v9 = v10;
      }

      while (v10);
    }

    free(v4);
  }
}

void sub_23F2F8334(uint64_t *a1, double *a2)
{
  sub_23F2F9118(a1, &v12);
  if (v12 == 2)
  {
    *a2 = v13;
    v3 = v14;
    v14 = 0;
    if (!v3)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v12 == 3)
  {
    *a2 = v13;
    v3 = v14;
    v14 = 0;
    if (!v3)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v12 != 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v11 = std::bad_cast::bad_cast(exception);
    v11->__vftable = &unk_28518DA90;
    __cxa_throw(v11, &unk_28518D9B0, std::exception::~exception);
  }

  *a2 = v13;
  v3 = v14;
  v14 = 0;
  if (v3)
  {
LABEL_9:
    for (i = v3[4]; ; i -= 16)
    {
      v5 = v3[6];
      if (i == v5)
      {
        break;
      }

      v7 = *(i - 2);
      v6 = *(i - 1);
      v7(v6);
    }

    free(v5);
    v8 = v3[3];
    if (v8)
    {
      do
      {
        v9 = *v8;
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    free(v3);
  }
}

void sub_23F2F8478(uint64_t *a1, _BYTE *a2)
{
  sub_23F2F9118(a1, &v12);
  if (v12 != 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v11 = std::bad_cast::bad_cast(exception);
    v11->__vftable = &unk_28518DA90;
    __cxa_throw(v11, &unk_28518D9B0, std::exception::~exception);
  }

  *a2 = v13;
  v3 = v14;
  v14 = 0;
  if (v3)
  {
    for (i = v3[4]; ; i -= 16)
    {
      v5 = v3[6];
      if (i == v5)
      {
        break;
      }

      v7 = *(i - 2);
      v6 = *(i - 1);
      v7(v6);
    }

    free(v5);
    v8 = v3[3];
    if (v8)
    {
      do
      {
        v9 = *v8;
        free(v8);
        v8 = v9;
      }

      while (v9);
    }

    free(v3);
  }
}

void sub_23F2F856C(uint64_t *a1, void **a2)
{
  sub_23F2F9118(a1, &v13);
  if (v13 != 8 && v13 != 5)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v12 = std::bad_cast::bad_cast(exception);
    v12->__vftable = &unk_28518DA90;
    __cxa_throw(v12, &unk_28518D9B0, std::exception::~exception);
  }

  sub_23F2FEA60(a2, *v15, __len);
  v4 = v16;
  v16 = 0;
  if (v4)
  {
    for (i = v4[4]; ; i -= 16)
    {
      v6 = v4[6];
      if (i == v6)
      {
        break;
      }

      v8 = *(i - 2);
      v7 = *(i - 1);
      v8(v7);
    }

    free(v6);
    v9 = v4[3];
    if (v9)
    {
      do
      {
        v10 = *v9;
        free(v9);
        v9 = v10;
      }

      while (v10);
    }

    free(v4);
  }
}

char *sub_23F2F866C(uint64_t *a1, unint64_t a2)
{
  v4 = a1[2];
  v5 = *a1;
  if ((v4 - *a1) >= 9)
  {
    result = a1[1];
  }

  else
  {
    if (v4)
    {
      v6 = 2 * v4;
    }

    else
    {
      v6 = 0x2000;
    }

    v7 = v5 + 9;
    while (v6 < v7)
    {
      v8 = v6 <= 0;
      v6 *= 2;
      if (v8)
      {
        v6 = v7;
        break;
      }
    }

    result = malloc_type_realloc(a1[1], v6, 0xFC6EF249uLL);
    if (!result)
    {
      exception = __cxa_allocate_exception(8uLL);
      v12 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v12, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }

    a1[1] = result;
    a1[2] = v6;
    v5 = *a1;
  }

  v10 = &result[v5];
  *v10 = -49;
  *(v10 + 1) = bswap64(a2);
  *a1 += 9;
  return result;
}

void sub_23F2F874C(uint64_t *a1, uint64_t a2)
{
  sub_23F2F9118(a1, v13);
  if (v13[0] != 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v12 = std::bad_cast::bad_cast(exception);
    v12->__vftable = &unk_28518DA90;
    __cxa_throw(v12, &unk_28518D9B0, std::exception::~exception);
  }

  v3 = v13[2];
  v4 = v15;
  *(a2 + 8) = v14;
  *a2 = v3;
  v15 = 0;
  if (v4)
  {
    for (i = v4[4]; ; i -= 16)
    {
      v6 = v4[6];
      if (i == v6)
      {
        break;
      }

      v8 = *(i - 2);
      v7 = *(i - 1);
      v8(v7);
    }

    free(v6);
    v9 = v4[3];
    if (v9)
    {
      do
      {
        v10 = *v9;
        free(v9);
        v9 = v10;
      }

      while (v10);
    }

    free(v4);
  }
}

std::bad_cast *sub_23F2F8844(std::bad_cast *a1)
{
  result = std::bad_cast::bad_cast(a1);
  result->__vftable = &unk_28518DA90;
  return result;
}

char *sub_23F2F887C(uint64_t a1)
{
  if (*(a1 + 40))
  {
LABEL_5:
    if ((*(a1 + 72) & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = *(a1 + 16);
    v8 = *(a1 + 88);
    v7 = *(a1 + 96);
    if (v8 < v7)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v2 = malloc_type_malloc(0x2000uLL, 0x100004077774924uLL);
  if (!v2)
  {
    goto LABEL_28;
  }

  v3 = v2;
  if (*(a1 + 40) == 1)
  {
    free(*(a1 + 24));
    *(a1 + 24) = v3;
    *(a1 + 32) = 0x2000;
    *(a1 + 16) = 0;
    goto LABEL_5;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = v2;
  *(a1 + 32) = 0x2000;
  *(a1 + 40) = 1;
  if (*(a1 + 72))
  {
    goto LABEL_11;
  }

LABEL_6:
  v4 = malloc_type_malloc(0x2000uLL, 0x100004077774924uLL);
  if (!v4)
  {
LABEL_28:
    exception = __cxa_allocate_exception(8uLL);
    v21 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v21, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v5 = v4;
  if (*(a1 + 72) == 1)
  {
    free(*(a1 + 56));
    *(a1 + 56) = v5;
    *(a1 + 64) = 0x2000;
    *(a1 + 48) = 0;
    v6 = *(a1 + 16);
    v8 = *(a1 + 88);
    v7 = *(a1 + 96);
    if (v8 >= v7)
    {
      goto LABEL_14;
    }

LABEL_12:
    *v8 = v6;
    v9 = v8 + 8;
    goto LABEL_25;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = v4;
  *(a1 + 64) = 0x2000;
  *(a1 + 72) = 1;
  v6 = *(a1 + 16);
  v8 = *(a1 + 88);
  v7 = *(a1 + 96);
  if (v8 < v7)
  {
    goto LABEL_12;
  }

LABEL_14:
  v10 = *(a1 + 80);
  v11 = v8 - v10;
  v12 = (v8 - v10) >> 3;
  v13 = v12 + 1;
  if ((v12 + 1) >> 61)
  {
    sub_23EF3AE74();
  }

  v14 = v7 - v10;
  if (v14 >> 2 > v13)
  {
    v13 = v14 >> 2;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    v15 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    if (!(v15 >> 61))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v16 = (v8 - v10) >> 3;
  v17 = (8 * v12);
  v18 = (8 * v12 - 8 * v16);
  *v17 = v6;
  v9 = v17 + 1;
  memcpy(v18, v10, v11);
  *(a1 + 80) = v18;
  *(a1 + 88) = v9;
  *(a1 + 96) = 0;
  if (v10)
  {
    operator delete(v10);
  }

LABEL_25:
  *(a1 + 88) = v9;

  return sub_23F2F866C((a1 + 16), 0);
}

void *sub_23F2F8A98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  LODWORD(__n) = 0;
  __src = 0;
  sub_23F2F874C(v3, &__n);
  v4 = __n;
  if (*(a2 + 8) != __n)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v9 = sub_23F2F8844(exception);
    __cxa_throw(v9, &unk_28518D9B0, std::exception::~exception);
  }

  v5 = *a2;
  v6 = __src;

  return memcpy(v5, v6, v4);
}

void sub_23F2F8B28(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2F8B60(void *a1)
{
  if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    free(a1);
  }
}

void sub_23F2F8B78(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  if (v3 == v4)
  {
    v5 = atomic_load(*(a1 + 56));
    if (v5 == 1 && *(a1 + 232) == 1)
    {
      v6 = *(a1 + 64) + *(a1 + 72) - 4;
      v3 = 4;
      *(a1 + 64) = 4;
      *(a1 + 72) = v6;
      *(a1 + 80) = 4;
      if (v6 >= a2)
      {
        return;
      }

      goto LABEL_9;
    }

    v4 = *(a1 + 80);
    v3 = *(a1 + 64);
  }

  if (v4 == 4)
  {
    v6 = *(a1 + 72);
LABEL_9:
    v7 = v3 + v6;
    v8 = v3 + a2;
    while (1)
    {
      v7 *= 2;
      if (v7 >= v8)
      {
        break;
      }

      if (v7 <= 0)
      {
        v7 = v8;
        break;
      }
    }

    v9 = malloc_type_realloc(*(a1 + 56), v7, 0x100004077774924uLL);
    if (v9)
    {
      *(a1 + 56) = v9;
      *(a1 + 72) = v7 - *(a1 + 64);
      return;
    }

LABEL_32:
    exception = __cxa_allocate_exception(8uLL);
    v27 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v27, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v10 = *(a1 + 96);
  v11 = v3 - v4;
  v12 = a2 + v3 - v4 + 4;
  while (v10 < v12)
  {
    v13 = v10 <= 0;
    v10 *= 2;
    if (v13)
    {
      v10 = v12;
      break;
    }
  }

  v14 = malloc_type_malloc(v10, 0x100004077774924uLL);
  if (!v14)
  {
    goto LABEL_32;
  }

  v15 = v14;
  *v14 = 1;
  memcpy(v14 + 1, (*(a1 + 56) + *(a1 + 80)), v11);
  if (*(a1 + 232) == 1)
  {
    v16 = *(a1 + 56);
    v17 = **(a1 + 104);
    v18 = v17[4];
    if (v18 == v17[5])
    {
      v19 = v17[6];
      v21 = v18 - v19;
      v20 = v18 == v19;
      v22 = (v18 - v19) >> 3;
      if (v20)
      {
        v23 = 4;
      }

      else
      {
        v23 = v22;
      }

      v24 = malloc_type_realloc(v19, 16 * v23, 0x80040803F642BuLL);
      if (!v24)
      {
        v28 = __cxa_allocate_exception(8uLL);
        v29 = std::bad_alloc::bad_alloc(v28);
        __cxa_throw(v29, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
      }

      v17[5] = &v24[16 * v23];
      v17[6] = v24;
      v18 = &v24[v21];
    }

    *v18 = sub_23F2F8B60;
    *(v18 + 1) = v16;
    v17[4] = v18 + 16;
    *(a1 + 232) = 0;
  }

  else
  {
    v25 = *(a1 + 56);
    if (atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
    {
      free(v25);
    }
  }

  *(a1 + 56) = v15;
  *(a1 + 64) = v11 + 4;
  *(a1 + 72) = v10 - (v11 + 4);
  *(a1 + 80) = 4;
}

void *sub_23F2F8E1C(void *result)
{
  v5 = "RefillBuffer";
  v4 = &unk_23F3091D6;
  if (*(result + *(*result - 24) + 32))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_23F2F8F18(&__msg, &v4, &v5);
    *&__ec.__val_ = 1;
    __ec.__cat_ = std::iostream_category();
    std::ios_base::failure::failure(exception, &__msg, &__ec);
    __cxa_throw(exception, MEMORY[0x277D82738], MEMORY[0x277D826B0]);
  }

  return result;
}

void sub_23F2F8EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

uint64_t sub_23F2F8F18(uint64_t a1, const char **a2, const char *a3)
{
  v6 = 0;
  if (*a2)
  {
    sub_23F2947C4(v5, a2);
  }

  else
  {
    v7 = v5;
    v8 = "nullptr";
    v9 = v5;
    v10 = "nullptr";
    v11 = "nullptr";
    v12 = &v7;
    sub_23EF6D5F0(&v12);
  }

  v7 = v5;
  v8 = "Input stream not in good state, in ";
  v9 = v5;
  v10 = "Input stream not in good state, in ";
  v11 = "Input stream not in good state, in ";
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v12 = &v7;
  (*(&off_28518DAF0 + v6))(&v12, v5);
  if (*a3)
  {
    v7 = v5;
    v8 = a3;
    v9 = v5;
    v10 = a3;
    v11 = a3;
    if (v6 != -1)
    {
      v12 = &v7;
      (off_28518DAA8[v6])(&v12, v5);
      goto LABEL_10;
    }

LABEL_15:
    sub_23EF41D6C();
  }

  v7 = v5;
  v8 = "nullptr";
  v9 = v5;
  v10 = "nullptr";
  v11 = "nullptr";
  if (v6 == -1)
  {
    goto LABEL_15;
  }

  v12 = &v7;
  (*(&off_28518DAD8 + v6))(&v12, v5);
LABEL_10:
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v7 = &v12;
  result = (off_28518DB08[v6])(&v7, v5);
  if (v6 != -1)
  {
    return (off_28518DAC0[v6])(&v7, v5);
  }

  return result;
}

void sub_23F2F9118(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 24) = 0;
  v4 = a1[11];
  v5 = a1[9];
  v6 = a1[12] - v4 + v5;
  v7 = a1[8];
  v8 = (v7 + v4);
  a1[1] = v7;
  a1[2] = v7 + v4;
  if (v4 == v5)
  {
    goto LABEL_5;
  }

  while (1)
  {
    v26 = 0;
    v27 = 0;
    v28 = (v7 + v5);
    v29 = *(a1 + 8);
    while (2)
    {
      if (v29)
      {
        v8 = a1[2];
        v27 = v8;
        if ((v26 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      v37 = *v8;
      v38 = *v8;
      if ((v37 & 0x8000000000000000) == 0)
      {
        v39 = *(a1[27] - 8);
        *v39 = 2;
        *(v39 + 8) = v38;
        v33 = a1[2] + 1;
        a1[2] = v33;
        v40 = a1[5];
        v41 = a1[6];
        if (v40 != v41)
        {
          v42 = a1[27];
          do
          {
            while (1)
            {
              v45 = v41 - 2;
              v46 = *(v41 - 2);
              if (v46)
              {
                break;
              }

              v47 = *--v42;
              *v42 = v47 + 24;
              v48 = *(v41 - 1) - 1;
              *(v41 - 1) = v48;
              if (v48)
              {
                goto LABEL_329;
              }

LABEL_31:
              a1[6] = v45;
              a1[27] = v42;
              v41 -= 2;
              if (v40 == v45)
              {
                goto LABEL_482;
              }
            }

            if (v46 == 2)
            {
              v43 = *--v42;
              *v42 = v43 + 24;
              v44 = *(v41 - 1) - 1;
              *(v41 - 1) = v44;
              if (v44)
              {
                goto LABEL_463;
              }

              goto LABEL_31;
            }

            if (v46 == 1)
            {
              goto LABEL_462;
            }
          }

          while (v40 != v41);
        }

LABEL_482:
        v9 = 1;
        v345 = v33 - a1[1];
        a1[11] = v345;
        v346 = v345 > v4;
        v11 = (v345 - v4);
        if (v346)
        {
          goto LABEL_484;
        }

        goto LABEL_485;
      }

      if (v37 >= 0xFFFFFFE0)
      {
        v49 = *(a1[27] - 8);
        *v49 = 3;
        *(v49 + 8) = v37;
        v33 = a1[2] + 1;
        a1[2] = v33;
        v50 = a1[5];
        v51 = a1[6];
        if (v50 == v51)
        {
          goto LABEL_482;
        }

        v42 = a1[27];
        while (1)
        {
          while (1)
          {
            v45 = v51 - 2;
            v54 = *(v51 - 2);
            if (v54)
            {
              break;
            }

            v55 = *--v42;
            *v42 = v55 + 24;
            v56 = *(v51 - 1) - 1;
            *(v51 - 1) = v56;
            if (v56)
            {
              goto LABEL_329;
            }

LABEL_43:
            a1[6] = v45;
            a1[27] = v42;
            v51 -= 2;
            if (v50 == v45)
            {
              goto LABEL_482;
            }
          }

          if (v54 == 2)
          {
            v52 = *--v42;
            *v42 = v52 + 24;
            v53 = *(v51 - 1) - 1;
            *(v51 - 1) = v53;
            if (v53)
            {
              goto LABEL_463;
            }

            goto LABEL_43;
          }

          if (v54 == 1)
          {
            goto LABEL_462;
          }

          if (v50 == v51)
          {
            goto LABEL_482;
          }
        }
      }

      if (v38 < 0xC4)
      {
        if ((v38 & 0xE0) == 0xA0)
        {
          v63 = v38 & 0x1F;
          a1[3] = v63;
          if (v63)
          {
            v29 = 32;
            *(a1 + 8) = 32;
            goto LABEL_21;
          }

          sub_23F2FB294((a1 + 15), v27, 0);
          v33 = a1[2] + 1;
          a1[2] = v33;
          v298 = a1[5];
          v299 = a1[6];
          if (v298 == v299)
          {
            goto LABEL_482;
          }

          v42 = a1[27];
          while (1)
          {
            while (1)
            {
              v45 = v299 - 2;
              v302 = *(v299 - 2);
              if (v302)
              {
                break;
              }

              v303 = *--v42;
              *v42 = v303 + 24;
              v304 = *(v299 - 1) - 1;
              *(v299 - 1) = v304;
              if (v304)
              {
                goto LABEL_329;
              }

LABEL_407:
              a1[6] = v45;
              a1[27] = v42;
              v299 -= 2;
              if (v298 == v45)
              {
                goto LABEL_482;
              }
            }

            if (v302 == 2)
            {
              v300 = *--v42;
              *v42 = v300 + 24;
              v301 = *(v299 - 1) - 1;
              *(v299 - 1) = v301;
              if (v301)
              {
                goto LABEL_463;
              }

              goto LABEL_407;
            }

            if (v302 == 1)
            {
              goto LABEL_462;
            }

            if (v298 == v299)
            {
              goto LABEL_482;
            }
          }
        }

        if ((v37 & 0xFFFFFFF0) == 0xFFFFFF90)
        {
          a1[2] = (v8 + 1);
          v254 = v38 & 0xF;
          if ((v38 & 0xF) != 0)
          {
            LODWORD(v385) = 0;
            HIDWORD(v385) = v38 & 0xF;
            sub_23F2FBBD8((a1 + 5), &v385);
            sub_23F2FB838(a1 + 15, v254);
            goto LABEL_329;
          }

          sub_23F2FB838(a1 + 15, 0);
          v42 = (a1[27] - 8);
          a1[27] = v42;
          v313 = a1[5];
          v314 = a1[6];
          if (v313 == v314)
          {
            goto LABEL_481;
          }

          while (1)
          {
            while (1)
            {
              v45 = v314 - 2;
              v317 = *(v314 - 2);
              if (v317)
              {
                break;
              }

              v318 = *--v42;
              *v42 = v318 + 24;
              v319 = *(v314 - 1) - 1;
              *(v314 - 1) = v319;
              if (v319)
              {
                goto LABEL_329;
              }

LABEL_432:
              a1[6] = v45;
              a1[27] = v42;
              v314 -= 2;
              if (v313 == v45)
              {
                goto LABEL_481;
              }
            }

            if (v317 == 2)
            {
              v315 = *--v42;
              *v42 = v315 + 24;
              v316 = *(v314 - 1) - 1;
              *(v314 - 1) = v316;
              if (v316)
              {
                goto LABEL_463;
              }

              goto LABEL_432;
            }

            if (v317 == 1)
            {
              goto LABEL_462;
            }

            if (v313 == v314)
            {
              goto LABEL_481;
            }
          }
        }

        if (v38 <= 0x8F)
        {
          a1[2] = (v8 + 1);
          v255 = v37 & 0xF;
          if ((v37 & 0xF) != 0)
          {
            LODWORD(v385) = 1;
            HIDWORD(v385) = v37 & 0xF;
            sub_23F2FBBD8((a1 + 5), &v385);
            sub_23F2FBCF0(a1 + 15, v255);
            goto LABEL_329;
          }

          sub_23F2FBCF0(a1 + 15, 0);
          v42 = (a1[27] - 8);
          a1[27] = v42;
          v320 = a1[5];
          v321 = a1[6];
          if (v320 == v321)
          {
LABEL_481:
            v33 = a1[2];
            goto LABEL_482;
          }

          while (1)
          {
            while (1)
            {
              v45 = v321 - 2;
              v324 = *(v321 - 2);
              if (v324)
              {
                break;
              }

              v325 = *--v42;
              *v42 = v325 + 24;
              v326 = *(v321 - 1) - 1;
              *(v321 - 1) = v326;
              if (v326)
              {
                goto LABEL_329;
              }

LABEL_443:
              a1[6] = v45;
              a1[27] = v42;
              v321 -= 2;
              if (v320 == v45)
              {
                goto LABEL_481;
              }
            }

            if (v324 == 2)
            {
              v322 = *--v42;
              *v42 = v322 + 24;
              v323 = *(v321 - 1) - 1;
              *(v321 - 1) = v323;
              if (v323)
              {
                goto LABEL_463;
              }

              goto LABEL_443;
            }

            if (v324 == 1)
            {
              goto LABEL_462;
            }

            if (v320 == v321)
            {
              goto LABEL_481;
            }
          }
        }

        if (v38 != 192)
        {
          if (v38 != 195)
          {
            if (v38 != 194)
            {
LABEL_524:
              a1[11] = &v8[-a1[1]];
              sub_23F2FB430();
            }

            v305 = *(a1[27] - 8);
            *v305 = 1;
            *(v305 + 8) = 0;
            v33 = a1[2] + 1;
            a1[2] = v33;
            v306 = a1[5];
            v307 = a1[6];
            if (v306 == v307)
            {
              goto LABEL_482;
            }

            v42 = a1[27];
            while (1)
            {
              while (1)
              {
                v45 = v307 - 2;
                v310 = *(v307 - 2);
                if (v310)
                {
                  break;
                }

                v311 = *--v42;
                *v42 = v311 + 24;
                v312 = *(v307 - 1) - 1;
                *(v307 - 1) = v312;
                if (v312)
                {
                  goto LABEL_329;
                }

LABEL_421:
                a1[6] = v45;
                a1[27] = v42;
                v307 -= 2;
                if (v306 == v45)
                {
                  goto LABEL_482;
                }
              }

              if (v310 == 2)
              {
                v308 = *--v42;
                *v42 = v308 + 24;
                v309 = *(v307 - 1) - 1;
                *(v307 - 1) = v309;
                if (v309)
                {
                  goto LABEL_463;
                }

                goto LABEL_421;
              }

              if (v310 == 1)
              {
                goto LABEL_462;
              }

              if (v306 == v307)
              {
                goto LABEL_482;
              }
            }
          }

          v327 = *(a1[27] - 8);
          *v327 = 1;
          *(v327 + 8) = 1;
          v33 = a1[2] + 1;
          a1[2] = v33;
          v328 = a1[5];
          v329 = a1[6];
          if (v328 == v329)
          {
            goto LABEL_482;
          }

          v42 = a1[27];
          while (1)
          {
            v45 = v329 - 2;
            v332 = *(v329 - 2);
            if (!v332)
            {
              break;
            }

            if (v332 == 2)
            {
              v330 = *--v42;
              *v42 = v330 + 24;
              v331 = *(v329 - 1) - 1;
              *(v329 - 1) = v331;
              if (v331)
              {
LABEL_463:
                v29 = 0;
                v26 = 0;
                *v45 = 1;
                goto LABEL_464;
              }

LABEL_454:
              a1[6] = v45;
              a1[27] = v42;
              v329 -= 2;
              if (v328 == v45)
              {
                goto LABEL_482;
              }
            }

            else
            {
              if (v332 == 1)
              {
LABEL_462:
                v29 = 0;
                v26 = 0;
                *(v42 - 1) += 24;
                *v45 = 2;
                goto LABEL_464;
              }

              if (v328 == v329)
              {
                goto LABEL_482;
              }
            }
          }

          v333 = *--v42;
          *v42 = v333 + 24;
          v334 = *(v329 - 1) - 1;
          *(v329 - 1) = v334;
          if (v334)
          {
            goto LABEL_329;
          }

          goto LABEL_454;
        }

        v335 = a1[27];
        **(v335 - 1) = 0;
        v33 = (v8 + 1);
        a1[2] = (v8 + 1);
        v336 = a1[5];
        v337 = a1[6];
        if (v336 == v337)
        {
          goto LABEL_482;
        }

        while (1)
        {
          v340 = v337 - 2;
          v341 = *(v337 - 2);
          if (!v341)
          {
            break;
          }

          if (v341 == 2)
          {
            v338 = *--v335;
            *v335 = v338 + 24;
            v339 = *(v337 - 1) - 1;
            *(v337 - 1) = v339;
            if (v339)
            {
              v29 = 0;
              v26 = 0;
              *v340 = 1;
              goto LABEL_464;
            }

LABEL_469:
            a1[6] = v340;
            a1[27] = v335;
            v337 -= 2;
            if (v336 == v340)
            {
              goto LABEL_482;
            }
          }

          else
          {
            if (v341 == 1)
            {
              v29 = 0;
              v26 = 0;
              *(v335 - 1) += 24;
              *v340 = 2;
              goto LABEL_464;
            }

            if (v336 == v337)
            {
              goto LABEL_482;
            }
          }
        }

        v342 = *--v335;
        *v335 = v342 + 24;
        v343 = *(v337 - 1) - 1;
        *(v337 - 1) = v343;
        if (v343)
        {
          goto LABEL_329;
        }

        goto LABEL_469;
      }

      a1[3] = dword_23F349108[(v38 - 196)];
      v29 = *v8 & 0x1F;
      *(a1 + 8) = v29;
LABEL_21:
      v27 = v8 + 1;
      a1[2] = (v8 + 1);
LABEL_22:
      v30 = a1[3];
      if (v28 - v27 >= v30)
      {
        v31 = &v27[v30];
        v8 = &v27[v30 - 1];
        a1[2] = v8;
        switch(v29)
        {
          case 4:
            v32 = *v27;
            a1[3] = v32;
            if (v32)
            {
              goto LABEL_173;
            }

            sub_23F2FB624((a1 + 15), v27, 0);
            v33 = a1[2] + 1;
            a1[2] = v33;
            v34 = a1[5];
            v35 = a1[6];
            if (v34 == v35)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              v59 = v35 - 2;
              v60 = *(v35 - 2);
              if (v60)
              {
                if (v60 != 2)
                {
                  if (v60 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v34 == v35)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v57 = *--v36;
                *v36 = v57 + 24;
                v58 = *(v35 - 1) - 1;
                *(v35 - 1) = v58;
                if (v58)
                {
                  goto LABEL_403;
                }

LABEL_54:
                a1[6] = v59;
                a1[27] = v36;
                v35 -= 2;
                if (v34 == v59)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v61 = *--v36;
            *v36 = v61 + 24;
            v62 = *(v35 - 1) - 1;
            *(v35 - 1) = v62;
            if (!v62)
            {
              goto LABEL_54;
            }

            goto LABEL_329;
          case 5:
            v144 = *v27;
            v145 = __rev16(v144);
            a1[3] = v145;
            if (v144)
            {
              goto LABEL_173;
            }

            sub_23F2FB624((a1 + 15), v27, v145);
            v33 = a1[2] + 1;
            a1[2] = v33;
            v277 = a1[5];
            v278 = a1[6];
            if (v277 == v278)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              while (2)
              {
                v59 = v278 - 2;
                v281 = *(v278 - 2);
                if (v281)
                {
                  if (v281 != 2)
                  {
                    if (v281 == 1)
                    {
                      goto LABEL_402;
                    }

                    if (v277 == v278)
                    {
                      goto LABEL_482;
                    }

                    continue;
                  }

                  v279 = *--v36;
                  *v36 = v279 + 24;
                  v280 = *(v278 - 1) - 1;
                  *(v278 - 1) = v280;
                  if (v280)
                  {
                    goto LABEL_403;
                  }
                }

                else
                {
                  v282 = *--v36;
                  *v36 = v282 + 24;
                  v283 = *(v278 - 1) - 1;
                  *(v278 - 1) = v283;
                  if (v283)
                  {
                    goto LABEL_329;
                  }
                }

                break;
              }

              a1[6] = v59;
              a1[27] = v36;
              v278 -= 2;
              if (v277 == v59)
              {
                goto LABEL_482;
              }

              continue;
            }

          case 6:
            v116 = *v27;
            v117 = bswap32(*v27);
            a1[3] = v117;
            if (v116)
            {
LABEL_173:
              v26 = 1;
              v29 = 33;
              goto LABEL_464;
            }

            sub_23F2FB624((a1 + 15), v27, v117);
            v33 = a1[2] + 1;
            a1[2] = v33;
            v118 = a1[5];
            v119 = a1[6];
            if (v118 == v119)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (1)
            {
              while (1)
              {
                v59 = v119 - 2;
                v122 = *(v119 - 2);
                if (v122)
                {
                  break;
                }

                v123 = *--v36;
                *v36 = v123 + 24;
                v124 = *(v119 - 1) - 1;
                *(v119 - 1) = v124;
                if (v124)
                {
                  goto LABEL_329;
                }

LABEL_138:
                a1[6] = v59;
                a1[27] = v36;
                v119 -= 2;
                if (v118 == v59)
                {
                  goto LABEL_482;
                }
              }

              if (v122 == 2)
              {
                v120 = *--v36;
                *v36 = v120 + 24;
                v121 = *(v119 - 1) - 1;
                *(v119 - 1) = v121;
                if (v121)
                {
                  goto LABEL_403;
                }

                goto LABEL_138;
              }

              if (v122 == 1)
              {
                goto LABEL_402;
              }

              if (v118 == v119)
              {
                goto LABEL_482;
              }
            }

          case 7:
            v93 = *v27;
            goto LABEL_197;
          case 8:
            v93 = bswap32(*v27) >> 16;
            goto LABEL_197;
          case 9:
            v93 = bswap32(*v27);
LABEL_197:
            a1[3] = v93 + 1;
            v26 = 1;
            v29 = 34;
            goto LABEL_464;
          case 10:
            v180 = COERCE_FLOAT(bswap32(*v27));
            v181 = *(a1[27] - 8);
            *v181 = 4;
            *(v181 + 8) = v180;
            v33 = a1[2] + 1;
            a1[2] = v33;
            v182 = a1[5];
            v183 = a1[6];
            if (v182 == v183)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              v59 = v183 - 2;
              v186 = *(v183 - 2);
              if (v186)
              {
                if (v186 != 2)
                {
                  if (v186 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v182 == v183)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v184 = *--v36;
                *v36 = v184 + 24;
                v185 = *(v183 - 1) - 1;
                *(v183 - 1) = v185;
                if (v185)
                {
                  goto LABEL_403;
                }

LABEL_227:
                a1[6] = v59;
                a1[27] = v36;
                v183 -= 2;
                if (v182 == v59)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v187 = *--v36;
            *v36 = v187 + 24;
            v188 = *(v183 - 1) - 1;
            *(v183 - 1) = v188;
            if (!v188)
            {
              goto LABEL_227;
            }

            goto LABEL_329;
          case 11:
            v135 = bswap64(*v27);
            v136 = *(a1[27] - 8);
            *v136 = 4;
            *(v136 + 8) = v135;
            v33 = a1[2] + 1;
            a1[2] = v33;
            v137 = a1[5];
            v138 = a1[6];
            if (v137 == v138)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              v59 = v138 - 2;
              v141 = *(v138 - 2);
              if (v141)
              {
                if (v141 != 2)
                {
                  if (v141 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v137 == v138)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v139 = *--v36;
                *v36 = v139 + 24;
                v140 = *(v138 - 1) - 1;
                *(v138 - 1) = v140;
                if (v140)
                {
                  goto LABEL_403;
                }

LABEL_164:
                a1[6] = v59;
                a1[27] = v36;
                v138 -= 2;
                if (v137 == v59)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v142 = *--v36;
            *v36 = v142 + 24;
            v143 = *(v138 - 1) - 1;
            *(v138 - 1) = v143;
            if (!v143)
            {
              goto LABEL_164;
            }

            goto LABEL_329;
          case 12:
            v205 = *v27;
            v206 = *(a1[27] - 8);
            *v206 = 2;
            *(v206 + 8) = v205;
            v33 = a1[2] + 1;
            a1[2] = v33;
            v207 = a1[5];
            v208 = a1[6];
            if (v207 == v208)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              v59 = v208 - 2;
              v211 = *(v208 - 2);
              if (v211)
              {
                if (v211 != 2)
                {
                  if (v211 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v207 == v208)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v209 = *--v36;
                *v36 = v209 + 24;
                v210 = *(v208 - 1) - 1;
                *(v208 - 1) = v210;
                if (v210)
                {
                  goto LABEL_403;
                }

LABEL_260:
                a1[6] = v59;
                a1[27] = v36;
                v208 -= 2;
                if (v207 == v59)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v212 = *--v36;
            *v36 = v212 + 24;
            v213 = *(v208 - 1) - 1;
            *(v208 - 1) = v213;
            if (!v213)
            {
              goto LABEL_260;
            }

            goto LABEL_329;
          case 13:
            v104 = bswap32(*v27);
            v105 = *(a1[27] - 8);
            *v105 = 2;
            *(v105 + 8) = HIWORD(v104);
            v33 = a1[2] + 1;
            a1[2] = v33;
            v106 = a1[5];
            v107 = a1[6];
            if (v106 == v107)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              v59 = v107 - 2;
              v110 = *(v107 - 2);
              if (v110)
              {
                if (v110 != 2)
                {
                  if (v110 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v106 == v107)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v108 = *--v36;
                *v36 = v108 + 24;
                v109 = *(v107 - 1) - 1;
                *(v107 - 1) = v109;
                if (v109)
                {
                  goto LABEL_403;
                }

LABEL_121:
                a1[6] = v59;
                a1[27] = v36;
                v107 -= 2;
                if (v106 == v59)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v111 = *--v36;
            *v36 = v111 + 24;
            v112 = *(v107 - 1) - 1;
            *(v107 - 1) = v112;
            if (!v112)
            {
              goto LABEL_121;
            }

            goto LABEL_329;
          case 14:
            v196 = bswap32(*v27);
            v197 = *(a1[27] - 8);
            *v197 = 2;
            *(v197 + 8) = v196;
            v33 = a1[2] + 1;
            a1[2] = v33;
            v198 = a1[5];
            v199 = a1[6];
            if (v198 == v199)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              v59 = v199 - 2;
              v202 = *(v199 - 2);
              if (v202)
              {
                if (v202 != 2)
                {
                  if (v202 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v198 == v199)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v200 = *--v36;
                *v36 = v200 + 24;
                v201 = *(v199 - 1) - 1;
                *(v199 - 1) = v201;
                if (v201)
                {
                  goto LABEL_403;
                }

LABEL_249:
                a1[6] = v59;
                a1[27] = v36;
                v199 -= 2;
                if (v198 == v59)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v203 = *--v36;
            *v36 = v203 + 24;
            v204 = *(v199 - 1) - 1;
            *(v199 - 1) = v204;
            if (!v204)
            {
              goto LABEL_249;
            }

            goto LABEL_329;
          case 15:
            v84 = bswap64(*v27);
            v85 = *(a1[27] - 8);
            *v85 = 2;
            *(v85 + 8) = v84;
            v33 = a1[2] + 1;
            a1[2] = v33;
            v86 = a1[5];
            v87 = a1[6];
            if (v86 == v87)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              v59 = v87 - 2;
              v90 = *(v87 - 2);
              if (v90)
              {
                if (v90 != 2)
                {
                  if (v90 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v86 == v87)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v88 = *--v36;
                *v36 = v88 + 24;
                v89 = *(v87 - 1) - 1;
                *(v87 - 1) = v89;
                if (v89)
                {
                  goto LABEL_403;
                }

LABEL_95:
                a1[6] = v59;
                a1[27] = v36;
                v87 -= 2;
                if (v86 == v59)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v91 = *--v36;
            *v36 = v91 + 24;
            v92 = *(v87 - 1) - 1;
            *(v87 - 1) = v92;
            if (!v92)
            {
              goto LABEL_95;
            }

            goto LABEL_329;
          case 16:
            v94 = *v27;
            v95 = *(a1[27] - 8);
            if (v94 >= 0)
            {
              v96 = 2;
            }

            else
            {
              v96 = 3;
            }

            *v95 = v96;
            *(v95 + 8) = v94;
            v33 = a1[2] + 1;
            a1[2] = v33;
            v97 = a1[5];
            v98 = a1[6];
            if (v97 == v98)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              v59 = v98 - 2;
              v101 = *(v98 - 2);
              if (v101)
              {
                if (v101 != 2)
                {
                  if (v101 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v97 == v98)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v99 = *--v36;
                *v36 = v99 + 24;
                v100 = *(v98 - 1) - 1;
                *(v98 - 1) = v100;
                if (v100)
                {
                  goto LABEL_403;
                }

LABEL_110:
                a1[6] = v59;
                a1[27] = v36;
                v98 -= 2;
                if (v97 == v59)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v102 = *--v36;
            *v36 = v102 + 24;
            v103 = *(v98 - 1) - 1;
            *(v98 - 1) = v103;
            if (!v103)
            {
              goto LABEL_110;
            }

            goto LABEL_329;
          case 17:
            v168 = bswap32(*v27);
            v169 = v168 >> 16;
            v170 = SHIWORD(v168);
            v171 = *(a1[27] - 8);
            if (v169 >= 0)
            {
              v172 = 2;
            }

            else
            {
              v172 = 3;
            }

            *v171 = v172;
            *(v171 + 8) = v170;
            v33 = a1[2] + 1;
            a1[2] = v33;
            v173 = a1[5];
            v174 = a1[6];
            if (v173 == v174)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              v59 = v174 - 2;
              v177 = *(v174 - 2);
              if (v177)
              {
                if (v177 != 2)
                {
                  if (v177 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v173 == v174)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v175 = *--v36;
                *v36 = v175 + 24;
                v176 = *(v174 - 1) - 1;
                *(v174 - 1) = v176;
                if (v176)
                {
                  goto LABEL_403;
                }

LABEL_216:
                a1[6] = v59;
                a1[27] = v36;
                v174 -= 2;
                if (v173 == v59)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v178 = *--v36;
            *v36 = v178 + 24;
            v179 = *(v174 - 1) - 1;
            *(v174 - 1) = v179;
            if (!v179)
            {
              goto LABEL_216;
            }

            goto LABEL_329;
          case 18:
            v73 = bswap32(*v27);
            v74 = v73;
            v75 = *(a1[27] - 8);
            if (v73 >= 0)
            {
              v76 = 2;
            }

            else
            {
              v76 = 3;
            }

            *v75 = v76;
            *(v75 + 8) = v74;
            v33 = a1[2] + 1;
            a1[2] = v33;
            v77 = a1[5];
            v78 = a1[6];
            if (v77 == v78)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              v59 = v78 - 2;
              v81 = *(v78 - 2);
              if (v81)
              {
                if (v81 != 2)
                {
                  if (v81 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v77 == v78)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v79 = *--v36;
                *v36 = v79 + 24;
                v80 = *(v78 - 1) - 1;
                *(v78 - 1) = v80;
                if (v80)
                {
                  goto LABEL_403;
                }

LABEL_84:
                a1[6] = v59;
                a1[27] = v36;
                v78 -= 2;
                if (v77 == v59)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v82 = *--v36;
            *v36 = v82 + 24;
            v83 = *(v78 - 1) - 1;
            *(v78 - 1) = v83;
            if (!v83)
            {
              goto LABEL_84;
            }

            goto LABEL_329;
          case 19:
            v125 = bswap64(*v27);
            v126 = *(a1[27] - 8);
            if (v125 >= 0)
            {
              v127 = 2;
            }

            else
            {
              v127 = 3;
            }

            *v126 = v127;
            *(v126 + 8) = v125;
            v33 = a1[2] + 1;
            a1[2] = v33;
            v128 = a1[5];
            v129 = a1[6];
            if (v128 == v129)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              v59 = v129 - 2;
              v132 = *(v129 - 2);
              if (v132)
              {
                if (v132 != 2)
                {
                  if (v132 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v128 == v129)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v130 = *--v36;
                *v36 = v130 + 24;
                v131 = *(v129 - 1) - 1;
                *(v129 - 1) = v131;
                if (v131)
                {
                  goto LABEL_403;
                }

LABEL_152:
                a1[6] = v59;
                a1[27] = v36;
                v129 -= 2;
                if (v128 == v59)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v133 = *--v36;
            *v36 = v133 + 24;
            v134 = *(v129 - 1) - 1;
            *(v129 - 1) = v134;
            if (!v134)
            {
              goto LABEL_152;
            }

            goto LABEL_329;
          case 20:
            sub_23F2FB484((a1 + 15), v27, 2u);
            v33 = a1[2] + 1;
            a1[2] = v33;
            v66 = a1[5];
            v67 = a1[6];
            if (v66 == v67)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              v59 = v67 - 2;
              v70 = *(v67 - 2);
              if (v70)
              {
                if (v70 != 2)
                {
                  if (v70 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v66 == v67)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v68 = *--v36;
                *v36 = v68 + 24;
                v69 = *(v67 - 1) - 1;
                *(v67 - 1) = v69;
                if (v69)
                {
                  goto LABEL_403;
                }

LABEL_70:
                a1[6] = v59;
                a1[27] = v36;
                v67 -= 2;
                if (v66 == v59)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v71 = *--v36;
            *v36 = v71 + 24;
            v72 = *(v67 - 1) - 1;
            *(v67 - 1) = v72;
            if (!v72)
            {
              goto LABEL_70;
            }

            goto LABEL_329;
          case 21:
            sub_23F2FB484((a1 + 15), v27, 3u);
            v33 = a1[2] + 1;
            a1[2] = v33;
            v146 = a1[5];
            v147 = a1[6];
            if (v146 == v147)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              v59 = v147 - 2;
              v150 = *(v147 - 2);
              if (v150)
              {
                if (v150 != 2)
                {
                  if (v150 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v146 == v147)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v148 = *--v36;
                *v36 = v148 + 24;
                v149 = *(v147 - 1) - 1;
                *(v147 - 1) = v149;
                if (v149)
                {
                  goto LABEL_403;
                }

LABEL_177:
                a1[6] = v59;
                a1[27] = v36;
                v147 -= 2;
                if (v146 == v59)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v151 = *--v36;
            *v36 = v151 + 24;
            v152 = *(v147 - 1) - 1;
            *(v147 - 1) = v152;
            if (!v152)
            {
              goto LABEL_177;
            }

            goto LABEL_329;
          case 22:
            sub_23F2FB484((a1 + 15), v27, 5u);
            v33 = a1[2] + 1;
            a1[2] = v33;
            v189 = a1[5];
            v190 = a1[6];
            if (v189 == v190)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              v59 = v190 - 2;
              v193 = *(v190 - 2);
              if (v193)
              {
                if (v193 != 2)
                {
                  if (v193 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v189 == v190)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v191 = *--v36;
                *v36 = v191 + 24;
                v192 = *(v190 - 1) - 1;
                *(v190 - 1) = v192;
                if (v192)
                {
                  goto LABEL_403;
                }

LABEL_238:
                a1[6] = v59;
                a1[27] = v36;
                v190 -= 2;
                if (v189 == v59)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v194 = *--v36;
            *v36 = v194 + 24;
            v195 = *(v190 - 1) - 1;
            *(v190 - 1) = v195;
            if (!v195)
            {
              goto LABEL_238;
            }

            goto LABEL_329;
          case 23:
            sub_23F2FB484((a1 + 15), v27, 9u);
            v33 = a1[2] + 1;
            a1[2] = v33;
            v230 = a1[5];
            v231 = a1[6];
            if (v230 == v231)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              while (2)
              {
                v59 = v231 - 2;
                v234 = *(v231 - 2);
                if (v234)
                {
                  if (v234 != 2)
                  {
                    if (v234 == 1)
                    {
                      goto LABEL_402;
                    }

                    if (v230 == v231)
                    {
                      goto LABEL_482;
                    }

                    continue;
                  }

                  v232 = *--v36;
                  *v36 = v232 + 24;
                  v233 = *(v231 - 1) - 1;
                  *(v231 - 1) = v233;
                  if (v233)
                  {
                    goto LABEL_403;
                  }
                }

                else
                {
                  v235 = *--v36;
                  *v36 = v235 + 24;
                  v236 = *(v231 - 1) - 1;
                  *(v231 - 1) = v236;
                  if (v236)
                  {
                    goto LABEL_329;
                  }
                }

                break;
              }

              a1[6] = v59;
              a1[27] = v36;
              v231 -= 2;
              if (v230 == v59)
              {
                goto LABEL_482;
              }

              continue;
            }

          case 24:
            sub_23F2FB484((a1 + 15), v27, 0x11u);
            v33 = a1[2] + 1;
            a1[2] = v33;
            v153 = a1[5];
            v154 = a1[6];
            if (v153 == v154)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              v59 = v154 - 2;
              v157 = *(v154 - 2);
              if (v157)
              {
                if (v157 != 2)
                {
                  if (v157 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v153 == v154)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v155 = *--v36;
                *v36 = v155 + 24;
                v156 = *(v154 - 1) - 1;
                *(v154 - 1) = v156;
                if (v156)
                {
                  goto LABEL_403;
                }

LABEL_188:
                a1[6] = v59;
                a1[27] = v36;
                v154 -= 2;
                if (v153 == v59)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v158 = *--v36;
            *v36 = v158 + 24;
            v159 = *(v154 - 1) - 1;
            *(v154 - 1) = v159;
            if (!v159)
            {
              goto LABEL_188;
            }

            goto LABEL_329;
          case 25:
            v160 = *v27;
            a1[3] = v160;
            if (v160)
            {
              goto LABEL_303;
            }

            sub_23F2FB294((a1 + 15), v27, 0);
            v33 = a1[2] + 1;
            a1[2] = v33;
            v161 = a1[5];
            v162 = a1[6];
            if (v161 == v162)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              v59 = v162 - 2;
              v165 = *(v162 - 2);
              if (v165)
              {
                if (v165 != 2)
                {
                  if (v165 == 1)
                  {
                    goto LABEL_402;
                  }

                  if (v161 == v162)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                v163 = *--v36;
                *v36 = v163 + 24;
                v164 = *(v162 - 1) - 1;
                *(v162 - 1) = v164;
                if (v164)
                {
                  goto LABEL_403;
                }

LABEL_202:
                a1[6] = v59;
                a1[27] = v36;
                v162 -= 2;
                if (v161 == v59)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

            v166 = *--v36;
            *v36 = v166 + 24;
            v167 = *(v162 - 1) - 1;
            *(v162 - 1) = v167;
            if (!v167)
            {
              goto LABEL_202;
            }

            goto LABEL_329;
          case 26:
            v221 = *v27;
            v222 = __rev16(v221);
            a1[3] = v222;
            if (v221)
            {
              goto LABEL_303;
            }

            sub_23F2FB294((a1 + 15), v27, v222);
            v33 = a1[2] + 1;
            a1[2] = v33;
            v223 = a1[5];
            v224 = a1[6];
            if (v223 == v224)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              while (2)
              {
                v59 = v224 - 2;
                v227 = *(v224 - 2);
                if (v227)
                {
                  if (v227 != 2)
                  {
                    if (v227 == 1)
                    {
                      goto LABEL_402;
                    }

                    if (v223 == v224)
                    {
                      goto LABEL_482;
                    }

                    continue;
                  }

                  v225 = *--v36;
                  *v36 = v225 + 24;
                  v226 = *(v224 - 1) - 1;
                  *(v224 - 1) = v226;
                  if (v226)
                  {
                    goto LABEL_403;
                  }
                }

                else
                {
                  v228 = *--v36;
                  *v36 = v228 + 24;
                  v229 = *(v224 - 1) - 1;
                  *(v224 - 1) = v229;
                  if (v229)
                  {
                    goto LABEL_329;
                  }
                }

                break;
              }

              a1[6] = v59;
              a1[27] = v36;
              v224 -= 2;
              if (v223 == v59)
              {
                goto LABEL_482;
              }

              continue;
            }

          case 27:
            v237 = *v27;
            v238 = bswap32(*v27);
            a1[3] = v238;
            if (v237)
            {
LABEL_303:
              v26 = 1;
              v29 = 32;
              goto LABEL_464;
            }

            sub_23F2FB294((a1 + 15), v27, v238);
            v33 = a1[2] + 1;
            a1[2] = v33;
            v284 = a1[5];
            v285 = a1[6];
            if (v284 == v285)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (1)
            {
              while (1)
              {
                v59 = v285 - 2;
                v288 = *(v285 - 2);
                if (v288)
                {
                  break;
                }

                v289 = *--v36;
                *v36 = v289 + 24;
                v290 = *(v285 - 1) - 1;
                *(v285 - 1) = v290;
                if (v290)
                {
                  goto LABEL_329;
                }

LABEL_383:
                a1[6] = v59;
                a1[27] = v36;
                v285 -= 2;
                if (v284 == v59)
                {
                  goto LABEL_482;
                }
              }

              if (v288 == 2)
              {
                v286 = *--v36;
                *v36 = v286 + 24;
                v287 = *(v285 - 1) - 1;
                *(v285 - 1) = v287;
                if (v287)
                {
                  goto LABEL_403;
                }

                goto LABEL_383;
              }

              if (v288 == 1)
              {
                goto LABEL_402;
              }

              if (v284 == v285)
              {
                goto LABEL_482;
              }
            }

          case 28:
            v115 = *v27;
            a1[2] = v31;
            if (v115)
            {
              v114 = __rev16(v115);
              LODWORD(v385) = 0;
              HIDWORD(v385) = v114;
              sub_23F2FBBD8((a1 + 5), &v385);
              goto LABEL_133;
            }

            sub_23F2FB838(a1 + 15, 0);
            v36 = (a1[27] - 8);
            a1[27] = v36;
            v270 = a1[5];
            v271 = a1[6];
            if (v270 == v271)
            {
              goto LABEL_481;
            }

            while (1)
            {
              while (1)
              {
                v59 = v271 - 2;
                v274 = *(v271 - 2);
                if (v274)
                {
                  break;
                }

                v275 = *--v36;
                *v36 = v275 + 24;
                v276 = *(v271 - 1) - 1;
                *(v271 - 1) = v276;
                if (v276)
                {
                  goto LABEL_329;
                }

LABEL_361:
                a1[6] = v59;
                a1[27] = v36;
                v271 -= 2;
                if (v270 == v59)
                {
                  goto LABEL_481;
                }
              }

              if (v274 == 2)
              {
                v272 = *--v36;
                *v36 = v272 + 24;
                v273 = *(v271 - 1) - 1;
                *(v271 - 1) = v273;
                if (v273)
                {
                  goto LABEL_403;
                }

                goto LABEL_361;
              }

              if (v274 == 1)
              {
                goto LABEL_402;
              }

              if (v270 == v271)
              {
                goto LABEL_481;
              }
            }

          case 29:
            v113 = *v27;
            a1[2] = v31;
            if (v113)
            {
              v114 = bswap32(v113);
              LODWORD(v385) = 0;
              HIDWORD(v385) = v114;
              sub_23F2FBBD8((a1 + 5), &v385);
LABEL_133:
              sub_23F2FB838(a1 + 15, v114);
LABEL_329:
              v29 = 0;
              v26 = 0;
              goto LABEL_464;
            }

            sub_23F2FB838(a1 + 15, 0);
            v36 = (a1[27] - 8);
            a1[27] = v36;
            v263 = a1[5];
            v264 = a1[6];
            if (v263 == v264)
            {
              goto LABEL_481;
            }

            while (1)
            {
              while (1)
              {
                v59 = v264 - 2;
                v267 = *(v264 - 2);
                if (v267)
                {
                  break;
                }

                v268 = *--v36;
                *v36 = v268 + 24;
                v269 = *(v264 - 1) - 1;
                *(v264 - 1) = v269;
                if (v269)
                {
                  goto LABEL_329;
                }

LABEL_350:
                a1[6] = v59;
                a1[27] = v36;
                v264 -= 2;
                if (v263 == v59)
                {
                  goto LABEL_481;
                }
              }

              if (v267 == 2)
              {
                v265 = *--v36;
                *v36 = v265 + 24;
                v266 = *(v264 - 1) - 1;
                *(v264 - 1) = v266;
                if (v266)
                {
                  goto LABEL_403;
                }

                goto LABEL_350;
              }

              if (v267 == 1)
              {
                goto LABEL_402;
              }

              if (v263 == v264)
              {
                goto LABEL_481;
              }
            }

          case 30:
            v253 = *v27;
            a1[2] = v31;
            if (v253)
            {
              v65 = __rev16(v253);
              LODWORD(v385) = 1;
              HIDWORD(v385) = v65;
              sub_23F2FBBD8((a1 + 5), &v385);
              goto LABEL_328;
            }

            sub_23F2FBCF0(a1 + 15, 0);
            v36 = (a1[27] - 8);
            a1[27] = v36;
            v291 = a1[5];
            v292 = a1[6];
            if (v291 == v292)
            {
              goto LABEL_481;
            }

            while (1)
            {
              while (1)
              {
                v59 = v292 - 2;
                v295 = *(v292 - 2);
                if (v295)
                {
                  break;
                }

                v296 = *--v36;
                *v36 = v296 + 24;
                v297 = *(v292 - 1) - 1;
                *(v292 - 1) = v297;
                if (v297)
                {
                  goto LABEL_329;
                }

LABEL_394:
                a1[6] = v59;
                a1[27] = v36;
                v292 -= 2;
                if (v291 == v59)
                {
                  goto LABEL_481;
                }
              }

              if (v295 == 2)
              {
                v293 = *--v36;
                *v36 = v293 + 24;
                v294 = *(v292 - 1) - 1;
                *(v292 - 1) = v294;
                if (v294)
                {
                  goto LABEL_403;
                }

                goto LABEL_394;
              }

              if (v295 == 1)
              {
                goto LABEL_402;
              }

              if (v291 == v292)
              {
                goto LABEL_481;
              }
            }

          case 31:
            v64 = *v27;
            a1[2] = v31;
            if (v64)
            {
              v65 = bswap32(v64);
              LODWORD(v385) = 1;
              HIDWORD(v385) = v65;
              sub_23F2FBBD8((a1 + 5), &v385);
LABEL_328:
              sub_23F2FBCF0(a1 + 15, v65);
              goto LABEL_329;
            }

            sub_23F2FBCF0(a1 + 15, 0);
            v36 = (a1[27] - 8);
            a1[27] = v36;
            v256 = a1[5];
            v257 = a1[6];
            if (v256 == v257)
            {
              goto LABEL_481;
            }

            break;
          case 32:
            sub_23F2FB294((a1 + 15), v27, v30);
            v33 = a1[2] + 1;
            a1[2] = v33;
            v239 = a1[5];
            v240 = a1[6];
            if (v239 == v240)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              while (2)
              {
                v59 = v240 - 2;
                v243 = *(v240 - 2);
                if (v243)
                {
                  if (v243 != 2)
                  {
                    if (v243 == 1)
                    {
                      goto LABEL_402;
                    }

                    if (v239 == v240)
                    {
                      goto LABEL_482;
                    }

                    continue;
                  }

                  v241 = *--v36;
                  *v36 = v241 + 24;
                  v242 = *(v240 - 1) - 1;
                  *(v240 - 1) = v242;
                  if (v242)
                  {
                    goto LABEL_403;
                  }
                }

                else
                {
                  v244 = *--v36;
                  *v36 = v244 + 24;
                  v245 = *(v240 - 1) - 1;
                  *(v240 - 1) = v245;
                  if (v245)
                  {
                    goto LABEL_329;
                  }
                }

                break;
              }

              a1[6] = v59;
              a1[27] = v36;
              v240 -= 2;
              if (v239 == v59)
              {
                goto LABEL_482;
              }

              continue;
            }

          case 33:
            sub_23F2FB624((a1 + 15), v27, v30);
            v33 = a1[2] + 1;
            a1[2] = v33;
            v246 = a1[5];
            v247 = a1[6];
            if (v246 == v247)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              while (2)
              {
                v59 = v247 - 2;
                v250 = *(v247 - 2);
                if (v250)
                {
                  if (v250 != 2)
                  {
                    if (v250 == 1)
                    {
                      goto LABEL_402;
                    }

                    if (v246 == v247)
                    {
                      goto LABEL_482;
                    }

                    continue;
                  }

                  v248 = *--v36;
                  *v36 = v248 + 24;
                  v249 = *(v247 - 1) - 1;
                  *(v247 - 1) = v249;
                  if (v249)
                  {
                    goto LABEL_403;
                  }
                }

                else
                {
                  v251 = *--v36;
                  *v36 = v251 + 24;
                  v252 = *(v247 - 1) - 1;
                  *(v247 - 1) = v252;
                  if (v252)
                  {
                    goto LABEL_329;
                  }
                }

                break;
              }

              a1[6] = v59;
              a1[27] = v36;
              v247 -= 2;
              if (v246 == v59)
              {
                goto LABEL_482;
              }

              continue;
            }

          case 34:
            sub_23F2FB484((a1 + 15), v27, v30);
            v33 = a1[2] + 1;
            a1[2] = v33;
            v214 = a1[5];
            v215 = a1[6];
            if (v214 == v215)
            {
              goto LABEL_482;
            }

            v36 = a1[27];
            while (2)
            {
              while (2)
              {
                v59 = v215 - 2;
                v218 = *(v215 - 2);
                if (!v218)
                {
                  v219 = *--v36;
                  *v36 = v219 + 24;
                  v220 = *(v215 - 1) - 1;
                  *(v215 - 1) = v220;
                  if (v220)
                  {
                    goto LABEL_329;
                  }

LABEL_271:
                  a1[6] = v59;
                  a1[27] = v36;
                  v215 -= 2;
                  if (v214 == v59)
                  {
                    goto LABEL_482;
                  }

                  continue;
                }

                break;
              }

              if (v218 == 2)
              {
                v216 = *--v36;
                *v36 = v216 + 24;
                v217 = *(v215 - 1) - 1;
                *(v215 - 1) = v217;
                if (v217)
                {
LABEL_403:
                  v29 = 0;
                  v26 = 0;
                  *v59 = 1;
                  goto LABEL_464;
                }

                goto LABEL_271;
              }

              if (v218 != 1)
              {
                if (v214 == v215)
                {
                  goto LABEL_482;
                }

                continue;
              }

              break;
            }

LABEL_402:
            v29 = 0;
            v26 = 0;
            *(v36 - 1) += 24;
            *v59 = 2;
LABEL_464:
            *(a1 + 8) = v29;
            v8 = a1[2];
            if (v8 == v28)
            {
              v9 = 0;
              v10 = a1[1];
              a1[11] = &v28[-v10];
              v11 = &v28[-v10 - v4];
              if (&v28[-v10] > v4)
              {
                goto LABEL_484;
              }

              goto LABEL_485;
            }

            continue;
          default:
            goto LABEL_524;
        }

        while (1)
        {
          while (1)
          {
            v59 = v257 - 2;
            v260 = *(v257 - 2);
            if (v260)
            {
              break;
            }

            v261 = *--v36;
            *v36 = v261 + 24;
            v262 = *(v257 - 1) - 1;
            *(v257 - 1) = v262;
            if (v262)
            {
              goto LABEL_329;
            }

LABEL_339:
            a1[6] = v59;
            a1[27] = v36;
            v257 -= 2;
            if (v256 == v59)
            {
              goto LABEL_481;
            }
          }

          if (v260 == 2)
          {
            v258 = *--v36;
            *v36 = v258 + 24;
            v259 = *(v257 - 1) - 1;
            *(v257 - 1) = v259;
            if (v259)
            {
              goto LABEL_403;
            }

            goto LABEL_339;
          }

          if (v260 == 1)
          {
            goto LABEL_402;
          }

          if (v256 == v257)
          {
            goto LABEL_481;
          }
        }
      }

      break;
    }

    v9 = 0;
    v344 = a1[1];
    a1[11] = &v27[-v344];
    v11 = &v27[-v344 - v4];
    if (&v27[-v344] > v4)
    {
LABEL_484:
      a1[12] += v11;
    }

LABEL_485:
    if (v9)
    {
      break;
    }

    do
    {
LABEL_5:
      v12 = *(a2 + 24);
      *(a2 + 24) = 0;
      if (v12)
      {
        for (i = v12[4]; ; i -= 16)
        {
          v14 = v12[6];
          if (i == v14)
          {
            break;
          }

          v16 = *(i - 2);
          v15 = *(i - 1);
          v16(v15);
        }

        free(v14);
        v17 = v12[3];
        if (v17)
        {
          do
          {
            v18 = *v17;
            free(v17);
            v17 = v18;
          }

          while (v18);
        }

        free(v12);
      }

      *a2 = 0;
      sub_23F2F8E1C(*a1);
      if (a1[33] >= 0x400)
      {
        v19 = 1024;
      }

      else
      {
        v19 = a1[33];
      }

      if (a1[10] < v19)
      {
        sub_23F2F8B78((a1 + 1), v19);
        v20 = a1[10];
      }

      v21 = *a1;
      v22 = a1[8];
      v23 = a1[9];
      std::istream::read();
      v24 = *(*a1 + 8);
      v5 = a1[9] + v24;
      v25 = a1[10] - v24;
      a1[9] = v5;
      a1[10] = v25;
      v4 = a1[11];
      v6 = a1[12] + v5 - v4;
      v7 = a1[8];
      v8 = (v7 + v4);
      a1[1] = v7;
      a1[2] = v7 + v4;
    }

    while (v4 == v5);
  }

  v347 = a1[31];
  v348 = v347[6];
  if (v348)
  {
    if (*(a1 + 240) == 1)
    {
      v349 = a1[8];
      v350 = v347[4];
      v351 = v349;
      if (v350 == v347[5])
      {
        v353 = v350 - v348;
        v352 = v350 == v348;
        v354 = (v350 - v348) >> 3;
        if (v352)
        {
          v355 = 4;
        }

        else
        {
          v355 = v354;
        }

        v356 = malloc_type_realloc(v348, 16 * v355, 0x80040803F642BuLL);
        if (!v356)
        {
          exception = __cxa_allocate_exception(8uLL);
          v384 = std::bad_alloc::bad_alloc(exception);
          __cxa_throw(v384, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
        }

        v347[5] = &v356[16 * v355];
        v347[6] = v356;
        v350 = &v356[v353];
        v351 = a1[8];
      }

      *v350 = sub_23F2F8B60;
      *(v350 + 1) = v349;
      v347[4] = v350 + 16;
      *(a1 + 240) = 0;
      atomic_fetch_add(v351, 1u);
    }

    v357 = malloc_type_malloc(0x38uLL, 0x1A8CE395uLL);
    v358 = v357;
    if (!v357)
    {
      v379 = __cxa_allocate_exception(8uLL);
      v380 = std::bad_alloc::bad_alloc(v379);
      __cxa_throw(v380, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }

    *v357 = 0x2000;
    v359 = malloc_type_malloc(0x2008uLL, 0x2004093837F09uLL);
    if (!v359)
    {
      v381 = __cxa_allocate_exception(8uLL);
      v382 = std::bad_alloc::bad_alloc(v381);
      __cxa_throw(v382, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }

    v358[3] = v359;
    v358[1] = 0x2000;
    *v359 = 0;
    v358[2] = v359 + 1;
    v358[4] = 0;
    v358[5] = 0;
    v358[6] = 0;
    v360 = a1[31];
    a1[29] = v358;
    a1[31] = v358;
    a1[32] = v358;
    v361 = *(a2 + 24);
    *(a2 + 24) = v360;
    if (v361)
    {
      for (j = v361[4]; ; j -= 16)
      {
        v363 = v361[6];
        if (j == v363)
        {
          break;
        }

        v365 = *(j - 2);
        v364 = *(j - 1);
        v365(v364);
      }

      free(v363);
      v366 = v361[3];
      if (v366)
      {
        do
        {
          v367 = *v366;
          free(v366);
          v366 = v367;
        }

        while (v367);
      }

      free(v361);
    }
  }

  *a2 = *(a1 + 23);
  v368 = a1[26];
  *(a2 + 16) = a1[25];
  *(a1 + 8) = 0;
  a1[3] = 0;
  a1[6] = a1[5];
  v369 = a1[27];
  v370 = v369 - v368;
  v371 = (v369 - v368) >> 3;
  if (v369 == v368)
  {
    v372 = a1[28];
    if (1 - v371 <= (v372 - v369) >> 3)
    {
      if (v370 != 8)
      {
        *v369 = 0;
        v369 += 8;
      }

      a1[27] = v369;
    }

    else
    {
      v373 = v371 + 1;
      if ((v371 + 1) >> 61)
      {
        sub_23EF3AE74();
      }

      v374 = v372 - v368;
      if (v374 >> 2 > v373)
      {
        v373 = v374 >> 2;
      }

      if (v374 >= 0x7FFFFFFFFFFFFFF8)
      {
        v375 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v375 = v373;
      }

      if (v375)
      {
        if (!(v375 >> 61))
        {
          operator new();
        }

        sub_23EF34E18();
      }

      v376 = v371;
      v377 = (8 * v371);
      v378 = &v377[-v376];
      *v377 = 0;
      memcpy(v378, v368, v370);
      a1[26] = v378;
      a1[27] = (v377 + 1);
      a1[28] = 0;
      if (v368)
      {
        operator delete(v368);
      }
    }

    v368 = a1[26];
  }

  else if (v371 >= 2)
  {
    a1[27] = (v368 + 8);
  }

  *(a1 + 46) = 0;
  *v368 = a1 + 23;
  a1[12] = 0;
  a1[35] += a1[11] + v6 - a1[9];
}

void sub_23F2FB138(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (!v2)
  {
    JUMPOUT(0x23F2FAF38);
  }

  JUMPOUT(0x23F2FAEF8);
}

uint64_t sub_23F2FB218(uint64_t result)
{
  v1 = *(result + 24);
  *(result + 24) = 0;
  if (v1)
  {
    v2 = result;
    for (i = v1[4]; ; i -= 16)
    {
      v4 = v1[6];
      if (i == v4)
      {
        break;
      }

      v6 = *(i - 2);
      v5 = *(i - 1);
      v6(v5);
    }

    free(v4);
    v7 = v1[3];
    if (v7)
    {
      do
      {
        v8 = *v7;
        free(v7);
        v7 = v8;
      }

      while (v8);
    }

    free(v1);
    return v2;
  }

  return result;
}

void *sub_23F2FB294(uint64_t a1, const void *a2, unsigned int a3)
{
  v3 = a3;
  if (*(a1 + 32) < a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23F2FB7C0(exception);
    __cxa_throw(exception, &unk_28518DB50, std::runtime_error::~runtime_error);
  }

  v7 = *(*(a1 + 96) - 8);
  *v7 = 5;
  if (*a1 && (result = (*a1)(5, a3, *(a1 + 8)), result))
  {
    *(v7 + 16) = a2;
    *(a1 + 120) = 1;
  }

  else
  {
    v9 = *(a1 + 112);
    v11 = v9[1];
    v10 = v9[2];
    v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    v13 = &v12[v3 - v10];
    v14 = v11 >= v13;
    v15 = v11 - v13;
    if (v14)
    {
      v9[1] = v15;
      v9[2] = &v12[v3];
    }

    else
    {
      v16 = v3 + 7;
      v17 = *v9;
      while (v17 < v16)
      {
        v18 = v17 <= 0;
        v17 *= 2;
        if (v18)
        {
          v17 = v3 + 7;
          break;
        }
      }

      v19 = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
      if (!v19)
      {
        v21 = __cxa_allocate_exception(8uLL);
        v22 = std::bad_alloc::bad_alloc(v21);
        __cxa_throw(v22, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
      }

      *v19 = v9[3];
      v9[1] = v17 - v16;
      v9[2] = v19 + v16 + 8;
      v9[3] = v19;
      v12 = ((v19 + 1) & 0xFFFFFFFFFFFFFFF8);
    }

    result = memcpy(v12, a2, v3);
    *(v7 + 16) = v12;
  }

  *(v7 + 8) = a3;
  return result;
}

void sub_23F2FB430()
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_23F2FC014(exception);
  __cxa_throw(exception, &unk_28518DC50, std::runtime_error::~runtime_error);
}

void *sub_23F2FB484(uint64_t a1, const void *a2, unsigned int a3)
{
  v3 = a3;
  if (*(a1 + 48) < a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23F2FC08C(exception);
    __cxa_throw(exception, &unk_28518DC90, std::runtime_error::~runtime_error);
  }

  v7 = *(*(a1 + 96) - 8);
  *v7 = 9;
  if (*a1 && (result = (*a1)(9, a3, *(a1 + 8)), result))
  {
    *(v7 + 16) = a2;
    *(a1 + 120) = 1;
  }

  else
  {
    v9 = *(a1 + 112);
    v11 = v9[1];
    v10 = v9[2];
    v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    v13 = &v12[v3 - v10];
    v14 = v11 >= v13;
    v15 = v11 - v13;
    if (v14)
    {
      v9[1] = v15;
      v9[2] = &v12[v3];
    }

    else
    {
      v16 = v3 + 7;
      v17 = *v9;
      while (v17 < v16)
      {
        v18 = v17 <= 0;
        v17 *= 2;
        if (v18)
        {
          v17 = v3 + 7;
          break;
        }
      }

      v19 = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
      if (!v19)
      {
        v21 = __cxa_allocate_exception(8uLL);
        v22 = std::bad_alloc::bad_alloc(v21);
        __cxa_throw(v22, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
      }

      *v19 = v9[3];
      v9[1] = v17 - v16;
      v9[2] = v19 + v16 + 8;
      v9[3] = v19;
      v12 = ((v19 + 1) & 0xFFFFFFFFFFFFFFF8);
    }

    result = memcpy(v12, a2, v3);
    *(v7 + 16) = v12;
  }

  *(v7 + 8) = a3 - 1;
  return result;
}

void *sub_23F2FB624(uint64_t a1, const void *a2, unsigned int a3)
{
  v3 = a3;
  if (*(a1 + 40) < a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23F2FC104(exception);
    __cxa_throw(exception, &unk_28518DCD0, std::runtime_error::~runtime_error);
  }

  v7 = *(*(a1 + 96) - 8);
  *v7 = 8;
  if (*a1 && (result = (*a1)(8, a3, *(a1 + 8)), result))
  {
    *(v7 + 16) = a2;
    *(a1 + 120) = 1;
  }

  else
  {
    v9 = *(a1 + 112);
    v11 = v9[1];
    v10 = v9[2];
    v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    v13 = &v12[v3 - v10];
    v14 = v11 >= v13;
    v15 = v11 - v13;
    if (v14)
    {
      v9[1] = v15;
      v9[2] = &v12[v3];
    }

    else
    {
      v16 = v3 + 7;
      v17 = *v9;
      while (v17 < v16)
      {
        v18 = v17 <= 0;
        v17 *= 2;
        if (v18)
        {
          v17 = v3 + 7;
          break;
        }
      }

      v19 = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
      if (!v19)
      {
        v21 = __cxa_allocate_exception(8uLL);
        v22 = std::bad_alloc::bad_alloc(v21);
        __cxa_throw(v22, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
      }

      *v19 = v9[3];
      v9[1] = v17 - v16;
      v9[2] = v19 + v16 + 8;
      v9[3] = v19;
      v12 = ((v19 + 1) & 0xFFFFFFFFFFFFFFF8);
    }

    result = memcpy(v12, a2, v3);
    *(v7 + 16) = v12;
  }

  *(v7 + 8) = a3;
  return result;
}

std::runtime_error *sub_23F2FB7C0(std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "str size overflow");
  result->__vftable = &unk_28518DB78;
  return result;
}

void sub_23F2FB800(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2FB838(void *a1, unsigned int a2)
{
  if (a1[2] < a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23F2FBAE8(exception);
    __cxa_throw(exception, &unk_28518DB90, std::runtime_error::~runtime_error);
  }

  v3 = a1[12];
  if (a1[7] < ((v3 - a1[11]) >> 3))
  {
    v30 = __cxa_allocate_exception(0x10uLL);
    sub_23F2FBB28(v30);
    __cxa_throw(v30, &unk_28518DBA8, std::runtime_error::~runtime_error);
  }

  v4 = *(v3 - 8);
  *v4 = 6;
  *(v4 + 8) = a2;
  if (!a2)
  {
    v9 = 0;
    *(v4 + 16) = 0;
    v18 = a1[12];
    v17 = a1[13];
    if (v18 >= v17)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v5 = a1[14];
  v6 = 24 * a2;
  v8 = v5[1];
  v7 = v5[2];
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 - v7 + v6;
  v11 = v8 >= v10;
  v12 = v8 - v10;
  if (v11)
  {
    v5[1] = v12;
    v5[2] = v9 + v6;
    *(v4 + 16) = v9;
    v18 = a1[12];
    v17 = a1[13];
    if (v18 >= v17)
    {
      goto LABEL_17;
    }

LABEL_14:
    *v18 = v9;
    v19 = v18 + 1;
LABEL_15:
    a1[12] = v19;
    return;
  }

  v13 = v6 | 7;
  v14 = *v5;
  while (v14 < v13)
  {
    v15 = v14 <= 0;
    v14 *= 2;
    if (v15)
    {
      v14 = v6 | 7;
      break;
    }
  }

  v16 = malloc_type_malloc(v14 + 8, 0x2004093837F09uLL);
  if (!v16)
  {
    v31 = __cxa_allocate_exception(8uLL);
    v32 = std::bad_alloc::bad_alloc(v31);
    __cxa_throw(v32, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  *v16 = v5[3];
  v5[1] = v14 - v13;
  v5[2] = v16 + v13 + 8;
  v5[3] = v16;
  v9 = (v16 + 1) & 0xFFFFFFFFFFFFFFF8;
  *(v4 + 16) = v9;
  v18 = a1[12];
  v17 = a1[13];
  if (v18 < v17)
  {
    goto LABEL_14;
  }

LABEL_17:
  v20 = a1[11];
  v21 = v18 - v20;
  v22 = (v18 - v20) >> 3;
  v23 = v22 + 1;
  if ((v22 + 1) >> 61)
  {
    sub_23EF3AE74();
  }

  v24 = v17 - v20;
  if (v24 >> 2 > v23)
  {
    v23 = v24 >> 2;
  }

  if (v24 >= 0x7FFFFFFFFFFFFFF8)
  {
    v25 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v25 = v23;
  }

  if (v25)
  {
    if (!(v25 >> 61))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v26 = v22;
  v27 = (8 * v22);
  v28 = &v27[-v26];
  *v27 = v9;
  v19 = v27 + 1;
  memcpy(v28, v20, v21);
  a1[11] = v28;
  a1[12] = v19;
  a1[13] = 0;
  if (!v20)
  {
    goto LABEL_15;
  }

  operator delete(v20);
  a1[12] = v19;
}

std::runtime_error *sub_23F2FBAE8(std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "array size overflow");
  result->__vftable = &unk_28518DBD0;
  return result;
}

std::runtime_error *sub_23F2FBB28(std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "depth size overflow");
  result->__vftable = &unk_28518DBF8;
  return result;
}

void sub_23F2FBB68(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2FBBA0(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2FBBD8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_23EF3AE74();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_23F2FBCF0(void *a1, unsigned int a2)
{
  if (a1[3] < a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23F2FBF9C(exception);
    __cxa_throw(exception, &unk_28518DC10, std::runtime_error::~runtime_error);
  }

  v3 = a1[12];
  if (a1[7] < ((v3 - a1[11]) >> 3))
  {
    v30 = __cxa_allocate_exception(0x10uLL);
    sub_23F2FBB28(v30);
    __cxa_throw(v30, &unk_28518DBA8, std::runtime_error::~runtime_error);
  }

  v4 = *(v3 - 8);
  *v4 = 7;
  *(v4 + 8) = a2;
  if (!a2)
  {
    v9 = 0;
    *(v4 + 16) = 0;
    v18 = a1[12];
    v17 = a1[13];
    if (v18 >= v17)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v5 = a1[14];
  v6 = 48 * a2;
  v8 = v5[1];
  v7 = v5[2];
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 - v7 + v6;
  v11 = v8 >= v10;
  v12 = v8 - v10;
  if (v11)
  {
    v5[1] = v12;
    v5[2] = v9 + v6;
    *(v4 + 16) = v9;
    v18 = a1[12];
    v17 = a1[13];
    if (v18 >= v17)
    {
      goto LABEL_17;
    }

LABEL_14:
    *v18 = v9;
    v19 = v18 + 1;
LABEL_15:
    a1[12] = v19;
    return;
  }

  v13 = v6 | 7;
  v14 = *v5;
  while (v14 < v13)
  {
    v15 = v14 <= 0;
    v14 *= 2;
    if (v15)
    {
      v14 = v6 | 7;
      break;
    }
  }

  v16 = malloc_type_malloc(v14 + 8, 0x2004093837F09uLL);
  if (!v16)
  {
    v31 = __cxa_allocate_exception(8uLL);
    v32 = std::bad_alloc::bad_alloc(v31);
    __cxa_throw(v32, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  *v16 = v5[3];
  v5[1] = v14 - v13;
  v5[2] = v16 + v13 + 8;
  v5[3] = v16;
  v9 = (v16 + 1) & 0xFFFFFFFFFFFFFFF8;
  *(v4 + 16) = v9;
  v18 = a1[12];
  v17 = a1[13];
  if (v18 < v17)
  {
    goto LABEL_14;
  }

LABEL_17:
  v20 = a1[11];
  v21 = v18 - v20;
  v22 = (v18 - v20) >> 3;
  v23 = v22 + 1;
  if ((v22 + 1) >> 61)
  {
    sub_23EF3AE74();
  }

  v24 = v17 - v20;
  if (v24 >> 2 > v23)
  {
    v23 = v24 >> 2;
  }

  if (v24 >= 0x7FFFFFFFFFFFFFF8)
  {
    v25 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v25 = v23;
  }

  if (v25)
  {
    if (!(v25 >> 61))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v26 = (v18 - v20) >> 3;
  v27 = (8 * v22);
  v28 = (8 * v22 - 8 * v26);
  *v27 = v9;
  v19 = v27 + 1;
  memcpy(v28, v20, v21);
  a1[11] = v28;
  a1[12] = v19;
  a1[13] = 0;
  if (!v20)
  {
    goto LABEL_15;
  }

  operator delete(v20);
  a1[12] = v19;
}

std::runtime_error *sub_23F2FBF9C(std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "map size overflow");
  result->__vftable = &unk_28518DC38;
  return result;
}

void sub_23F2FBFDC(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CACD00);
}

std::runtime_error *sub_23F2FC014(std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "parse error");
  result->__vftable = &unk_28518DC78;
  return result;
}

void sub_23F2FC054(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CACD00);
}

std::runtime_error *sub_23F2FC08C(std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "ext size overflow");
  result->__vftable = &unk_28518DCB8;
  return result;
}

void sub_23F2FC0CC(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CACD00);
}

std::runtime_error *sub_23F2FC104(std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "bin size overflow");
  result->__vftable = &unk_28518DCF8;
  return result;
}

void sub_23F2FC144(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t **sub_23F2FC17C(uint64_t **a1, unsigned int *a2)
{
  v4 = *a2;
  if (*a2 > 0xFF)
  {
    if (HIWORD(v4))
    {
      v5 = *a1;
      v19 = (*a1)[2];
      v20 = **a1;
      if ((v19 - v20) >= 5)
      {
        v23 = v5[1];
      }

      else
      {
        if (v19)
        {
          v21 = 2 * v19;
        }

        else
        {
          v21 = 0x2000;
        }

        v22 = v20 + 5;
        while (v21 < v22)
        {
          v10 = v21 <= 0;
          v21 *= 2;
          if (v10)
          {
            v21 = v22;
            break;
          }
        }

        v23 = malloc_type_realloc(v5[1], v21, 0xFC6EF249uLL);
        if (!v23)
        {
          goto LABEL_55;
        }

        v5[1] = v23;
        v5[2] = v21;
        v20 = *v5;
      }

      v25 = &v23[v20];
      *v25 = -58;
      *(v25 + 1) = bswap32(v4);
      v18 = 5;
    }

    else
    {
      v5 = *a1;
      v12 = (*a1)[2];
      v13 = **a1;
      if ((v12 - v13) >= 3)
      {
        v16 = v5[1];
      }

      else
      {
        if (v12)
        {
          v14 = 2 * v12;
        }

        else
        {
          v14 = 0x2000;
        }

        v15 = v13 + 3;
        while (v14 < v15)
        {
          v10 = v14 <= 0;
          v14 *= 2;
          if (v10)
          {
            v14 = v15;
            break;
          }
        }

        v16 = malloc_type_realloc(v5[1], v14, 0xFC6EF249uLL);
        if (!v16)
        {
          goto LABEL_55;
        }

        v5[1] = v16;
        v5[2] = v14;
        v13 = *v5;
      }

      v24 = &v16[v13];
      *v24 = -59;
      *(v24 + 1) = bswap32(v4) >> 16;
      v18 = 3;
    }
  }

  else
  {
    v5 = *a1;
    v6 = (*a1)[2];
    v7 = **a1;
    if ((v6 - v7) >= 2)
    {
      v11 = v5[1];
    }

    else
    {
      if (v6)
      {
        v8 = 2 * v6;
      }

      else
      {
        v8 = 0x2000;
      }

      v9 = v7 + 2;
      while (v8 < v9)
      {
        v10 = v8 <= 0;
        v8 *= 2;
        if (v10)
        {
          v8 = v9;
          break;
        }
      }

      v11 = malloc_type_realloc(v5[1], v8, 0xFC6EF249uLL);
      if (!v11)
      {
        goto LABEL_55;
      }

      v5[1] = v11;
      v5[2] = v8;
      v7 = *v5;
    }

    v17 = &v11[v7];
    *v17 = -60;
    v17[1] = v4;
    v18 = 2;
  }

  *v5 += v18;
  v26 = *(a2 + 1);
  v27 = *a2;
  v28 = *a1;
  v29 = (*a1)[2];
  v30 = **a1;
  if (v29 - v30 >= v27)
  {
    v33 = v28[1];
    goto LABEL_54;
  }

  if (v29)
  {
    v31 = 2 * v29;
  }

  else
  {
    v31 = 0x2000;
  }

  v32 = v30 + v27;
  while (v31 < v32)
  {
    v10 = v31 <= 0;
    v31 *= 2;
    if (v10)
    {
      v31 = v32;
      break;
    }
  }

  v33 = malloc_type_realloc(v28[1], v31, 0xFC6EF249uLL);
  if (!v33)
  {
LABEL_55:
    exception = __cxa_allocate_exception(8uLL);
    v36 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v36, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v28[1] = v33;
  v28[2] = v31;
  v30 = *v28;
LABEL_54:
  memcpy(&v33[v30], v26, v27);
  *v28 += v27;
  return a1;
}

uint64_t sub_23F2FC430(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = *a1;
  std::ostream::write();
  v6 = *a1;
  return std::ostream::write();
}

char *sub_23F2FC4E8(uint64_t **a1, char *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = (*a1)[2];
  v5 = **a1;
  if (v2 > -33)
  {
    if (v4 == v5)
    {
      if (v4)
      {
        v10 = 2 * v4;
      }

      else
      {
        v10 = 0x2000;
      }

      while (v10 < v4 + 1)
      {
        v8 = v10 <= 0;
        v10 *= 2;
        if (v8)
        {
          v10 = v4 + 1;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v10, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_28;
      }

      v3[1] = result;
      v3[2] = v10;
      v5 = *v3;
    }

    else
    {
      result = v3[1];
    }

    v12 = &result[v5];
    v13 = 1;
    goto LABEL_27;
  }

  if ((v4 - v5) >= 2)
  {
    result = v3[1];
    goto LABEL_24;
  }

  if (v4)
  {
    v6 = 2 * v4;
  }

  else
  {
    v6 = 0x2000;
  }

  v7 = v5 + 2;
  while (v6 < v7)
  {
    v8 = v6 <= 0;
    v6 *= 2;
    if (v8)
    {
      v6 = v7;
      break;
    }
  }

  result = malloc_type_realloc(v3[1], v6, 0xFC6EF249uLL);
  if (!result)
  {
LABEL_28:
    exception = __cxa_allocate_exception(8uLL);
    v15 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v15, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v3[1] = result;
  v3[2] = v6;
  v5 = *v3;
LABEL_24:
  v11 = &result[v5];
  *v11 = -48;
  v12 = v11 + 1;
  v13 = 2;
LABEL_27:
  *v12 = v2;
  *v3 += v13;
  return result;
}

char *sub_23F2FC63C(uint64_t **a1, char *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = (*a1)[2];
  v5 = **a1;
  if (v2 < 0)
  {
    if ((v4 - v5) >= 2)
    {
      result = v3[1];
    }

    else
    {
      if (v4)
      {
        v9 = 2 * v4;
      }

      else
      {
        v9 = 0x2000;
      }

      v10 = v5 + 2;
      while (v9 < v10)
      {
        v7 = v9 <= 0;
        v9 *= 2;
        if (v7)
        {
          v9 = v10;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v9, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_28;
      }

      v3[1] = result;
      v3[2] = v9;
      v5 = *v3;
    }

    v13 = &result[v5];
    *v13 = -52;
    v11 = v13 + 1;
    v12 = 2;
    goto LABEL_27;
  }

  if (v4 != v5)
  {
    result = v3[1];
    goto LABEL_24;
  }

  if (v4)
  {
    v6 = 2 * v4;
  }

  else
  {
    v6 = 0x2000;
  }

  while (v6 < v4 + 1)
  {
    v7 = v6 <= 0;
    v6 *= 2;
    if (v7)
    {
      v6 = v4 + 1;
      break;
    }
  }

  result = malloc_type_realloc(v3[1], v6, 0xFC6EF249uLL);
  if (!result)
  {
LABEL_28:
    exception = __cxa_allocate_exception(8uLL);
    v15 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v15, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v3[1] = result;
  v3[2] = v6;
  v5 = *v3;
LABEL_24:
  v11 = &result[v5];
  v12 = 1;
LABEL_27:
  *v11 = v2;
  *v3 += v12;
  return result;
}

_BYTE *sub_23F2FC78C(uint64_t **a1, signed int a2)
{
  v3 = *a1;
  v4 = (*a1)[2];
  v5 = **a1;
  if (a2 <= -33)
  {
    v6 = v4 - v5;
    if (a2 <= 0xFFFFFF7F)
    {
      if (v6 >= 3)
      {
        result = v3[1];
        goto LABEL_49;
      }

      if (v4)
      {
        v7 = 2 * v4;
      }

      else
      {
        v7 = 0x2000;
      }

      v8 = v5 + 3;
      while (v7 < v8)
      {
        v9 = v7 <= 0;
        v7 *= 2;
        if (v9)
        {
          v7 = v8;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v7, 0xFC6EF249uLL);
      if (result)
      {
        v3[1] = result;
        v3[2] = v7;
        v5 = *v3;
LABEL_49:
        v17 = bswap32(a2) >> 16;
        v18 = &result[v5];
        v19 = -47;
LABEL_70:
        *v18 = v19;
        *(v18 + 1) = v17;
        v20 = 3;
        goto LABEL_71;
      }

LABEL_72:
      exception = __cxa_allocate_exception(8uLL);
      v26 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v26, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }

    if (v6 >= 2)
    {
      result = v3[1];
    }

    else
    {
      if (v4)
      {
        v12 = 2 * v4;
      }

      else
      {
        v12 = 0x2000;
      }

      v13 = v5 + 2;
      while (v12 < v13)
      {
        v9 = v12 <= 0;
        v12 *= 2;
        if (v9)
        {
          v12 = v13;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v12, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_72;
      }

      v3[1] = result;
      v3[2] = v12;
      v5 = *v3;
    }

    v21 = &result[v5];
    v22 = -48;
LABEL_67:
    *v21 = v22;
    v21[1] = a2;
    v20 = 2;
    goto LABEL_71;
  }

  if (a2 > 127)
  {
    v14 = v4 - v5;
    if (a2 > 0xFF)
    {
      if (v14 >= 3)
      {
        result = v3[1];
      }

      else
      {
        if (v4)
        {
          v23 = 2 * v4;
        }

        else
        {
          v23 = 0x2000;
        }

        v24 = v5 + 3;
        while (v23 < v24)
        {
          v9 = v23 <= 0;
          v23 *= 2;
          if (v9)
          {
            v23 = v24;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v23, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_72;
        }

        v3[1] = result;
        v3[2] = v23;
        v5 = *v3;
      }

      v17 = bswap32(a2) >> 16;
      v18 = &result[v5];
      v19 = -51;
      goto LABEL_70;
    }

    if (v14 >= 2)
    {
      result = v3[1];
    }

    else
    {
      if (v4)
      {
        v15 = 2 * v4;
      }

      else
      {
        v15 = 0x2000;
      }

      v16 = v5 + 2;
      while (v15 < v16)
      {
        v9 = v15 <= 0;
        v15 *= 2;
        if (v9)
        {
          v15 = v16;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v15, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_72;
      }

      v3[1] = result;
      v3[2] = v15;
      v5 = *v3;
    }

    v21 = &result[v5];
    v22 = -52;
    goto LABEL_67;
  }

  if (v4 == v5)
  {
    if (v4)
    {
      v11 = 2 * v4;
    }

    else
    {
      v11 = 0x2000;
    }

    while (v11 < v4 + 1)
    {
      v9 = v11 <= 0;
      v11 *= 2;
      if (v9)
      {
        v11 = v4 + 1;
        break;
      }
    }

    result = malloc_type_realloc(v3[1], v11, 0xFC6EF249uLL);
    if (!result)
    {
      goto LABEL_72;
    }

    v3[1] = result;
    v3[2] = v11;
    v5 = *v3;
  }

  else
  {
    result = v3[1];
  }

  result[v5] = a2;
  v20 = 1;
LABEL_71:
  *v3 += v20;
  return result;
}

_BYTE *sub_23F2FCB5C(uint64_t **a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = (*a1)[2];
  v5 = **a1;
  if (v2 > 0x7F)
  {
    v9 = v4 - v5;
    if (v2 <= 0xFF)
    {
      if (v9 >= 2)
      {
        result = v3[1];
      }

      else
      {
        if (v4)
        {
          v10 = 2 * v4;
        }

        else
        {
          v10 = 0x2000;
        }

        v11 = v5 + 2;
        while (v10 < v11)
        {
          v7 = v10 <= 0;
          v10 *= 2;
          if (v7)
          {
            v10 = v11;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v10, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_42;
        }

        v3[1] = result;
        v3[2] = v10;
        v5 = *v3;
      }

      v15 = &result[v5];
      *v15 = -52;
      v15[1] = v2;
      v12 = 2;
      goto LABEL_41;
    }

    if (v9 >= 3)
    {
      result = v3[1];
    }

    else
    {
      if (v4)
      {
        v13 = 2 * v4;
      }

      else
      {
        v13 = 0x2000;
      }

      v14 = v5 + 3;
      while (v13 < v14)
      {
        v7 = v13 <= 0;
        v13 *= 2;
        if (v7)
        {
          v13 = v14;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v13, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_42;
      }

      v3[1] = result;
      v3[2] = v13;
      v5 = *v3;
    }

    v16 = &result[v5];
    *v16 = -51;
    *(v16 + 1) = __rev16(v2);
    v12 = 3;
    goto LABEL_41;
  }

  if (v4 != v5)
  {
    result = v3[1];
    goto LABEL_25;
  }

  if (v4)
  {
    v6 = 2 * v4;
  }

  else
  {
    v6 = 0x2000;
  }

  while (v6 < v4 + 1)
  {
    v7 = v6 <= 0;
    v6 *= 2;
    if (v7)
    {
      v6 = v4 + 1;
      break;
    }
  }

  result = malloc_type_realloc(v3[1], v6, 0xFC6EF249uLL);
  if (!result)
  {
LABEL_42:
    exception = __cxa_allocate_exception(8uLL);
    v18 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v18, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v3[1] = result;
  v3[2] = v6;
  v5 = *v3;
LABEL_25:
  result[v5] = v2;
  v12 = 1;
LABEL_41:
  *v3 += v12;
  return result;
}

_BYTE *sub_23F2FCD34(uint64_t **a1, unsigned int a2)
{
  if (a2 > -33)
  {
    if (a2 <= 127)
    {
      v3 = *a1;
      v10 = (*a1)[2];
      v11 = **a1;
      if (v10 == v11)
      {
        if (v10)
        {
          v12 = 2 * v10;
        }

        else
        {
          v12 = 0x2000;
        }

        while (v12 < v10 + 1)
        {
          v8 = v12 <= 0;
          v12 *= 2;
          if (v8)
          {
            v12 = v10 + 1;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v12, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_101;
        }

        v3[1] = result;
        v3[2] = v12;
        v11 = *v3;
      }

      else
      {
        result = v3[1];
      }

      result[v11] = a2;
      v24 = 1;
      goto LABEL_98;
    }

    if (a2 > 0xFF)
    {
      if (HIWORD(a2))
      {
        v3 = *a1;
        v38 = (*a1)[2];
        v39 = **a1;
        if ((v38 - v39) >= 5)
        {
          result = v3[1];
        }

        else
        {
          if (v38)
          {
            v40 = 2 * v38;
          }

          else
          {
            v40 = 0x2000;
          }

          v41 = v39 + 5;
          while (v40 < v41)
          {
            v8 = v40 <= 0;
            v40 *= 2;
            if (v8)
            {
              v40 = v41;
              break;
            }
          }

          result = malloc_type_realloc(v3[1], v40, 0xFC6EF249uLL);
          if (!result)
          {
            goto LABEL_101;
          }

          v3[1] = result;
          v3[2] = v40;
          v39 = *v3;
        }

        v21 = bswap32(a2);
        v22 = &result[v39];
        v23 = -50;
        goto LABEL_51;
      }

      v3 = *a1;
      v29 = (*a1)[2];
      v30 = **a1;
      if ((v29 - v30) >= 3)
      {
        result = v3[1];
      }

      else
      {
        if (v29)
        {
          v31 = 2 * v29;
        }

        else
        {
          v31 = 0x2000;
        }

        v32 = v30 + 3;
        while (v31 < v32)
        {
          v8 = v31 <= 0;
          v31 *= 2;
          if (v8)
          {
            v31 = v32;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v31, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_101;
        }

        v3[1] = result;
        v3[2] = v31;
        v30 = *v3;
      }

      v33 = bswap32(a2) >> 16;
      v34 = &result[v30];
      v35 = -51;
LABEL_97:
      *v34 = v35;
      *(v34 + 1) = v33;
      v24 = 3;
      goto LABEL_98;
    }

    v3 = *a1;
    v17 = (*a1)[2];
    v18 = **a1;
    if ((v17 - v18) >= 2)
    {
      result = v3[1];
    }

    else
    {
      if (v17)
      {
        v19 = 2 * v17;
      }

      else
      {
        v19 = 0x2000;
      }

      v20 = v18 + 2;
      while (v19 < v20)
      {
        v8 = v19 <= 0;
        v19 *= 2;
        if (v8)
        {
          v19 = v20;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v19, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_101;
      }

      v3[1] = result;
      v3[2] = v19;
      v18 = *v3;
    }

    v36 = &result[v18];
    v37 = -52;
LABEL_83:
    *v36 = v37;
    v36[1] = a2;
    v24 = 2;
    goto LABEL_98;
  }

  if (a2 > 0xFFFF7FFF)
  {
    if (a2 <= 0xFFFFFF7F)
    {
      v3 = *a1;
      v13 = (*a1)[2];
      v14 = **a1;
      if ((v13 - v14) >= 3)
      {
        result = v3[1];
      }

      else
      {
        if (v13)
        {
          v15 = 2 * v13;
        }

        else
        {
          v15 = 0x2000;
        }

        v16 = v14 + 3;
        while (v15 < v16)
        {
          v8 = v15 <= 0;
          v15 *= 2;
          if (v8)
          {
            v15 = v16;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v15, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_101;
        }

        v3[1] = result;
        v3[2] = v15;
        v14 = *v3;
      }

      v33 = bswap32(a2) >> 16;
      v34 = &result[v14];
      v35 = -47;
      goto LABEL_97;
    }

    v3 = *a1;
    v25 = (*a1)[2];
    v26 = **a1;
    if ((v25 - v26) >= 2)
    {
      result = v3[1];
    }

    else
    {
      if (v25)
      {
        v27 = 2 * v25;
      }

      else
      {
        v27 = 0x2000;
      }

      v28 = v26 + 2;
      while (v27 < v28)
      {
        v8 = v27 <= 0;
        v27 *= 2;
        if (v8)
        {
          v27 = v28;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v27, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_101;
      }

      v3[1] = result;
      v3[2] = v27;
      v26 = *v3;
    }

    v36 = &result[v26];
    v37 = -48;
    goto LABEL_83;
  }

  v3 = *a1;
  v4 = (*a1)[2];
  v5 = **a1;
  if ((v4 - v5) >= 5)
  {
    result = v3[1];
    goto LABEL_50;
  }

  if (v4)
  {
    v6 = 2 * v4;
  }

  else
  {
    v6 = 0x2000;
  }

  v7 = v5 + 5;
  while (v6 < v7)
  {
    v8 = v6 <= 0;
    v6 *= 2;
    if (v8)
    {
      v6 = v7;
      break;
    }
  }

  result = malloc_type_realloc(v3[1], v6, 0xFC6EF249uLL);
  if (!result)
  {
LABEL_101:
    exception = __cxa_allocate_exception(8uLL);
    v43 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v43, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v3[1] = result;
  v3[2] = v6;
  v5 = *v3;
LABEL_50:
  v21 = bswap32(a2);
  v22 = &result[v5];
  v23 = -46;
LABEL_51:
  *v22 = v23;
  *(v22 + 1) = v21;
  v24 = 5;
LABEL_98:
  *v3 += v24;
  return result;
}

_BYTE *sub_23F2FD25C(uint64_t **a1, unsigned int a2)
{
  if (a2 > 0xFF)
  {
    if (!HIWORD(a2))
    {
      v3 = *a1;
      v9 = (*a1)[2];
      v10 = **a1;
      if ((v9 - v10) >= 3)
      {
        result = v3[1];
      }

      else
      {
        if (v9)
        {
          v11 = 2 * v9;
        }

        else
        {
          v11 = 0x2000;
        }

        v12 = v10 + 3;
        while (v11 < v12)
        {
          v7 = v11 <= 0;
          v11 *= 2;
          if (v7)
          {
            v11 = v12;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v11, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_56;
        }

        v3[1] = result;
        v3[2] = v11;
        v10 = *v3;
      }

      v20 = &result[v10];
      *v20 = -51;
      *(v20 + 1) = bswap32(a2) >> 16;
      v19 = 3;
      goto LABEL_55;
    }

    v3 = *a1;
    v15 = (*a1)[2];
    v16 = **a1;
    if ((v15 - v16) >= 5)
    {
      result = v3[1];
    }

    else
    {
      if (v15)
      {
        v17 = 2 * v15;
      }

      else
      {
        v17 = 0x2000;
      }

      v18 = v16 + 5;
      while (v17 < v18)
      {
        v7 = v17 <= 0;
        v17 *= 2;
        if (v7)
        {
          v17 = v18;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v17, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_56;
      }

      v3[1] = result;
      v3[2] = v17;
      v16 = *v3;
    }

    v22 = &result[v16];
    *v22 = -50;
    *(v22 + 1) = bswap32(a2);
    v19 = 5;
    goto LABEL_55;
  }

  v3 = *a1;
  v4 = (*a1)[2];
  v5 = **a1;
  if (a2 > 0x7F)
  {
    if ((v4 - v5) >= 2)
    {
      result = v3[1];
    }

    else
    {
      if (v4)
      {
        v13 = 2 * v4;
      }

      else
      {
        v13 = 0x2000;
      }

      v14 = v5 + 2;
      while (v13 < v14)
      {
        v7 = v13 <= 0;
        v13 *= 2;
        if (v7)
        {
          v13 = v14;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v13, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_56;
      }

      v3[1] = result;
      v3[2] = v13;
      v5 = *v3;
    }

    v21 = &result[v5];
    *v21 = -52;
    v21[1] = a2;
    v19 = 2;
    goto LABEL_55;
  }

  if (v4 != v5)
  {
    result = v3[1];
    goto LABEL_48;
  }

  if (v4)
  {
    v6 = 2 * v4;
  }

  else
  {
    v6 = 0x2000;
  }

  while (v6 < v4 + 1)
  {
    v7 = v6 <= 0;
    v6 *= 2;
    if (v7)
    {
      v6 = v4 + 1;
      break;
    }
  }

  result = malloc_type_realloc(v3[1], v6, 0xFC6EF249uLL);
  if (!result)
  {
LABEL_56:
    exception = __cxa_allocate_exception(8uLL);
    v24 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v24, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v3[1] = result;
  v3[2] = v6;
  v5 = *v3;
LABEL_48:
  result[v5] = a2;
  v19 = 1;
LABEL_55:
  *v3 += v19;
  return result;
}

uint64_t *sub_23F2FD4DC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  std::ostream::write();
  return a2;
}

_BYTE *sub_23F2FD5D0(uint64_t **a1, unint64_t a2)
{
  if (a2 <= -33)
  {
    if (a2 <= 0xFFFFFFFFFFFF7FFFLL)
    {
      if (a2 <= 0xFFFFFFFF7FFFFFFFLL)
      {
        v3 = *a1;
        v4 = (*a1)[2];
        v5 = **a1;
        if ((v4 - v5) >= 9)
        {
          result = v3[1];
          goto LABEL_88;
        }

        if (v4)
        {
          v6 = 2 * v4;
        }

        else
        {
          v6 = 0x2000;
        }

        v7 = v5 + 9;
        while (v6 < v7)
        {
          v8 = v6 <= 0;
          v6 *= 2;
          if (v8)
          {
            v6 = v7;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v6, 0xFC6EF249uLL);
        if (result)
        {
          v3[1] = result;
          v3[2] = v6;
          v5 = *v3;
LABEL_88:
          v34 = bswap64(a2);
          v35 = &result[v5];
          v36 = -45;
LABEL_128:
          *v35 = v36;
          *(v35 + 1) = v34;
          v25 = 9;
          goto LABEL_129;
        }

LABEL_130:
        exception = __cxa_allocate_exception(8uLL);
        v54 = std::bad_alloc::bad_alloc(exception);
        __cxa_throw(v54, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
      }

      v3 = *a1;
      v21 = (*a1)[2];
      v22 = **a1;
      if ((v21 - v22) >= 5)
      {
        result = v3[1];
      }

      else
      {
        if (v21)
        {
          v23 = 2 * v21;
        }

        else
        {
          v23 = 0x2000;
        }

        v24 = v22 + 5;
        while (v23 < v24)
        {
          v8 = v23 <= 0;
          v23 *= 2;
          if (v8)
          {
            v23 = v24;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v23, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_130;
        }

        v3[1] = result;
        v3[2] = v23;
        v22 = *v3;
      }

      v44 = bswap32(a2);
      v45 = &result[v22];
      v46 = -46;
LABEL_122:
      *v45 = v46;
      *(v45 + 1) = v44;
      v25 = 5;
      goto LABEL_129;
    }

    if (a2 <= 0xFFFFFFFFFFFFFF7FLL)
    {
      v3 = *a1;
      v13 = (*a1)[2];
      v14 = **a1;
      if ((v13 - v14) >= 3)
      {
        result = v3[1];
      }

      else
      {
        if (v13)
        {
          v15 = 2 * v13;
        }

        else
        {
          v15 = 0x2000;
        }

        v16 = v14 + 3;
        while (v15 < v16)
        {
          v8 = v15 <= 0;
          v15 *= 2;
          if (v8)
          {
            v15 = v16;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v15, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_130;
        }

        v3[1] = result;
        v3[2] = v15;
        v14 = *v3;
      }

      v37 = bswap32(a2) >> 16;
      v38 = &result[v14];
      v39 = -47;
LABEL_125:
      *v38 = v39;
      *(v38 + 1) = v37;
      v25 = 3;
      goto LABEL_129;
    }

    v3 = *a1;
    v26 = (*a1)[2];
    v27 = **a1;
    if ((v26 - v27) >= 2)
    {
      result = v3[1];
    }

    else
    {
      if (v26)
      {
        v28 = 2 * v26;
      }

      else
      {
        v28 = 0x2000;
      }

      v29 = v27 + 2;
      while (v28 < v29)
      {
        v8 = v28 <= 0;
        v28 *= 2;
        if (v8)
        {
          v28 = v29;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v28, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_130;
      }

      v3[1] = result;
      v3[2] = v28;
      v27 = *v3;
    }

    v47 = &result[v27];
    v48 = -48;
LABEL_119:
    *v47 = v48;
    v47[1] = a2;
    v25 = 2;
    goto LABEL_129;
  }

  if (a2 > 127)
  {
    if (a2 >> 16)
    {
      if (HIDWORD(a2))
      {
        v3 = *a1;
        v49 = (*a1)[2];
        v50 = **a1;
        if ((v49 - v50) >= 9)
        {
          result = v3[1];
        }

        else
        {
          if (v49)
          {
            v51 = 2 * v49;
          }

          else
          {
            v51 = 0x2000;
          }

          v52 = v50 + 9;
          while (v51 < v52)
          {
            v8 = v51 <= 0;
            v51 *= 2;
            if (v8)
            {
              v51 = v52;
              break;
            }
          }

          result = malloc_type_realloc(v3[1], v51, 0xFC6EF249uLL);
          if (!result)
          {
            goto LABEL_130;
          }

          v3[1] = result;
          v3[2] = v51;
          v50 = *v3;
        }

        v34 = bswap64(a2);
        v35 = &result[v50];
        v36 = -49;
        goto LABEL_128;
      }

      v3 = *a1;
      v30 = (*a1)[2];
      v31 = **a1;
      if ((v30 - v31) >= 5)
      {
        result = v3[1];
      }

      else
      {
        if (v30)
        {
          v32 = 2 * v30;
        }

        else
        {
          v32 = 0x2000;
        }

        v33 = v31 + 5;
        while (v32 < v33)
        {
          v8 = v32 <= 0;
          v32 *= 2;
          if (v8)
          {
            v32 = v33;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v32, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_130;
        }

        v3[1] = result;
        v3[2] = v32;
        v31 = *v3;
      }

      v44 = bswap32(a2);
      v45 = &result[v31];
      v46 = -50;
      goto LABEL_122;
    }

    if (a2 > 0xFF)
    {
      v3 = *a1;
      v40 = (*a1)[2];
      v41 = **a1;
      if ((v40 - v41) >= 3)
      {
        result = v3[1];
      }

      else
      {
        if (v40)
        {
          v42 = 2 * v40;
        }

        else
        {
          v42 = 0x2000;
        }

        v43 = v41 + 3;
        while (v42 < v43)
        {
          v8 = v42 <= 0;
          v42 *= 2;
          if (v8)
          {
            v42 = v43;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v42, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_130;
        }

        v3[1] = result;
        v3[2] = v42;
        v41 = *v3;
      }

      v37 = bswap32(a2) >> 16;
      v38 = &result[v41];
      v39 = -51;
      goto LABEL_125;
    }

    v3 = *a1;
    v17 = (*a1)[2];
    v18 = **a1;
    if ((v17 - v18) >= 2)
    {
      result = v3[1];
    }

    else
    {
      if (v17)
      {
        v19 = 2 * v17;
      }

      else
      {
        v19 = 0x2000;
      }

      v20 = v18 + 2;
      while (v19 < v20)
      {
        v8 = v19 <= 0;
        v19 *= 2;
        if (v8)
        {
          v19 = v20;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v19, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_130;
      }

      v3[1] = result;
      v3[2] = v19;
      v18 = *v3;
    }

    v47 = &result[v18];
    v48 = -52;
    goto LABEL_119;
  }

  v3 = *a1;
  v10 = (*a1)[2];
  v11 = **a1;
  if (v10 == v11)
  {
    if (v10)
    {
      v12 = 2 * v10;
    }

    else
    {
      v12 = 0x2000;
    }

    while (v12 < v10 + 1)
    {
      v8 = v12 <= 0;
      v12 *= 2;
      if (v8)
      {
        v12 = v10 + 1;
        break;
      }
    }

    result = malloc_type_realloc(v3[1], v12, 0xFC6EF249uLL);
    if (!result)
    {
      goto LABEL_130;
    }

    v3[1] = result;
    v3[2] = v12;
    v11 = *v3;
  }

  else
  {
    result = v3[1];
  }

  result[v11] = a2;
  v25 = 1;
LABEL_129:
  *v3 += v25;
  return result;
}

uint64_t sub_23F2FDB18(uint64_t *a1, unint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2 <= -33)
  {
    if (a2 <= 0xFFFFFFFFFFFF7FFFLL)
    {
      if (a2 <= 0xFFFFFFFF7FFFFFFFLL)
      {
        goto LABEL_17;
      }

LABEL_15:
      v4 = *a1;
      goto LABEL_18;
    }

    if (a2 <= 0xFFFFFFFFFFFFFF7FLL)
    {
      goto LABEL_16;
    }

LABEL_13:
    v3 = *a1;
    goto LABEL_18;
  }

  if (a2 > 127)
  {
    if (a2 >> 16)
    {
      if (HIDWORD(a2))
      {
LABEL_17:
        v6 = *a1;
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (a2 > 0xFF)
    {
LABEL_16:
      v5 = *a1;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v2 = *a1;
LABEL_18:
  result = std::ostream::write();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_23F2FDC5C(uint64_t **a1, unint64_t a2)
{
  if (a2 > 0xFF)
  {
    if (!(a2 >> 16))
    {
      v3 = *a1;
      v9 = (*a1)[2];
      v10 = **a1;
      if ((v9 - v10) >= 3)
      {
        result = v3[1];
      }

      else
      {
        if (v9)
        {
          v11 = 2 * v9;
        }

        else
        {
          v11 = 0x2000;
        }

        v12 = v10 + 3;
        while (v11 < v12)
        {
          v7 = v11 <= 0;
          v11 *= 2;
          if (v7)
          {
            v11 = v12;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v11, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_70;
        }

        v3[1] = result;
        v3[2] = v11;
        v10 = *v3;
      }

      v20 = &result[v10];
      *v20 = -51;
      *(v20 + 1) = bswap32(a2) >> 16;
      v19 = 3;
      goto LABEL_69;
    }

    if (!HIDWORD(a2))
    {
      v3 = *a1;
      v15 = (*a1)[2];
      v16 = **a1;
      if ((v15 - v16) >= 5)
      {
        result = v3[1];
      }

      else
      {
        if (v15)
        {
          v17 = 2 * v15;
        }

        else
        {
          v17 = 0x2000;
        }

        v18 = v16 + 5;
        while (v17 < v18)
        {
          v7 = v17 <= 0;
          v17 *= 2;
          if (v7)
          {
            v17 = v18;
            break;
          }
        }

        result = malloc_type_realloc(v3[1], v17, 0xFC6EF249uLL);
        if (!result)
        {
          goto LABEL_70;
        }

        v3[1] = result;
        v3[2] = v17;
        v16 = *v3;
      }

      v26 = &result[v16];
      *v26 = -50;
      *(v26 + 1) = bswap32(a2);
      v19 = 5;
      goto LABEL_69;
    }

    v3 = *a1;
    v22 = (*a1)[2];
    v23 = **a1;
    if ((v22 - v23) >= 9)
    {
      result = v3[1];
    }

    else
    {
      if (v22)
      {
        v24 = 2 * v22;
      }

      else
      {
        v24 = 0x2000;
      }

      v25 = v23 + 9;
      while (v24 < v25)
      {
        v7 = v24 <= 0;
        v24 *= 2;
        if (v7)
        {
          v24 = v25;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v24, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_70;
      }

      v3[1] = result;
      v3[2] = v24;
      v23 = *v3;
    }

    v27 = &result[v23];
    *v27 = -49;
    *(v27 + 1) = bswap64(a2);
    v19 = 9;
    goto LABEL_69;
  }

  v3 = *a1;
  v4 = (*a1)[2];
  v5 = **a1;
  if (a2 > 0x7F)
  {
    if ((v4 - v5) >= 2)
    {
      result = v3[1];
    }

    else
    {
      if (v4)
      {
        v13 = 2 * v4;
      }

      else
      {
        v13 = 0x2000;
      }

      v14 = v5 + 2;
      while (v13 < v14)
      {
        v7 = v13 <= 0;
        v13 *= 2;
        if (v7)
        {
          v13 = v14;
          break;
        }
      }

      result = malloc_type_realloc(v3[1], v13, 0xFC6EF249uLL);
      if (!result)
      {
        goto LABEL_70;
      }

      v3[1] = result;
      v3[2] = v13;
      v5 = *v3;
    }

    v21 = &result[v5];
    *v21 = -52;
    v21[1] = a2;
    v19 = 2;
    goto LABEL_69;
  }

  if (v4 != v5)
  {
    result = v3[1];
    goto LABEL_49;
  }

  if (v4)
  {
    v6 = 2 * v4;
  }

  else
  {
    v6 = 0x2000;
  }

  while (v6 < v4 + 1)
  {
    v7 = v6 <= 0;
    v6 *= 2;
    if (v7)
    {
      v6 = v4 + 1;
      break;
    }
  }

  result = malloc_type_realloc(v3[1], v6, 0xFC6EF249uLL);
  if (!result)
  {
LABEL_70:
    exception = __cxa_allocate_exception(8uLL);
    v29 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v29, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v3[1] = result;
  v3[2] = v6;
  v5 = *v3;
LABEL_49:
  result[v5] = a2;
  v19 = 1;
LABEL_69:
  *v3 += v19;
  return result;
}

uint64_t sub_23F2FDF70(uint64_t *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  result = std::ostream::write();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t **sub_23F2FE06C(uint64_t a1, uint64_t **a2, unsigned int *a3)
{
  v4 = *a3;
  v5 = *a2;
  v6 = (*a2)[2];
  v7 = **a2;
  if ((v6 - v7) >= 5)
  {
    v11 = v5[1];
  }

  else
  {
    if (v6)
    {
      v8 = 2 * v6;
    }

    else
    {
      v8 = 0x2000;
    }

    v9 = v7 + 5;
    while (v8 < v9)
    {
      v10 = v8 <= 0;
      v8 *= 2;
      if (v10)
      {
        v8 = v9;
        break;
      }
    }

    v11 = malloc_type_realloc(v5[1], v8, 0xFC6EF249uLL);
    if (!v11)
    {
      exception = __cxa_allocate_exception(8uLL);
      v15 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v15, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }

    v5[1] = v11;
    v5[2] = v8;
    v7 = *v5;
  }

  v12 = &v11[v7];
  *v12 = -54;
  *(v12 + 1) = bswap32(v4);
  *v5 += 5;
  return a2;
}

uint64_t **sub_23F2FE154(uint64_t a1, uint64_t **a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = *a2;
  v6 = (*a2)[2];
  v7 = **a2;
  if ((v6 - v7) >= 9)
  {
    v11 = v5[1];
  }

  else
  {
    if (v6)
    {
      v8 = 2 * v6;
    }

    else
    {
      v8 = 0x2000;
    }

    v9 = v7 + 9;
    while (v8 < v9)
    {
      v10 = v8 <= 0;
      v8 *= 2;
      if (v10)
      {
        v8 = v9;
        break;
      }
    }

    v11 = malloc_type_realloc(v5[1], v8, 0xFC6EF249uLL);
    if (!v11)
    {
      exception = __cxa_allocate_exception(8uLL);
      v15 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v15, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }

    v5[1] = v11;
    v5[2] = v8;
    v7 = *v5;
  }

  v12 = &v11[v7];
  *v12 = -53;
  *(v12 + 1) = bswap64(v4);
  *v5 += 9;
  return a2;
}

uint64_t **sub_23F2FE23C(uint64_t **result, _BYTE *a2)
{
  v2 = *result;
  v3 = (*result)[2];
  v4 = **result;
  if (*a2 != 1)
  {
    if (v3 == v4)
    {
      if (v3)
      {
        v9 = 2 * v3;
      }

      else
      {
        v9 = 0x2000;
      }

      v10 = v3 + 1;
      while (v9 < v10)
      {
        v7 = v9 <= 0;
        v9 *= 2;
        if (v7)
        {
          v11 = result;
          v9 = v10;
          goto LABEL_26;
        }
      }

      v11 = result;
LABEL_26:
      v15 = malloc_type_realloc(v2[1], v9, 0xFC6EF249uLL);
      if (!v15)
      {
        goto LABEL_30;
      }

      v12 = v15;
      v2[1] = v15;
      v2[2] = v9;
      v4 = *v2;
      result = v11;
    }

    else
    {
      v12 = v2[1];
    }

    v13 = -62;
    goto LABEL_29;
  }

  if (v3 == v4)
  {
    if (v3)
    {
      v5 = 2 * v3;
    }

    else
    {
      v5 = 0x2000;
    }

    v6 = v3 + 1;
    while (v5 < v6)
    {
      v7 = v5 <= 0;
      v5 *= 2;
      if (v7)
      {
        v8 = result;
        v5 = v6;
        goto LABEL_23;
      }
    }

    v8 = result;
LABEL_23:
    v14 = malloc_type_realloc(v2[1], v5, 0xFC6EF249uLL);
    if (v14)
    {
      v12 = v14;
      v2[1] = v14;
      v2[2] = v5;
      v4 = *v2;
      result = v8;
      v13 = -61;
      goto LABEL_29;
    }

LABEL_30:
    exception = __cxa_allocate_exception(8uLL);
    v17 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v17, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v12 = v2[1];
  v13 = -61;
LABEL_29:
  v12[v4] = v13;
  ++*v2;
  return result;
}

uint64_t **sub_23F2FE3A8(uint64_t **a1, const void **a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = *(a2 + 23);
  }

  else
  {
    v2 = a2[1];
  }

  if (HIDWORD(v2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23F2FE74C(exception);
    __cxa_throw(exception, &unk_28518DD10, std::runtime_error::~runtime_error);
  }

  if (v2 > 0x1F)
  {
    if (v2 > 0xFF)
    {
      if (v2 >> 16)
      {
        v5 = *a1;
        v23 = (*a1)[2];
        v24 = **a1;
        if ((v23 - v24) >= 5)
        {
          v27 = v5[1];
        }

        else
        {
          if (v23)
          {
            v25 = 2 * v23;
          }

          else
          {
            v25 = 0x2000;
          }

          v26 = v24 + 5;
          while (v25 < v26)
          {
            v9 = v25 <= 0;
            v25 *= 2;
            if (v9)
            {
              v25 = v26;
              break;
            }
          }

          v27 = malloc_type_realloc(v5[1], v25, 0xFC6EF249uLL);
          if (!v27)
          {
            goto LABEL_76;
          }

          v5[1] = v27;
          v5[2] = v25;
          v24 = *v5;
        }

        v29 = &v27[v24];
        *v29 = -37;
        *(v29 + 1) = bswap32(v2);
        v16 = 5;
      }

      else
      {
        v5 = *a1;
        v17 = (*a1)[2];
        v18 = **a1;
        if ((v17 - v18) >= 3)
        {
          v21 = v5[1];
        }

        else
        {
          if (v17)
          {
            v19 = 2 * v17;
          }

          else
          {
            v19 = 0x2000;
          }

          v20 = v18 + 3;
          while (v19 < v20)
          {
            v9 = v19 <= 0;
            v19 *= 2;
            if (v9)
            {
              v19 = v20;
              break;
            }
          }

          v21 = malloc_type_realloc(v5[1], v19, 0xFC6EF249uLL);
          if (!v21)
          {
            goto LABEL_76;
          }

          v5[1] = v21;
          v5[2] = v19;
          v18 = *v5;
        }

        v28 = &v21[v18];
        *v28 = -38;
        *(v28 + 1) = bswap32(v2) >> 16;
        v16 = 3;
      }
    }

    else
    {
      v5 = *a1;
      v11 = (*a1)[2];
      v12 = **a1;
      if ((v11 - v12) >= 2)
      {
        v15 = v5[1];
      }

      else
      {
        if (v11)
        {
          v13 = 2 * v11;
        }

        else
        {
          v13 = 0x2000;
        }

        v14 = v12 + 2;
        while (v13 < v14)
        {
          v9 = v13 <= 0;
          v13 *= 2;
          if (v9)
          {
            v13 = v14;
            break;
          }
        }

        v15 = malloc_type_realloc(v5[1], v13, 0xFC6EF249uLL);
        if (!v15)
        {
          goto LABEL_76;
        }

        v5[1] = v15;
        v5[2] = v13;
        v12 = *v5;
      }

      v22 = &v15[v12];
      *v22 = -39;
      v22[1] = v2;
      v16 = 2;
    }
  }

  else
  {
    v5 = *a1;
    v6 = (*a1)[2];
    v7 = **a1;
    if (v6 == v7)
    {
      if (v6)
      {
        v8 = 2 * v6;
      }

      else
      {
        v8 = 0x2000;
      }

      while (v8 < v6 + 1)
      {
        v9 = v8 <= 0;
        v8 *= 2;
        if (v9)
        {
          v8 = v6 + 1;
          break;
        }
      }

      v10 = malloc_type_realloc(v5[1], v8, 0xFC6EF249uLL);
      if (!v10)
      {
        goto LABEL_76;
      }

      v5[1] = v10;
      v5[2] = v8;
      v7 = *v5;
    }

    else
    {
      v10 = v5[1];
    }

    v10[v7] = v2 | 0xA0;
    v16 = 1;
  }

  *v5 += v16;
  v30 = *(a2 + 23);
  v31 = *a2;
  v32 = *a1;
  v33 = (*a1)[2];
  v34 = **a1;
  if (v33 - v34 < v2)
  {
    if (v33)
    {
      v35 = 2 * v33;
    }

    else
    {
      v35 = 0x2000;
    }

    v36 = v34 + v2;
    while (v35 < v36)
    {
      v9 = v35 <= 0;
      v35 *= 2;
      if (v9)
      {
        v35 = v36;
        break;
      }
    }

    v37 = malloc_type_realloc(v32[1], v35, 0xFC6EF249uLL);
    if (v37)
    {
      v32[1] = v37;
      v32[2] = v35;
      v34 = *v32;
      goto LABEL_71;
    }

LABEL_76:
    v41 = __cxa_allocate_exception(8uLL);
    v42 = std::bad_alloc::bad_alloc(v41);
    __cxa_throw(v42, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v37 = v32[1];
LABEL_71:
  if (v30 >= 0)
  {
    v38 = a2;
  }

  else
  {
    v38 = v31;
  }

  memcpy(&v37[v34], v38, v2);
  *v32 += v2;
  return a1;
}

std::runtime_error *sub_23F2FE74C(std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "container size overflow");
  result->__vftable = &unk_28518DD38;
  return result;
}

void sub_23F2FE78C(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t *sub_23F2FE7C4(uint64_t *a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = *(a2 + 23);
  }

  else
  {
    v2 = a2[1];
  }

  if (HIDWORD(v2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23F2FE74C(exception);
    __cxa_throw(exception, &unk_28518DD10, std::runtime_error::~runtime_error);
  }

  v5 = *a1;
  std::ostream::write();
  if (*(a2 + 23) < 0)
  {
    v6 = *a2;
  }

  v7 = *a1;
  std::ostream::write();
  return a1;
}

uint64_t sub_23F2FE90C(uint64_t a1)
{
  if (*a1 == 3)
  {
    v1 = *(a1 + 8);
    if (v1 <= -129)
    {
      goto LABEL_4;
    }
  }

  else if (*a1 != 2 || (v1 = *(a1 + 8), v1 >= 0x80))
  {
LABEL_4:
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v3 = sub_23F2F8844(exception);
    __cxa_throw(v3, &unk_28518D9B0, std::exception::~exception);
  }

  return v1;
}

uint64_t sub_23F2FE97C(uint64_t a1)
{
  if (*a1 == 3)
  {
    v1 = *(a1 + 8);
    if (v1 <= -32769)
    {
      goto LABEL_4;
    }
  }

  else if (*a1 != 2 || (v1 = *(a1 + 8), v1 >= 0x8000))
  {
LABEL_4:
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v3 = sub_23F2F8844(exception);
    __cxa_throw(v3, &unk_28518D9B0, std::exception::~exception);
  }

  return v1;
}

int64_t sub_23F2FE9F0(uint64_t a1)
{
  if (*a1 == 3)
  {
    result = *(a1 + 8);
    if (result <= 0xFFFFFFFF7FFFFFFFLL)
    {
      goto LABEL_4;
    }
  }

  else if (*a1 != 2 || (result = *(a1 + 8), result >> 31))
  {
LABEL_4:
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v3 = sub_23F2F8844(exception);
    __cxa_throw(v3, &unk_28518D9B0, std::exception::~exception);
  }

  return result;
}

void **sub_23F2FEA60(void **__dst, const void *a2, size_t __len)
{
  LODWORD(v5) = *(__dst + 23);
  if ((v5 & 0x80000000) != 0)
  {
    v7 = __dst[2];
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__len > v8)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v7 & 0x7FFFFFFFFFFFFFFFLL) >= __len - v8)
      {
        v9 = *__dst;
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          operator new();
        }

LABEL_8:
        operator new();
      }

LABEL_17:
      sub_23EF2F8F4();
    }

    v5 = HIBYTE(v7);
    v6 = *__dst;
  }

  else
  {
    v6 = __dst;
    if (__len > 0x16)
    {
      if (__len - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  if (__len)
  {
    memmove(v6, a2, __len);
    LOBYTE(v5) = *(__dst + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    __dst[1] = __len;
  }

  else
  {
    *(__dst + 23) = __len & 0x7F;
  }

  *(v6 + __len) = 0;
  return __dst;
}

void sub_23F2FEBFC(std::string *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v16 = a3;
  v17 = a2;
  sub_23F2FED64("Failed to load sample ", a1, ". Minimum version required is ", &v17, " but current sample version is ", &v16, ".");
  if (SHIBYTE(v6) < 0)
  {
    sub_23EF34EA4(__p, v5[0], v5[1]);
  }

  else
  {
    *__p = *v5;
    v8 = v6;
  }

  v9 = 1;
  LOBYTE(v10) = 0;
  v14 = 0;
  v15 = 1;
  sub_23F06C908(a4, 5u, __p);
  if (v15 != 1)
  {
    goto LABEL_11;
  }

  if (v14 == 1)
  {
    if ((v13 & 0x80000000) == 0)
    {
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      operator delete(v10);
      if (v9 != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    operator delete(v12);
    if (v11 < 0)
    {
      goto LABEL_14;
    }
  }

LABEL_8:
  if (v9 != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_11:
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_23F2FED38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2FED64(std::string *a1, std::string *a2, std::string *a3, unsigned int *a4, std::string *a5, unsigned int *a6, std::string *a7)
{
  v15 = 0;
  v18 = v14;
  v19 = a1;
  v20 = v14;
  v21 = a1;
  v22 = a1;
  v16.__r_.__value_.__r.__words[0] = &v18;
  sub_23F1CD63C(&v16);
  v18 = v14;
  v19 = a2;
  v20 = v14;
  v21 = a2;
  v22 = a2;
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v16.__r_.__value_.__r.__words[0] = &v18;
  (off_28518DD68[v15])(&v16, v14);
  v18 = v14;
  v19 = a3;
  v20 = v14;
  v21 = a3;
  v22 = a3;
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v16.__r_.__value_.__r.__words[0] = &v18;
  (*(&off_28518DD80 + v15))(&v16, v14);
  std::to_string(&v16, *a4);
  v18 = v14;
  v19 = &v16;
  v20 = v14;
  v21 = &v16;
  v22 = &v16;
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v18;
  (off_28518DD98[v15])(&v17, v14);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v18 = v14;
  v19 = a5;
  v20 = v14;
  v21 = a5;
  v22 = a5;
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v16.__r_.__value_.__r.__words[0] = &v18;
  (off_28518DDB0[v15])(&v16, v14);
  std::to_string(&v16, *a6);
  v18 = v14;
  v19 = &v16;
  v20 = v14;
  v21 = &v16;
  v22 = &v16;
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v18;
  (off_28518DD98[v15])(&v17, v14);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v18 = v14;
  v19 = a7;
  v20 = v14;
  v21 = a7;
  v22 = a7;
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v16.__r_.__value_.__r.__words[0] = &v18;
  (*(&off_28518DDC8 + v15))(&v16, v14);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v18 = &v16;
  result = (off_28518DDE0[v15])(&v18, v14);
  if (v15 != -1)
  {
    return (off_28518DD50[v15])(&v18, v14);
  }

  return result;
}

void sub_23F2FF110(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_28518DD50[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23EF42150(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_23F2FF2D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2FF32C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23EF3AE74();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_23F2FF56C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void sub_23F2FF588(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(a1 + 112) != 1)
  {
    v35[0] = (*(**(a1 + 8) + 16))(*(a1 + 8));
    LODWORD(v34.__r_.__value_.__l.__data_) = *a1;
    std::error_condition::message(&v22, a1);
    sub_23F3010A4(a2, v35, &v34, &v22);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = v22.__r_.__value_.__r.__words[0];
LABEL_41:
      operator delete(v9);
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  v34.__r_.__value_.__r.__words[0] = (*(**(a1 + 8) + 16))(*(a1 + 8));
  LODWORD(__dst) = *a1;
  std::error_condition::message(&v22, a1);
  sub_23F3010A4(v20, &v34.__r_.__value_.__l.__data_, &__dst, &v22);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v4 = v21;
  v5 = v20;
  if ((v21 & 0x80u) != 0)
  {
    v5 = v20[0];
    v4 = v20[1];
  }

  v35[0] = v5;
  v35[1] = v4;
  sub_23EF303E4(&v22);
  if (*(a1 + 40) == 1)
  {
    sub_23EF2F9B0(&v22.__r_.__value_.__r.__words[2], "detail", 6);
    sub_23EF2F9B0(&v22.__r_.__value_.__r.__words[2], ": ", 2);
    v6 = *(a1 + 39);
    if (v6 >= 0)
    {
      v7 = a1 + 16;
    }

    else
    {
      v7 = *(a1 + 16);
    }

    if (v6 >= 0)
    {
      v8 = *(a1 + 39);
    }

    else
    {
      v8 = *(a1 + 24);
    }

    sub_23EF2F9B0(&v22.__r_.__value_.__r.__words[2], v7, v8);
    if (*(a1 + 104))
    {
      sub_23EF2F9B0(&v22.__r_.__value_.__r.__words[2], ", ", 2);
      goto LABEL_18;
    }
  }

  else if (*(a1 + 104))
  {
LABEL_18:
    sub_23EF2F9B0(&v22.__r_.__value_.__r.__words[2], "location", 8);
    sub_23EF2F9B0(&v22.__r_.__value_.__r.__words[2], ": ", 2);
    operator new();
  }

  if ((v31 & 0x10) != 0)
  {
    v12 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v12 = v27;
    }

    v11 = &v26;
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v10 = 0;
      v19 = 0;
      goto LABEL_32;
    }

    v11 = v25;
    v12 = v25[2];
  }

  v13 = *v11;
  v10 = v12 - *v11;
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  v19 = v12 - *v11;
  if (v10)
  {
    memmove(v18, v13, v10);
  }

LABEL_32:
  *(v18 + v10) = 0;
  v22.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *(v22.__r_.__value_.__r.__words + *(v22.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v22.__r_.__value_.__r.__words[2] = v14;
  v23 = MEMORY[0x277D82878] + 16;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  v23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v24);
  std::iostream::~basic_iostream();
  MEMORY[0x245CACBF0](&v32);
  v15 = v19;
  v16 = v18;
  if ((v19 & 0x80u) != 0)
  {
    v16 = v18[0];
    v15 = v18[1];
  }

  v35[2] = v16;
  v35[3] = v15;
  sub_23EF45AA0(v35, &v36, "; ", 2uLL, a2);
  if (v19 < 0)
  {
    operator delete(v18[0]);
    if (v21 < 0)
    {
LABEL_40:
      v9 = v20[0];
      goto LABEL_41;
    }
  }

  else if (v21 < 0)
  {
    goto LABEL_40;
  }

LABEL_42:
  v17 = *MEMORY[0x277D85DE8];
}

void sub_23F2FFC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (*(v41 - 137) < 0)
  {
    operator delete(*(v41 - 160));
  }

  sub_23F081740(&a22, MEMORY[0x277D82818]);
  MEMORY[0x245CACBF0](&a41);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23F2FFD38(uint64_t a1, _OWORD *a2)
{
  sub_23F2FF588(a2, &v5);
  std::runtime_error::runtime_error(a1, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_28518DE18;
  *(a1 + 16) = *a2;
  sub_23F300D34(a1 + 32, a2 + 1);
  return a1;
}

void sub_23F2FFDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2FFDF0(uint64_t a1)
{
  if (*(a1 + 128) != 1)
  {
    goto LABEL_10;
  }

  if (*(a1 + 120) != 1)
  {
    goto LABEL_5;
  }

  if ((*(a1 + 119) & 0x80000000) == 0)
  {
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = a1;
    operator delete(*(a1 + 64));
    a1 = v4;
    if (*(v4 + 56) != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v3 = a1;
  operator delete(*(a1 + 96));
  a1 = v3;
  if (*(v3 + 87) < 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (*(a1 + 56) != 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (*(a1 + 55) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 32));
    a1 = v2;
  }

LABEL_10:

  std::runtime_error::~runtime_error(a1);
}

void sub_23F2FFEAC(std::runtime_error *this)
{
  if (LOBYTE(this[8].__vftable) != 1)
  {
    goto LABEL_10;
  }

  if (LOBYTE(this[7].__imp_.__imp_) == 1)
  {
    if ((SHIBYTE(this[7].__vftable) & 0x80000000) == 0)
    {
      if ((SHIBYTE(this[5].__vftable) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      operator delete(this[4].__vftable);
      if (LOBYTE(this[3].__imp_.__imp_) != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    operator delete(this[6].__vftable);
    if (SHIBYTE(this[5].__vftable) < 0)
    {
      goto LABEL_9;
    }
  }

LABEL_5:
  if (LOBYTE(this[3].__imp_.__imp_) != 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[2].__vftable);
  }

LABEL_10:
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x245CACD00);
}

void sub_23F2FFF60(uint64_t a1, uint64_t a2, __int128 *a3, int a4, const std::string::value_type *a5)
{
  v63 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 96) & 1) == 0)
  {
    if (*(a3 + 23) < 0)
    {
      sub_23EF34EA4(&v55, *a3, *(a3 + 1));
    }

    else
    {
      v55 = *a3;
      v56 = *(a3 + 2);
    }

    *a1 = v55;
    *(a1 + 16) = v56;
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
    *(a1 + 88) = 0;
    goto LABEL_51;
  }

  if (*(a2 + 24) == 1)
  {
    v6 = *(a2 + 23);
    if (v6 < 0)
    {
      if (*(a2 + 8))
      {
LABEL_5:
        if (a4)
        {
          if ((v6 & 0x80000000) != 0)
          {
            v7 = *a2;
            v6 = *(a2 + 8);
          }

          else
          {
            v7 = a2;
          }

          v58 = v7;
          v59 = v6;
          v17 = *(a3 + 23);
          if ((v17 & 0x80u) == 0)
          {
            v18 = a3;
          }

          else
          {
            v18 = *a3;
          }

          if ((v17 & 0x80u) != 0)
          {
            v17 = *(a3 + 1);
          }

          v60 = v18;
          v61 = v17;
          v19 = a5[23];
          v20 = a2;
          if ((v19 & 0x8000000000000000) != 0)
          {
            v27 = a5;
            a5 = *a5;
            v19 = *(v27 + 1);
          }

          sub_23EF45AA0(&v58, v62, a5, v19, &__p);
          *v62 = __p.__r_.__value_.__l.__size_;
          v28 = __p.__r_.__value_.__r.__words[0];
          *&v62[7] = *(&__p.__r_.__value_.__r.__words[1] + 7);
          v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          memset(&__p, 0, sizeof(__p));
          sub_23F30039C(&v39, (v20 + 32));
          v30 = *v62;
          *a1 = v28;
          *(a1 + 8) = v30;
          *(a1 + 15) = *&v62[7];
          *(a1 + 23) = v29;
          *(a1 + 24) = 1;
          *(a1 + 32) = 0;
          *(a1 + 88) = 0;
          if (v44 != 1)
          {
LABEL_48:
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              v12 = __p.__r_.__value_.__r.__words[0];
              goto LABEL_50;
            }

            goto LABEL_51;
          }

          v31 = v41;
          *(a1 + 48) = v40;
          *(a1 + 32) = v39;
          v39 = 0uLL;
          *(a1 + 56) = v31;
          *(a1 + 64) = v42;
          *(a1 + 80) = v43;
          v40 = 0;
          v42 = 0uLL;
          v43 = 0;
LABEL_47:
          *(a1 + 88) = 1;
          goto LABEL_48;
        }

        v13 = *(a3 + 23);
        if ((v13 & 0x80u) == 0)
        {
          v14 = a3;
        }

        else
        {
          v14 = *a3;
        }

        if ((v13 & 0x80u) != 0)
        {
          v13 = *(a3 + 1);
        }

        v58 = v14;
        v59 = v13;
        if ((v6 & 0x80000000) != 0)
        {
          v21 = *(a2 + 8);
          v60 = *a2;
          v61 = v21;
          v15 = a5[23];
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v60 = a2;
          v61 = v6;
          v15 = a5[23];
          if ((v15 & 0x8000000000000000) == 0)
          {
LABEL_31:
            v16 = a2;
LABEL_42:
            sub_23EF45AA0(&v58, v62, a5, v15, &__p);
            v57[0] = __p.__r_.__value_.__l.__size_;
            v23 = __p.__r_.__value_.__r.__words[0];
            *(v57 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
            v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            memset(&__p, 0, sizeof(__p));
            sub_23F30039C(&v33, (v16 + 32));
            v25 = v57[0];
            *a1 = v23;
            *(a1 + 8) = v25;
            *(a1 + 15) = *(v57 + 7);
            *(a1 + 23) = v24;
            *(a1 + 24) = 1;
            *(a1 + 32) = 0;
            *(a1 + 88) = 0;
            if (v38 != 1)
            {
              goto LABEL_48;
            }

            v26 = v35;
            *(a1 + 48) = v34;
            *(a1 + 32) = v33;
            v33 = 0uLL;
            *(a1 + 56) = v26;
            *(a1 + 64) = v36;
            *(a1 + 80) = v37;
            v34 = 0;
            v36 = 0uLL;
            v37 = 0;
            goto LABEL_47;
          }
        }

        v16 = a2;
        v22 = a5;
        a5 = *a5;
        v15 = *(v22 + 1);
        goto LABEL_42;
      }
    }

    else if (*(a2 + 23))
    {
      goto LABEL_5;
    }
  }

  if (*(a3 + 23) < 0)
  {
    v8 = a2;
    sub_23EF34EA4(&v52, *a3, *(a3 + 1));
    a2 = v8;
  }

  else
  {
    v52 = *a3;
    v53 = *(a3 + 2);
  }

  v54 = 1;
  sub_23F30039C(&v46, (a2 + 32));
  *a1 = 0;
  *(a1 + 24) = 0;
  v9 = v54;
  if (v54 == 1)
  {
    *a1 = v52;
    *(a1 + 16) = v53;
    v53 = 0;
    v52 = 0uLL;
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
    v10 = a1 + 32;
    *(a1 + 88) = 0;
    if (v51 != 1)
    {
      goto LABEL_18;
    }

LABEL_21:
    v11 = v48;
    *(v10 + 16) = v47;
    *v10 = v46;
    v46 = 0uLL;
    *(a1 + 56) = v11;
    *(a1 + 64) = v49;
    *(a1 + 80) = v50;
    v47 = 0;
    v49 = 0uLL;
    v50 = 0;
    *(a1 + 88) = 1;
    if (!v9)
    {
      goto LABEL_51;
    }

    goto LABEL_22;
  }

  *(a1 + 32) = 0;
  v10 = a1 + 32;
  *(a1 + 88) = 0;
  if (v51 == 1)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (!v9)
  {
    goto LABEL_51;
  }

LABEL_22:
  if (SHIBYTE(v53) < 0)
  {
    v12 = v52;
LABEL_50:
    operator delete(v12);
  }

LABEL_51:
  v32 = *MEMORY[0x277D85DE8];
}

void sub_23F30033C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (a31 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F30039C(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      v4 = a2;
      sub_23EF34EA4(a1, *a2, *(a2 + 1));
      a2 = v4;
    }

    else
    {
      v3 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v3;
    }

    *(a1 + 24) = *(a2 + 3);
    if (*(a2 + 55) < 0)
    {
      sub_23EF34EA4((a1 + 32), *(a2 + 4), *(a2 + 5));
    }

    else
    {
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
    }

    *(a1 + 56) = 1;
  }

  return a1;
}

void sub_23F300444(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    sub_23EF577C4(v1);
    _Unwind_Resume(a1);
  }

  sub_23EF577C4(v1);
  _Unwind_Resume(a1);
}

void sub_23F30047C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E396050, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E396050))
  {
    qword_27E396048 = std::generic_category();
    __cxa_guard_release(&qword_27E396050);
  }

  if (*(a1 + 8) == qword_27E396048)
  {
    v2 = *a1;
    if (*a1 > 33)
    {
      if (v2 == 34)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_23F30085C(exception, a1);
        __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
      }

      if (v2 == 84)
      {
        v4 = __cxa_allocate_exception(0x10uLL);
        sub_23F300950(v4, a1);
        __cxa_throw(v4, off_278C744A0, MEMORY[0x277D82608]);
      }
    }

    else
    {
      if (v2 == 22)
      {
        v6 = __cxa_allocate_exception(0x10uLL);
        sub_23F300674(v6, a1);
        __cxa_throw(v6, off_278C744A8, MEMORY[0x277D82610]);
      }

      if (v2 == 33)
      {
        v3 = __cxa_allocate_exception(0x10uLL);
        sub_23F300768(v3, a1);
        __cxa_throw(v3, off_278C74488, MEMORY[0x277D825E8]);
      }
    }
  }

  v5 = __cxa_allocate_exception(0x88uLL);
  sub_23F2FFD38(v5, a1);
  __cxa_throw(v5, &unk_28518DE30, sub_23F2FFDF0);
}

void sub_23F300674(std::logic_error *this, uint64_t a2)
{
  if (*(a2 + 112))
  {
    v3 = (a2 + 16);
  }

  else
  {
    v3 = &unk_23F3492E0;
  }

  if (*(v3 + 24) == 1)
  {
    sub_23F30130C(&v4, v3);
    std::logic_error::logic_error(this, &v4);
    this->__vftable = (MEMORY[0x277D828F8] + 16);
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::logic_error::logic_error(this, &unk_23F3091D6);
    this->__vftable = (MEMORY[0x277D828F8] + 16);
  }
}

void sub_23F30074C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F300768(std::logic_error *this, uint64_t a2)
{
  if (*(a2 + 112))
  {
    v3 = (a2 + 16);
  }

  else
  {
    v3 = &unk_23F3492E0;
  }

  if (*(v3 + 24) == 1)
  {
    sub_23F30130C(&v4, v3);
    std::logic_error::logic_error(this, &v4);
    this->__vftable = (MEMORY[0x277D828D8] + 16);
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::logic_error::logic_error(this, &unk_23F3091D6);
    this->__vftable = (MEMORY[0x277D828D8] + 16);
  }
}

void sub_23F300840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F30085C(std::logic_error *this, uint64_t a2)
{
  if (*(a2 + 112))
  {
    v3 = (a2 + 16);
  }

  else
  {
    v3 = &unk_23F3492E0;
  }

  if (*(v3 + 24) == 1)
  {
    sub_23F30130C(&v4, v3);
    std::logic_error::logic_error(this, &v4);
    this->__vftable = (MEMORY[0x277D828E8] + 16);
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::logic_error::logic_error(this, &unk_23F3091D6);
    this->__vftable = (MEMORY[0x277D828E8] + 16);
  }
}

void sub_23F300934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F300950(std::runtime_error *this, uint64_t a2)
{
  if (*(a2 + 112))
  {
    v3 = (a2 + 16);
  }

  else
  {
    v3 = &unk_23F3492E0;
  }

  if (*(v3 + 24) == 1)
  {
    sub_23F30130C(&v4, v3);
    std::runtime_error::runtime_error(this, &v4);
    this->__vftable = (MEMORY[0x277D828F0] + 16);
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::runtime_error::runtime_error(this, &unk_23F3091D6);
    this->__vftable = (MEMORY[0x277D828F0] + 16);
  }
}

void sub_23F300A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F300A44(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *(a2 + 1);
  sub_23F300D34(v21, a2 + 1);
  v20 = 0;
  LOBYTE(v19) = 0;
  sub_23F2FFF60(&__p, v21, a1, 0, &v19);
  v12 = v32;
  if (v32 == 1)
  {
    v13 = __p;
    v41[0] = v31;
    *(v41 + 7) = *(&v31 + 7);
    v7 = HIBYTE(v31);
    v31 = 0uLL;
    __p = 0;
    v14 = v38;
    if (v38 != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = v33;
    v40[0] = v34;
    *(v40 + 7) = *(&v34 + 7);
    v9 = HIBYTE(v34);
    v33 = 0;
    v34 = 0uLL;
    v10 = v35;
    v8 = v36;
    v39[0] = v37;
    *(v39 + 7) = *(&v37 + 7);
    v11 = HIBYTE(v37);
    v36 = 0;
    v37 = 0uLL;
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 16) = 0;
    *(a3 + 40) = 0;
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13 = 0;
  v14 = v38;
  if (v38 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = 0;
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
  if (v12)
  {
LABEL_7:
    v16 = v41[0];
    *(a3 + 16) = v13;
    *(a3 + 24) = v16;
    *(a3 + 31) = *(v41 + 7);
    *(a3 + 39) = v7;
    v41[0] = 0;
    *(v41 + 7) = 0;
    *(a3 + 40) = 1;
    v13 = 0;
    v7 = 0;
  }

LABEL_8:
  *(a3 + 48) = 0;
  *(a3 + 104) = 0;
  if (!v14)
  {
    *(a3 + 112) = 1;
    if (!v12 || (v7 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v17 = v40[0];
  *(a3 + 48) = v15;
  *(a3 + 56) = v17;
  *(a3 + 63) = *(v40 + 7);
  *(a3 + 71) = v9;
  v40[0] = 0;
  *(v40 + 7) = 0;
  *(a3 + 72) = v10;
  *(a3 + 80) = v8;
  *(a3 + 88) = v39[0];
  *(a3 + 95) = *(v39 + 7);
  *(a3 + 103) = v11;
  v39[0] = 0;
  *(v39 + 7) = 0;
  *(a3 + 104) = 1;
  *(a3 + 112) = 1;
  if (v12 && v7 < 0)
  {
LABEL_14:
    operator delete(v13);
    if ((v38 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v34) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_32:
    operator delete(v33);
    if (v32 != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  operator delete(v36);
  if (SHIBYTE(v34) < 0)
  {
    goto LABEL_32;
  }

LABEL_17:
  if (v32 != 1)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

LABEL_20:
  if (v20 < 0)
  {
    operator delete(v19);
    if (v29 != 1)
    {
      goto LABEL_30;
    }
  }

  else if (v29 != 1)
  {
    goto LABEL_30;
  }

  if (v28 != 1)
  {
    goto LABEL_27;
  }

  if (v27 < 0)
  {
    operator delete(v26);
    if ((v25 & 0x80000000) == 0)
    {
LABEL_27:
      if (v23 != 1)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }
  }

  else if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(v24);
  if (v23 != 1)
  {
    goto LABEL_30;
  }

LABEL_28:
  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

LABEL_30:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_23F300D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF57834(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_23F300D34(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    if (*(a2 + 24) == 1)
    {
      if (*(a2 + 23) < 0)
      {
        v4 = a2;
        sub_23EF34EA4(a1, *a2, *(a2 + 1));
        a2 = v4;
      }

      else
      {
        v3 = *a2;
        *(a1 + 16) = *(a2 + 2);
        *a1 = v3;
      }

      *(a1 + 24) = 1;
    }

    sub_23F30039C(a1 + 32, a2 + 2);
    *(a1 + 96) = 1;
  }

  return a1;
}

void sub_23F300DD0(_Unwind_Exception *a1)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  sub_23EF57834(v1);
  _Unwind_Resume(a1);
}

void sub_23F300E04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(__p[0]) = 0;
  v12 = 0;
  if (*(a1 + 96) == 1)
  {
    v5 = 0;
    if (*(a1 + 24) == 1)
    {
      *__p = *a1;
      v4 = *(a1 + 16);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v5 = 1;
    }

    LOBYTE(v6[0]) = 0;
    v11 = 0;
    if (*(a1 + 88) == 1)
    {
      v2 = *(a1 + 56);
      v7 = *(a1 + 48);
      *v6 = *(a1 + 32);
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = 0;
      v8 = v2;
      *v9 = *(a1 + 64);
      v10 = *(a1 + 80);
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      v11 = 1;
    }

    v12 = 1;
  }

  sub_23F06C200(0x16u, __p, a2);
  if (v12 == 1)
  {
    if (v11 != 1)
    {
      goto LABEL_11;
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
      if ((SHIBYTE(v7) & 0x80000000) == 0)
      {
LABEL_11:
        if (v5 != 1)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    else if ((SHIBYTE(v7) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    operator delete(v6[0]);
    if (v5 != 1)
    {
      return;
    }

LABEL_12:
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_23F300F54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(__p[0]) = 0;
  v12 = 0;
  if (*(a1 + 96) == 1)
  {
    v5 = 0;
    if (*(a1 + 24) == 1)
    {
      *__p = *a1;
      v4 = *(a1 + 16);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v5 = 1;
    }

    LOBYTE(v6[0]) = 0;
    v11 = 0;
    if (*(a1 + 88) == 1)
    {
      v2 = *(a1 + 56);
      v7 = *(a1 + 48);
      *v6 = *(a1 + 32);
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = 0;
      v8 = v2;
      *v9 = *(a1 + 64);
      v10 = *(a1 + 80);
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      v11 = 1;
    }

    v12 = 1;
  }

  sub_23F06C200(0x66u, __p, a2);
  if (v12 == 1)
  {
    if (v11 != 1)
    {
      goto LABEL_11;
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
      if ((SHIBYTE(v7) & 0x80000000) == 0)
      {
LABEL_11:
        if (v5 != 1)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    else if ((SHIBYTE(v7) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    operator delete(v6[0]);
    if (v5 != 1)
    {
      return;
    }

LABEL_12:
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_23F3010A4(uint64_t a1, const char **a2, int *a3, std::string *a4)
{
  v8 = 0;
  if (*a2)
  {
    sub_23F2947C4(v7, a2);
  }

  else
  {
    v11 = v7;
    v12 = "nullptr";
    v13 = v7;
    v14 = "nullptr";
    v15 = "nullptr";
    v9.__r_.__value_.__r.__words[0] = &v11;
    sub_23EF6D5F0(&v9);
  }

  v11 = v7;
  v12 = " error ";
  v13 = v7;
  v14 = " error ";
  v15 = " error ";
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v9.__r_.__value_.__r.__words[0] = &v11;
  (*(&off_28518DE60 + v8))(&v9, v7);
  std::to_string(&v9, *a3);
  v11 = v7;
  v12 = &v9;
  v13 = v7;
  v14 = &v9;
  v15 = &v9;
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v10 = &v11;
  (off_28518DE78[v8])(&v10, v7);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v11 = v7;
  v12 = ": ";
  v13 = v7;
  v14 = ": ";
  v15 = ": ";
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v9.__r_.__value_.__r.__words[0] = &v11;
  (off_28518DE90[v8])(&v9, v7);
  v11 = v7;
  v12 = a4;
  v13 = v7;
  v14 = a4;
  v15 = a4;
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v9.__r_.__value_.__r.__words[0] = &v11;
  (off_28518DEA8[v8])(&v9, v7);
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v11 = &v9;
  result = (off_28518DEC0[v8])(&v11, v7);
  if (v8 != -1)
  {
    return (off_28518DE48[v8])(&v11, v7);
  }

  return result;
}

uint64_t sub_23F30130C(uint64_t a1, __int128 *a2)
{
  v6 = 0;
  if (*(a2 + 24) == 1)
  {
    v6 = -1;
    if (*(a2 + 23) < 0)
    {
      sub_23EF34EA4(&v4, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      v5 = *(a2 + 2);
    }

    v2 = 1;
    v6 = 1;
  }

  else
  {
    v7[0] = &v4;
    v7[1] = "nullopt";
    v7[2] = &v4;
    v7[3] = "nullopt";
    v7[4] = "nullopt";
    v8 = v7;
    sub_23EF6D5F0(&v8);
    v2 = v6;
    if (v6 == -1)
    {
      sub_23EF41D6C();
    }
  }

  v7[0] = &v8;
  result = (off_28518DEC0[v2])(v7, &v4);
  if (v6 != -1)
  {
    return (off_28518DE48[v6])(v7, &v4);
  }

  return result;
}

void sub_23F301438(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x245CACD00);
}

__n128 sub_23F301470@<Q0>(std::string *__s@<X0>, char *a2@<X1>, int64_t a3@<X2>, const std::string::value_type *a4@<X3>, std::string::size_type a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  size = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  if (size < 0)
  {
    size = __s->__r_.__value_.__l.__size_;
    if (size)
    {
      v18 = a3 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      goto LABEL_24;
    }

    v19 = (a7 & 1) != 0 ? a6 : -1;
    v37 = v19;
    v17 = __s->__r_.__value_.__r.__words[0];
    if (size < a3)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*(&__s->__r_.__value_.__s + 23))
    {
      v15 = a3 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_24;
    }

    v16 = (a7 & 1) != 0 ? a6 : -1;
    v37 = v16;
    v17 = __s;
    if (size < a3)
    {
      goto LABEL_24;
    }
  }

  v20 = v17 + size;
  v21 = *a2;
  v22 = v17;
  do
  {
    v23 = size - a3;
    if (v23 == -1)
    {
      break;
    }

    v24 = memchr(v22, v21, v23 + 1);
    if (!v24)
    {
      break;
    }

    v25 = v24;
    if (!memcmp(v24, a2, a3))
    {
      if (v37)
      {
        if (v25 != v20)
        {
          v27 = v25 - v17;
          if (v25 - v17 != -1)
          {
LABEL_28:
            std::string::replace(__s, v27, a3, a4, a5);
            v28 = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
            if ((v28 & 0x8000000000000000) != 0)
            {
              v29 = __s->__r_.__value_.__r.__words[0];
              v28 = __s->__r_.__value_.__l.__size_;
            }

            else
            {
              v29 = __s;
            }

            v30 = v28 - (v27 + a5);
            if (v28 >= v27 + a5 && v30 >= a3)
            {
              --v37;
              v31 = v29 + v28;
              v32 = v29 + v27 + a5;
              v33 = *a2;
              while (1)
              {
                v34 = v30 - a3;
                if (v34 == -1)
                {
                  break;
                }

                v35 = memchr(v32, v33, v34 + 1);
                if (!v35)
                {
                  break;
                }

                v36 = v35;
                if (!memcmp(v35, a2, a3))
                {
                  if (v37)
                  {
                    if (v36 != v31)
                    {
                      v27 = v36 - v29;
                      if (v36 - v29 != -1)
                      {
                        goto LABEL_28;
                      }
                    }
                  }

                  goto LABEL_24;
                }

                v32 = v36 + 1;
                v30 = v31 - (v36 + 1);
                if (v30 < a3)
                {
                  goto LABEL_24;
                }
              }
            }
          }
        }
      }

      break;
    }

    v22 = (v25 + 1);
    size = v20 - (v25 + 1);
  }

  while (size >= a3);
LABEL_24:
  result = *&__s->__r_.__value_.__l.__data_;
  *a8 = *&__s->__r_.__value_.__l.__data_;
  *(a8 + 16) = *(&__s->__r_.__value_.__l + 2);
  __s->__r_.__value_.__l.__size_ = 0;
  __s->__r_.__value_.__r.__words[2] = 0;
  __s->__r_.__value_.__r.__words[0] = 0;
  return result;
}

uint64_t sub_23F301658(uint64_t result, uint64_t *a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a3)
  {
    for (i = a2; i != &a2[3 * a3]; i += 3)
    {
      v4 = *i;
      v5 = i[1];
      v6 = (v5 + 2654435769 + ((*i + 2654435769) >> 2) + ((*i + 2654435769) << 6)) ^ (*i + 2654435769);
      v7 = *(result + 8);
      if (!*&v7)
      {
        goto LABEL_29;
      }

      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.u32[0] > 1uLL)
      {
        v9 = (v5 + 2654435769 + ((*i + 2654435769) >> 2) + ((*i + 2654435769) << 6)) ^ (*i + 2654435769);
        if (v6 >= *&v7)
        {
          v9 = v6 % *&v7;
        }
      }

      else
      {
        v9 = v6 & (*&v7 - 1);
      }

      v10 = *(8 * v9);
      if (!v10 || (v11 = *v10) == 0)
      {
LABEL_29:
        operator new();
      }

      if (v8.u32[0] < 2uLL)
      {
        while (1)
        {
          v13 = v11[1];
          if (v13 == v6)
          {
            if (v11[2] == v4 && v11[3] == v5)
            {
              goto LABEL_30;
            }
          }

          else if ((v13 & (*&v7 - 1)) != v9)
          {
            goto LABEL_29;
          }

          v11 = *v11;
          if (!v11)
          {
            goto LABEL_29;
          }
        }
      }

      while (1)
      {
        v15 = v11[1];
        if (v15 == v6)
        {
          break;
        }

        if (v15 >= *&v7)
        {
          v15 %= *&v7;
        }

        if (v15 != v9)
        {
          goto LABEL_29;
        }

LABEL_24:
        v11 = *v11;
        if (!v11)
        {
          goto LABEL_29;
        }
      }

      if (v11[2] != v4 || v11[3] != v5)
      {
        goto LABEL_24;
      }

LABEL_30:
      ;
    }
  }

  return result;
}

void sub_23F301BB0(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_23EF3CEC8(v1);
  _Unwind_Resume(a1);
}

void *sub_23F301BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v76 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27E396060, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E396060))
  {
    v41 = vdupq_n_s64(1uLL);
    v42 = "seconds";
    v43 = xmmword_23F349340;
    v45 = xmmword_23F349350;
    v44 = "minutes";
    v46 = "hours";
    v47 = xmmword_23F349360;
    v49 = xmmword_23F349370;
    v48 = "days";
    v50 = "weeks";
    v51 = xmmword_23F349380;
    v53 = xmmword_23F349390;
    v52 = "months";
    v54 = "years";
    sub_23F301658(&qword_27E396090, v41.i64, 7);
    __cxa_guard_release(&qword_27E396060);
  }

  v6 = a2 + ((a1 + 2654435769) >> 2) + ((a1 + 2654435769) << 6);
  v7 = (v6 + 2654435769u) ^ (a1 + 2654435769);
  if (qword_27E396098)
  {
    v8 = vcnt_s8(qword_27E396098);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = (v6 + 2654435769u) ^ (a1 + 2654435769);
      if (v7 >= qword_27E396098)
      {
        v9 = v7 % qword_27E396098;
      }
    }

    else
    {
      v9 = (qword_27E396098 - 1) & v7;
    }

    v10 = *(qword_27E396090 + 8 * v9);
    if (v10)
    {
      v11 = *v10;
      if (v11)
      {
        if (v8.u32[0] < 2uLL)
        {
          while (1)
          {
            v15 = v11[1];
            if (v7 == v15)
            {
              if (v11[2] == a1 && v11[3] == a2)
              {
                goto LABEL_69;
              }
            }

            else if ((v15 & (qword_27E396098 - 1)) != v9)
            {
              goto LABEL_28;
            }

            v11 = *v11;
            if (!v11)
            {
              goto LABEL_28;
            }
          }
        }

        do
        {
          v13 = v11[1];
          if (v7 == v13)
          {
            if (v11[2] == a1 && v11[3] == a2)
            {
LABEL_69:
              v27 = v11[4];
              result = strlen(v27);
              if (result > 0x7FFFFFFFFFFFFFF7)
              {
                sub_23EF2F8F4();
              }

              v28 = result;
              if (result >= 0x17)
              {
                operator new();
              }

              *(a3 + 23) = result;
              if (result)
              {
                result = memmove(a3, v27, result);
              }

              *(v28 + a3) = 0;
              goto LABEL_91;
            }
          }

          else
          {
            if (v13 >= qword_27E396098)
            {
              v13 %= qword_27E396098;
            }

            if (v13 != v9)
            {
              break;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

LABEL_28:
  if ((atomic_load_explicit(&qword_27E396058, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E396058))
  {
    v41 = xmmword_23F3493A0;
    v42 = "atto";
    v43 = xmmword_23F3493B0;
    v45 = xmmword_23F3493C0;
    v44 = "femto";
    v46 = "pico";
    v47 = xmmword_23F3493D0;
    v49 = xmmword_23F3493E0;
    v48 = "nano";
    v50 = "micro";
    v51 = xmmword_23F3493F0;
    v53 = xmmword_23F349400;
    v52 = "milli";
    v54 = "centi";
    v55 = xmmword_23F349410;
    v57 = xmmword_23F349420;
    v56 = "deci";
    v58 = "deca";
    v59 = xmmword_23F349430;
    v61 = xmmword_23F349440;
    v60 = "hecto";
    v62 = "kilo";
    v63 = 1000000;
    v66 = xmmword_23F349450;
    v64 = 1;
    v65 = "mega";
    v67 = "giga";
    v68 = 1000000000000;
    v69 = 1;
    v70 = "tera";
    v71 = xmmword_23F349460;
    v72 = "peta";
    v73 = 1000000000000000000;
    v74 = 1;
    v75 = "exa";
    sub_23F301658(&qword_27E396068, v41.i64, 16);
    __cxa_guard_release(&qword_27E396058);
  }

  if (!qword_27E396070)
  {
    goto LABEL_55;
  }

  v16 = vcnt_s8(qword_27E396070);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = v7;
    if (v7 >= qword_27E396070)
    {
      v17 = v7 % qword_27E396070;
    }
  }

  else
  {
    v17 = (qword_27E396070 - 1) & v7;
  }

  v18 = *(qword_27E396068 + 8 * v17);
  if (!v18 || (v19 = *v18) == 0)
  {
LABEL_55:
    v38 = 0;
    v41.i64[0] = v37;
    v41.i64[1] = "ratio<";
    v42 = v37;
    *&v43 = "ratio<";
    *(&v43 + 1) = "ratio<";
    v39.__r_.__value_.__r.__words[0] = &v41;
    sub_23F082054(&v39);
    std::to_string(&v39, a1);
    v41.i64[0] = v37;
    v41.i64[1] = &v39;
    v42 = v37;
    *&v43 = &v39;
    *(&v43 + 1) = &v39;
    if (v38 == -1)
    {
      sub_23EF41D6C();
    }

    v40 = &v41;
    (off_28518DF30[v38])(&v40, v37);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    v41.i64[0] = v37;
    v41.i64[1] = ",";
    v42 = v37;
    *&v43 = ",";
    *(&v43 + 1) = ",";
    if (v38 == -1)
    {
      sub_23EF41D6C();
    }

    v39.__r_.__value_.__r.__words[0] = &v41;
    (*(&off_28518DF48 + v38))(&v39, v37);
    std::to_string(&v39, a2);
    v41.i64[0] = v37;
    v41.i64[1] = &v39;
    v42 = v37;
    *&v43 = &v39;
    *(&v43 + 1) = &v39;
    if (v38 == -1)
    {
      sub_23EF41D6C();
    }

    v40 = &v41;
    (off_28518DF30[v38])(&v40, v37);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    v41.i64[0] = v37;
    v41.i64[1] = ">";
    v42 = v37;
    *&v43 = ">";
    *(&v43 + 1) = ">";
    if (v38 == -1)
    {
      sub_23EF41D6C();
    }

    v39.__r_.__value_.__r.__words[0] = &v41;
    (*(&off_28518DF48 + v38))(&v39, v37);
    if (v38 == -1)
    {
      sub_23EF41D6C();
    }

    v41.i64[0] = &v39;
    result = (*(&off_28518DF60 + v38))(&__dst, &v41, v37);
    if (v38 != -1)
    {
      result = (off_28518DF18[v38])(&v41, v37);
    }

    v25 = SHIBYTE(v36);
    if ((SHIBYTE(v36) & 0x8000000000000000) != 0)
    {
      goto LABEL_83;
    }

    goto LABEL_67;
  }

  if (v16.u32[0] < 2uLL)
  {
    while (1)
    {
      v23 = v19[1];
      if (v7 == v23)
      {
        if (v19[2] == a1 && v19[3] == a2)
        {
          goto LABEL_73;
        }
      }

      else if ((v23 & (qword_27E396070 - 1)) != v17)
      {
        goto LABEL_55;
      }

      v19 = *v19;
      if (!v19)
      {
        goto LABEL_55;
      }
    }
  }

  while (1)
  {
    v21 = v19[1];
    if (v7 == v21)
    {
      break;
    }

    if (v21 >= qword_27E396070)
    {
      v21 %= qword_27E396070;
    }

    if (v21 != v17)
    {
      goto LABEL_55;
    }

LABEL_42:
    v19 = *v19;
    if (!v19)
    {
      goto LABEL_55;
    }
  }

  if (v19[2] != a1 || v19[3] != a2)
  {
    goto LABEL_42;
  }

LABEL_73:
  v29 = v19[4];
  result = strlen(v29);
  if (result > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  v30 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  HIBYTE(v36) = result;
  if (result)
  {
    result = memmove(&__dst, v29, result);
  }

  *(&__dst + v30) = 0;
  v25 = SHIBYTE(v36);
  if ((SHIBYTE(v36) & 0x8000000000000000) == 0)
  {
LABEL_67:
    if ((v25 - 16) < 7)
    {
      goto LABEL_85;
    }

    p_dst = &__dst;
    goto LABEL_87;
  }

LABEL_83:
  v25 = *(&__dst + 1);
  v31 = (v36 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if ((v31 - *(&__dst + 1)) < 7)
  {
    if (0x7FFFFFFFFFFFFFF7 - (v36 & 0x7FFFFFFFFFFFFFFFuLL) < *(&__dst + 1) + 7 - v31)
    {
      sub_23EF2F8F4();
    }

LABEL_85:
    operator new();
  }

  p_dst = __dst;
LABEL_87:
  v32 = (p_dst + v25);
  *(v32 + 3) = 1935961711;
  *v32 = 1868785011;
  v33 = v25 + 7;
  if (SHIBYTE(v36) < 0)
  {
    *(&__dst + 1) = v25 + 7;
  }

  else
  {
    HIBYTE(v36) = v33 & 0x7F;
  }

  *(p_dst + v33) = 0;
  *a3 = __dst;
  *(a3 + 2) = v36;
LABEL_91:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F302584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F302600(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v8 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  sub_23F3026FC(a1, &__dst, 24);
  if (v8 < 0)
  {
    operator delete(__dst);
  }

  return a1;
}

void sub_23F3026E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F3026FC(uint64_t a1, __int128 *a2, int a3)
{
  *(a1 + 176) = 0;
  v6 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v7 = a1 + 16;
  v8 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v9 = a1 + 24;
  v10 = MEMORY[0x277D82818];
  v11 = *(MEMORY[0x277D82818] + 24);
  v12 = *(MEMORY[0x277D82818] + 16);
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v11;
  *(a1 + 8) = 0;
  v13 = (a1 + *(*a1 - 24));
  std::ios_base::init(v13, (a1 + 24));
  v14 = MEMORY[0x277D82890] + 24;
  v13[1].__vftable = 0;
  v13[1].__fmtflags_ = -1;
  v15 = v10[5];
  v16 = v10[4];
  *(a1 + 16) = v16;
  *(v7 + *(v16 - 24)) = v15;
  v17 = v10[1];
  *a1 = v17;
  *(a1 + *(v17 - 24)) = v10[6];
  *a1 = v14;
  *(a1 + 128) = v6;
  v18 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v8;
  *(a1 + 24) = v18;
  MEMORY[0x245CACAF0](a1 + 32);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  v19 = *a2;
  *(a1 + 104) = *(a2 + 2);
  *(a1 + 88) = v19;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a3;
  sub_23EF36F98(v9);
  return a1;
}

void sub_23F302A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 111) < 0)
  {
    operator delete(*(v10 + 88));
  }

  *(v10 + 24) = v11;
  std::locale::~locale((v10 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x245CACBF0](a10);
  _Unwind_Resume(a1);
}

void sub_23F302A54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277D82818];
    v4 = *MEMORY[0x277D82818];
    *a2 = *MEMORY[0x277D82818];
    v5 = *(v3 + 72);
    *(a2 + *(v4 - 24)) = *(v3 + 64);
    *(a2 + 16) = v5;
    *(a2 + 24) = MEMORY[0x277D82878] + 16;
    if (*(a2 + 111) < 0)
    {
      operator delete(*(a2 + 88));
    }

    *(a2 + 24) = MEMORY[0x277D82868] + 16;
    std::locale::~locale((a2 + 32));
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](a2 + 128);

    JUMPOUT(0x245CACD00);
  }
}

void sub_23F302BD0(void *__src@<X0>, size_t __len@<X1>, uint64_t a3@<X8>)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  __dst.__r_.__value_.__s.__data_[__len] = 0;
  sub_23F301470(&__dst, "std::__1::", 10, "std::", 5uLL, 0, 0, a3);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_23F302CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F302CF4(const void **a1@<X0>, __int128 *a2@<X1>, std::string *a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 1);
  if (v4 != v5)
  {
    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    if (v6 < 0)
    {
      v6 = a1[1];
    }

    v15[0] = v7;
    v15[1] = v6;
    v15[2] = "<";
    v15[3] = 1;
    sub_23EF42BD0(v4, v5, ",", 1uLL, &__p);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v15[4] = p_p;
    v15[5] = size;
    v15[6] = ">";
    v15[7] = 1;
    sub_23EF45AA0(v15, &v16, 0, 0, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_16;
  }

  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    *&a3->__r_.__value_.__l.__data_ = *a1;
    a3->__r_.__value_.__r.__words[2] = a1[2];
LABEL_16:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = *MEMORY[0x277D85DE8];

  sub_23EF34EA4(a3, v11, v12);
}

void sub_23F302E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F302E84(char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  __p = 0;
  v29 = 0;
  v30 = 0;
  if (a2)
  {
    v3 = a2;
    v6 = 0;
    v26 = 0;
    v27 = 0;
    v7 = 1;
    while (1)
    {
      v9 = *a1;
      if ((v9 & 0x80000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v9 + 60) & 0x400) != 0)
      {
        v8 = (v7 & 1) == 0;
        v7 = 0;
        if (!v8)
        {
          v6 = 1;
        }

        goto LABEL_5;
      }

      if (v9 == 76)
      {
        if ((v6 & 1) == 0)
        {
          goto LABEL_30;
        }

        v11 = HIBYTE(v30);
        if (SHIBYTE(v30) < 0)
        {
          v23 = v29;
          v24 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v29 == v24)
          {
            if ((v30 & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFF8)
            {
LABEL_46:
              operator new();
            }

LABEL_75:
            sub_23EF2F8F4();
          }

          ++v29;
          *(__p + v23) = 76;
          if ((v27 & 0x100000000) == 0)
          {
LABEL_59:
            BYTE4(v27) = 1;
            goto LABEL_6;
          }
        }

        else
        {
          if (HIBYTE(v30) == 22)
          {
            goto LABEL_46;
          }

          HIBYTE(v30) = (HIBYTE(v30) + 1) & 0x7F;
          *(&__p + v11) = 76;
          if ((v27 & 0x100000000) == 0)
          {
            goto LABEL_59;
          }
        }

        if (v26)
        {
          if (v30 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (v30 >= 0)
          {
            v22 = HIBYTE(v30);
          }

          else
          {
            v22 = v29;
          }

          goto LABEL_54;
        }

        BYTE4(v27) = 1;
        v26 = 1;
      }

      else
      {
        if (*a1 != 85)
        {
          if ((v9 & 0x80000000) != 0)
          {
            v16 = *a1;
            v17 = __maskrune(*a1, 0x500uLL);
            LOBYTE(v9) = v16;
            if (v17)
            {
              goto LABEL_21;
            }
          }

          else if ((*(MEMORY[0x277D85DE0] + 4 * v9 + 60) & 0x500) != 0)
          {
LABEL_21:
            if (v6)
            {
              v12 = v9;
              if (v30 >= 0)
              {
                v13 = &__p;
              }

              else
              {
                v13 = __p;
              }

              if (v30 >= 0)
              {
                v14 = HIBYTE(v30);
              }

              else
              {
                v14 = v29;
              }

              std::string::append(a3, v13, v14);
              if (SHIBYTE(v30) < 0)
              {
                v29 = 0;
                v15 = __p;
              }

              else
              {
                HIBYTE(v30) = 0;
                v15 = &__p;
              }

              LOBYTE(v9) = v12;
              v27 = 0;
              v26 = 0;
              v6 = 0;
              v7 = 0;
              *v15 = 0;
            }

            else
            {
LABEL_30:
              v7 = 0;
            }

LABEL_5:
            std::string::push_back(a3, v9);
            goto LABEL_6;
          }

          if (v6)
          {
            if (SHIBYTE(v30) < 0)
            {
              v29 = 0;
              v18 = __p;
            }

            else
            {
              HIBYTE(v30) = 0;
              v18 = &__p;
            }

            v27 = 0;
            v26 = 0;
            v6 = 0;
            *v18 = 0;
          }

          v7 = 1;
          goto LABEL_5;
        }

        if ((v6 & 1) == 0)
        {
          goto LABEL_30;
        }

        v10 = HIBYTE(v30);
        if (SHIBYTE(v30) < 0)
        {
          v19 = v29;
          v20 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v29 == v20)
          {
            if ((v30 & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFF8)
            {
LABEL_37:
              operator new();
            }

            goto LABEL_75;
          }

          ++v29;
          *(__p + v19) = 85;
          if (v27)
          {
LABEL_38:
            if (v30 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if (v30 >= 0)
            {
              v22 = HIBYTE(v30);
            }

            else
            {
              v22 = v29;
            }

LABEL_54:
            std::string::append(a3, p_p, v22);
            if (SHIBYTE(v30) < 0)
            {
              v29 = 0;
              v25 = __p;
            }

            else
            {
              HIBYTE(v30) = 0;
              v25 = &__p;
            }

            v27 = 0;
            v26 = 0;
            v6 = 0;
            *v25 = 0;
            goto LABEL_6;
          }
        }

        else
        {
          if (HIBYTE(v30) == 22)
          {
            goto LABEL_37;
          }

          HIBYTE(v30) = (HIBYTE(v30) + 1) & 0x7F;
          *(&__p + v10) = 85;
          if (v27)
          {
            goto LABEL_38;
          }
        }

        LOBYTE(v27) = 1;
      }

LABEL_6:
      ++a1;
      if (!--v3)
      {
        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p);
        }

        return;
      }
    }
  }
}

void sub_23F30336C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((*(v17 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v17 + 23) & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(*v17);
  _Unwind_Resume(a1);
}

uint64_t sub_23F3033AC(const char *a1, int a2, const void *a3, size_t a4, const void *a5, size_t a6, void (*a7)(std::string *))
{
  sub_23F3034A8(a1, a2, a3, a4, a5, a6, a7);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v11 = qword_27E396178, v12 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_8:
      qword_27E396190(*algn_27E396198, a3, a4, a5, a6);
      return 0;
    }
  }

  else
  {
    v11 = qword_27E396178;
    v12 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      return 1;
    }
  }

  do
  {
    v14 = *v11;
    v13 = *(v11 + 8);
    v11 += 16;
    v14(v13, a3, a4, a5, a6);
  }

  while (v11 != v12);
  if (byte_27E3961A0)
  {
    goto LABEL_8;
  }

  return 1;
}

void sub_23F3034A8(const char *a1, int a2, const void *a3, size_t a4, const void *a5, size_t a6, void (*a7)(std::string *))
{
  if (byte_27E3961A0)
  {
    return;
  }

  if (a4)
  {
    v12 = "Assert";
  }

  else
  {
    v12 = "Abort";
  }

  if (a4)
  {
    v13 = 6;
  }

  else
  {
    v13 = 5;
  }

  *(&__dst.__r_.__value_.__s + 23) = v13;
  memcpy(&__dst, v12, v13);
  *(&__dst | v13) = 0;
  size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __dst.__r_.__value_.__l.__size_;
    v15 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v15 - __dst.__r_.__value_.__l.__size_ < 2)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) >= __dst.__r_.__value_.__l.__size_ + 2 - v15)
      {
        goto LABEL_13;
      }

      goto LABEL_106;
    }

    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) - 21) < 2)
    {
LABEL_13:
      operator new();
    }

    p_dst = &__dst;
  }

  *(&p_dst->__r_.__value_.__l.__data_ + size) = 8250;
  v21 = size + 2;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    __dst.__r_.__value_.__l.__size_ = size + 2;
    p_dst->__r_.__value_.__s.__data_[v21] = 0;
    v22 = strlen(a1);
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_28:
      sub_23EF2F8F4();
    }
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v21 & 0x7F;
    p_dst->__r_.__value_.__s.__data_[v21] = 0;
    v22 = strlen(a1);
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_28;
    }
  }

  v16 = v22;
  if (v22 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v22;
  if (v22)
  {
    memcpy(&__p, a1, v22);
    __p.__r_.__value_.__s.__data_[v16] = 0;
    v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
LABEL_17:
      p_p = &__p;
      if (v17 == 22)
      {
        goto LABEL_23;
      }

      goto LABEL_32;
    }
  }

  else
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }
  }

  v17 = __p.__r_.__value_.__l.__size_;
  v19 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v19 == __p.__r_.__value_.__l.__size_)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

LABEL_23:
    operator new();
  }

  p_p = __p.__r_.__value_.__r.__words[0];
LABEL_32:
  p_p->__r_.__value_.__s.__data_[v17] = 58;
  v23 = v17 + 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    __p.__r_.__value_.__l.__size_ = v23;
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = v23 & 0x7F;
  }

  p_p->__r_.__value_.__s.__data_[v23] = 0;
  v48 = __p;
  memset(&__p, 0, sizeof(__p));
  std::to_string(&v46, a2);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v46;
  }

  else
  {
    v24 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v46.__r_.__value_.__l.__size_;
  }

  v26 = std::string::append(&v48, v24, v25);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v50 = v26->__r_.__value_.__r.__words[2];
  v49 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (v50 >= 0)
  {
    v28 = &v49;
  }

  else
  {
    v28 = v49;
  }

  if (v50 >= 0)
  {
    v29 = HIBYTE(v50);
  }

  else
  {
    v29 = *(&v49 + 1);
  }

  std::string::append(&__dst, v28, v29);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
    if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_49:
      if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_55;
    }
  }

  else if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  operator delete(v46.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_50:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

LABEL_56:
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!a4)
    {
      goto LABEL_69;
    }

LABEL_57:
    if (a4 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    if (a4 >= 0x17)
    {
      operator new();
    }

    *(&v48.__r_.__value_.__s + 23) = a4;
    memmove(&v48, a3, a4);
    v48.__r_.__value_.__s.__data_[a4] = 0;
    v30 = std::string::insert(&v48, 0, " : ", 3uLL);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v50 = v30->__r_.__value_.__r.__words[2];
    v49 = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (v50 >= 0)
    {
      v32 = &v49;
    }

    else
    {
      v32 = v49;
    }

    if (v50 >= 0)
    {
      v33 = HIBYTE(v50);
    }

    else
    {
      v33 = *(&v49 + 1);
    }

    std::string::append(&__dst, v32, v33);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49);
      if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_69;
      }
    }

    else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    operator delete(v48.__r_.__value_.__l.__data_);
    if (!a6)
    {
      goto LABEL_88;
    }

    goto LABEL_70;
  }

LABEL_55:
  operator delete(v48.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_56;
  }

LABEL_51:
  if (a4)
  {
    goto LABEL_57;
  }

LABEL_69:
  if (!a6)
  {
    goto LABEL_88;
  }

LABEL_70:
  if (a6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  if (a6 >= 0x17)
  {
    operator new();
  }

  *(&v48.__r_.__value_.__s + 23) = a6;
  memmove(&v48, a5, a6);
  v48.__r_.__value_.__s.__data_[a6] = 0;
  v34 = std::string::insert(&v48, 0, " : ", 3uLL);
  v35 = *&v34->__r_.__value_.__l.__data_;
  v50 = v34->__r_.__value_.__r.__words[2];
  v49 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (v50 >= 0)
  {
    v36 = &v49;
  }

  else
  {
    v36 = v49;
  }

  if (v50 >= 0)
  {
    v37 = HIBYTE(v50);
  }

  else
  {
    v37 = *(&v49 + 1);
  }

  std::string::append(&__dst, v36, v37);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_88;
    }
  }

  else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_88;
  }

  operator delete(v48.__r_.__value_.__l.__data_);
LABEL_88:
  v38 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    v39 = &__dst;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) == 22)
    {
LABEL_93:
      operator new();
    }

    goto LABEL_95;
  }

  v38 = __dst.__r_.__value_.__l.__size_;
  v40 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v40 == __dst.__r_.__value_.__l.__size_)
  {
    if ((__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_93;
    }

LABEL_106:
    sub_23EF2F8F4();
  }

  v39 = __dst.__r_.__value_.__r.__words[0];
LABEL_95:
  v39->__r_.__value_.__s.__data_[v38] = 10;
  v41 = v38 + 1;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    __dst.__r_.__value_.__l.__size_ = v41;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v41 & 0x7F;
  }

  v39->__r_.__value_.__s.__data_[v41] = 0;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = &__dst;
  }

  else
  {
    v42 = __dst.__r_.__value_.__r.__words[0];
  }

  a7(v42);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_23F303CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F303DA4(const char *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = strlen(a1);
  sub_23F2FEA60(&qword_27E3961B0, a1, v2);
  if (byte_27E3961C7 >= 0)
  {
    v3 = &qword_27E3961B0;
  }

  else
  {
    v3 = qword_27E3961B0;
  }

  qword_27E395728 = v3;
  if ((atomic_load_explicit(&qword_27E3960C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3960C0))
  {
    qword_27E3960B8 = os_log_create("cv3d", &unk_23F3091D6);
    __cxa_guard_release(&qword_27E3960C0);
  }

  v4 = qword_27E3960B8;
  if (os_log_type_enabled(qword_27E3960B8, OS_LOG_TYPE_FAULT))
  {
    v7 = 136315138;
    v8 = a1;
    _os_log_impl(&dword_23EF2C000, v4, OS_LOG_TYPE_FAULT, "%s", &v7, 0xCu);
  }

  result = fputs(a1, *MEMORY[0x277D85DF8]);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F303ED8()
{
  if (__cxa_guard_acquire(&qword_27E395890))
  {
    v0.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v1 = sub_23EF38CB8(v0.__d_.__rep_, &qword_27E395888);
    __cxa_guard_release(v1);
  }
}

void sub_23F303F10(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_23F303F3C()
{
  if (__cxa_guard_acquire(qword_27E395898))
  {
    qword_27E3958D0 = MEMORY[0x277D82678];
    qword_27E3958D8 = MEMORY[0x277D82670];
    __cxa_guard_release(qword_27E395898);
  }
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__extension(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73F0](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73F8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return MEMORY[0x2821F7520](this, a2);
}

{
  return MEMORY[0x2821F7538](this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  MEMORY[0x2821F7548](this);
}

{
  MEMORY[0x2821F7550](this);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2821F7830]();
}

{
  return MEMORY[0x2821F7838]();
}

{
  return MEMORY[0x2821F7840]();
}

{
  return MEMORY[0x2821F7848]();
}

{
  return MEMORY[0x2821F7860]();
}

{
  return MEMORY[0x2821F7868]();
}

{
  return MEMORY[0x2821F7870]();
}

{
  return MEMORY[0x2821F7878]();
}

uint64_t std::ostream::~ostream()
{
  return MEMORY[0x2821F78C0]();
}

{
  return MEMORY[0x2821F78C8]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D0]();
}

{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7920]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7930]();
}

{
  return MEMORY[0x2821F7938]();
}

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x2821F7E98](this, a2, a3, a4);
}

{
  return MEMORY[0x2821F7EB0](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x2821F7EA0]();
}

{
  return MEMORY[0x2821F7EA8]();
}

{
  return MEMORY[0x2821F7EB8]();
}

{
  return MEMORY[0x2821F7EC0]();
}

{
  return MEMORY[0x2821F7ED0]();
}

{
  return MEMORY[0x2821F7ED8]();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, uint64_t __val)
{
  return MEMORY[0x2821F7F20](retstr, __val);
}

{
  return MEMORY[0x2821F7F30](retstr, __val);
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x2821F7F28](retstr, __val);
}

{
  return MEMORY[0x2821F7F38](retstr, __val);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}