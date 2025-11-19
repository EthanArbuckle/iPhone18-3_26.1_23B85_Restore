void APAC::MetadataBitStreamParser::parseSceneReverb(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v99 = "Cannot read reverb.mReverbProcIndex";
    goto LABEL_165;
  }

  v7 = *(a3 + 24);
  v8 = v7 >> 29;
  v9 = v6 - 3;
  *(a3 + 28) = v6 - 3;
  if (v6 - 3 < 0)
  {
    v11 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v11 > v4)
    {
      v13 = 4;
      v14 = v4;
      do
      {
        v15 = v7 << 8;
        *(a3 + 24) = v15;
        v16 = 255;
        if (v14 < v3 && v14 >= v11)
        {
          v16 = *v14;
        }

        v7 = v16 | v15;
        *(a3 + 24) = v7;
        v14 = (v14 + 1);
        --v13;
      }

      while (v13);
    }

    else
    {
      v7 = bswap32(*v4);
    }

    v18 = v6 + 29;
    v17 = v6 == -29;
    *(a3 + 28) = v6 + 29;
    *a3 = ++v4;
    v8 |= v7 >> (v6 + 29);
    if (v6 == -29)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7 << (3 - v6);
    }

    if (v17)
    {
      v9 = 0;
    }

    else
    {
      v9 = v18;
    }
  }

  else
  {
    v10 = 8 * v7;
  }

  *(a3 + 24) = v10;
  *a2 = v8;
  if (v8 != 3)
  {
    if (v8 != 2)
    {
      if (v8 != 1)
      {
        return;
      }

      if (v9 + 8 * (v3 - v4) > 9)
      {
        v19 = v10 >> 22;
        *(a3 + 28) = v9 - 10;
        if (v9 - 10 < 0)
        {
          v29 = *(a3 + 8);
          if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v29 <= v4)
          {
            v10 = bswap32(*v4);
          }

          else
          {
            v50 = 4;
            v51 = v4;
            do
            {
              v52 = v10 << 8;
              *(a3 + 24) = v52;
              v53 = 255;
              if (v51 < v3 && v51 >= v29)
              {
                v53 = *v51;
              }

              v10 = v53 | v52;
              *(a3 + 24) = v10;
              v51 = (v51 + 1);
              --v50;
            }

            while (v50);
          }

          v54 = v10 << (10 - v9);
          v55 = v9 + 22;
          *(a3 + 28) = v55;
          *a3 = v4 + 1;
          v19 |= v10 >> v55;
          if (v55)
          {
            v20 = v54;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = v10 << 10;
        }

        *(a3 + 24) = v20;
        *(a2 + 2) = v19;
LABEL_156:
        v97 = a2 + 144;

        APAC::MetadataBitStreamParser::parseParametricReverb(a1, v97, a3);
        return;
      }

      exception = __cxa_allocate_exception(8uLL);
      v99 = "Cannot read reverb.mAUSMReverbPreset";
      goto LABEL_165;
    }

    if (v9 + 8 * (v3 - v4) > 1)
    {
      v21 = v10 >> 30;
      v22 = v9 - 2;
      *(a3 + 28) = v9 - 2;
      if (v9 - 2 < 0)
      {
        v27 = *(a3 + 8);
        if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v27 <= v4)
        {
          v10 = bswap32(*v4);
        }

        else
        {
          v30 = 4;
          v31 = v4;
          do
          {
            v32 = v10 << 8;
            *(a3 + 24) = v32;
            v33 = 255;
            if (v31 < v3 && v31 >= v27)
            {
              v33 = *v31;
            }

            v10 = v33 | v32;
            *(a3 + 24) = v10;
            v31 = (v31 + 1);
            --v30;
          }

          while (v30);
        }

        v34 = v10 << (2 - v9);
        v35 = v9 + 30;
        *(a3 + 28) = v35;
        *a3 = ++v4;
        v21 |= v10 >> v35;
        if (v35)
        {
          v23 = v34;
        }

        else
        {
          v23 = 0;
        }

        if (v35)
        {
          v22 = v35;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v23 = 4 * v10;
      }

      *(a3 + 24) = v23;
      *(a2 + 4) = v21;
      if (v22 + 8 * (v3 - v4) > 8)
      {
        v36 = v23 >> 23;
        v37 = v22 - 9;
        *(a3 + 28) = v22 - 9;
        if (v22 - 9 < 0)
        {
          v39 = *(a3 + 8);
          if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v39 <= v4)
          {
            v23 = bswap32(*v4);
          }

          else
          {
            v56 = 4;
            v57 = v4;
            do
            {
              v58 = v23 << 8;
              *(a3 + 24) = v58;
              v59 = 255;
              if (v57 < v3 && v57 >= v39)
              {
                v59 = *v57;
              }

              v23 = v59 | v58;
              *(a3 + 24) = v23;
              v57 = (v57 + 1);
              --v56;
            }

            while (v56);
          }

          v60 = v23 << (9 - v22);
          v61 = v22 + 23;
          *(a3 + 28) = v61;
          *a3 = ++v4;
          v36 |= v23 >> v61;
          if (v61)
          {
            v38 = v60;
          }

          else
          {
            v38 = 0;
          }

          if (v61)
          {
            v37 = v61;
          }

          else
          {
            v37 = 0;
          }
        }

        else
        {
          v38 = v23 << 9;
        }

        *(a3 + 24) = v38;
        *(a2 + 6) = v36;
        if (v37 + 8 * (v3 - v4) > 8)
        {
          v62 = v38 >> 23;
          v63 = v37 - 9;
          *(a3 + 28) = v37 - 9;
          if (v37 - 9 < 0)
          {
            v65 = *(a3 + 8);
            if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v65 <= v4)
            {
              v38 = bswap32(*v4);
            }

            else
            {
              v75 = 4;
              v76 = v4;
              do
              {
                v77 = v38 << 8;
                *(a3 + 24) = v77;
                v78 = 255;
                if (v76 < v3 && v76 >= v65)
                {
                  v78 = *v76;
                }

                v38 = v78 | v77;
                *(a3 + 24) = v38;
                v76 = (v76 + 1);
                --v75;
              }

              while (v75);
            }

            v79 = v38 << (9 - v37);
            v80 = v37 + 23;
            *(a3 + 28) = v80;
            *a3 = ++v4;
            v62 |= v38 >> v80;
            if (v80)
            {
              v64 = v79;
            }

            else
            {
              v64 = 0;
            }

            if (v80)
            {
              v63 = v80;
            }

            else
            {
              v63 = 0;
            }
          }

          else
          {
            v64 = v38 << 9;
          }

          *(a3 + 24) = v64;
          *(a2 + 8) = v62;
          if (v63 + 8 * (v3 - v4) > 9)
          {
            v81 = v64 >> 22;
            *(a3 + 28) = v63 - 10;
            if (v63 - 10 < 0)
            {
              v83 = *(a3 + 8);
              if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v83 <= v4)
              {
                v64 = bswap32(*v4);
              }

              else
              {
                v91 = 4;
                v92 = v4;
                do
                {
                  v93 = v64 << 8;
                  *(a3 + 24) = v93;
                  v94 = 255;
                  if (v92 < v3 && v92 >= v83)
                  {
                    v94 = *v92;
                  }

                  v64 = v94 | v93;
                  *(a3 + 24) = v64;
                  v92 = (v92 + 1);
                  --v91;
                }

                while (v91);
              }

              v95 = v64 << (10 - v63);
              v96 = v63 + 22;
              *(a3 + 28) = v96;
              *a3 = v4 + 1;
              v81 |= v64 >> v96;
              if (v96)
              {
                v82 = v95;
              }

              else
              {
                v82 = 0;
              }
            }

            else
            {
              v82 = v64 << 10;
            }

            *(a3 + 24) = v82;
            *(a2 + 10) = v81;
            goto LABEL_156;
          }

          exception = __cxa_allocate_exception(8uLL);
          v99 = "Cannot read reverb.mFallbackCustomeIR.mAUSMReverbPreset";
LABEL_165:
          *exception = v99;
          __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
        }

LABEL_162:
        exception = __cxa_allocate_exception(8uLL);
        v99 = "Cannot read reverb.mCustomData_EntryID";
        goto LABEL_165;
      }

LABEL_161:
      exception = __cxa_allocate_exception(8uLL);
      v99 = "Cannot read reverb.mCustomData_TableID";
      goto LABEL_165;
    }

LABEL_160:
    exception = __cxa_allocate_exception(8uLL);
    v99 = "Cannot read reverb.mDataLocationIndex";
    goto LABEL_165;
  }

  if (v9 + 8 * (v3 - v4) <= 1)
  {
    goto LABEL_160;
  }

  v24 = v10 >> 30;
  v25 = v9 - 2;
  *(a3 + 28) = v9 - 2;
  if (v9 - 2 < 0)
  {
    v28 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v28 <= v4)
    {
      v10 = bswap32(*v4);
    }

    else
    {
      v40 = 4;
      v41 = v4;
      do
      {
        v42 = v10 << 8;
        *(a3 + 24) = v42;
        v43 = 255;
        if (v41 < v3 && v41 >= v28)
        {
          v43 = *v41;
        }

        v10 = v43 | v42;
        *(a3 + 24) = v10;
        v41 = (v41 + 1);
        --v40;
      }

      while (v40);
    }

    v44 = v10 << (2 - v9);
    v45 = v9 + 30;
    *(a3 + 28) = v45;
    *a3 = ++v4;
    v24 |= v10 >> v45;
    if (v45)
    {
      v26 = v44;
    }

    else
    {
      v26 = 0;
    }

    if (v45)
    {
      v25 = v45;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v26 = 4 * v10;
  }

  *(a3 + 24) = v26;
  *(a2 + 4) = v24;
  if (v25 + 8 * (v3 - v4) <= 8)
  {
    goto LABEL_161;
  }

  v46 = v26 >> 23;
  v47 = v25 - 9;
  *(a3 + 28) = v25 - 9;
  if (v25 - 9 < 0)
  {
    v49 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v49 <= v4)
    {
      v26 = bswap32(*v4);
    }

    else
    {
      v66 = 4;
      v67 = v4;
      do
      {
        v68 = v26 << 8;
        *(a3 + 24) = v68;
        v69 = 255;
        if (v67 < v3 && v67 >= v49)
        {
          v69 = *v67;
        }

        v26 = v69 | v68;
        *(a3 + 24) = v26;
        v67 = (v67 + 1);
        --v66;
      }

      while (v66);
    }

    v71 = v25 + 23;
    v70 = v25 == -23;
    *(a3 + 28) = v25 + 23;
    *a3 = ++v4;
    v46 |= v26 >> (v25 + 23);
    if (v25 == -23)
    {
      v48 = 0;
    }

    else
    {
      v48 = v26 << (9 - v25);
    }

    if (v70)
    {
      v47 = 0;
    }

    else
    {
      v47 = v71;
    }
  }

  else
  {
    v48 = v26 << 9;
  }

  *(a3 + 24) = v48;
  *(a2 + 6) = v46;
  if (v47 + 8 * (v3 - v4) <= 8)
  {
    goto LABEL_162;
  }

  v72 = v48 >> 23;
  *(a3 + 28) = v47 - 9;
  if (v47 - 9 < 0)
  {
    v74 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v74 <= v4)
    {
      v48 = bswap32(*v4);
    }

    else
    {
      v84 = 4;
      v85 = v4;
      do
      {
        v86 = v48 << 8;
        *(a3 + 24) = v86;
        v87 = 255;
        if (v85 < v3 && v85 >= v74)
        {
          v87 = *v85;
        }

        v48 = v87 | v86;
        *(a3 + 24) = v48;
        v85 = (v85 + 1);
        --v84;
      }

      while (v84);
    }

    v88 = v48 << (9 - v47);
    v89 = v47 + 23;
    *(a3 + 28) = v89;
    *a3 = v4 + 1;
    v72 |= v48 >> v89;
    if (v89)
    {
      v73 = v88;
    }

    else
    {
      v73 = 0;
    }
  }

  else
  {
    v73 = v48 << 9;
  }

  *(a3 + 24) = v73;
  *(a2 + 8) = v72;
  v90 = a2 + 12;

  APAC::MetadataBitStreamParser::parseFallbackRoomGeometry(a1, v90, a3);
}

{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v67 = "Cannot read sR.reverbProcIndex";
    goto LABEL_107;
  }

  v7 = *(a3 + 24);
  v8 = v7 >> 29;
  v9 = v6 - 3;
  *(a3 + 28) = v6 - 3;
  if (v6 - 3 < 0)
  {
    v11 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v11 > v4)
    {
      v13 = 4;
      v14 = v4;
      do
      {
        v15 = v7 << 8;
        *(a3 + 24) = v15;
        v16 = 255;
        if (v14 < v3 && v14 >= v11)
        {
          v16 = *v14;
        }

        v7 = v16 | v15;
        *(a3 + 24) = v7;
        v14 = (v14 + 1);
        --v13;
      }

      while (v13);
    }

    else
    {
      v7 = bswap32(*v4);
    }

    v18 = v6 + 29;
    v17 = v6 == -29;
    *(a3 + 28) = v6 + 29;
    *a3 = ++v4;
    v8 |= v7 >> (v6 + 29);
    if (v6 == -29)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7 << (3 - v6);
    }

    if (v17)
    {
      v9 = 0;
    }

    else
    {
      v9 = v18;
    }
  }

  else
  {
    v10 = 8 * v7;
  }

  *(a3 + 24) = v10;
  *a2 = v8;
  if (v8 == 2)
  {
    if (v9 + 8 * (v3 - v4) <= 3)
    {
      exception = __cxa_allocate_exception(8uLL);
      v67 = "Cannot read sR.codeBookID";
    }

    else
    {
      v22 = v10 >> 28;
      v23 = v9 - 4;
      *(a3 + 28) = v9 - 4;
      if (v9 - 4 < 0)
      {
        v26 = *(a3 + 8);
        if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v26 <= v4)
        {
          v10 = bswap32(*v4);
        }

        else
        {
          v36 = 4;
          v37 = v4;
          do
          {
            v38 = v10 << 8;
            *(a3 + 24) = v38;
            v39 = 255;
            if (v37 < v3 && v37 >= v26)
            {
              v39 = *v37;
            }

            v10 = v39 | v38;
            *(a3 + 24) = v10;
            v37 = (v37 + 1);
            --v36;
          }

          while (v36);
        }

        v40 = v10 << (4 - v9);
        v41 = v9 + 28;
        *(a3 + 28) = v41;
        *a3 = ++v4;
        v22 |= v10 >> v41;
        if (v41)
        {
          v24 = v40;
        }

        else
        {
          v24 = 0;
        }

        if (v41)
        {
          v23 = v41;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v24 = 16 * v10;
      }

      *(a3 + 24) = v24;
      *(a2 + 5) = v22;
      if (v23 + 8 * (v3 - v4) > 9)
      {
        v42 = v24 >> 22;
        v43 = v23 - 10;
        *(a3 + 28) = v23 - 10;
        if (v23 - 10 < 0)
        {
          v45 = *(a3 + 8);
          if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v45 <= v4)
          {
            v24 = bswap32(*v4);
          }

          else
          {
            v54 = 4;
            v55 = v4;
            do
            {
              v56 = v24 << 8;
              *(a3 + 24) = v56;
              v57 = 255;
              if (v55 < v3 && v55 >= v45)
              {
                v57 = *v55;
              }

              v24 = v57 | v56;
              *(a3 + 24) = v24;
              v55 = (v55 + 1);
              --v54;
            }

            while (v54);
          }

          v59 = v23 + 22;
          v58 = v23 == -22;
          *(a3 + 28) = v23 + 22;
          *a3 = ++v4;
          v42 |= v24 >> (v23 + 22);
          if (v23 == -22)
          {
            v44 = 0;
          }

          else
          {
            v44 = v24 << (10 - v23);
          }

          if (v58)
          {
            v43 = 0;
          }

          else
          {
            v43 = v59;
          }
        }

        else
        {
          v44 = v24 << 10;
        }

        *(a3 + 24) = v44;
        *(a2 + 6) = v42;
        if (v43 + 8 * (v3 - v4) > 6)
        {
          v33 = v44 >> 25;
          *(a3 + 28) = v43 - 7;
          if (v43 - 7 >= 0)
          {
            v34 = v44 << 7;
            goto LABEL_100;
          }

          v60 = *(a3 + 8);
          if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v60 <= v4)
          {
            v44 = bswap32(*v4);
          }

          else
          {
            v61 = 4;
            v62 = v4;
            do
            {
              v63 = v44 << 8;
              *(a3 + 24) = v63;
              v64 = 255;
              if (v62 < v3 && v62 >= v60)
              {
                v64 = *v62;
              }

              v44 = v64 | v63;
              *(a3 + 24) = v44;
              v62 = (v62 + 1);
              --v61;
            }

            while (v61);
          }

          v50 = v44 << (7 - v43);
          v65 = v43 + 25;
          v51 = v65 == 0;
          *(a3 + 28) = v65;
          *a3 = v4 + 1;
          v53 = v44 >> v65;
LABEL_97:
          LOBYTE(v33) = v53 | v33;
          if (v51)
          {
            v34 = 0;
          }

          else
          {
            v34 = v50;
          }

          goto LABEL_100;
        }

        goto LABEL_103;
      }

      exception = __cxa_allocate_exception(8uLL);
      v67 = "Cannot read sR.IRFilterID";
    }

LABEL_107:
    *exception = v67;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v8 != 1)
  {
    return;
  }

  if (v9 + 8 * (v3 - v4) <= 9)
  {
    exception = __cxa_allocate_exception(8uLL);
    v67 = "Cannot read sR.reverbProcPreset";
    goto LABEL_107;
  }

  v19 = v10 >> 22;
  v20 = v9 - 10;
  *(a3 + 28) = v9 - 10;
  if (v9 - 10 < 0)
  {
    v25 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v25 <= v4)
    {
      v10 = bswap32(*v4);
    }

    else
    {
      v27 = 4;
      v28 = v4;
      do
      {
        v29 = v10 << 8;
        *(a3 + 24) = v29;
        v30 = 255;
        if (v28 < v3 && v28 >= v25)
        {
          v30 = *v28;
        }

        v10 = v30 | v29;
        *(a3 + 24) = v10;
        v28 = (v28 + 1);
        --v27;
      }

      while (v27);
    }

    v31 = v10 << (10 - v9);
    v32 = v9 + 22;
    *(a3 + 28) = v32;
    *a3 = ++v4;
    v19 |= v10 >> v32;
    if (v32)
    {
      v21 = v31;
    }

    else
    {
      v21 = 0;
    }

    if (v32)
    {
      v20 = v32;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v21 = v10 << 10;
  }

  *(a3 + 24) = v21;
  *(a2 + 2) = v19;
  if (v20 + 8 * (v3 - v4) <= 6)
  {
LABEL_103:
    exception = __cxa_allocate_exception(8uLL);
    v67 = "Cannot read sR.mixLevel";
    goto LABEL_107;
  }

  v33 = v21 >> 25;
  *(a3 + 28) = v20 - 7;
  if (v20 - 7 < 0)
  {
    v35 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v35 <= v4)
    {
      v21 = bswap32(*v4);
    }

    else
    {
      v46 = 4;
      v47 = v4;
      do
      {
        v48 = v21 << 8;
        *(a3 + 24) = v48;
        v49 = 255;
        if (v47 < v3 && v47 >= v35)
        {
          v49 = *v47;
        }

        v21 = v49 | v48;
        *(a3 + 24) = v21;
        v47 = (v47 + 1);
        --v46;
      }

      while (v46);
    }

    v50 = v21 << (7 - v20);
    v52 = v20 + 25;
    v51 = v52 == 0;
    *(a3 + 28) = v52;
    *a3 = v4 + 1;
    v53 = v21 >> v52;
    goto LABEL_97;
  }

  v34 = v21 << 7;
LABEL_100:
  *(a3 + 24) = v34;
  *(a2 + 4) = v33;
}

void APAC::MetadataBitStreamParser::parsePostProcReverb(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v37 = "Cannot read ppReverb.mReverbProcIndex";
    goto LABEL_57;
  }

  v7 = *(a3 + 24);
  v8 = v7 >> 29;
  v9 = v6 - 3;
  *(a3 + 28) = v6 - 3;
  if (v6 - 3 < 0)
  {
    v11 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v11 > v4)
    {
      v13 = 4;
      v14 = v4;
      do
      {
        v15 = v7 << 8;
        *(a3 + 24) = v15;
        v16 = 255;
        if (v14 < v3 && v14 >= v11)
        {
          v16 = *v14;
        }

        v7 = v16 | v15;
        *(a3 + 24) = v7;
        v14 = (v14 + 1);
        --v13;
      }

      while (v13);
    }

    else
    {
      v7 = bswap32(*v4);
    }

    v17 = v7 << (3 - v6);
    v18 = v6 + 29;
    *(a3 + 28) = v18;
    *a3 = ++v4;
    v8 |= v7 >> v18;
    if (v18)
    {
      v10 = v17;
    }

    else
    {
      v10 = 0;
    }

    if (v18)
    {
      v9 = v18;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = 8 * v7;
  }

  *(a3 + 24) = v10;
  *a2 = v8;
  if (v8 == 1)
  {
    if (v9 + 8 * (v3 - v4) <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v37 = "Cannot read ppReverb.mEarlyReflectionTimeProvided";
      goto LABEL_57;
    }

    v19 = v10 >> 31;
    v20 = v9 - 1;
    *(a3 + 28) = v9 - 1;
    if (v9 - 1 < 0)
    {
      v22 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v22 <= v4)
      {
        v10 = bswap32(*v4);
      }

      else
      {
        v23 = 4;
        v24 = v4;
        do
        {
          v25 = v10 << 8;
          *(a3 + 24) = v25;
          v26 = 255;
          if (v24 < v3 && v24 >= v22)
          {
            v26 = *v24;
          }

          v10 = v26 | v25;
          *(a3 + 24) = v10;
          v24 = (v24 + 1);
          --v23;
        }

        while (v23);
      }

      v28 = v9 + 31;
      v27 = v9 == -31;
      *(a3 + 28) = v9 + 31;
      *a3 = ++v4;
      v19 |= v10 >> (v9 + 31);
      if (v9 == -31)
      {
        v21 = 0;
      }

      else
      {
        v21 = v10 << (1 - v9);
      }

      if (v27)
      {
        v20 = 0;
      }

      else
      {
        v20 = v28;
      }
    }

    else
    {
      v21 = 2 * v10;
    }

    *(a3 + 24) = v21;
    *(a2 + 1) = v19 != 0;
    if (v19)
    {
      if (v20 + 8 * (v3 - v4) > 31)
      {
        *(a3 + 28) = v20 - 32;
        if (v20 - 32 < 0)
        {
          v29 = *(a3 + 8);
          if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v29 <= v4)
          {
            v30 = bswap32(*v4);
          }

          else
          {
            v31 = 4;
            v32 = v4;
            v30 = v21;
            do
            {
              v33 = v30 << 8;
              *(a3 + 24) = v33;
              v34 = 255;
              if (v32 < v3 && v32 >= v29)
              {
                v34 = *v32;
              }

              v30 = v34 | v33;
              *(a3 + 24) = v30;
              v32 = (v32 + 1);
              --v31;
            }

            while (v31);
          }

          *a3 = v4 + 1;
          v21 |= v30 >> v20;
          v35 = v30 << -v20;
          if (!v20)
          {
            v35 = 0;
          }

          *(a3 + 24) = v35;
          *(a3 + 28) = v20;
        }

        *(a2 + 4) = v21;
        return;
      }

      exception = __cxa_allocate_exception(8uLL);
      v37 = "Cannot read ppReverb.mEarlyReflectionTime";
LABEL_57:
      *exception = v37;
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }
  }
}

void APAC::MetadataBitStreamParser::parseRadiationPattern(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *a4;
  v6 = v4 - *a4;
  v7 = *(a4 + 28);
  if (v7 + 8 * v6 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v65 = "Cannot read radPattern.mAuSMProcIndex";
    goto LABEL_108;
  }

  v8 = *(a4 + 24);
  v9 = v8 >> 29;
  v10 = v7 - 3;
  *(a4 + 28) = v7 - 3;
  if (v7 - 3 < 0)
  {
    v12 = *(a4 + 8);
    if ((v6 & ~(v6 >> 63) & 0xFFFFFFFC) == 0 || v12 > v5)
    {
      v14 = 4;
      v15 = v5;
      do
      {
        v16 = v8 << 8;
        *(a4 + 24) = v16;
        v17 = 255;
        if (v15 < v4 && v15 >= v12)
        {
          v17 = *v15;
        }

        v8 = v17 | v16;
        *(a4 + 24) = v8;
        ++v15;
        --v14;
      }

      while (v14);
    }

    else
    {
      v8 = bswap32(*v5);
    }

    v19 = v7 + 29;
    v18 = v7 == -29;
    *(a4 + 28) = v7 + 29;
    v5 += 4;
    *a4 = v5;
    v9 |= v8 >> (v7 + 29);
    if (v7 == -29)
    {
      v11 = 0;
    }

    else
    {
      v11 = v8 << (3 - v7);
    }

    if (v18)
    {
      v10 = 0;
    }

    else
    {
      v10 = v19;
    }
  }

  else
  {
    v11 = 8 * v8;
  }

  *(a4 + 24) = v11;
  *a2 = v9;
  if (v9 > 2u)
  {
    if (v9 == 3)
    {
      v26 = a2 + 16;

      APAC::MetadataBitStreamParser::parseParametricRadiationPattern(a1, v26, a3, a4);
    }

    else if (v9 == 4)
    {
      v23 = a2 + 176;

      APAC::MetadataBitStreamParser::parseHOADirectivityModel(a1, v23, a3, a4);
    }
  }

  else
  {
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        return;
      }

      if (v10 + 8 * (v4 - v5) <= 1)
      {
        exception = __cxa_allocate_exception(8uLL);
        v65 = "Cannot read radPattern.mDataLocationIndex";
        goto LABEL_108;
      }

      v20 = v11 >> 30;
      v21 = v10 - 2;
      *(a4 + 28) = v10 - 2;
      if (v10 - 2 < 0)
      {
        v27 = *(a4 + 8);
        if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v27 <= v5)
        {
          v11 = bswap32(*v5);
        }

        else
        {
          v29 = 4;
          v30 = v5;
          do
          {
            v31 = v11 << 8;
            *(a4 + 24) = v31;
            v32 = 255;
            if (v30 < v4 && v30 >= v27)
            {
              v32 = *v30;
            }

            v11 = v32 | v31;
            *(a4 + 24) = v11;
            ++v30;
            --v29;
          }

          while (v29);
        }

        v5 += 4;
        *a4 = v5;
        v21 = v10 + 30;
        v20 |= v11 >> (v10 + 30);
        if (v10 == -30)
        {
          v33 = 0;
          v22 = 0;
          *(a2 + 4) = v20;
          *(a4 + 24) = 0xFFFFFFF700000000;
          goto LABEL_63;
        }

        v22 = v11 << (2 - v10);
      }

      else
      {
        v22 = 4 * v11;
      }

      *(a2 + 4) = v20;
      v33 = v22 >> 23;
      v34 = v21 - 9;
      *(a4 + 24) = v22;
      *(a4 + 28) = v21 - 9;
      if (v21 - 9 >= 0)
      {
        v35 = v22 << 9;
        goto LABEL_73;
      }

      v27 = *(a4 + 8);
LABEL_63:
      if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v27 <= v5)
      {
        v22 = bswap32(*v5);
      }

      else
      {
        v42 = 4;
        v43 = v5;
        do
        {
          v44 = v22 << 8;
          *(a4 + 24) = v44;
          v45 = 255;
          if (v43 < v4 && v43 >= v27)
          {
            v45 = *v43;
          }

          v22 = v45 | v44;
          *(a4 + 24) = v22;
          ++v43;
          --v42;
        }

        while (v42);
      }

      v5 += 4;
      *a4 = v5;
      v34 = v21 + 23;
      v33 |= v22 >> (v21 + 23);
      if (v21 == -23)
      {
        v46 = 0;
        v35 = 0;
        *(a2 + 6) = v33;
        *(a4 + 24) = 0xFFFFFFF700000000;
        goto LABEL_77;
      }

      v35 = v22 << (9 - v21);
LABEL_73:
      *(a2 + 6) = v33;
      v46 = v35 >> 23;
      v47 = v34 - 9;
      *(a4 + 24) = v35;
      *(a4 + 28) = v34 - 9;
      if (v34 - 9 >= 0)
      {
        v48 = v35 << 9;
LABEL_91:
        *(a4 + 24) = v48;
        *(a2 + 8) = v46;
        if (v47 + 8 * (v4 - v5) > 9)
        {
          v55 = v48 >> 22;
          *(a4 + 28) = v47 - 10;
          if (v47 - 10 < 0)
          {
            v57 = *(a4 + 8);
            if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v57 <= v5)
            {
              v48 = bswap32(*v5);
            }

            else
            {
              v58 = 4;
              v59 = v5;
              do
              {
                v60 = v48 << 8;
                *(a4 + 24) = v60;
                v61 = 255;
                if (v59 < v4 && v59 >= v57)
                {
                  v61 = *v59;
                }

                v48 = v61 | v60;
                *(a4 + 24) = v48;
                ++v59;
                --v58;
              }

              while (v58);
            }

            v62 = v48 << (10 - v47);
            v63 = v47 + 22;
            *(a4 + 28) = v63;
            *a4 = v5 + 4;
            v55 |= v48 >> v63;
            if (v63)
            {
              v56 = v62;
            }

            else
            {
              v56 = 0;
            }
          }

          else
          {
            v56 = v48 << 10;
          }

          *(a4 + 24) = v56;
          *(a2 + 10) = v55;
          return;
        }

        exception = __cxa_allocate_exception(8uLL);
        v65 = "Cannot read radPattern.mFallbackCustomIR.mSourceType";
LABEL_108:
        *exception = v65;
        __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
      }

      v27 = *(a4 + 8);
LABEL_77:
      if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v27 <= v5)
      {
        v35 = bswap32(*v5);
      }

      else
      {
        v49 = 4;
        v50 = v5;
        do
        {
          v51 = v35 << 8;
          *(a4 + 24) = v51;
          v52 = 255;
          if (v50 < v4 && v50 >= v27)
          {
            v52 = *v50;
          }

          v35 = v52 | v51;
          *(a4 + 24) = v35;
          ++v50;
          --v49;
        }

        while (v49);
      }

      v54 = v34 + 23;
      v53 = v34 == -23;
      *(a4 + 28) = v34 + 23;
      v5 += 4;
      *a4 = v5;
      v46 |= v35 >> (v34 + 23);
      if (v34 == -23)
      {
        v48 = 0;
      }

      else
      {
        v48 = v35 << (9 - v34);
      }

      if (v53)
      {
        v47 = 0;
      }

      else
      {
        v47 = v54;
      }

      goto LABEL_91;
    }

    if (v10 + 8 * (v4 - v5) <= 9)
    {
      exception = __cxa_allocate_exception(8uLL);
      v65 = "Cannot read radPattern.mSourceType";
      goto LABEL_108;
    }

    v24 = v11 >> 22;
    *(a4 + 28) = v10 - 10;
    if (v10 - 10 < 0)
    {
      v28 = *(a4 + 8);
      if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v28 <= v5)
      {
        v11 = bswap32(*v5);
      }

      else
      {
        v36 = 4;
        v37 = v5;
        do
        {
          v38 = v11 << 8;
          *(a4 + 24) = v38;
          v39 = 255;
          if (v37 < v4 && v37 >= v28)
          {
            v39 = *v37;
          }

          v11 = v39 | v38;
          *(a4 + 24) = v11;
          ++v37;
          --v36;
        }

        while (v36);
      }

      v40 = v11 << (10 - v10);
      v41 = v10 + 22;
      *(a4 + 28) = v41;
      *a4 = v5 + 4;
      v24 |= v11 >> v41;
      if (v41)
      {
        v25 = v40;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = v11 << 10;
    }

    *(a4 + 24) = v25;
    *(a2 + 2) = v24;
  }
}

void APAC::MetadataBitStreamParser::parseHOARenderingMatrix(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *a4;
  v6 = v4 - *a4;
  v7 = *(a4 + 28);
  if (v7 + 8 * v6 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v67 = "Cannot read matrix.mDataLocationIndex";
    goto LABEL_105;
  }

  v10 = *(a4 + 24);
  v11 = v10 >> 30;
  v12 = v7 - 2;
  *(a4 + 28) = v7 - 2;
  if (v7 - 2 < 0)
  {
    v14 = *(a4 + 8);
    if ((v6 & ~(v6 >> 63) & 0xFFFFFFFC) == 0 || v14 > v5)
    {
      v16 = 4;
      v17 = v5;
      do
      {
        v18 = v10 << 8;
        *(a4 + 24) = v18;
        v19 = 255;
        if (v17 < v4 && v17 >= v14)
        {
          v19 = *v17;
        }

        v10 = v19 | v18;
        *(a4 + 24) = v10;
        v17 = (v17 + 1);
        --v16;
      }

      while (v16);
    }

    else
    {
      v10 = bswap32(*v5);
    }

    v20 = v10 << (2 - v7);
    v21 = v7 + 30;
    *(a4 + 28) = v21;
    *a4 = ++v5;
    v11 |= v10 >> v21;
    if (v21)
    {
      v13 = v20;
    }

    else
    {
      v13 = 0;
    }

    if (v21)
    {
      v12 = v21;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = 4 * v10;
  }

  *(a4 + 24) = v13;
  *a2 = v11;
  if (v11 == 2)
  {
LABEL_23:
    v22 = v13 >> 23;
    v23 = v12 - 9;
    *(a4 + 28) = v12 - 9;
    if (v12 - 9 < 0)
    {
      v28 = *(a4 + 8);
      if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v28 <= v5)
      {
        v13 = bswap32(*v5);
      }

      else
      {
        v29 = 4;
        v30 = v5;
        do
        {
          v31 = v13 << 8;
          *(a4 + 24) = v31;
          v32 = 255;
          if (v30 < v4 && v30 >= v28)
          {
            v32 = *v30;
          }

          v13 = v32 | v31;
          *(a4 + 24) = v13;
          v30 = (v30 + 1);
          --v29;
        }

        while (v29);
      }

      *a4 = ++v5;
      v23 = v12 + 23;
      v22 |= v13 >> (v12 + 23);
      if (v12 == -23)
      {
        v33 = 0;
        v24 = 0;
        *(a2 + 2) = v22;
        *(a4 + 24) = 0xFFFFFFF700000000;
        goto LABEL_45;
      }

      v24 = v13 << (9 - v12);
    }

    else
    {
      v24 = v13 << 9;
    }

    *(a2 + 2) = v22;
    v33 = v24 >> 23;
    *(a4 + 24) = v24;
    *(a4 + 28) = v23 - 9;
    if (v23 - 9 >= 0)
    {
      v34 = v24 << 9;
LABEL_56:
      *(a4 + 24) = v34;
      *(a2 + 4) = v33;
      return;
    }

    v28 = *(a4 + 8);
LABEL_45:
    if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v28 <= v5)
    {
      v24 = bswap32(*v5);
    }

    else
    {
      v36 = 4;
      v37 = v5;
      do
      {
        v38 = v24 << 8;
        *(a4 + 24) = v38;
        v39 = 255;
        if (v37 < v4 && v37 >= v28)
        {
          v39 = *v37;
        }

        v24 = v39 | v38;
        *(a4 + 24) = v24;
        v37 = (v37 + 1);
        --v36;
      }

      while (v36);
    }

    *(a4 + 28) = v23 + 23;
    *a4 = v5 + 1;
    v33 |= v24 >> (v23 + 23);
    if (v23 == -23)
    {
      v34 = 0;
    }

    else
    {
      v34 = v24 << (9 - v23);
    }

    goto LABEL_56;
  }

  if (v11 == 1)
  {
    if (v12 + 8 * (v4 - v5) <= 3)
    {
      exception = __cxa_allocate_exception(8uLL);
      v67 = "Cannot read matrix.mHOAOrder";
    }

    else
    {
      v25 = v13 >> 28;
      v26 = v12 - 4;
      *(a4 + 28) = v12 - 4;
      if (v12 - 4 < 0)
      {
        v35 = *(a4 + 8);
        if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v35 <= v5)
        {
          v13 = bswap32(*v5);
        }

        else
        {
          v40 = 4;
          v41 = v5;
          do
          {
            v42 = v13 << 8;
            *(a4 + 24) = v42;
            v43 = 255;
            if (v41 < v4 && v41 >= v35)
            {
              v43 = *v41;
            }

            v13 = v43 | v42;
            *(a4 + 24) = v13;
            v41 = (v41 + 1);
            --v40;
          }

          while (v40);
        }

        v45 = v12 + 28;
        v44 = v12 == -28;
        *(a4 + 28) = v12 + 28;
        *a4 = ++v5;
        v25 |= v13 >> (v12 + 28);
        if (v12 == -28)
        {
          v27 = 0;
        }

        else
        {
          v27 = v13 << (4 - v12);
        }

        if (v44)
        {
          v26 = 0;
        }

        else
        {
          v26 = v45;
        }
      }

      else
      {
        v27 = 16 * v13;
      }

      *(a4 + 24) = v27;
      *(a2 + 6) = v25;
      if (v26 + 8 * (v4 - v5) <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v67 = "Cannot read matrix.mChannelLayoutTag";
      }

      else
      {
        *(a4 + 28) = v26 - 32;
        if (v26 - 32 < 0)
        {
          v47 = *(a4 + 8);
          if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v47 <= v5)
          {
            v48 = bswap32(*v5);
          }

          else
          {
            v49 = 4;
            v50 = v5;
            v48 = v27;
            do
            {
              v51 = v48 << 8;
              *(a4 + 24) = v51;
              v52 = 255;
              if (v50 < v4 && v50 >= v47)
              {
                v52 = *v50;
              }

              v48 = v52 | v51;
              *(a4 + 24) = v48;
              v50 = (v50 + 1);
              --v49;
            }

            while (v49);
          }

          *a4 = ++v5;
          v46 = (v48 >> v26) | v27;
          v27 = v48 << -v26;
          if (!v26)
          {
            v27 = 0;
          }

          *(a4 + 24) = v27;
          *(a4 + 28) = v26;
        }

        else
        {
          v26 -= 32;
          v46 = v27;
        }

        *(a2 + 8) = v46;
        v53 = (v25 + 1) * (v25 + 1);
        v54 = v46;
        if (a3)
        {
          std::vector<int>::resize((a2 + 16), v46 * v53);
          v27 = *(a4 + 24);
          v26 = *(a4 + 28);
          v5 = *a4;
        }

        v55 = 0;
        v56 = *(a4 + 16);
        while (!v54)
        {
LABEL_102:
          if (++v55 == v53)
          {
            return;
          }
        }

        v57 = 0;
        v58 = *(a4 + 8);
        v59 = *(a2 + 16) + 4 * v55 * v54;
        while (v26 + 8 * (v56 - v5) > 31)
        {
          *(a4 + 28) = v26 - 32;
          if (v26 - 32 < 0)
          {
            if (((v56 - v5) & ~((v56 - v5) >> 63) & 0xFFFFFFFC) != 0 && v58 <= v5)
            {
              v61 = bswap32(*v5);
            }

            else
            {
              v62 = 4;
              v63 = v5;
              v61 = v27;
              do
              {
                v64 = v61 << 8;
                *(a4 + 24) = v64;
                v65 = 255;
                if (v63 < v56 && v63 >= v58)
                {
                  v65 = *v63;
                }

                v61 = v65 | v64;
                *(a4 + 24) = v61;
                v63 = (v63 + 1);
                --v62;
              }

              while (v62);
            }

            *a4 = ++v5;
            v60 = (v61 >> v26) | v27;
            v27 = v61 << -v26;
            if (!v26)
            {
              v27 = 0;
            }

            *(a4 + 24) = v27;
            *(a4 + 28) = v26;
          }

          else
          {
            v26 -= 32;
            v60 = v27;
          }

          *(v59 + 4 * v57++) = v60;
          if (v57 == v54)
          {
            goto LABEL_102;
          }
        }

        exception = __cxa_allocate_exception(8uLL);
        v67 = "Cannot read matrix.mCoeff[idx]";
      }
    }

LABEL_105:
    *exception = v67;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (!v11)
  {
    goto LABEL_23;
  }
}

void APAC::MetadataBitStreamParser::parsePropagationDelay(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v39 = "Cannot read propDelay.mProcessingIndex";
    goto LABEL_58;
  }

  v7 = *(a3 + 24);
  v8 = v7 >> 30;
  v9 = v6 - 2;
  *(a3 + 28) = v6 - 2;
  if (v6 - 2 < 0)
  {
    v11 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v11 > v4)
    {
      v13 = 4;
      v14 = v4;
      do
      {
        v15 = v7 << 8;
        *(a3 + 24) = v15;
        v16 = 255;
        if (v14 < v3 && v14 >= v11)
        {
          v16 = *v14;
        }

        v7 = v16 | v15;
        *(a3 + 24) = v7;
        v14 = (v14 + 1);
        --v13;
      }

      while (v13);
    }

    else
    {
      v7 = bswap32(*v4);
    }

    v17 = v7 << (2 - v6);
    v18 = v6 + 30;
    *(a3 + 28) = v18;
    *a3 = ++v4;
    v8 |= v7 >> v18;
    if (v18)
    {
      v10 = v17;
    }

    else
    {
      v10 = 0;
    }

    if (v18)
    {
      v9 = v18;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = 4 * v7;
  }

  *(a3 + 24) = v10;
  *a2 = v8;
  if (v8)
  {
    if (v9 + 8 * (v3 - v4) <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v39 = "Cannot read propDelay.mSpeedOfSoundProvided";
      goto LABEL_58;
    }

    v19 = v10 >> 31;
    v20 = v9 - 1;
    *(a3 + 28) = v9 - 1;
    if (v9 - 1 < 0)
    {
      v22 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v22 <= v4)
      {
        v10 = bswap32(*v4);
      }

      else
      {
        v23 = 4;
        v24 = v4;
        do
        {
          v25 = v10 << 8;
          *(a3 + 24) = v25;
          v26 = 255;
          if (v24 < v3 && v24 >= v22)
          {
            v26 = *v24;
          }

          v10 = v26 | v25;
          *(a3 + 24) = v10;
          v24 = (v24 + 1);
          --v23;
        }

        while (v23);
      }

      v27 = v10 << (1 - v9);
      v28 = v9 + 31;
      *(a3 + 28) = v28;
      *a3 = ++v4;
      v19 |= v10 >> v28;
      if (v28)
      {
        v21 = v27;
      }

      else
      {
        v21 = 0;
      }

      if (v28)
      {
        v20 = v28;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v21 = 2 * v10;
    }

    *(a3 + 24) = v21;
    *(a2 + 1) = v19 != 0;
    if (v19)
    {
      if (v20 + 8 * (v3 - v4) > 15)
      {
        v29 = HIWORD(v21);
        *(a3 + 28) = v20 - 16;
        if (v20 - 16 < 0)
        {
          v31 = *(a3 + 8);
          if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v31 <= v4)
          {
            v21 = bswap32(*v4);
          }

          else
          {
            v32 = 4;
            v33 = v4;
            do
            {
              v34 = v21 << 8;
              *(a3 + 24) = v34;
              v35 = 255;
              if (v33 < v3 && v33 >= v31)
              {
                v35 = *v33;
              }

              v21 = v35 | v34;
              *(a3 + 24) = v21;
              v33 = (v33 + 1);
              --v32;
            }

            while (v32);
          }

          v36 = v21 << (16 - v20);
          v37 = v20 + 16;
          *(a3 + 28) = v37;
          *a3 = v4 + 1;
          v29 |= v21 >> v37;
          if (v37)
          {
            v30 = v36;
          }

          else
          {
            v30 = 0;
          }
        }

        else
        {
          v30 = v21 << 16;
        }

        *(a3 + 24) = v30;
        *(a2 + 2) = v29;
        return;
      }

      exception = __cxa_allocate_exception(8uLL);
      v39 = "Cannot read propDelay.mSpeedOfSound";
LABEL_58:
      *exception = v39;
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }
  }
}

void APAC::MetadataBitStreamParser::parseParametricRadiationPattern(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *a4;
  v6 = v4 - *a4;
  v7 = *(a4 + 28);
  if (v7 + 8 * v6 <= 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v145 = "Cannot read parametric.mDirectivityModel";
    goto LABEL_235;
  }

  v10 = *(a4 + 24);
  v11 = v10 >> 27;
  v12 = v7 - 5;
  *(a4 + 28) = v7 - 5;
  if (v7 - 5 < 0)
  {
    v14 = *(a4 + 8);
    if ((v6 & ~(v6 >> 63) & 0xFFFFFFFC) == 0 || v14 > v5)
    {
      v16 = 4;
      v17 = v5;
      do
      {
        v18 = v10 << 8;
        *(a4 + 24) = v18;
        v19 = 255;
        if (v17 < v4 && v17 >= v14)
        {
          v19 = *v17;
        }

        v10 = v19 | v18;
        *(a4 + 24) = v10;
        v17 = (v17 + 1);
        --v16;
      }

      while (v16);
    }

    else
    {
      v10 = bswap32(*v5);
    }

    v21 = v7 + 27;
    v20 = v7 == -27;
    *(a4 + 28) = v7 + 27;
    *a4 = ++v5;
    v11 |= v10 >> (v7 + 27);
    if (v7 == -27)
    {
      v13 = 0;
    }

    else
    {
      v13 = v10 << (5 - v7);
    }

    if (v20)
    {
      v12 = 0;
    }

    else
    {
      v12 = v21;
    }
  }

  else
  {
    v13 = 32 * v10;
  }

  *(a4 + 24) = v13;
  *a2 = v11;
  if (v11 > 1u)
  {
    if (v11 == 2)
    {
      v30 = v13 >> 14;
      *(a4 + 28) = v12 - 18;
      if (v12 - 18 < 0)
      {
        v34 = *(a4 + 8);
        if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v34 <= v5)
        {
          v13 = bswap32(*v5);
        }

        else
        {
          v85 = 4;
          v86 = v5;
          do
          {
            v87 = v13 << 8;
            *(a4 + 24) = v87;
            v88 = 255;
            if (v86 < v4 && v86 >= v34)
            {
              v88 = *v86;
            }

            v13 = v88 | v87;
            *(a4 + 24) = v13;
            v86 = (v86 + 1);
            --v85;
          }

          while (v85);
        }

        v89 = v13 << (18 - v12);
        v90 = v12 + 14;
        *(a4 + 28) = v90;
        *a4 = v5 + 1;
        v30 |= v13 >> v90;
        if (v90)
        {
          v31 = v89;
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v31 = v13 << 18;
      }

      *(a4 + 24) = v31;
      v91 = v30 + 1;
      *(a2 + 4) = v91;
      if (a3)
      {
        std::vector<int>::resize((a2 + 8), v30 + 1);
        std::vector<int>::resize((a2 + 80), v91);
        std::vector<int>::resize((a2 + 104), v91);
        std::vector<int>::resize((a2 + 128), v91);
      }

      if (v91)
      {
        v92 = 0;
        v93 = *(a4 + 24);
        v94 = *(a4 + 28);
        v96 = *(a4 + 8);
        v95 = *(a4 + 16);
        v97 = *a4;
        v98 = *(a2 + 8);
        v99 = *(a2 + 80);
        v100 = *(a2 + 104);
        v101 = *(a2 + 128);
        while (1)
        {
          if (v94 + 8 * (v95 - v97) <= 17)
          {
LABEL_228:
            exception = __cxa_allocate_exception(8uLL);
            v145 = "Cannot read parametric.mFrequencyForTheSubband[sb]";
            goto LABEL_235;
          }

          v102 = v93 >> 14;
          *(a4 + 28) = v94 - 18;
          if (v94 - 18 < 0)
          {
            if (((v95 - v97) & ~((v95 - v97) >> 63) & 0xFFFFFFFC) != 0 && v96 <= v97)
            {
              v93 = bswap32(*v97);
            }

            else
            {
              v103 = 4;
              v104 = v97;
              do
              {
                v105 = v93 << 8;
                *(a4 + 24) = v105;
                v106 = 255;
                if (v104 < v95 && v104 >= v96)
                {
                  v106 = *v104;
                }

                v93 = v106 | v105;
                *(a4 + 24) = v93;
                v104 = (v104 + 1);
                --v103;
              }

              while (v103);
            }

            v107 = v93 << (18 - v94);
            v94 += 14;
            *(a4 + 28) = v94;
            *a4 = ++v97;
            v102 |= v93 >> v94;
            if (v94)
            {
              v93 = v107;
            }

            else
            {
              v93 = 0;
            }

            if (!v94)
            {
              v94 = 0;
            }
          }

          else
          {
            v93 <<= 18;
            v94 -= 18;
          }

          *(a4 + 24) = v93;
          *(v98 + 4 * v92) = v102 + 1;
          v108 = v95 - v97;
          if (v94 + 8 * (v95 - v97) <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v145 = "Cannot read parametric.mInnerAngle[sb]";
            goto LABEL_235;
          }

          *(a4 + 28) = v94 - 32;
          if (v94 - 32 < 0)
          {
            if ((v108 & ~(v108 >> 63) & 0xFFFFFFFC) != 0 && v96 <= v97)
            {
              v111 = bswap32(*v97);
            }

            else
            {
              v112 = 4;
              v113 = v97;
              v111 = v93;
              do
              {
                v114 = v111 << 8;
                *(a4 + 24) = v114;
                v115 = 255;
                if (v113 < v95 && v113 >= v96)
                {
                  v115 = *v113;
                }

                v111 = v115 | v114;
                *(a4 + 24) = v111;
                v113 = (v113 + 1);
                --v112;
              }

              while (v112);
            }

            *a4 = ++v97;
            v110 = (v111 >> v94) | v93;
            v93 = v111 << -v94;
            if (!v94)
            {
              v93 = 0;
            }

            *(a4 + 24) = v93;
            *(a4 + 28) = v94;
            v108 = v95 - v97;
            v109 = 8 * (v95 - v97);
          }

          else
          {
            v109 = 8 * v108;
            v94 -= 32;
            v110 = v93;
          }

          *(v99 + 4 * v92) = v110;
          if (v109 + v94 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v145 = "Cannot read parametric.mOuterAngle[sb]";
            goto LABEL_235;
          }

          *(a4 + 28) = v94 - 32;
          if (v94 - 32 < 0)
          {
            if ((v108 & ~(v108 >> 63) & 0xFFFFFFFC) != 0 && v96 <= v97)
            {
              v117 = bswap32(*v97);
            }

            else
            {
              v118 = 4;
              v119 = v97;
              v117 = v93;
              do
              {
                v120 = v117 << 8;
                *(a4 + 24) = v120;
                v121 = 255;
                if (v119 < v95 && v119 >= v96)
                {
                  v121 = *v119;
                }

                v117 = v121 | v120;
                *(a4 + 24) = v117;
                v119 = (v119 + 1);
                --v118;
              }

              while (v118);
            }

            *a4 = ++v97;
            v116 = (v117 >> v94) | v93;
            v93 = v117 << -v94;
            if (!v94)
            {
              v93 = 0;
            }

            *(a4 + 24) = v93;
            *(a4 + 28) = v94;
            v108 = v95 - v97;
            v109 = 8 * (v95 - v97);
          }

          else
          {
            v94 -= 32;
            v116 = v93;
          }

          *(v100 + 4 * v92) = v116;
          if (v109 + v94 <= 31)
          {
            break;
          }

          *(a4 + 28) = v94 - 32;
          if (v94 - 32 < 0)
          {
            if ((v108 & ~(v108 >> 63) & 0xFFFFFFFC) != 0 && v96 <= v97)
            {
              v123 = bswap32(*v97);
            }

            else
            {
              v124 = 4;
              v125 = v97;
              v123 = v93;
              do
              {
                v126 = v123 << 8;
                *(a4 + 24) = v126;
                v127 = 255;
                if (v125 < v95 && v125 >= v96)
                {
                  v127 = *v125;
                }

                v123 = v127 | v126;
                *(a4 + 24) = v123;
                v125 = (v125 + 1);
                --v124;
              }

              while (v124);
            }

            *a4 = ++v97;
            v122 = (v123 >> v94) | v93;
            v93 = v123 << -v94;
            if (!v94)
            {
              v93 = 0;
            }

            *(a4 + 24) = v93;
            *(a4 + 28) = v94;
          }

          else
          {
            v94 -= 32;
            v122 = v93;
          }

          *(v101 + 4 * v92++) = v122;
          if (v92 == v91)
          {
            return;
          }
        }

        exception = __cxa_allocate_exception(8uLL);
        v145 = "Cannot read parametric.mOuterGain[sb]";
LABEL_235:
        *exception = v145;
        __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
      }
    }

    else if (v11 == 3)
    {
      v24 = v4 - v5;
      if (v12 + 8 * (v4 - v5) <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v145 = "Cannot read parametric.mSphereRadius";
        goto LABEL_235;
      }

      *(a4 + 28) = v12 - 32;
      if (v12 - 32 < 0)
      {
        v35 = v24 & ~(v24 >> 63);
        v36 = *(a4 + 8);
        if ((v35 & 0xFFFFFFFC) != 0 && v36 <= v5)
        {
          v37 = bswap32(*v5);
        }

        else
        {
          v128 = 4;
          v129 = v5;
          v37 = v13;
          do
          {
            v130 = v37 << 8;
            *(a4 + 24) = v130;
            v131 = 255;
            if (v129 < v4 && v129 >= v36)
            {
              v131 = *v129;
            }

            v37 = v131 | v130;
            *(a4 + 24) = v37;
            v129 = (v129 + 1);
            --v128;
          }

          while (v128);
        }

        *a4 = ++v5;
        v26 = (v37 >> v12) | v13;
        v13 = v37 << -v12;
        if (!v12)
        {
          v13 = 0;
        }

        *(a4 + 24) = v13;
        *(a4 + 28) = v12;
        v24 = v4 - v5;
        v25 = 8 * (v4 - v5);
      }

      else
      {
        v25 = 8 * v24;
        v12 -= 32;
        v26 = v13;
      }

      *(a2 + 152) = v26;
      if (v25 + v12 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v145 = "Cannot read parametric.mCapOpeningAngle";
        goto LABEL_235;
      }

      *(a4 + 28) = v12 - 32;
      if (v12 - 32 < 0)
      {
        v132 = v24 & ~(v24 >> 63);
        v133 = *(a4 + 8);
        if ((v132 & 0xFFFFFFFC) != 0 && v133 <= v5)
        {
          v134 = bswap32(*v5);
        }

        else
        {
          v135 = 4;
          v136 = v5;
          v134 = v13;
          do
          {
            v137 = v134 << 8;
            *(a4 + 24) = v137;
            v138 = 255;
            if (v136 < v4 && v136 >= v133)
            {
              v138 = *v136;
            }

            v134 = v138 | v137;
            *(a4 + 24) = v134;
            v136 = (v136 + 1);
            --v135;
          }

          while (v135);
        }

        *a4 = v5 + 1;
        v13 |= v134 >> v12;
        v139 = v134 << -v12;
        if (!v12)
        {
          v139 = 0;
        }

        *(a4 + 24) = v139;
        *(a4 + 28) = v12;
      }

      *(a2 + 156) = v13;
    }

    else
    {
      v27 = v13 >> 15;
      v28 = v12 - 17;
      *(a4 + 28) = v12 - 17;
      if (v12 - 17 < 0)
      {
        v32 = *(a4 + 8);
        if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v32 <= v5)
        {
          v13 = bswap32(*v5);
        }

        else
        {
          v38 = 4;
          v39 = v5;
          do
          {
            v40 = v13 << 8;
            *(a4 + 24) = v40;
            v41 = 255;
            if (v39 < v4 && v39 >= v32)
            {
              v41 = *v39;
            }

            v13 = v41 | v40;
            *(a4 + 24) = v13;
            v39 = (v39 + 1);
            --v38;
          }

          while (v38);
        }

        v43 = v12 + 15;
        v42 = v12 == -15;
        *(a4 + 28) = v12 + 15;
        *a4 = ++v5;
        v27 |= v13 >> (v12 + 15);
        if (v12 == -15)
        {
          v29 = 0;
        }

        else
        {
          v29 = v13 << (17 - v12);
        }

        if (v42)
        {
          v28 = 0;
        }

        else
        {
          v28 = v43;
        }
      }

      else
      {
        v29 = v13 << 17;
      }

      *(a4 + 24) = v29;
      v44 = 8 * v27 + 8;
      v45 = v44 - v28;
      if (v44 > v28)
      {
        *(a4 + 24) = 0;
        v29 = 0;
        v28 = 0;
        if (v45 >= 0x20)
        {
          v5 = (v5 + ((v45 >> 3) & 0x1FFFFFFC));
          *a4 = v5;
          v44 = v45 & 0x1F;
        }

        else
        {
          v44 = v45;
        }
      }

      if ((v44 - 33) >= 0xFFFFFFE0)
      {
        v46 = v28 - v44;
        *(a4 + 28) = v28 - v44;
        if (v28 - v44 < 0)
        {
          v48 = *(a4 + 8);
          if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v48 <= v5)
          {
            v29 = bswap32(*v5);
          }

          else
          {
            v140 = 4;
            v141 = v5;
            do
            {
              v142 = v29 << 8;
              *(a4 + 24) = v142;
              v143 = 255;
              if (v141 < v4 && v141 >= v48)
              {
                v143 = *v141;
              }

              v29 = v143 | v142;
              *(a4 + 24) = v29;
              v141 = (v141 + 1);
              --v140;
            }

            while (v140);
          }

          *(a4 + 28) = v46 + 32;
          *a4 = v5 + 1;
          if (v46 == -32)
          {
            v47 = 0;
          }

          else
          {
            v47 = v29 << -v46;
          }
        }

        else
        {
          v47 = v29 << v44;
        }

        *(a4 + 24) = v47;
      }
    }
  }

  else if (v11)
  {
    v22 = v13 >> 14;
    *(a4 + 28) = v12 - 18;
    if (v12 - 18 < 0)
    {
      v33 = *(a4 + 8);
      if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v33 <= v5)
      {
        v13 = bswap32(*v5);
      }

      else
      {
        v49 = 4;
        v50 = v5;
        do
        {
          v51 = v13 << 8;
          *(a4 + 24) = v51;
          v52 = 255;
          if (v50 < v4 && v50 >= v33)
          {
            v52 = *v50;
          }

          v13 = v52 | v51;
          *(a4 + 24) = v13;
          v50 = (v50 + 1);
          --v49;
        }

        while (v49);
      }

      v53 = v13 << (18 - v12);
      v54 = v12 + 14;
      *(a4 + 28) = v54;
      *a4 = v5 + 1;
      v22 |= v13 >> v54;
      v23 = v54 ? v53 : 0;
    }

    else
    {
      v23 = v13 << 18;
    }

    *(a4 + 24) = v23;
    v55 = v22 + 1;
    *(a2 + 4) = v55;
    if (a3)
    {
      std::vector<int>::resize((a2 + 8), v22 + 1);
      std::vector<int>::resize((a2 + 32), v55);
      std::vector<int>::resize((a2 + 56), v55);
    }

    if (v55)
    {
      v56 = 0;
      v58 = *(a4 + 24);
      v57 = *(a4 + 28);
      v60 = *(a4 + 8);
      v59 = *(a4 + 16);
      v61 = *a4;
      v62 = *(a2 + 8);
      v63 = *(a2 + 32);
      v64 = *(a2 + 56);
      while (1)
      {
        if (v57 + 8 * (v59 - v61) <= 17)
        {
          goto LABEL_228;
        }

        v65 = v58 >> 14;
        *(a4 + 28) = v57 - 18;
        if (v57 - 18 < 0)
        {
          if (((v59 - v61) & ~((v59 - v61) >> 63) & 0xFFFFFFFC) != 0 && v60 <= v61)
          {
            v58 = bswap32(*v61);
          }

          else
          {
            v66 = 4;
            v67 = v61;
            do
            {
              v68 = v58 << 8;
              *(a4 + 24) = v68;
              v69 = 255;
              if (v67 < v59 && v67 >= v60)
              {
                v69 = *v67;
              }

              v58 = v69 | v68;
              *(a4 + 24) = v58;
              v67 = (v67 + 1);
              --v66;
            }

            while (v66);
          }

          v70 = v58 << (18 - v57);
          v57 += 14;
          *(a4 + 28) = v57;
          *a4 = ++v61;
          v65 |= v58 >> v57;
          if (v57)
          {
            v58 = v70;
          }

          else
          {
            v58 = 0;
          }

          if (!v57)
          {
            v57 = 0;
          }
        }

        else
        {
          v58 <<= 18;
          v57 -= 18;
        }

        *(a4 + 24) = v58;
        *(v62 + 4 * v56) = v65 + 1;
        v71 = v59 - v61;
        if (v57 + 8 * (v59 - v61) <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v145 = "Cannot read parametric.mPattern[sb]";
          goto LABEL_235;
        }

        *(a4 + 28) = v57 - 32;
        if (v57 - 32 < 0)
        {
          if ((v71 & ~(v71 >> 63) & 0xFFFFFFFC) != 0 && v60 <= v61)
          {
            v74 = bswap32(*v61);
          }

          else
          {
            v75 = 4;
            v76 = v61;
            v74 = v58;
            do
            {
              v77 = v74 << 8;
              *(a4 + 24) = v77;
              v78 = 255;
              if (v76 < v59 && v76 >= v60)
              {
                v78 = *v76;
              }

              v74 = v78 | v77;
              *(a4 + 24) = v74;
              v76 = (v76 + 1);
              --v75;
            }

            while (v75);
          }

          *a4 = ++v61;
          v73 = (v74 >> v57) | v58;
          v58 = v74 << -v57;
          if (!v57)
          {
            v58 = 0;
          }

          *(a4 + 24) = v58;
          *(a4 + 28) = v57;
          v71 = v59 - v61;
          v72 = 8 * (v59 - v61);
        }

        else
        {
          v72 = 8 * v71;
          v57 -= 32;
          v73 = v58;
        }

        *(v63 + 4 * v56) = v73;
        if (v72 + v57 <= 31)
        {
          break;
        }

        *(a4 + 28) = v57 - 32;
        if (v57 - 32 < 0)
        {
          if ((v71 & ~(v71 >> 63) & 0xFFFFFFFC) != 0 && v60 <= v61)
          {
            v80 = bswap32(*v61);
          }

          else
          {
            v81 = 4;
            v82 = v61;
            v80 = v58;
            do
            {
              v83 = v80 << 8;
              *(a4 + 24) = v83;
              v84 = 255;
              if (v82 < v59 && v82 >= v60)
              {
                v84 = *v82;
              }

              v80 = v84 | v83;
              *(a4 + 24) = v80;
              v82 = (v82 + 1);
              --v81;
            }

            while (v81);
          }

          *a4 = ++v61;
          v79 = (v80 >> v57) | v58;
          v58 = v80 << -v57;
          if (!v57)
          {
            v58 = 0;
          }

          *(a4 + 24) = v58;
          *(a4 + 28) = v57;
        }

        else
        {
          v57 -= 32;
          v79 = v58;
        }

        *(v64 + 4 * v56++) = v79;
        if (v56 == v55)
        {
          return;
        }
      }

      exception = __cxa_allocate_exception(8uLL);
      v145 = "Cannot read parametric.mSharpness[sb]";
      goto LABEL_235;
    }
  }
}

void APAC::MetadataBitStreamParser::parseHOADirectivityModel(uint64_t a1, uint64_t a2, int a3, unsigned __int8 **a4)
{
  v8 = *(a4 + 6);
  v7 = *(a4 + 7);
  v9 = v8 >> 22;
  *(a4 + 7) = v7 - 10;
  if (v7 - 10 < 0)
  {
    v12 = a4[1];
    v11 = a4[2];
    v13 = *a4;
    if (((v11 - *a4) & ~((v11 - *a4) >> 63) & 0xFFFFFFFC) == 0 || v12 > v13)
    {
      v15 = 4;
      v16 = *a4;
      do
      {
        v17 = v8 << 8;
        *(a4 + 6) = v17;
        v18 = 255;
        if (v16 < v11 && v16 >= v12)
        {
          v18 = *v16;
        }

        v8 = v18 | v17;
        *(a4 + 6) = v8;
        ++v16;
        --v15;
      }

      while (v15);
    }

    else
    {
      v8 = bswap32(*v13);
    }

    v19 = v8 << (10 - v7);
    v20 = v7 + 22;
    *(a4 + 7) = v20;
    *a4 = (v13 + 1);
    v9 |= v8 >> v20;
    if (v20)
    {
      v10 = v19;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = v8 << 10;
  }

  *(a4 + 6) = v10;
  v21 = v9 + 1;
  *a2 = v9 + 1;
  v22 = *(a2 + 8);
  v23 = *(a2 + 16);
  v24 = (v23 - v22) >> 1;
  if (v21 <= v24)
  {
    if (v21 >= v24)
    {
      goto LABEL_29;
    }

    v30 = v22 + 2 * v21;
  }

  else
  {
    v25 = v21 - v24;
    v26 = *(a2 + 24);
    if (v25 > (v26 - v23) >> 1)
    {
      v27 = v26 - v22;
      if (v27 <= v21)
      {
        v28 = v21;
      }

      else
      {
        v28 = v27;
      }

      if (v27 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v29 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v28;
      }

      std::allocator<APAC::UI13>::allocate_at_least[abi:ne200100](v29);
    }

    bzero(*(a2 + 16), 2 * v25);
    v30 = v23 + 2 * v25;
  }

  *(a2 + 16) = v30;
LABEL_29:
  if (!v21)
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_56;
    }

    v45 = 0;
    goto LABEL_55;
  }

  v31 = 0;
  v33 = *(a4 + 6);
  v32 = *(a4 + 7);
  v35 = a4[1];
  v34 = a4[2];
  v36 = *a4;
  v37 = *(a2 + 8);
  do
  {
    v38 = v33 >> 19;
    *(a4 + 7) = v32 - 13;
    if (v32 - 13 < 0)
    {
      if (((v34 - v36) & ~((v34 - v36) >> 63) & 0xFFFFFFFC) == 0 || v35 > v36)
      {
        v40 = 4;
        v41 = v36;
        do
        {
          v42 = v33 << 8;
          *(a4 + 6) = v42;
          v43 = 255;
          if (v41 < v34 && v41 >= v35)
          {
            v43 = *v41;
          }

          v33 = v43 | v42;
          *(a4 + 6) = v33;
          v41 = (v41 + 1);
          --v40;
        }

        while (v40);
      }

      else
      {
        v33 = bswap32(*v36);
      }

      v44 = v33 << (13 - v32);
      v32 += 19;
      *(a4 + 7) = v32;
      *a4 = ++v36;
      v38 |= v33 >> v32;
      if (v32)
      {
        v33 = v44;
      }

      else
      {
        v33 = 0;
      }

      if (!v32)
      {
        v32 = 0;
      }
    }

    else
    {
      v33 <<= 13;
      v32 -= 13;
    }

    *(a4 + 6) = v33;
    v37[v31++] = v38 + 1;
  }

  while (v31 != v21);
  if (a3)
  {
    LODWORD(v45) = 0;
    do
    {
      v46 = *v37++;
      v45 = (v45 + v46);
      --v21;
    }

    while (v21);
LABEL_55:
    std::vector<int>::resize((a2 + 32), v45);
  }

LABEL_56:
  v47 = *(a2 + 32);
  v48 = *(a2 + 40);
  v49 = v48 - v47;
  if (v48 != v47)
  {
    v50 = 0;
    v51 = 0;
    v52 = v49 >> 2;
    v54 = *(a4 + 6);
    v53 = *(a4 + 7);
    v56 = a4[1];
    v55 = a4[2];
    v57 = *a4;
    do
    {
      if (v53 + 8 * (v55 - v57) <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = "Cannot read hoaModel.mCoeffs[n]";
        __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
      }

      *(a4 + 7) = v53 - 32;
      if (v53 - 32 < 0)
      {
        if (((v55 - v57) & ~((v55 - v57) >> 63) & 0xFFFFFFFC) != 0 && v56 <= v57)
        {
          v59 = bswap32(*v57);
        }

        else
        {
          v60 = 4;
          v61 = v57;
          v59 = v54;
          do
          {
            v62 = v59 << 8;
            *(a4 + 6) = v62;
            v63 = 255;
            if (v61 < v55 && v61 >= v56)
            {
              v63 = *v61;
            }

            v59 = v63 | v62;
            *(a4 + 6) = v59;
            v61 = (v61 + 1);
            --v60;
          }

          while (v60);
        }

        *a4 = ++v57;
        v58 = (v59 >> v53) | v54;
        v54 = v59 << -v53;
        if (!v53)
        {
          v54 = 0;
        }

        *(a4 + 6) = v54;
        *(a4 + 7) = v53;
      }

      else
      {
        v53 -= 32;
        v58 = v54;
      }

      *(v47 + 4 * v50) = v58;
      v50 = ++v51;
    }

    while (v52 > v51);
  }
}

void APAC::MetadataBitStreamParser::parseParametricReverb(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v156 = "Cannot read reverbParams.mPreDelay.mHasData";
    goto LABEL_301;
  }

  v7 = *(a3 + 24);
  v8 = v7 >> 31;
  v9 = v6 - 1;
  *(a3 + 28) = v6 - 1;
  if (v6 - 1 < 0)
  {
    v11 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v11 > v4)
    {
      v13 = 4;
      v14 = v4;
      do
      {
        v15 = v7 << 8;
        *(a3 + 24) = v15;
        v16 = 255;
        if (v14 < v3 && v14 >= v11)
        {
          v16 = *v14;
        }

        v7 = v16 | v15;
        *(a3 + 24) = v7;
        v14 = (v14 + 1);
        --v13;
      }

      while (v13);
    }

    else
    {
      v7 = bswap32(*v4);
    }

    v18 = v6 + 31;
    v17 = v6 == -31;
    *(a3 + 28) = v6 + 31;
    *a3 = ++v4;
    v8 |= v7 >> (v6 + 31);
    if (v6 == -31)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7 << (1 - v6);
    }

    if (v17)
    {
      v9 = 0;
    }

    else
    {
      v9 = v18;
    }
  }

  else
  {
    v10 = 2 * v7;
  }

  *(a3 + 24) = v10;
  *(a2 + 4) = v8 != 0;
  if (v8)
  {
    if (v9 + 8 * (v3 - v4) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v156 = "Cannot read reverbParams.mPreDelay.mValue";
      goto LABEL_301;
    }

    *(a3 + 28) = v9 - 32;
    if (v9 - 32 < 0)
    {
      v20 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v20 <= v4)
      {
        v21 = bswap32(*v4);
      }

      else
      {
        v22 = 4;
        v23 = v4;
        v21 = v10;
        do
        {
          v24 = v21 << 8;
          *(a3 + 24) = v24;
          v25 = 255;
          if (v23 < v3 && v23 >= v20)
          {
            v25 = *v23;
          }

          v21 = v25 | v24;
          *(a3 + 24) = v21;
          v23 = (v23 + 1);
          --v22;
        }

        while (v22);
      }

      *a3 = ++v4;
      v19 = (v21 >> v9) | v10;
      v10 = v21 << -v9;
      if (!v9)
      {
        v10 = 0;
      }

      *(a3 + 24) = v10;
      *(a3 + 28) = v9;
    }

    else
    {
      v9 -= 32;
      v19 = v10;
    }

    *a2 = v19;
  }

  if (v9 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v156 = "Cannot read reverbParams.mRT60.mHasData";
    goto LABEL_301;
  }

  v26 = v10 >> 31;
  v27 = v9 - 1;
  *(a3 + 28) = v9 - 1;
  if (v9 - 1 < 0)
  {
    v29 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v29 <= v4)
    {
      v10 = bswap32(*v4);
    }

    else
    {
      v30 = 4;
      v31 = v4;
      do
      {
        v32 = v10 << 8;
        *(a3 + 24) = v32;
        v33 = 255;
        if (v31 < v3 && v31 >= v29)
        {
          v33 = *v31;
        }

        v10 = v33 | v32;
        *(a3 + 24) = v10;
        v31 = (v31 + 1);
        --v30;
      }

      while (v30);
    }

    v34 = v10 << (1 - v9);
    v35 = v9 + 31;
    *(a3 + 28) = v35;
    *a3 = ++v4;
    v26 |= v10 >> v35;
    if (v35)
    {
      v28 = v34;
    }

    else
    {
      v28 = 0;
    }

    if (v35)
    {
      v27 = v35;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v28 = 2 * v10;
  }

  *(a3 + 24) = v28;
  *(a2 + 12) = v26 != 0;
  if (v26)
  {
    if (v27 + 8 * (v3 - v4) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v156 = "Cannot read reverbParams.mRT60.mValue";
      goto LABEL_301;
    }

    *(a3 + 28) = v27 - 32;
    if (v27 - 32 < 0)
    {
      v37 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v37 <= v4)
      {
        v38 = bswap32(*v4);
      }

      else
      {
        v39 = 4;
        v40 = v4;
        v38 = v28;
        do
        {
          v41 = v38 << 8;
          *(a3 + 24) = v41;
          v42 = 255;
          if (v40 < v3 && v40 >= v37)
          {
            v42 = *v40;
          }

          v38 = v42 | v41;
          *(a3 + 24) = v38;
          v40 = (v40 + 1);
          --v39;
        }

        while (v39);
      }

      *a3 = ++v4;
      v36 = (v38 >> v27) | v28;
      v28 = v38 << -v27;
      if (!v27)
      {
        v28 = 0;
      }

      *(a3 + 24) = v28;
      *(a3 + 28) = v27;
    }

    else
    {
      v27 -= 32;
      v36 = v28;
    }

    *(a2 + 8) = v36;
  }

  if (v27 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v156 = "Cannot read reverbParams.mWetDryMix.mHasData";
    goto LABEL_301;
  }

  v43 = v28 >> 31;
  v44 = v27 - 1;
  *(a3 + 28) = v27 - 1;
  if (v27 - 1 < 0)
  {
    v46 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v46 <= v4)
    {
      v28 = bswap32(*v4);
    }

    else
    {
      v47 = 4;
      v48 = v4;
      do
      {
        v49 = v28 << 8;
        *(a3 + 24) = v49;
        v50 = 255;
        if (v48 < v3 && v48 >= v46)
        {
          v50 = *v48;
        }

        v28 = v50 | v49;
        *(a3 + 24) = v28;
        v48 = (v48 + 1);
        --v47;
      }

      while (v47);
    }

    v51 = v28 << (1 - v27);
    v52 = v27 + 31;
    *(a3 + 28) = v52;
    *a3 = ++v4;
    v43 |= v28 >> v52;
    if (v52)
    {
      v45 = v51;
    }

    else
    {
      v45 = 0;
    }

    if (v52)
    {
      v44 = v52;
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v45 = 2 * v28;
  }

  *(a3 + 24) = v45;
  *(a2 + 20) = v43 != 0;
  if (v43)
  {
    if (v44 + 8 * (v3 - v4) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v156 = "Cannot read reverbParams.mWetDryMix.mValue";
      goto LABEL_301;
    }

    *(a3 + 28) = v44 - 32;
    if (v44 - 32 < 0)
    {
      v54 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v54 <= v4)
      {
        v55 = bswap32(*v4);
      }

      else
      {
        v56 = 4;
        v57 = v4;
        v55 = v45;
        do
        {
          v58 = v55 << 8;
          *(a3 + 24) = v58;
          v59 = 255;
          if (v57 < v3 && v57 >= v54)
          {
            v59 = *v57;
          }

          v55 = v59 | v58;
          *(a3 + 24) = v55;
          v57 = (v57 + 1);
          --v56;
        }

        while (v56);
      }

      *a3 = ++v4;
      v53 = (v55 >> v44) | v45;
      v45 = v55 << -v44;
      if (!v44)
      {
        v45 = 0;
      }

      *(a3 + 24) = v45;
      *(a3 + 28) = v44;
    }

    else
    {
      v44 -= 32;
      v53 = v45;
    }

    *(a2 + 16) = v53;
  }

  if (v44 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v156 = "Cannot read reverbParams.mReverbWidth.mHasData";
    goto LABEL_301;
  }

  v60 = v45 >> 31;
  v61 = v44 - 1;
  *(a3 + 28) = v44 - 1;
  if (v44 - 1 < 0)
  {
    v63 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v63 <= v4)
    {
      v45 = bswap32(*v4);
    }

    else
    {
      v64 = 4;
      v65 = v4;
      do
      {
        v66 = v45 << 8;
        *(a3 + 24) = v66;
        v67 = 255;
        if (v65 < v3 && v65 >= v63)
        {
          v67 = *v65;
        }

        v45 = v67 | v66;
        *(a3 + 24) = v45;
        v65 = (v65 + 1);
        --v64;
      }

      while (v64);
    }

    v68 = v45 << (1 - v44);
    v69 = v44 + 31;
    *(a3 + 28) = v69;
    *a3 = ++v4;
    v60 |= v45 >> v69;
    if (v69)
    {
      v62 = v68;
    }

    else
    {
      v62 = 0;
    }

    if (v69)
    {
      v61 = v69;
    }

    else
    {
      v61 = 0;
    }
  }

  else
  {
    v62 = 2 * v45;
  }

  *(a3 + 24) = v62;
  *(a2 + 28) = v60 != 0;
  if (v60)
  {
    if (v61 + 8 * (v3 - v4) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v156 = "Cannot read reverbParams.mReverbWidth.mValue";
      goto LABEL_301;
    }

    *(a3 + 28) = v61 - 32;
    if (v61 - 32 < 0)
    {
      v71 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v71 <= v4)
      {
        v72 = bswap32(*v4);
      }

      else
      {
        v73 = 4;
        v74 = v4;
        v72 = v62;
        do
        {
          v75 = v72 << 8;
          *(a3 + 24) = v75;
          v76 = 255;
          if (v74 < v3 && v74 >= v71)
          {
            v76 = *v74;
          }

          v72 = v76 | v75;
          *(a3 + 24) = v72;
          v74 = (v74 + 1);
          --v73;
        }

        while (v73);
      }

      *a3 = ++v4;
      v70 = (v72 >> v61) | v62;
      v62 = v72 << -v61;
      if (!v61)
      {
        v62 = 0;
      }

      *(a3 + 24) = v62;
      *(a3 + 28) = v61;
    }

    else
    {
      v61 -= 32;
      v70 = v62;
    }

    *(a2 + 24) = v70;
  }

  if (v61 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v156 = "Cannot read reverbParams.mHFDampingCutoffFreq.mHasData";
    goto LABEL_301;
  }

  v77 = v62 >> 31;
  v78 = v61 - 1;
  *(a3 + 28) = v61 - 1;
  if (v61 - 1 < 0)
  {
    v80 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v80 <= v4)
    {
      v62 = bswap32(*v4);
    }

    else
    {
      v81 = 4;
      v82 = v4;
      do
      {
        v83 = v62 << 8;
        *(a3 + 24) = v83;
        v84 = 255;
        if (v82 < v3 && v82 >= v80)
        {
          v84 = *v82;
        }

        v62 = v84 | v83;
        *(a3 + 24) = v62;
        v82 = (v82 + 1);
        --v81;
      }

      while (v81);
    }

    v86 = v61 + 31;
    v85 = v61 == -31;
    *(a3 + 28) = v61 + 31;
    *a3 = ++v4;
    v77 |= v62 >> (v61 + 31);
    if (v61 == -31)
    {
      v79 = 0;
    }

    else
    {
      v79 = v62 << (1 - v61);
    }

    if (v85)
    {
      v78 = 0;
    }

    else
    {
      v78 = v86;
    }
  }

  else
  {
    v79 = 2 * v62;
  }

  *(a3 + 24) = v79;
  *(a2 + 36) = v77 != 0;
  if (v77)
  {
    if (v78 + 8 * (v3 - v4) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v156 = "Cannot read reverbParams.mHFDampingCutoffFreq.mValue";
      goto LABEL_301;
    }

    *(a3 + 28) = v78 - 32;
    if (v78 - 32 < 0)
    {
      v88 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v88 <= v4)
      {
        v89 = bswap32(*v4);
      }

      else
      {
        v90 = 4;
        v91 = v4;
        v89 = v79;
        do
        {
          v92 = v89 << 8;
          *(a3 + 24) = v92;
          v93 = 255;
          if (v91 < v3 && v91 >= v88)
          {
            v93 = *v91;
          }

          v89 = v93 | v92;
          *(a3 + 24) = v89;
          v91 = (v91 + 1);
          --v90;
        }

        while (v90);
      }

      *a3 = ++v4;
      v87 = (v89 >> v78) | v79;
      v79 = v89 << -v78;
      if (!v78)
      {
        v79 = 0;
      }

      *(a3 + 24) = v79;
      *(a3 + 28) = v78;
    }

    else
    {
      v78 -= 32;
      v87 = v79;
    }

    *(a2 + 32) = v87;
  }

  if (v78 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v156 = "Cannot read reverbParams.mEarlyReflectionOnly";
    goto LABEL_301;
  }

  v94 = v79 >> 31;
  v95 = v78 - 1;
  *(a3 + 28) = v78 - 1;
  if (v78 - 1 < 0)
  {
    v97 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v97 <= v4)
    {
      v79 = bswap32(*v4);
    }

    else
    {
      v98 = 4;
      v99 = v4;
      do
      {
        v100 = v79 << 8;
        *(a3 + 24) = v100;
        v101 = 255;
        if (v99 < v3 && v99 >= v97)
        {
          v101 = *v99;
        }

        v79 = v101 | v100;
        *(a3 + 24) = v79;
        v99 = (v99 + 1);
        --v98;
      }

      while (v98);
    }

    v102 = v79 << (1 - v78);
    v103 = v78 + 31;
    *(a3 + 28) = v103;
    *a3 = ++v4;
    v94 |= v79 >> v103;
    if (v103)
    {
      v96 = v102;
    }

    else
    {
      v96 = 0;
    }

    if (v103)
    {
      v95 = v103;
    }

    else
    {
      v95 = 0;
    }
  }

  else
  {
    v96 = 2 * v79;
  }

  *(a3 + 24) = v96;
  *(a2 + 40) = v94 != 0;
  if (v95 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v156 = "Cannot read reverbParams.mEarlyReflectionLevel.mHasData";
    goto LABEL_301;
  }

  v104 = v96 >> 31;
  v105 = v95 - 1;
  *(a3 + 28) = v95 - 1;
  if (v95 - 1 < 0)
  {
    v107 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v107 <= v4)
    {
      v96 = bswap32(*v4);
    }

    else
    {
      v108 = 4;
      v109 = v4;
      do
      {
        v110 = v96 << 8;
        *(a3 + 24) = v110;
        v111 = 255;
        if (v109 < v3 && v109 >= v107)
        {
          v111 = *v109;
        }

        v96 = v111 | v110;
        *(a3 + 24) = v96;
        v109 = (v109 + 1);
        --v108;
      }

      while (v108);
    }

    v113 = v95 + 31;
    v112 = v95 == -31;
    *(a3 + 28) = v95 + 31;
    *a3 = ++v4;
    v104 |= v96 >> (v95 + 31);
    if (v95 == -31)
    {
      v106 = 0;
    }

    else
    {
      v106 = v96 << (1 - v95);
    }

    if (v112)
    {
      v105 = 0;
    }

    else
    {
      v105 = v113;
    }
  }

  else
  {
    v106 = 2 * v96;
  }

  *(a3 + 24) = v106;
  *(a2 + 48) = v104 != 0;
  if (v104)
  {
    if (v105 + 8 * (v3 - v4) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v156 = "Cannot read reverbParams.mEarlyReflectionLevel.mValue";
      goto LABEL_301;
    }

    *(a3 + 28) = v105 - 32;
    if (v105 - 32 < 0)
    {
      v115 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v115 <= v4)
      {
        v116 = bswap32(*v4);
      }

      else
      {
        v117 = 4;
        v118 = v4;
        v116 = v106;
        do
        {
          v119 = v116 << 8;
          *(a3 + 24) = v119;
          v120 = 255;
          if (v118 < v3 && v118 >= v115)
          {
            v120 = *v118;
          }

          v116 = v120 | v119;
          *(a3 + 24) = v116;
          v118 = (v118 + 1);
          --v117;
        }

        while (v117);
      }

      *a3 = ++v4;
      v114 = (v116 >> v105) | v106;
      v106 = v116 << -v105;
      if (!v105)
      {
        v106 = 0;
      }

      *(a3 + 24) = v106;
      *(a3 + 28) = v105;
    }

    else
    {
      v105 -= 32;
      v114 = v106;
    }

    *(a2 + 44) = v114;
  }

  if (v105 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v156 = "Cannot read reverbParams.mEarlyReflectionTime.mHasData";
    goto LABEL_301;
  }

  v121 = v106 >> 31;
  v122 = v105 - 1;
  *(a3 + 28) = v105 - 1;
  if (v105 - 1 < 0)
  {
    v124 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v124 <= v4)
    {
      v106 = bswap32(*v4);
    }

    else
    {
      v125 = 4;
      v126 = v4;
      do
      {
        v127 = v106 << 8;
        *(a3 + 24) = v127;
        v128 = 255;
        if (v126 < v3 && v126 >= v124)
        {
          v128 = *v126;
        }

        v106 = v128 | v127;
        *(a3 + 24) = v106;
        v126 = (v126 + 1);
        --v125;
      }

      while (v125);
    }

    v130 = v105 + 31;
    v129 = v105 == -31;
    *(a3 + 28) = v105 + 31;
    *a3 = ++v4;
    v121 |= v106 >> (v105 + 31);
    if (v105 == -31)
    {
      v123 = 0;
    }

    else
    {
      v123 = v106 << (1 - v105);
    }

    if (v129)
    {
      v122 = 0;
    }

    else
    {
      v122 = v130;
    }
  }

  else
  {
    v123 = 2 * v106;
  }

  *(a3 + 24) = v123;
  *(a2 + 56) = v121 != 0;
  if (v121)
  {
    if (v122 + 8 * (v3 - v4) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v156 = "Cannot read reverbParams.mEarlyReflectionTime.mValue";
      goto LABEL_301;
    }

    *(a3 + 28) = v122 - 32;
    if (v122 - 32 < 0)
    {
      v132 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v132 <= v4)
      {
        v133 = bswap32(*v4);
      }

      else
      {
        v134 = 4;
        v135 = v4;
        v133 = v123;
        do
        {
          v136 = v133 << 8;
          *(a3 + 24) = v136;
          v137 = 255;
          if (v135 < v3 && v135 >= v132)
          {
            v137 = *v135;
          }

          v133 = v137 | v136;
          *(a3 + 24) = v133;
          v135 = (v135 + 1);
          --v134;
        }

        while (v134);
      }

      *a3 = ++v4;
      v131 = (v133 >> v122) | v123;
      v123 = v133 << -v122;
      if (!v122)
      {
        v123 = 0;
      }

      *(a3 + 24) = v123;
      *(a3 + 28) = v122;
    }

    else
    {
      v122 -= 32;
      v131 = v123;
    }

    *(a2 + 52) = v131;
  }

  if (v122 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v156 = "Cannot read reverbParams.mLateReverbLevel.mHasData";
    goto LABEL_301;
  }

  v138 = v123 >> 31;
  v139 = v122 - 1;
  *(a3 + 28) = v122 - 1;
  if (v122 - 1 < 0)
  {
    v141 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v141 <= v4)
    {
      v123 = bswap32(*v4);
    }

    else
    {
      v142 = 4;
      v143 = v4;
      do
      {
        v144 = v123 << 8;
        *(a3 + 24) = v144;
        v145 = 255;
        if (v143 < v3 && v143 >= v141)
        {
          v145 = *v143;
        }

        v123 = v145 | v144;
        *(a3 + 24) = v123;
        v143 = (v143 + 1);
        --v142;
      }

      while (v142);
    }

    v146 = v123 << (1 - v122);
    v147 = v122 + 31;
    *(a3 + 28) = v147;
    *a3 = ++v4;
    v138 |= v123 >> v147;
    if (v147)
    {
      v140 = v146;
    }

    else
    {
      v140 = 0;
    }

    if (v147)
    {
      v139 = v147;
    }

    else
    {
      v139 = 0;
    }
  }

  else
  {
    v140 = 2 * v123;
  }

  *(a3 + 24) = v140;
  *(a2 + 64) = v138 != 0;
  if (v138)
  {
    if (v139 + 8 * (v3 - v4) > 31)
    {
      *(a3 + 28) = v139 - 32;
      if (v139 - 32 < 0)
      {
        v148 = *(a3 + 8);
        if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v148 <= v4)
        {
          v149 = bswap32(*v4);
        }

        else
        {
          v150 = 4;
          v151 = v4;
          v149 = v140;
          do
          {
            v152 = v149 << 8;
            *(a3 + 24) = v152;
            v153 = 255;
            if (v151 < v3 && v151 >= v148)
            {
              v153 = *v151;
            }

            v149 = v153 | v152;
            *(a3 + 24) = v149;
            v151 = (v151 + 1);
            --v150;
          }

          while (v150);
        }

        *a3 = v4 + 1;
        v140 |= v149 >> v139;
        v154 = v149 << -v139;
        if (!v139)
        {
          v154 = 0;
        }

        *(a3 + 24) = v154;
        *(a3 + 28) = v139;
      }

      *(a2 + 60) = v140;
      return;
    }

    exception = __cxa_allocate_exception(8uLL);
    v156 = "Cannot read reverbParams.mLateReverbLevel.mValue";
LABEL_301:
    *exception = v156;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }
}

{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v146 = "Cannot read pR.hasPreDelay";
    goto LABEL_285;
  }

  v7 = *(a3 + 24);
  v8 = v7 >> 31;
  v9 = v6 - 1;
  *(a3 + 28) = v6 - 1;
  if (v6 - 1 < 0)
  {
    v11 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v11 > v4)
    {
      v13 = 4;
      v14 = v4;
      do
      {
        v15 = v7 << 8;
        *(a3 + 24) = v15;
        v16 = 255;
        if (v14 < v3 && v14 >= v11)
        {
          v16 = *v14;
        }

        v7 = v16 | v15;
        *(a3 + 24) = v7;
        v14 = (v14 + 1);
        --v13;
      }

      while (v13);
    }

    else
    {
      v7 = bswap32(*v4);
    }

    v18 = v6 + 31;
    v17 = v6 == -31;
    *(a3 + 28) = v6 + 31;
    *a3 = ++v4;
    v8 |= v7 >> (v6 + 31);
    if (v6 == -31)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7 << (1 - v6);
    }

    if (v17)
    {
      v9 = 0;
    }

    else
    {
      v9 = v18;
    }
  }

  else
  {
    v10 = 2 * v7;
  }

  *(a3 + 24) = v10;
  *a2 = v8 != 0;
  if (v8)
  {
    if (v9 + 8 * (v3 - v4) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v146 = "Cannot read pR.preDelayMSec";
      goto LABEL_285;
    }

    *(a3 + 28) = v9 - 32;
    if (v9 - 32 < 0)
    {
      v20 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v20 <= v4)
      {
        v21 = bswap32(*v4);
      }

      else
      {
        v22 = 4;
        v23 = v4;
        v21 = v10;
        do
        {
          v24 = v21 << 8;
          *(a3 + 24) = v24;
          v25 = 255;
          if (v23 < v3 && v23 >= v20)
          {
            v25 = *v23;
          }

          v21 = v25 | v24;
          *(a3 + 24) = v21;
          v23 = (v23 + 1);
          --v22;
        }

        while (v22);
      }

      *a3 = ++v4;
      v19 = (v21 >> v9) | v10;
      v10 = v21 << -v9;
      if (!v9)
      {
        v10 = 0;
      }

      *(a3 + 24) = v10;
      *(a3 + 28) = v9;
    }

    else
    {
      v9 -= 32;
      v19 = v10;
    }

    *(a2 + 8) = v19;
  }

  if (v9 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v146 = "Cannot read pR.hasEarlyReflectionLevel";
    goto LABEL_285;
  }

  v26 = v10 >> 31;
  v27 = v9 - 1;
  *(a3 + 28) = v9 - 1;
  if (v9 - 1 < 0)
  {
    v29 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v29 <= v4)
    {
      v10 = bswap32(*v4);
    }

    else
    {
      v30 = 4;
      v31 = v4;
      do
      {
        v32 = v10 << 8;
        *(a3 + 24) = v32;
        v33 = 255;
        if (v31 < v3 && v31 >= v29)
        {
          v33 = *v31;
        }

        v10 = v33 | v32;
        *(a3 + 24) = v10;
        v31 = (v31 + 1);
        --v30;
      }

      while (v30);
    }

    v34 = v10 << (1 - v9);
    v35 = v9 + 31;
    *(a3 + 28) = v35;
    *a3 = ++v4;
    v26 |= v10 >> v35;
    if (v35)
    {
      v28 = v34;
    }

    else
    {
      v28 = 0;
    }

    if (v35)
    {
      v27 = v35;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v28 = 2 * v10;
  }

  *(a3 + 24) = v28;
  *(a2 + 1) = v26 != 0;
  if (v26)
  {
    if (v27 + 8 * (v3 - v4) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v146 = "Cannot read pR.earlyReflectionLevel";
      goto LABEL_285;
    }

    *(a3 + 28) = v27 - 32;
    if (v27 - 32 < 0)
    {
      v37 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v37 <= v4)
      {
        v38 = bswap32(*v4);
      }

      else
      {
        v39 = 4;
        v40 = v4;
        v38 = v28;
        do
        {
          v41 = v38 << 8;
          *(a3 + 24) = v41;
          v42 = 255;
          if (v40 < v3 && v40 >= v37)
          {
            v42 = *v40;
          }

          v38 = v42 | v41;
          *(a3 + 24) = v38;
          v40 = (v40 + 1);
          --v39;
        }

        while (v39);
      }

      *a3 = ++v4;
      v36 = (v38 >> v27) | v28;
      v28 = v38 << -v27;
      if (!v27)
      {
        v28 = 0;
      }

      *(a3 + 24) = v28;
      *(a3 + 28) = v27;
    }

    else
    {
      v27 -= 32;
      v36 = v28;
    }

    *(a2 + 12) = v36;
  }

  if (v27 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v146 = "Cannot read pR.hasRT60";
    goto LABEL_285;
  }

  v43 = v28 >> 31;
  v44 = v27 - 1;
  *(a3 + 28) = v27 - 1;
  if (v27 - 1 < 0)
  {
    v46 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v46 <= v4)
    {
      v28 = bswap32(*v4);
    }

    else
    {
      v47 = 4;
      v48 = v4;
      do
      {
        v49 = v28 << 8;
        *(a3 + 24) = v49;
        v50 = 255;
        if (v48 < v3 && v48 >= v46)
        {
          v50 = *v48;
        }

        v28 = v50 | v49;
        *(a3 + 24) = v28;
        v48 = (v48 + 1);
        --v47;
      }

      while (v47);
    }

    v51 = v28 << (1 - v27);
    v52 = v27 + 31;
    *(a3 + 28) = v52;
    *a3 = ++v4;
    v43 |= v28 >> v52;
    if (v52)
    {
      v45 = v51;
    }

    else
    {
      v45 = 0;
    }

    if (v52)
    {
      v44 = v52;
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v45 = 2 * v28;
  }

  *(a3 + 24) = v45;
  *(a2 + 2) = v43 != 0;
  if (v43)
  {
    if (v44 + 8 * (v3 - v4) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v146 = "Cannot read pR.RT60Msec";
      goto LABEL_285;
    }

    *(a3 + 28) = v44 - 32;
    if (v44 - 32 < 0)
    {
      v54 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v54 <= v4)
      {
        v55 = bswap32(*v4);
      }

      else
      {
        v56 = 4;
        v57 = v4;
        v55 = v45;
        do
        {
          v58 = v55 << 8;
          *(a3 + 24) = v58;
          v59 = 255;
          if (v57 < v3 && v57 >= v54)
          {
            v59 = *v57;
          }

          v55 = v59 | v58;
          *(a3 + 24) = v55;
          v57 = (v57 + 1);
          --v56;
        }

        while (v56);
      }

      *a3 = ++v4;
      v53 = (v55 >> v44) | v45;
      v45 = v55 << -v44;
      if (!v44)
      {
        v45 = 0;
      }

      *(a3 + 24) = v45;
      *(a3 + 28) = v44;
    }

    else
    {
      v44 -= 32;
      v53 = v45;
    }

    *(a2 + 16) = v53;
  }

  if (v44 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v146 = "Cannot read pR.hasWetDryMix";
    goto LABEL_285;
  }

  v60 = v45 >> 31;
  v61 = v44 - 1;
  *(a3 + 28) = v44 - 1;
  if (v44 - 1 < 0)
  {
    v63 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v63 <= v4)
    {
      v45 = bswap32(*v4);
    }

    else
    {
      v64 = 4;
      v65 = v4;
      do
      {
        v66 = v45 << 8;
        *(a3 + 24) = v66;
        v67 = 255;
        if (v65 < v3 && v65 >= v63)
        {
          v67 = *v65;
        }

        v45 = v67 | v66;
        *(a3 + 24) = v45;
        v65 = (v65 + 1);
        --v64;
      }

      while (v64);
    }

    v68 = v45 << (1 - v44);
    v69 = v44 + 31;
    *(a3 + 28) = v69;
    *a3 = ++v4;
    v60 |= v45 >> v69;
    if (v69)
    {
      v62 = v68;
    }

    else
    {
      v62 = 0;
    }

    if (v69)
    {
      v61 = v69;
    }

    else
    {
      v61 = 0;
    }
  }

  else
  {
    v62 = 2 * v45;
  }

  *(a3 + 24) = v62;
  *(a2 + 3) = v60 != 0;
  if (v60)
  {
    if (v61 + 8 * (v3 - v4) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v146 = "Cannot read pR.wetDryMix";
      goto LABEL_285;
    }

    *(a3 + 28) = v61 - 32;
    if (v61 - 32 < 0)
    {
      v71 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v71 <= v4)
      {
        v72 = bswap32(*v4);
      }

      else
      {
        v73 = 4;
        v74 = v4;
        v72 = v62;
        do
        {
          v75 = v72 << 8;
          *(a3 + 24) = v75;
          v76 = 255;
          if (v74 < v3 && v74 >= v71)
          {
            v76 = *v74;
          }

          v72 = v76 | v75;
          *(a3 + 24) = v72;
          v74 = (v74 + 1);
          --v73;
        }

        while (v73);
      }

      *a3 = ++v4;
      v70 = (v72 >> v61) | v62;
      v62 = v72 << -v61;
      if (!v61)
      {
        v62 = 0;
      }

      *(a3 + 24) = v62;
      *(a3 + 28) = v61;
    }

    else
    {
      v61 -= 32;
      v70 = v62;
    }

    *(a2 + 20) = v70;
  }

  if (v61 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v146 = "Cannot read pR.hasReverbWidth";
    goto LABEL_285;
  }

  v77 = v62 >> 31;
  v78 = v61 - 1;
  *(a3 + 28) = v61 - 1;
  if (v61 - 1 < 0)
  {
    v80 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v80 <= v4)
    {
      v62 = bswap32(*v4);
    }

    else
    {
      v81 = 4;
      v82 = v4;
      do
      {
        v83 = v62 << 8;
        *(a3 + 24) = v83;
        v84 = 255;
        if (v82 < v3 && v82 >= v80)
        {
          v84 = *v82;
        }

        v62 = v84 | v83;
        *(a3 + 24) = v62;
        v82 = (v82 + 1);
        --v81;
      }

      while (v81);
    }

    v85 = v62 << (1 - v61);
    v86 = v61 + 31;
    *(a3 + 28) = v86;
    *a3 = ++v4;
    v77 |= v62 >> v86;
    if (v86)
    {
      v79 = v85;
    }

    else
    {
      v79 = 0;
    }

    if (v86)
    {
      v78 = v86;
    }

    else
    {
      v78 = 0;
    }
  }

  else
  {
    v79 = 2 * v62;
  }

  *(a3 + 24) = v79;
  *(a2 + 4) = v77 != 0;
  if (v77)
  {
    if (v78 + 8 * (v3 - v4) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v146 = "Cannot read pR.reverbWidth";
      goto LABEL_285;
    }

    *(a3 + 28) = v78 - 32;
    if (v78 - 32 < 0)
    {
      v88 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v88 <= v4)
      {
        v89 = bswap32(*v4);
      }

      else
      {
        v90 = 4;
        v91 = v4;
        v89 = v79;
        do
        {
          v92 = v89 << 8;
          *(a3 + 24) = v92;
          v93 = 255;
          if (v91 < v3 && v91 >= v88)
          {
            v93 = *v91;
          }

          v89 = v93 | v92;
          *(a3 + 24) = v89;
          v91 = (v91 + 1);
          --v90;
        }

        while (v90);
      }

      *a3 = ++v4;
      v87 = (v89 >> v78) | v79;
      v79 = v89 << -v78;
      if (!v78)
      {
        v79 = 0;
      }

      *(a3 + 24) = v79;
      *(a3 + 28) = v78;
    }

    else
    {
      v78 -= 32;
      v87 = v79;
    }

    *(a2 + 24) = v87;
  }

  if (v78 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v146 = "Cannot read pR.hasHighFrequencyDamping";
    goto LABEL_285;
  }

  v94 = v79 >> 31;
  v95 = v78 - 1;
  *(a3 + 28) = v78 - 1;
  if (v78 - 1 < 0)
  {
    v97 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v97 <= v4)
    {
      v79 = bswap32(*v4);
    }

    else
    {
      v98 = 4;
      v99 = v4;
      do
      {
        v100 = v79 << 8;
        *(a3 + 24) = v100;
        v101 = 255;
        if (v99 < v3 && v99 >= v97)
        {
          v101 = *v99;
        }

        v79 = v101 | v100;
        *(a3 + 24) = v79;
        v99 = (v99 + 1);
        --v98;
      }

      while (v98);
    }

    v102 = v79 << (1 - v78);
    v103 = v78 + 31;
    *(a3 + 28) = v103;
    *a3 = ++v4;
    v94 |= v79 >> v103;
    if (v103)
    {
      v96 = v102;
    }

    else
    {
      v96 = 0;
    }

    if (v103)
    {
      v95 = v103;
    }

    else
    {
      v95 = 0;
    }
  }

  else
  {
    v96 = 2 * v79;
  }

  *(a3 + 24) = v96;
  *(a2 + 5) = v94 != 0;
  if (v94)
  {
    if (v95 + 8 * (v3 - v4) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v146 = "Cannot read pR.highFrequencyDamping";
      goto LABEL_285;
    }

    *(a3 + 28) = v95 - 32;
    if (v95 - 32 < 0)
    {
      v105 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v105 <= v4)
      {
        v106 = bswap32(*v4);
      }

      else
      {
        v107 = 4;
        v108 = v4;
        v106 = v96;
        do
        {
          v109 = v106 << 8;
          *(a3 + 24) = v109;
          v110 = 255;
          if (v108 < v3 && v108 >= v105)
          {
            v110 = *v108;
          }

          v106 = v110 | v109;
          *(a3 + 24) = v106;
          v108 = (v108 + 1);
          --v107;
        }

        while (v107);
      }

      *a3 = ++v4;
      v104 = (v106 >> v95) | v96;
      v96 = v106 << -v95;
      if (!v95)
      {
        v96 = 0;
      }

      *(a3 + 24) = v96;
      *(a3 + 28) = v95;
    }

    else
    {
      v95 -= 32;
      v104 = v96;
    }

    *(a2 + 28) = v104;
  }

  if (v95 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v146 = "Cannot read pR.hasEarlyReflectionOnly";
    goto LABEL_285;
  }

  v111 = v96 >> 31;
  v112 = v95 - 1;
  *(a3 + 28) = v95 - 1;
  if (v95 - 1 < 0)
  {
    v114 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v114 <= v4)
    {
      v96 = bswap32(*v4);
    }

    else
    {
      v115 = 4;
      v116 = v4;
      do
      {
        v117 = v96 << 8;
        *(a3 + 24) = v117;
        v118 = 255;
        if (v116 < v3 && v116 >= v114)
        {
          v118 = *v116;
        }

        v96 = v118 | v117;
        *(a3 + 24) = v96;
        v116 = (v116 + 1);
        --v115;
      }

      while (v115);
    }

    v120 = v95 + 31;
    v119 = v95 == -31;
    *(a3 + 28) = v95 + 31;
    *a3 = ++v4;
    v111 |= v96 >> (v95 + 31);
    if (v95 == -31)
    {
      v113 = 0;
    }

    else
    {
      v113 = v96 << (1 - v95);
    }

    if (v119)
    {
      v112 = 0;
    }

    else
    {
      v112 = v120;
    }
  }

  else
  {
    v113 = 2 * v96;
  }

  *(a3 + 24) = v113;
  *(a2 + 6) = v111 != 0;
  if (v111)
  {
    if (v112 + 8 * (v3 - v4) <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v146 = "Cannot read pR.earlyReflectionOnly";
      goto LABEL_285;
    }

    v121 = v113 >> 31;
    *(a3 + 28) = v112 - 1;
    if (v112 - 1 < 0)
    {
      v122 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v122 <= v4)
      {
        v113 = bswap32(*v4);
      }

      else
      {
        v123 = 4;
        v124 = v4;
        do
        {
          v125 = v113 << 8;
          *(a3 + 24) = v125;
          v126 = 255;
          if (v124 < v3 && v124 >= v122)
          {
            v126 = *v124;
          }

          v113 = v126 | v125;
          *(a3 + 24) = v113;
          v124 = (v124 + 1);
          --v123;
        }

        while (v123);
      }

      v127 = v113 << (1 - v112);
      v112 += 31;
      *(a3 + 28) = v112;
      *a3 = ++v4;
      v121 |= v113 >> v112;
      if (v112)
      {
        v113 = v127;
      }

      else
      {
        v113 = 0;
      }

      if (!v112)
      {
        v112 = 0;
      }
    }

    else
    {
      v113 *= 2;
      --v112;
    }

    *(a3 + 24) = v113;
    *(a2 + 32) = v121 != 0;
  }

  if (v112 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v146 = "Cannot read pR.hasEarlyReflectionTime";
    goto LABEL_285;
  }

  v128 = v113 >> 31;
  v129 = v112 - 1;
  *(a3 + 28) = v112 - 1;
  if (v112 - 1 < 0)
  {
    v131 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v131 <= v4)
    {
      v113 = bswap32(*v4);
    }

    else
    {
      v132 = 4;
      v133 = v4;
      do
      {
        v134 = v113 << 8;
        *(a3 + 24) = v134;
        v135 = 255;
        if (v133 < v3 && v133 >= v131)
        {
          v135 = *v133;
        }

        v113 = v135 | v134;
        *(a3 + 24) = v113;
        v133 = (v133 + 1);
        --v132;
      }

      while (v132);
    }

    v137 = v112 + 31;
    v136 = v112 == -31;
    *(a3 + 28) = v112 + 31;
    *a3 = ++v4;
    v128 |= v113 >> (v112 + 31);
    if (v112 == -31)
    {
      v130 = 0;
    }

    else
    {
      v130 = v113 << (1 - v112);
    }

    if (v136)
    {
      v129 = 0;
    }

    else
    {
      v129 = v137;
    }
  }

  else
  {
    v130 = 2 * v113;
  }

  *(a3 + 24) = v130;
  *(a2 + 7) = v128 != 0;
  if (v128)
  {
    if (v129 + 8 * (v3 - v4) > 31)
    {
      *(a3 + 28) = v129 - 32;
      if (v129 - 32 < 0)
      {
        v138 = *(a3 + 8);
        if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v138 <= v4)
        {
          v139 = bswap32(*v4);
        }

        else
        {
          v140 = 4;
          v141 = v4;
          v139 = v130;
          do
          {
            v142 = v139 << 8;
            *(a3 + 24) = v142;
            v143 = 255;
            if (v141 < v3 && v141 >= v138)
            {
              v143 = *v141;
            }

            v139 = v143 | v142;
            *(a3 + 24) = v139;
            v141 = (v141 + 1);
            --v140;
          }

          while (v140);
        }

        *a3 = v4 + 1;
        v130 |= v139 >> v129;
        v144 = v139 << -v129;
        if (!v129)
        {
          v144 = 0;
        }

        *(a3 + 24) = v144;
        *(a3 + 28) = v129;
      }

      *(a2 + 36) = v130;
      return;
    }

    exception = __cxa_allocate_exception(8uLL);
    v146 = "Cannot read pR.earlyReflectionTimeMsec";
LABEL_285:
    *exception = v146;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }
}

unint64_t APAC::MetadataBitStreamParser::parseFallbackRoomGeometry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v5 = *(a3 + 8);
  v4 = *(a3 + 16);
  v6 = *a3;
  v7 = *(a3 + 24);
  v8 = *(a3 + 28);
  do
  {
    v9 = v4 - v6;
    if (v8 + 8 * (v4 - v6) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v44 = "Cannot read fallbackRoomGeometry.mOctaveBandRt60[n]";
      goto LABEL_76;
    }

    *(a3 + 28) = v8 - 32;
    if (v8 - 32 < 0)
    {
      if ((v9 & ~(v9 >> 63) & 0xFFFFFFFC) != 0 && v5 <= v6)
      {
        v12 = bswap32(*v6);
      }

      else
      {
        v13 = 4;
        v14 = v6;
        v12 = v7;
        do
        {
          v15 = v12 << 8;
          *(a3 + 24) = v15;
          v16 = 255;
          if (v14 < v4 && v14 >= v5)
          {
            v16 = *v14;
          }

          v12 = v16 | v15;
          *(a3 + 24) = v12;
          v14 = (v14 + 1);
          --v13;
        }

        while (v13);
      }

      *a3 = ++v6;
      v11 = (v12 >> v8) | v7;
      v7 = v12 << -v8;
      if (!v8)
      {
        v7 = 0;
      }

      *(a3 + 24) = v7;
      *(a3 + 28) = v8;
      v9 = v4 - v6;
      v10 = 8 * (v4 - v6);
    }

    else
    {
      v10 = 8 * v9;
      v8 -= 32;
      v11 = v7;
    }

    *(a2 + 4 + 4 * v3) = v11;
    if (v10 + v8 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v44 = "Cannot read fallbackRoomGeometry.mOctaveBandEarlyRoomEnergy[n]";
      goto LABEL_76;
    }

    *(a3 + 28) = v8 - 32;
    if (v8 - 32 < 0)
    {
      if ((v9 & ~(v9 >> 63) & 0xFFFFFFFC) != 0 && v5 <= v6)
      {
        v18 = bswap32(*v6);
      }

      else
      {
        v19 = 4;
        v20 = v6;
        v18 = v7;
        do
        {
          v21 = v18 << 8;
          *(a3 + 24) = v21;
          v22 = 255;
          if (v20 < v4 && v20 >= v5)
          {
            v22 = *v20;
          }

          v18 = v22 | v21;
          *(a3 + 24) = v18;
          v20 = (v20 + 1);
          --v19;
        }

        while (v19);
      }

      *a3 = ++v6;
      v17 = (v18 >> v8) | v7;
      v7 = v18 << -v8;
      if (!v8)
      {
        v7 = 0;
      }

      *(a3 + 24) = v7;
      *(a3 + 28) = v8;
      v9 = v4 - v6;
      v10 = 8 * (v4 - v6);
    }

    else
    {
      v8 -= 32;
      v17 = v7;
    }

    *(a2 + 44 + 4 * v3) = v17;
    if (v10 + v8 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v44 = "Cannot read fallbackRoomGeometry.mOctaveBandLateRoomEnergy[n]";
      goto LABEL_76;
    }

    result = (v8 - 32);
    *(a3 + 28) = result;
    if (v8 - 32 < 0)
    {
      result = v9 >> 63;
      if ((v9 & ~(v9 >> 63) & 0xFFFFFFFC) != 0 && v5 <= v6)
      {
        v25 = bswap32(*v6);
      }

      else
      {
        v26 = 4;
        result = v6;
        v25 = v7;
        do
        {
          v27 = v25 << 8;
          *(a3 + 24) = v27;
          v28 = 255;
          if (result < v4 && result >= v5)
          {
            v28 = *result;
          }

          v25 = v28 | v27;
          *(a3 + 24) = v25;
          ++result;
          --v26;
        }

        while (v26);
      }

      *a3 = ++v6;
      v24 = (v25 >> v8) | v7;
      v7 = v25 << -v8;
      if (!v8)
      {
        v7 = 0;
      }

      *(a3 + 24) = v7;
      *(a3 + 28) = v8;
    }

    else
    {
      v8 -= 32;
      v24 = v7;
    }

    *(a2 + 84 + 4 * v3++) = v24;
  }

  while (v3 != 10);
  v29 = v4 - v6;
  if (v8 + 8 * (v4 - v6) < 32)
  {
    exception = __cxa_allocate_exception(8uLL);
    v44 = "Cannot read fallbackRoomGeometry.mRoomVolume";
    goto LABEL_76;
  }

  *(a3 + 28) = v8 - 32;
  if (v8 - 32 < 0)
  {
    if ((v29 & ~(v29 >> 63) & 0xFFFFFFFC) != 0 && v5 <= v6)
    {
      v32 = bswap32(*v6);
    }

    else
    {
      v33 = 4;
      v34 = v6;
      v32 = v7;
      do
      {
        v35 = v32 << 8;
        *(a3 + 24) = v35;
        v36 = 255;
        if (v34 < v4 && v34 >= v5)
        {
          v36 = *v34;
        }

        v32 = v36 | v35;
        *(a3 + 24) = v32;
        v34 = (v34 + 1);
        --v33;
      }

      while (v33);
    }

    *a3 = ++v6;
    v31 = (v32 >> v8) | v7;
    v7 = v32 << -v8;
    if (!v8)
    {
      v7 = 0;
    }

    *(a3 + 24) = v7;
    *(a3 + 28) = v8;
    v29 = v4 - v6;
    v30 = 8 * (v4 - v6);
  }

  else
  {
    v30 = 8 * v29;
    v8 -= 32;
    v31 = v7;
  }

  *(a2 + 124) = v31;
  if (v30 + v8 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v44 = "Cannot read fallbackRoomGeometry.mRoomSurface";
LABEL_76:
    *exception = v44;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  *(a3 + 28) = v8 - 32;
  if (v8 - 32 < 0)
  {
    if ((v29 & ~(v29 >> 63) & 0xFFFFFFFC) != 0 && v5 <= v6)
    {
      v37 = bswap32(*v6);
    }

    else
    {
      v38 = 4;
      v39 = v6;
      v37 = v7;
      do
      {
        v40 = v37 << 8;
        *(a3 + 24) = v40;
        v41 = 255;
        if (v39 < v4 && v39 >= v5)
        {
          v41 = *v39;
        }

        v37 = v41 | v40;
        *(a3 + 24) = v37;
        v39 = (v39 + 1);
        --v38;
      }

      while (v38);
    }

    *a3 = v6 + 1;
    v7 |= v37 >> v8;
    v42 = v37 << -v8;
    if (!v8)
    {
      v42 = 0;
    }

    *(a3 + 24) = v42;
    *(a3 + 28) = v8;
  }

  *(a2 + 128) = v7;
  return result;
}

void _ZNSt3__116allocator_traitsINS_9allocatorIN4APAC8Metadata9GroupDataEEEE9constructB8ne200100IS4_JEvLi0EEEvRS5_PT_DpOT0_(char *a1)
{
  bzero(a1, 0x9D08uLL);
  for (i = 0; i != 40192; i += 1256)
  {
    v3 = &a1[i];
    *(v3 + 4) = 0;
    v3[10] = 0;
    *(v3 + 6) = 0;
    v3[16] = 0;
    *(v3 + 11) = 0;
    *(v3 + 93) = 0;
    *(v3 + 66) = 0;
    *(v3 + 47) = 0;
    v3[584] = 0;
    *(v3 + 293) = 0;
    v3[588] = 0;
    v4 = &a1[i + 590];
    *(v3 + 184) = 0;
    v3[740] = 0;
    *(v3 + 186) = 0;
    v3[748] = 0;
    *(v3 + 188) = 0;
    v3[756] = 0;
    *(v3 + 190) = 0;
    v3[764] = 0;
    v3[768] = 0;
    *(v3 + 193) = 0;
    v3[776] = 0;
    *(v3 + 195) = 0;
    v3[784] = 0;
    *(v3 + 197) = 0;
    v3[792] = 0;
    *(v4 + 3) = 0;
    *v4 = 0;
    *(v3 + 90) = 0;
    *&a1[i + 725] = 0;
    *(v3 + 398) = 0;
    *(v3 + 200) = 0;
    v3[808] = 0;
    *(v3 + 405) = 0;
    v3[812] = 0;
    *&a1[i + 814] = 0;
    *(v3 + 409) = 0;
    v3[824] = 0;
    v5 = &a1[i + 828];
    *v5 = 0uLL;
    *(v5 + 1) = 0uLL;
    *(v5 + 2) = 0uLL;
    *(v5 + 3) = 0uLL;
    *(v5 + 4) = 0uLL;
    *(v5 + 5) = 0uLL;
    *(v5 + 6) = 0uLL;
    *(v5 + 7) = 0uLL;
    *(v5 + 8) = 0uLL;
    *(v5 + 142) = 0uLL;
    *(v3 + 264) = 0;
    *(v3 + 530) = 0;
    *(v3 + 82) = 0;
    *(v3 + 66) = 0uLL;
    *(v3 + 50) = 0uLL;
    *(v3 + 34) = 0uLL;
    *(v3 + 18) = 0uLL;
    *(v3 + 17) = 0;
    *(v3 + 18) = 0;
    *(v3 + 150) = 0;
    v3[168] = 0;
    *(v3 + 20) = 0;
    *(v3 + 177) = 0;
    *(v3 + 172) = 0;
    *(v3 + 520) = 0;
    *(v3 + 63) = 0uLL;
    *(v3 + 64) = 0uLL;
    *(v3 + 62) = 0uLL;
    *(v3 + 526) = 0;
    *&a1[i + 1044] = 0;
    v3[1062] = 1;
    v6 = &a1[i + 1063];
    v7 = &a1[i + 1116];
    *(v7 + 5) = 0;
    *v7 = 0;
    *(v3 + 290) = 0;
    *(v3 + 582) = 0;
    *&a1[i + 1173] = 0;
    *(v3 + 146) = 0;
    v3[1212] = 0;
    v3[1216] = 0;
    *&a1[i + 1218] = 0;
    v3[1222] = 0;
    *(v3 + 306) = 0;
    *(v6 + 47) = 0;
    *(v6 + 16) = 0uLL;
    *(v6 + 32) = 0uLL;
    *v6 = 0uLL;
    *(v3 + 78) = 0uLL;
    *(v3 + 77) = 0uLL;
  }
}

void APAC::MetadataBitStreamParser::parseAuthoringInformation(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v90 = "Cannot read authorInfo.mAuthoringToolNameIndex";
    goto LABEL_145;
  }

  v7 = *(a3 + 24);
  v8 = v7 >> 29;
  v9 = v6 - 3;
  *(a3 + 28) = v6 - 3;
  if (v6 - 3 < 0)
  {
    v11 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) != 0)
    {
      v12 = v11 >= v4;
      v13 = v11 == v4;
    }

    else
    {
      v12 = 1;
      v13 = 0;
    }

    if (!v13 && v12)
    {
      v14 = 4;
      v15 = v4;
      do
      {
        v16 = v7 << 8;
        *(a3 + 24) = v16;
        v17 = 255;
        if (v15 < v3 && v15 >= v11)
        {
          v17 = *v15;
        }

        v7 = v17 | v16;
        *(a3 + 24) = v7;
        v15 = (v15 + 1);
        --v14;
      }

      while (v14);
    }

    else
    {
      v7 = bswap32(*v4);
    }

    v18 = v7 << (3 - v6);
    v19 = v6 + 29;
    *(a3 + 28) = v19;
    *a3 = ++v4;
    v8 |= v7 >> v19;
    if (v19)
    {
      v10 = v18;
    }

    else
    {
      v10 = 0;
    }

    if (v19)
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = 8 * v7;
  }

  *(a3 + 24) = v10;
  *a2 = v8;
  if (v9 + 8 * (v3 - v4) <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v90 = "Cannot read authorInfo.mAuthoringToolVersion.mMajor";
    goto LABEL_145;
  }

  v20 = HIBYTE(v10);
  v21 = v9 - 8;
  *(a3 + 28) = v9 - 8;
  if (v9 - 8 < 0)
  {
    v23 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v23 <= v4)
    {
      v10 = bswap32(*v4);
    }

    else
    {
      v24 = 4;
      v25 = v4;
      do
      {
        v26 = v10 << 8;
        *(a3 + 24) = v26;
        v27 = 255;
        if (v25 < v3 && v25 >= v23)
        {
          v27 = *v25;
        }

        v10 = v27 | v26;
        *(a3 + 24) = v10;
        v25 = (v25 + 1);
        --v24;
      }

      while (v24);
    }

    v28 = v10 << (8 - v9);
    v29 = v9 + 24;
    *(a3 + 28) = v29;
    *a3 = ++v4;
    v20 |= v10 >> v29;
    if (v29)
    {
      v22 = v28;
    }

    else
    {
      v22 = 0;
    }

    if (v29)
    {
      v21 = v29;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v22 = v10 << 8;
  }

  *(a3 + 24) = v22;
  a2[1] = v20;
  if (v21 + 8 * (v3 - v4) <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v90 = "Cannot read authorInfo.mAuthoringToolVersion.mMinor";
    goto LABEL_145;
  }

  v30 = HIBYTE(v22);
  v31 = v21 - 8;
  *(a3 + 28) = v21 - 8;
  if (v21 - 8 < 0)
  {
    v33 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v33 <= v4)
    {
      v22 = bswap32(*v4);
    }

    else
    {
      v34 = 4;
      v35 = v4;
      do
      {
        v36 = v22 << 8;
        *(a3 + 24) = v36;
        v37 = 255;
        if (v35 < v3 && v35 >= v33)
        {
          v37 = *v35;
        }

        v22 = v37 | v36;
        *(a3 + 24) = v22;
        v35 = (v35 + 1);
        --v34;
      }

      while (v34);
    }

    v38 = v22 << (8 - v21);
    v39 = v21 + 24;
    *(a3 + 28) = v39;
    *a3 = ++v4;
    v30 |= v22 >> v39;
    if (v39)
    {
      v32 = v38;
    }

    else
    {
      v32 = 0;
    }

    if (v39)
    {
      v31 = v39;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v32 = v22 << 8;
  }

  *(a3 + 24) = v32;
  a2[2] = v30;
  if (v31 + 8 * (v3 - v4) <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v90 = "Cannot read authorInfo.mAuthoringToolVersion.mPatch";
    goto LABEL_145;
  }

  v40 = HIBYTE(v32);
  v41 = v31 - 8;
  *(a3 + 28) = v31 - 8;
  if (v31 - 8 < 0)
  {
    v43 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v43 <= v4)
    {
      v32 = bswap32(*v4);
    }

    else
    {
      v44 = 4;
      v45 = v4;
      do
      {
        v46 = v32 << 8;
        *(a3 + 24) = v46;
        v47 = 255;
        if (v45 < v3 && v45 >= v43)
        {
          v47 = *v45;
        }

        v32 = v47 | v46;
        *(a3 + 24) = v32;
        v45 = (v45 + 1);
        --v44;
      }

      while (v44);
    }

    v48 = v32 << (8 - v31);
    v49 = v31 + 24;
    *(a3 + 28) = v49;
    *a3 = ++v4;
    v40 |= v32 >> v49;
    if (v49)
    {
      v42 = v48;
    }

    else
    {
      v42 = 0;
    }

    if (v49)
    {
      v41 = v49;
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v42 = v32 << 8;
  }

  *(a3 + 24) = v42;
  a2[3] = v40;
  if (v41 + 8 * (v3 - v4) <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v90 = "Cannot read authorInfo.mRendererNameIndex";
    goto LABEL_145;
  }

  v50 = v42 >> 29;
  v51 = v41 - 3;
  *(a3 + 28) = v41 - 3;
  if (v41 - 3 < 0)
  {
    v53 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v53 <= v4)
    {
      v42 = bswap32(*v4);
    }

    else
    {
      v54 = 4;
      v55 = v4;
      do
      {
        v56 = v42 << 8;
        *(a3 + 24) = v56;
        v57 = 255;
        if (v55 < v3 && v55 >= v53)
        {
          v57 = *v55;
        }

        v42 = v57 | v56;
        *(a3 + 24) = v42;
        v55 = (v55 + 1);
        --v54;
      }

      while (v54);
    }

    v58 = v42 << (3 - v41);
    v59 = v41 + 29;
    *(a3 + 28) = v59;
    *a3 = ++v4;
    v50 |= v42 >> v59;
    if (v59)
    {
      v52 = v58;
    }

    else
    {
      v52 = 0;
    }

    if (v59)
    {
      v51 = v59;
    }

    else
    {
      v51 = 0;
    }
  }

  else
  {
    v52 = 8 * v42;
  }

  *(a3 + 24) = v52;
  a2[4] = v50;
  if (v51 + 8 * (v3 - v4) <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v90 = "Cannot read authorInfo.mRendererVersion.mMajor";
    goto LABEL_145;
  }

  v60 = HIBYTE(v52);
  v61 = v51 - 8;
  *(a3 + 28) = v51 - 8;
  if (v51 - 8 < 0)
  {
    v63 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v63 <= v4)
    {
      v52 = bswap32(*v4);
    }

    else
    {
      v64 = 4;
      v65 = v4;
      do
      {
        v66 = v52 << 8;
        *(a3 + 24) = v66;
        v67 = 255;
        if (v65 < v3 && v65 >= v63)
        {
          v67 = *v65;
        }

        v52 = v67 | v66;
        *(a3 + 24) = v52;
        v65 = (v65 + 1);
        --v64;
      }

      while (v64);
    }

    v68 = v52 << (8 - v51);
    v69 = v51 + 24;
    *(a3 + 28) = v69;
    *a3 = ++v4;
    v60 |= v52 >> v69;
    if (v69)
    {
      v62 = v68;
    }

    else
    {
      v62 = 0;
    }

    if (v69)
    {
      v61 = v69;
    }

    else
    {
      v61 = 0;
    }
  }

  else
  {
    v62 = v52 << 8;
  }

  *(a3 + 24) = v62;
  a2[5] = v60;
  if (v61 + 8 * (v3 - v4) <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v90 = "Cannot read authorInfo.mRendererVersion.mMinor";
    goto LABEL_145;
  }

  v70 = HIBYTE(v62);
  v71 = v61 - 8;
  *(a3 + 28) = v61 - 8;
  if (v61 - 8 < 0)
  {
    v73 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v73 <= v4)
    {
      v62 = bswap32(*v4);
    }

    else
    {
      v74 = 4;
      v75 = v4;
      do
      {
        v76 = v62 << 8;
        *(a3 + 24) = v76;
        v77 = 255;
        if (v75 < v3 && v75 >= v73)
        {
          v77 = *v75;
        }

        v62 = v77 | v76;
        *(a3 + 24) = v62;
        v75 = (v75 + 1);
        --v74;
      }

      while (v74);
    }

    v78 = v62 << (8 - v61);
    v79 = v61 + 24;
    *(a3 + 28) = v79;
    *a3 = ++v4;
    v70 |= v62 >> v79;
    if (v79)
    {
      v72 = v78;
    }

    else
    {
      v72 = 0;
    }

    if (v79)
    {
      v71 = v79;
    }

    else
    {
      v71 = 0;
    }
  }

  else
  {
    v72 = v62 << 8;
  }

  *(a3 + 24) = v72;
  a2[6] = v70;
  if (v71 + 8 * (v3 - v4) <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v90 = "Cannot read authorInfo.mRendererVersion.mPatch";
LABEL_145:
    *exception = v90;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v80 = HIBYTE(v72);
  *(a3 + 28) = v71 - 8;
  if (v71 - 8 < 0)
  {
    v82 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v82 <= v4)
    {
      v72 = bswap32(*v4);
    }

    else
    {
      v83 = 4;
      v84 = v4;
      do
      {
        v85 = v72 << 8;
        *(a3 + 24) = v85;
        v86 = 255;
        if (v84 < v3 && v84 >= v82)
        {
          v86 = *v84;
        }

        v72 = v86 | v85;
        *(a3 + 24) = v72;
        v84 = (v84 + 1);
        --v83;
      }

      while (v83);
    }

    v87 = v72 << (8 - v71);
    v88 = v71 + 24;
    *(a3 + 28) = v88;
    *a3 = v4 + 1;
    v80 |= v72 >> v88;
    if (v88)
    {
      v81 = v87;
    }

    else
    {
      v81 = 0;
    }
  }

  else
  {
    v81 = v72 << 8;
  }

  *(a3 + 24) = v81;
  a2[7] = v80;
}

void APAC::MetadataBitStreamParser::parseReferenceScreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v93 = "Cannot read refScreen.mAspectRatio";
    goto LABEL_159;
  }

  v7 = *(a3 + 24);
  *(a3 + 28) = v6 - 32;
  if (v6 - 32 < 0)
  {
    v10 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v10 > v4)
    {
      v12 = 4;
      v13 = v4;
      v16 = v7;
      do
      {
        v14 = v16 << 8;
        *(a3 + 24) = v14;
        v15 = 255;
        if (v13 < v3 && v13 >= v10)
        {
          v15 = *v13;
        }

        v16 = v15 | v14;
        *(a3 + 24) = v16;
        v13 = (v13 + 1);
        --v12;
      }

      while (v12);
    }

    else
    {
      v16 = bswap32(*v4);
    }

    *a3 = ++v4;
    v9 = (v16 >> v6) | v7;
    v7 = v16 << -v6;
    if (!v6)
    {
      v7 = 0;
    }

    *(a3 + 24) = v7;
    *(a3 + 28) = v6;
    v5 = v3 - v4;
    v8 = 8 * (v3 - v4);
  }

  else
  {
    v8 = 8 * v5;
    v6 -= 32;
    v9 = v7;
  }

  *a2 = v9;
  if ((v8 + v6 < 0) ^ __OFADD__(v8, v6) | (v8 + v6 == 0))
  {
    exception = __cxa_allocate_exception(8uLL);
    v93 = "Cannot read refScreen.mIsCartesian";
    goto LABEL_159;
  }

  v17 = v7 >> 31;
  v18 = v6 - 1;
  *(a3 + 28) = v6 - 1;
  if (v6 - 1 < 0)
  {
    v20 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v20 > v4)
    {
      v22 = 4;
      v23 = v4;
      do
      {
        v24 = v7 << 8;
        *(a3 + 24) = v24;
        v25 = 255;
        if (v23 < v3 && v23 >= v20)
        {
          v25 = *v23;
        }

        v7 = v25 | v24;
        *(a3 + 24) = v7;
        v23 = (v23 + 1);
        --v22;
      }

      while (v22);
    }

    else
    {
      v7 = bswap32(*v4);
    }

    v27 = v6 + 31;
    v26 = v6 == -31;
    *(a3 + 28) = v6 + 31;
    *a3 = ++v4;
    v17 |= v7 >> (v6 + 31);
    if (v6 == -31)
    {
      v19 = 0;
    }

    else
    {
      v19 = v7 << (1 - v6);
    }

    if (v26)
    {
      v18 = 0;
    }

    else
    {
      v18 = v27;
    }
  }

  else
  {
    v19 = 2 * v7;
  }

  *(a3 + 24) = v19;
  *(a2 + 4) = v17 != 0;
  v28 = v3 - v4;
  v29 = 8 * (v3 - v4);
  v30 = v18 + v29;
  if (!v17)
  {
    if (v30 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v93 = "Cannot read refScreen.mScreenCentrePosition.mAzimuth";
    }

    else
    {
      *(a3 + 28) = v18 - 32;
      if (v18 - 32 < 0)
      {
        v36 = v28 & ~(v28 >> 63);
        v37 = *(a3 + 8);
        if ((v36 & 0xFFFFFFFC) != 0 && v37 <= v4)
        {
          v38 = bswap32(*v4);
        }

        else
        {
          v66 = 4;
          v67 = v4;
          v38 = v19;
          do
          {
            v68 = v38 << 8;
            *(a3 + 24) = v68;
            v69 = 255;
            if (v67 < v3 && v67 >= v37)
            {
              v69 = *v67;
            }

            v38 = v69 | v68;
            *(a3 + 24) = v38;
            v67 = (v67 + 1);
            --v66;
          }

          while (v66);
        }

        *a3 = ++v4;
        v32 = (v38 >> v18) | v19;
        v19 = v38 << -v18;
        if (!v18)
        {
          v19 = 0;
        }

        *(a3 + 24) = v19;
        *(a3 + 28) = v18;
        v28 = v3 - v4;
        v29 = 8 * (v3 - v4);
      }

      else
      {
        v18 -= 32;
        v32 = v19;
      }

      *(a2 + 20) = v32;
      if (v29 + v18 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v93 = "Cannot read refScreen.mScreenCentrePosition.mElevation";
      }

      else
      {
        *(a3 + 28) = v18 - 32;
        if (v18 - 32 < 0)
        {
          v71 = v28 & ~(v28 >> 63);
          v72 = *(a3 + 8);
          if ((v71 & 0xFFFFFFFC) != 0 && v72 <= v4)
          {
            v73 = bswap32(*v4);
          }

          else
          {
            v74 = 4;
            v75 = v4;
            v73 = v19;
            do
            {
              v76 = v73 << 8;
              *(a3 + 24) = v76;
              v77 = 255;
              if (v75 < v3 && v75 >= v72)
              {
                v77 = *v75;
              }

              v73 = v77 | v76;
              *(a3 + 24) = v73;
              v75 = (v75 + 1);
              --v74;
            }

            while (v74);
          }

          *a3 = ++v4;
          v70 = (v73 >> v18) | v19;
          v19 = v73 << -v18;
          if (!v18)
          {
            v19 = 0;
          }

          *(a3 + 24) = v19;
          *(a3 + 28) = v18;
          v28 = v3 - v4;
          v29 = 8 * (v3 - v4);
        }

        else
        {
          v18 -= 32;
          v70 = v19;
        }

        *(a2 + 24) = v70;
        if (v29 + v18 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v93 = "Cannot read refScreen.mScreenCentrePosition.mRadius";
        }

        else
        {
          *(a3 + 28) = v18 - 32;
          if (v18 - 32 < 0)
          {
            v79 = v28 & ~(v28 >> 63);
            v80 = *(a3 + 8);
            if ((v79 & 0xFFFFFFFC) != 0 && v80 <= v4)
            {
              v81 = bswap32(*v4);
            }

            else
            {
              v82 = 4;
              v83 = v4;
              v81 = v19;
              do
              {
                v84 = v81 << 8;
                *(a3 + 24) = v84;
                v85 = 255;
                if (v83 < v3 && v83 >= v80)
                {
                  v85 = *v83;
                }

                v81 = v85 | v84;
                *(a3 + 24) = v81;
                v83 = (v83 + 1);
                --v82;
              }

              while (v82);
            }

            *a3 = ++v4;
            v78 = (v81 >> v18) | v19;
            v19 = v81 << -v18;
            if (!v18)
            {
              v19 = 0;
            }

            *(a3 + 24) = v19;
            *(a3 + 28) = v18;
            v28 = v3 - v4;
            v29 = 8 * (v3 - v4);
          }

          else
          {
            v18 -= 32;
            v78 = v19;
          }

          *(a2 + 28) = v78;
          if (v29 + v18 > 31)
          {
            *(a3 + 28) = v18 - 32;
            if (v18 - 32 >= 0)
            {
              v59 = 36;
              goto LABEL_148;
            }

            v86 = *(a3 + 8);
            if ((v28 & ~(v28 >> 63) & 0xFFFFFFFC) != 0 && v86 <= v4)
            {
              v61 = bswap32(*v4);
            }

            else
            {
              v87 = 4;
              v88 = v4;
              v61 = v19;
              do
              {
                v89 = v61 << 8;
                *(a3 + 24) = v89;
                v90 = 255;
                if (v88 < v3 && v88 >= v86)
                {
                  v90 = *v88;
                }

                v61 = v90 | v89;
                *(a3 + 24) = v61;
                v88 = (v88 + 1);
                --v87;
              }

              while (v87);
            }

            *(a3 + 28) = v18;
            *a3 = v4 + 1;
            v19 |= v61 >> v18;
            v59 = 36;
            goto LABEL_145;
          }

          exception = __cxa_allocate_exception(8uLL);
          v93 = "Cannot read refScreen.mScreenWidth.mAzimuth";
        }
      }
    }

LABEL_159:
    *exception = v93;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v30 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v93 = "Cannot read refScreen.mScreenCentrePosition.mX";
    goto LABEL_159;
  }

  *(a3 + 28) = v18 - 32;
  if (v18 - 32 < 0)
  {
    v33 = v28 & ~(v28 >> 63);
    v34 = *(a3 + 8);
    if ((v33 & 0xFFFFFFFC) != 0 && v34 <= v4)
    {
      v35 = bswap32(*v4);
    }

    else
    {
      v39 = 4;
      v40 = v4;
      v35 = v19;
      do
      {
        v41 = v35 << 8;
        *(a3 + 24) = v41;
        v42 = 255;
        if (v40 < v3 && v40 >= v34)
        {
          v42 = *v40;
        }

        v35 = v42 | v41;
        *(a3 + 24) = v35;
        v40 = (v40 + 1);
        --v39;
      }

      while (v39);
    }

    *a3 = ++v4;
    v31 = (v35 >> v18) | v19;
    v19 = v35 << -v18;
    if (!v18)
    {
      v19 = 0;
    }

    *(a3 + 24) = v19;
    *(a3 + 28) = v18;
    v28 = v3 - v4;
    v29 = 8 * (v3 - v4);
  }

  else
  {
    v18 -= 32;
    v31 = v19;
  }

  *(a2 + 8) = v31;
  if (v29 + v18 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v93 = "Cannot read refScreen.mScreenCentrePosition.mY";
    goto LABEL_159;
  }

  *(a3 + 28) = v18 - 32;
  if (v18 - 32 < 0)
  {
    v44 = v28 & ~(v28 >> 63);
    v45 = *(a3 + 8);
    if ((v44 & 0xFFFFFFFC) != 0 && v45 <= v4)
    {
      v46 = bswap32(*v4);
    }

    else
    {
      v47 = 4;
      v48 = v4;
      v46 = v19;
      do
      {
        v49 = v46 << 8;
        *(a3 + 24) = v49;
        v50 = 255;
        if (v48 < v3 && v48 >= v45)
        {
          v50 = *v48;
        }

        v46 = v50 | v49;
        *(a3 + 24) = v46;
        v48 = (v48 + 1);
        --v47;
      }

      while (v47);
    }

    *a3 = ++v4;
    v43 = (v46 >> v18) | v19;
    v19 = v46 << -v18;
    if (!v18)
    {
      v19 = 0;
    }

    *(a3 + 24) = v19;
    *(a3 + 28) = v18;
    v28 = v3 - v4;
    v29 = 8 * (v3 - v4);
  }

  else
  {
    v18 -= 32;
    v43 = v19;
  }

  *(a2 + 12) = v43;
  if (v29 + v18 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v93 = "Cannot read refScreen.mScreenCentrePosition.mZ";
    goto LABEL_159;
  }

  *(a3 + 28) = v18 - 32;
  if (v18 - 32 < 0)
  {
    v52 = v28 & ~(v28 >> 63);
    v53 = *(a3 + 8);
    if ((v52 & 0xFFFFFFFC) != 0 && v53 <= v4)
    {
      v54 = bswap32(*v4);
    }

    else
    {
      v55 = 4;
      v56 = v4;
      v54 = v19;
      do
      {
        v57 = v54 << 8;
        *(a3 + 24) = v57;
        v58 = 255;
        if (v56 < v3 && v56 >= v53)
        {
          v58 = *v56;
        }

        v54 = v58 | v57;
        *(a3 + 24) = v54;
        v56 = (v56 + 1);
        --v55;
      }

      while (v55);
    }

    *a3 = ++v4;
    v51 = (v54 >> v18) | v19;
    v19 = v54 << -v18;
    if (!v18)
    {
      v19 = 0;
    }

    *(a3 + 24) = v19;
    *(a3 + 28) = v18;
    v28 = v3 - v4;
    v29 = 8 * (v3 - v4);
  }

  else
  {
    v18 -= 32;
    v51 = v19;
  }

  *(a2 + 16) = v51;
  if (v29 + v18 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v93 = "Cannot read refScreen.mScreenWidth.mX";
    goto LABEL_159;
  }

  *(a3 + 28) = v18 - 32;
  if (v18 - 32 >= 0)
  {
    v59 = 32;
    goto LABEL_148;
  }

  v60 = *(a3 + 8);
  if ((v28 & ~(v28 >> 63) & 0xFFFFFFFC) != 0 && v60 <= v4)
  {
    v61 = bswap32(*v4);
  }

  else
  {
    v62 = 4;
    v63 = v4;
    v61 = v19;
    do
    {
      v64 = v61 << 8;
      *(a3 + 24) = v64;
      v65 = 255;
      if (v63 < v3 && v63 >= v60)
      {
        v65 = *v63;
      }

      v61 = v65 | v64;
      *(a3 + 24) = v61;
      v63 = (v63 + 1);
      --v62;
    }

    while (v62);
  }

  *(a3 + 28) = v18;
  *a3 = v4 + 1;
  v19 |= v61 >> v18;
  v59 = 32;
LABEL_145:
  v91 = v61 << -v18;
  if (!v18)
  {
    v91 = 0;
  }

  *(a3 + 24) = v91;
LABEL_148:
  *(a2 + v59) = v19;
}

BOOL APAC::MetadataBitStreamParser::parseDBMD(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v93 = "Cannot read dbmd.mSurroundDownmix";
    goto LABEL_167;
  }

  v8 = *(a3 + 24);
  v9 = v8 >> 30;
  v10 = v6 - 2;
  *(a3 + 28) = v6 - 2;
  if (v6 - 2 < 0)
  {
    v12 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v12 > v4)
    {
      v14 = 4;
      v15 = v4;
      do
      {
        v16 = v8 << 8;
        *(a3 + 24) = v16;
        v17 = 255;
        if (v15 < v3 && v15 >= v12)
        {
          v17 = *v15;
        }

        v8 = v17 | v16;
        *(a3 + 24) = v8;
        ++v15;
        --v14;
      }

      while (v14);
    }

    else
    {
      v8 = bswap32(*v4);
    }

    v18 = v8 << (2 - v6);
    v19 = v6 + 30;
    *(a3 + 28) = v19;
    v4 += 4;
    *a3 = v4;
    v9 |= v8 >> v19;
    if (v19)
    {
      v11 = v18;
    }

    else
    {
      v11 = 0;
    }

    if (v19)
    {
      v10 = v19;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = 4 * v8;
  }

  *(a3 + 24) = v11;
  *a2 = v9;
  if (v10 + 8 * (v3 - v4) <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v93 = "Cannot read dbmd.mSurroundToStereoDownmix";
    goto LABEL_167;
  }

  v20 = v11 >> 30;
  v21 = v10 - 2;
  *(a3 + 28) = v10 - 2;
  if (v10 - 2 < 0)
  {
    v23 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v23 <= v4)
    {
      v11 = bswap32(*v4);
    }

    else
    {
      v24 = 4;
      v25 = v4;
      do
      {
        v26 = v11 << 8;
        *(a3 + 24) = v26;
        v27 = 255;
        if (v25 < v3 && v25 >= v23)
        {
          v27 = *v25;
        }

        v11 = v27 | v26;
        *(a3 + 24) = v11;
        ++v25;
        --v24;
      }

      while (v24);
    }

    v28 = v11 << (2 - v10);
    v29 = v10 + 30;
    *(a3 + 28) = v29;
    v4 += 4;
    *a3 = v4;
    v20 |= v11 >> v29;
    if (v29)
    {
      v22 = v28;
    }

    else
    {
      v22 = 0;
    }

    if (v29)
    {
      v21 = v29;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v22 = 4 * v11;
  }

  *(a3 + 24) = v22;
  a2[1] = v20;
  if (v21 + 8 * (v3 - v4) <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v93 = "Cannot read dbmd.mPositionAdjustment";
    goto LABEL_167;
  }

  v30 = v22 >> 29;
  v31 = v21 - 3;
  *(a3 + 28) = v21 - 3;
  if (v21 - 3 < 0)
  {
    v33 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v33 <= v4)
    {
      v22 = bswap32(*v4);
    }

    else
    {
      v34 = 4;
      v35 = v4;
      do
      {
        v36 = v22 << 8;
        *(a3 + 24) = v36;
        v37 = 255;
        if (v35 < v3 && v35 >= v33)
        {
          v37 = *v35;
        }

        v22 = v37 | v36;
        *(a3 + 24) = v22;
        ++v35;
        --v34;
      }

      while (v34);
    }

    v38 = v22 << (3 - v21);
    v39 = v21 + 29;
    *(a3 + 28) = v39;
    v4 += 4;
    *a3 = v4;
    v30 |= v22 >> v39;
    if (v39)
    {
      v32 = v38;
    }

    else
    {
      v32 = 0;
    }

    if (v39)
    {
      v31 = v39;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v32 = 8 * v22;
  }

  v40 = 0;
  *(a3 + 24) = v32;
  a2[2] = v30;
  v41 = *(a3 + 8);
  do
  {
    if (v31 + 8 * (v3 - v4) <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v93 = "Cannot read dbmd.mIsAutoTrim[cfg]";
      goto LABEL_167;
    }

    v42 = v32 >> 31;
    *(a3 + 28) = v31 - 1;
    if (v31 - 1 < 0)
    {
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v41 <= v4)
      {
        v32 = bswap32(*v4);
      }

      else
      {
        v43 = 4;
        v44 = v4;
        do
        {
          v45 = v32 << 8;
          *(a3 + 24) = v45;
          v46 = 255;
          if (v44 < v3 && v44 >= v41)
          {
            v46 = *v44;
          }

          v32 = v46 | v45;
          *(a3 + 24) = v32;
          ++v44;
          --v43;
        }

        while (v43);
      }

      v47 = v32 << (1 - v31);
      v31 += 31;
      *(a3 + 28) = v31;
      v4 += 4;
      *a3 = v4;
      v42 |= v32 >> v31;
      if (v31)
      {
        v32 = v47;
      }

      else
      {
        v32 = 0;
      }

      if (!v31)
      {
        v31 = 0;
      }
    }

    else
    {
      v32 *= 2;
      --v31;
    }

    *(a3 + 24) = v32;
    a2[v40 + 3] = v42 != 0;
    if (!v42)
    {
      v48 = v3 - v4;
      if (v31 + 8 * (v3 - v4) <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v93 = "Cannot read dbmd.mMixingGains[cfg].mFrontGain";
        goto LABEL_167;
      }

      *(a3 + 28) = v31 - 32;
      if (v31 - 32 < 0)
      {
        if ((v48 & ~(v48 >> 63) & 0xFFFFFFFC) != 0 && v41 <= v4)
        {
          v51 = bswap32(*v4);
        }

        else
        {
          v52 = 4;
          v53 = v4;
          v51 = v32;
          do
          {
            v54 = v51 << 8;
            *(a3 + 24) = v54;
            v55 = 255;
            if (v53 < v3 && v53 >= v41)
            {
              v55 = *v53;
            }

            v51 = v55 | v54;
            *(a3 + 24) = v51;
            ++v53;
            --v52;
          }

          while (v52);
        }

        v4 += 4;
        *a3 = v4;
        v50 = (v51 >> v31) | v32;
        v32 = v51 << -v31;
        if (!v31)
        {
          v32 = 0;
        }

        *(a3 + 24) = v32;
        *(a3 + 28) = v31;
        v48 = v3 - v4;
        v49 = 8 * (v3 - v4);
      }

      else
      {
        v49 = 8 * v48;
        v31 -= 32;
        v50 = v32;
      }

      v56 = &a2[20 * v40 + 12];
      *v56 = v50;
      if (v49 + v31 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v93 = "Cannot read dbmd.mMixingGains[cfg].mBackGain";
        goto LABEL_167;
      }

      *(a3 + 28) = v31 - 32;
      if (v31 - 32 < 0)
      {
        if ((v48 & ~(v48 >> 63) & 0xFFFFFFFC) != 0 && v41 <= v4)
        {
          v58 = bswap32(*v4);
        }

        else
        {
          v59 = 4;
          v60 = v4;
          v58 = v32;
          do
          {
            v61 = v58 << 8;
            *(a3 + 24) = v61;
            v62 = 255;
            if (v60 < v3 && v60 >= v41)
            {
              v62 = *v60;
            }

            v58 = v62 | v61;
            *(a3 + 24) = v58;
            ++v60;
            --v59;
          }

          while (v59);
        }

        v4 += 4;
        *a3 = v4;
        v57 = (v58 >> v31) | v32;
        v32 = v58 << -v31;
        if (!v31)
        {
          v32 = 0;
        }

        *(a3 + 24) = v32;
        *(a3 + 28) = v31;
        v48 = v3 - v4;
        v49 = 8 * (v3 - v4);
      }

      else
      {
        v31 -= 32;
        v57 = v32;
      }

      v56[1] = v57;
      if (v49 + v31 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v93 = "Cannot read dbmd.mMixingGains[cfg].mTopGain";
        goto LABEL_167;
      }

      *(a3 + 28) = v31 - 32;
      if (v31 - 32 < 0)
      {
        if ((v48 & ~(v48 >> 63) & 0xFFFFFFFC) != 0 && v41 <= v4)
        {
          v64 = bswap32(*v4);
        }

        else
        {
          v65 = 4;
          v66 = v4;
          v64 = v32;
          do
          {
            v67 = v64 << 8;
            *(a3 + 24) = v67;
            v68 = 255;
            if (v66 < v3 && v66 >= v41)
            {
              v68 = *v66;
            }

            v64 = v68 | v67;
            *(a3 + 24) = v64;
            ++v66;
            --v65;
          }

          while (v65);
        }

        v4 += 4;
        *a3 = v4;
        v63 = (v64 >> v31) | v32;
        v32 = v64 << -v31;
        if (!v31)
        {
          v32 = 0;
        }

        *(a3 + 24) = v32;
        *(a3 + 28) = v31;
        v48 = v3 - v4;
        v49 = 8 * (v3 - v4);
      }

      else
      {
        v31 -= 32;
        v63 = v32;
      }

      v56[2] = v63;
      if (v49 + v31 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v93 = "Cannot read dbmd.mMixingGains[cfg].mEarLevelBalance";
        goto LABEL_167;
      }

      *(a3 + 28) = v31 - 32;
      if (v31 - 32 < 0)
      {
        if ((v48 & ~(v48 >> 63) & 0xFFFFFFFC) != 0 && v41 <= v4)
        {
          v70 = bswap32(*v4);
        }

        else
        {
          v71 = 4;
          v72 = v4;
          v70 = v32;
          do
          {
            v73 = v70 << 8;
            *(a3 + 24) = v73;
            v74 = 255;
            if (v72 < v3 && v72 >= v41)
            {
              v74 = *v72;
            }

            v70 = v74 | v73;
            *(a3 + 24) = v70;
            ++v72;
            --v71;
          }

          while (v71);
        }

        v4 += 4;
        *a3 = v4;
        v69 = (v70 >> v31) | v32;
        v32 = v70 << -v31;
        if (!v31)
        {
          v32 = 0;
        }

        *(a3 + 24) = v32;
        *(a3 + 28) = v31;
        v48 = v3 - v4;
        v49 = 8 * (v3 - v4);
      }

      else
      {
        v31 -= 32;
        v69 = v32;
      }

      v56[3] = v69;
      if (v49 + v31 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v93 = "Cannot read dbmd.mMixingGains[cfg].mHeightBalance";
        goto LABEL_167;
      }

      *(a3 + 28) = v31 - 32;
      if (v31 - 32 < 0)
      {
        if ((v48 & ~(v48 >> 63) & 0xFFFFFFFC) != 0 && v41 <= v4)
        {
          v76 = bswap32(*v4);
        }

        else
        {
          v77 = 4;
          v78 = v4;
          v76 = v32;
          do
          {
            v79 = v76 << 8;
            *(a3 + 24) = v79;
            v80 = 255;
            if (v78 < v3 && v78 >= v41)
            {
              v80 = *v78;
            }

            v76 = v80 | v79;
            *(a3 + 24) = v76;
            ++v78;
            --v77;
          }

          while (v77);
        }

        v4 += 4;
        *a3 = v4;
        v75 = (v76 >> v31) | v32;
        v32 = v76 << -v31;
        if (!v31)
        {
          v32 = 0;
        }

        *(a3 + 24) = v32;
        *(a3 + 28) = v31;
      }

      else
      {
        v31 -= 32;
        v75 = v32;
      }

      v56[4] = v75;
    }

    ++v40;
  }

  while (v40 != 9);
  if (v31 + 8 * (v3 - v4) < 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v93 = "Cannot read dbmd.mNumChannels";
LABEL_167:
    *exception = v93;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v81 = v32 >> 25;
  *(a3 + 28) = v31 - 7;
  if (v31 - 7 < 0)
  {
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v41 <= v4)
    {
      v32 = bswap32(*v4);
    }

    else
    {
      v83 = 4;
      v84 = v4;
      do
      {
        v85 = v32 << 8;
        *(a3 + 24) = v85;
        v86 = 255;
        if (v84 < v3 && v84 >= v41)
        {
          v86 = *v84;
        }

        v32 = v86 | v85;
        *(a3 + 24) = v32;
        ++v84;
        --v83;
      }

      while (v83);
    }

    v87 = v32 << (7 - v31);
    v88 = v31 + 25;
    *(a3 + 28) = v88;
    *a3 = v4 + 4;
    v81 |= v32 >> v88;
    if (v88)
    {
      v82 = v87;
    }

    else
    {
      v82 = 0;
    }
  }

  else
  {
    v82 = v32 << 7;
  }

  *(a3 + 24) = v82;
  a2[192] = v81 + 1;
  v89 = a2 + 193;
  v90 = v81 + 1;
  do
  {
    result = AT::TBitstreamReader<unsigned int>::GetBit(a3);
    *v89++ = result;
    --v90;
  }

  while (v90);
  return result;
}

void APAC::MetadataBitStreamParser::parseBinauralization(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v79 = "Cannot read binaural.mIsDirectBinauralization";
    goto LABEL_137;
  }

  v7 = *(a3 + 24);
  v8 = v7 >> 31;
  v9 = v6 - 1;
  *(a3 + 28) = v6 - 1;
  if (v6 - 1 < 0)
  {
    v11 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v11 > v4)
    {
      v13 = 4;
      v14 = v4;
      do
      {
        v15 = v7 << 8;
        *(a3 + 24) = v15;
        v16 = 255;
        if (v14 < v3 && v14 >= v11)
        {
          v16 = *v14;
        }

        v7 = v16 | v15;
        *(a3 + 24) = v7;
        v14 = (v14 + 1);
        --v13;
      }

      while (v13);
    }

    else
    {
      v7 = bswap32(*v4);
    }

    v18 = v6 + 31;
    v17 = v6 == -31;
    *(a3 + 28) = v6 + 31;
    *a3 = ++v4;
    v8 |= v7 >> (v6 + 31);
    if (v6 == -31)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7 << (1 - v6);
    }

    if (v17)
    {
      v9 = 0;
    }

    else
    {
      v9 = v18;
    }
  }

  else
  {
    v10 = 2 * v7;
  }

  *(a3 + 24) = v10;
  *a2 = v8 != 0;
  if (v8)
  {
    if (v9 + 8 * (v3 - v4) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v79 = "Cannot read binaural.mChannelLayoutTag";
      goto LABEL_137;
    }

    *(a3 + 28) = v9 - 32;
    if (v9 - 32 < 0)
    {
      v20 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v20 <= v4)
      {
        v21 = bswap32(*v4);
      }

      else
      {
        v22 = 4;
        v23 = v4;
        v21 = v10;
        do
        {
          v24 = v21 << 8;
          *(a3 + 24) = v24;
          v25 = 255;
          if (v23 < v3 && v23 >= v20)
          {
            v25 = *v23;
          }

          v21 = v25 | v24;
          *(a3 + 24) = v21;
          v23 = (v23 + 1);
          --v22;
        }

        while (v22);
      }

      *a3 = ++v4;
      v19 = (v21 >> v9) | v10;
      v10 = v21 << -v9;
      if (!v9)
      {
        v10 = 0;
      }

      *(a3 + 24) = v10;
      *(a3 + 28) = v9;
    }

    else
    {
      v9 -= 32;
      v19 = v10;
    }

    *(a2 + 4) = v19;
  }

  if (v9 + 8 * (v3 - v4) <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v79 = "Cannot read binaural.mHRTFType";
    goto LABEL_137;
  }

  v26 = v10 >> 29;
  v27 = v9 - 3;
  *(a3 + 28) = v9 - 3;
  if (v9 - 3 < 0)
  {
    v29 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v29 <= v4)
    {
      v10 = bswap32(*v4);
    }

    else
    {
      v30 = 4;
      v31 = v4;
      do
      {
        v32 = v10 << 8;
        *(a3 + 24) = v32;
        v33 = 255;
        if (v31 < v3 && v31 >= v29)
        {
          v33 = *v31;
        }

        v10 = v33 | v32;
        *(a3 + 24) = v10;
        v31 = (v31 + 1);
        --v30;
      }

      while (v30);
    }

    v34 = v10 << (3 - v9);
    v35 = v9 + 29;
    *(a3 + 28) = v35;
    *a3 = ++v4;
    v26 |= v10 >> v35;
    if (v35)
    {
      v28 = v34;
    }

    else
    {
      v28 = 0;
    }

    if (v35)
    {
      v27 = v35;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v28 = 8 * v10;
  }

  *(a3 + 24) = v28;
  *(a2 + 8) = v26;
  if (v26 == 2)
  {
    if (v27 + 8 * (v3 - v4) <= 1)
    {
      exception = __cxa_allocate_exception(8uLL);
      v79 = "Cannot read binaural.mDataLocationIndex";
      goto LABEL_137;
    }

    v39 = v28 >> 30;
    v40 = v27 - 2;
    *(a3 + 28) = v27 - 2;
    if (v27 - 2 < 0)
    {
      v43 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v43 <= v4)
      {
        v28 = bswap32(*v4);
      }

      else
      {
        v53 = 4;
        v54 = v4;
        do
        {
          v55 = v28 << 8;
          *(a3 + 24) = v55;
          v56 = 255;
          if (v54 < v3 && v54 >= v43)
          {
            v56 = *v54;
          }

          v28 = v56 | v55;
          *(a3 + 24) = v28;
          v54 = (v54 + 1);
          --v53;
        }

        while (v53);
      }

      *a3 = ++v4;
      v40 = v27 + 30;
      v39 |= v28 >> (v27 + 30);
      if (v27 == -30)
      {
        v57 = 0;
        v41 = 0;
        *(a2 + 14) = v39;
        *(a3 + 24) = 0xFFFFFFF700000000;
        goto LABEL_84;
      }

      v41 = v28 << (2 - v27);
    }

    else
    {
      v41 = 4 * v28;
    }

    *(a2 + 14) = v39;
    v57 = v41 >> 23;
    v58 = v40 - 9;
    *(a3 + 24) = v41;
    *(a3 + 28) = v40 - 9;
    if (v40 - 9 >= 0)
    {
      v59 = v41 << 9;
      goto LABEL_94;
    }

    v43 = *(a3 + 8);
LABEL_84:
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v43 <= v4)
    {
      v41 = bswap32(*v4);
    }

    else
    {
      v60 = 4;
      v61 = v4;
      do
      {
        v62 = v41 << 8;
        *(a3 + 24) = v62;
        v63 = 255;
        if (v61 < v3 && v61 >= v43)
        {
          v63 = *v61;
        }

        v41 = v63 | v62;
        *(a3 + 24) = v41;
        v61 = (v61 + 1);
        --v60;
      }

      while (v60);
    }

    *a3 = ++v4;
    v58 = v40 + 23;
    v57 |= v41 >> (v40 + 23);
    if (v40 == -23)
    {
      v64 = 0;
      v59 = 0;
      *(a2 + 10) = v57;
      *(a3 + 24) = 0xFFFFFFF700000000;
      goto LABEL_98;
    }

    v59 = v41 << (9 - v40);
LABEL_94:
    *(a2 + 10) = v57;
    v64 = v59 >> 23;
    v65 = v58 - 9;
    *(a3 + 24) = v59;
    *(a3 + 28) = v58 - 9;
    if (v58 - 9 >= 0)
    {
      v66 = v59 << 9;
LABEL_111:
      *(a3 + 24) = v66;
      *(a2 + 12) = v64;
      if (v65 + 8 * (v3 - v4) > 2)
      {
        v36 = v66 >> 29;
        *(a3 + 28) = v65 - 3;
        if (v65 - 3 >= 0)
        {
          v37 = 8 * v66;
          v38 = 15;
          goto LABEL_129;
        }

        v72 = *(a3 + 8);
        if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v72 <= v4)
        {
          v66 = bswap32(*v4);
        }

        else
        {
          v73 = 4;
          v74 = v4;
          do
          {
            v75 = v66 << 8;
            *(a3 + 24) = v75;
            v76 = 255;
            if (v74 < v3 && v74 >= v72)
            {
              v76 = *v74;
            }

            v66 = v76 | v75;
            *(a3 + 24) = v66;
            v74 = (v74 + 1);
            --v73;
          }

          while (v73);
        }

        v48 = v66 << (3 - v65);
        v49 = 15;
        v77 = v65 + 29;
        v50 = v77 == 0;
        *(a3 + 28) = v77;
        *a3 = v4 + 1;
        v36 |= v66 >> v77;
        v52 = 15;
LABEL_123:
        if (v50)
        {
          v37 = 0;
        }

        else
        {
          v37 = v48;
        }

        if (v50)
        {
          v38 = v52;
        }

        else
        {
          v38 = v49;
        }

        goto LABEL_129;
      }

      exception = __cxa_allocate_exception(8uLL);
      v79 = "Cannot read binaural.mFallbackCustomHRTF.mHRTFType";
LABEL_137:
      *exception = v79;
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }

    v43 = *(a3 + 8);
LABEL_98:
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v43 <= v4)
    {
      v59 = bswap32(*v4);
    }

    else
    {
      v67 = 4;
      v68 = v4;
      do
      {
        v69 = v59 << 8;
        *(a3 + 24) = v69;
        v70 = 255;
        if (v68 < v3 && v68 >= v43)
        {
          v70 = *v68;
        }

        v59 = v70 | v69;
        *(a3 + 24) = v59;
        v68 = (v68 + 1);
        --v67;
      }

      while (v67);
    }

    v65 = v58 + 23;
    v71 = v58 == -23;
    *(a3 + 28) = v58 + 23;
    *a3 = ++v4;
    v64 |= v59 >> (v58 + 23);
    if (v58 == -23)
    {
      v66 = 0;
    }

    else
    {
      v66 = v59 << (9 - v58);
    }

    if (v71)
    {
      v65 = 0;
    }

    goto LABEL_111;
  }

  if (v26 != 1)
  {
    return;
  }

  if (v27 + 8 * (v3 - v4) <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v79 = "Cannot read binaural.mPredefinedIR_ID";
    goto LABEL_137;
  }

  v36 = HIBYTE(v28);
  *(a3 + 28) = v27 - 8;
  if (v27 - 8 < 0)
  {
    v42 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v42 <= v4)
    {
      v28 = bswap32(*v4);
    }

    else
    {
      v44 = 4;
      v45 = v4;
      do
      {
        v46 = v28 << 8;
        *(a3 + 24) = v46;
        v47 = 255;
        if (v45 < v3 && v45 >= v42)
        {
          v47 = *v45;
        }

        v28 = v47 | v46;
        *(a3 + 24) = v28;
        v45 = (v45 + 1);
        --v44;
      }

      while (v44);
    }

    v48 = v28 << (8 - v27);
    v49 = 9;
    v51 = v27 + 24;
    v50 = v51 == 0;
    *(a3 + 28) = v51;
    *a3 = v4 + 1;
    v36 |= v28 >> v51;
    v52 = 9;
    goto LABEL_123;
  }

  v37 = v28 << 8;
  v38 = 9;
LABEL_129:
  *(a3 + 24) = v37;
  *(a2 + v38) = v36;
}

{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v46 = "Cannot read binaural.isDirectBinauralization";
    goto LABEL_74;
  }

  v7 = *(a3 + 24);
  v8 = v7 >> 31;
  v9 = v6 - 1;
  *(a3 + 28) = v6 - 1;
  if (v6 - 1 < 0)
  {
    v11 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v11 > v4)
    {
      v13 = 4;
      v14 = v4;
      do
      {
        v15 = v7 << 8;
        *(a3 + 24) = v15;
        v16 = 255;
        if (v14 < v3 && v14 >= v11)
        {
          v16 = *v14;
        }

        v7 = v16 | v15;
        *(a3 + 24) = v7;
        v14 = (v14 + 1);
        --v13;
      }

      while (v13);
    }

    else
    {
      v7 = bswap32(*v4);
    }

    v18 = v6 + 31;
    v17 = v6 == -31;
    *(a3 + 28) = v6 + 31;
    *a3 = ++v4;
    v8 |= v7 >> (v6 + 31);
    if (v6 == -31)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7 << (1 - v6);
    }

    if (v17)
    {
      v9 = 0;
    }

    else
    {
      v9 = v18;
    }
  }

  else
  {
    v10 = 2 * v7;
  }

  *(a3 + 24) = v10;
  *a2 = v8 != 0;
  if (!v8)
  {
    if (v9 + 8 * (v3 - v4) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v46 = "Cannot read binaural.channelLayoutTag";
      goto LABEL_74;
    }

    *(a3 + 28) = v9 - 32;
    if (v9 - 32 < 0)
    {
      v20 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v20 <= v4)
      {
        v21 = bswap32(*v4);
      }

      else
      {
        v22 = 4;
        v23 = v4;
        v21 = v10;
        do
        {
          v24 = v21 << 8;
          *(a3 + 24) = v24;
          v25 = 255;
          if (v23 < v3 && v23 >= v20)
          {
            v25 = *v23;
          }

          v21 = v25 | v24;
          *(a3 + 24) = v21;
          v23 = (v23 + 1);
          --v22;
        }

        while (v22);
      }

      *a3 = ++v4;
      v19 = (v21 >> v9) | v10;
      v10 = v21 << -v9;
      if (!v9)
      {
        v10 = 0;
      }

      *(a3 + 24) = v10;
      *(a3 + 28) = v9;
    }

    else
    {
      v9 -= 32;
      v19 = v10;
    }

    *(a2 + 4) = v19;
  }

  if (v9 + 8 * (v3 - v4) <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v46 = "Cannot read binaural.HRTFType";
    goto LABEL_74;
  }

  v26 = v10 >> 29;
  v27 = v9 - 3;
  *(a3 + 28) = v9 - 3;
  if (v9 - 3 < 0)
  {
    v29 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v29 <= v4)
    {
      v10 = bswap32(*v4);
    }

    else
    {
      v30 = 4;
      v31 = v4;
      do
      {
        v32 = v10 << 8;
        *(a3 + 24) = v32;
        v33 = 255;
        if (v31 < v3 && v31 >= v29)
        {
          v33 = *v31;
        }

        v10 = v33 | v32;
        *(a3 + 24) = v10;
        v31 = (v31 + 1);
        --v30;
      }

      while (v30);
    }

    v34 = v10 << (3 - v9);
    v35 = v9 + 29;
    *(a3 + 28) = v35;
    *a3 = ++v4;
    v26 |= v10 >> v35;
    if (v35)
    {
      v28 = v34;
    }

    else
    {
      v28 = 0;
    }

    if (v35)
    {
      v27 = v35;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v28 = 8 * v10;
  }

  *(a3 + 24) = v28;
  *(a2 + 8) = v26;
  if (v26 == 1)
  {
    if (v27 + 8 * (v3 - v4) > 3)
    {
      v36 = v28 >> 28;
      *(a3 + 28) = v27 - 4;
      if (v27 - 4 < 0)
      {
        v38 = *(a3 + 8);
        if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v38 <= v4)
        {
          v28 = bswap32(*v4);
        }

        else
        {
          v39 = 4;
          v40 = v4;
          do
          {
            v41 = v28 << 8;
            *(a3 + 24) = v41;
            v42 = 255;
            if (v40 < v3 && v40 >= v38)
            {
              v42 = *v40;
            }

            v28 = v42 | v41;
            *(a3 + 24) = v28;
            v40 = (v40 + 1);
            --v39;
          }

          while (v39);
        }

        v43 = v28 << (4 - v27);
        v44 = v27 + 28;
        *(a3 + 28) = v44;
        *a3 = v4 + 1;
        v36 |= v28 >> v44;
        if (v44)
        {
          v37 = v43;
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v37 = 16 * v28;
      }

      *(a3 + 24) = v37;
      *(a2 + 9) = v36;
      return;
    }

    exception = __cxa_allocate_exception(8uLL);
    v46 = "Cannot read binaural.codeBookID";
LABEL_74:
    *exception = v46;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }
}

void APAC::MetadataBitStreamParser::parseSPAD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *a4;
  v6 = v4 - *a4;
  v7 = *(a4 + 28);
  if (v7 + 8 * v6 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Cannot read spad.mDataLocationIndex";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v8 = *(a4 + 24);
  v9 = v8 >> 30;
  v10 = v7 - 2;
  *(a4 + 28) = v7 - 2;
  if (v7 - 2 < 0)
  {
    v12 = v6 & ~(v6 >> 63) & 0xFFFFFFFC;
    v13 = *(a4 + 8);
    if (v12)
    {
      v14 = v13 > v5;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v15 = 4;
      v16 = v5;
      do
      {
        v17 = v8 << 8;
        *(a4 + 24) = v17;
        v18 = 255;
        if (v16 < v4 && v16 >= v13)
        {
          v18 = *v16;
        }

        v8 = v18 | v17;
        *(a4 + 24) = v8;
        v16 = (v16 + 1);
        --v15;
      }

      while (v15);
    }

    else
    {
      v8 = bswap32(*v5);
    }

    *a4 = ++v5;
    v10 = v7 + 30;
    v9 |= v8 >> (v7 + 30);
    if (v7 == -30)
    {
      v19 = 0;
      v11 = 0;
      *a2 = v9;
      *(a4 + 24) = 0xFFFFFFF700000000;
      goto LABEL_20;
    }

    v11 = v8 << (2 - v7);
  }

  else
  {
    v11 = 4 * v8;
  }

  *a2 = v9;
  v19 = v11 >> 23;
  v20 = v10 - 9;
  *(a4 + 24) = v11;
  *(a4 + 28) = v10 - 9;
  if (v10 - 9 >= 0)
  {
    v21 = v11 << 9;
    goto LABEL_30;
  }

  v13 = *(a4 + 8);
LABEL_20:
  if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v13 <= v5)
  {
    v11 = bswap32(*v5);
  }

  else
  {
    v22 = 4;
    v23 = v5;
    do
    {
      v24 = v11 << 8;
      *(a4 + 24) = v24;
      v25 = 255;
      if (v23 < v4 && v23 >= v13)
      {
        v25 = *v23;
      }

      v11 = v25 | v24;
      *(a4 + 24) = v11;
      v23 = (v23 + 1);
      --v22;
    }

    while (v22);
  }

  *a4 = ++v5;
  v20 = v10 + 23;
  v19 |= v11 >> (v10 + 23);
  if (v10 == -23)
  {
    v26 = 0;
    v21 = 0;
    *(a2 + 2) = v19;
    *(a4 + 24) = 0xFFFFFFF700000000;
    goto LABEL_34;
  }

  v21 = v11 << (9 - v10);
LABEL_30:
  *(a2 + 2) = v19;
  v26 = v21 >> 23;
  *(a4 + 24) = v21;
  *(a4 + 28) = v20 - 9;
  if (v20 - 9 >= 0)
  {
    v27 = v21 << 9;
    goto LABEL_45;
  }

  v13 = *(a4 + 8);
LABEL_34:
  if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v13 <= v5)
  {
    v21 = bswap32(*v5);
  }

  else
  {
    v28 = 4;
    v29 = v5;
    do
    {
      v30 = v21 << 8;
      *(a4 + 24) = v30;
      v31 = 255;
      if (v29 < v4 && v29 >= v13)
      {
        v31 = *v29;
      }

      v21 = v31 | v30;
      *(a4 + 24) = v21;
      v29 = (v29 + 1);
      --v28;
    }

    while (v28);
  }

  *(a4 + 28) = v20 + 23;
  *a4 = v5 + 1;
  v26 |= v21 >> (v20 + 23);
  if (v20 == -23)
  {
    v27 = 0;
  }

  else
  {
    v27 = v21 << (9 - v20);
  }

LABEL_45:
  *(a4 + 24) = v27;
  *(a2 + 4) = v26;
  v32 = a2 + 8;

  APAC::MetadataBitStreamParser::parseFallbackSPAD(a1, v32, a3, a4);
}

void APAC::MetadataBitStreamParser::parseDistanceAttenuation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v56 = "Cannot read distAttnParams.mAttnLawIndex";
    goto LABEL_82;
  }

  v7 = *(a3 + 24);
  v8 = v7 >> 29;
  v9 = v6 - 3;
  *(a3 + 28) = v6 - 3;
  if (v6 - 3 < 0)
  {
    v11 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v11 > v4)
    {
      v13 = 4;
      v14 = v4;
      do
      {
        v15 = v7 << 8;
        *(a3 + 24) = v15;
        v16 = 255;
        if (v14 < v3 && v14 >= v11)
        {
          v16 = *v14;
        }

        v7 = v16 | v15;
        *(a3 + 24) = v7;
        v14 = (v14 + 1);
        --v13;
      }

      while (v13);
    }

    else
    {
      v7 = bswap32(*v4);
    }

    v18 = v6 + 29;
    v17 = v6 == -29;
    *(a3 + 28) = v6 + 29;
    *a3 = ++v4;
    v8 |= v7 >> (v6 + 29);
    if (v6 == -29)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7 << (3 - v6);
    }

    if (v17)
    {
      v9 = 0;
    }

    else
    {
      v9 = v18;
    }
  }

  else
  {
    v10 = 8 * v7;
  }

  *(a3 + 24) = v10;
  *a2 = v8;
  v19 = v3 - v4;
  if (v9 + 8 * (v3 - v4) <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v56 = "Cannot read distAttnParams.mDistNorm";
    goto LABEL_82;
  }

  *(a3 + 28) = v9 - 32;
  if (v9 - 32 < 0)
  {
    v22 = v19 & ~(v19 >> 63);
    v23 = *(a3 + 8);
    if ((v22 & 0xFFFFFFFC) != 0 && v23 <= v4)
    {
      v24 = bswap32(*v4);
    }

    else
    {
      v25 = 4;
      v26 = v4;
      v24 = v10;
      do
      {
        v27 = v24 << 8;
        *(a3 + 24) = v27;
        v28 = 255;
        if (v26 < v3 && v26 >= v23)
        {
          v28 = *v26;
        }

        v24 = v28 | v27;
        *(a3 + 24) = v24;
        v26 = (v26 + 1);
        --v25;
      }

      while (v25);
    }

    *a3 = ++v4;
    v21 = (v24 >> v9) | v10;
    v10 = v24 << -v9;
    if (!v9)
    {
      v10 = 0;
    }

    *(a3 + 24) = v10;
    *(a3 + 28) = v9;
    v19 = v3 - v4;
    v20 = 8 * (v3 - v4);
  }

  else
  {
    v20 = 8 * v19;
    v9 -= 32;
    v21 = v10;
  }

  *(a2 + 4) = v21;
  if (v20 + v9 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v56 = "Cannot read distAttnParams.mRefDistance";
    goto LABEL_82;
  }

  *(a3 + 28) = v9 - 32;
  if (v9 - 32 < 0)
  {
    v30 = v19 & ~(v19 >> 63);
    v31 = *(a3 + 8);
    if ((v30 & 0xFFFFFFFC) != 0 && v31 <= v4)
    {
      v32 = bswap32(*v4);
    }

    else
    {
      v33 = 4;
      v34 = v4;
      v32 = v10;
      do
      {
        v35 = v32 << 8;
        *(a3 + 24) = v35;
        v36 = 255;
        if (v34 < v3 && v34 >= v31)
        {
          v36 = *v34;
        }

        v32 = v36 | v35;
        *(a3 + 24) = v32;
        v34 = (v34 + 1);
        --v33;
      }

      while (v33);
    }

    *a3 = ++v4;
    v29 = (v32 >> v9) | v10;
    v10 = v32 << -v9;
    if (!v9)
    {
      v10 = 0;
    }

    *(a3 + 24) = v10;
    *(a3 + 28) = v9;
    v19 = v3 - v4;
    v20 = 8 * (v3 - v4);
  }

  else
  {
    v9 -= 32;
    v29 = v10;
  }

  *(a2 + 8) = v29;
  if (v20 + v9 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v56 = "Cannot read distAttnParams.mMaxDistance";
    goto LABEL_82;
  }

  *(a3 + 28) = v9 - 32;
  if (v9 - 32 < 0)
  {
    v38 = v19 & ~(v19 >> 63);
    v39 = *(a3 + 8);
    if ((v38 & 0xFFFFFFFC) != 0 && v39 <= v4)
    {
      v40 = bswap32(*v4);
    }

    else
    {
      v41 = 4;
      v42 = v4;
      v40 = v10;
      do
      {
        v43 = v40 << 8;
        *(a3 + 24) = v43;
        v44 = 255;
        if (v42 < v3 && v42 >= v39)
        {
          v44 = *v42;
        }

        v40 = v44 | v43;
        *(a3 + 24) = v40;
        v42 = (v42 + 1);
        --v41;
      }

      while (v41);
    }

    *a3 = ++v4;
    v37 = (v40 >> v9) | v10;
    v10 = v40 << -v9;
    if (!v9)
    {
      v10 = 0;
    }

    *(a3 + 24) = v10;
    *(a3 + 28) = v9;
    v19 = v3 - v4;
    v20 = 8 * (v3 - v4);
  }

  else
  {
    v9 -= 32;
    v37 = v10;
  }

  *(a2 + 12) = v37;
  if ((v20 + v9 < 0) ^ __OFADD__(v20, v9) | (v20 + v9 == 0))
  {
    exception = __cxa_allocate_exception(8uLL);
    v56 = "Cannot read distAttnParams.mAttnNormIndex";
LABEL_82:
    *exception = v56;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v45 = v10 >> 31;
  *(a3 + 28) = v9 - 1;
  if (v9 - 1 < 0)
  {
    v47 = v19 & ~(v19 >> 63);
    v48 = *(a3 + 8);
    if ((v47 & 0xFFFFFFFC) != 0 && v48 <= v4)
    {
      v10 = bswap32(*v4);
    }

    else
    {
      v49 = 4;
      v50 = v4;
      do
      {
        v51 = v10 << 8;
        *(a3 + 24) = v51;
        v52 = 255;
        if (v50 < v3 && v50 >= v48)
        {
          v52 = *v50;
        }

        v10 = v52 | v51;
        *(a3 + 24) = v10;
        v50 = (v50 + 1);
        --v49;
      }

      while (v49);
    }

    v53 = v10 << (1 - v9);
    v54 = v9 + 31;
    *(a3 + 28) = v54;
    *a3 = v4 + 1;
    v45 |= v10 >> v54;
    if (v54)
    {
      v46 = v53;
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 2 * v10;
  }

  *(a3 + 24) = v46;
  *(a2 + 16) = v45 != 0;
}

void APAC::MetadataBitStreamParser::parseGenericRenderingConfig(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v72 = "Cannot read cfg.mHasPreset";
    goto LABEL_118;
  }

  v7 = *(a3 + 24);
  v8 = v7 >> 31;
  v9 = v6 - 1;
  *(a3 + 28) = v6 - 1;
  if (v6 - 1 < 0)
  {
    v11 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v11 > v4)
    {
      v13 = 4;
      v14 = v4;
      do
      {
        v15 = v7 << 8;
        *(a3 + 24) = v15;
        v16 = 255;
        if (v14 < v3 && v14 >= v11)
        {
          v16 = *v14;
        }

        v7 = v16 | v15;
        *(a3 + 24) = v7;
        v14 = (v14 + 1);
        --v13;
      }

      while (v13);
    }

    else
    {
      v7 = bswap32(*v4);
    }

    v18 = v6 + 31;
    v17 = v6 == -31;
    *(a3 + 28) = v6 + 31;
    *a3 = ++v4;
    v8 |= v7 >> (v6 + 31);
    if (v6 == -31)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7 << (1 - v6);
    }

    if (v17)
    {
      v9 = 0;
    }

    else
    {
      v9 = v18;
    }
  }

  else
  {
    v10 = 2 * v7;
  }

  *(a3 + 24) = v10;
  *a2 = v8 != 0;
  v19 = v3 - v4;
  v20 = v9 + 8 * (v3 - v4);
  if (v8)
  {
    if (v20 > 10)
    {
      v21 = v10 >> 21;
      *(a3 + 28) = v9 - 11;
      if (v9 - 11 < 0)
      {
        v26 = *(a3 + 8);
        if ((v19 & ~(v19 >> 63) & 0xFFFFFFFC) != 0 && v26 <= v4)
        {
          v10 = bswap32(*v4);
        }

        else
        {
          v28 = 4;
          v29 = v4;
          do
          {
            v30 = v10 << 8;
            *(a3 + 24) = v30;
            v31 = 255;
            if (v29 < v3 && v29 >= v26)
            {
              v31 = *v29;
            }

            v10 = v31 | v30;
            *(a3 + 24) = v10;
            v29 = (v29 + 1);
            --v28;
          }

          while (v28);
        }

        v32 = v10 << (11 - v9);
        v33 = v9 + 21;
        *(a3 + 28) = v33;
        *a3 = v4 + 1;
        v21 |= v10 >> v33;
        if (v33)
        {
          v22 = v32;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = v10 << 11;
      }

      *(a3 + 24) = v22;
      *(a2 + 2) = v21;
      return;
    }

    exception = __cxa_allocate_exception(8uLL);
    v72 = "Cannot read cfg.mPresetIndex";
LABEL_118:
    *exception = v72;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v20 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v72 = "Cannot read cfg.mDataLocationIndex";
    goto LABEL_118;
  }

  v23 = v10 >> 30;
  v24 = v9 - 2;
  *(a3 + 28) = v9 - 2;
  if (v9 - 2 < 0)
  {
    v27 = *(a3 + 8);
    if ((v19 & ~(v19 >> 63) & 0xFFFFFFFC) != 0 && v27 <= v4)
    {
      v10 = bswap32(*v4);
    }

    else
    {
      v34 = 4;
      v35 = v4;
      do
      {
        v36 = v10 << 8;
        *(a3 + 24) = v36;
        v37 = 255;
        if (v35 < v3 && v35 >= v27)
        {
          v37 = *v35;
        }

        v10 = v37 | v36;
        *(a3 + 24) = v10;
        v35 = (v35 + 1);
        --v34;
      }

      while (v34);
    }

    *a3 = ++v4;
    v24 = v9 + 30;
    v23 |= v10 >> (v9 + 30);
    if (v9 == -30)
    {
      v38 = 0;
      v25 = 0;
      *(a2 + 4) = v23;
      *(a3 + 24) = 0xFFFFFFF700000000;
      goto LABEL_53;
    }

    v25 = v10 << (2 - v9);
  }

  else
  {
    v25 = 4 * v10;
  }

  *(a2 + 4) = v23;
  v38 = v25 >> 23;
  v39 = v24 - 9;
  *(a3 + 24) = v25;
  *(a3 + 28) = v24 - 9;
  if (v24 - 9 >= 0)
  {
    v40 = v25 << 9;
    goto LABEL_63;
  }

  v27 = *(a3 + 8);
LABEL_53:
  if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v27 <= v4)
  {
    v25 = bswap32(*v4);
  }

  else
  {
    v41 = 4;
    v42 = v4;
    do
    {
      v43 = v25 << 8;
      *(a3 + 24) = v43;
      v44 = 255;
      if (v42 < v3 && v42 >= v27)
      {
        v44 = *v42;
      }

      v25 = v44 | v43;
      *(a3 + 24) = v25;
      v42 = (v42 + 1);
      --v41;
    }

    while (v41);
  }

  *a3 = ++v4;
  v39 = v24 + 23;
  v38 |= v25 >> (v24 + 23);
  if (v24 == -23)
  {
    v45 = 0;
    v40 = 0;
    *(a2 + 6) = v38;
    *(a3 + 24) = 0xFFFFFFF700000000;
    goto LABEL_67;
  }

  v40 = v25 << (9 - v24);
LABEL_63:
  *(a2 + 6) = v38;
  v45 = v40 >> 23;
  v46 = v39 - 9;
  *(a3 + 24) = v40;
  *(a3 + 28) = v39 - 9;
  if (v39 - 9 >= 0)
  {
    v47 = v40 << 9;
    goto LABEL_81;
  }

  v27 = *(a3 + 8);
LABEL_67:
  if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v27 <= v4)
  {
    v40 = bswap32(*v4);
  }

  else
  {
    v48 = 4;
    v49 = v4;
    do
    {
      v50 = v40 << 8;
      *(a3 + 24) = v50;
      v51 = 255;
      if (v49 < v3 && v49 >= v27)
      {
        v51 = *v49;
      }

      v40 = v51 | v50;
      *(a3 + 24) = v40;
      v49 = (v49 + 1);
      --v48;
    }

    while (v48);
  }

  *(a3 + 28) = v39 + 23;
  *a3 = ++v4;
  v45 |= v40 >> (v39 + 23);
  if (v39 == -23)
  {
    v47 = 0;
  }

  else
  {
    v47 = v40 << (9 - v39);
  }

  if (v39 == -23)
  {
    v46 = 0;
  }

  else
  {
    v46 = v39 + 23;
  }

LABEL_81:
  *(a3 + 24) = v47;
  *(a2 + 8) = v45;
  if (v46 + 8 * (v3 - v4) <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v72 = "Cannot read cfg.mFallbackIndex";
    goto LABEL_118;
  }

  v52 = v47 >> 21;
  v53 = v46 - 11;
  *(a3 + 28) = v46 - 11;
  if (v46 - 11 < 0)
  {
    v55 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v55 <= v4)
    {
      v47 = bswap32(*v4);
    }

    else
    {
      v56 = 4;
      v57 = v4;
      do
      {
        v58 = v47 << 8;
        *(a3 + 24) = v58;
        v59 = 255;
        if (v57 < v3 && v57 >= v55)
        {
          v59 = *v57;
        }

        v47 = v59 | v58;
        *(a3 + 24) = v47;
        v57 = (v57 + 1);
        --v56;
      }

      while (v56);
    }

    v60 = v47 << (11 - v46);
    v61 = v46 + 21;
    *(a3 + 28) = v61;
    *a3 = ++v4;
    v52 |= v47 >> v61;
    if (v61)
    {
      v54 = v60;
    }

    else
    {
      v54 = 0;
    }

    if (v61)
    {
      v53 = v61;
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {
    v54 = v47 << 11;
  }

  *(a3 + 24) = v54;
  *(a2 + 10) = v52;
  if (v53 + 8 * (v3 - v4) <= 16)
  {
    exception = __cxa_allocate_exception(8uLL);
    v72 = "Cannot read cfg.mDataByteSize";
    goto LABEL_118;
  }

  v62 = v54 >> 15;
  *(a3 + 28) = v53 - 17;
  if (v53 - 17 < 0)
  {
    v64 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v64 <= v4)
    {
      v54 = bswap32(*v4);
    }

    else
    {
      v65 = 4;
      v66 = v4;
      do
      {
        v67 = v54 << 8;
        *(a3 + 24) = v67;
        v68 = 255;
        if (v66 < v3 && v66 >= v64)
        {
          v68 = *v66;
        }

        v54 = v68 | v67;
        *(a3 + 24) = v54;
        v66 = (v66 + 1);
        --v65;
      }

      while (v65);
    }

    v69 = v54 << (17 - v53);
    v70 = v53 + 15;
    *(a3 + 28) = v70;
    *a3 = v4 + 1;
    v62 |= v54 >> v70;
    if (v70)
    {
      v63 = v69;
    }

    else
    {
      v63 = 0;
    }
  }

  else
  {
    v63 = v54 << 17;
  }

  *(a3 + 24) = v63;
  *(a2 + 12) = v62;
}