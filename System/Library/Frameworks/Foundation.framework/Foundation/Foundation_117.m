unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Si_Tg5041_sSr10initialize14fromContentsOfSiqd___t7g30Qyd__RszSlRd__lFSiSRyxGXEfU_s5i5V_Ss8jK4VTG5SryAKGTf1cn_n(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void *__dst, uint64_t a6)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return 0;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v12 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v12 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v12 = _StringObject.sharedUTF8.getter();
  }

  return _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5Si_Tg5041_sSr10initialize14fromContentsOfSiqd___t7g30Qyd__RszSlRd__lFSiSRyxGXEfU_s5h5V_Ss8iJ4VTG5SryAIGTf1nnc_nTf4xnn_n(v12, a1, a2, a3, a4, __dst, a6);
}

uint64_t specialized static URLComponents.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v94 = *(a1 + 9);
  v3 = *(a1 + 32);
  v93 = *a2;
  v91 = *(a2 + 9);
  v97 = *(a2 + 11);
  v88 = *(a2 + 14);
  v96 = *(a2 + 15);
  v95 = *(a2 + 16);
  v92 = *(a2 + 24);
  v89 = *(a2 + 64);
  v90 = *(a2 + 32);
  v86 = *a1;
  v87 = *(a2 + 104);
  v73 = *(a1 + 11);
  v76 = *(a1 + 16);
  v77 = *(a1 + 15);
  v85 = *(a1 + 24);
  v4 = *(a1 + 56);
  v74 = *(a1 + 136);
  v75 = *(a1 + 64);
  v72 = *(a1 + 120);
  v78 = *(a1 + 144);
  v79 = *(a1 + 128);
  v80 = *(a2 + 56);
  v81 = *(a2 + 136);
  v83 = *(a2 + 144);
  v84 = *(a2 + 128);
  v82 = *(a2 + 120);
  if (*(a1 + 112))
  {
    v5 = *(a1 + 104);
    v6 = *(a1 + 112);
LABEL_3:
    v7 = *(a2 + 32);
    v8 = *a2;
    v9 = *(a2 + 112);
    goto LABEL_10;
  }

  v5 = 0;
  v6 = 0xE000000000000000;
  if (*(a1 + 14) != 1)
  {
    goto LABEL_3;
  }

  v7 = *(a2 + 32);
  v8 = *a2;
  v9 = *(a2 + 112);
  if (v2)
  {
    if (v2[168])
    {
      v10 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v10 = String.subscript.getter();
    }

    v5 = MEMORY[0x1865CAE80](v10);
    v6 = v11;

    v8 = v93;
  }

LABEL_10:
  if (v9)
  {

    if (v5 != v87)
    {
      goto LABEL_23;
    }
  }

  else if ((v88 & 1) != 0 && v8)
  {
    if (v8[168])
    {

      v12 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {

      v12 = String.subscript.getter();
    }

    v13 = MEMORY[0x1865CAE80](v12);
    v9 = v14;

    v7 = v90;
    if (v5 != v13)
    {
      goto LABEL_23;
    }
  }

  else
  {

    v9 = 0xE000000000000000;
    if (v5)
    {
      goto LABEL_23;
    }
  }

  if (v6 == v9)
  {

    goto LABEL_24;
  }

LABEL_23:
  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  v16 = v85;
  v17 = v3;
  if (!v3)
  {
    v16 = 0;
    v17 = 0;
    if (v94 == 1)
    {
      if (v86)
      {
        if (v86[48])
        {
          v16 = 0;
          v17 = 0;
        }

        else
        {
          v21 = String.subscript.getter();
          v16 = MEMORY[0x1865CAE80](v21);
          v17 = v22;
        }
      }
    }
  }

  if (!v7)
  {
    if (v91 & 1) == 0 || !v93 || (v93[48])
    {

      if (v17)
      {
        goto LABEL_46;
      }

LABEL_47:

      goto LABEL_48;
    }

    v23 = String.subscript.getter();
    v19 = MEMORY[0x1865CAE80](v23);
    v18 = v24;

    if (v17)
    {
      if (!v18)
      {
        goto LABEL_46;
      }

      goto LABEL_27;
    }

LABEL_45:
    if (v18)
    {
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  v18 = v7;
  v19 = v92;
  if (!v17)
  {
    goto LABEL_45;
  }

LABEL_27:
  if (v16 == v19 && v17 == v18)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_48:
  v25 = URLComponents._URLComponents.encodedHost.getter();
  v27 = v26;
  v28 = URLComponents._URLComponents.encodedHost.getter();
  if (v27)
  {
    v30 = v86;
    if (!v29)
    {
      goto LABEL_55;
    }

    if (v25 == v28 && v27 == v29)
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v30 = v86;
    if (v29)
    {
      goto LABEL_55;
    }
  }

  v33 = v72;
  v34 = v74;
  v35 = URLComponents.port.getter();
  v37 = v36;
  v38 = URLComponents.port.getter();
  if (v37)
  {
    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v39 & 1) != 0 || v35 != v38)
  {
    return 0;
  }

  v40 = v79;
  v41 = v84;
  if (!v79)
  {
    v33 = 0;
    if (v77)
    {
      v40 = 0;
      if (v30)
      {
        if (v30[192])
        {
          v33 = 0;
          v40 = 0;
        }

        else
        {
          v45 = String.subscript.getter();
          v33 = MEMORY[0x1865CAE80](v45);
          v40 = v46;
          v41 = v84;
        }
      }
    }

    else
    {
      v40 = 0;
    }
  }

  if (!v41)
  {
    v42 = v89;
    if (v96 != 1 || !v93 || (v93[192] & 1) != 0)
    {

      if (v40)
      {
        goto LABEL_46;
      }

      goto LABEL_89;
    }

    v47 = String.subscript.getter();
    v82 = MEMORY[0x1865CAE80](v47);
    v43 = v48;

    if (v40)
    {
      v34 = v74;
      if (!v43)
      {
        goto LABEL_46;
      }

      goto LABEL_66;
    }

    v34 = v74;
LABEL_86:
    if (v43)
    {

      goto LABEL_55;
    }

LABEL_89:

    goto LABEL_90;
  }

  v42 = v89;

  v43 = v41;
  if (!v40)
  {
    goto LABEL_86;
  }

LABEL_66:
  if (v33 == v82 && v40 == v43)
  {
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v44 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_90:
  v49 = v78;
  v50 = v83;
  if (!v78)
  {
    v34 = 0;
    if (v76)
    {
      v49 = 0;
      if (v30)
      {
        if (v30[216])
        {
          v34 = 0;
          v49 = 0;
        }

        else
        {
          v53 = String.subscript.getter();
          v34 = MEMORY[0x1865CAE80](v53);
          v49 = v54;

          v50 = v83;
        }
      }
    }

    else
    {
      v49 = 0;
    }
  }

  if (v50)
  {

    v51 = v83;
    if (v49)
    {
      if (!v83)
      {
        goto LABEL_137;
      }

      goto LABEL_94;
    }

LABEL_113:
    if (!v51)
    {
LABEL_114:

      goto LABEL_115;
    }

LABEL_46:

LABEL_55:

    return 0;
  }

  if (v95 != 1 || !v93 || (v93[216] & 1) != 0)
  {

    if (v49)
    {
      goto LABEL_137;
    }

    goto LABEL_114;
  }

  v55 = String.subscript.getter();
  v81 = MEMORY[0x1865CAE80](v55);
  v51 = v56;

  if (!v49)
  {
    goto LABEL_113;
  }

  if (!v51)
  {
    goto LABEL_137;
  }

LABEL_94:
  if (v34 == v81 && v49 == v51)
  {
  }

  else
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v52 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_115:
  v57 = v4;
  v58 = URLComponents._URLComponents.percentEncodedUser.getter();
  v60 = v59;
  v61 = URLComponents._URLComponents.percentEncodedUser.getter();
  if (v60)
  {
    if (!v62)
    {
      goto LABEL_55;
    }

    if (v58 == v61 && v60 == v62)
    {
    }

    else
    {
      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v63 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v62)
  {
    goto LABEL_55;
  }

  v64 = v75;
  v65 = v57;
  if (!v75)
  {
    v65 = 0;
    if (v73)
    {
      v64 = 0;
      if (v30)
      {
        if (v30[96])
        {
          v65 = 0;
          v64 = 0;
        }

        else
        {
          v68 = String.subscript.getter();
          v65 = MEMORY[0x1865CAE80](v68);
          v64 = v69;
        }
      }
    }

    else
    {
      v64 = 0;
    }
  }

  v66 = v42;
  if (!v42)
  {
    if (v97 == 1 && v93 && (v93[96] & 1) == 0)
    {

      v70 = String.subscript.getter();
      v80 = MEMORY[0x1865CAE80](v70);
      v66 = v71;

      if (!v64)
      {
LABEL_145:
        if (!v66)
        {
          goto LABEL_146;
        }

        goto LABEL_46;
      }

      if (v66)
      {
        goto LABEL_126;
      }
    }

    else
    {

      if (!v64)
      {
LABEL_146:

        return 1;
      }
    }

LABEL_137:

    goto LABEL_55;
  }

  if (!v64)
  {
    goto LABEL_145;
  }

LABEL_126:
  if (v65 == v80 && v64 == v66)
  {

    return 1;
  }

  else
  {
    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v67 & 1;
  }
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5Si_Tg5041_sSr10initialize14fromContentsOfSiqd___t7g30Qyd__RszSlRd__lFSiSRyxGXEfU_s5h5V_Ss8iJ4VTG5SryAIGTf1nnc_nTf4xnn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void *__dst, uint64_t a7)
{
  v10 = result;
  v11 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v13 = a2 & 0xC;
  v14 = a2;
  if (v13 == v12)
  {
    v28 = a2;
    v16 = a3;
    v17 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v28;
    a3 = v16;
    a5 = v17;
    v14 = result;
    if ((v17 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v15 = v14 >> 16;
      if (v13 != v12)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v29 = a2;
  v18 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(a5) & 0xF;
  }

  if (v18 < v14 >> 16)
  {
    goto LABEL_34;
  }

  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v15 = result;
  a3 = v19;
  a2 = v29;
  if (v13 == v12)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v12)
  {
    v23 = a2;
    v24 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
LABEL_21:
    v26 = v15 + result;
    if (__OFADD__(v15, result))
    {
      __break(1u);
    }

    else if (v26 >= v15)
    {
      if (!v10)
      {
        return 0;
      }

      v27 = result;
      if (v26 == v15)
      {
        return v27;
      }

      if (result <= a7)
      {
        memcpy(__dst, (v10 + v15), result);
        return v27;
      }

      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_31;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v25 >= a3 >> 16)
  {
    result = String.UTF8View._foreignDistance(from:to:)();
    goto LABEL_21;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in StringProtocol.addingPercentEncoding<A>(utf8Buffer:component:skipAlreadyEncoded:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned __int8 a6, char a7, unsigned __int8 a8)
{
  v8 = a2 >> 14;
  v9 = a3 >> 14;
  if (a2 >> 14 == a3 >> 14)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v11 = a4;
  v12 = 0;
  v13 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v57 = 4 << v13;
  v44 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v45 = a5 & 0xFFFFFFFFFFFFFFLL;
  v14 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v14 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v50 = v14;
  v15 = a2;
  v16 = a2 >> 14;
  v43 = a2 >> 14;
  do
  {
    v17 = v15 & 0xC;
    v18 = v15;
    if (v17 == v57)
    {
      v18 = _StringGuts._slowEnsureMatchingEncoding(_:)(v15, v11, a5);
    }

    if (v18 >> 14 < v8 || v18 >> 14 >= v9)
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      v21 = String.UTF8View._foreignSubscript(position:)();
    }

    else
    {
      v19 = v18 >> 16;
      if ((a5 & 0x2000000000000000) != 0)
      {
        v54 = v11;
        v55 = v45;
        v21 = *(&v54 + v19);
      }

      else
      {
        v20 = v44;
        if ((v11 & 0x1000000000000000) == 0)
        {
          v20 = _StringObject.sharedUTF8.getter();
        }

        v21 = *(v20 + v19);
      }
    }

    if ((UInt8.allowedURLComponents.getter(v21) & a6) != 0)
    {
      *(a1 + v12) = v21;
      v22 = __OFADD__(v12++, 1);
      if (v22)
      {
        goto LABEL_68;
      }

      goto LABEL_45;
    }

    if ((a7 & 1) == 0 || v21 != a8)
    {
      goto LABEL_37;
    }

    v23 = v15;
    if (v17 == v57)
    {
      v23 = _StringGuts._slowEnsureMatchingEncoding(_:)(v15, v11, a5);
      if ((a5 & 0x1000000000000000) != 0)
      {
LABEL_32:
        if (v9 != MEMORY[0x1865CB180](v23, 1, v11, a5) >> 14)
        {
          goto LABEL_33;
        }

        goto LABEL_37;
      }
    }

    else if ((a5 & 0x1000000000000000) != 0)
    {
      goto LABEL_32;
    }

    if (v50 <= v23 >> 16)
    {
      goto LABEL_73;
    }

    if (v9 != ((v23 & 0xFFFFFFFFFFFF0000) + 65540) >> 14)
    {
LABEL_33:
      Substring.UTF8View.index(_:offsetBy:)();
      v8 = v43;
      v11 = a4;
      v24 = Substring.UTF8View.subscript.getter();
      if (((v24 - 58) > 0xF5u || v24 - 65 <= 0x25 && ((1 << (v24 - 65)) & 0x3F0000003FLL) != 0) && v9 != Substring.UTF8View.index(_:offsetBy:)() >> 14)
      {
        Substring.UTF8View.index(_:offsetBy:)();
        v8 = v43;
        v11 = a4;
        v29 = Substring.UTF8View.subscript.getter();
        if ((v29 - 58) > 0xF5u || v29 - 65 <= 0x25 && ((1 << (v29 - 65)) & 0x3F0000003FLL) != 0)
        {
          v30 = Substring.UTF8View.index(_:offsetBy:)();
          if (__OFADD__(v12, 2))
          {
            goto LABEL_75;
          }

          if (v12 + 2 < v12)
          {
            goto LABEL_76;
          }

          v31 = v30;
          if (v30 >> 14 < v16)
          {
            goto LABEL_76;
          }

          v32 = Substring.UTF8View.index(after:)();
          v33 = _StringGuts.validateSubscalarRange(_:in:)(v15, v32, a2, a3, a4, a5);
          v35 = v33;
          v36 = v34;
          if (a1)
          {
            v37 = (v12 + a1);
          }

          else
          {
            v37 = 0;
          }

          v38 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Si_Tg5041_sSr10initialize14fromContentsOfSiqd___t7g30Qyd__RszSlRd__lFSiSRyxGXEfU_s5i5V_Ss8jK4VTG5SryAKGTf1cn_n(v33, v34, a4, a5, v37, 3);
          if (v39)
          {
            v40 = specialized Sequence._copySequenceContents(initializing:)(&v54, v37, 3, v35, v36, a4, a5);
            if ((v56 ^ v55) >= 0x4000)
            {
              goto LABEL_78;
            }

            v41 = v40;

            v38 = v41;
          }

          v22 = __OFADD__(v12, v38);
          v12 += v38;
          if (v22)
          {
            goto LABEL_77;
          }

          v17 = v31 & 0xC;
          v15 = v31;
          goto LABEL_45;
        }
      }
    }

LABEL_37:
    if (__OFADD__(v12, 2))
    {
      goto LABEL_70;
    }

    if (v12 + 2 < v12)
    {
      goto LABEL_71;
    }

    v25 = v21 & 0xF;
    if ((v21 & 0xFu) >= 7)
    {
      v26 = a789abcdef[v25 - 7];
    }

    else
    {
      v26 = v25 | 0x30;
    }

    v27 = byte_1812DB9F0[v21 >> 4];
    v28 = (v12 + a1);
    if (!a1)
    {
      v28 = 0;
    }

    *v28 = a8;
    v28[1] = v27;
    v28[2] = v26;
    v22 = __OFADD__(v12, 3);
    v12 += 3;
    if (v22)
    {
      goto LABEL_72;
    }

LABEL_45:
    if (v17 == v57)
    {
      v15 = _StringGuts._slowEnsureMatchingEncoding(_:)(v15, v11, a5);
      if ((a5 & 0x1000000000000000) == 0)
      {
LABEL_7:
        v15 = (v15 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_8;
      }
    }

    else if ((a5 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }

    if (v50 <= v15 >> 16)
    {
      goto LABEL_69;
    }

    v15 = String.UTF8View._foreignIndex(after:)();
LABEL_8:
    v16 = v15 >> 14;
  }

  while (v15 >> 14 != v9);
  if ((v12 & 0x8000000000000000) == 0)
  {
    return static String._fromUTF8Repairing(_:)();
  }

LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  swift_bridgeObjectRetain_n();
  Substring.UTF8View.subscript.getter();
  Substring.UTF8View.formIndex(after:)();

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type URLComponents and conformance URLComponents()
{
  result = lazy protocol witness table cache variable for type URLComponents and conformance URLComponents;
  if (!lazy protocol witness table cache variable for type URLComponents and conformance URLComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLComponents and conformance URLComponents);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLComponents and conformance URLComponents;
  if (!lazy protocol witness table cache variable for type URLComponents and conformance URLComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLComponents and conformance URLComponents);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLComponents and conformance URLComponents;
  if (!lazy protocol witness table cache variable for type URLComponents and conformance URLComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLComponents and conformance URLComponents);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLComponents and conformance URLComponents;
  if (!lazy protocol witness table cache variable for type URLComponents and conformance URLComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLComponents and conformance URLComponents);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLComponents and conformance URLComponents;
  if (!lazy protocol witness table cache variable for type URLComponents and conformance URLComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLComponents and conformance URLComponents);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URLQueryItem and conformance URLQueryItem()
{
  result = lazy protocol witness table cache variable for type URLQueryItem and conformance URLQueryItem;
  if (!lazy protocol witness table cache variable for type URLQueryItem and conformance URLQueryItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLQueryItem and conformance URLQueryItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLQueryItem and conformance URLQueryItem;
  if (!lazy protocol witness table cache variable for type URLQueryItem and conformance URLQueryItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLQueryItem and conformance URLQueryItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLQueryItem and conformance URLQueryItem;
  if (!lazy protocol witness table cache variable for type URLQueryItem and conformance URLQueryItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLQueryItem and conformance URLQueryItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLQueryItem and conformance URLQueryItem;
  if (!lazy protocol witness table cache variable for type URLQueryItem and conformance URLQueryItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLQueryItem and conformance URLQueryItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLQueryItem and conformance URLQueryItem;
  if (!lazy protocol witness table cache variable for type URLQueryItem and conformance URLQueryItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLQueryItem and conformance URLQueryItem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URLComponents.CodingKeys and conformance URLComponents.CodingKeys()
{
  result = lazy protocol witness table cache variable for type URLComponents.CodingKeys and conformance URLComponents.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLComponents.CodingKeys and conformance URLComponents.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLComponents.CodingKeys and conformance URLComponents.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLComponents.CodingKeys and conformance URLComponents.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLComponents.CodingKeys and conformance URLComponents.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLComponents.CodingKeys and conformance URLComponents.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLComponents.CodingKeys and conformance URLComponents.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLComponents.CodingKeys and conformance URLComponents.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLComponents.CodingKeys and conformance URLComponents.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLComponents.CodingKeys and conformance URLComponents.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLComponents.CodingKeys and conformance URLComponents.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLComponents.CodingKeys and conformance URLComponents.CodingKeys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for URLComponents(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

uint64_t keypath_set_144Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

unint64_t lazy protocol witness table accessor for type URLComponents.InvalidComponentError and conformance URLComponents.InvalidComponentError()
{
  result = lazy protocol witness table cache variable for type URLComponents.InvalidComponentError and conformance URLComponents.InvalidComponentError;
  if (!lazy protocol witness table cache variable for type URLComponents.InvalidComponentError and conformance URLComponents.InvalidComponentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLComponents.InvalidComponentError and conformance URLComponents.InvalidComponentError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLComponents.InvalidComponentError and conformance URLComponents.InvalidComponentError;
  if (!lazy protocol witness table cache variable for type URLComponents.InvalidComponentError and conformance URLComponents.InvalidComponentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLComponents.InvalidComponentError and conformance URLComponents.InvalidComponentError);
  }

  return result;
}

uint64_t parseStrategyForPort #1 () in static NSURLComponents._matchWith(string:requiredComponents:defaultValues:urlPtr:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (!*(result + 16))
  {
    goto LABEL_65;
  }

  v5 = result;
  result = specialized __RawDictionaryStorage.find<A>(_:)(16);
  if ((v6 & 1) == 0)
  {
    goto LABEL_65;
  }

  v7 = (*(v5 + 56) + 16 * result);
  v8 = *v7;
  v9 = v7[1];
  v10 = HIBYTE(v9) & 0xF;
  v11 = *v7 & 0xFFFFFFFFFFFFLL;
  if (!((v9 & 0x2000000000000000) != 0 ? HIBYTE(v9) & 0xF : *v7 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_65;
  }

  if ((v9 & 0x1000000000000000) != 0)
  {

    v15 = specialized _parseInteger<A, B>(ascii:radix:)(v8, v9, 10);
    v34 = v33;

    if (v34)
    {
      goto LABEL_65;
    }

LABEL_70:
    *a3 = v15;
    *(a3 + 8) = 0;
    return result;
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    v35[0] = *v7;
    v35[1] = v9 & 0xFFFFFFFFFFFFFFLL;
    if (v8 == 43)
    {
      if (v10)
      {
        v14 = v10 - 1;
        if (v10 != 1)
        {
          v15 = 0;
          v25 = v35 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v14)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_75:
      __break(1u);
      return result;
    }

    if (v8 != 45)
    {
      if (v10)
      {
        v15 = 0;
        v30 = v35;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          v32 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            break;
          }

          ++v30;
          if (!--v10)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_63;
    }

    if (v10)
    {
      v14 = v10 - 1;
      if (v10 != 1)
      {
        v15 = 0;
        v19 = v35 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          v21 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v21 - v20;
          if (__OFSUB__(v21, v20))
          {
            break;
          }

          ++v19;
          if (!--v14)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_73;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    result = (v9 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
  }

  v13 = *result;
  if (v13 == 43)
  {
    if (v11 >= 1)
    {
      v14 = v11 - 1;
      if (v11 != 1)
      {
        v15 = 0;
        if (result)
        {
          v22 = (result + 1);
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              goto LABEL_63;
            }

            v24 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              goto LABEL_63;
            }

            v15 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              goto LABEL_63;
            }

            ++v22;
            if (!--v14)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_62;
      }

      goto LABEL_63;
    }

    goto LABEL_74;
  }

  if (v13 == 45)
  {
    if (v11 >= 1)
    {
      v14 = v11 - 1;
      if (v11 != 1)
      {
        v15 = 0;
        if (result)
        {
          v16 = (result + 1);
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              goto LABEL_63;
            }

            v18 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              goto LABEL_63;
            }

            v15 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              goto LABEL_63;
            }

            ++v16;
            if (!--v14)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_62:
        LOBYTE(v14) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v11)
  {
    v15 = 0;
    if (result)
    {
      while (1)
      {
        v28 = *result - 48;
        if (v28 > 9)
        {
          goto LABEL_63;
        }

        v29 = 10 * v15;
        if ((v15 * 10) >> 64 != (10 * v15) >> 63)
        {
          goto LABEL_63;
        }

        v15 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          goto LABEL_63;
        }

        ++result;
        if (!--v11)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_63:
  v15 = 0;
  LOBYTE(v14) = 1;
LABEL_64:
  v36 = v14;
  if ((v14 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_65:
  *a3 = (a2 & 0x10) == 0;
  *(a3 + 8) = 1;
  return result;
}

id _NSSwiftURLComponents.init(url:resolvingAgainstBaseURL:)(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v6 = (*(v4 + 112))(ObjectType, v4);
  }

  else
  {
    v6 = (*(v4 + 104))(ObjectType, v4);
  }

  v8 = v6;
  v9 = v7;
  swift_unknownObjectRelease();
  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(v8, v9, 1, v17);
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(v17) == 1)
  {
    type metadata accessor for _NSSwiftURLComponents();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation13URLComponentsVSo16os_unfair_lock_sVGMd);
    v11 = swift_allocObject();
    *(v11 + 172) = 0;
    v12 = v17[7];
    *(v11 + 112) = v17[6];
    *(v11 + 128) = v12;
    *(v11 + 144) = v18[0];
    *(v11 + 154) = *(v18 + 10);
    v13 = v17[3];
    *(v11 + 48) = v17[2];
    *(v11 + 64) = v13;
    v14 = v17[5];
    *(v11 + 80) = v17[4];
    *(v11 + 96) = v14;
    v15 = v17[1];
    *(v11 + 16) = v17[0];
    *(v11 + 32) = v15;
    *&v2[OBJC_IVAR____NSSwiftURLComponents_lock] = v11;
    v16.receiver = v2;
    v16.super_class = type metadata accessor for _NSSwiftURLComponents();
    return objc_msgSendSuper2(&v16, sel_init);
  }
}

uint64_t _NSSwiftURLComponents.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of FloatingPointRoundingRule?(a1, &v34, &_sypSgMd);
  if (*(&v35 + 1))
  {
    type metadata accessor for _NSSwiftURLComponents();
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR____NSSwiftURLComponents_lock);
      os_unfair_lock_lock((v3 + 172));
      v4 = *(v3 + 128);
      v76 = *(v3 + 112);
      v77 = v4;
      v78[0] = *(v3 + 144);
      *(v78 + 10) = *(v3 + 154);
      v5 = *(v3 + 64);
      v72 = *(v3 + 48);
      v73 = v5;
      v6 = *(v3 + 96);
      v74 = *(v3 + 80);
      v75 = v6;
      v7 = *(v3 + 32);
      v70 = *(v3 + 16);
      v71 = v7;
      outlined init with copy of URLComponents(&v70, &v91);
      os_unfair_lock_unlock((v3 + 172));
      v58 = v76;
      v59 = v77;
      v60[0] = v78[0];
      *(v60 + 10) = *(v78 + 10);
      v54 = v72;
      v55 = v73;
      v56 = v74;
      v57 = v75;
      v52 = v70;
      v53 = v71;
      v8 = *(*&v32[0] + OBJC_IVAR____NSSwiftURLComponents_lock);
      os_unfair_lock_lock((v8 + 172));
      v9 = *(v8 + 128);
      v85 = *(v8 + 112);
      v86 = v9;
      v87[0] = *(v8 + 144);
      *(v87 + 10) = *(v8 + 154);
      v10 = *(v8 + 64);
      v81 = *(v8 + 48);
      v82 = v10;
      v11 = *(v8 + 96);
      v83 = *(v8 + 80);
      v84 = v11;
      v12 = *(v8 + 32);
      v79 = *(v8 + 16);
      v80 = v12;
      outlined init with copy of URLComponents(&v79, &v91);
      os_unfair_lock_unlock((v8 + 172));
      v49 = v85;
      v50 = v86;
      v51[0] = v87[0];
      *(v51 + 10) = *(v87 + 10);
      v45 = v81;
      v46 = v82;
      v47 = v83;
      v48 = v84;
      v43 = v79;
      v44 = v80;
      v13 = specialized static URLComponents.== infix(_:_:)(&v52, &v43);

      v90[0] = v49;
      v90[1] = v50;
      v90[2] = v51[0];
      *(&v90[2] + 10) = *(v51 + 10);
      *&v89[16] = v45;
      *&v89[32] = v46;
      *&v89[48] = v47;
      *&v89[64] = v48;
      v88 = v43;
      *v89 = v44;
      outlined destroy of URLComponents(&v88);
      v97 = v58;
      v98 = v59;
      v99[0] = v60[0];
      *(v99 + 10) = *(v60 + 10);
      v93 = v54;
      v94 = v55;
      v95 = v56;
      v96 = v57;
      v91 = v52;
      v92 = v53;
      outlined destroy of URLComponents(&v91);
      return v13 & 1;
    }
  }

  else
  {
    outlined destroy of TermOfAddress?(&v34, &_sypSgMd);
  }

  outlined init with copy of FloatingPointRoundingRule?(a1, v101, &_sypSgMd);
  if (!v102)
  {
    outlined destroy of TermOfAddress?(v101, &_sypSgMd);
    goto LABEL_10;
  }

  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSURLComponents);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v13 = 0;
    return v13 & 1;
  }

  v14 = v100;
  v15 = *(v1 + OBJC_IVAR____NSSwiftURLComponents_lock);
  os_unfair_lock_lock((v15 + 172));
  v16 = *(v15 + 128);
  v85 = *(v15 + 112);
  v86 = v16;
  v87[0] = *(v15 + 144);
  *(v87 + 10) = *(v15 + 154);
  v17 = *(v15 + 64);
  v81 = *(v15 + 48);
  v82 = v17;
  v18 = *(v15 + 96);
  v83 = *(v15 + 80);
  v84 = v18;
  v19 = *(v15 + 32);
  v79 = *(v15 + 16);
  v80 = v19;
  outlined init with copy of URLComponents(&v79, &v91);
  os_unfair_lock_unlock((v15 + 172));
  v76 = v85;
  v77 = v86;
  v78[0] = v87[0];
  *(v78 + 10) = *(v87 + 10);
  v72 = v81;
  v73 = v82;
  v74 = v83;
  v75 = v84;
  v70 = v79;
  v71 = v80;
  v88 = 0uLL;
  v89[0] = 0;
  memset(&v89[8], 0, 72);
  LOBYTE(v90[0]) = 1;
  memset(v90 + 8, 0, 50);
  _NSBundleDeallocatingImmortalBundle(&v88, v20);
  v67 = v90[0];
  v68 = v90[1];
  v69[0] = v90[2];
  *(v69 + 10) = *(&v90[2] + 10);
  v63 = *&v89[16];
  v64 = *&v89[32];
  v65 = *&v89[48];
  v66 = *&v89[64];
  v61 = v88;
  v62 = *v89;
  v21 = v14;
  static URLComponents._conditionallyBridgeFromObjectiveC(_:result:)(v21, &v61);
  v97 = v67;
  v98 = v68;
  v99[0] = v69[0];
  *(v99 + 10) = *(v69 + 10);
  v93 = v63;
  v94 = v64;
  v95 = v65;
  v96 = v66;
  v91 = v61;
  v92 = v62;
  result = _s10Foundation13URLComponentsV01_B0VSgWOg(&v91);
  if (result != 1)
  {
    v32[6] = v67;
    v32[7] = v68;
    v33[0] = v69[0];
    *(v33 + 10) = *(v69 + 10);
    v32[2] = v63;
    v32[3] = v64;
    v32[4] = v65;
    v32[5] = v66;
    v32[0] = v61;
    v32[1] = v62;
    v40 = v67;
    v41 = v68;
    v42[0] = v69[0];
    *(v42 + 10) = *(v69 + 10);
    v36 = v63;
    v37 = v64;
    v38 = v65;
    v39 = v66;
    v34 = v61;
    v35 = v62;
    outlined init with copy of URLComponents(&v34, &v52);
    outlined destroy of TermOfAddress?(v32, &_s10Foundation13URLComponentsVSgMd);

    v29 = v97;
    v30 = v98;
    v31[0] = v99[0];
    *(v31 + 10) = *(v99 + 10);
    v25 = v93;
    v26 = v94;
    v27 = v95;
    v28 = v96;
    v23 = v91;
    v24 = v92;
    v13 = specialized static URLComponents.== infix(_:_:)(&v70, &v23);

    v49 = v29;
    v50 = v30;
    v51[0] = v31[0];
    *(v51 + 10) = *(v31 + 10);
    v45 = v25;
    v46 = v26;
    v47 = v27;
    v48 = v28;
    v43 = v23;
    v44 = v24;
    outlined destroy of URLComponents(&v43);
    v58 = v76;
    v59 = v77;
    v60[0] = v78[0];
    *(v60 + 10) = *(v78 + 10);
    v54 = v72;
    v55 = v73;
    v56 = v74;
    v57 = v75;
    v52 = v70;
    v53 = v71;
    outlined destroy of URLComponents(&v52);
    return v13 & 1;
  }

  __break(1u);
  return result;
}

id _NSSwiftURLComponents.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____NSSwiftURLComponents_lock);
  os_unfair_lock_lock((v3 + 172));
  v4 = *(v3 + 128);
  v24 = *(v3 + 112);
  v25 = v4;
  v26[0] = *(v3 + 144);
  *(v26 + 10) = *(v3 + 154);
  v5 = *(v3 + 64);
  v20 = *(v3 + 48);
  v21 = v5;
  v6 = *(v3 + 96);
  v22 = *(v3 + 80);
  v23 = v6;
  v7 = *(v3 + 32);
  v18 = *(v3 + 16);
  v19 = v7;
  outlined init with copy of URLComponents(&v18, v17);
  os_unfair_lock_unlock((v3 + 172));
  v8 = type metadata accessor for _NSSwiftURLComponents();
  v9 = objc_allocWithZone(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation13URLComponentsVSo16os_unfair_lock_sVGMd);
  v10 = swift_allocObject();
  *(v10 + 172) = 0;
  v11 = v25;
  *(v10 + 112) = v24;
  *(v10 + 128) = v11;
  *(v10 + 144) = v26[0];
  *(v10 + 154) = *(v26 + 10);
  v12 = v21;
  *(v10 + 48) = v20;
  *(v10 + 64) = v12;
  v13 = v23;
  *(v10 + 80) = v22;
  *(v10 + 96) = v13;
  v14 = v19;
  *(v10 + 16) = v18;
  *(v10 + 32) = v14;
  *&v9[OBJC_IVAR____NSSwiftURLComponents_lock] = v10;
  v16.receiver = v9;
  v16.super_class = v8;
  result = objc_msgSendSuper2(&v16, sel_init);
  a1[3] = v8;
  *a1 = result;
  return result;
}

void _NSSwiftURLComponents.url(relativeTo:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  if (_foundation_swift_url_feature_enabled())
  {
    v6 = *&v2[OBJC_IVAR____NSSwiftURLComponents_lock];
    os_unfair_lock_lock((v6 + 172));
    v7 = *(v6 + 128);
    v46 = *(v6 + 112);
    v47 = v7;
    v48[0] = *(v6 + 144);
    *(v48 + 10) = *(v6 + 154);
    v8 = *(v6 + 64);
    v42 = *(v6 + 48);
    v43 = v8;
    v9 = *(v6 + 96);
    v44 = *(v6 + 80);
    v45 = v9;
    v10 = *(v6 + 32);
    v40 = *(v6 + 16);
    v41 = v10;
    outlined init with copy of URLComponents(&v40, v49);
    os_unfair_lock_unlock((v6 + 172));
    v37 = v46;
    v38 = v47;
    v39[0] = v48[0];
    *(v39 + 10) = *(v48 + 10);
    v33 = v42;
    v34 = v43;
    v35 = v44;
    v36 = v45;
    v31 = v40;
    v32 = v41;
    v30[0] = v5;
    v30[1] = v4;
    URLComponents.url(relativeTo:)(v30, a2);
    v49[6] = v37;
    v49[7] = v38;
    v50[0] = v39[0];
    *(v50 + 10) = *(v39 + 10);
    v49[2] = v33;
    v49[3] = v34;
    v49[4] = v35;
    v49[5] = v36;
    v49[0] = v31;
    v49[1] = v32;
    outlined destroy of URLComponents(v49);
    return;
  }

  v11 = [v2 string];
  if (!v11)
  {
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v12 = v11;
  v13 = *MEMORY[0x1E695E480];
  if (v5)
  {
    ObjectType = swift_getObjectType();
    v15 = (*(v4 + 432))(ObjectType, v4);
  }

  else
  {
    v15 = 0;
  }

  v16 = CFURLCreateWithString(v13, v12, v15);

  if (!v16)
  {
    v21 = 0;
    goto LABEL_16;
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    v22 = type metadata accessor for _BridgedURL();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v16;
    v52.receiver = v23;
    v52.super_class = v22;
    v24 = v16;
    v25 = objc_msgSendSuper2(&v52, sel_init);
LABEL_15:
    v28 = v25;
    v16 = _BridgedURL.convertingFileReference()();
    v21 = v29;

    goto LABEL_16;
  }

  type metadata accessor for _NSSwiftURL();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    v26 = type metadata accessor for _BridgedURL();
    v27 = objc_allocWithZone(v26);
    *&v27[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v16;
    v51.receiver = v27;
    v51.super_class = v26;
    v24 = v16;
    v25 = objc_msgSendSuper2(&v51, sel_init);
    goto LABEL_15;
  }

  v18 = v17;
  type metadata accessor for _BridgedNSSwiftURL();
  *(swift_allocObject() + 16) = v18;
  v19 = v16;
  v16 = _BridgedNSSwiftURL.convertingFileReference()();
  v21 = v20;

LABEL_16:
  *a2 = v16;
  a2[1] = v21;
}

id _NSSwiftURLComponents._port.getter()
{
  v1 = *(v0 + OBJC_IVAR____NSSwiftURLComponents_lock);
  os_unfair_lock_lock((v1 + 172));
  v2 = *(v1 + 128);
  v18 = *(v1 + 112);
  v19 = v2;
  v20[0] = *(v1 + 144);
  *(v20 + 10) = *(v1 + 154);
  v3 = *(v1 + 64);
  v14 = *(v1 + 48);
  v15 = v3;
  v4 = *(v1 + 96);
  v16 = *(v1 + 80);
  v17 = v4;
  v5 = *(v1 + 32);
  v12 = *(v1 + 16);
  v13 = v5;
  outlined init with copy of URLComponents(&v12, v10);
  os_unfair_lock_unlock((v1 + 172));
  v10[6] = v18;
  v10[7] = v19;
  v11[0] = v20[0];
  *(v11 + 10) = *(v20 + 10);
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  v10[5] = v17;
  v10[0] = v12;
  v10[1] = v13;
  v6 = URLComponents.port.getter();
  if (v7)
  {
    outlined destroy of URLComponents(&v12);
    return 0;
  }

  else
  {
    v9 = [objc_allocWithZone(NSNumber) initWithInteger_];
    outlined destroy of URLComponents(&v12);
    return v9;
  }
}

uint64_t closure #1 in _NSSwiftURLComponents._setPort(_:)(uint64_t a1, id a2)
{
  if (a2)
  {
    result = [a2 integerValue];
    *(a1 + 8) = 0;
    *(a1 + 13) = 0;
    if (result < 0)
    {
      lazy protocol witness table accessor for type URLComponents.InvalidComponentError and conformance URLComponents.InvalidComponentError();
      swift_allocError();
      *v5 = 4;
      return swift_willThrow();
    }
  }

  else
  {
    result = 0;
    *(a1 + 8) = 0;
    *(a1 + 13) = 0;
  }

  *(a1 + 88) = result;
  *(a1 + 96) = a2 == 0;
  return result;
}

uint64_t closure #1 in _NSSwiftURLComponents._setPercentEncodedUser(_:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
  if (!a3)
  {
    goto LABEL_8;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v15 = a2;
    v16 = a3;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v9 = String._bridgeToObjectiveCImpl()();

    v10 = [v9 _fastCharacterContents];
    v11 = v9;
    if (v10)
    {
      StringProtocol._ephemeralString.getter();
      v12 = String._bridgeToObjectiveCImpl()();

      v13 = [v12 length];
      swift_unknownObjectRelease();
      if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v10, v13, 2u, 1))
      {
        goto LABEL_11;
      }
    }

    else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(a2, a3, 2u, 1) & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_8:

    *(a1 + 40) = a2;
    *(a1 + 48) = a3;
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a3) & 0xF;
    v15 = a2;
    v16 = a3 & 0xFFFFFFFFFFFFFFLL;
    v6 = &v15;
  }

  else if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a2 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = _StringObject.sharedUTF8.getter();
  }

  if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v6, v7, 2u, 1))
  {
    goto LABEL_8;
  }

LABEL_11:
  lazy protocol witness table accessor for type URLComponents.InvalidComponentError and conformance URLComponents.InvalidComponentError();
  swift_allocError();
  *v14 = 1;
  return swift_willThrow();
}

uint64_t _NSSwiftURLComponents._percentEncodedPassword.getter()
{
  v1 = *(v0 + OBJC_IVAR____NSSwiftURLComponents_lock);
  os_unfair_lock_lock((v1 + 172));
  v2 = *(v1 + 128);
  v14 = *(v1 + 112);
  v15 = v2;
  v16[0] = *(v1 + 144);
  *(v16 + 10) = *(v1 + 154);
  v3 = *(v1 + 64);
  v10[2] = *(v1 + 48);
  v11 = v3;
  v4 = *(v1 + 96);
  v12 = *(v1 + 80);
  v13 = v4;
  v5 = *(v1 + 32);
  v10[0] = *(v1 + 16);
  v10[1] = v5;
  outlined init with copy of URLComponents(v10, &v9);
  os_unfair_lock_unlock((v1 + 172));
  if (v12)
  {
    v6 = *(&v11 + 1);
  }

  else if ((BYTE11(v10[0]) & 1) != 0 && *&v10[0] && (*(*&v10[0] + 96) & 1) == 0)
  {
    v8 = String.subscript.getter();
    v6 = MEMORY[0x1865CAE80](v8);
  }

  else
  {
    v6 = 0;
  }

  outlined destroy of URLComponents(v10);
  return v6;
}

uint64_t closure #1 in _NSSwiftURLComponents._setPercentEncodedPassword(_:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 11) = 0;
  if (!a3)
  {
    goto LABEL_8;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v15 = a2;
    v16 = a3;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v9 = String._bridgeToObjectiveCImpl()();

    v10 = [v9 _fastCharacterContents];
    v11 = v9;
    if (v10)
    {
      StringProtocol._ephemeralString.getter();
      v12 = String._bridgeToObjectiveCImpl()();

      v13 = [v12 length];
      swift_unknownObjectRelease();
      if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v10, v13, 2u, 1))
      {
        goto LABEL_11;
      }
    }

    else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(a2, a3, 2u, 1) & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_8:

    *(a1 + 56) = a2;
    *(a1 + 64) = a3;
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a3) & 0xF;
    v15 = a2;
    v16 = a3 & 0xFFFFFFFFFFFFFFLL;
    v6 = &v15;
  }

  else if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a2 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = _StringObject.sharedUTF8.getter();
  }

  if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v6, v7, 2u, 1))
  {
    goto LABEL_8;
  }

LABEL_11:
  lazy protocol witness table accessor for type URLComponents.InvalidComponentError and conformance URLComponents.InvalidComponentError();
  swift_allocError();
  *v14 = 2;
  return swift_willThrow();
}

id @objc _NSSwiftURLComponents.query.getter(char *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, void, void, void, void, void, void, void, void, void))
{
  v4 = *&a1[OBJC_IVAR____NSSwiftURLComponents_lock];
  v5 = a1;
  os_unfair_lock_lock((v4 + 172));
  v6 = *(v4 + 128);
  v30 = *(v4 + 112);
  v31 = v6;
  v32[0] = *(v4 + 144);
  *(v32 + 10) = *(v4 + 154);
  v7 = *(v4 + 64);
  v26 = *(v4 + 48);
  v27 = v7;
  v8 = *(v4 + 96);
  v28 = *(v4 + 80);
  v29 = v8;
  v9 = *(v4 + 32);
  v24 = *(v4 + 16);
  v25 = v9;
  outlined init with copy of URLComponents(&v24, v22);
  os_unfair_lock_unlock((v4 + 172));
  v22[6] = v30;
  v22[7] = v31;
  v23[0] = v32[0];
  *(v23 + 10) = *(v32 + 10);
  a3(v10, v11, v12, v13, v14, v15, v16, v17, v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1));
  v19 = v18;
  outlined destroy of URLComponents(&v24);

  if (v19)
  {
    v20 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t closure #1 in _NSSwiftURLComponents._setPercentEncodedHost(_:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 152) = 0;
  if (!a3)
  {

    *(a1 + 72) = a2;
    *(a1 + 80) = 0;
    return result;
  }

  if (_s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(a2, a3))
  {
    v6 = _s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(a2, a3);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_19:
    lazy protocol witness table accessor for type URLComponents.InvalidComponentError and conformance URLComponents.InvalidComponentError();
    swift_allocError();
    *v14 = 3;
    return swift_willThrow();
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v27 = String._bridgeToObjectiveCImpl()();

    v28 = [v27 _fastCharacterContents];
    v29 = v27;
    if (v28)
    {
      StringProtocol._ephemeralString.getter();
      v30 = String._bridgeToObjectiveCImpl()();

      v31 = [v30 length];
      swift_unknownObjectRelease();
      v6 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v28, v31, 4u, 1);
      if ((v6 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v6 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(a2, a3, 4u, 1);
      if ((v6 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(a3) & 0xF;
      v35 = a2;
      v36 = a3 & 0xFFFFFFFFFFFFFFLL;
      v12 = &v35;
    }

    else if ((a2 & 0x1000000000000000) != 0)
    {
      v12 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v13 = a2 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = _StringObject.sharedUTF8.getter();
    }

    v6 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v12, v13, 4u, 1);
    if ((v6 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_4:
  LOBYTE(v35) = 37;
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v35;
  v7 = specialized Sequence.contains(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, v33, a2, a3);
  *(a1 + 152) = v7 & 1;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(a1 + 24);
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = 0;
    if (*(a1 + 9))
    {
      if (*a1 && (*(*a1 + 48) & 1) == 0)
      {
        v15 = String.subscript.getter();
        v9 = MEMORY[0x1865CAE80](v15);
        v10 = v16;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }
  }

  v17 = _s10Foundation13RFC3986ParserV23shouldPercentEncodeHost_9forSchemeSbx_q_SgtSyRzSyR_r0_lFZSS_SSTt1g5(a2, a3, v9, v10);

  if ((v17 & 1) != 0 || (v7 & 1) == 0)
  {

    *(a1 + 72) = a2;
    *(a1 + 80) = a3;
    return result;
  }

  v19 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v19 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    return URLComponents._URLComponents.host.setter(v25, v26);
  }

  v35 = a2;
  v36 = a3;
  MEMORY[0x1EEE9AC00](v18);
  v33[0] = &v35;
  v33[1] = MEMORY[0x1E69E7CD0];
  v34 = 4;

  v20 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(partial apply for specialized closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:), &v32, a2, a3);
  if (v21 == 1)
  {
    v22 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(a2, a3, MEMORY[0x1E69E7CD0], 4);
    v24 = v23;
  }

  else
  {
    v24 = v21;
    v22 = v20;
  }

  if (v24)
  {
    v26 = v24;
    v25 = v22;
    return URLComponents._URLComponents.host.setter(v25, v26);
  }

  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
  *(a1 + 153) = 1;
  return result;
}

uint64_t closure #1 in _NSSwiftURLComponents._setEncodedHost(_:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 152) = 0;
  if (a3)
  {
    if (_s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(a2, a3))
    {
      if (_s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(a2, a3))
      {
LABEL_4:

        *(a1 + 72) = a2;
        *(a1 + 80) = a3;
        LOBYTE(v17[0]) = 37;
        MEMORY[0x1EEE9AC00](v6);
        v16[2] = v17;
        result = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v16, a2, a3);
        *(a1 + 152) = result & 1;
        return result;
      }
    }

    else if ((a3 & 0x1000000000000000) != 0)
    {
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v11 = String._bridgeToObjectiveCImpl()();

      v12 = [v11 _fastCharacterContents];
      v13 = v11;
      if (v12)
      {
        StringProtocol._ephemeralString.getter();
        v14 = String._bridgeToObjectiveCImpl()();

        v15 = [v14 length];
        swift_unknownObjectRelease();
        if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v12, v15, 4u, 1))
        {
          goto LABEL_4;
        }
      }

      else if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(a2, a3, 4u, 1))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if ((a3 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(a3) & 0xF;
        v17[0] = a2;
        v17[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17;
      }

      else if ((a2 & 0x1000000000000000) != 0)
      {
        v8 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v9 = a2 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = _StringObject.sharedUTF8.getter();
      }

      if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v8, v9, 4u, 1))
      {
        goto LABEL_4;
      }
    }

    lazy protocol witness table accessor for type URLComponents.InvalidComponentError and conformance URLComponents.InvalidComponentError();
    swift_allocError();
    *v10 = 3;
    return swift_willThrow();
  }

  else
  {

    *(a1 + 72) = a2;
    *(a1 + 80) = 0;
  }

  return result;
}

id @objc _NSSwiftURLComponents.description.getter(char *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, void, void, void, void, void, void, void, void, void))
{
  v4 = *&a1[OBJC_IVAR____NSSwiftURLComponents_lock];
  v5 = a1;
  os_unfair_lock_lock((v4 + 172));
  v6 = *(v4 + 128);
  v28 = *(v4 + 112);
  v29 = v6;
  v30[0] = *(v4 + 144);
  *(v30 + 10) = *(v4 + 154);
  v7 = *(v4 + 64);
  v24 = *(v4 + 48);
  v25 = v7;
  v8 = *(v4 + 96);
  v26 = *(v4 + 80);
  v27 = v8;
  v9 = *(v4 + 32);
  v22 = *(v4 + 16);
  v23 = v9;
  outlined init with copy of URLComponents(&v22, v20);
  os_unfair_lock_unlock((v4 + 172));
  v20[6] = v28;
  v20[7] = v29;
  v21[0] = v30[0];
  *(v21 + 10) = *(v30 + 10);
  a3(v10, v11, v12, v13, v14, v15, v16, v17, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1));
  outlined destroy of URLComponents(&v22);

  v18 = String._bridgeToObjectiveCImpl()();

  return v18;
}

uint64_t closure #1 in _NSSwiftURLComponents._setPercentEncodedPath(_:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  *(a1 + 8) = 0;
  *(a1 + 14) = 0;
  if ((v5 & 0x1000000000000000) != 0)
  {
    lazy protocol witness table accessor for type String and conformance String();

    StringProtocol._ephemeralString.getter();
    v10 = String._bridgeToObjectiveCImpl()();

    v11 = [v10 _fastCharacterContents];
    v12 = v10;
    if (v11)
    {
      StringProtocol._ephemeralString.getter();
      v13 = String._bridgeToObjectiveCImpl()();

      v14 = [v13 length];
      swift_unknownObjectRelease();
      if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v11, v14, 0x10u, 1))
      {
        goto LABEL_16;
      }
    }

    else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v4, v5, 0x10u, 1) & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_13:

    *(a1 + 104) = v4;
    *(a1 + 112) = v5;
    return result;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v5) & 0xF;
    v16[0] = v4;
    v16[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    v6 = v16;
  }

  else if ((v4 & 0x1000000000000000) != 0)
  {
    v6 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = _StringObject.sharedUTF8.getter();
  }

  v8 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v6, v7, 0x10u, 1);

  if (v8)
  {
    goto LABEL_13;
  }

LABEL_16:
  lazy protocol witness table accessor for type URLComponents.InvalidComponentError and conformance URLComponents.InvalidComponentError();
  swift_allocError();
  *v15 = 5;
  swift_willThrow();
}

uint64_t _NSSwiftURLComponents._percentEncodedQuery.getter()
{
  v1 = *(v0 + OBJC_IVAR____NSSwiftURLComponents_lock);
  os_unfair_lock_lock((v1 + 172));
  v2 = *(v1 + 128);
  v10[6] = *(v1 + 112);
  v11 = v2;
  v12[0] = *(v1 + 144);
  *(v12 + 10) = *(v1 + 154);
  v3 = *(v1 + 64);
  v10[2] = *(v1 + 48);
  v10[3] = v3;
  v4 = *(v1 + 96);
  v10[4] = *(v1 + 80);
  v10[5] = v4;
  v5 = *(v1 + 32);
  v10[0] = *(v1 + 16);
  v10[1] = v5;
  outlined init with copy of URLComponents(v10, &v9);
  os_unfair_lock_unlock((v1 + 172));
  if (*&v12[0])
  {
    v6 = *(&v11 + 1);
  }

  else if ((HIBYTE(v10[0]) & 1) != 0 && *&v10[0] && (*(*&v10[0] + 192) & 1) == 0)
  {
    v8 = String.subscript.getter();
    v6 = MEMORY[0x1865CAE80](v8);
  }

  else
  {
    v6 = 0;
  }

  outlined destroy of URLComponents(v10);
  return v6;
}

uint64_t closure #1 in _NSSwiftURLComponents._setPercentEncodedQuery(_:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 15) = 0;
  if (!a3)
  {
    goto LABEL_8;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v15 = a2;
    v16 = a3;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v9 = String._bridgeToObjectiveCImpl()();

    v10 = [v9 _fastCharacterContents];
    v11 = v9;
    if (v10)
    {
      StringProtocol._ephemeralString.getter();
      v12 = String._bridgeToObjectiveCImpl()();

      v13 = [v12 length];
      swift_unknownObjectRelease();
      if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v10, v13, 0x40u, 1))
      {
        goto LABEL_11;
      }
    }

    else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(a2, a3, 0x40u, 1) & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_8:

    *(a1 + 120) = a2;
    *(a1 + 128) = a3;
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a3) & 0xF;
    v15 = a2;
    v16 = a3 & 0xFFFFFFFFFFFFFFLL;
    v6 = &v15;
  }

  else if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a2 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = _StringObject.sharedUTF8.getter();
  }

  if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v6, v7, 0x40u, 1))
  {
    goto LABEL_8;
  }

LABEL_11:
  lazy protocol witness table accessor for type URLComponents.InvalidComponentError and conformance URLComponents.InvalidComponentError();
  swift_allocError();
  *v14 = 6;
  return swift_willThrow();
}

uint64_t _NSSwiftURLComponents._percentEncodedFragment.getter()
{
  v1 = *(v0 + OBJC_IVAR____NSSwiftURLComponents_lock);
  os_unfair_lock_lock((v1 + 172));
  v2 = *(v1 + 128);
  v16 = *(v1 + 112);
  v17 = v2;
  *v18 = *(v1 + 144);
  *&v18[10] = *(v1 + 154);
  v3 = *(v1 + 64);
  v12 = *(v1 + 48);
  v13 = v3;
  v4 = *(v1 + 96);
  v14 = *(v1 + 80);
  v15 = v4;
  v5 = *(v1 + 32);
  v10 = *(v1 + 16);
  v11 = v5;
  outlined init with copy of URLComponents(&v10, &v9);
  os_unfair_lock_unlock((v1 + 172));
  if (*&v18[16])
  {
    v6 = *&v18[8];
  }

  else if ((v11 & 1) != 0 && v10 && (*(v10 + 216) & 1) == 0)
  {
    v8 = String.subscript.getter();
    v6 = MEMORY[0x1865CAE80](v8);
  }

  else
  {
    v6 = 0;
  }

  outlined destroy of URLComponents(&v10);
  return v6;
}

uint64_t closure #1 in _NSSwiftURLComponents._setPercentEncodedFragment(_:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (!a3)
  {
    goto LABEL_8;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v15 = a2;
    v16 = a3;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v9 = String._bridgeToObjectiveCImpl()();

    v10 = [v9 _fastCharacterContents];
    v11 = v9;
    if (v10)
    {
      StringProtocol._ephemeralString.getter();
      v12 = String._bridgeToObjectiveCImpl()();

      v13 = [v12 length];
      swift_unknownObjectRelease();
      if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v10, v13, 0x40u, 1))
      {
        goto LABEL_11;
      }
    }

    else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(a2, a3, 0x40u, 1) & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_8:

    *(a1 + 136) = a2;
    *(a1 + 144) = a3;
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a3) & 0xF;
    v15 = a2;
    v16 = a3 & 0xFFFFFFFFFFFFFFLL;
    v6 = &v15;
  }

  else if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a2 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = _StringObject.sharedUTF8.getter();
  }

  if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v6, v7, 0x40u, 1))
  {
    goto LABEL_8;
  }

LABEL_11:
  lazy protocol witness table accessor for type URLComponents.InvalidComponentError and conformance URLComponents.InvalidComponentError();
  swift_allocError();
  *v14 = 8;
  return swift_willThrow();
}

uint64_t _NSSwiftURLComponents.rangeOfScheme.getter()
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *&v0[OBJC_IVAR____NSSwiftURLComponents_lock];
  os_unfair_lock_lock((v1 + 172));
  v2 = *(v1 + 128);
  v32 = *(v1 + 112);
  v33 = v2;
  v34[0] = *(v1 + 144);
  *(v34 + 10) = *(v1 + 154);
  v3 = *(v1 + 64);
  v28 = *(v1 + 48);
  v29 = v3;
  v4 = *(v1 + 96);
  v30 = *(v1 + 80);
  v31 = v4;
  v5 = *(v1 + 32);
  v26 = *(v1 + 16);
  v27 = v5;
  outlined init with copy of URLComponents(&v26, v24);
  os_unfair_lock_unlock((v1 + 172));
  v24[6] = v32;
  v24[7] = v33;
  v25[0] = v34[0];
  *(v25 + 10) = *(v34 + 10);
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v24[5] = v31;
  v24[0] = v26;
  v24[1] = v27;
  if (v26)
  {
    if (BYTE8(v26))
    {
      v6 = *(v26 + 48);
      goto LABEL_9;
    }
  }

  else if (BYTE8(v26))
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v7 = URLComponents._URLComponents.computedString.getter();
  if (!v8)
  {
    goto LABEL_8;
  }

  v6 = 1;
  v9 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(v7, v8, 1, 0);

  if (v9)
  {
    v6 = *(v9 + 48);
  }

LABEL_9:
  outlined destroy of URLComponents(&v26);
  v10 = [v0 string];
  if (!v10)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v10;
  isTaggedPointer = _objc_isTaggedPointer(v10);
  v13 = v11;
  v14 = v13;
  if (!isTaggedPointer)
  {
    goto LABEL_16;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v13);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_26;
    case 0x16:
      result = [v14 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      String.init(utf8String:)(result);
      if (v19)
      {
LABEL_27:

        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_26:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v20)
      {
        [v14 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();

        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      if (v6)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
  }

LABEL_16:
  if (__CFStringIsCF())
  {

    goto LABEL_21;
  }

  v16 = v14;
  String.init(_nativeStorage:)();
  if (v17)
  {

    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  if (![v16 length])
  {

LABEL_21:
    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  String.init(_cocoaString:)();

  if (v6)
  {
LABEL_35:

    return 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_28:
  lazy protocol witness table accessor for type String and conformance String();
  v21 = StringProtocol._toUTF16Offsets(_:)();
  v23 = v22;

  if (__OFSUB__(v23, v21))
  {
    __break(1u);
  }

  return v21;
}

uint64_t _NSSwiftURLComponents.rangeOfUser.getter()
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *&v0[OBJC_IVAR____NSSwiftURLComponents_lock];
  os_unfair_lock_lock((v1 + 172));
  v2 = *(v1 + 128);
  v32 = *(v1 + 112);
  v33 = v2;
  v34[0] = *(v1 + 144);
  *(v34 + 10) = *(v1 + 154);
  v3 = *(v1 + 64);
  v28 = *(v1 + 48);
  v29 = v3;
  v4 = *(v1 + 96);
  v30 = *(v1 + 80);
  v31 = v4;
  v5 = *(v1 + 32);
  v26 = *(v1 + 16);
  v27 = v5;
  outlined init with copy of URLComponents(&v26, v24);
  os_unfair_lock_unlock((v1 + 172));
  v24[6] = v32;
  v24[7] = v33;
  v25[0] = v34[0];
  *(v25 + 10) = *(v34 + 10);
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v24[5] = v31;
  v24[0] = v26;
  v24[1] = v27;
  if (v26)
  {
    if (BYTE8(v26))
    {
      v6 = *(v26 + 72);
      goto LABEL_9;
    }
  }

  else if (BYTE8(v26))
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v7 = URLComponents._URLComponents.computedString.getter();
  if (!v8)
  {
    goto LABEL_8;
  }

  v6 = 1;
  v9 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(v7, v8, 1, 0);

  if (v9)
  {
    v6 = *(v9 + 72);
  }

LABEL_9:
  outlined destroy of URLComponents(&v26);
  v10 = [v0 string];
  if (!v10)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v10;
  isTaggedPointer = _objc_isTaggedPointer(v10);
  v13 = v11;
  v14 = v13;
  if (!isTaggedPointer)
  {
    goto LABEL_16;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v13);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_26;
    case 0x16:
      result = [v14 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      String.init(utf8String:)(result);
      if (v19)
      {
LABEL_27:

        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_26:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v20)
      {
        [v14 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();

        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      if (v6)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
  }

LABEL_16:
  if (__CFStringIsCF())
  {

    goto LABEL_21;
  }

  v16 = v14;
  String.init(_nativeStorage:)();
  if (v17)
  {

    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  if (![v16 length])
  {

LABEL_21:
    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  String.init(_cocoaString:)();

  if (v6)
  {
LABEL_35:

    return 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_28:
  lazy protocol witness table accessor for type String and conformance String();
  v21 = StringProtocol._toUTF16Offsets(_:)();
  v23 = v22;

  if (__OFSUB__(v23, v21))
  {
    __break(1u);
  }

  return v21;
}

uint64_t _NSSwiftURLComponents.rangeOfPassword.getter()
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *&v0[OBJC_IVAR____NSSwiftURLComponents_lock];
  os_unfair_lock_lock((v1 + 172));
  v2 = *(v1 + 128);
  v32 = *(v1 + 112);
  v33 = v2;
  v34[0] = *(v1 + 144);
  *(v34 + 10) = *(v1 + 154);
  v3 = *(v1 + 64);
  v28 = *(v1 + 48);
  v29 = v3;
  v4 = *(v1 + 96);
  v30 = *(v1 + 80);
  v31 = v4;
  v5 = *(v1 + 32);
  v26 = *(v1 + 16);
  v27 = v5;
  outlined init with copy of URLComponents(&v26, v24);
  os_unfair_lock_unlock((v1 + 172));
  v24[6] = v32;
  v24[7] = v33;
  v25[0] = v34[0];
  *(v25 + 10) = *(v34 + 10);
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v24[5] = v31;
  v24[0] = v26;
  v24[1] = v27;
  if (v26)
  {
    if (BYTE8(v26))
    {
      v6 = *(v26 + 96);
      goto LABEL_9;
    }
  }

  else if (BYTE8(v26))
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v7 = URLComponents._URLComponents.computedString.getter();
  if (!v8)
  {
    goto LABEL_8;
  }

  v6 = 1;
  v9 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(v7, v8, 1, 0);

  if (v9)
  {
    v6 = *(v9 + 96);
  }

LABEL_9:
  outlined destroy of URLComponents(&v26);
  v10 = [v0 string];
  if (!v10)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v10;
  isTaggedPointer = _objc_isTaggedPointer(v10);
  v13 = v11;
  v14 = v13;
  if (!isTaggedPointer)
  {
    goto LABEL_16;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v13);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_26;
    case 0x16:
      result = [v14 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      String.init(utf8String:)(result);
      if (v19)
      {
LABEL_27:

        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_26:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v20)
      {
        [v14 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();

        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      if (v6)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
  }

LABEL_16:
  if (__CFStringIsCF())
  {

    goto LABEL_21;
  }

  v16 = v14;
  String.init(_nativeStorage:)();
  if (v17)
  {

    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  if (![v16 length])
  {

LABEL_21:
    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  String.init(_cocoaString:)();

  if (v6)
  {
LABEL_35:

    return 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_28:
  lazy protocol witness table accessor for type String and conformance String();
  v21 = StringProtocol._toUTF16Offsets(_:)();
  v23 = v22;

  if (__OFSUB__(v23, v21))
  {
    __break(1u);
  }

  return v21;
}

uint64_t _NSSwiftURLComponents.rangeOfHost.getter()
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *&v0[OBJC_IVAR____NSSwiftURLComponents_lock];
  os_unfair_lock_lock((v1 + 172));
  v2 = *(v1 + 128);
  v32 = *(v1 + 112);
  v33 = v2;
  v34[0] = *(v1 + 144);
  *(v34 + 10) = *(v1 + 154);
  v3 = *(v1 + 64);
  v28 = *(v1 + 48);
  v29 = v3;
  v4 = *(v1 + 96);
  v30 = *(v1 + 80);
  v31 = v4;
  v5 = *(v1 + 32);
  v26 = *(v1 + 16);
  v27 = v5;
  outlined init with copy of URLComponents(&v26, v24);
  os_unfair_lock_unlock((v1 + 172));
  v24[6] = v32;
  v24[7] = v33;
  v25[0] = v34[0];
  *(v25 + 10) = *(v34 + 10);
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v24[5] = v31;
  v24[0] = v26;
  v24[1] = v27;
  if (v26)
  {
    if (BYTE8(v26))
    {
      v6 = *(v26 + 120);
      goto LABEL_9;
    }
  }

  else if (BYTE8(v26))
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v7 = URLComponents._URLComponents.computedString.getter();
  if (!v8)
  {
    goto LABEL_8;
  }

  v6 = 1;
  v9 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(v7, v8, 1, 0);

  if (v9)
  {
    v6 = *(v9 + 120);
  }

LABEL_9:
  outlined destroy of URLComponents(&v26);
  v10 = [v0 string];
  if (!v10)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v10;
  isTaggedPointer = _objc_isTaggedPointer(v10);
  v13 = v11;
  v14 = v13;
  if (!isTaggedPointer)
  {
    goto LABEL_16;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v13);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_26;
    case 0x16:
      result = [v14 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      String.init(utf8String:)(result);
      if (v19)
      {
LABEL_27:

        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_26:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v20)
      {
        [v14 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();

        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      if (v6)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
  }

LABEL_16:
  if (__CFStringIsCF())
  {

    goto LABEL_21;
  }

  v16 = v14;
  String.init(_nativeStorage:)();
  if (v17)
  {

    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  if (![v16 length])
  {

LABEL_21:
    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  String.init(_cocoaString:)();

  if (v6)
  {
LABEL_35:

    return 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_28:
  lazy protocol witness table accessor for type String and conformance String();
  v21 = StringProtocol._toUTF16Offsets(_:)();
  v23 = v22;

  if (__OFSUB__(v23, v21))
  {
    __break(1u);
  }

  return v21;
}

uint64_t _NSSwiftURLComponents.rangeOfPort.getter()
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *&v0[OBJC_IVAR____NSSwiftURLComponents_lock];
  os_unfair_lock_lock((v1 + 172));
  v2 = *(v1 + 128);
  v32 = *(v1 + 112);
  v33 = v2;
  v34[0] = *(v1 + 144);
  *(v34 + 10) = *(v1 + 154);
  v3 = *(v1 + 64);
  v28 = *(v1 + 48);
  v29 = v3;
  v4 = *(v1 + 96);
  v30 = *(v1 + 80);
  v31 = v4;
  v5 = *(v1 + 32);
  v26 = *(v1 + 16);
  v27 = v5;
  outlined init with copy of URLComponents(&v26, v24);
  os_unfair_lock_unlock((v1 + 172));
  v24[6] = v32;
  v24[7] = v33;
  v25[0] = v34[0];
  *(v25 + 10) = *(v34 + 10);
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v24[5] = v31;
  v24[0] = v26;
  v24[1] = v27;
  if (v26)
  {
    if (BYTE8(v26))
    {
      v6 = *(v26 + 144);
      goto LABEL_9;
    }
  }

  else if (BYTE8(v26))
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v7 = URLComponents._URLComponents.computedString.getter();
  if (!v8)
  {
    goto LABEL_8;
  }

  v6 = 1;
  v9 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(v7, v8, 1, 0);

  if (v9)
  {
    v6 = *(v9 + 144);
  }

LABEL_9:
  outlined destroy of URLComponents(&v26);
  v10 = [v0 string];
  if (!v10)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v10;
  isTaggedPointer = _objc_isTaggedPointer(v10);
  v13 = v11;
  v14 = v13;
  if (!isTaggedPointer)
  {
    goto LABEL_16;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v13);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_26;
    case 0x16:
      result = [v14 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      String.init(utf8String:)(result);
      if (v19)
      {
LABEL_27:

        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_26:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v20)
      {
        [v14 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();

        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      if (v6)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
  }

LABEL_16:
  if (__CFStringIsCF())
  {

    goto LABEL_21;
  }

  v16 = v14;
  String.init(_nativeStorage:)();
  if (v17)
  {

    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  if (![v16 length])
  {

LABEL_21:
    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  String.init(_cocoaString:)();

  if (v6)
  {
LABEL_35:

    return 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_28:
  lazy protocol witness table accessor for type String and conformance String();
  v21 = StringProtocol._toUTF16Offsets(_:)();
  v23 = v22;

  if (__OFSUB__(v23, v21))
  {
    __break(1u);
  }

  return v21;
}

uint64_t _NSSwiftURLComponents.rangeOfFragment.getter()
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *&v0[OBJC_IVAR____NSSwiftURLComponents_lock];
  os_unfair_lock_lock((v1 + 172));
  v2 = *(v1 + 128);
  v32 = *(v1 + 112);
  v33 = v2;
  v34[0] = *(v1 + 144);
  *(v34 + 10) = *(v1 + 154);
  v3 = *(v1 + 64);
  v28 = *(v1 + 48);
  v29 = v3;
  v4 = *(v1 + 96);
  v30 = *(v1 + 80);
  v31 = v4;
  v5 = *(v1 + 32);
  v26 = *(v1 + 16);
  v27 = v5;
  outlined init with copy of URLComponents(&v26, v24);
  os_unfair_lock_unlock((v1 + 172));
  v24[6] = v32;
  v24[7] = v33;
  v25[0] = v34[0];
  *(v25 + 10) = *(v34 + 10);
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v24[5] = v31;
  v24[0] = v26;
  v24[1] = v27;
  if (v26)
  {
    if (BYTE8(v26))
    {
      v6 = *(v26 + 216);
      goto LABEL_9;
    }
  }

  else if (BYTE8(v26))
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v7 = URLComponents._URLComponents.computedString.getter();
  if (!v8)
  {
    goto LABEL_8;
  }

  v6 = 1;
  v9 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(v7, v8, 1, 0);

  if (v9)
  {
    v6 = *(v9 + 216);
  }

LABEL_9:
  outlined destroy of URLComponents(&v26);
  v10 = [v0 string];
  if (!v10)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v10;
  isTaggedPointer = _objc_isTaggedPointer(v10);
  v13 = v11;
  v14 = v13;
  if (!isTaggedPointer)
  {
    goto LABEL_16;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v13);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_26;
    case 0x16:
      result = [v14 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      String.init(utf8String:)(result);
      if (v19)
      {
LABEL_27:

        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_26:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v20)
      {
        [v14 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();

        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      if (v6)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
  }

LABEL_16:
  if (__CFStringIsCF())
  {

    goto LABEL_21;
  }

  v16 = v14;
  String.init(_nativeStorage:)();
  if (v17)
  {

    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  if (![v16 length])
  {

LABEL_21:
    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  String.init(_cocoaString:)();

  if (v6)
  {
LABEL_35:

    return 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_28:
  lazy protocol witness table accessor for type String and conformance String();
  v21 = StringProtocol._toUTF16Offsets(_:)();
  v23 = v22;

  if (__OFSUB__(v23, v21))
  {
    __break(1u);
  }

  return v21;
}

id _NSSwiftURLComponents.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _NSSwiftURLComponents();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _NSSwiftURLQueryItem.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of FloatingPointRoundingRule?(a1, v18, &_sypSgMd);
  if (v19)
  {
    if (swift_dynamicCast())
    {
      v4 = *(v1 + OBJC_IVAR____NSSwiftURLQueryItem_queryItem + 16);
      v3 = *(v1 + OBJC_IVAR____NSSwiftURLQueryItem_queryItem + 24);
      v6 = *&v17[OBJC_IVAR____NSSwiftURLQueryItem_queryItem + 16];
      v5 = *&v17[OBJC_IVAR____NSSwiftURLQueryItem_queryItem + 24];
      v7 = *(v1 + OBJC_IVAR____NSSwiftURLQueryItem_queryItem) == *&v17[OBJC_IVAR____NSSwiftURLQueryItem_queryItem] && *(v1 + OBJC_IVAR____NSSwiftURLQueryItem_queryItem + 8) == *&v17[OBJC_IVAR____NSSwiftURLQueryItem_queryItem + 8];
      if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
LABEL_27:

        goto LABEL_36;
      }

      if (v3)
      {
        if (v5)
        {
          if (v4 == v6 && v3 == v5)
          {

            v9 = 1;
          }

          else
          {
            v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          return v9 & 1;
        }

        goto LABEL_27;
      }

      if (v5)
      {

        goto LABEL_36;
      }

LABEL_42:

      v9 = 1;
      return v9 & 1;
    }
  }

  else
  {
    outlined destroy of TermOfAddress?(v18, &_sypSgMd);
  }

  outlined init with copy of FloatingPointRoundingRule?(a1, v18, &_sypSgMd);
  if (!v19)
  {
    outlined destroy of TermOfAddress?(v18, &_sypSgMd);
    goto LABEL_36;
  }

  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSURLQueryItem);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v9 = 0;
    return v9 & 1;
  }

  v11 = *(v1 + OBJC_IVAR____NSSwiftURLQueryItem_queryItem);
  v10 = *(v1 + OBJC_IVAR____NSSwiftURLQueryItem_queryItem + 8);
  v13 = *(v1 + OBJC_IVAR____NSSwiftURLQueryItem_queryItem + 16);
  v12 = *(v1 + OBJC_IVAR____NSSwiftURLQueryItem_queryItem + 24);
  static URLQueryItem._unconditionallyBridgeFromObjectiveC(_:)(v17, v18);
  v15 = v18[2];
  v14 = v19;
  if ((v11 != v18[0] || v10 != v18[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    goto LABEL_33;
  }

  if (!v12)
  {

    if (!v14)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_42;
    }

LABEL_33:

    goto LABEL_36;
  }

  if (!v14)
  {

    goto LABEL_36;
  }

  if (v13 == v15 && v12 == v14)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t @objc _NSSwiftURLComponents.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  outlined destroy of TermOfAddress?(v10, &_sypSgMd);
  return v8 & 1;
}

void _NSSwiftURLQueryItem.copy(with:)(void *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v6 = *(v2 + OBJC_IVAR____NSSwiftURLQueryItem_queryItem);
  v5 = *(v2 + OBJC_IVAR____NSSwiftURLQueryItem_queryItem + 8);
  v8 = *(v2 + OBJC_IVAR____NSSwiftURLQueryItem_queryItem + 16);
  v7 = *(v2 + OBJC_IVAR____NSSwiftURLQueryItem_queryItem + 24);
  v9 = objc_allocWithZone(ObjectType);
  v10 = &v9[OBJC_IVAR____NSSwiftURLQueryItem_queryItem];
  *v10 = v6;
  *(v10 + 1) = v5;
  *(v10 + 2) = v8;
  *(v10 + 3) = v7;
  v11 = String._bridgeToObjectiveCImpl()();
  if (v7)
  {
    v12 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v12 = 0;
  }

  v14.receiver = v9;
  v14.super_class = ObjectType;

  v13 = objc_msgSendSuper2(&v14, sel_initWithName_value_, v11, v12);
  swift_unknownObjectRelease();

  a1[3] = ObjectType;
  *a1 = v13;
}

uint64_t @objc _NSSwiftURLComponents.copy(with:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  v5 = a1;
  a4(v8);

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

id _NSSwiftURLQueryItem.init(coder:)(void *a1)
{
  v2 = v1;
  v171[6] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  if (![a1 allowsKeyedCoding])
  {
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v15 = @"NSDebugDescription";
    v16 = v15;
    if (!isTaggedPointer)
    {
LABEL_13:
      LOBYTE(v163) = 0;
      v168 = 0;
      LOBYTE(v165) = 0;
      v166 = 0;
      if (__CFStringIsCF())
      {

LABEL_26:
        v18 = 0;
        v20 = 0xE000000000000000;
        goto LABEL_57;
      }

      v28 = v16;
      v29 = String.init(_nativeStorage:)();
      if (v30)
      {
        v18 = v29;
        v20 = v30;

        goto LABEL_57;
      }

      v168 = [(__CFString *)v28 length];
      if (!v168)
      {

        goto LABEL_26;
      }

      v18 = String.init(_cocoaString:)();
      v20 = v44;
LABEL_57:
      v171[0] = v18;
      v171[1] = v20;
      v171[5] = MEMORY[0x1E69E6158];
      v171[2] = 0xD000000000000026;
      v171[3] = 0x800000018147E7F0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
      v45 = static _DictionaryStorage.allocate(capacity:)();
      outlined init with copy of FloatingPointRoundingRule?(v171, &v168, &_sSS_yptMd);

      outlined destroy of TermOfAddress?(v171, &_sSS_yptMd);
      v46 = v168;
      v47 = v169;
      v48 = specialized __RawDictionaryStorage.find<A>(_:)(v168, v169);
      v50 = v49;

      if (v50)
      {
        __break(1u);
      }

      else
      {
        v45[(v48 >> 6) + 8] |= 1 << v48;
        v51 = (v45[6] + 16 * v48);
        *v51 = v46;
        v51[1] = v47;
        outlined init with take of Any(v170, (v45[7] + 32 * v48));
        v52 = v45[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (!v53)
        {
          v45[2] = v54;
          v55 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
          v56 = @"NSCocoaErrorDomain";
          v57 = v56;
          if (!v55)
          {
LABEL_64:
            LOBYTE(v163) = 0;
            v168 = 0;
            LOBYTE(v165) = 0;
            v166 = 0;
            if (!__CFStringIsCF())
            {
              v59 = v57;
              String.init(_nativeStorage:)();
              if (v60 || (v168 = [(__CFString *)v59 length]) == 0)
              {

                goto LABEL_82;
              }

              goto LABEL_81;
            }

            if (v168)
            {
              if (v166 == 1)
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                String.init<A>(_immortalCocoaString:count:encoding:)();
                goto LABEL_82;
              }

LABEL_81:
              String.init(_cocoaString:)();
LABEL_82:
              v63 = objc_allocWithZone(NSError);
              v64 = String._bridgeToObjectiveCImpl()();

              v65 = [v63 initWithDomain:v64 code:4864 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v66 = [v65 domain];
              if (!v66)
              {
                goto LABEL_95;
              }

              v67 = v66;
              v68 = _objc_isTaggedPointer(v66);
              v69 = v67;
              v70 = v69;
              if ((v68 & 1) == 0)
              {
LABEL_88:
                LOBYTE(v163) = 0;
                v168 = 0;
                LOBYTE(v165) = 0;
                v166 = 0;
                if (__CFStringIsCF())
                {
                  if (v168)
                  {
                    if (v166 == 1)
                    {
                      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                      v80 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_117:
                      v72 = v80;
                      v74 = v81;
                      goto LABEL_118;
                    }

LABEL_116:
                    v80 = String.init(_cocoaString:)();
                    goto LABEL_117;
                  }
                }

                else
                {
                  v75 = v70;
                  v76 = String.init(_nativeStorage:)();
                  if (v77)
                  {
                    v72 = v76;
                    v74 = v77;

                    goto LABEL_119;
                  }

                  v168 = [v75 length];
                  if (v168)
                  {
                    goto LABEL_116;
                  }
                }

LABEL_95:
                v72 = 0;
                v74 = 0xE000000000000000;
                goto LABEL_119;
              }

              TaggedPointerTag = _objc_getTaggedPointerTag(v69);
              if (TaggedPointerTag)
              {
                if (TaggedPointerTag != 22)
                {
                  if (TaggedPointerTag == 2)
                  {
                    MEMORY[0x1EEE9AC00](TaggedPointerTag);
                    v72 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v74 = v73;

LABEL_119:
                    v93 = v57;
                    v94 = v93;
                    if (!v55)
                    {
                      goto LABEL_124;
                    }

                    v95 = _objc_getTaggedPointerTag(v93);
                    if (!v95)
                    {
                      goto LABEL_135;
                    }

                    if (v95 != 22)
                    {
                      if (v95 == 2)
                      {
                        MEMORY[0x1EEE9AC00](v95);
                        v96 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v23 = v97;

                        goto LABEL_143;
                      }

LABEL_124:
                      LOBYTE(v163) = 0;
                      v168 = 0;
                      LOBYTE(v165) = 0;
                      v166 = 0;
                      if (__CFStringIsCF())
                      {
                        if (v168)
                        {
                          if (v166 == 1)
                          {
                            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                            v103 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_142:
                            v96 = v103;
                            v23 = v104;
LABEL_143:
                            if (v72 == v96 && v74 == v23)
                            {
                              goto LABEL_230;
                            }

                            v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v105)
                            {
LABEL_232:
                              [a1 failWithError_];
                              swift_unknownObjectRelease();

                              goto LABEL_233;
                            }

                            __break(1u);
                            v106 = [(__CFString *)v23 lengthOfBytesUsingEncoding:4];
                            MEMORY[0x1EEE9AC00](v106);
                            v107 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                            v27 = v108;
                            v109 = HIBYTE(v108) & 0xF;
                            if ((v108 & 0x2000000000000000) == 0)
                            {
                              v109 = v107 & 0xFFFFFFFFFFFFLL;
                            }

                            if (!v109)
                            {

LABEL_151:
                              v25 = String.init(_cocoaString:)();
                              v27 = v110;
LABEL_152:
                              v167[0] = v25;
                              v167[1] = v27;
                              v167[5] = MEMORY[0x1E69E6158];
                              v167[2] = 0xD00000000000001DLL;
                              v167[3] = 0x800000018147E820;
                              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
                              v111 = static _DictionaryStorage.allocate(capacity:)();
                              outlined init with copy of FloatingPointRoundingRule?(v167, &v168, &_sSS_yptMd);

                              outlined destroy of TermOfAddress?(v167, &_sSS_yptMd);
                              v112 = v168;
                              v113 = v169;
                              v114 = specialized __RawDictionaryStorage.find<A>(_:)(v168, v169);
                              v116 = v115;

                              if ((v116 & 1) == 0)
                              {
                                v111[(v114 >> 6) + 8] |= 1 << v114;
                                v117 = (v111[6] + 16 * v114);
                                *v117 = v112;
                                v117[1] = v113;
                                outlined init with take of Any(v170, (v111[7] + 32 * v114));
                                v118 = v111[2];
                                v53 = __OFADD__(v118, 1);
                                v119 = v118 + 1;
                                if (!v53)
                                {
                                  v111[2] = v119;
                                  v120 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
                                  v121 = @"NSCocoaErrorDomain";
                                  v122 = v121;
                                  if (v120)
                                  {
                                    v123 = _objc_getTaggedPointerTag(v121);
                                    if (v123)
                                    {
                                      if (v123 != 22)
                                      {
                                        if (v123 == 2)
                                        {
                                          MEMORY[0x1EEE9AC00](v123);
                                          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                                          goto LABEL_177;
                                        }

                                        goto LABEL_159;
                                      }

                                      result = [(__CFString *)v122 UTF8String];
                                      if (!result)
                                      {
LABEL_245:
                                        __break(1u);
                                        goto LABEL_246;
                                      }

                                      String.init(utf8String:)(result);
                                      if (v126)
                                      {
                                        goto LABEL_175;
                                      }

                                      __break(1u);
                                    }

                                    v165 = 0;
                                    _CFIndirectTaggedPointerStringGetContents();
                                    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                                    if (!v127)
                                    {
                                      [(__CFString *)v122 mutableCopy];
                                      _bridgeAnyObjectToAny(_:)();

                                      swift_unknownObjectRelease();
                                      swift_dynamicCast();
                                      goto LABEL_177;
                                    }

                                    goto LABEL_175;
                                  }

LABEL_159:
                                  LOBYTE(v163) = 0;
                                  v168 = 0;
                                  LOBYTE(v165) = 0;
                                  v166 = 0;
                                  if (!__CFStringIsCF())
                                  {
                                    v124 = v122;
                                    String.init(_nativeStorage:)();
                                    if (v125 || (v168 = [(__CFString *)v124 length]) == 0)
                                    {

                                      goto LABEL_177;
                                    }

                                    goto LABEL_176;
                                  }

                                  if (v168)
                                  {
                                    if (v166 == 1)
                                    {
                                      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                                      String.init<A>(_immortalCocoaString:count:encoding:)();
                                      goto LABEL_177;
                                    }

LABEL_176:
                                    String.init(_cocoaString:)();
LABEL_177:
                                    v128 = objc_allocWithZone(NSError);
                                    v129 = String._bridgeToObjectiveCImpl()();

                                    v130 = [v128 initWithDomain:v129 code:4864 userInfo:_NativeDictionary.bridged()()];
                                    swift_unknownObjectRelease();
                                    swift_unknownObjectRelease();
                                    v131 = [v130 domain];
                                    if (!v131)
                                    {
                                      v137 = v120;
                                      goto LABEL_188;
                                    }

                                    v132 = v131;
                                    v133 = _objc_isTaggedPointer(v131);
                                    v134 = v132;
                                    v135 = v134;
                                    if ((v133 & 1) == 0)
                                    {
LABEL_183:
                                      LOBYTE(v163) = 0;
                                      v168 = 0;
                                      LOBYTE(v165) = 0;
                                      v166 = 0;
                                      if (__CFStringIsCF())
                                      {
                                        if (v168)
                                        {
                                          if (v166 == 1)
                                          {
                                            v137 = v120;
                                            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                                            v146 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_202:
                                            v138 = v146;
                                            v140 = v147;
                                            goto LABEL_203;
                                          }

                                          v137 = v120;
LABEL_201:
                                          v146 = String.init(_cocoaString:)();
                                          goto LABEL_202;
                                        }

                                        v137 = v120;
                                      }

                                      else
                                      {
                                        v137 = v120;
                                        v141 = v135;
                                        v142 = String.init(_nativeStorage:)();
                                        if (v143)
                                        {
                                          v138 = v142;
                                          v140 = v143;

                                          goto LABEL_204;
                                        }

                                        v168 = [v141 length];
                                        if (v168)
                                        {
                                          goto LABEL_201;
                                        }
                                      }

LABEL_188:
                                      v138 = 0;
                                      v140 = 0xE000000000000000;
                                      goto LABEL_204;
                                    }

                                    v136 = _objc_getTaggedPointerTag(v134);
                                    if (v136)
                                    {
                                      if (v136 != 22)
                                      {
                                        if (v136 == 2)
                                        {
                                          v137 = v120;
                                          MEMORY[0x1EEE9AC00](v136);
                                          v138 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                          v140 = v139;

                                          goto LABEL_204;
                                        }

                                        goto LABEL_183;
                                      }

                                      v137 = v120;
                                      result = [v135 UTF8String];
                                      if (!result)
                                      {
LABEL_247:
                                        __break(1u);
                                        return result;
                                      }

                                      v144 = String.init(utf8String:)(result);
                                      if (v145)
                                      {
                                        goto LABEL_196;
                                      }

                                      __break(1u);
                                    }

                                    v137 = v120;
                                    v165 = 0;
                                    _CFIndirectTaggedPointerStringGetContents();
                                    v144 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                                    if (!v145)
                                    {
                                      [v135 mutableCopy];
                                      _bridgeAnyObjectToAny(_:)();

                                      swift_unknownObjectRelease();
                                      swift_dynamicCast();
                                      v138 = v163;
                                      v140 = v164;
                                      goto LABEL_203;
                                    }

LABEL_196:
                                    v138 = v144;
                                    v140 = v145;

LABEL_203:
LABEL_204:
                                    v148 = v122;
                                    v149 = v148;
                                    if (!v137)
                                    {
                                      goto LABEL_209;
                                    }

                                    v150 = _objc_getTaggedPointerTag(v148);
                                    if (v150)
                                    {
                                      if (v150 != 22)
                                      {
                                        if (v150 == 2)
                                        {
                                          MEMORY[0x1EEE9AC00](v150);
                                          v151 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                          v153 = v152;

                                          goto LABEL_228;
                                        }

LABEL_209:
                                        LOBYTE(v163) = 0;
                                        v168 = 0;
                                        LOBYTE(v165) = 0;
                                        v166 = 0;
                                        if (__CFStringIsCF())
                                        {
                                          if (v168)
                                          {
                                            if (v166 == 1)
                                            {
                                              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                                              v159 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_227:
                                              v151 = v159;
                                              v153 = v160;
LABEL_228:
                                              if (v138 == v151 && v140 == v153)
                                              {
LABEL_230:

                                                goto LABEL_232;
                                              }

                                              v161 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                              if (v161)
                                              {
                                                goto LABEL_232;
                                              }

LABEL_238:
                                              __break(1u);
                                            }

LABEL_226:
                                            v159 = String.init(_cocoaString:)();
                                            goto LABEL_227;
                                          }
                                        }

                                        else
                                        {
                                          v154 = v149;
                                          v155 = String.init(_nativeStorage:)();
                                          if (v156)
                                          {
                                            v151 = v155;
                                            v153 = v156;

                                            goto LABEL_228;
                                          }

                                          v168 = [(__CFString *)v154 length];
                                          if (v168)
                                          {
                                            goto LABEL_226;
                                          }
                                        }

                                        v151 = 0;
                                        v153 = 0xE000000000000000;
                                        goto LABEL_228;
                                      }

                                      result = [(__CFString *)v149 UTF8String];
                                      if (!result)
                                      {
LABEL_246:
                                        __break(1u);
                                        goto LABEL_247;
                                      }

                                      v157 = String.init(utf8String:)(result);
                                      if (v158)
                                      {
LABEL_221:
                                        v151 = v157;
                                        v153 = v158;

                                        goto LABEL_228;
                                      }

                                      __break(1u);
                                    }

                                    v165 = 0;
                                    _CFIndirectTaggedPointerStringGetContents();
                                    v157 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                                    if (!v158)
                                    {
                                      [(__CFString *)v149 mutableCopy];
                                      _bridgeAnyObjectToAny(_:)();

                                      swift_unknownObjectRelease();
                                      swift_dynamicCast();
                                      v151 = v163;
                                      v153 = v164;
                                      goto LABEL_228;
                                    }

                                    goto LABEL_221;
                                  }

LABEL_175:

                                  goto LABEL_177;
                                }

LABEL_237:
                                __break(1u);
                                goto LABEL_238;
                              }

LABEL_236:
                              __break(1u);
                              goto LABEL_237;
                            }

                            v25 = v107;
LABEL_51:

                            goto LABEL_152;
                          }

LABEL_141:
                          v103 = String.init(_cocoaString:)();
                          goto LABEL_142;
                        }
                      }

                      else
                      {
                        v98 = v94;
                        v99 = String.init(_nativeStorage:)();
                        if (v100)
                        {
                          v96 = v99;
                          v23 = v100;

                          goto LABEL_143;
                        }

                        v168 = [(__CFString *)v98 length];
                        if (v168)
                        {
                          goto LABEL_141;
                        }
                      }

                      v96 = 0;
                      v23 = 0xE000000000000000;
                      goto LABEL_143;
                    }

                    result = [(__CFString *)v94 UTF8String];
                    if (result)
                    {
                      v101 = String.init(utf8String:)(result);
                      if (v102)
                      {
                        goto LABEL_136;
                      }

                      __break(1u);
LABEL_135:
                      v165 = 0;
                      _CFIndirectTaggedPointerStringGetContents();
                      v101 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                      if (!v102)
                      {
                        [(__CFString *)v94 mutableCopy];
                        _bridgeAnyObjectToAny(_:)();

                        swift_unknownObjectRelease();
                        swift_dynamicCast();
                        v96 = v163;
                        v23 = v164;
                        goto LABEL_143;
                      }

LABEL_136:
                      v96 = v101;
                      v23 = v102;

                      goto LABEL_143;
                    }

LABEL_241:
                    __break(1u);
LABEL_242:
                    __break(1u);
                    goto LABEL_243;
                  }

                  goto LABEL_88;
                }

                result = [v70 UTF8String];
                if (!result)
                {
LABEL_243:
                  __break(1u);
                  goto LABEL_244;
                }

                v78 = String.init(utf8String:)(result);
                if (v79)
                {
                  goto LABEL_100;
                }

                __break(1u);
              }

              v165 = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v78 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v79)
              {
                [v70 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v72 = v163;
                v74 = v164;
                goto LABEL_118;
              }

LABEL_100:
              v72 = v78;
              v74 = v79;

LABEL_118:
              goto LABEL_119;
            }

LABEL_80:

            goto LABEL_82;
          }

          v58 = _objc_getTaggedPointerTag(v56);
          if (!v58)
          {
LABEL_74:
            v165 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v62)
            {
              [(__CFString *)v57 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_82;
            }

            goto LABEL_80;
          }

          if (v58 != 22)
          {
            if (v58 == 2)
            {
              MEMORY[0x1EEE9AC00](v58);
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

              goto LABEL_82;
            }

            goto LABEL_64;
          }

          result = [(__CFString *)v57 UTF8String];
          if (result)
          {
            String.init(utf8String:)(result);
            if (v61)
            {
              goto LABEL_80;
            }

            __break(1u);
            goto LABEL_74;
          }

LABEL_240:
          __break(1u);
          goto LABEL_241;
        }
      }

      __break(1u);
      goto LABEL_236;
    }

    v17 = _objc_getTaggedPointerTag(v15);
    if (v17)
    {
      if (v17 != 22)
      {
        if (v17 == 2)
        {
          MEMORY[0x1EEE9AC00](v17);
          v18 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v20 = v19;

          goto LABEL_57;
        }

        goto LABEL_13;
      }

      result = [(__CFString *)v16 UTF8String];
      if (!result)
      {
        __break(1u);
        goto LABEL_240;
      }

      v35 = String.init(utf8String:)(result);
      if (v36)
      {
LABEL_33:
        v18 = v35;
        v20 = v36;

        goto LABEL_57;
      }

      __break(1u);
    }

    v165 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v35 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v36)
    {
      [(__CFString *)v16 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v18 = v163;
      v20 = v164;
      goto LABEL_57;
    }

    goto LABEL_33;
  }

  v5 = _sSo7NSCoderC10FoundationE12decodeObject2of6forKeyxSgxm_SStSo8NSObjectCRbzSo8NSCodingRzlFSo8NSStringC_Ttg5(0x656D616E2E534ELL, 0xE700000000000000);
  if (!v5)
  {
    v21 = _objc_isTaggedPointer(@"NSDebugDescription");
    v22 = @"NSDebugDescription";
    v23 = v22;
    if (!v21)
    {
LABEL_24:
      LOBYTE(v163) = 0;
      v168 = 0;
      LOBYTE(v165) = 0;
      v166 = 0;
      if (__CFStringIsCF())
      {

LABEL_43:
        v25 = 0;
        v27 = 0xE000000000000000;
        goto LABEL_152;
      }

      v37 = v23;
      v38 = String.init(_nativeStorage:)();
      if (v39)
      {
        v25 = v38;
        v27 = v39;

        goto LABEL_152;
      }

      v168 = [(__CFString *)v37 length];
      if (!v168)
      {

        goto LABEL_43;
      }

      goto LABEL_151;
    }

    v24 = _objc_getTaggedPointerTag(v22);
    if (v24)
    {
      if (v24 != 22)
      {
        if (v24 == 2)
        {
          MEMORY[0x1EEE9AC00](v24);
          v25 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v27 = v26;

          goto LABEL_152;
        }

        goto LABEL_24;
      }

      result = [(__CFString *)v23 UTF8String];
      if (!result)
      {
LABEL_244:
        __break(1u);
        goto LABEL_245;
      }

      v42 = String.init(utf8String:)(result);
      if (v43)
      {
        goto LABEL_50;
      }

      __break(1u);
    }

    v165 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v42 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v43)
    {
      [(__CFString *)v23 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v25 = v163;
      v27 = v164;
      goto LABEL_152;
    }

LABEL_50:
    v25 = v42;
    v27 = v43;
    goto LABEL_51;
  }

  v6 = v5;
  v7 = _objc_isTaggedPointer(v5);
  v8 = v6;
  v9 = v8;
  if (!v7)
  {
LABEL_15:
    LOBYTE(v163) = 0;
    v168 = 0;
    LOBYTE(v165) = 0;
    v166 = 0;
    if (__CFStringIsCF())
    {
      v11 = v168;

      v13 = 0xE000000000000000;
      goto LABEL_108;
    }

    v31 = v9;
    v32 = String.init(_nativeStorage:)();
    if (v33)
    {
      v11 = v32;
      v13 = v33;

      goto LABEL_108;
    }

    v168 = [v31 length];
    if (!v168)
    {

      v11 = 0;
      v13 = 0xE000000000000000;
      goto LABEL_108;
    }

    v11 = String.init(_cocoaString:)();
    v13 = v82;
LABEL_107:

    goto LABEL_108;
  }

  v10 = _objc_getTaggedPointerTag(v8);
  if (!v10)
  {
    goto LABEL_41;
  }

  if (v10 == 22)
  {
    result = [v9 UTF8String];
    if (result)
    {
      v40 = String.init(utf8String:)(result);
      if (v41)
      {
LABEL_42:
        v11 = v40;
        v13 = v41;

        goto LABEL_107;
      }

      __break(1u);
LABEL_41:
      v165 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v40 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v41)
      {
        [v9 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v11 = v163;
        v13 = v164;
        goto LABEL_107;
      }

      goto LABEL_42;
    }

    goto LABEL_242;
  }

  if (v10 != 2)
  {
    goto LABEL_15;
  }

  MEMORY[0x1EEE9AC00](v10);
  v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v13 = v12;

LABEL_108:
  v83 = _sSo7NSCoderC10FoundationE12decodeObject2of6forKeyxSgxm_SStSo8NSObjectCRbzSo8NSCodingRzlFSo8NSStringC_Ttg5(0x65756C61762E534ELL, 0xE800000000000000);
  if (v83)
  {
    v84 = v83;
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)(v83);
    v87 = v86;
  }

  else
  {
    v85 = 0;
    v87 = 0;
  }

  v88 = [a1 error];
  if (v88)
  {
    v89 = v88;

LABEL_233:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v90 = &v2[OBJC_IVAR____NSSwiftURLQueryItem_queryItem];
  *v90 = v11;
  v90[1] = v13;
  v90[2] = v85;
  v90[3] = v87;
  v91 = String._bridgeToObjectiveCImpl()();
  if (v87)
  {
    v87 = String._bridgeToObjectiveCImpl()();
  }

  v162.receiver = v2;
  v162.super_class = ObjectType;
  v92 = objc_msgSendSuper2(&v162, sel_initWithName_value_, v91, v87);
  swift_unknownObjectRelease();

  return v92;
}

uint64_t specialized static NSURLComponents._matchWith(string:requiredComponents:defaultValues:urlPtr:)(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, void *a5)
{
  if (*(a4 + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(1);
    if (v10)
    {
      v11 = (*(a4 + 56) + 16 * v9);
      v58 = v11[1];
      v59 = *v11;
    }

    else
    {
      v58 = (a3 & 1) == 0;
      v59 = 0;
    }

    v12 = specialized __RawDictionaryStorage.find<A>(_:)(2);
    if (v13)
    {
      v14 = (*(a4 + 56) + 16 * v12);
      v56 = v14[1];
      v57 = *v14;
    }

    else
    {
      v56 = (a3 & 2) == 0;
      v57 = 0;
    }

    v15 = specialized __RawDictionaryStorage.find<A>(_:)(4);
    if (v16)
    {
      v17 = (*(a4 + 56) + 16 * v15);
      v54 = v17[1];
      v55 = *v17;
    }

    else
    {
      v54 = (a3 & 4) == 0;
      v55 = 0;
    }

    v18 = specialized __RawDictionaryStorage.find<A>(_:)(8);
    if (v19)
    {
      v20 = (*(a4 + 56) + 16 * v18);
      v52 = v20[1];
      v53 = *v20;

      goto LABEL_15;
    }
  }

  else
  {
    v59 = 0;
    v57 = 0;
    v58 = (a3 & 1) == 0;
    v55 = 0;
    v56 = (a3 & 2) == 0;
    v54 = (a3 & 4) == 0;
  }

  v52 = (a3 & 8) == 0;
  v53 = 0;
LABEL_15:
  parseStrategyForPort #1 () in static NSURLComponents._matchWith(string:requiredComponents:defaultValues:urlPtr:)(a4, a3, &v103);
  v21 = v103;
  v22 = v104;
  if (*(a4 + 16))
  {
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(32);
    if (v24)
    {
      v25 = (*(a4 + 56) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
    }

    else
    {
      v26 = 0;
      v27 = ~(a3 >> 5) & 1;
    }

    v30 = specialized __RawDictionaryStorage.find<A>(_:)(64);
    if (v31)
    {
      v32 = (*(a4 + 56) + 16 * v30);
      v28 = *v32;
      v29 = v32[1];
    }

    else
    {
      v28 = 0;
      v29 = ~(a3 >> 6) & 1;
    }

    v33 = specialized __RawDictionaryStorage.find<A>(_:)(128);
    if (v34)
    {
      v35 = *(*(a4 + 56) + 16 * v33);

      goto LABEL_26;
    }
  }

  else
  {
    v28 = 0;
    v26 = 0;
    v27 = ~(a3 >> 5) & 1;
    v29 = ~(a3 >> 6) & 1;
  }

  v35 = 0;
  v36 = ~(a3 >> 7) & 1;
LABEL_26:
  v105 = v22;
  *&v95 = v59;
  *(&v95 + 1) = v58;
  *&v96 = v57;
  *(&v96 + 1) = v56;
  *&v97 = v55;
  *(&v97 + 1) = v54;
  *&v98 = v53;
  *(&v98 + 1) = v52;
  *&v99 = v21;
  BYTE8(v99) = v22;
  *&v100 = v26;
  *(&v100 + 1) = v27;
  *&v101 = v28;
  *(&v101 + 1) = v29;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v37 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v37 = a1 & 0xFFFFFFFFFFFFLL;
  }

  *&v102 = v35;
  *(&v102 + 1) = v36;
  if (v37)
  {
    do
    {
      String.subscript.getter();
      v38 = Character.isWhitespace.getter();
    }

    while ((v38 & 1) == 0 && 4 * v37 != String.index(after:)() >> 14);
  }

  *&v106 = String.subscript.getter();
  *(&v106 + 1) = v39;
  *&v107 = v40;
  *(&v107 + 1) = v41;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  v42 = String.init<A>(_:)();
  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(v42, v43, 1, &v106);
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(&v106) == 1)
  {
    outlined destroy of URL.ParseStrategy(&v95);
LABEL_38:
    *a5 = 0;
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v92 = v112;
  v93 = v113;
  v94[0] = v114[0];
  *(v94 + 10) = *(v114 + 10);
  v88 = v108;
  v89 = v109;
  v90 = v110;
  v91 = v111;
  v86 = v106;
  v87 = v107;
  v66 = v99;
  v67 = v100;
  v68 = v101;
  v69 = v102;
  v62 = v95;
  v63 = v96;
  v64 = v97;
  v65 = v98;
  v82[0] = v106;
  v82[1] = v107;
  v82[4] = v110;
  v82[5] = v111;
  v82[2] = v108;
  v82[3] = v109;
  *(v83 + 10) = *(v114 + 10);
  v83[0] = v114[0];
  v82[6] = v112;
  v82[7] = v113;
  v79 = v112;
  v80 = v113;
  v81[0] = v114[0];
  *(v81 + 10) = *(v114 + 10);
  v75 = v108;
  v76 = v109;
  v77 = v110;
  v78 = v111;
  v73 = v106;
  v74 = v107;
  outlined init with copy of URLComponents(v82, v71);
  v44 = URL.ParseStrategy.validate(_:)(&v73);
  v84[6] = v79;
  v84[7] = v80;
  v85[0] = v81[0];
  *(v85 + 10) = *(v81 + 10);
  v84[2] = v75;
  v84[3] = v76;
  v84[4] = v77;
  v84[5] = v78;
  v84[0] = v73;
  v84[1] = v74;
  outlined destroy of URLComponents(v84);
  if ((v44 & 1) == 0)
  {
    outlined destroy of URL.ParseStrategy(&v95);
    v79 = v92;
    v80 = v93;
    v81[0] = v94[0];
    *(v81 + 10) = *(v94 + 10);
    v75 = v88;
    v76 = v89;
    v77 = v90;
    v78 = v91;
    v73 = v86;
    v74 = v87;
    outlined destroy of URLComponents(&v73);
    goto LABEL_38;
  }

  v77 = v99;
  v78 = v100;
  v79 = v101;
  v80 = v102;
  v73 = v95;
  v74 = v96;
  v75 = v97;
  v76 = v98;
  URL.ParseStrategy.fillDefaultValues(for:)(&v86);
  outlined destroy of URL.ParseStrategy(&v95);
  v71[6] = v92;
  v71[7] = v93;
  v72[0] = v94[0];
  *(v72 + 10) = *(v94 + 10);
  v71[2] = v88;
  v71[3] = v89;
  v71[4] = v90;
  v71[5] = v91;
  v71[0] = v86;
  v71[1] = v87;
  v68 = v92;
  v69 = v93;
  v70[0] = v94[0];
  *(v70 + 10) = *(v94 + 10);
  v64 = v88;
  v65 = v89;
  v66 = v90;
  v67 = v91;
  v62 = v86;
  v63 = v87;
  outlined init with copy of URLComponents(v71, &v73);
  URLComponents.url.getter(v61);
  v79 = v92;
  v80 = v93;
  v81[0] = v94[0];
  *(v81 + 10) = *(v94 + 10);
  v75 = v88;
  v76 = v89;
  v77 = v90;
  v78 = v91;
  v73 = v86;
  v74 = v87;
  outlined destroy of URLComponents(&v73);
  outlined destroy of URLComponents(v71);
  if (v61[0])
  {
    v45 = v61[1];
    ObjectType = swift_getObjectType();
    v47 = *(v45 + 432);
    swift_unknownObjectRetain();
    *a5 = v47(ObjectType, v45);
    swift_unknownObjectRelease();
  }

  else
  {
    *a5 = 0;
  }

  *&v62 = a1;
  *(&v62 + 1) = a2;
  lazy protocol witness table accessor for type String and conformance String();
  v49 = StringProtocol._toUTF16Offsets(_:)();
  v51 = v50;
  result = swift_unknownObjectRelease();
  if (!__OFSUB__(v51, v49))
  {
    return v49;
  }

  __break(1u);
  return result;
}

id specialized static NSURLQueryItem._queryItem()()
{
  v0 = type metadata accessor for _NSSwiftURLQueryItem();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____NSSwiftURLQueryItem_queryItem];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  v3 = String._bridgeToObjectiveCImpl()();
  v6.receiver = v1;
  v6.super_class = v0;
  v4 = objc_msgSendSuper2(&v6, sel_initWithName_value_, v3, 0);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t _ss10SetAlgebraPsEyxqd__ncSTRd__7ElementQyd__ACRtzlufCqd__10Foundation05IndexA0VXMTA2HRszSTRd__SiADRSr__lIetMiyr_Tp5SaySiG_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_allocWithZone(NSIndexSet) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 32;
    do
    {
      v12 = *(a1 + v7);
      if (*(v5 + 24))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v8 = *(v5 + 16);
        if ((*(v5 + 24) & 1) != 0 && isUniquelyReferenced_nonNull_native)
        {
          [v8 addIndex_];
          goto LABEL_5;
        }
      }

      else
      {
        v8 = *(v5 + 16);
      }

      v9 = v8;
      [v9 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for NSMutableIndexSet();
      swift_dynamicCast();
      v10 = swift_allocObject();
      *(v10 + 16) = v15;
      *(v10 + 24) = 1;
      v11 = v15;

      [v11 addIndex_];

      v5 = v10;
LABEL_5:
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  *a2 = v5;
  return result;
}

uint64_t specialized SetAlgebra.init<A>(_:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v7 - v2;
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v4 = 0;
  if ((v8 & 1) == 0)
  {
    v4 = 0;
    do
    {
      v5 = v7;
      if ((v7 & ~v4) == 0)
      {
        v5 = 0;
      }

      v4 |= v5;
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v8 != 1);
  }

  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v4;
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v7 - v2;
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if (v9)
  {
    v4 = 0;
  }

  else
  {
    LODWORD(v4) = 0;
    do
    {
      v5 = v8;
      if ((v8 & ~v4) == 0)
      {
        v5 = 0;
      }

      v4 = v5 | v4;
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v9 != 1);
  }

  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v4;
}

void _ss10SetAlgebraPsEyxqd__ncSTRd__7ElementQyd__ACRtzlufCqd__10Foundation09CharacterA0VXMTA2HRszSTRd__s7UnicodeO6ScalarVADRSr__lIetMiyr_Tp5SayALG_Tt1g5(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  Mutable = CFCharacterSetCreateMutable(0);
  if (Mutable)
  {
    v5 = Mutable;
    v21 = a2;
    type metadata accessor for __CharacterSetStorage();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = 1;
    v7 = *(a1 + 16);
    if (!v7)
    {
LABEL_16:

      *v21 = v6;
      return;
    }

    v8 = 0;
    while (v8 < *(a1 + 16))
    {
      v9 = *(a1 + 32 + 4 * v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = *(v6 + 24);
        v11 = *(v6 + 16);
        MutableCopy = CFCharacterSetCreateMutableCopy(0, v11);
        v13 = MutableCopy;
        if (v10)
        {
          if (!MutableCopy)
          {
            goto LABEL_20;
          }
        }

        else if (!MutableCopy)
        {
          goto LABEL_19;
        }

        v14 = swift_allocObject();
        *(v14 + 16) = v13;
        *(v14 + 24) = 1;

        v6 = v14;
      }

      v15 = *(v6 + 16);
      if (*(v6 + 24))
      {
        v22.location = v9;
        v22.length = 1;
        CFCharacterSetAddCharactersInRange(v15, v22);
      }

      else
      {
        v16 = v15;
        v17 = CFCharacterSetCreateMutableCopy(0, v16);
        if (!v17)
        {
          goto LABEL_18;
        }

        v18 = v17;
        v19 = v17;
        v23.location = v9;
        v23.length = 1;
        CFCharacterSetAddCharactersInRange(v19, v23);

        v20 = *(v6 + 16);
        *(v6 + 16) = v18;
        *(v6 + 24) = 1;
      }

      if (v7 == ++v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
}

unint64_t URLParseInfo.cfResourceSpecifierRange.getter()
{
  if (*(v0 + 192) == 1)
  {
    result = *(v0 + 200);
    if (*(v0 + 216))
    {
      return result;
    }
  }

  else
  {
    result = *(v0 + 176);
  }

  v2 = *(v0 + 24);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance URLParseInfo.EncodedComponentSet(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *protocol witness for SetAlgebra.remove(_:) in conformance URLParseInfo.EncodedComponentSet@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *protocol witness for SetAlgebra.update(with:) in conformance URLParseInfo.EncodedComponentSet@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t protocol witness for SetAlgebra.init<A>(_:) in conformance URLParseInfo.EncodedComponentSet@<X0>(_BYTE *a1@<X8>)
{
  result = specialized SetAlgebra.init<A>(_:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance URLParseInfo.EncodedComponentSet@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type URLParseInfo.EncodedComponentSet and conformance URLParseInfo.EncodedComponentSet()
{
  result = lazy protocol witness table cache variable for type URLParseInfo.EncodedComponentSet and conformance URLParseInfo.EncodedComponentSet;
  if (!lazy protocol witness table cache variable for type URLParseInfo.EncodedComponentSet and conformance URLParseInfo.EncodedComponentSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLParseInfo.EncodedComponentSet and conformance URLParseInfo.EncodedComponentSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLParseInfo.EncodedComponentSet and conformance URLParseInfo.EncodedComponentSet;
  if (!lazy protocol witness table cache variable for type URLParseInfo.EncodedComponentSet and conformance URLParseInfo.EncodedComponentSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLParseInfo.EncodedComponentSet and conformance URLParseInfo.EncodedComponentSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLParseInfo.EncodedComponentSet and conformance URLParseInfo.EncodedComponentSet;
  if (!lazy protocol witness table cache variable for type URLParseInfo.EncodedComponentSet and conformance URLParseInfo.EncodedComponentSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLParseInfo.EncodedComponentSet and conformance URLParseInfo.EncodedComponentSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLParseInfo.EncodedComponentSet and conformance URLParseInfo.EncodedComponentSet;
  if (!lazy protocol witness table cache variable for type URLParseInfo.EncodedComponentSet and conformance URLParseInfo.EncodedComponentSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLParseInfo.EncodedComponentSet and conformance URLParseInfo.EncodedComponentSet);
  }

  return result;
}

unint64_t _s10Foundation13RFC3986ParserV17percentEncodeHost33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSSgxSg_SbtSyRzlFZSs_Tt1g5(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (!a4)
  {
    return 0;
  }

  v7 = a2 >> 14;
  if (a2 >> 14 == a1 >> 14)
  {
    return 0;
  }

  v12 = Substring.UTF8View.subscript.getter();
  if (v12 != 91)
  {
    goto LABEL_21;
  }

  result = Substring.UTF8View.distance(from:to:)();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  Substring.UTF8View.index(_:offsetBy:)();
  v12 = Substring.UTF8View.subscript.getter();
  if (v12 != 93)
  {
LABEL_21:
    v45 = a1;
    v46 = a2;
    v47 = a3;
    v48 = a4;
    MEMORY[0x1EEE9AC00](v12);
    v37 = &v45;
    LOBYTE(v38) = 4;
    v27 = a5 & 1;
    HIBYTE(v38) = v27;

    v28 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v36, a1, a2, a3, a4);
    v30 = v29;

    if (v30)
    {

      return v28;
    }

    v31 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(a1, a2, a3, a4, 4u, v27);
    swift_bridgeObjectRelease_n();
    return v31;
  }

  if ((a5 & 1) == 0)
  {
    v31 = _s10Foundation13RFC3986ParserV26percentEncodeIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySSSgxSyRzlFZSs_Tt0g5(a1, a2, a3, a4);

    return v31;
  }

  result = Substring.UTF8View.index(_:offsetBy:limitedBy:)();
  if (v13)
  {
    result = a2;
  }

  if (v7 < result >> 14)
  {
    goto LABEL_35;
  }

  v14 = _StringGuts.validateSubscalarRange(_:in:)(result, a2, a1, a2, a3, a4);
  v16 = v15;
  result = Substring.UTF8View.distance(from:to:)();
  if (__OFSUB__(result, 1))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  result = Substring.UTF8View.index(_:offsetBy:limitedBy:)();
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = result;
  }

  if (v18 >> 14 < v14 >> 14)
  {
    goto LABEL_37;
  }

  v19 = _StringGuts.validateSubscalarRange(_:in:)(v14, v18, v14, v16, a3, a4);
  v21 = v20;
  v22 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5063_sSS8decoding2asSSx_q_mtcSlRzs16_UnicodeEncodingR_8CodeUnitQy_7g26Rtzr0_lufcSSSRyAGGXEfU_Ss8jK14V_s0C0O0H0OTG5Tf1cn_n(v19, v20, a3, a4);
  if (v23)
  {
LABEL_29:
    v25 = v22;
    v24 = v23;

    goto LABEL_30;
  }

  v41 = v19;
  v42 = v21;
  v43 = a3;
  v44 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    outlined destroy of _HasContiguousBytes?(v39);
LABEL_28:
    v22 = _sSS44_fromNonContiguousUnsafeBitcastUTF8RepairingySS6result_Sb11repairsMadetxSlRzlFZSs0F4ViewV_Tt0g5(v19, v21, a3, a4);
    goto LABEL_29;
  }

  outlined init with take of Equatable(v39, &v45);
  __swift_project_boxed_opaque_existential_1(&v45, v48);
  if ((dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v45);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(&v45, v48);
  dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
  v24 = *(&v39[0] + 1);
  v25 = *&v39[0];
  v26 = __swift_destroy_boxed_opaque_existential_1(&v45);
LABEL_30:
  v45 = 91;
  v46 = 0xE100000000000000;
  *&v39[0] = v25;
  *(&v39[0] + 1) = v24;
  MEMORY[0x1EEE9AC00](v26);
  v37 = v39;
  v38 = 260;
  v32 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(partial apply for specialized closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:), v36, v25, v24);
  if (!v33)
  {
    v32 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v25, v24, 4u, 1);
  }

  v34 = v32;
  v35 = v33;

  MEMORY[0x1865CB0E0](v34, v35);

  MEMORY[0x1865CB0E0](93, 0xE100000000000000);

  return v45;
}

uint64_t one-time initialization function for schemesToPercentEncodeHost()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySays5UInt8VGGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1812DC130;
  *(v0 + 32) = specialized _copyCollectionToContiguousArray<A>(_:)(7103860, 0xE300000000000000);
  *(v0 + 40) = specialized _copyCollectionToContiguousArray<A>(_:)(0xD000000000000010, 0x8000000181487600);
  *(v0 + 48) = specialized _copyCollectionToContiguousArray<A>(_:)(0x706D6F72706C6574, 0xE900000000000074);
  *(v0 + 56) = specialized _copyCollectionToContiguousArray<A>(_:)(0x6F746C6C6163, 0xE600000000000000);
  *(v0 + 64) = specialized _copyCollectionToContiguousArray<A>(_:)(0x656D697465636166, 0xE800000000000000);
  *(v0 + 72) = specialized _copyCollectionToContiguousArray<A>(_:)(0x656D697465636166, 0xEF74706D6F72702DLL);
  *(v0 + 80) = specialized _copyCollectionToContiguousArray<A>(_:)(0x656D697465636166, 0xEE006F696475612DLL);
  *(v0 + 88) = specialized _copyCollectionToContiguousArray<A>(_:)(0xD000000000000015, 0x8000000181487620);
  *(v0 + 96) = specialized _copyCollectionToContiguousArray<A>(_:)(1885433193, 0xE400000000000000);
  *(v0 + 104) = specialized _copyCollectionToContiguousArray<A>(_:)(7368560, 0xE300000000000000);
  *(v0 + 112) = specialized _copyCollectionToContiguousArray<A>(_:)(0x6273736572646461, 0xEB000000006B6F6FLL);
  *(v0 + 120) = specialized _copyCollectionToContiguousArray<A>(_:)(0x746361746E6F63, 0xE700000000000000);
  *(v0 + 128) = specialized _copyCollectionToContiguousArray<A>(_:)(0x74657373616870, 0xE700000000000000);
  *(v0 + 136) = specialized _copyCollectionToContiguousArray<A>(_:)(0x696E752B70747468, 0xE900000000000078);
  *(v0 + 144) = specialized _copyCollectionToContiguousArray<A>(_:)(0x6E752B7370747468, 0xEA00000000007869);
  *(v0 + 152) = specialized _copyCollectionToContiguousArray<A>(_:)(0x78696E752B7377, 0xE700000000000000);
  result = specialized _copyCollectionToContiguousArray<A>(_:)(0x78696E752B737377, 0xE800000000000000);
  *(v0 + 160) = result;
  static RFC3986Parser.schemesToPercentEncodeHost = v0;
  return result;
}

uint64_t _s10Foundation13RFC3986ParserV26percentEncodeIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySSSgxSyRzlFZSs_Tt0g5(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a1 >> 14;
  v5 = a2 >> 14;
  if (a1 >> 14 == a2 >> 14)
  {
    __break(1u);
    goto LABEL_104;
  }

  if (Substring.UTF8View.subscript.getter() == 91)
  {
    if (!__OFSUB__(Substring.UTF8View.distance(from:to:)(), 1))
    {
      Substring.UTF8View.index(_:offsetBy:)();
      v10 = Substring.UTF8View.subscript.getter();

      if (v10 == 93)
      {
        v11 = specialized Collection<>.firstIndex(of:)(37, a1, a2, a3, a4);
        v13 = v12;

        if ((v13 & 1) == 0)
        {
          if (!__OFSUB__(Substring.UTF8View.distance(from:to:)(), 1))
          {
            if (v11 >> 14 <= Substring.UTF8View.index(_:offsetBy:)() >> 14)
            {
              v127 = v11 >> 14;
              v128 = v4;
              v129 = a3;
              v126 = a4;
              v38 = Substring.subscript.getter();
              v40 = v39;
              v42 = v41;
              v44 = v43;
              v130 = v38;
              v131 = v39;
              v132 = v41;
              v133 = v43;
              MEMORY[0x1EEE9AC00](v38);
              v116[2] = &v130;
              v117 = 8;

              v45 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v116, v38, v40, v42, v44);
              v47 = v46;

              if (!v47)
              {

                v45 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v38, v40, v42, v44, 8u, 0);
                v47 = v48;
              }

              if (v127 >= v128)
              {
                v49 = Substring.subscript.getter();
                v50 = MEMORY[0x1865CAE80](v49);
                v52 = v51;

                v130 = v50;
                v131 = v52;
                MEMORY[0x1865CB0E0](v45, v47);

                MEMORY[0x1865CB0E0](93, 0xE100000000000000);

                return v130;
              }

              goto LABEL_111;
            }

            goto LABEL_109;
          }

          goto LABEL_107;
        }

        if (Substring.UTF8View.subscript.getter() == 91)
        {
          if (!__OFSUB__(Substring.UTF8View.distance(from:to:)(), 1))
          {
            Substring.UTF8View.index(_:offsetBy:)();
            if (Substring.UTF8View.subscript.getter() == 93)
            {

              v14 = Substring.UTF8View.index(after:)();
              if (!__OFSUB__(Substring.UTF8View.distance(from:to:)(), 1))
              {
                if (Substring.UTF8View.index(_:offsetBy:)() >> 14 >= v14 >> 14)
                {
                  v15 = Substring.subscript.getter();
                  v17 = v16;
                  v19 = v18;
                  v21 = v20;
                  v22 = specialized Collection<>.firstIndex(of:)(37, a1, a2, a3, a4);
                  if (v23)
                  {
                    v24 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v15, v17, v19, v21, 2u, 0);
                    if (v24 != 2)
                    {
                      v68 = v24;

                      if (v68)
                      {
                        goto LABEL_64;
                      }

LABEL_62:

                      return 0;
                    }

                    v129 = a3;
                    v130 = v15;
                    v131 = v17;
                    v132 = v19;
                    v133 = v21;
                    lazy protocol witness table accessor for type Substring and conformance Substring();
                    StringProtocol._ephemeralString.getter();
                    v25 = v19;
                    v26 = String._bridgeToObjectiveCImpl()();

                    v27 = [v26 _fastCharacterContents];
                    v28 = v26;
                    v29 = v27;
                    v30 = v28;
                    if (v29)
                    {
                      v130 = v15;
                      v131 = v17;
                      v132 = v25;
                      v133 = v21;
                      StringProtocol._ephemeralString.getter();
                      v31 = String._bridgeToObjectiveCImpl()();

                      v32 = [v31 length];
                      swift_unknownObjectRelease();
                      v33 = v29;
                      v34 = v32;
                      v35 = 2;
                      v36 = 0;
LABEL_15:
                      v37 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v33, v34, v35, v36);
                      goto LABEL_16;
                    }

                    v69 = v17 >> 14;
                    v70 = (v25 >> 59) & 1;
                    if ((v21 & 0x1000000000000000) == 0)
                    {
                      LOBYTE(v70) = 1;
                    }

                    v71 = 4 << v70;
                    v125 = (v21 & 0xFFFFFFFFFFFFFFFLL) + 32;
                    v126 = v21 & 0xFFFFFFFFFFFFFFLL;
                    v72 = (HIBYTE(v21) & 0xF);
                    v73 = v25;
                    if ((v21 & 0x2000000000000000) == 0)
                    {
                      v72 = (v25 & 0xFFFFFFFFFFFFLL);
                    }

                    v127 = v72;
                    v128 = v15 >> 14;
                    while (1)
                    {
                      v74 = v15 >> 14;
                      if (v15 >> 14 == v69)
                      {

                        a3 = v129;
                        goto LABEL_64;
                      }

                      v75 = v15 & 0xC;
                      v76 = v15;
                      if (v75 == v71)
                      {
                        v76 = _StringGuts._slowEnsureMatchingEncoding(_:)(v15, v73, v21);
                        v74 = v76 >> 14;
                      }

                      if (v74 < v128 || v74 >= v69)
                      {
                        goto LABEL_114;
                      }

                      if ((v21 & 0x1000000000000000) != 0)
                      {
                        v79 = String.UTF8View._foreignSubscript(position:)();
                        if (v75 != v71)
                        {
                          goto LABEL_53;
                        }
                      }

                      else
                      {
                        v77 = v76 >> 16;
                        if ((v21 & 0x2000000000000000) != 0)
                        {
                          v130 = v73;
                          v131 = v126;
                          v79 = *(&v130 + v77);
                          if (v75 != v71)
                          {
                            goto LABEL_53;
                          }
                        }

                        else
                        {
                          v78 = v125;
                          if ((v73 & 0x1000000000000000) == 0)
                          {
                            v78 = _StringObject.sharedUTF8.getter();
                          }

                          v79 = *(v78 + v77);
                          if (v75 != v71)
                          {
LABEL_53:
                            if ((v21 & 0x1000000000000000) == 0)
                            {
                              goto LABEL_54;
                            }

                            goto LABEL_58;
                          }
                        }
                      }

                      v15 = _StringGuts._slowEnsureMatchingEncoding(_:)(v15, v73, v21);
                      if ((v21 & 0x1000000000000000) == 0)
                      {
LABEL_54:
                        if (v79 < 0)
                        {
                          goto LABEL_61;
                        }

                        v15 = (v15 & 0xFFFFFFFFFFFF0000) + 65540;
                        goto LABEL_40;
                      }

LABEL_58:
                      if (v127 <= v15 >> 16)
                      {
                        goto LABEL_115;
                      }

                      v80 = String.UTF8View._foreignIndex(after:)();
                      if (v79 < 0)
                      {
LABEL_61:

                        goto LABEL_62;
                      }

                      v15 = v80;
LABEL_40:
                      if ((UInt8.allowedURLComponents.getter(v79) & 2) == 0)
                      {
                        goto LABEL_61;
                      }
                    }
                  }

                  v54 = v22;
                  if (v5 == Substring.UTF8View.index(after:)() >> 14)
                  {
                    goto LABEL_94;
                  }

                  v128 = v17;
                  if (Substring.UTF8View.subscript.getter() != 50)
                  {
                    goto LABEL_94;
                  }

                  v55 = Substring.UTF8View.index(after:)();
                  if (v5 == v55 >> 14)
                  {
                    goto LABEL_94;
                  }

                  v56 = v55;
                  if (Substring.UTF8View.subscript.getter() != 53)
                  {
                    goto LABEL_94;
                  }

                  v122 = v56;
                  if (v54 >> 14 >= v15 >> 14)
                  {
                    v57 = Substring.subscript.getter();
                    v59 = v58;
                    v123 = v57;
                    v126 = v60;
                    v127 = v61;
                    v62 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v57, v60, v61, v58, 2u, 0);
                    if (v62 != 2)
                    {
                      v81 = v62;

                      if (v81)
                      {
LABEL_97:
                        v129 = a3;
                        if (v128 >> 14 >= Substring.index(after:)() >> 14)
                        {
                          v102 = Substring.subscript.getter();
                          v104 = v103;
                          v106 = v105;
                          v108 = v107;
                          v109 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v102, v103, v105, v107, 8u, 1);
                          if (v109 == 2)
                          {
                            v130 = v102;
                            v131 = v104;
                            v128 = v106;
                            v132 = v106;
                            v133 = v108;
                            lazy protocol witness table accessor for type Substring and conformance Substring();
                            StringProtocol._ephemeralString.getter();
                            v110 = String._bridgeToObjectiveCImpl()();

                            v111 = [v110 _fastCharacterContents];
                            v112 = v110;
                            if (v111)
                            {
                              v130 = v102;
                              v131 = v104;
                              v132 = v128;
                              v133 = v108;
                              v113 = v111;
                              StringProtocol._ephemeralString.getter();
                              v114 = String._bridgeToObjectiveCImpl()();

                              v115 = [v114 length];
                              swift_unknownObjectRelease();
                              v33 = v113;
                              v34 = v115;
                              v35 = 8;
                              v36 = 1;
                              goto LABEL_15;
                            }

                            v109 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v102, v104, v128, v108, 8u, 1);
                          }

                          v37 = v109;

LABEL_16:

                          a3 = v129;
                          if (v37)
                          {
LABEL_64:
                            v130 = a1;
                            v131 = a2;
                            v132 = a3;
                            v133 = a4;
                            lazy protocol witness table accessor for type Substring and conformance Substring();
                            return String.init<A>(_:)();
                          }

                          goto LABEL_62;
                        }

                        goto LABEL_119;
                      }

LABEL_94:

                      swift_bridgeObjectRelease_n();
                      return 0;
                    }

                    v118 = 0;
                    v130 = v123;
                    v131 = v126;
                    v132 = v127;
                    v133 = v59;
                    v125 = lazy protocol witness table accessor for type Substring and conformance Substring();
                    StringProtocol._ephemeralString.getter();
                    v63 = String._bridgeToObjectiveCImpl()();

                    v64 = [v63 _fastCharacterContents];
                    v65 = v63;
                    if (v64)
                    {
                      v130 = v123;
                      v131 = v126;
                      v132 = v127;
                      v133 = v59;
                      v127 = v64;
                      StringProtocol._ephemeralString.getter();
                      v66 = String._bridgeToObjectiveCImpl()();

                      v67 = [v66 length];
                      swift_unknownObjectRelease();
                      if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v127, v67, 2u, 0))
                      {
                        goto LABEL_97;
                      }

                      goto LABEL_94;
                    }

                    v125 = v59;
                    v126 >>= 14;
                    v82 = (v127 >> 59) & 1;
                    if ((v59 & 0x1000000000000000) == 0)
                    {
                      LOBYTE(v82) = 1;
                    }

                    v83 = 4 << v82;
                    v84 = v123;
                    v124 = v123 >> 14;
                    v119 = (v59 & 0xFFFFFFFFFFFFFFFLL) + 32;
                    v120 = v59 & 0xFFFFFFFFFFFFFFLL;
                    v85 = HIBYTE(v59) & 0xF;
                    if ((v59 & 0x2000000000000000) == 0)
                    {
                      v85 = v127 & 0xFFFFFFFFFFFFLL;
                    }

                    v121 = v85;
                    v86 = v59;
                    v87 = v127;
                    while (1)
                    {
                      v90 = v84 >> 14;
                      if (v84 >> 14 == v126)
                      {

                        goto LABEL_97;
                      }

                      v91 = v19;
                      v92 = v84 & 0xC;
                      v93 = v84;
                      if (v92 == v83)
                      {
                        v96 = v84;
                        v93 = _StringGuts._slowEnsureMatchingEncoding(_:)(v84, v127, v86);
                        v84 = v96;
                        v87 = v127;
                        v86 = v125;
                        v90 = v93 >> 14;
                      }

                      if (v90 < v124 || v90 >= v126)
                      {
                        goto LABEL_116;
                      }

                      if ((v86 & 0x1000000000000000) != 0)
                      {
                        v97 = v84;
                        v98 = String.UTF8View._foreignSubscript(position:)();
                        v84 = v97;
                        v86 = v125;
                        v95 = v98;
                        if (v92 != v83)
                        {
                          goto LABEL_86;
                        }
                      }

                      else if ((v86 & 0x2000000000000000) != 0)
                      {
                        v130 = v87;
                        v131 = v120;
                        v95 = *(&v130 + (v93 >> 16));
                        if (v92 != v83)
                        {
                          goto LABEL_86;
                        }
                      }

                      else
                      {
                        v94 = v119;
                        if ((v87 & 0x1000000000000000) == 0)
                        {
                          v123 = v93;
                          v100 = v84;
                          v101 = _StringObject.sharedUTF8.getter();
                          v84 = v100;
                          v86 = v125;
                          v94 = v101;
                          v93 = v123;
                        }

                        v95 = *(v94 + (v93 >> 16));
                        if (v92 != v83)
                        {
LABEL_86:
                          v19 = v91;
                          if ((v86 & 0x1000000000000000) == 0)
                          {
                            goto LABEL_87;
                          }

                          goto LABEL_91;
                        }
                      }

                      v84 = _StringGuts._slowEnsureMatchingEncoding(_:)(v84, v127, v86);
                      v19 = v91;
                      if ((v125 & 0x1000000000000000) == 0)
                      {
LABEL_87:
                        if (v95 < 0)
                        {
                          goto LABEL_93;
                        }

                        v88 = (v84 & 0xFFFFFFFFFFFF0000) + 65540;
                        goto LABEL_73;
                      }

LABEL_91:
                      if (v121 <= v84 >> 16)
                      {
                        goto LABEL_118;
                      }

                      v99 = String.UTF8View._foreignIndex(after:)();
                      if (v95 < 0)
                      {
LABEL_93:

                        goto LABEL_94;
                      }

                      v88 = v99;
LABEL_73:
                      v89 = UInt8.allowedURLComponents.getter(v95);
                      v86 = v125;
                      v87 = v127;
                      v84 = v88;
                      if ((v89 & 2) == 0)
                      {
                        goto LABEL_93;
                      }
                    }
                  }

LABEL_117:
                  __break(1u);
LABEL_118:
                  __break(1u);
LABEL_119:
                  __break(1u);
                  goto LABEL_120;
                }

LABEL_113:
                __break(1u);
LABEL_114:
                __break(1u);
LABEL_115:
                __break(1u);
LABEL_116:
                __break(1u);
                goto LABEL_117;
              }

LABEL_112:
              __break(1u);
              goto LABEL_113;
            }

            goto LABEL_110;
          }

          goto LABEL_108;
        }

LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

LABEL_120:

  __break(1u);
  return result;
}

uint64_t hexToAscii(_:)(unsigned __int8 a1)
{
  if (a1 < 0x10u)
  {
    return byte_1812DB9F0[a1];
  }

  _StringGuts.grow(_:)(21);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v2);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t asciiToHex(_:)(char a1)
{
  v1 = 0;
  v2 = 0;
  switch(a1)
  {
    case '0':
      return v1 | (v2 << 8);
    case '1':
      v2 = 0;
      v1 = 1;
      break;
    case '2':
      v2 = 0;
      v1 = 2;
      break;
    case '3':
      v2 = 0;
      v1 = 3;
      break;
    case '4':
      v2 = 0;
      v1 = 4;
      break;
    case '5':
      v2 = 0;
      v1 = 5;
      break;
    case '6':
      v2 = 0;
      v1 = 6;
      break;
    case '7':
      v2 = 0;
      v1 = 7;
      break;
    case '8':
      v2 = 0;
      v1 = 8;
      break;
    case '9':
      v2 = 0;
      v1 = 9;
      break;
    case 'A':
    case 'a':
      v2 = 0;
      v1 = 10;
      break;
    case 'B':
    case 'b':
      v2 = 0;
      v1 = 11;
      break;
    case 'C':
    case 'c':
      v2 = 0;
      v1 = 12;
      break;
    case 'D':
    case 'd':
      v2 = 0;
      v1 = 13;
      break;
    case 'E':
    case 'e':
      v2 = 0;
      v1 = 14;
      break;
    case 'F':
    case 'f':
      v2 = 0;
      v1 = 15;
      break;
    default:
      v1 = 0;
      v2 = 1;
      break;
  }

  return v1 | (v2 << 8);
}

uint64_t closure #3 in static RFC3986Parser.percentEncode<A>(pathComponent:including:)@<X0>(uint64_t isStackAllocationSafe@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v9 = (a2 * 3) >> 64;
  v10 = 3 * a2;
  if (v9 == v10 >> 63)
  {
    if (v10 < 0)
    {
      __break(1u);
    }

    v4 = a3;
    v6 = isStackAllocationSafe;
    if (v10 <= 1024)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v14 = swift_slowAlloc();
    v15 = a4;
    v16 = v14;
    closure #1 in closure #3 in static RFC3986Parser.percentEncode<A>(pathComponent:including:)(v14, v6, a2, v4, v15);
    v4 = v5;
    if (!v5)
    {
      return MEMORY[0x1865D2690](v16, -1, -1);
    }

    goto LABEL_13;
  }

LABEL_4:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  result = closure #1 in closure #3 in static RFC3986Parser.percentEncode<A>(pathComponent:including:)(&v18[-1] - v11, v6, a2, v4, v18);
  if (v5)
  {
    v16 = v5;
    swift_willThrow();

    __break(1u);
LABEL_13:

    result = MEMORY[0x1865D2690](v16, -1, -1);
    __break(1u);
    return result;
  }

  v13 = v18[1];
  *a4 = v18[0];
  a4[1] = v13;
  return result;
}

uint64_t closure #1 in closure #3 in static RFC3986Parser.percentEncode<A>(pathComponent:including:)@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v5 = result;
  v6 = a5;
  if (a2 && a3)
  {
    v8 = a2;
    v9 = 0;
    v10 = &a2[a3];
    v11 = a4 + 56;
    v6 = -1;
    do
    {
      v13 = *v8;
      if (*(a4 + 16) && (result = MEMORY[0x1865CD020](*(a4 + 40), *v8, 1), v14 = -1 << *(a4 + 32), v15 = result & ~v14, ((*(v11 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0))
      {
        v16 = ~v14;
        while (*(*(a4 + 48) + v15) != v13)
        {
          v15 = (v15 + 1) & v16;
          if (((*(v11 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        if (__OFADD__(v9, 2))
        {
          goto LABEL_23;
        }

        if (v9 + 2 < v9)
        {
          goto LABEL_24;
        }

        v17 = hexToAscii(_:)(v13 >> 4);
        result = hexToAscii(_:)(v13 & 0xF);
        v18 = (v9 + v5);
        if (!v5)
        {
          v18 = 0;
        }

        *v18 = 37;
        v18[1] = v17;
        v18[2] = result;
        v12 = __OFADD__(v9, 3);
        v9 += 3;
        if (v12)
        {
          __break(1u);
          goto LABEL_21;
        }
      }

      else
      {
LABEL_4:
        *(v5 + v9) = v13;
        v12 = __OFADD__(v9++, 1);
        if (v12)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      ++v8;
    }

    while (v8 != v10);
    v6 = a5;
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_21:
    result = static String._fromUTF8Repairing(_:)();
    *v6 = result;
    *(v6 + 8) = v19;
  }

  return result;
}

uint64_t _sSS44_fromNonContiguousUnsafeBitcastUTF8RepairingySS6result_Sb11repairsMadetxSlRzlFZSs0F4ViewV_Tt0g5(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = Substring.UTF8View.distance(from:to:)();
  if (v8)
  {
    v9 = v8;
    v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v8, 0);
    v11 = specialized Sequence._copySequenceContents(initializing:)(v14, (v10 + 4), v9, a1, a2, a3, a4);

    if (v11 != v9)
    {
      __break(1u);
    }
  }

  v12 = static String._fromUTF8Repairing(_:)();

  return v12;
}

uint64_t closure #2 in String.init<A, B>(decoding:as:)@<X0>(uint64_t *a1@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t _StringGuts.validateSubscalarRange(_:in:)(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  if ((a2 & 0xC) == 4 << v8)
  {
    v10 = result;
    v11 = a3;
    v12 = a4;
    v13 = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a5, a6);
    a4 = v12;
    a3 = v11;
    a2 = v13;
    result = v10;
  }

  if ((result & 0xC) == v9)
  {
    v14 = a2;
    v15 = a5;
    v16 = a3;
    v17 = a6;
    v18 = a4;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, v15, v17);
    a4 = v18;
    a3 = v16;
    a2 = v14;
  }

  if (a2 >> 14 > a4 >> 14 || result >> 14 < a3 >> 14 || a2 >> 14 < result >> 14)
  {
    __break(1u);
  }

  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5063_sSS8decoding2asSSx_q_mtcSlRzs16_UnicodeEncodingR_8CodeUnitQy_7g26Rtzr0_lufcSSSRyAGGXEfU_Ss8jK14V_s0C0O0H0OTG5Tf1cn_n(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return 0;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v10[0] = a3;
    v10[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v8 = v10;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v8 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v8 = _StringObject.sharedUTF8.getter();
  }

  return _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SS_Tg5063_sSS8decoding2asSSx_q_mtcSlRzs16_UnicodeEncodingR_8CodeUnitQy_7g26Rtzr0_lufcSSSRyAGGXEfU_Ss8iJ14V_s0C0O0H0OTG5Tf1nnc_nTf4xn_n(v8, a1, a2, a3, a4);
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SS_Tg5063_sSS8decoding2asSSx_q_mtcSlRzs16_UnicodeEncodingR_8CodeUnitQy_7g26Rtzr0_lufcSSSRyAGGXEfU_Ss8iJ14V_s0C0O0H0OTG5Tf1nnc_nTf4xn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v6 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v8 = a2 & 0xC;
  v9 = a2;
  if (v8 == v7)
  {
    v11 = a2;
    v12 = a3;
    v13 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v11;
    a3 = v12;
    a5 = v13;
    v9 = result;
    if ((v13 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v10 = v9 >> 16;
      if (v8 != v7)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v14 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a5) & 0xF;
  }

  if (v14 < v9 >> 16)
  {
    goto LABEL_28;
  }

  v15 = a2;
  v16 = a3;
  v17 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v17;
  v10 = result;
  a3 = v16;
  a2 = v15;
  if (v8 == v7)
  {
LABEL_14:
    v18 = a3;
    v19 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v18;
    a5 = v19;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v7)
  {
    v20 = a2;
    v21 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v20;
    a5 = v21;
    a3 = result;
    if ((v21 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
LABEL_21:
    if (__OFADD__(v10, result))
    {
      __break(1u);
    }

    else if (v10 + result >= v10)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    __break(1u);
    goto LABEL_26;
  }

  v22 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v22 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v22 < a2 >> 16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v22 >= a3 >> 16)
  {
    result = String.UTF8View._foreignDistance(from:to:)();
    goto LABEL_21;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t outlined destroy of _HasContiguousBytes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for NSMutableIndexSet()
{
  result = lazy cache variable for type metadata for NSMutableIndexSet;
  if (!lazy cache variable for type metadata for NSMutableIndexSet)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSMutableIndexSet);
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS10FoundationE17LocalizationValueV14FormatArgumentV_Tt1g5(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v557 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v557 - v9;
  v631 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v11 = *(v631 - 8);
  MEMORY[0x1EEE9AC00](v631);
  v13 = &v557 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v557 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v606 = &v557 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v609 = &v557 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v605 = &v557 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v608 = &v557 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v618 = &v557 - v26;
  v612 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v612);
  v625 = &v557 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v624 = &v557 - v29;
  v626 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v30 = *(v626 - 8);
  MEMORY[0x1EEE9AC00](v626);
  v603 = &v557 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v604 = &v557 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v621 = &v557 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v614 = &v557 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v620 = &v557 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v613 = &v557 - v41;
  v42 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v42);
  MEMORY[0x1EEE9AC00](v43);
  MEMORY[0x1EEE9AC00](v44);
  MEMORY[0x1EEE9AC00](v45);
  MEMORY[0x1EEE9AC00](v46);
  v53 = *(v4 + 16);
  if (v53 != *(v2 + 16))
  {
    return 0;
  }

  v601 = *(v4 + 16);
  if (!v53 || v4 == v2)
  {
    return 1;
  }

  v589 = v48;
  v590 = v52;
  v578 = v51;
  v579 = v5;
  v591 = v47;
  v592 = v10;
  v593 = v7;
  v594 = (&v557 - v49);
  v610 = v2 + 32;
  v611 = v4 + 32;
  v607 = (v11 + 8);
  v584 = (v30 + 16);
  v582 = (v11 + 16);
  v583 = (v30 + 8);
  v588 = v50;
  v580 = v13;
  v581 = v16;
  v54 = 0;
  v55 = v601;
  while (1)
  {
    result = outlined init with copy of String.LocalizationValue.FormatArgument(v611 + 112 * v54, v679);
    if (v54 == v55)
    {
      goto LABEL_346;
    }

    outlined init with copy of String.LocalizationValue.FormatArgument(v610 + 112 * v54, v678);
    outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v679, v668);
    outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v678, &v670);
    if (v669 <= 2u)
    {
      break;
    }

    if (v669 <= 4u)
    {
      if (v669 == 3)
      {
        outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v668, v642);
        if (v677 == 3)
        {
          *v656 = *&v642[32];
          *&v656[16] = v643[0];
          *&v656[32] = v643[1];
          *&v656[48] = v643[2];
          v654 = *v642;
          v655 = *&v642[16];
          *v653 = v672;
          *&v653[16] = v673;
          *&v653[32] = v674;
          *&v653[48] = v675;
          v651 = v670;
          v652 = v671;
          v57 = (*&v642[16])(&v651);
          outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v651);
          outlined destroy of String.LocalizationValue.FormatArgument(v678);
          outlined destroy of String.LocalizationValue.FormatArgument(v679);
          outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v654);
          goto LABEL_8;
        }

        outlined destroy of String.LocalizationValue.FormatArgument(v678);
        outlined destroy of String.LocalizationValue.FormatArgument(v679);
        outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(v642);
        goto LABEL_338;
      }

      outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v668, v642);
      *&v656[32] = v643[1];
      *&v656[48] = v643[2];
      *&v656[64] = v644;
      v654 = *v642;
      v655 = *&v642[16];
      *v656 = *&v642[32];
      *&v656[16] = v643[0];
      if (v677 == 4)
      {
        *&v653[32] = v674;
        *&v653[48] = v675;
        v651 = v670;
        v652 = v671;
        *v653 = v672;
        *&v653[16] = v673;
        v661 = v643[1];
        v662 = v643[2];
        v657 = *v642;
        v658 = *&v642[16];
        v659 = *&v642[32];
        v660 = v643[0];
        v666[1] = v674;
        v666[2] = v675;
        v664 = v670;
        v665[0] = v671;
        *&v653[64] = v676;
        v663 = v644;
        v667 = v676;
        v665[1] = v672;
        v666[0] = v673;
        v57 = static LocalizedStringResource.== infix(_:_:)(&v657, &v664);
        outlined destroy of String.LocalizationValue.FormatArgument(v678);
        outlined destroy of String.LocalizationValue.FormatArgument(v679);
        outlined destroy of LocalizedStringResource(&v651);
        outlined destroy of LocalizedStringResource(&v654);
        goto LABEL_8;
      }

      outlined destroy of LocalizedStringResource(&v654);
LABEL_337:
      outlined destroy of String.LocalizationValue.FormatArgument(v678);
      outlined destroy of String.LocalizationValue.FormatArgument(v679);
      goto LABEL_338;
    }

    if (v669 == 5)
    {
      result = outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v668, v642);
      v630 = *v642;
      v627 = *&v642[16];
      if (v677 == 5)
      {
        v94 = v670;
        v95 = *(v630 + 16);
        v96 = *(v670 + 16);
        v623 = v671;
        if (v95 != v96)
        {
LABEL_328:
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          outlined destroy of String.LocalizationValue.FormatArgument(v678);
          outlined destroy of String.LocalizationValue.FormatArgument(v679);

          goto LABEL_329;
        }

        LODWORD(v622) = v642[8];
        v97 = v642[9];
        v619.i32[0] = BYTE8(v670);
        LODWORD(v617) = BYTE9(v670);
        if (v95 && v630 != v670)
        {
          LODWORD(v616) = v642[9];
          v585 = v54;
          if (*(v630 + 16))
          {
            v98 = 0;
            v628 = v95 - 1;
            v99 = 32;
            while (1)
            {
              v100 = *(v630 + v99 + 32);
              v101 = *(v630 + v99);
              v652 = *(v630 + v99 + 16);
              *v653 = v100;
              v651 = v101;
              v102 = *(v630 + v99 + 48);
              v103 = *(v630 + v99 + 64);
              v104 = *(v630 + v99 + 80);
              *&v653[64] = *(v630 + v99 + 96);
              *&v653[32] = v103;
              *&v653[48] = v104;
              *&v653[16] = v102;
              if (v98 >= *(v94 + 16))
              {
                break;
              }

              v105 = *(v94 + v99 + 32);
              v106 = *(v94 + v99);
              v655 = *(v94 + v99 + 16);
              *v656 = v105;
              v654 = v106;
              v107 = *(v94 + v99 + 48);
              v108 = *(v94 + v99 + 64);
              v109 = *(v94 + v99 + 80);
              *&v656[64] = *(v94 + v99 + 96);
              *&v656[32] = v108;
              *&v656[48] = v109;
              *&v656[16] = v107;
              if (v651 != v654 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_328;
              }

              v110 = v652;
              v111 = *v653;
              v112 = v655;
              v113 = *v656;
              outlined init with copy of LocalizedStringResource(&v651, &v657);
              outlined init with copy of LocalizedStringResource(&v654, &v657);

              if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS10FoundationE17LocalizationValueV14FormatArgumentV_Tt1g5(v110, v112) & 1) == 0)
              {

LABEL_327:
                outlined destroy of LocalizedStringResource(&v654);
                outlined destroy of LocalizedStringResource(&v651);
                goto LABEL_328;
              }

              if (*(&v110 + 1) == *(&v112 + 1) && v111 == v113)
              {
              }

              else
              {
                v114 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v114 & 1) == 0)
                {
                  goto LABEL_327;
                }
              }

              if (*&v653[16])
              {
                if (!*&v656[16] || *&v653[8] != *&v656[8] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  goto LABEL_327;
                }
              }

              else if (*&v656[16])
              {
                goto LABEL_327;
              }

              v657 = *&v653[24];
              v629 = *&v656[24];
              v664 = *&v656[24];
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              v115 = specialized static Locale.== infix(_:_:)(&v657, &v664);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              if ((v115 & 1) == 0)
              {
                goto LABEL_327;
              }

              v657 = *&v653[40];
              v629 = *&v656[40];
              v664 = *&v656[40];
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              v116 = static URL.== infix(_:_:)(&v657, &v664);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              outlined destroy of LocalizedStringResource(&v654);
              result = outlined destroy of LocalizedStringResource(&v651);
              if ((v116 & 1) == 0)
              {
                goto LABEL_328;
              }

              if (v628 == v98)
              {

                v55 = v601;
                v54 = v585;
                v97 = v616;
                goto LABEL_58;
              }

              v99 += 104;
              if (++v98 >= *(v630 + 16))
              {
                goto LABEL_345;
              }
            }
          }

          else
          {
LABEL_345:
            __break(1u);
LABEL_346:
            __break(1u);
LABEL_347:
            __break(1u);
LABEL_348:
            __break(1u);
          }

          __break(1u);
LABEL_350:
          __break(1u);
LABEL_351:
          __break(1u);
LABEL_352:
          __break(1u);
LABEL_353:
          __break(1u);
LABEL_354:
          __break(1u);
LABEL_355:
          __break(1u);
LABEL_356:
          __break(1u);
          goto LABEL_357;
        }

LABEL_58:
        if (v622 != v619.i32[0] || v97 != v617)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          outlined destroy of String.LocalizationValue.FormatArgument(v678);
          outlined destroy of String.LocalizationValue.FormatArgument(v679);
LABEL_329:
          outlined destroy of String.LocalizationValue.FormatArgument.Storage(v668);
          return 0;
        }

        v654 = v627;
        v651 = v623;
        v57 = specialized static Locale.== infix(_:_:)(&v654, &v651);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        outlined destroy of String.LocalizationValue.FormatArgument(v678);
        outlined destroy of String.LocalizationValue.FormatArgument(v679);
        goto LABEL_8;
      }

      swift_unknownObjectRelease();
      goto LABEL_337;
    }

    outlined destroy of String.LocalizationValue.FormatArgument(v678);
    outlined destroy of String.LocalizationValue.FormatArgument(v679);
    outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v668, v642);
    if (v677 != 6)
    {
      goto LABEL_338;
    }

    v133 = v642[0];
    v134 = v670;
    outlined destroy of String.LocalizationValue.FormatArgument.Storage(v668);
    if (v133 != v134)
    {
      return 0;
    }

LABEL_9:
    ++v54;
    result = 1;
    if (v54 == v55)
    {
      return result;
    }
  }

  if (!v669)
  {
    outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v668, v642);
    if (v677)
    {
      outlined destroy of String.LocalizationValue.FormatArgument(v678);
      outlined destroy of String.LocalizationValue.FormatArgument(v679);
      __swift_destroy_boxed_opaque_existential_1(v642);
      goto LABEL_338;
    }

    outlined init with take of Any(v642, &v657);
    outlined init with take of Any(&v670, &v664);
    v117 = *(&v658 + 1);
    v118 = __swift_project_boxed_opaque_existential_1(&v657, *(&v658 + 1));
    *&v637 = v117;
    v119 = __swift_allocate_boxed_opaque_existential_0(&v634);
    (*(*(v117 - 8) + 16))(v119, v118, v117);
    v120 = *(&v665[0] + 1);
    v121 = __swift_project_boxed_opaque_existential_1(&v664, *(&v665[0] + 1));
    v633[3] = v120;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v633);
    (*(*(v120 - 8) + 16))(boxed_opaque_existential_0, v121, v120);
    outlined init with copy of Any(&v634, v632);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSQ_pMd);
    if (swift_dynamicCast())
    {
      v585 = v54;
      outlined init with take of Equatable(&v651, &v654);
      v123 = *(&v655 + 1);
      v124 = __swift_project_boxed_opaque_existential_1(&v654, *(&v655 + 1));
      v630 = &v557;
      v125 = *(v123 - 8);
      MEMORY[0x1EEE9AC00](v124);
      v127 = &v557 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
      outlined init with copy of Any(v633, &v651);
      v128 = type metadata accessor for Optional();
      v129 = *(v128 - 8);
      MEMORY[0x1EEE9AC00](v128);
      v131 = &v557 - v130;
      if (swift_dynamicCast())
      {
        (*(v125 + 56))(v131, 0, 1, v123);
        (*(v125 + 32))(v127, v131, v123);
        v132 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v125 + 8))(v127, v123);
        outlined destroy of String.LocalizationValue.FormatArgument(v678);
        outlined destroy of String.LocalizationValue.FormatArgument(v679);
      }

      else
      {
        outlined destroy of String.LocalizationValue.FormatArgument(v678);
        outlined destroy of String.LocalizationValue.FormatArgument(v679);
        (*(v125 + 56))(v131, 1, 1, v123);
        (*(v129 + 8))(v131, v128);
        v132 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(&v654);
      v55 = v601;
      v54 = v585;
    }

    else
    {
      outlined destroy of String.LocalizationValue.FormatArgument(v678);
      outlined destroy of String.LocalizationValue.FormatArgument(v679);
      v651 = 0u;
      v652 = 0u;
      *v653 = 0;
      outlined destroy of TermOfAddress?(&v651, &_sSQ_pSgMd);
      v132 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v633);
    __swift_destroy_boxed_opaque_existential_1(&v634);
    __swift_destroy_boxed_opaque_existential_1(&v664);
    __swift_destroy_boxed_opaque_existential_1(&v657);
    outlined destroy of String.LocalizationValue.FormatArgument.Storage(v668);
    if ((v132 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (v669 != 1)
  {
    outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v668, v642);
    if (v677 == 2)
    {
      *v656 = *&v642[32];
      *&v656[16] = v643[0];
      *&v656[32] = v643[1];
      *&v656[48] = v643[2];
      v654 = *v642;
      v655 = *&v642[16];
      *v653 = v672;
      *&v653[16] = v673;
      *&v653[32] = v674;
      *&v653[48] = v675;
      v651 = v670;
      v652 = v671;
      v57 = (*&v642[16])(&v651);
      outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(&v651);
      outlined destroy of String.LocalizationValue.FormatArgument(v678);
      outlined destroy of String.LocalizationValue.FormatArgument(v679);
      outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(&v654);
LABEL_8:
      outlined destroy of String.LocalizationValue.FormatArgument.Storage(v668);
      if ((v57 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    outlined destroy of String.LocalizationValue.FormatArgument(v678);
    outlined destroy of String.LocalizationValue.FormatArgument(v679);
    outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(v642);
LABEL_338:
    outlined destroy of TermOfAddress?(v668, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV7StorageO_AGtMd);
    return 0;
  }

  outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v668, &v657);
  v58 = v657;
  if (v677 != 1)
  {

    goto LABEL_337;
  }

  v585 = v54;
  v575 = *(&v670 + 1);
  v59 = v670;
  v576 = *(&v657 + 1);
  v742[48] = *(v657 + 24);
  v742[49] = *(v657 + 40);
  v742[50] = *(v657 + 56);
  v630 = BigString.startIndex.getter();
  *&v629 = v60;
  v628 = v61;
  v63 = v62;
  v64 = BigString.endIndex.getter();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v742[45] = *(v59 + 24);
  v742[46] = *(v59 + 40);
  *&v623 = v59;
  v742[47] = *(v59 + 56);
  v71 = BigString.startIndex.getter();
  v599 = v72;
  v600.i64[0] = v71;
  v597 = v74;
  v598 = v73;
  v75 = BigString.endIndex.getter();
  v595 = v76;
  v596 = v75;
  v586 = v78;
  v587 = v77;
  *v642 = v630;
  *&v642[8] = v629;
  *&v642[16] = v628;
  *&v642[24] = v63;
  *&v642[32] = v64;
  *&v642[40] = v66;
  *&v643[0] = v68;
  *(&v643[0] + 1) = v70;
  v79 = lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  RangeSet.init(_:)();
  v622 = v58;
  *v589 = v58;
  v617 = v79;
  RangeSet.init()();
  v80 = v618;
  RangeSet.ranges.getter();
  v81 = v624;
  v82 = v631;
  v577 = *v582;
  v577(v624, v80, v631);
  v83 = *(v612 + 36);
  v84 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  v615 = *v607;
  v615(v80, v82);
  dispatch thunk of Collection.endIndex.getter();
  v85 = *(v81 + v83);
  v630 = v84;
  if (v85 != *v642)
  {
    v619.i64[0] = v83;
    do
    {
      v135 = dispatch thunk of Collection.subscript.read();
      v137 = v136[5];
      *&v629 = v136[4];
      v628 = v137;
      *&v627 = v136[6];
      v135(v642, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v138 = v622;
      v742[42] = *(v622 + 24);
      v742[43] = *(v622 + 40);
      v742[44] = *(v622 + 56);
      swift_unknownObjectRetain();
      v139 = BigString.UnicodeScalarView.index(roundingDown:)();
      v141 = v140;
      v143 = v142;
      v145 = v144;
      swift_unknownObjectRelease();
      v742[39] = *(v138 + 24);
      v742[40] = *(v138 + 40);
      v742[41] = *(v138 + 56);
      swift_unknownObjectRetain();
      v146 = BigString.UnicodeScalarView.index(roundingDown:)();
      v148 = v147;
      v150 = v149;
      v152 = v151;
      v82 = v631;
      swift_unknownObjectRelease();
      *v642 = v139;
      *&v642[8] = v141;
      *&v642[16] = v143;
      *&v642[24] = v145;
      *&v642[32] = v146;
      *&v642[40] = v148;
      *&v643[0] = v150;
      *(&v643[0] + 1) = v152;
      if ((v146 ^ v139) >= 0x400)
      {
        v153 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v153(&v654, 0);
      }

      v81 = v624;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v81 + v619.i64[0]) != *v642);
  }

  outlined destroy of TermOfAddress?(v81, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v86 = v591;
  v87 = v589;
  v88 = v589 + *(v591 + 24);
  v616 = *v584;
  v616(v88, v620, v626);
  v89 = v618;
  RangeSet.ranges.getter();
  v90 = RangeSet.Ranges.count.getter();
  v91 = v615;
  v615(v89, v82);
  v92 = *(v86 + 28);
  v619.i32[0] = v90 > 1;
  *(v87 + v92) = v619.i8[0];
  v93 = v608;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v654 == *v642 || (v154 = dispatch thunk of Collection.subscript.read(), v156 = *v155, v573 = v155[1], v574 = v156, v157 = v155[3], v572 = v155[2], *&v571 = v157, v154(v642, 0), v91(v93, v82), v93 = v605, RangeSet.ranges.getter(), (dispatch thunk of Collection.isEmpty.getter() & 1) != 0))
  {
    v91(v93, v82);
    v158 = *(v622 + 72);
    *&v629 = *(v622 + 96);
    if (v158)
    {
      v628 = *(v158 + 18);
    }

    else
    {
      v628 = 0;
    }

    v742[33] = *(v622 + 24);
    v742[34] = *(v622 + 40);
    v742[35] = *(v622 + 56);
    v159 = v622;
    v160 = BigString.startIndex.getter();
    v162 = v161;
    v164 = v163;
    *&v627 = v165;
    v166 = *(v159 + 96);
    v167 = swift_unknownObjectRetain();
    AttributedString._InternalRuns.startIndex.getter(v167, v166, &v680);
    swift_unknownObjectRelease();
    v168 = *v583;
    v169 = v626;
    (*v583)(v620, v626);
    v602 = v168;
    v168(v613, v169);
    v742[30] = *(v159 + 24);
    v742[31] = *(v159 + 40);
    v742[32] = *(v159 + 56);
    v170 = BigString.startIndex.getter();
    v171 = v160;
    v172 = v170;
    v174 = v173;
    v175 = v162;
    v177 = v176;
    v178 = v164;
    v180 = v179;
    v181 = v627;
    v182 = 0;
    v183 = 0;
    v184 = 0;
    v185 = v682;
    v186 = v680;
    v187 = v681;
    v188 = -1;
    v642[0] = 0;
    v189 = v171;
    v190 = v162;
    v191 = v164;
    v192 = v627;
    v193 = v170;
    v194 = v174;
    v195 = v177;
    v196 = v180;
    v197 = -1;
    v198 = v625;
    v199 = v618;
  }

  else
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v200 = dispatch thunk of Collection.subscript.read();
    v202 = v201[4];
    v194 = v201[5];
    v203 = v201[7];
    v570 = v201[6];
    v565 = v203;
    v200(v642, 0);
    v91(v93, v82);
    v204 = v622;
    AttributedString.Guts.findRun(at:)(v574, v571, v642);
    *&v629 = *v642;
    v628 = *&v642[8];
    v563 = *&v642[24];
    v564 = *&v642[16];
    v568 = *&v643[0];
    v569 = *&v642[40];
    v567 = *(&v643[0] + 1);
    *&v627 = *&v643[1];
    v742[36] = *(v204 + 24);
    v742[37] = *(v204 + 40);
    v742[38] = *(v204 + 56);
    v205 = BigString.endIndex.getter();
    v206 = v82;
    v566 = v202;
    if ((v205 ^ v202) >= 0x400)
    {
      v561 = v194;
      v213 = v565;
      AttributedString.Guts.findRun(at:)(v202, v565, v642);
      v559 = *&v642[8];
      v560 = *v642;
      v562 = *&v642[24];
      v558 = *&v642[40];
      v177 = *(&v643[0] + 1);
      v174 = *&v643[0];
      v180 = *&v643[1];
      v199 = v618;
      v214 = v626;
      RangeSet.ranges.getter();
      v197 = RangeSet.Ranges.count.getter();
      v91(v199, v206);
      v215 = *v583;
      (*v583)(v620, v214);
      v602 = v215;
      v215(v613, v214);
      v172 = v558;
      v187 = v559;
      v185 = v562;
      v196 = v213;
      v195 = v570;
      v193 = v566;
      v186 = v560;
      v194 = v561;
      v188 = 0;
    }

    else
    {
      if (*(v204 + 72))
      {
        v207 = *(v204 + 80);
      }

      else
      {
        v207 = 0;
      }

      v562 = v207;
      v208 = *(v204 + 96);
      v209 = swift_unknownObjectRetain();
      v210 = specialized Rope._endPath.getter(v209);
      swift_unknownObjectRelease();
      v199 = v618;
      v211 = v626;
      RangeSet.ranges.getter();
      v197 = RangeSet.Ranges.count.getter();
      v91(v199, v82);
      v212 = *v583;
      (*v583)(v620, v211);
      v602 = v212;
      v212(v613, v211);
      v186 = v208;
      v185 = v562;
      v196 = v565;
      v193 = v566;
      v188 = 0;
      v187 = v210;
      v172 = v566;
      v174 = v194;
      v195 = v570;
      v177 = v570;
      v180 = v565;
    }

    v198 = v625;
    v184 = v619.i8[0];
    v190 = v573;
    v189 = v574;
    v191 = v572;
    v192 = v571;
    v175 = v568;
    v171 = v569;
    v178 = v567;
    v181 = v627;
    v182 = v563;
    v183 = v564;
  }

  v216 = v589;
  v589[1] = v182;
  *(v216 + 16) = v629;
  *(v216 + 24) = v628;
  *(v216 + 32) = v183;
  *(v216 + 40) = v171;
  *(v216 + 48) = v175;
  *(v216 + 56) = v178;
  *(v216 + 64) = v181;
  *(v216 + 72) = v189;
  *(v216 + 80) = v190;
  *(v216 + 88) = v191;
  *(v216 + 96) = v192;
  *(v216 + 104) = v188;
  *(v216 + 112) = 0;
  *(v216 + 113) = v184;
  *(v216 + 120) = v185;
  *(v216 + 128) = v186;
  *(v216 + 136) = v187;
  *(v216 + 152) = v172;
  *(v216 + 160) = v174;
  *(v216 + 168) = v177;
  *(v216 + 176) = v180;
  *(v216 + 184) = v193;
  *(v216 + 192) = v194;
  *(v216 + 200) = v195;
  *(v216 + 208) = v196;
  *(v216 + 216) = v197;
  *(v216 + 224) = 0;
  *(v216 + 225) = v184;
  outlined init with take of AttributedString.Runs(v216, v594);
  *v642 = v600.i64[0];
  *&v642[8] = v599;
  *&v642[16] = v598;
  *&v642[24] = v597;
  *&v642[32] = v596;
  *&v642[40] = v595;
  *&v643[0] = v587;
  *(&v643[0] + 1) = v586;
  v217 = v623;

  RangeSet.init(_:)();
  *v590 = v217;
  RangeSet.init()();
  RangeSet.ranges.getter();
  v218 = v631;
  v577(v198, v199, v631);
  v219 = *(v612 + 36);
  dispatch thunk of Collection.startIndex.getter();
  v615(v199, v218);
  dispatch thunk of Collection.endIndex.getter();
  v220 = *(v198 + v219);
  v619.i64[0] = v219;
  if (v220 != *v642)
  {
    do
    {
      v228 = dispatch thunk of Collection.subscript.read();
      v230 = v229[5];
      *&v629 = v229[4];
      v628 = v230;
      *&v627 = v229[6];
      v228(v642, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v231 = v623;
      v742[27] = *(v623 + 24);
      v742[28] = *(v623 + 40);
      v742[29] = *(v623 + 56);
      swift_unknownObjectRetain();
      v232 = BigString.UnicodeScalarView.index(roundingDown:)();
      v234 = v233;
      v236 = v235;
      v238 = v237;
      swift_unknownObjectRelease();
      v742[24] = *(v231 + 24);
      v742[25] = *(v231 + 40);
      v742[26] = *(v231 + 56);
      swift_unknownObjectRetain();
      v239 = BigString.UnicodeScalarView.index(roundingDown:)();
      v241 = v240;
      v243 = v242;
      v245 = v244;
      v218 = v631;
      swift_unknownObjectRelease();
      *v642 = v232;
      *&v642[8] = v234;
      *&v642[16] = v236;
      *&v642[24] = v238;
      *&v642[32] = v239;
      *&v642[40] = v241;
      *&v643[0] = v243;
      *(&v643[0] + 1) = v245;
      if ((v239 ^ v232) >= 0x400)
      {
        v246 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v246(&v654, 0);
      }

      v198 = v625;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v198 + v619.i64[0]) != *v642);
  }

  outlined destroy of TermOfAddress?(v198, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v222 = v590;
  v221 = v591;
  v223 = v626;
  v616((v590 + *(v591 + 24)), v621, v626);
  v224 = v618;
  RangeSet.ranges.getter();
  v225 = RangeSet.Ranges.count.getter();
  v615(v224, v218);
  v226 = *(v221 + 28);
  LODWORD(v599) = v225 > 1;
  *(v222 + v226) = v599;
  v227 = v609;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v654 == *v642 || (v247 = dispatch thunk of Collection.subscript.read(), v250 = *v248, v249 = v248[1], v251 = v248[3], v597 = v248[2], v598 = v249, v596 = v251, v247(v642, 0), v615(v227, v218), v227 = v606, RangeSet.ranges.getter(), (dispatch thunk of Collection.isEmpty.getter() & 1) != 0))
  {
    v615(v227, v218);
    v252 = v623;
    v253 = *(v623 + 96);
    v254 = swift_unknownObjectRetain();
    AttributedString._InternalRuns.startIndex.getter(v254, v253, v683);
    swift_unknownObjectRelease();
    v742[18] = *(v252 + 24);
    v742[19] = *(v252 + 40);
    v742[20] = *(v252 + 56);
    *&v629 = BigString.startIndex.getter();
    v628 = v255;
    *&v627 = v256;
    v258 = v257;
    v619 = v683[1];
    v600 = v683[0];
    v642[0] = 0;
    v259 = *(v252 + 96);
    v260 = swift_unknownObjectRetain();
    AttributedString._InternalRuns.startIndex.getter(v260, v259, &v684);
    swift_unknownObjectRelease();
    v261 = v602;
    v602(v621, v223);
    v261(v614, v223);
    v742[15] = *(v252 + 24);
    v742[16] = *(v252 + 40);
    v742[17] = *(v252 + 56);
    v262 = BigString.startIndex.getter();
    v266 = v600;
    v267 = v619;
    v268 = 0;
    v269 = v629;
    v270 = v262;
    v271 = v263;
    v272 = v628;
    v273 = v264;
    v274 = v627;
    v275 = 0;
    v276 = v686;
    v277 = v684;
    v278 = -1;
    v279 = v685;
    v280 = v629;
    v642[0] = 0;
    v281 = v628;
    v282 = v627;
    v283 = v258;
    v284 = v262;
    v285 = v265;
    v286 = -1;
  }

  else
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v287 = dispatch thunk of Collection.subscript.read();
    v284 = v288[4];
    v289 = v288[5];
    v290 = v288[7];
    v595 = v288[6];
    v586 = v289;
    v587 = v290;
    v287(v642, 0);
    v615(v227, v218);
    v577 = v250;
    v291 = v250;
    v292 = v623;
    AttributedString.Guts.findRun(at:)(v291, v596, v642);
    LODWORD(v574) = 0;
    v619 = *&v642[16];
    v600 = *v642;
    *&v629 = *&v642[40];
    *&v627 = *(&v643[0] + 1);
    v628 = *&v643[0];
    v573 = *&v643[1];
    v742[21] = *(v292 + 24);
    v742[22] = *(v292 + 40);
    v742[23] = *(v292 + 56);
    v293 = v218;
    if ((BigString.endIndex.getter() ^ v284) >= 0x400)
    {
      AttributedString.Guts.findRun(at:)(v284, v587, v642);
      v571 = *&v642[8];
      v277 = *v642;
      v270 = *&v642[40];
      v273 = *(&v643[0] + 1);
      v271 = *&v643[0];
      v569 = *&v643[1];
      v570 = *&v642[24];
      v300 = v618;
      v301 = v626;
      RangeSet.ranges.getter();
      v286 = RangeSet.Ranges.count.getter();
      v615(v300, v293);
      v572 = v284;
      v302 = v602;
      v602(v621, v301);
      v302(v614, v301);
      v279 = v571;
      v265 = v569;
      v276 = v570;
      v263 = v586;
      v285 = v587;
      v264 = v595;
      v284 = v572;
      v278 = 0;
    }

    else
    {
      if (*(v292 + 72))
      {
        v294 = *(v292 + 80);
      }

      else
      {
        v294 = 0;
      }

      v277 = *(v292 + 96);
      v295 = swift_unknownObjectRetain();
      v296 = specialized Rope._endPath.getter(v295);
      swift_unknownObjectRelease();
      v297 = v618;
      v298 = v626;
      RangeSet.ranges.getter();
      v286 = RangeSet.Ranges.count.getter();
      v615(v297, v293);
      v299 = v602;
      v602(v621, v298);
      v299(v614, v298);
      v276 = v294;
      v263 = v586;
      v285 = v587;
      v278 = 0;
      v279 = v296;
      v270 = v284;
      v271 = v586;
      v264 = v595;
      v273 = v595;
      v265 = v587;
    }

    v275 = v599;
    v280 = v577;
    v282 = v597;
    v281 = v598;
    v283 = v596;
    v269 = v629;
    v268 = v574;
    v272 = v628;
    v274 = v627;
    v258 = v573;
    v267 = v619;
    v266 = v600;
  }

  v303 = v590;
  *(v590 + 24) = vextq_s8(v266, v267, 8uLL);
  *(v303 + 8) = vextq_s8(v267, v266, 8uLL);
  *(v303 + 40) = v269;
  *(v303 + 48) = v272;
  *(v303 + 56) = v274;
  *(v303 + 64) = v258;
  *(v303 + 72) = v280;
  *(v303 + 80) = v281;
  *(v303 + 88) = v282;
  *(v303 + 96) = v283;
  *(v303 + 104) = v278;
  *(v303 + 112) = v268;
  *(v303 + 113) = v275;
  *(v303 + 120) = v276;
  *(v303 + 128) = v277;
  *(v303 + 136) = v279;
  *(v303 + 152) = v270;
  *(v303 + 160) = v271;
  *(v303 + 168) = v273;
  *(v303 + 176) = v265;
  *(v303 + 184) = v284;
  *(v303 + 192) = v263;
  *(v303 + 200) = v264;
  *(v303 + 208) = v285;
  *(v303 + 216) = v286;
  *(v303 + 224) = 0;
  *(v303 + 225) = v275;
  v304 = v588;
  result = outlined init with take of AttributedString.Runs(v303, v588);
  v305 = v594;
  v306 = *v594;
  v587 = *v304;
  if (v306 == v587)
  {
    result = static RangeSet.== infix(_:_:)();
    v305 = v594;
    if (result)
    {
      outlined destroy of String.LocalizationValue.FormatArgument(v678);
      outlined destroy of String.LocalizationValue.FormatArgument(v679);
      goto LABEL_141;
    }
  }

  v307 = v305[1];
  v308 = v305[9];
  v309 = v305[12];
  v310 = v305[15];
  v311 = v305[23];
  v312 = v305[26];
  v313 = v591;
  v314 = *(v305 + *(v591 + 28));
  v586 = v306;
  if (v314 != 1)
  {
    v315 = v310 - v307;
    if (__OFSUB__(v310, v307))
    {
      goto LABEL_350;
    }

    v316 = v305[22];
    if (v312 == 2)
    {
      v317 = v316 != 2;
    }

    else
    {
      v317 = v316 == 2 || (v311 ^ v305[19]) > 0x3FF;
    }

    v318 = v315 + v317;
    if (__OFADD__(v315, v317))
    {
      goto LABEL_351;
    }

    v319 = v312;
    result = v310;
LABEL_109:
    v320 = *(v588 + 8);
    v321 = *(v588 + 120);
    v322 = *(v588 + 184);
    v323 = *(v588 + 208);
    if ((*(v588 + *(v313 + 28)) & 1) == 0)
    {
      v324 = v321 - v320;
      if (__OFSUB__(v321, v320))
      {
        goto LABEL_352;
      }

      v325 = *(v588 + 176);
      if (v323 == 2)
      {
        v326 = v325 != 2;
      }

      else
      {
        v326 = v325 == 2 || (v322 ^ *(v588 + 152)) > 0x3FF;
      }

      if (__OFADD__(v324, v326))
      {
        goto LABEL_353;
      }

      if (v318 != v324 + v326)
      {
LABEL_323:
        outlined destroy of String.LocalizationValue.FormatArgument(v678);
        outlined destroy of String.LocalizationValue.FormatArgument(v679);
LABEL_324:
        v304 = v588;
        goto LABEL_325;
      }

LABEL_118:
      v327 = v593;
      v304 = v588;
      v328 = v581;
      v55 = v601;
      v54 = v585;
      if (v307 != result)
      {
        goto LABEL_125;
      }

      if (v309 == 2)
      {
        if (v319 != 2)
        {
LABEL_125:
          if ((AttributedString.Runs._isPartial.getter() & 1) == 0 && (AttributedString.Runs._isPartial.getter() & 1) == 0)
          {
            v742[12] = *(v306 + 24);
            v742[13] = *(v306 + 40);
            v742[14] = *(v306 + 56);
            v329 = BigString.count.getter();
            v330 = *(v587 + 40);
            v742[9] = *(v587 + 24);
            v742[10] = v330;
            v742[11] = *(v587 + 56);
            if (v329 != BigString.count.getter())
            {
              goto LABEL_344;
            }
          }

          RangeSet.ranges.getter();
          v331 = v631;
          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          if (v654 == *v642)
          {
            v615(v328, v331);
LABEL_344:
            outlined destroy of String.LocalizationValue.FormatArgument(v678);
            outlined destroy of String.LocalizationValue.FormatArgument(v679);
LABEL_325:
            outlined destroy of AttributedString.Runs(v304);
            outlined destroy of AttributedString.Runs(v594);

            goto LABEL_329;
          }

          v332 = dispatch thunk of Collection.subscript.read();
          v334 = v333[1];
          *&v629 = *v333;
          v628 = v334;
          v335 = v333[3];
          *&v627 = v333[2];
          v602 = v335;
          v332(v642, 0);
          v336 = v615;
          v615(v328, v331);
          v337 = v580;
          RangeSet.ranges.getter();
          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          if (v632[0] == *v642)
          {
            v336(v337, v331);
            goto LABEL_344;
          }

          v338 = dispatch thunk of Collection.subscript.read();
          v340 = v339[1];
          v600.i64[0] = *v339;
          v619.i64[0] = v340;
          v341 = v339[2];
          v616 = v339[3];
          v617 = v341;
          v338(v642, 0);
          v336(v337, v331);
          v342 = v578;
          outlined init with copy of AttributedString.Runs(v594, v578);
          v343 = v592;
          outlined init with copy of AttributedString.Runs(v342, v592);
          v344 = v579;
          v345 = (v343 + *(v579 + 36));
          v346 = *(v342 + 72);
          *&v653[16] = *(v342 + 56);
          *&v653[32] = v346;
          *&v653[48] = *(v342 + 88);
          *&v653[58] = *(v342 + 98);
          v347 = *(v342 + 24);
          v651 = *(v342 + 8);
          v652 = v347;
          *v653 = *(v342 + 40);
          outlined destroy of AttributedString.Runs(v342);
          v348 = *&v653[48];
          v345[4] = *&v653[32];
          v345[5] = v348;
          *(v345 + 90) = *&v653[58];
          v349 = v652;
          *v345 = v651;
          v345[1] = v349;
          v350 = *&v653[16];
          v345[2] = *v653;
          v345[3] = v350;
          outlined init with copy of AttributedString.Runs(v304, v342);
          outlined init with copy of AttributedString.Runs(v342, v327);
          v351 = (v327 + *(v344 + 36));
          v352 = *(v342 + 56);
          v353 = *(v342 + 88);
          *&v656[32] = *(v342 + 72);
          *&v656[48] = v353;
          *&v656[58] = *(v342 + 98);
          v354 = *(v342 + 24);
          v654 = *(v342 + 8);
          v655 = v354;
          *v656 = *(v342 + 40);
          *&v656[16] = v352;
          outlined destroy of AttributedString.Runs(v342);
          v355 = *&v656[48];
          v351[4] = *&v656[32];
          v351[5] = v355;
          *(v351 + 90) = *&v656[58];
          v356 = v655;
          *v351 = v654;
          v351[1] = v356;
          v357 = *&v656[16];
          v351[2] = *v656;
          v351[3] = v357;
          while (1)
          {
            specialized IndexingIterator.next()(&v664);
            v358 = v664;
            v359 = *&v665[0];
            v360 = *&v666[0];
            specialized IndexingIterator.next()(&v634);
            v361 = v634;
            v362 = v635;
            v646 = v637;
            v647 = v638;
            v363 = v639;
            v649 = v640;
            v650 = v641;
            *v642 = v358;
            *&v642[24] = *(v665 + 8);
            *&v642[40] = *(&v665[1] + 1);
            *&v642[16] = v359;
            *&v643[0] = v360;
            *(&v643[1] + 8) = *(&v666[1] + 8);
            *(v643 + 8) = *(v666 + 8);
            *(&v643[2] + 1) = v634;
            v644 = v635;
            v645 = v636;
            v648 = v639;
            if (!v358)
            {
              break;
            }

            if (!v634)
            {
              goto LABEL_321;
            }

            if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v358, v361) & 1) == 0)
            {

LABEL_321:
              outlined destroy of TermOfAddress?(v642, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
LABEL_322:
              outlined destroy of TermOfAddress?(v593, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
              outlined destroy of TermOfAddress?(v592, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
              goto LABEL_323;
            }

            v599 = v363;
            v364 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(*(&v358 + 1), v362);

            if ((v364 & 1) == 0)
            {
              goto LABEL_321;
            }

            v365 = v586;
            v366 = *(v586 + 40);
            v742[6] = *(v586 + 24);
            v742[7] = v366;
            v742[8] = *(v586 + 56);
            swift_unknownObjectRetain();
            v367 = v602;
            v630 = BigString.UTF8View.index(_:offsetBy:)();
            v597 = v369;
            v598 = v368;
            v615 = v370;
            swift_unknownObjectRelease();
            v371 = v587;
            v372 = *(v587 + 40);
            v742[3] = *(v587 + 24);
            v742[4] = v372;
            v742[5] = *(v587 + 56);
            swift_unknownObjectRetain();
            v373 = v600.i64[0];
            v374 = BigString.UTF8View.index(_:offsetBy:)();
            v595 = v375;
            v596 = v376;
            v599 = v377;
            result = swift_unknownObjectRelease();
            v378 = *(v365 + 40);
            v742[0] = *(v365 + 24);
            v742[1] = v378;
            v742[2] = *(v365 + 56);
            if (v630 >> 10 < v629 >> 10)
            {
              goto LABEL_347;
            }

            v734 = v629;
            v735 = v628;
            v736 = v627;
            v737 = v367;
            v738 = v630;
            v379 = v597;
            v380 = v598;
            v739 = v598;
            v740 = v597;
            v741 = v615;
            v381 = *(v365 + 24);
            v744 = *(v365 + 56);
            v743[1] = *(v365 + 40);
            v743[0] = v381;
            outlined init with copy of Rope<BigString._Chunk>._Node?(v743, v633);
            v382 = v374;
            BigString.subscript.getter();
            result = outlined destroy of BigString(v742);
            v383 = *(v371 + 24);
            v384 = *(v371 + 56);
            v733[1] = *(v371 + 40);
            v733[2] = v384;
            v733[0] = v383;
            if (v374 >> 10 < v373 >> 10)
            {
              goto LABEL_348;
            }

            v385 = v379;
            v725 = v373;
            v726 = v619.i64[0];
            v727 = v617;
            v728 = v616;
            v729 = v374;
            v386 = v595;
            v387 = v596;
            v730 = v595;
            v388 = v599;
            v731 = v599;
            v732 = v596;
            v389 = *(v371 + 24);
            v746 = *(v371 + 56);
            v745[1] = *(v371 + 40);
            v745[0] = v389;
            outlined init with copy of Rope<BigString._Chunk>._Node?(v745, v633);
            BigString.subscript.getter();
            outlined destroy of BigString(v733);
            v390 = MEMORY[0x1865CA260](v687, v688);
            outlined destroy of BigSubstring(v687);
            outlined destroy of TermOfAddress?(v642, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
            outlined destroy of BigSubstring(v688);
            if ((v390 & 1) == 0)
            {
              goto LABEL_322;
            }

            v600.i64[0] = v382;
            v619.i64[0] = v386;
            v616 = v387;
            v617 = v388;
            *&v629 = v630;
            v628 = v380;
            *&v627 = v385;
            v602 = v615;
          }

          outlined destroy of TermOfAddress?(v593, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
          outlined destroy of TermOfAddress?(v592, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
          outlined destroy of String.LocalizationValue.FormatArgument(v678);
          outlined destroy of String.LocalizationValue.FormatArgument(v679);
          outlined destroy of TermOfAddress?(v642, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
          if (v361)
          {
            goto LABEL_324;
          }

          v304 = v588;
LABEL_141:
          v55 = v601;
          v54 = v585;
LABEL_142:
          v392 = v575;
          v391 = v576;
          outlined destroy of AttributedString.Runs(v304);
          outlined destroy of AttributedString.Runs(v594);

          outlined destroy of String.LocalizationValue.FormatArgument.Storage(v668);
          if (v391 != v392)
          {
            return 0;
          }

          goto LABEL_9;
        }
      }

      else if (v319 == 2 || (v311 ^ v308) >= 0x400)
      {
        goto LABEL_125;
      }

      outlined destroy of String.LocalizationValue.FormatArgument(v678);
      outlined destroy of String.LocalizationValue.FormatArgument(v679);
      goto LABEL_142;
    }

    v577 = v319;
    v598 = v318;
    v595 = v311;
    v564 = v307;
    v565 = v309;
    v557 = v308;
    v474 = 0;
    v475 = *(v588 + 112);
    v476 = *(v588 + 96);
    v477 = *(v588 + 104);
    v478 = *(v588 + 64);
    v479 = *(v588 + 72);
    v572 = *(v588 + 56);
    v480 = *(v588 + 40);
    v573 = *(v588 + 48);
    v574 = result;
    v558 = v322 >> 10;
    *&v559 = v323;
    v562 = v479 >> 10;
    v563 = v476;
    v481 = v320;
    v482 = v476;
    v567 = v323;
    v483 = v321;
    v484 = *(v588 + 32);
    *&v629 = *(v588 + 24);
    *&v627 = *(v588 + 16);
    v485 = v618;
    v486 = v587;
    while (2)
    {
      LOBYTE(v654) = v475;
      if (v481 >= v321 && (v321 < v481 || v559 == 2 || v482 != 2 && v479 >> 10 >= v558))
      {
        v311 = v595;
        v306 = v586;
        v308 = v557;
        v307 = v564;
        v309 = v565;
        v319 = v577;
        result = v574;
        if (v598 == v474)
        {
          goto LABEL_118;
        }

        goto LABEL_323;
      }

      if (v481 < v320)
      {
        goto LABEL_359;
      }

      v487 = v320 < v481 || v563 == 2;
      v488 = v487;
      if (!v487)
      {
        if (v482 == 2)
        {
          goto LABEL_394;
        }

        if (v562 > v479 >> 10)
        {
          goto LABEL_374;
        }
      }

      if (v481 >= v483)
      {
        if (v483 < v481)
        {
          goto LABEL_375;
        }

        if (v567 == 2)
        {
          goto LABEL_395;
        }

        if (v482 == 2)
        {
          if (!v488)
          {
            goto LABEL_396;
          }

          goto LABEL_256;
        }

        if (v479 >> 10 >= v322 >> 10)
        {
          goto LABEL_385;
        }
      }

      if ((v488 & 1) == 0)
      {
        if (v482 == 2)
        {
          goto LABEL_396;
        }

        if (v562 > v479 >> 10)
        {
          goto LABEL_381;
        }
      }

LABEL_256:
      if (v483 < v481)
      {
        goto LABEL_364;
      }

      if (v481 >= v483 && v482 != 2)
      {
        if (v567 == 2)
        {
          goto LABEL_397;
        }

        if (v322 >> 10 < v479 >> 10)
        {
          goto LABEL_377;
        }
      }

      v619.i64[0] = v479;
      if (v484 == 1 || v627 != *(v486 + 96))
      {
        goto LABEL_392;
      }

      v628 = v484;
      v569 = v483;
      v570 = v322;
      v566 = v480;
      v596 = v478;
      v597 = v482;
      *&v571 = v480 >> 11;
      if (v478 == 2)
      {
        v489 = *(v486 + 72);
        if (v489)
        {
          v490 = *(v486 + 80);
          v491 = *(v486 + 88);
          swift_unknownObjectRetain();
          v617 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v627, v629, v628, v489, v490, v491);
          swift_unknownObjectRelease();
          v486 = v587;
        }

        else
        {
          v617 = 0;
        }

        v496 = *(v486 + 24);
        v497 = *(v486 + 56);
        v723 = *(v486 + 40);
        v724 = v497;
        v498 = *(v486 + 40);
        v719 = *(v486 + 24);
        v720 = v498;
        v721 = *(v486 + 56);
        v722 = v496;
        v499 = BigString.startIndex.getter();
        v599 = v500;
        v600.i64[0] = v499;
        v568 = v501;
        v747[0] = v722;
        v747[1] = v723;
        v748 = v724;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v747, v642);
        v502 = v617;
        v493 = BigString.UTF8View.index(_:offsetBy:)();
        result = outlined destroy of BigString(&v722);
        v495 = v627;
        v494 = v502;
      }

      else
      {
        v492 = *(v486 + 40);
        v716 = *(v486 + 24);
        v717 = v492;
        v718 = *(v486 + 56);
        v617 = v716;
        swift_unknownObjectRetain();
        v493 = BigString.UTF8View.index(roundingDown:)();
        result = swift_unknownObjectRelease();
        v494 = v571;
        v495 = v627;
      }

      v503 = *(v587 + 72);
      v504 = *(v587 + 96);
      v599 = *(v587 + 88);
      *v642 = v495;
      *&v642[8] = v629;
      *&v642[16] = v628;
      v411 = __OFADD__(v481, 1);
      v505 = v481 + 1;
      if (v411)
      {
        goto LABEL_366;
      }

      if (v495 != v504)
      {
        goto LABEL_367;
      }

      v600.i64[0] = v505;
      v568 = v493;
      if (v628)
      {
        v506 = *(v628 + 24 * ((v629 >> ((4 * *(v628 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v617 = v494 + v506;
        if (__OFADD__(v494, v506))
        {
          goto LABEL_371;
        }

        if (!v503)
        {
          goto LABEL_365;
        }

        result = swift_unknownObjectRetain();
        v507 = v628;
      }

      else
      {
        v617 = v494;
        swift_unknownObjectRetain();
        v508 = specialized Rope._Node.subscript.getter(v629, v503);
        v560 = v509;
        v561 = v508;

        v411 = __OFADD__(v617, v561);
        v617 += v561;
        if (v411)
        {
          goto LABEL_383;
        }

        v507 = v628;
        if (!v503)
        {
          goto LABEL_365;
        }
      }

      if (v629 >= (((-15 << ((4 * *(v503 + 18) + 8) & 0x3C)) - 1) & *(v503 + 18) | (*(v503 + 16) << ((4 * *(v503 + 18) + 8) & 0x3C))))
      {
        goto LABEL_365;
      }

      if (v507)
      {
        v510 = (4 * *(v507 + 18) + 8) & 0x3C;
        v511 = ((v629 >> v510) & 0xF) + 1;
        if (v511 < *(v507 + 16))
        {
          swift_unknownObjectRelease();
          v512 = (v511 << v510) | ((-15 << v510) - 1) & v629;
          goto LABEL_283;
        }
      }

      if (specialized Rope._Node.formSuccessor(of:)(v642, v503))
      {
        swift_unknownObjectRelease();
        v512 = *&v642[8];
LABEL_283:
        *&v629 = v512;
      }

      else
      {
        v513 = *(v503 + 18);
        v514 = *(v503 + 16);
        swift_unknownObjectRelease();
        *v642 = v627;
        *&v629 = ((-15 << ((4 * v513 + 8) & 0x3C)) - 1) & v513 | (v514 << ((4 * v513 + 8) & 0x3C));
        *&v642[8] = v629;
        *&v642[16] = 0;
      }

      v515 = v619.i64[0];
      v628 = *&v642[16];
      v516 = *(v591 + 24);
      *&v627 = *v642;
      if (v654)
      {
        v616(v603, (v588 + v516), v626);
        if (v597 == 2)
        {
          v517 = v568;
        }

        else
        {
          v517 = v515;
        }

        RangeSet.ranges.getter();
        v518 = v631;
        v519 = RangeSet.Ranges.count.getter();
        result = (v615)(v485, v518);
        if (v519 < 1)
        {
          goto LABEL_355;
        }

        v520 = 0;
        v521 = v517 >> 10;
        while (!__OFADD__(v520, v519))
        {
          v522 = (v520 + v519) / 2;
          RangeSet.ranges.getter();
          v523 = v485;
          v524 = v631;
          RangeSet.Ranges.subscript.getter();
          result = (v615)(v523, v524);
          if (v521 < *v642 >> 10)
          {
            v519 = (v520 + v519) / 2;
            v485 = v618;
            if (v520 >= v522)
            {
              goto LABEL_355;
            }
          }

          else
          {
            v477 = (v520 + v519) / 2;
            v525 = *&v642[32];
            v485 = v618;
            if (v521 < *&v642[32] >> 10)
            {
              result = (v602)(v603, v626);
              goto LABEL_299;
            }

            v520 = v522 + 1;
            if (v522 + 1 >= v519)
            {
              goto LABEL_355;
            }
          }
        }

LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
LABEL_360:
        __break(1u);
LABEL_361:
        __break(1u);
LABEL_362:
        __break(1u);
        goto LABEL_363;
      }

      RangeSet.ranges.getter();
      v526 = v631;
      RangeSet.Ranges.subscript.getter();
      result = (v615)(v485, v526);
      v525 = *&v642[32];
LABEL_299:
      if (v617 < (v525 >> 11))
      {
        if (v596 == 2)
        {
          v527 = *(v587 + 24);
          v528 = *(v587 + 56);
          v711 = *(v587 + 40);
          v712 = v528;
          v529 = *(v587 + 40);
          v707 = *(v587 + 24);
          v708 = v529;
          v709 = *(v587 + 56);
          v710 = v527;
          BigString.startIndex.getter();
          v619.i64[0] = v530;
          v599 = v531;
          v749[0] = v710;
          v749[1] = v711;
          v750 = v712;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v749, v642);
          v480 = BigString.UTF8View.index(_:offsetBy:)();
          v572 = v533;
          v573 = v532;
          v478 = v534;
          result = outlined destroy of BigString(&v710);
        }

        else
        {
          v539 = *(v587 + 40);
          v704 = *(v587 + 24);
          v705 = v539;
          v706 = *(v587 + 56);
          if (__OFSUB__(v617, v571))
          {
            goto LABEL_389;
          }

          swift_unknownObjectRetain();
          v480 = BigString.UTF8View.index(_:offsetBy:)();
          v572 = v541;
          v573 = v540;
          v478 = v542;
          result = swift_unknownObjectRelease();
        }

        v475 = 0;
        v479 = v480;
        v482 = v478;
        goto LABEL_314;
      }

      v411 = __OFADD__(v477++, 1);
      if (v411)
      {
        goto LABEL_379;
      }

      v535 = v588;
      *&v629 = *(v591 + 24);
      RangeSet.ranges.getter();
      v536 = v631;
      v537 = RangeSet.Ranges.count.getter();
      result = (v615)(v485, v536);
      if (v477 == v537)
      {
        v483 = *(v535 + 120);
        *&v627 = *(v535 + 128);
        v484 = *(v535 + 144);
        *&v629 = *(v535 + 136);
        v480 = *(v535 + 152);
        v538 = *(v535 + 160);
        v478 = *(v535 + 176);
        v572 = *(v535 + 168);
        v573 = v538;
        v479 = *(v535 + 184);
        v482 = *(v535 + 208);
        v477 = *(v535 + 216);
        v322 = v479;
        v567 = v482;
        v600.i64[0] = v483;
        v475 = *(v535 + 224);
      }

      else
      {
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        v615(v485, v536);
        v617 = *&v642[8];
        v599 = *&v642[16];
        v597 = *&v642[24];
        v543 = *(v587 + 72);
        v544 = *(v587 + 80);
        v546 = *(v587 + 88);
        v545 = *(v587 + 96);
        v619.i64[0] = *v642;
        *&v629 = *v642 >> 11;
        swift_unknownObjectRetain();
        v596 = v546;
        result = specialized Rope.find<A>(at:in:preferEnd:)(v629, 0, v543, v544, v546, v545);
        *&v629 = v549;
        *&v627 = v545;
        if (result != v545)
        {
          goto LABEL_390;
        }

        v600.i64[0] = v548;
        v628 = v547;
        if (v543)
        {
          v550 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v627, v629, v547, v543, v544);
          result = swift_unknownObjectRelease();
        }

        else
        {
          v550 = 0;
        }

        v479 = v619.i64[0];
        v551 = *(v587 + 24);
        v552 = *(v587 + 40);
        v713 = v551;
        v714 = v552;
        v715 = *(v587 + 56);
        if (__OFSUB__(0, v600.i64[0]))
        {
          goto LABEL_391;
        }

        v600.i64[0] = v550;
        v619.i64[0] = v551;
        swift_unknownObjectRetain();
        v553 = v597;
        v480 = BigString.UTF8View.index(_:offsetBy:)();
        v572 = v555;
        v573 = v554;
        v478 = v556;
        result = swift_unknownObjectRelease();
        v482 = v553;
        v475 = 0;
LABEL_314:
        v483 = v569;
        v322 = v570;
        v484 = v628;
      }

      v411 = __OFADD__(v474++, 1);
      if (v411)
      {
        goto LABEL_369;
      }

      v486 = v587;
      v481 = v600.i64[0];
      continue;
    }
  }

  v318 = 0;
  v393 = *(v305 + 112);
  v394 = v305[13];
  v395 = v305[8];
  v573 = v305[7];
  v396 = v305[5];
  v596 = v305[6];
  v567 = v311 >> 10;
  v569 = v308 >> 10;
  v397 = v305[3];
  *&v627 = v305[4];
  v398 = v307;
  v557 = v308;
  v399 = v309;
  v319 = v312;
  result = v310;
  *&v629 = v397;
  v400 = v305[2];
  v401 = v618;
  v564 = v307;
  v565 = v309;
  while (2)
  {
    LOBYTE(v654) = v393;
    if (v398 >= v310 && (v310 < v398 || v312 == 2 || v399 != 2 && v308 >> 10 >= v567))
    {
      v313 = v591;
      v308 = v557;
      goto LABEL_109;
    }

    if (v398 < v307)
    {
      goto LABEL_358;
    }

    v412 = v307 < v398 || v309 == 2;
    v413 = v412;
    if (!v412)
    {
      if (v399 == 2)
      {
        goto LABEL_398;
      }

      if (v569 > v308 >> 10)
      {
        goto LABEL_372;
      }
    }

    if (v398 >= result)
    {
      if (result < v398)
      {
        goto LABEL_373;
      }

      if (v319 == 2)
      {
        goto LABEL_399;
      }

      if (v399 == 2)
      {
        if (!v413)
        {
          goto LABEL_400;
        }

        goto LABEL_174;
      }

      if (v308 >> 10 >= v311 >> 10)
      {
        goto LABEL_384;
      }
    }

    if ((v413 & 1) == 0)
    {
      if (v399 == 2)
      {
        goto LABEL_400;
      }

      if (v569 > v308 >> 10)
      {
        goto LABEL_380;
      }
    }

LABEL_174:
    if (result < v398)
    {
      goto LABEL_360;
    }

    if (v398 >= result && v399 != 2)
    {
      if (v319 == 2)
      {
        goto LABEL_401;
      }

      if (v311 >> 10 < v308 >> 10)
      {
        goto LABEL_376;
      }
    }

    if (v627 == 1 || v400 != *(v306 + 96))
    {
      goto LABEL_393;
    }

    v628 = v400;
    v595 = v311;
    v598 = v318;
    v599 = v308;
    v577 = v319;
    v574 = result;
    v619.i64[0] = v398;
    v617 = v395;
    v570 = v396;
    v597 = v399;
    v572 = v396 >> 11;
    if (v395 == 2)
    {
      v414 = *(v306 + 72);
      if (v414)
      {
        v416 = *(v306 + 80);
        v415 = *(v306 + 88);
        swift_unknownObjectRetain();
        v600.i64[0] = specialized Rope._Node.distanceFromStart<A>(to:in:)(v628, v629, v627, v414, v416, v415);
        swift_unknownObjectRelease();
      }

      else
      {
        v600.i64[0] = 0;
      }

      v420 = *(v306 + 24);
      v421 = *(v306 + 56);
      v702 = *(v306 + 40);
      v703 = v421;
      v422 = *(v586 + 40);
      v698 = *(v586 + 24);
      v699 = v422;
      v700 = *(v586 + 56);
      v701 = v420;
      BigString.startIndex.getter();
      *&v571 = v423;
      v751[0] = v701;
      v751[1] = v702;
      v306 = v586;
      v752 = v703;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v751, v642);
      v424 = v600.i64[0];
      v418 = BigString.UTF8View.index(_:offsetBy:)();
      result = outlined destroy of BigString(&v701);
      v419 = v424;
    }

    else
    {
      v417 = *(v306 + 40);
      v695 = *(v306 + 24);
      v696 = v417;
      v697 = *(v306 + 56);
      swift_unknownObjectRetain();
      v418 = BigString.UTF8View.index(roundingDown:)();
      result = swift_unknownObjectRelease();
      v419 = v572;
    }

    v425 = *(v306 + 72);
    v426 = *(v306 + 96);
    *v642 = v628;
    *&v642[8] = v629;
    v427 = v627;
    *&v642[16] = v627;
    v411 = __OFADD__(v619.i64[0]++, 1);
    if (v411)
    {
      goto LABEL_362;
    }

    if (v628 == v426)
    {
      *&v571 = v418;
      if (v627)
      {
        v428 = *(v627 + 24 * ((v629 >> ((4 * *(v627 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v411 = __OFADD__(v419, v428);
        v429 = v419 + v428;
        if (v411)
        {
          goto LABEL_370;
        }

        v600.i64[0] = v429;
        if (!v425)
        {
          goto LABEL_361;
        }

        result = swift_unknownObjectRetain();
      }

      else
      {
        v600.i64[0] = v419;
        swift_unknownObjectRetain();
        v568 = specialized Rope._Node.subscript.getter(v629, v425);

        if (__OFADD__(v600.i64[0], v568))
        {
          goto LABEL_382;
        }

        v600.i64[0] += v568;
        if (!v425)
        {
          goto LABEL_361;
        }
      }

      if (v629 >= (((-15 << ((4 * *(v425 + 18) + 8) & 0x3C)) - 1) & *(v425 + 18) | (*(v425 + 16) << ((4 * *(v425 + 18) + 8) & 0x3C))))
      {
        goto LABEL_361;
      }

      if (v427)
      {
        v430 = (4 * *(v427 + 18) + 8) & 0x3C;
        v431 = v427;
        v432 = ((v629 >> v430) & 0xF) + 1;
        if (v432 < *(v431 + 16))
        {
          swift_unknownObjectRelease();
          v433 = (v432 << v430) | ((-15 << v430) - 1) & v629;
          goto LABEL_201;
        }
      }

      if (specialized Rope._Node.formSuccessor(of:)(v642, v425))
      {
        swift_unknownObjectRelease();
        v433 = *&v642[8];
LABEL_201:
        *&v629 = v433;
      }

      else
      {
        v434 = *(v425 + 18);
        v435 = *(v425 + 16);
        swift_unknownObjectRelease();
        *v642 = v628;
        *&v629 = ((-15 << ((4 * v434 + 8) & 0x3C)) - 1) & v434 | (v435 << ((4 * v434 + 8) & 0x3C));
        *&v642[8] = v629;
        *&v642[16] = 0;
      }

      v436 = v615;
      v437 = v617;
      v628 = *v642;
      *&v627 = *&v642[16];
      if (v654)
      {
        v616(v604, v594 + *(v591 + 24), v626);
        if (v597 == 2)
        {
          v438 = v571;
        }

        else
        {
          v438 = v599;
        }

        RangeSet.ranges.getter();
        v439 = v631;
        v440 = RangeSet.Ranges.count.getter();
        result = v436(v401, v439);
        if (v440 < 1)
        {
          goto LABEL_354;
        }

        v441 = 0;
        v442 = v438 >> 10;
        while (1)
        {
          while (1)
          {
            if (__OFADD__(v441, v440))
            {
              goto LABEL_356;
            }

            v394 = (v441 + v440) / 2;
            RangeSet.ranges.getter();
            v443 = v631;
            RangeSet.Ranges.subscript.getter();
            result = (v615)(v401, v443);
            if (v442 >= *v642 >> 10)
            {
              break;
            }

            v440 = (v441 + v440) / 2;
            if (v441 >= v394)
            {
              goto LABEL_354;
            }
          }

          v444 = *&v642[32];
          v306 = v586;
          if (v442 < *&v642[32] >> 10)
          {
            break;
          }

          v441 = v394 + 1;
          if (v394 + 1 >= v440)
          {
            goto LABEL_354;
          }
        }

        result = (v602)(v604, v626);
        v437 = v617;
      }

      else
      {
        RangeSet.ranges.getter();
        v445 = v631;
        RangeSet.Ranges.subscript.getter();
        result = v436(v401, v445);
        v444 = *&v642[32];
        v306 = v586;
      }

      if (v600.i64[0] >= (v444 >> 11))
      {
        v411 = __OFADD__(v394++, 1);
        if (v411)
        {
          goto LABEL_378;
        }

        v451 = v594;
        *&v629 = *(v591 + 24);
        RangeSet.ranges.getter();
        v452 = v631;
        v453 = RangeSet.Ranges.count.getter();
        v454 = v615;
        v615(v401, v452);
        if (v394 == v453)
        {
          v398 = v451[15];
          v400 = v451[16];
          v455 = v451[18];
          *&v629 = v451[17];
          *&v627 = v455;
          v396 = v451[19];
          v596 = v451[20];
          v456 = v451[22];
          v573 = v451[21];
          v308 = v451[23];
          v399 = v451[26];
          v394 = v451[27];
          v311 = v308;
          v319 = v399;
          result = v398;
          v393 = *(v451 + 224);
          v395 = v456;
          v306 = v586;
          v307 = v564;
          v309 = v565;
          v410 = v598;
        }

        else
        {
          RangeSet.ranges.getter();
          RangeSet.Ranges.subscript.getter();
          v454(v401, v452);
          v619.i64[0] = *&v642[8];
          v617 = *&v642[16];
          v597 = *&v642[24];
          v306 = v586;
          v457 = *(v586 + 72);
          v458 = *(v586 + 80);
          v460 = *(v586 + 88);
          v459 = *(v586 + 96);
          v599 = *v642;
          *&v629 = *v642 >> 11;
          swift_unknownObjectRetain();
          result = specialized Rope.find<A>(at:in:preferEnd:)(v629, 0, v457, v458, v460, v459);
          v462 = v459;
          *&v629 = v463;
          *&v627 = v464;
          if (result != v459)
          {
            goto LABEL_387;
          }

          v465 = v461;
          v628 = v462;
          if (v457)
          {
            v398 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v462, v629, v627, v457, v458);
            result = swift_unknownObjectRelease();
          }

          else
          {
            v398 = 0;
          }

          v466 = *(v306 + 24);
          v467 = *(v306 + 40);
          v692 = v466;
          v693 = v467;
          v694 = *(v306 + 56);
          if (__OFSUB__(0, v465))
          {
            goto LABEL_388;
          }

          v600.i64[0] = v466;
          swift_unknownObjectRetain();
          v468 = v597;
          v469 = BigString.UTF8View.index(_:offsetBy:)();
          v596 = v470;
          v573 = v471;
          v395 = v472;
          v473 = v469;
          swift_unknownObjectRelease();
          v396 = v473;
          v399 = v468;
          v410 = v598;
          v308 = v599;
          v393 = 0;
          v311 = v595;
          v307 = v564;
          v309 = v565;
          v319 = v577;
          result = v574;
          v400 = v628;
        }
      }

      else
      {
        if (v437 == 2)
        {
          v402 = *(v306 + 24);
          v403 = *(v306 + 56);
          v690 = *(v306 + 40);
          v691 = v403;
          v404 = *(v306 + 40);
          v688[10] = *(v306 + 24);
          v688[11] = v404;
          v688[12] = *(v306 + 56);
          v689 = v402;
          v617 = BigString.startIndex.getter();
          v599 = v405;
          v753[0] = v689;
          v753[1] = v690;
          v754 = v691;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v753, v642);
          v406 = BigString.UTF8View.index(_:offsetBy:)();
          v596 = v407;
          v573 = v408;
          v395 = v409;
          outlined destroy of BigString(&v689);
        }

        else
        {
          v446 = *(v306 + 40);
          v688[7] = *(v306 + 24);
          v688[8] = v446;
          v688[9] = *(v306 + 56);
          if (__OFSUB__(v600.i64[0], v572))
          {
            goto LABEL_386;
          }

          swift_unknownObjectRetain();
          v447 = BigString.UTF8View.index(_:offsetBy:)();
          v596 = v448;
          v573 = v449;
          v395 = v450;
          v406 = v447;
          swift_unknownObjectRelease();
        }

        v393 = 0;
        v308 = v406;
        v399 = v395;
        v311 = v595;
        v307 = v564;
        v309 = v565;
        v410 = v598;
        v319 = v577;
        result = v574;
        v398 = v619.i64[0];
        v400 = v628;
        v396 = v406;
      }

      v411 = __OFADD__(v410, 1);
      v318 = v410 + 1;
      if (v411)
      {
        goto LABEL_368;
      }

      continue;
    }

    break;
  }

LABEL_363:
  __break(1u);
LABEL_364:
  __break(1u);
LABEL_365:
  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:
  __break(1u);
LABEL_383:
  __break(1u);
LABEL_384:
  __break(1u);
LABEL_385:
  __break(1u);
LABEL_386:
  __break(1u);
LABEL_387:
  __break(1u);
LABEL_388:
  __break(1u);
LABEL_389:
  __break(1u);
LABEL_390:
  __break(1u);
LABEL_391:
  __break(1u);
LABEL_392:
  __break(1u);
LABEL_393:
  __break(1u);
LABEL_394:
  __break(1u);
LABEL_395:
  __break(1u);
LABEL_396:
  __break(1u);
LABEL_397:
  __break(1u);
LABEL_398:
  __break(1u);
LABEL_399:
  __break(1u);
LABEL_400:
  __break(1u);
LABEL_401:
  __break(1u);
  return result;
}