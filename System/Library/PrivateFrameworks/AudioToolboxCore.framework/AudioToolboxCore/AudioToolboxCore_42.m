void APAC::MetadataBitStreamParser::parseDolbyStaticData(uint64_t a1, BOOL *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v29 = "Cannot read pDolby.hasData";
    goto LABEL_39;
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
    if (v9 + 8 * (v3 - v4) > 1)
    {
      v19 = v10 >> 30;
      *(a3 + 28) = v9 - 2;
      if (v9 - 2 < 0)
      {
        v21 = *(a3 + 8);
        if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v21 <= v4)
        {
          v10 = bswap32(*v4);
        }

        else
        {
          v22 = 4;
          v23 = v4;
          do
          {
            v24 = v10 << 8;
            *(a3 + 24) = v24;
            v25 = 255;
            if (v23 < v3 && v23 >= v21)
            {
              v25 = *v23;
            }

            v10 = v25 | v24;
            *(a3 + 24) = v10;
            v23 = (v23 + 1);
            --v22;
          }

          while (v22);
        }

        v26 = v10 << (2 - v9);
        v27 = v9 + 30;
        *(a3 + 28) = v27;
        *a3 = v4 + 1;
        v19 |= v10 >> v27;
        if (v27)
        {
          v20 = v26;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 4 * v10;
      }

      *(a3 + 24) = v20;
      a2[1] = v19;
      return;
    }

    exception = __cxa_allocate_exception(8uLL);
    v29 = "Cannot read pDolby.headphoneRenderingData";
LABEL_39:
    *exception = v29;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }
}

void APAC::MetadataBitStreamParser::parseRadiationPattern(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v39 = "Cannot read rP.isPHASE";
    goto LABEL_58;
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

    v17 = v7 << (1 - v6);
    v18 = v6 + 31;
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
    v10 = 2 * v7;
  }

  *(a3 + 24) = v10;
  *a2 = v8 != 0;
  if (!v8)
  {
    if (v9 + 8 * (v3 - v4) <= 2)
    {
      exception = __cxa_allocate_exception(8uLL);
      v39 = "Cannot read rP.AuSMProcIndex";
      goto LABEL_58;
    }

    v19 = v10 >> 29;
    v20 = v9 - 3;
    *(a3 + 28) = v9 - 3;
    if (v9 - 3 < 0)
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

      v27 = v10 << (3 - v9);
      v28 = v9 + 29;
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
      v21 = 8 * v10;
    }

    *(a3 + 24) = v21;
    *(a2 + 1) = v19;
    if (v19 == 1)
    {
      if (v20 + 8 * (v3 - v4) > 9)
      {
        v29 = v21 >> 22;
        *(a3 + 28) = v20 - 10;
        if (v20 - 10 < 0)
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

          v36 = v21 << (10 - v20);
          v37 = v20 + 22;
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
          v30 = v21 << 10;
        }

        *(a3 + 24) = v30;
        *(a2 + 2) = v29;
        return;
      }

      exception = __cxa_allocate_exception(8uLL);
      v39 = "Cannot read rP.sourceType";
LABEL_58:
      *exception = v39;
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }
  }
}

void APAC::MetadataBitStreamParser::parseStaticGroup(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v67 = "Cannot read sG.groupID";
    goto LABEL_117;
  }

  v7 = *(a3 + 24);
  v8 = v7 >> 25;
  v9 = v6 - 7;
  *(a3 + 28) = v6 - 7;
  if (v6 - 7 < 0)
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

    v17 = v7 << (7 - v6);
    v18 = v6 + 25;
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
    v10 = v7 << 7;
  }

  *(a3 + 24) = v10;
  *a2 = v8;
  if (v9 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v67 = "Cannot read sG.isGlobal";
    goto LABEL_117;
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
  a2[1] = v19 != 0;
  if (!v19)
  {
    if (v20 + 8 * (v3 - v4) <= 6)
    {
      exception = __cxa_allocate_exception(8uLL);
      v67 = "Cannot read sG.memberCount";
    }

    else
    {
      v29 = v21 >> 25;
      v30 = v20 - 7;
      *(a3 + 28) = v20 - 7;
      if (v20 - 7 < 0)
      {
        v32 = *(a3 + 8);
        if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v32 <= v4)
        {
          v21 = bswap32(*v4);
        }

        else
        {
          v33 = 4;
          v34 = v4;
          do
          {
            v35 = v21 << 8;
            *(a3 + 24) = v35;
            v36 = 255;
            if (v34 < v3 && v34 >= v32)
            {
              v36 = *v34;
            }

            v21 = v36 | v35;
            *(a3 + 24) = v21;
            v34 = (v34 + 1);
            --v33;
          }

          while (v33);
        }

        v37 = v21 << (7 - v20);
        v38 = v20 + 25;
        *(a3 + 28) = v38;
        *a3 = ++v4;
        v29 |= v21 >> v38;
        if (v38)
        {
          v31 = v37;
        }

        else
        {
          v31 = 0;
        }

        if (v38)
        {
          v30 = v38;
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v31 = v21 << 7;
      }

      *(a3 + 24) = v31;
      a2[2] = v29;
      if (v30 + 8 * (v3 - v4) <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v67 = "Cannot read sG.hasConjunctMembers";
      }

      else
      {
        v39 = v31 >> 31;
        v40 = v30 - 1;
        *(a3 + 28) = v30 - 1;
        if (v30 - 1 < 0)
        {
          v42 = *(a3 + 8);
          if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v42 <= v4)
          {
            v31 = bswap32(*v4);
          }

          else
          {
            v43 = 4;
            v44 = v4;
            do
            {
              v45 = v31 << 8;
              *(a3 + 24) = v45;
              v46 = 255;
              if (v44 < v3 && v44 >= v42)
              {
                v46 = *v44;
              }

              v31 = v46 | v45;
              *(a3 + 24) = v31;
              v44 = (v44 + 1);
              --v43;
            }

            while (v43);
          }

          v48 = v30 + 31;
          v47 = v30 == -31;
          *(a3 + 28) = v30 + 31;
          *a3 = ++v4;
          v39 |= v31 >> (v30 + 31);
          if (v30 == -31)
          {
            v41 = 0;
          }

          else
          {
            v41 = v31 << (1 - v30);
          }

          if (v47)
          {
            v40 = 0;
          }

          else
          {
            v40 = v48;
          }
        }

        else
        {
          v41 = 2 * v31;
        }

        *(a3 + 24) = v41;
        a2[3] = v39 != 0;
        if (v39)
        {
          if (v40 + 8 * (v3 - v4) > 6)
          {
            v49 = v41 >> 25;
            *(a3 + 28) = v40 - 7;
            if (v40 - 7 < 0)
            {
              v58 = *(a3 + 8);
              if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v58 <= v4)
              {
                v41 = bswap32(*v4);
              }

              else
              {
                v59 = 4;
                v60 = v4;
                do
                {
                  v61 = v41 << 8;
                  *(a3 + 24) = v61;
                  v62 = 255;
                  if (v60 < v3 && v60 >= v58)
                  {
                    v62 = *v60;
                  }

                  v41 = v62 | v61;
                  *(a3 + 24) = v41;
                  v60 = (v60 + 1);
                  --v59;
                }

                while (v59);
              }

              v63 = v41 << (7 - v40);
              v64 = v40 + 25;
              *(a3 + 28) = v64;
              *a3 = v4 + 1;
              v49 |= v41 >> v64;
              if (v64)
              {
                v50 = v63;
              }

              else
              {
                v50 = 0;
              }
            }

            else
            {
              v50 = v41 << 7;
            }

            *(a3 + 24) = v50;
            a2[4] = v49;
            goto LABEL_108;
          }

          exception = __cxa_allocate_exception(8uLL);
          v67 = "Cannot read sG.startASCID";
        }

        else
        {
          if (!v29)
          {
            goto LABEL_108;
          }

          v51 = 0;
          v52 = *(a3 + 8);
          while (1)
          {
            a1 = v3 - v4;
            if (v40 + 8 * (v3 - v4) <= 6)
            {
              break;
            }

            v53 = v41 >> 25;
            *(a3 + 28) = v40 - 7;
            if (v40 - 7 < 0)
            {
              if ((a1 & ~(a1 >> 63) & 0xFFFFFFFC) != 0 && v52 <= v4)
              {
                v41 = bswap32(*v4);
              }

              else
              {
                v54 = 4;
                v55 = v4;
                do
                {
                  v56 = v41 << 8;
                  *(a3 + 24) = v56;
                  v57 = 255;
                  if (v55 < v3 && v55 >= v52)
                  {
                    v57 = *v55;
                  }

                  v41 = v57 | v56;
                  *(a3 + 24) = v41;
                  v55 = (v55 + 1);
                  --v54;
                }

                while (v54);
              }

              a1 = v41 << (7 - v40);
              v40 += 25;
              *(a3 + 28) = v40;
              *a3 = ++v4;
              v53 |= v41 >> v40;
              if (v40)
              {
                v41 = a1;
              }

              else
              {
                v41 = 0;
              }

              if (!v40)
              {
                v40 = 0;
              }
            }

            else
            {
              v41 <<= 7;
              v40 -= 7;
            }

            *(a3 + 24) = v41;
            a2[v51++ + 5] = v53;
            if (v51 == v29)
            {
              goto LABEL_108;
            }
          }

          exception = __cxa_allocate_exception(8uLL);
          v67 = "Cannot read sG.ASCIDList[m]";
        }
      }
    }

LABEL_117:
    *exception = v67;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

LABEL_108:
  v65 = (a2 + 132);

  APAC::MetadataBitStreamParser::parseProprietaryStaticData(a1, v65, a3);
}

void APAC::MetadataBitStreamParser::parseScreenData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v131 = "Cannot read sD.hasData";
    goto LABEL_172;
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
    v19 = v3 - v4;
    if (v9 + 8 * (v3 - v4) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v131 = "Cannot read sD.aspectRatio";
    }

    else
    {
      *(a3 + 28) = v9 - 32;
      if (v9 - 32 < 0)
      {
        v22 = *(a3 + 8);
        if ((v19 & ~(v19 >> 63) & 0xFFFFFFFC) != 0 && v22 <= v4)
        {
          v23 = bswap32(*v4);
        }

        else
        {
          v24 = 4;
          v25 = v4;
          v23 = v10;
          do
          {
            v26 = v23 << 8;
            *(a3 + 24) = v26;
            v27 = 255;
            if (v25 < v3 && v25 >= v22)
            {
              v27 = *v25;
            }

            v23 = v27 | v26;
            *(a3 + 24) = v23;
            v25 = (v25 + 1);
            --v24;
          }

          while (v24);
        }

        *a3 = ++v4;
        v21 = (v23 >> v9) | v10;
        v10 = v23 << -v9;
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
      if ((v20 + v9 < 0) ^ __OFADD__(v20, v9) | (v20 + v9 == 0))
      {
        exception = __cxa_allocate_exception(8uLL);
        v131 = "Cannot read sD.cartesian";
      }

      else
      {
        v28 = v10 >> 31;
        v29 = v9 - 1;
        *(a3 + 28) = v9 - 1;
        if (v9 - 1 < 0)
        {
          v31 = *(a3 + 8);
          if ((v19 & ~(v19 >> 63) & 0xFFFFFFFC) != 0 && v31 <= v4)
          {
            v10 = bswap32(*v4);
          }

          else
          {
            v32 = 4;
            v33 = v4;
            do
            {
              v34 = v10 << 8;
              *(a3 + 24) = v34;
              v35 = 255;
              if (v33 < v3 && v33 >= v31)
              {
                v35 = *v33;
              }

              v10 = v35 | v34;
              *(a3 + 24) = v10;
              v33 = (v33 + 1);
              --v32;
            }

            while (v32);
          }

          v37 = v9 + 31;
          v36 = v9 == -31;
          *(a3 + 28) = v9 + 31;
          *a3 = ++v4;
          v28 |= v10 >> (v9 + 31);
          if (v9 == -31)
          {
            v30 = 0;
          }

          else
          {
            v30 = v10 << (1 - v9);
          }

          if (v36)
          {
            v29 = 0;
          }

          else
          {
            v29 = v37;
          }
        }

        else
        {
          v30 = 2 * v10;
        }

        *(a3 + 24) = v30;
        *(a2 + 1) = v28 != 0;
        v38 = v3 - v4;
        v39 = v29 + 8 * (v3 - v4);
        if (v28)
        {
          if (v39 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v131 = "Cannot read sD.screenCentrePosition.co_ut.cartesian.X";
          }

          else
          {
            *(a3 + 28) = v29 - 32;
            if (v29 - 32 < 0)
            {
              v40 = v38 & ~(v38 >> 63);
              v41 = *(a3 + 8);
              if ((v40 & 0xFFFFFFFC) != 0 && v41 <= v4)
              {
                v42 = bswap32(*v4);
              }

              else
              {
                v46 = 4;
                v47 = v4;
                v42 = v30;
                do
                {
                  v48 = v42 << 8;
                  *(a3 + 24) = v48;
                  v49 = 255;
                  if (v47 < v3 && v47 >= v41)
                  {
                    v49 = *v47;
                  }

                  v42 = v49 | v48;
                  *(a3 + 24) = v42;
                  v47 = (v47 + 1);
                  --v46;
                }

                while (v46);
              }

              *a3 = v4 + 1;
              v30 |= v42 >> v29;
              v50 = v42 << -v29;
              if (!v29)
              {
                v50 = 0;
              }

              *(a3 + 24) = v50;
              *(a3 + 28) = v29;
            }

            *(a2 + 8) = v30;
            v51 = *(a3 + 16);
            v52 = *a3;
            v53 = v51 - *a3;
            v54 = *(a3 + 28);
            if (v54 + 8 * v53 <= 31)
            {
              exception = __cxa_allocate_exception(8uLL);
              v131 = "Cannot read sD.screenCentrePosition.co_ut.cartesian.Y";
            }

            else
            {
              v55 = *(a3 + 24);
              *(a3 + 28) = v54 - 32;
              if (v54 - 32 < 0)
              {
                v56 = v53 & ~(v53 >> 63);
                v57 = *(a3 + 8);
                if ((v56 & 0xFFFFFFFC) != 0 && v57 <= v52)
                {
                  v58 = bswap32(*v52);
                }

                else
                {
                  v59 = 4;
                  v60 = v52;
                  v58 = v55;
                  do
                  {
                    v61 = v58 << 8;
                    *(a3 + 24) = v61;
                    v62 = 255;
                    if (v60 < v51 && v60 >= v57)
                    {
                      v62 = *v60;
                    }

                    v58 = v62 | v61;
                    *(a3 + 24) = v58;
                    v60 = (v60 + 1);
                    --v59;
                  }

                  while (v59);
                }

                *a3 = v52 + 1;
                v55 |= v58 >> v54;
                v63 = v58 << -v54;
                if (!v54)
                {
                  v63 = 0;
                }

                *(a3 + 24) = v63;
                *(a3 + 28) = v54;
              }

              *(a2 + 12) = v55;
              v64 = *(a3 + 16);
              v65 = *a3;
              v66 = v64 - *a3;
              v67 = *(a3 + 28);
              if (v67 + 8 * v66 <= 31)
              {
                exception = __cxa_allocate_exception(8uLL);
                v131 = "Cannot read sD.screenCentrePosition.co_ut.cartesian.Z";
              }

              else
              {
                v68 = *(a3 + 24);
                *(a3 + 28) = v67 - 32;
                if (v67 - 32 < 0)
                {
                  v69 = v66 & ~(v66 >> 63);
                  v70 = *(a3 + 8);
                  if ((v69 & 0xFFFFFFFC) != 0 && v70 <= v65)
                  {
                    v71 = bswap32(*v65);
                  }

                  else
                  {
                    v72 = 4;
                    v73 = v65;
                    v71 = v68;
                    do
                    {
                      v74 = v71 << 8;
                      *(a3 + 24) = v74;
                      v75 = 255;
                      if (v73 < v64 && v73 >= v70)
                      {
                        v75 = *v73;
                      }

                      v71 = v75 | v74;
                      *(a3 + 24) = v71;
                      v73 = (v73 + 1);
                      --v72;
                    }

                    while (v72);
                  }

                  *a3 = v65 + 1;
                  v68 |= v71 >> v67;
                  v76 = v71 << -v67;
                  if (!v67)
                  {
                    v76 = 0;
                  }

                  *(a3 + 24) = v76;
                  *(a3 + 28) = v67;
                }

                *(a2 + 16) = v68;
                v77 = *(a3 + 16);
                v78 = *a3;
                v79 = v77 - *a3;
                v80 = *(a3 + 28);
                if (v80 + 8 * v79 > 31)
                {
                  v81 = *(a3 + 24);
                  *(a3 + 28) = v80 - 32;
                  if (v80 - 32 >= 0)
                  {
                    v82 = 20;
LABEL_159:
                    *(a2 + v82) = v81;
                    return;
                  }

                  v83 = *(a3 + 8);
                  if ((v79 & ~(v79 >> 63) & 0xFFFFFFFC) != 0 && v83 <= v78)
                  {
                    v84 = bswap32(*v78);
                  }

                  else
                  {
                    v85 = 4;
                    v86 = v78;
                    v84 = v81;
                    do
                    {
                      v87 = v84 << 8;
                      *(a3 + 24) = v87;
                      v88 = 255;
                      if (v86 < v77 && v86 >= v83)
                      {
                        v88 = *v86;
                      }

                      v84 = v88 | v87;
                      *(a3 + 24) = v84;
                      v86 = (v86 + 1);
                      --v85;
                    }

                    while (v85);
                  }

                  *(a3 + 28) = v80;
                  *a3 = v78 + 1;
                  v81 |= v84 >> v80;
                  v82 = 20;
                  goto LABEL_155;
                }

                exception = __cxa_allocate_exception(8uLL);
                v131 = "Cannot read sD.screenWidth.X";
              }
            }
          }
        }

        else if (v39 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v131 = "Cannot read sD.screenCentrePosition.co_ut.spherical.azimuth";
        }

        else
        {
          *(a3 + 28) = v29 - 32;
          if (v29 - 32 < 0)
          {
            v43 = v38 & ~(v38 >> 63);
            v44 = *(a3 + 8);
            if ((v43 & 0xFFFFFFFC) != 0 && v44 <= v4)
            {
              v45 = bswap32(*v4);
            }

            else
            {
              v89 = 4;
              v90 = v4;
              v45 = v30;
              do
              {
                v91 = v45 << 8;
                *(a3 + 24) = v91;
                v92 = 255;
                if (v90 < v3 && v90 >= v44)
                {
                  v92 = *v90;
                }

                v45 = v92 | v91;
                *(a3 + 24) = v45;
                v90 = (v90 + 1);
                --v89;
              }

              while (v89);
            }

            *a3 = v4 + 1;
            v30 |= v45 >> v29;
            v93 = v45 << -v29;
            if (!v29)
            {
              v93 = 0;
            }

            *(a3 + 24) = v93;
            *(a3 + 28) = v29;
          }

          *(a2 + 8) = v30;
          v94 = *(a3 + 16);
          v95 = *a3;
          v96 = v94 - *a3;
          v97 = *(a3 + 28);
          if (v97 + 8 * v96 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v131 = "Cannot read sD.screenCentrePosition.co_ut.spherical.elevation";
          }

          else
          {
            v98 = *(a3 + 24);
            *(a3 + 28) = v97 - 32;
            if (v97 - 32 < 0)
            {
              v99 = v96 & ~(v96 >> 63);
              v100 = *(a3 + 8);
              if ((v99 & 0xFFFFFFFC) != 0 && v100 <= v95)
              {
                v101 = bswap32(*v95);
              }

              else
              {
                v102 = 4;
                v103 = v95;
                v101 = v98;
                do
                {
                  v104 = v101 << 8;
                  *(a3 + 24) = v104;
                  v105 = 255;
                  if (v103 < v94 && v103 >= v100)
                  {
                    v105 = *v103;
                  }

                  v101 = v105 | v104;
                  *(a3 + 24) = v101;
                  v103 = (v103 + 1);
                  --v102;
                }

                while (v102);
              }

              *a3 = v95 + 1;
              v98 |= v101 >> v97;
              v106 = v101 << -v97;
              if (!v97)
              {
                v106 = 0;
              }

              *(a3 + 24) = v106;
              *(a3 + 28) = v97;
            }

            *(a2 + 12) = v98;
            v107 = *(a3 + 16);
            v108 = *a3;
            v109 = v107 - *a3;
            v110 = *(a3 + 28);
            if (v110 + 8 * v109 <= 31)
            {
              exception = __cxa_allocate_exception(8uLL);
              v131 = "Cannot read sD.screenCentrePosition.co_ut.spherical.distance";
            }

            else
            {
              v111 = *(a3 + 24);
              *(a3 + 28) = v110 - 32;
              if (v110 - 32 < 0)
              {
                v112 = v109 & ~(v109 >> 63);
                v113 = *(a3 + 8);
                if ((v112 & 0xFFFFFFFC) != 0 && v113 <= v108)
                {
                  v114 = bswap32(*v108);
                }

                else
                {
                  v115 = 4;
                  v116 = v108;
                  v114 = v111;
                  do
                  {
                    v117 = v114 << 8;
                    *(a3 + 24) = v117;
                    v118 = 255;
                    if (v116 < v107 && v116 >= v113)
                    {
                      v118 = *v116;
                    }

                    v114 = v118 | v117;
                    *(a3 + 24) = v114;
                    v116 = (v116 + 1);
                    --v115;
                  }

                  while (v115);
                }

                *a3 = v108 + 1;
                v111 |= v114 >> v110;
                v119 = v114 << -v110;
                if (!v110)
                {
                  v119 = 0;
                }

                *(a3 + 24) = v119;
                *(a3 + 28) = v110;
              }

              *(a2 + 16) = v111;
              v120 = *(a3 + 16);
              v121 = *a3;
              v122 = v120 - *a3;
              v80 = *(a3 + 28);
              if (v80 + 8 * v122 > 31)
              {
                v81 = *(a3 + 24);
                *(a3 + 28) = v80 - 32;
                if (v80 - 32 >= 0)
                {
                  v82 = 24;
                  goto LABEL_159;
                }

                v123 = *(a3 + 8);
                if ((v122 & ~(v122 >> 63) & 0xFFFFFFFC) != 0 && v123 <= v121)
                {
                  v84 = bswap32(*v121);
                }

                else
                {
                  v124 = 4;
                  v125 = v121;
                  v84 = v81;
                  do
                  {
                    v126 = v84 << 8;
                    *(a3 + 24) = v126;
                    v127 = 255;
                    if (v125 < v120 && v125 >= v123)
                    {
                      v127 = *v125;
                    }

                    v84 = v127 | v126;
                    *(a3 + 24) = v84;
                    v125 = (v125 + 1);
                    --v124;
                  }

                  while (v124);
                }

                *(a3 + 28) = v80;
                *a3 = v121 + 1;
                v81 |= v84 >> v80;
                v82 = 24;
LABEL_155:
                v128 = v84 << -v80;
                if (v80)
                {
                  v129 = v128;
                }

                else
                {
                  v129 = 0;
                }

                *(a3 + 24) = v129;
                goto LABEL_159;
              }

              exception = __cxa_allocate_exception(8uLL);
              v131 = "Cannot read sD.screenWidth.azimuth";
            }
          }
        }
      }
    }

LABEL_172:
    *exception = v131;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }
}

void APAC::MetadataBitStreamParser::parseConfig(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4)
{
  v10[0] = a2;
  v10[1] = a2;
  v10[2] = &a2[a3];
  v11 = 0;
  if ((a2 & 3) != 0)
  {
    v4 = 0;
    v5 = (a2 ^ 3) & 3;
    v6 = a2 + 1;
    v7 = a2;
    do
    {
      if (v7 >= &a2[a3])
      {
        v8 = 255;
      }

      else
      {
        v8 = *v7;
      }

      v4 = v8 | (v4 << 8);
      ++v7;
    }

    while ((v6++ & 3) != 0);
    v10[0] = &a2[v5 + 1];
    LODWORD(v11) = v4 << ((8 * v5) ^ 0x18);
    HIDWORD(v11) = 8 * ((a2 ^ 3) & 3) + 8;
  }

  APAC::MetadataBitStreamParser::parseMetadataConfig(a1, a4, v10);
}

void APAC::MetadataBitStreamParser::parseMetadataConfig(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Cannot read mdCfg.mRendererMetadataConfigPresent";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v7 = *(a3 + 24);
  v8 = v7 >> 31;
  *(a3 + 28) = v6 - 1;
  if (v6 - 1 < 0)
  {
    v10 = v5 & ~(v5 >> 63) & 0xFFFFFFFC;
    v11 = *(a3 + 8);
    if (v10)
    {
      v12 = v11 > v4;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
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

    v17 = v7 << (1 - v6);
    v18 = v6 + 31;
    *(a3 + 28) = v18;
    *a3 = v4 + 1;
    v8 |= v7 >> v18;
    if (v18)
    {
      v9 = v17;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 2 * v7;
  }

  *(a3 + 24) = v9;
  *(a2 + 1) = v8 != 0;
  if (v8)
  {
    v19 = a2 + 8;

    APAC::MetadataBitStreamParser::parseRendererMetadataConfig(a1, v19, a3);
  }
}

void APAC::MetadataBitStreamParser::parseRendererMetadataConfig(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v65 = "Cannot read rMdCfg.mGlobalConfig.mHasData";
    goto LABEL_75;
  }

  v9 = *(a3 + 24);
  v10 = v9 >> 31;
  v11 = v6 - 1;
  *(a3 + 28) = v6 - 1;
  if (v6 - 1 < 0)
  {
    v13 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v13 > v4)
    {
      v15 = 4;
      v16 = v4;
      do
      {
        v17 = v9 << 8;
        *(a3 + 24) = v17;
        v18 = 255;
        if (v16 < v3 && v16 >= v13)
        {
          v18 = *v16;
        }

        v9 = v18 | v17;
        *(a3 + 24) = v9;
        v16 = (v16 + 1);
        --v15;
      }

      while (v15);
    }

    else
    {
      v9 = bswap32(*v4);
    }

    v19 = v9 << (1 - v6);
    v20 = v6 + 31;
    *(a3 + 28) = v20;
    *a3 = v4 + 1;
    v10 |= v9 >> v20;
    if (v20)
    {
      v12 = v19;
    }

    else
    {
      v12 = 0;
    }

    if (v20)
    {
      v11 = v20;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = 2 * v9;
  }

  *(a3 + 24) = v12;
  *(a2 + 8) = v10 != 0;
  v21 = a2 + 8;
  if (v10)
  {
    APAC::MetadataBitStreamParser::parseGlobalConfig(a1, v21, 1, a3);
    v12 = *(a3 + 24);
    v11 = *(a3 + 28);
  }

  v22 = v12 >> 21;
  *(a3 + 28) = v11 - 11;
  if (v11 - 11 < 0)
  {
    v25 = *(a3 + 8);
    v24 = *(a3 + 16);
    v26 = *a3;
    if (((v24 - *a3) & ~((v24 - *a3) >> 63) & 0xFFFFFFFC) != 0 && v25 <= v26)
    {
      v12 = bswap32(*v26);
    }

    else
    {
      v27 = 4;
      v28 = *a3;
      do
      {
        v29 = v12 << 8;
        *(a3 + 24) = v29;
        v30 = 255;
        if (v28 < v24 && v28 >= v25)
        {
          v30 = *v28;
        }

        v12 = v30 | v29;
        *(a3 + 24) = v12;
        v28 = (v28 + 1);
        --v27;
      }

      while (v27);
    }

    v31 = v12 << (11 - v11);
    v32 = v11 + 21;
    *(a3 + 28) = v32;
    *a3 = v26 + 1;
    v22 |= v12 >> v32;
    if (v32)
    {
      v23 = v31;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = v12 << 11;
  }

  *(a3 + 24) = v23;
  *a2 = v22;
  v33 = v22;
  std::vector<APAC::Metadata::GroupConfig>::resize((a2 + 4776), v33);
  v35 = *(a2 + 4808);
  v36 = *(a2 + 4800);
  v37 = 0x6F96F96F96F96F97 * ((v35 - v36) >> 5);
  v38 = v33 >= v37;
  v39 = v33 - v37;
  if (v39 != 0 && v38)
  {
    v40 = *(a2 + 4816);
    if (0x6F96F96F96F96F97 * ((v40 - v35) >> 5) < v39)
    {
      v41 = 0x6F96F96F96F96F97 * ((v40 - v36) >> 5);
      v42 = 2 * v41;
      if (2 * v41 <= v33)
      {
        v42 = v33;
      }

      if (v41 >= 0x1A41A41A41A41ALL)
      {
        v43 = 0x34834834834834;
      }

      else
      {
        v43 = v42;
      }

      if (v43 <= 0x34834834834834)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v44 = v35 + 1248 * v39;
    do
    {
      bzero(v35, 0x4C0uLL);
      *(v35 + 1046) = 1;
      v45 = v35 + 1100;
      *(v35 + 1100) = 0;
      *(v35 + 1105) = 0;
      *(v35 + 1152) = 0;
      *(v35 + 1157) = 0;
      *(v35 + 1047) = 0u;
      *(v35 + 1063) = 0u;
      *(v35 + 1079) = 0u;
      *(v35 + 1216) = 0u;
      *(v35 + 1232) = 0u;
      v35 += 1248;
      *(v45 - 6) = 0;
    }

    while (v35 != v44);
  }

  else
  {
    if (v38)
    {
      goto LABEL_52;
    }

    v44 = v36 + 1248 * v33;
    while (v35 != v44)
    {
      v35 -= 1248;
      APAC::Metadata::RendererData::~RendererData(v35);
    }
  }

  *(a2 + 4808) = v44;
LABEL_52:
  if (v33)
  {
    v46 = 0;
    while (1)
    {
      APAC::MetadataBitStreamParser::parseGroupConfig(v34, *(a2 + 4776) + 48 * v46, 1, a3);
      v47 = *(a3 + 16);
      v48 = *a3;
      v49 = v47 - *a3;
      v50 = *(a3 + 28);
      if (v50 + 8 * v49 <= 0)
      {
        break;
      }

      v51 = *(a3 + 24);
      v52 = v51 >> 31;
      *(a3 + 28) = v50 - 1;
      if (v50 - 1 < 0)
      {
        v54 = v49 & ~(v49 >> 63) & 0xFFFFFFFC;
        v55 = *(a3 + 8);
        if (v54)
        {
          v56 = v55 > v48;
        }

        else
        {
          v56 = 1;
        }

        if (v56)
        {
          v57 = 4;
          v58 = v48;
          do
          {
            v59 = v51 << 8;
            *(a3 + 24) = v59;
            v60 = 255;
            if (v58 < v47 && v58 >= v55)
            {
              v60 = *v58;
            }

            v51 = v60 | v59;
            *(a3 + 24) = v51;
            v58 = (v58 + 1);
            --v57;
          }

          while (v57);
        }

        else
        {
          v51 = bswap32(*v48);
        }

        v61 = v51 << (1 - v50);
        v62 = v50 + 31;
        *(a3 + 28) = v62;
        *a3 = v48 + 1;
        v52 |= v51 >> v62;
        if (v62)
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
        v53 = 2 * v51;
      }

      *(a3 + 24) = v53;
      v63 = (*(a2 + 4800) + 1248 * v46);
      *v63 = v52 != 0;
      if (v52)
      {
        APAC::MetadataBitStreamParser::parseRendererData(v34, v63, 1, a3);
      }

      if (++v46 == v33)
      {
        return;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v65 = "Cannot read rMdCfg.mRendererData[gp].mHasData";
LABEL_75:
    *exception = v65;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }
}

uint64_t TBitstreamWriter<unsigned short>::Flush(uint64_t result)
{
  v1 = result;
  v2 = *(result + 28);
  if ((v2 & 7) != 0)
  {
    result = AT::TBitstreamWriter<unsigned short>::PutBits(result, 0, *(result + 28) & 7);
    v2 = *(v1 + 28);
  }

  if (v2 == 16)
  {
    v3 = *(v1 + 8);
  }

  else
  {
    v3 = *(v1 + 8);
    v4 = 8 - v2;
    do
    {
      *v3 = *(v1 + 24) >> v4;
      v3 = *(v1 + 8) + 1;
      *(v1 + 8) = v3;
      v4 -= 8;
    }

    while (v4 != -8);
  }

  *(v1 + 28) = 16;
  *(v1 + 32) = v3 & 1;
  return result;
}

id APComponent_NSExtension::getExtension(APComponent_NSExtension *this)
{
  v2 = *(this + 21);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:*(this + 20) error:0];
    v4 = *(this + 21);
    *(this + 21) = v3;

    v2 = *(this + 21);
  }

  return v2;
}

void APComponent_NSExtension::~APComponent_NSExtension(APComponent_NSExtension *this)
{
  APComponent_NSExtension::~APComponent_NSExtension(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033C098;
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 23);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  APComponent::~APComponent(this);
}

void sub_18F8A77FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t create_shared_APComponent_Remote<RemoteV2Instance>(AudioComponentDescription const&,AUComponentFlags,applesauce::CF::StringRef const&,unsigned int,std::function<NSXPCConnection * ()(NSUUID *)>,applesauce::CF::ArrayRef const&,applesauce::CF::StringRef)::{lambda(AudioComponentDescription const*)#1}::~ArrayRef(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  return std::__function::__value_func<NSXPCConnection * ()(NSUUID *)>::~__value_func[abi:ne200100](a1);
}

uint64_t std::__shared_ptr_pointer<APComponent_RemoteV2 *,std::shared_ptr<APComponent_RemoteV2>::__shared_ptr_default_delete<APComponent_RemoteV2,APComponent_RemoteV2>,std::allocator<APComponent_RemoteV2>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void std::__shared_ptr_pointer<APComponent_RemoteV2 *,std::shared_ptr<APComponent_RemoteV2>::__shared_ptr_default_delete<APComponent_RemoteV2,APComponent_RemoteV2>,std::allocator<APComponent_RemoteV2>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void APComponent_RemoteV2::~APComponent_RemoteV2(APComponent *this)
{
  *this = &unk_1F033C118;
  v2 = *(this + 20);
  if (v2)
  {
    CFRelease(v2);
  }

  APComponent::~APComponent(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033C118;
  v2 = *(this + 20);
  if (v2)
  {
    CFRelease(v2);
  }

  APComponent::~APComponent(this);
}

void std::__function::__func<std::shared_ptr<APComponent> create_shared_APComponent_Remote<RemoteV2Instance>(AudioComponentDescription const&,AUComponentFlags,applesauce::CF::StringRef const&,unsigned int,std::function<NSXPCConnection * ()(NSUUID *)>,applesauce::CF::ArrayRef const&,applesauce::CF::StringRef)::{lambda(AudioComponentDescription const*)#1},std::allocator<std::shared_ptr<APComponent> create_shared_APComponent_Remote<RemoteV2Instance>(AudioComponentDescription const&,AUComponentFlags,applesauce::CF::StringRef const&,unsigned int,std::function<NSXPCConnection * ()(NSUUID *)>,applesauce::CF::ArrayRef const&,applesauce::CF::StringRef)::{lambda(AudioComponentDescription const*)#1}>,AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:*(a1 + 48)];
  operator new();
}

void sub_18F8A7BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  std::__function::__value_func<NSXPCConnection * ()(NSUUID *)>::~__value_func[abi:ne200100](va2);
  AUv3InstanceBase::~AUv3InstanceBase(v4);

  std::__function::__value_func<NSXPCConnection * ()(NSUUID *)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<NSXPCConnection * ()(NSUUID *)>::~__value_func[abi:ne200100](va);
  MEMORY[0x193ADF220](v4, 0x10A1C4002A128E6);

  _Unwind_Resume(a1);
}

void AUv3InstanceXPC::OpenAsync(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN15AUv3InstanceXPC9OpenAsyncEP28OpaqueAudioComponentInstancejU13block_pointerFvS1_iE_block_invoke;
  block[3] = &unk_1E72C2848;
  v11 = a1;
  v12 = a2;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

uint64_t ___ZN15AUv3InstanceXPC9OpenAsyncEP28OpaqueAudioComponentInstancejU13block_pointerFvS1_iE_block_invoke(uint64_t a1)
{
  if (!(*(**(a1 + 40) + 32))(*(a1 + 40), *(a1 + 48)))
  {
    v2 = *(a1 + 48);
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

uint64_t AUv3InstanceXPC::Open(AUv3InstanceXPC *this, OpaqueAudioComponentInstance *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(this + 50);
  if (v3 && (buf = *(this + 48), AUHostingServiceClient::loadRemotely(v3, &buf)))
  {
    v5 = *(*(this + 50) + 72);
    v6 = [AUAudioUnit_RemoteV2 alloc];
    v7 = *(this + 50);
    *(this + 50) = 0;
    v16 = 0;
    v17 = v7;
    buf = *(this + 48);
    v8 = [(AUAudioUnit_RemoteV2 *)v6 initWithXPCService:&v17 componentDescription:&buf instance:a2 instanceUUID:v5 error:&v16];
    v9 = v16;
    std::unique_ptr<AUHostingServiceClient>::~unique_ptr[abi:ne200100](&v17);
    if (v8)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      AUv3InstanceBase::DoOpen(this, a2, v8);
      v12 = 0;
    }

    else
    {
      if (!gAudioComponentLogCategory)
      {
        operator new();
      }

      v11 = *gAudioComponentLogCategory;
      if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
      {
        buf.componentType = 136315650;
        *&buf.componentSubType = "AUNSExtension.mm";
        LOWORD(buf.componentFlags) = 1024;
        *(&buf.componentFlags + 2) = 492;
        HIWORD(buf.componentFlagsMask) = 2112;
        v19 = v9;
        _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to open AudioUnit remotely: %@", &buf, 0x1Cu);
      }

      (*(*this + 8))(this);
      if (v9)
      {
        v12 = [v9 code];
      }

      else
      {
        v12 = 4294956421;
      }
    }
  }

  else
  {
    (*(*this + 8))(this, a2);
    v12 = 4294956421;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

void RemoteV2Instance::~RemoteV2Instance(AUHostingServiceClient **this)
{
  *this = &unk_1F033C5E8;
  std::unique_ptr<AUHostingServiceClient>::~unique_ptr[abi:ne200100](this + 50);
  AUv3InstanceBase::~AUv3InstanceBase(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033C5E8;
  std::unique_ptr<AUHostingServiceClient>::~unique_ptr[abi:ne200100](this + 50);

  AUv3InstanceBase::~AUv3InstanceBase(this);
}

void AUv3InstanceBase::~AUv3InstanceBase(id *this)
{
  *this = &unk_1F033C378;
  if (*(this + 280) == 1)
  {
    WeakRetained = objc_loadWeakRetained(this + 25);
    [WeakRetained removeObserver:this[34] forKeyPath:@"parameterTree" context:0];
  }

  v3 = this[34];
  this[34] = 0;

  objc_destroyWeak(this + 41);
  std::__tree<std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AUParameterGroup * {__strong}>>>::destroy(this[38]);

  v5 = this + 31;
  std::vector<AUv3InstanceBase::ScopeElementIDObj>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = this + 28;
  std::vector<AUv3InstanceBase::ScopeElementIDObj>::__destroy_vector::operator()[abi:ne200100](&v5);
  objc_destroyWeak(this + 25);

  AUv3RenderAdapter::~AUv3RenderAdapter((this + 17));
  v4 = this[16];
  this[16] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = this + 13;
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void AUv3InstanceXPC::~AUv3InstanceXPC(AUHostingServiceClient **this)
{
  *this = &unk_1F033C5E8;
  std::unique_ptr<AUHostingServiceClient>::~unique_ptr[abi:ne200100](this + 50);
  AUv3InstanceBase::~AUv3InstanceBase(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033C5E8;
  std::unique_ptr<AUHostingServiceClient>::~unique_ptr[abi:ne200100](this + 50);

  AUv3InstanceBase::~AUv3InstanceBase(this);
}

void std::__function::__func<std::shared_ptr<APComponent> create_shared_APComponent_Remote<RemoteV2Instance>(AudioComponentDescription const&,AUComponentFlags,applesauce::CF::StringRef const&,unsigned int,std::function<NSXPCConnection * ()(NSUUID *)>,applesauce::CF::ArrayRef const&,applesauce::CF::StringRef)::{lambda(AudioComponentDescription const*)#1},std::allocator<std::shared_ptr<APComponent> create_shared_APComponent_Remote<RemoteV2Instance>(AudioComponentDescription const&,AUComponentFlags,applesauce::CF::StringRef const&,unsigned int,std::function<NSXPCConnection * ()(NSUUID *)>,applesauce::CF::ArrayRef const&,applesauce::CF::StringRef)::{lambda(AudioComponentDescription const*)#1}>,AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<std::shared_ptr<APComponent> create_shared_APComponent_Remote<RemoteV2Instance>(AudioComponentDescription const&,AUComponentFlags,applesauce::CF::StringRef const&,unsigned int,std::function<NSXPCConnection * ()(NSUUID *)>,applesauce::CF::ArrayRef const&,applesauce::CF::StringRef)::{lambda(AudioComponentDescription const*)#1},std::allocator<std::shared_ptr<APComponent> create_shared_APComponent_Remote<RemoteV2Instance>(AudioComponentDescription const&,AUComponentFlags,applesauce::CF::StringRef const&,unsigned int,std::function<NSXPCConnection * ()(NSUUID *)>,applesauce::CF::ArrayRef const&,applesauce::CF::StringRef)::{lambda(AudioComponentDescription const*)#1}>,AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__alloc_func<std::shared_ptr<APComponent> create_shared_APComponent_Remote<RemoteV2Instance>(AudioComponentDescription const&,AUComponentFlags,applesauce::CF::StringRef const&,unsigned int,std::function<NSXPCConnection * ()(NSUUID *)>,applesauce::CF::ArrayRef const&,applesauce::CF::StringRef)::{lambda(AudioComponentDescription const*)#1},std::allocator<std::shared_ptr<APComponent> create_shared_APComponent_Remote<RemoteV2Instance>(AudioComponentDescription const&,AUComponentFlags,applesauce::CF::StringRef const&,unsigned int,std::function<NSXPCConnection * ()(NSUUID *)>,applesauce::CF::ArrayRef const&,applesauce::CF::StringRef)::{lambda(AudioComponentDescription const*)#1}>,AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  return std::__function::__value_func<NSXPCConnection * ()(NSUUID *)>::~__value_func[abi:ne200100](a1);
}

uint64_t std::__function::__func<std::shared_ptr<APComponent> create_shared_APComponent_Remote<RemoteV2Instance>(AudioComponentDescription const&,AUComponentFlags,applesauce::CF::StringRef const&,unsigned int,std::function<NSXPCConnection * ()(NSUUID *)>,applesauce::CF::ArrayRef const&,applesauce::CF::StringRef)::{lambda(AudioComponentDescription const*)#1},std::allocator<std::shared_ptr<APComponent> create_shared_APComponent_Remote<RemoteV2Instance>(AudioComponentDescription const&,AUComponentFlags,applesauce::CF::StringRef const&,unsigned int,std::function<NSXPCConnection * ()(NSUUID *)>,applesauce::CF::ArrayRef const&,applesauce::CF::StringRef)::{lambda(AudioComponentDescription const*)#1}>,AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F033C4B0;
  result = std::__function::__value_func<NSXPCConnection * ()(NSUUID *)>::__value_func[abi:ne200100]((a2 + 1), a1 + 8);
  v5 = *(a1 + 40);
  if (v5)
  {
    result = CFRetain(*(a1 + 40));
  }

  a2[5] = v5;
  v6 = *(a1 + 48);
  if (v6)
  {
    result = CFRetain(v6);
  }

  a2[6] = v6;
  return result;
}

void std::__function::__func<std::shared_ptr<APComponent> create_shared_APComponent_Remote<RemoteV2Instance>(AudioComponentDescription const&,AUComponentFlags,applesauce::CF::StringRef const&,unsigned int,std::function<NSXPCConnection * ()(NSUUID *)>,applesauce::CF::ArrayRef const&,applesauce::CF::StringRef)::{lambda(AudioComponentDescription const*)#1},std::allocator<std::shared_ptr<APComponent> create_shared_APComponent_Remote<RemoteV2Instance>(AudioComponentDescription const&,AUComponentFlags,applesauce::CF::StringRef const&,unsigned int,std::function<NSXPCConnection * ()(NSUUID *)>,applesauce::CF::ArrayRef const&,applesauce::CF::StringRef)::{lambda(AudioComponentDescription const*)#1}>,AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::~__func(void *a1)
{
  *a1 = &unk_1F033C4B0;
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  std::__function::__value_func<NSXPCConnection * ()(NSUUID *)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x193ADF220);
}

void *std::__function::__func<std::shared_ptr<APComponent> create_shared_APComponent_Remote<RemoteV2Instance>(AudioComponentDescription const&,AUComponentFlags,applesauce::CF::StringRef const&,unsigned int,std::function<NSXPCConnection * ()(NSUUID *)>,applesauce::CF::ArrayRef const&,applesauce::CF::StringRef)::{lambda(AudioComponentDescription const*)#1},std::allocator<std::shared_ptr<APComponent> create_shared_APComponent_Remote<RemoteV2Instance>(AudioComponentDescription const&,AUComponentFlags,applesauce::CF::StringRef const&,unsigned int,std::function<NSXPCConnection * ()(NSUUID *)>,applesauce::CF::ArrayRef const&,applesauce::CF::StringRef)::{lambda(AudioComponentDescription const*)#1}>,AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::~__func(void *a1)
{
  *a1 = &unk_1F033C4B0;
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  std::__function::__value_func<NSXPCConnection * ()(NSUUID *)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void AUAudioUnitSubclassInstance::OpenAsync(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v6 = (*(*a1 + 32))(a1, a2);
  v7[2](v7, a2, v6);
}

uint64_t AUAudioUnitSubclassInstance::Open(Class *this, OpaqueAudioComponentInstance *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(this[50]);
  *buf = *(this + 3);
  *&buf[16] = *(this + 16);
  v12 = 0;
  v5 = [v4 initWithComponentDescription:buf error:&v12];
  v6 = v12;
  if (v5)
  {
    AUv3InstanceBase::DoOpen(this, a2, v5);
    v7 = 0;
  }

  else
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v8 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AUNSExtension.mm";
      *&buf[12] = 1024;
      *&buf[14] = 356;
      *&buf[18] = 2112;
      v14 = v6;
      _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to open AudioUnit extension: %@", buf, 0x1Cu);
    }

    (*(*this + 1))(this);
    if ([v6 code])
    {
      v7 = [v6 code];
    }

    else
    {
      v7 = 0xFFFFFFFFLL;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

void AUAudioUnitSubclassInstance::~AUAudioUnitSubclassInstance(id *this)
{
  AUv3InstanceBase::~AUv3InstanceBase(this);

  JUMPOUT(0x193ADF220);
}

uint64_t initInterAppAudioLogging()
{
  if (initInterAppAudioLogging::once != -1)
  {
    dispatch_once(&initInterAppAudioLogging::once, &__block_literal_global_13285);
  }

  return kInterAppAudioScope;
}

uint64_t std::__function::__func<APComponent_NSExtension::APComponent_NSExtension(AudioComponentRegistrationInfo const&,NSString *,NSExtension *)::$_0,std::allocator<APComponent_NSExtension::APComponent_NSExtension(AudioComponentRegistrationInfo const&,NSString *,NSExtension *)::$_0>,AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = (*(*v3 + 32))(v3);
  if (v3[21])
  {
    operator new();
  }

  return 0;
}

void AUNSExtensionInstance::OpenAsync(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 400);
  v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZN21AUNSExtensionInstance9OpenAsyncEP28OpaqueAudioComponentInstancejU13block_pointerFvS1_iE_block_invoke;
  v10[3] = &unk_1E72C2820;
  v11 = v7;
  v12 = a1;
  v13 = a2;
  v9 = v7;
  [AUAudioUnit_XH instantiateWithExtension:v8 componentDescription:&v14 instance:a2 options:a3 completionHandler:v10];
}

void ___ZN21AUNSExtensionInstance9OpenAsyncEP28OpaqueAudioComponentInstancejU13block_pointerFvS1_iE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v7 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "AUNSExtension.mm";
      v13 = 1024;
      v14 = 106;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to open AudioUnit extension: %@", &v11, 0x1Cu);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, [v6 code]);
  }

  else
  {
    AUv3InstanceBase::DoOpen(*(a1 + 40), *(a1 + 48), v5);
    v8 = *(a1 + 48);
    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t AUNSExtensionInstance::Open(AUNSExtensionInstance *this, OpaqueAudioComponentInstance *a2)
{
  if (this)
  {
    (*(*this + 8))(this, a2);
  }

  return 4294967292;
}

void AUNSExtensionInstance::~AUNSExtensionInstance(id *this)
{
  AUv3InstanceBase::~AUv3InstanceBase(this);

  JUMPOUT(0x193ADF220);
}

{

  AUv3InstanceBase::~AUv3InstanceBase(this);
}

OSStatus AudioUnitExtensionSetComponentList(CFStringRef extensionIdentifier, CFArrayRef audioComponentInfo)
{
  v22 = *MEMORY[0x1E69E9840];
  if (getenv("DYLD_FRAMEWORK_PATH"))
  {
LABEL_2:
    GlobalComponentPluginMgr(v17);
    v4 = AudioComponentMgr_NSExtension::setExtensionComponentList(*&v17[8], &extensionIdentifier->isa, audioComponentInfo);
    if (*v17)
    {
      std::recursive_mutex::unlock(*v17);
    }

    goto LABEL_15;
  }

  MainBundle = CFBundleGetMainBundle();
  if (MainBundle && (Identifier = CFBundleGetIdentifier(MainBundle)) != 0)
  {
    v7 = Identifier;
    if (CFStringHasPrefix(extensionIdentifier, Identifier))
    {
      goto LABEL_2;
    }

    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v8 = *gAudioComponentLogCategory;
    v4 = 1885696621;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
    {
      *v17 = 136315906;
      *&v17[4] = "AUNSExtension.mm";
      *&v17[12] = 1024;
      *&v17[14] = 399;
      v18 = 2112;
      v19 = extensionIdentifier;
      v20 = 2112;
      v21 = v7;
      v11 = "%25s:%-5d AudioUnitExtensionSetComponentList: failing because the extension identifier %@ is not prefixed by the main bundle ID %@.";
      v12 = v8;
      v13 = 38;
      goto LABEL_14;
    }
  }

  else
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v9 = *gAudioComponentLogCategory;
    v4 = 1651401791;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
    {
      *v17 = 136315394;
      *&v17[4] = "AUNSExtension.mm";
      *&v17[12] = 1024;
      *&v17[14] = 394;
      v11 = "%25s:%-5d AudioUnitExtensionSetComponentList: failing because there is no main bundle or it has no identifier.";
      v12 = v9;
      v13 = 18;
LABEL_14:
      _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_ERROR, v11, v17, v13);
    }
  }

LABEL_15:
  v14 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_18F8A910C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::recursive_mutex *a9)
{
  if (a9)
  {
    std::recursive_mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef AudioUnitExtensionCopyComponentList(CFStringRef extensionIdentifier)
{
  GlobalComponentPluginMgr(v5);
  v2 = AudioComponentMgr_NSExtension::getExtensionComponentList(v5[1], &extensionIdentifier->isa);
  if (v5[0])
  {
    std::recursive_mutex::unlock(v5[0]);
  }

  if (v2)
  {
    v3 = v2;
  }

  return v2;
}

void sub_18F8A918C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::recursive_mutex *a9)
{
  if (a9)
  {
    std::recursive_mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F8A9214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  applesauce::CF::StringRef::~StringRef(&a9);
  std::__function::__value_func<NSXPCConnection * ()(NSUUID *)>::~__value_func[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void create_shared_APComponent_RemoteV2WithExistingConnection(uint64_t a1, uint64_t a2, void **a3, const void **a4)
{
  v14 = *MEMORY[0x1E69E9840];
  CFRetain(&stru_1F0340B48);
  v11[1] = &stru_1F0340B48;
  v6 = CFGetTypeID(&stru_1F0340B48);
  if (v6 == CFStringGetTypeID())
  {
    applesauce::xpc::object::object(v11, *a3);
    v13 = 0;
    v12[0] = &unk_1F033C710;
    v12[1] = v11[0];
    v7 = xpc_null_create();
    v8 = v11[0];
    v11[0] = v7;

    v13 = v12;
    v9 = *a4;
    if (v9)
    {
      CFRetain(v9);
    }

    create_shared_APComponent_Remote<RemoteV2Instance>();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Could not construct");
}

void sub_18F8A93CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, const void *a16, __int16 a17, char a18, char a19)
{
  __cxa_free_exception(v19);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a16);
  _Unwind_Resume(a1);
}

id std::__function::__func<create_shared_APComponent_RemoteV2WithExistingConnection(AudioComponentDescription const&,applesauce::xpc::endpoint,applesauce::CF::StringRef)::$_0,std::allocator<create_shared_APComponent_RemoteV2WithExistingConnection(AudioComponentDescription const&,applesauce::xpc::endpoint,applesauce::CF::StringRef)::$_0>,NSXPCConnection * ()(NSUUID *)>::operator()(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 8);
  [v2 _setEndpoint:v3];

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v2];

  return v4;
}

void std::__function::__func<create_shared_APComponent_RemoteV2WithExistingConnection(AudioComponentDescription const&,applesauce::xpc::endpoint,applesauce::CF::StringRef)::$_0,std::allocator<create_shared_APComponent_RemoteV2WithExistingConnection(AudioComponentDescription const&,applesauce::xpc::endpoint,applesauce::CF::StringRef)::$_0>,NSXPCConnection * ()(NSUUID *)>::destroy_deallocate(id *a1)
{
  v2 = a1[1];
  a1[1] = 0;

  operator delete(a1);
}

void std::__function::__func<create_shared_APComponent_RemoteV2WithExistingConnection(AudioComponentDescription const&,applesauce::xpc::endpoint,applesauce::CF::StringRef)::$_0,std::allocator<create_shared_APComponent_RemoteV2WithExistingConnection(AudioComponentDescription const&,applesauce::xpc::endpoint,applesauce::CF::StringRef)::$_0>,NSXPCConnection * ()(NSUUID *)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;

  v3 = *(a1 + 8);
}

void std::__function::__func<create_shared_APComponent_RemoteV2WithExistingConnection(AudioComponentDescription const&,applesauce::xpc::endpoint,applesauce::CF::StringRef)::$_0,std::allocator<create_shared_APComponent_RemoteV2WithExistingConnection(AudioComponentDescription const&,applesauce::xpc::endpoint,applesauce::CF::StringRef)::$_0>,NSXPCConnection * ()(NSUUID *)>::~__func(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = &unk_1F033C710;
  *(a1 + 8) = 0;

  JUMPOUT(0x193ADF220);
}

uint64_t std::__function::__func<create_shared_APComponent_RemoteV2WithExistingConnection(AudioComponentDescription const&,applesauce::xpc::endpoint,applesauce::CF::StringRef)::$_0,std::allocator<create_shared_APComponent_RemoteV2WithExistingConnection(AudioComponentDescription const&,applesauce::xpc::endpoint,applesauce::CF::StringRef)::$_0>,NSXPCConnection * ()(NSUUID *)>::~__func(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = &unk_1F033C710;
  *(a1 + 8) = 0;

  return a1;
}

uint64_t *AUMetadata_log_category(void)
{
  {
    qword_1EAD0E4F0 = 0;
    AUMetadata_log_category(void)::gLog = os_log_create("com.apple.coreaudio", "AudioMetadata");
  }

  return &AUMetadata_log_category(void)::gLog;
}

void AudioMetadataFrame::AudioMetadataFrame(AudioMetadataFrame *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v1 = MEMORY[0x1E69E3C08];
  if (!*MEMORY[0x1E69E3C08])
  {
    MEMORY[0x193ADE7E0]();
    if (!*v1)
    {
      __break(1u);
    }
  }
}

void *AudioMetadataFrame::AudioMetadataFrame(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void AudioMetadataFrame::~AudioMetadataFrame(AudioMetadataFrame *this)
{
  std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](this);
}

{
  std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](this);
}

uint64_t *AudioMetadataFrame::begin_new(uint64_t *result, char *__src)
{
  v2 = __src;
  v3 = result;
  v4 = *(__src + 10);
  if (v4)
  {
    v5 = __src + 44;
    do
    {
      v5 += *(v5 + 2);
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = __src + 44;
  }

  v7 = v6 - __src;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result >= v6 - __src)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (v14 - v9 >= v7)
    {
      if (v6 != __src)
      {
        result = memmove(*result, __src, v6 - __src);
      }

      i = &v9[v7];
    }

    else
    {
      if (v14 != v9)
      {
        result = memmove(*result, __src, v14 - v9);
        v14 = v3[1];
      }

      v16 = &v2[v15];
      v17 = v14;
      if (&v2[v15] != v6)
      {
        v17 = v14;
        do
        {
          v18 = *v16++;
          *v17++ = v18;
        }

        while (v16 != v6);
      }

      i = v17;
    }

    goto LABEL_32;
  }

  if (!v9)
  {
LABEL_13:
    if ((v7 & 0x8000000000000000) != 0)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v8;
    if (2 * v8 <= v7)
    {
      v10 = v6 - v2;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<char,caulk::rt_allocator<char>>::__vallocate[abi:ne200100](v3, v11);
    for (i = v3[1]; v2 != v6; ++i)
    {
      v13 = *v2++;
      *i = v13;
    }

LABEL_32:
    v3[1] = i;
    return result;
  }

  result[1] = v9;
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v9);
    v8 = 0;
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t std::vector<char,caulk::rt_allocator<char>>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if (a2 < 0)
  {
LABEL_5:
    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
    goto LABEL_5;
  }

  result = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + a2;
  return result;
}

char **AudioMetadataFrame::append(char **result, char *__src)
{
  if (*(__src + 2) == 40)
  {
    v2 = result;
    gInvalidEventCount = 0;
    result = caulk::rt::vector<char>::insert<char const*>(result, result[1], __src, __src + 40);
    v3 = *v2;
    if (!*v2 || (v2[1] - v3) <= 0x2B)
    {
      v7 = CAAssertRtn();
      return caulk::rt::vector<char>::insert<char const*>(v7, v8, v9, v10);
    }

    v4 = (v3 + 40);
  }

  else
  {
    if (gInvalidEventCount > 0x1F3)
    {
      return result;
    }

    v5 = _os_log_pack_size();
    result = caulk::deferred_logger::create_message(gCADefaultDeferredLog, v5 + 88, 16);
    if (result)
    {
      v6 = result;
      *_os_log_pack_fill() = 0;
      result = caulk::concurrent::messenger::enqueue(*(gCADefaultDeferredLog + 16), v6);
    }

    v4 = &gInvalidEventCount;
  }

  ++*v4;
  return result;
}

caulk::rt_safe_memory_resource *caulk::rt::vector<char>::insert<char const*>(char **a1, char *__dst, char *__src, char *a4)
{
  v4 = __dst;
  v5 = a4 - __src;
  if (a4 - __src < 1)
  {
    return v4;
  }

  v6 = __src;
  v8 = a1[1];
  v9 = a1[2];
  if (v9 - v8 >= v5)
  {
    v17 = v8 - __dst;
    if (v8 - __dst >= v5)
    {
      v21 = &__dst[v5];
      v22 = &v8[-v5];
      v23 = a1[1];
      if (v8 >= v5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v8);
      }

      a1[1] = v23;
      if (v8 != v21)
      {
        memmove(&__dst[v5], __dst, v8 - v21);
      }

      v25 = v4;
      v26 = v6;
      v27 = v5;
    }

    else
    {
      v18 = &__src[v17];
      v19 = a1[1];
      while (v18 != a4)
      {
        v20 = *v18++;
        *v19++ = v20;
      }

      a1[1] = v19;
      if (v17 < 1)
      {
        return v4;
      }

      v28 = &__dst[v5];
      v29 = &v19[-v5];
      v30 = v19;
      if (&v19[-v5] < v8)
      {
        do
        {
          v31 = *v29++;
          *v30++ = v31;
        }

        while (v29 != v8);
      }

      a1[1] = v30;
      if (v19 != v28)
      {
        memmove(&__dst[v5], __dst, v19 - v28);
      }

      v25 = v4;
      v26 = v6;
      v27 = v17;
    }

    memmove(v25, v26, v27);
    return v4;
  }

  v10 = *a1;
  v11 = v8 - *a1 + v5;
  if (v11 < 0)
  {
    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v12 = v9 - v10;
  if (2 * v12 > v11)
  {
    v11 = 2 * v12;
  }

  if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v11;
  }

  v14 = MEMORY[0x1E69E3C08];
  if (v13)
  {
    result = *MEMORY[0x1E69E3C08];
    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_37;
    }

    v16 = caulk::rt_safe_memory_resource::rt_allocate(result);
  }

  else
  {
    v16 = 0;
  }

  v32 = (v16 + v4 - v10);
  v33 = &v32[v5];
  v34 = v32;
  do
  {
    v35 = *v6++;
    *v34++ = v35;
    --v5;
  }

  while (v5);
  v36 = v16 + v13;
  memcpy(v33, v4, a1[1] - v4);
  v37 = *a1;
  v38 = &v33[a1[1] - v4];
  a1[1] = v4;
  v39 = &v32[v37 - v4];
  memcpy(v39, v37, v4 - v37);
  v40 = *a1;
  *a1 = v39;
  a1[1] = v38;
  v41 = a1[2];
  a1[2] = v36;
  if (!v40)
  {
    return v32;
  }

  result = *v14;
  if (*v14)
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v40);
    return v32;
  }

LABEL_37:
  __break(1u);
  return result;
}

unint64_t AudioMetadataFrame::insert(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = AudioMetadataFrame::eventToImplIter(a1, a3);
  }

  else
  {
    v6 = a1[1];
  }

  caulk::rt::vector<char>::insert<char const*>(a1, v6, a4, (a4 + *(a4 + 8)));
  v7 = *a1;
  if (*a1 && a1[1] - v7 > 0x2B)
  {
    ++*(v7 + 40);
    return a1;
  }

  else
  {
    v9 = CAAssertRtn();
    return AudioMetadataFrame::eventToImplIter(v9, v10);
  }
}

unint64_t AudioMetadataFrame::eventToImplIter(unint64_t *a1, unint64_t a2)
{
  if (*a1 >= a2 || a2 - *a1 > a1[1] - *a1)
  {
    std::terminate();
  }

  return a2;
}

uint64_t AudioMetadataFrame::erase(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = *a1;
  if (*a1 && a1[1] - v3 > 0x2B)
  {
    if (!a3 || !*(v3 + 40))
    {
      std::terminate();
    }

    v7 = AudioMetadataFrame::eventToImplIter(a1, a3);
    v8 = *(a3 + 8);
    if (v8)
    {
      v9 = v7;
      v10 = &v7[v8];
      v11 = a1[1];
      v12 = v11 - v10;
      if (v11 != v10)
      {
        memmove(v7, v10, v11 - v10);
      }

      a1[1] = &v9[v12];
    }

    --*(v3 + 40);
    return a2;
  }

  else
  {
    v14 = CAAssertRtn();
    return AudioMetadataFrame::overlapsTimeRange(v14, v15, v16);
  }
}

CA::MetadataFrameQueue *AudioMetadataFrame::overlapsTimeRange(double **this, double a2, double a3)
{
  v3 = *this;
  if (*this && (this[1] - v3) > 0x2B)
  {
    v4 = *v3;
    v5 = v3[1];
    v6 = *v3 < a3;
    if (v4 + v5 > a2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = CAAssertRtn();
    return CA::MetadataFrameQueue::MetadataFrameQueue(v8);
  }
}

CA::MetadataFrameQueue *CA::MetadataFrameQueue::MetadataFrameQueue(CA::MetadataFrameQueue *this)
{
  *this = this;
  *(this + 1) = this;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v2 = MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    return this;
  }

  result = MEMORY[0x193ADE7E0]();
  if (*v2)
  {
    return this;
  }

  __break(1u);
  return result;
}

void sub_18F8AA220(_Unwind_Exception *a1)
{
  std::vector<AudioStreamPacketDescription,caulk::rt_allocator<AudioStreamPacketDescription>>::__destroy_vector::operator()[abi:ne200100]((v1 + 3));
  std::__list_imp<AudioMetadataFrame,caulk::rt_allocator<AudioMetadataFrame>>::clear(v1);
  _Unwind_Resume(a1);
}

void *std::__list_imp<AudioMetadataFrame,caulk::rt_allocator<AudioMetadataFrame>>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    while (result != v1)
    {
      v4 = result[1];
      std::__list_imp<AudioMetadataFrame,caulk::rt_allocator<AudioMetadataFrame>>::__delete_node[abi:ne200100](result);
      result = v4;
    }
  }

  return result;
}

caulk::rt_safe_memory_resource *std::__list_imp<AudioMetadataFrame,caulk::rt_allocator<AudioMetadataFrame>>::__delete_node[abi:ne200100](void *a1)
{
  std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](a1 + 16);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *CA::MetadataFrameQueue::appendFrame(CA::MetadataFrameQueue *this, double **a2)
{
  if (*(this + 2))
  {
    v4 = *(*this + 16);
    if (!v4 || *(*this + 24) - v4 <= 0x2BuLL)
    {
      goto LABEL_14;
    }

    v5 = *a2;
    if (!*a2 || (a2[1] - v5) <= 0x2B)
    {
      goto LABEL_15;
    }

    if (*v5 < *v4 + v4[1])
    {
      goto LABEL_16;
    }
  }

  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
LABEL_14:
    CAAssertRtn();
LABEL_15:
    CAAssertRtn();
LABEL_16:
    std::terminate();
  }

  result = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  v7 = result;
  *result = 0;
  result[1] = 0;
  v8 = *a2;
  v9 = a2[1];
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  if (v9 != v8)
  {
    result = std::vector<char,caulk::rt_allocator<char>>::__vallocate[abi:ne200100](result + 2, v9 - v8);
    v10 = v7[3];
    do
    {
      v11 = *v8;
      v8 = (v8 + 1);
      *v10++ = v11;
    }

    while (v8 != v9);
    v7[3] = v10;
  }

  v12 = *this;
  *v7 = *this;
  v7[1] = this;
  *(v12 + 8) = v7;
  *this = v7;
  ++*(this + 2);
  return result;
}

uint64_t *CA::MetadataFrameQueue::eraseBefore(CA::MetadataFrameQueue *this, double a2)
{
  result = *(this + 1);
  v4 = result[2];
  if (!v4 || (result[3] - v4) < 0x2C)
  {
    return CAAssertRtn();
  }

  while (*v4 + v4[1] <= a2)
  {
    v6 = *result;
    v7 = result[1];
    *(v6 + 8) = v7;
    *v7 = v6;
    --*(this + 2);
    std::__list_imp<AudioMetadataFrame,caulk::rt_allocator<AudioMetadataFrame>>::__delete_node[abi:ne200100](result);
    v4 = v7[2];
    if (v4)
    {
      result = v7;
      if ((v7[3] - v4) >= 0x2C)
      {
        continue;
      }
    }

    return CAAssertRtn();
  }

  return result;
}

caulk::rt_safe_memory_resource *CA::MetadataFrameQueue::extract(CA::MetadataFrameQueue *this, double a2, double a3, AudioMetadataFrame *a4)
{
  *(this + 4) = *(this + 3);
  v8 = *(this + 1);
  if (v8 != this)
  {
    v9 = 0;
    v10 = a2 + a3;
    v11 = MEMORY[0x1E69E3C08];
    while (1)
    {
      result = AudioMetadataFrame::overlapsTimeRange((v8 + 16), a2, a2 + a3);
      if (result)
      {
        v13 = *(this + 4);
        v14 = v13 - *(this + 3);
        v15 = *(v8 + 16);
        if (v15 && (v16 = *(v8 + 24), (v16 - v15) >= 0x2C))
        {
          v17 = v13 - *(this + 3);
          if (*(v15 + 40))
          {
            v18 = v15 + 44;
            while (1)
            {
              v19 = *(v18 + 12);
              if (v19 >= a2 && v19 < v10)
              {
                v21 = *(this + 5);
                if (v13 >= v21)
                {
                  v22 = *(this + 3);
                  v23 = (v13 - v22) >> 3;
                  if ((v23 + 1) >> 61)
                  {
                    goto LABEL_51;
                  }

                  v24 = v21 - v22;
                  v25 = v24 >> 2;
                  if (v24 >> 2 <= (v23 + 1))
                  {
                    v25 = v23 + 1;
                  }

                  if (v24 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v26 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v26 = v25;
                  }

                  if (v26)
                  {
                    if (v26 >> 61 || (result = *v11) == 0)
                    {
LABEL_52:
                      __break(1u);
                      return result;
                    }

                    v27 = caulk::rt_safe_memory_resource::rt_allocate(result);
                  }

                  else
                  {
                    v27 = 0;
                  }

                  v28 = v27 + 8 * v26;
                  v29 = (v27 + 8 * v23);
                  *v29 = v18;
                  v13 = v29 + 1;
                  v30 = *(this + 3);
                  v31 = *(this + 4) - v30;
                  v32 = (v27 + 8 * v23 - v31);
                  result = memcpy(v32, v30, v31);
                  v33 = *(this + 3);
                  *(this + 3) = v32;
                  *(this + 4) = v13;
                  v34 = *(this + 5);
                  *(this + 5) = v28;
                  if (v33)
                  {
                    if (v34 - v33 < 0)
                    {
                      goto LABEL_52;
                    }

                    result = *v11;
                    if (!*v11)
                    {
                      goto LABEL_52;
                    }

                    result = caulk::rt_safe_memory_resource::rt_deallocate(result, v33);
                  }
                }

                else
                {
                  *v13++ = v18;
                }

                *(this + 4) = v13;
                v16 = *(v8 + 24);
              }

              v18 += *(v18 + 8);
              if (v18 >= v16 - 1)
              {
                v17 = v13 - *(this + 3);
                break;
              }
            }
          }
        }

        else
        {
          v17 = v13 - *(this + 3);
        }

        if (v17 > v14)
        {
          ++v9;
        }
      }

      else
      {
        v35 = *(v8 + 16);
        if (!v35 || *(v8 + 24) - v35 <= 0x2BuLL)
        {
          CAAssertRtn();
LABEL_51:
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        if (*v35 >= a2)
        {
LABEL_41:
          if (v9 >= 2)
          {
            v36 = *(this + 3);
            v37 = *(this + 4);
            v38 = 126 - 2 * __clz((v37 - v36) >> 3);
            if (v37 == v36)
            {
              v39 = 0;
            }

            else
            {
              v39 = v38;
            }

            std::__introsort<std::_ClassicAlgPolicy,CA::MetadataFrameQueue::extract(double,double,AudioMetadataFrame &)::$_0 &,AudioMetadataEvent const**,false>(v36, v37, v39, 1);
          }

          break;
        }
      }

      v8 = *(v8 + 8);
      if (v8 == this)
      {
        goto LABEL_41;
      }
    }
  }

  *v43 = a2;
  *&v43[1] = a3;
  v43[2] = 0;
  v44 = 3;
  v45 = xmmword_18F901CC0;
  result = AudioMetadataFrame::begin_new(a4, v43);
  v41 = *(this + 3);
  v40 = *(this + 4);
  while (v41 != v40)
  {
    v42 = *v41++;
    result = AudioMetadataFrame::append(a4, v42);
  }

  return result;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,CA::MetadataFrameQueue::extract(double,double,AudioMetadataFrame &)::$_0 &,AudioMetadataEvent const**,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v116 = *v8;
        v117 = *v9;
        v118 = *(*v8 + 4);
        v119 = *(*v9 + 4);
        if (v118 == v119)
        {
          if (*(v116 + 12) >= *(v117 + 12))
          {
            return result;
          }
        }

        else if (v118 >= v119)
        {
          return result;
        }

        *v9 = v116;
        *v8 = v117;
        return result;
      }

      goto LABEL_10;
    }

    switch(v10)
    {
      case 3:
        v120 = *v9;
        v121 = v9[1];
        v122 = *(v121 + 4);
        v123 = *(*v9 + 4);
        if (v122 == v123)
        {
          if (*(v121 + 12) >= *(v120 + 12))
          {
            goto LABEL_218;
          }
        }

        else if (v122 >= v123)
        {
LABEL_218:
          v124 = *v8;
          v125 = *(*v8 + 4);
          if (v125 == v122)
          {
            if (*(v124 + 12) >= *(v121 + 12))
            {
              return result;
            }
          }

          else if (v125 >= v122)
          {
            return result;
          }

          v9[1] = v124;
          *v8 = v121;
          v201 = *v9;
          v200 = v9[1];
          v202 = *(v200 + 4);
          v203 = *(*v9 + 4);
          if (v202 == v203)
          {
            if (*(v200 + 12) >= *(v201 + 12))
            {
              return result;
            }
          }

          else if (v202 >= v203)
          {
            return result;
          }

          *v9 = v200;
          v9[1] = v201;
          return result;
        }

        v186 = *v8;
        v187 = *(*v8 + 4);
        if (v187 == v122)
        {
          if (*(v186 + 12) >= *(v121 + 12))
          {
            goto LABEL_311;
          }

LABEL_335:
          *v9 = v186;
        }

        else
        {
          if (v187 < v122)
          {
            goto LABEL_335;
          }

LABEL_311:
          *v9 = v121;
          v9[1] = v120;
          v188 = *v8;
          v189 = *(*v8 + 4);
          if (v189 == v123)
          {
            if (*(v188 + 12) >= *(v120 + 12))
            {
              return result;
            }
          }

          else if (v189 >= v123)
          {
            return result;
          }

          v9[1] = v188;
        }

        *v8 = v120;
        return result;
      case 4:

        return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CA::MetadataFrameQueue::extract(double,double,AudioMetadataFrame &)::$_0 &,AudioMetadataEvent const**,0>(v9, v9 + 1, v9 + 2, a2 - 1);
      case 5:
        result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CA::MetadataFrameQueue::extract(double,double,AudioMetadataFrame &)::$_0 &,AudioMetadataEvent const**,0>(v9, v9 + 1, v9 + 2, v9 + 3);
        v112 = *v8;
        v113 = v9[3];
        v114 = *(*v8 + 4);
        v115 = *(v113 + 4);
        if (v114 == v115)
        {
          if (*(v112 + 12) >= *(v113 + 12))
          {
            return result;
          }
        }

        else if (v114 >= v115)
        {
          return result;
        }

        v9[3] = v112;
        *v8 = v113;
        v183 = v9[2];
        v182 = v9[3];
        v184 = *(v182 + 4);
        v185 = *(v183 + 4);
        if (v184 == v185)
        {
          if (*(v182 + 12) >= *(v183 + 12))
          {
            return result;
          }
        }

        else if (v184 >= v185)
        {
          return result;
        }

        v9[2] = v182;
        v9[3] = v183;
        v198 = v9[1];
        v199 = *(v198 + 4);
        if (v184 == v199)
        {
          if (*(v182 + 12) >= *(v198 + 12))
          {
            return result;
          }
        }

        else if (v184 >= v199)
        {
          return result;
        }

        v9[1] = v182;
        v9[2] = v198;
        v204 = *v9;
        v205 = *(*v9 + 4);
        if (v184 == v205)
        {
          if (*(v182 + 12) >= *(v204 + 12))
          {
            return result;
          }
        }

        else if (v184 >= v205)
        {
          return result;
        }

        *v9 = v182;
        v9[1] = v204;
        return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return result;
      }

      v140 = (v10 - 2) >> 1;
      v141 = v140;
      while (2)
      {
        v142 = v141;
        if (v140 < v141)
        {
          goto LABEL_276;
        }

        v143 = (2 * v141) | 1;
        v144 = &v9[v143];
        if (2 * v142 + 2 >= v10)
        {
          goto LABEL_258;
        }

        v145 = v144[1];
        v146 = *(*v144 + 4);
        result = *(v145 + 4);
        if (v146 == result)
        {
          if (*(*v144 + 12) >= *(v145 + 12))
          {
LABEL_258:
            v147 = *v144;
            v148 = v9[v142];
            v149 = *(*v144 + 4);
            v150 = *(v148 + 4);
            if (v149 == v150)
            {
              if (*(v147 + 12) < *(v148 + 12))
              {
                goto LABEL_276;
              }
            }

            else if (v149 < v150)
            {
              goto LABEL_276;
            }

            v9[v142] = v147;
            if (v140 < v143)
            {
LABEL_263:
              v151 = v144;
LABEL_275:
              *v151 = v148;
LABEL_276:
              v141 = v142 - 1;
              if (v142)
              {
                continue;
              }

              while (2)
              {
                v159 = 0;
                v160 = *v9;
                v161 = v9;
LABEL_278:
                v162 = v161;
                v163 = &v161[v159];
                v161 = v163 + 1;
                v164 = 2 * v159;
                v159 = (2 * v159) | 1;
                v165 = v164 + 2;
                if (v165 < v10)
                {
                  v168 = v163[2];
                  v166 = v163 + 2;
                  v167 = v168;
                  v169 = *(v166 - 1);
                  result = *(v169 + 4);
                  v170 = *(v168 + 4);
                  if (result == v170)
                  {
                    if (*(v169 + 12) >= *(v167 + 12))
                    {
                      goto LABEL_284;
                    }
                  }

                  else if (result >= v170)
                  {
                    goto LABEL_284;
                  }

                  v161 = v166;
                  v159 = v165;
                }

LABEL_284:
                *v162 = *v161;
                if (v159 > ((v10 - 2) >> 1))
                {
                  if (v161 == --a2)
                  {
                    goto LABEL_298;
                  }

                  *v161 = *a2;
                  *a2 = v160;
                  v171 = (v161 - v9 + 8) >> 3;
                  v172 = v171 - 2;
                  if (v171 < 2)
                  {
                    goto LABEL_299;
                  }

                  v173 = v172 >> 1;
                  v174 = &v9[v172 >> 1];
                  v175 = *v174;
                  v160 = *v161;
                  v176 = *(*v174 + 4);
                  v177 = *(*v161 + 4);
                  if (v176 != v177)
                  {
                    if (v176 >= v177)
                    {
                      goto LABEL_299;
                    }

LABEL_291:
                    *v161 = v175;
                    if (v172 >= 2)
                    {
                      do
                      {
                        v178 = v173 - 1;
                        v173 = (v173 - 1) >> 1;
                        v161 = &v9[v173];
                        v179 = *v161;
                        v180 = *(*v161 + 4);
                        if (v180 == v177)
                        {
                          if (*(v179 + 12) >= *(v160 + 12))
                          {
                            goto LABEL_292;
                          }
                        }

                        else if (v180 >= v177)
                        {
                          goto LABEL_292;
                        }

                        *v174 = v179;
                        v174 = &v9[v173];
                      }

                      while (v178 > 1);
                    }

                    else
                    {
LABEL_292:
                      v161 = v174;
                    }

LABEL_298:
                    *v161 = v160;
                    goto LABEL_299;
                  }

                  if (*(v175 + 12) < *(v160 + 12))
                  {
                    goto LABEL_291;
                  }

LABEL_299:
                  if (v10-- <= 2)
                  {
                    return result;
                  }

                  continue;
                }

                goto LABEL_278;
              }
            }

            while (2)
            {
              v152 = 2 * v143;
              v143 = (2 * v143) | 1;
              v151 = &v9[v143];
              v153 = v152 + 2;
              if (v153 < v10)
              {
                result = *v151;
                v154 = v151[1];
                v155 = *(*v151 + 4);
                v156 = *(v154 + 4);
                if (v155 == v156)
                {
                  if (*(result + 12) >= *(v154 + 12))
                  {
                    goto LABEL_270;
                  }
                }

                else if (v155 >= v156)
                {
                  goto LABEL_270;
                }

                ++v151;
                v143 = v153;
              }

LABEL_270:
              v157 = *v151;
              v158 = *(*v151 + 4);
              if (v158 == v150)
              {
                if (*(v157 + 12) < *(v148 + 12))
                {
                  goto LABEL_263;
                }
              }

              else if (v158 < v150)
              {
                goto LABEL_263;
              }

              *v144 = v157;
              v144 = v151;
              if (v140 < v143)
              {
                goto LABEL_275;
              }

              continue;
            }
          }
        }

        else if (v146 >= result)
        {
          goto LABEL_258;
        }

        break;
      }

      ++v144;
      v143 = 2 * v142 + 2;
      goto LABEL_258;
    }

    v11 = v10 >> 1;
    v12 = &v9[v10 >> 1];
    v13 = v12;
    if (v10 >= 0x81)
    {
      v14 = *v12;
      v15 = *v9;
      v16 = *(*v12 + 4);
      v17 = *(*v9 + 4);
      if (v16 != v17)
      {
        if (v16 < v17)
        {
          goto LABEL_24;
        }

LABEL_15:
        v18 = *v8;
        v19 = *(*v8 + 4);
        if (v19 == v16)
        {
          if (*(v18 + 12) >= *(v14 + 12))
          {
            goto LABEL_55;
          }
        }

        else if (v19 >= v16)
        {
          goto LABEL_55;
        }

        *v12 = v18;
        *v8 = v14;
        v34 = *v12;
        v35 = *v9;
        v36 = *(*v12 + 4);
        v37 = *(*v9 + 4);
        if (v36 == v37)
        {
          if (*(v34 + 12) >= *(v35 + 12))
          {
            goto LABEL_55;
          }
        }

        else if (v36 >= v37)
        {
          goto LABEL_55;
        }

        *v9 = v34;
        *v12 = v35;
        goto LABEL_55;
      }

      if (*(v14 + 12) >= *(v15 + 12))
      {
        goto LABEL_15;
      }

LABEL_24:
      v26 = *v8;
      v27 = *(*v8 + 4);
      if (v27 != v16)
      {
        if (v27 < v16)
        {
          goto LABEL_44;
        }

LABEL_26:
        *v9 = v14;
        *v12 = v15;
        v28 = *v8;
        v29 = *(*v8 + 4);
        if (v29 == v17)
        {
          if (*(v28 + 12) >= *(v15 + 12))
          {
            goto LABEL_55;
          }
        }

        else if (v29 >= v17)
        {
          goto LABEL_55;
        }

        *v12 = v28;
        goto LABEL_49;
      }

      if (*(v26 + 12) >= *(v14 + 12))
      {
        goto LABEL_26;
      }

LABEL_44:
      *v9 = v26;
LABEL_49:
      *v8 = v15;
LABEL_55:
      v42 = v11 - 1;
      v43 = v9[v11 - 1];
      v44 = v9[1];
      v45 = *(v43 + 4);
      v46 = *(v44 + 4);
      if (v45 != v46)
      {
        if (v45 < v46)
        {
          goto LABEL_61;
        }

LABEL_57:
        v47 = *(a2 - 2);
        v48 = *(v47 + 4);
        if (v48 == v45)
        {
          if (*(v47 + 12) >= *(v43 + 12))
          {
            goto LABEL_79;
          }
        }

        else if (v48 >= v45)
        {
          goto LABEL_79;
        }

        v9[v42] = v47;
        *(a2 - 2) = v43;
        v53 = v9[v42];
        v54 = v9[1];
        v55 = *(v53 + 4);
        v56 = *(v54 + 4);
        if (v55 == v56)
        {
          if (*(v53 + 12) >= *(v54 + 12))
          {
            goto LABEL_79;
          }
        }

        else if (v55 >= v56)
        {
          goto LABEL_79;
        }

        v9[1] = v53;
        v9[v42] = v54;
        goto LABEL_79;
      }

      if (*(v43 + 12) >= *(v44 + 12))
      {
        goto LABEL_57;
      }

LABEL_61:
      v49 = *(a2 - 2);
      v50 = *(v49 + 4);
      if (v50 != v45)
      {
        if (v50 < v45)
        {
          goto LABEL_71;
        }

LABEL_63:
        v9[1] = v43;
        v9[v42] = v44;
        v51 = *(a2 - 2);
        v52 = *(v51 + 4);
        if (v52 == v46)
        {
          if (*(v51 + 12) >= *(v44 + 12))
          {
            goto LABEL_79;
          }
        }

        else if (v52 >= v46)
        {
          goto LABEL_79;
        }

        v9[v42] = v51;
        goto LABEL_76;
      }

      if (*(v49 + 12) >= *(v43 + 12))
      {
        goto LABEL_63;
      }

LABEL_71:
      v9[1] = v49;
LABEL_76:
      *(a2 - 2) = v44;
LABEL_79:
      v59 = v12[1];
      v57 = v12 + 1;
      v58 = v59;
      v60 = v9[2];
      v61 = *(v59 + 4);
      v62 = *(v60 + 4);
      if (v61 != v62)
      {
        if (v61 < v62)
        {
          goto LABEL_85;
        }

LABEL_81:
        v63 = *(a2 - 3);
        v64 = *(v63 + 4);
        if (v64 == v61)
        {
          if (*(v63 + 12) >= *(v58 + 12))
          {
            goto LABEL_101;
          }
        }

        else if (v64 >= v61)
        {
          goto LABEL_101;
        }

        *v57 = v63;
        *(a2 - 3) = v58;
        v69 = *v57;
        v70 = v9[2];
        v71 = *(*v57 + 4);
        v72 = *(v70 + 4);
        if (v71 == v72)
        {
          if (*(v69 + 12) >= *(v70 + 12))
          {
            goto LABEL_101;
          }
        }

        else if (v71 >= v72)
        {
          goto LABEL_101;
        }

        v9[2] = v69;
        *v57 = v70;
        goto LABEL_101;
      }

      if (*(v58 + 12) >= *(v60 + 12))
      {
        goto LABEL_81;
      }

LABEL_85:
      v65 = *(a2 - 3);
      v66 = *(v65 + 4);
      if (v66 != v61)
      {
        if (v66 < v61)
        {
          goto LABEL_95;
        }

LABEL_87:
        v9[2] = v58;
        *v57 = v60;
        v67 = *(a2 - 3);
        v68 = *(v67 + 4);
        if (v68 == v62)
        {
          if (*(v67 + 12) >= *(v60 + 12))
          {
            goto LABEL_101;
          }
        }

        else if (v68 >= v62)
        {
          goto LABEL_101;
        }

        *v57 = v67;
        goto LABEL_98;
      }

      if (*(v65 + 12) >= *(v58 + 12))
      {
        goto LABEL_87;
      }

LABEL_95:
      v9[2] = v65;
LABEL_98:
      *(a2 - 3) = v60;
LABEL_101:
      v73 = *v13;
      v74 = v9[v42];
      v75 = *(*v13 + 4);
      v76 = *(v74 + 4);
      if (v75 == v76)
      {
        if (*(v73 + 12) >= *(v74 + 12))
        {
          goto LABEL_103;
        }

LABEL_107:
        v79 = *v57;
        v80 = *(*v57 + 4);
        if (v80 == v75)
        {
          if (*(v79 + 12) >= *(v73 + 12))
          {
            goto LABEL_109;
          }

LABEL_117:
          v9[v42] = v79;
LABEL_122:
          *v57 = v74;
LABEL_123:
          v81 = *v9;
          *v9 = v73;
          *v13 = v81;
          goto LABEL_124;
        }

        if (v80 < v75)
        {
          goto LABEL_117;
        }

LABEL_109:
        v9[v42] = v73;
        *v13 = v74;
        if (v80 == v76)
        {
          if (*(v79 + 12) >= *(v74 + 12))
          {
LABEL_111:
            v73 = v74;
            goto LABEL_123;
          }
        }

        else if (v80 >= v76)
        {
          goto LABEL_111;
        }

        *v13 = v79;
        v73 = v79;
        goto LABEL_122;
      }

      if (v75 < v76)
      {
        goto LABEL_107;
      }

LABEL_103:
      v77 = *v57;
      v78 = *(*v57 + 4);
      if (v78 == v75)
      {
        if (*(v77 + 12) >= *(v73 + 12))
        {
          goto LABEL_123;
        }
      }

      else if (v78 >= v75)
      {
        goto LABEL_123;
      }

      *v13 = v77;
      *v57 = v73;
      if (v78 == v76)
      {
        if (*(v77 + 12) >= *(v74 + 12))
        {
LABEL_115:
          v73 = v77;
          goto LABEL_123;
        }
      }

      else if (v78 >= v76)
      {
        goto LABEL_115;
      }

      v9[v42] = v77;
      v57 = v13;
      v73 = v74;
      goto LABEL_122;
    }

    v20 = *v9;
    v21 = *v12;
    v22 = *(*v9 + 4);
    v23 = *(*v13 + 4);
    if (v22 == v23)
    {
      if (*(v20 + 12) < *(v21 + 12))
      {
        goto LABEL_30;
      }
    }

    else if (v22 < v23)
    {
LABEL_30:
      v30 = *v8;
      v31 = *(*v8 + 4);
      if (v31 == v22)
      {
        if (*(v30 + 12) < *(v20 + 12))
        {
          goto LABEL_46;
        }
      }

      else if (v31 < v22)
      {
LABEL_46:
        *v13 = v30;
        goto LABEL_52;
      }

      *v13 = v20;
      *v9 = v21;
      v32 = *v8;
      v33 = *(*v8 + 4);
      if (v33 != v23)
      {
        if (v33 >= v23)
        {
          goto LABEL_124;
        }

LABEL_51:
        *v9 = v32;
LABEL_52:
        *v8 = v21;
        goto LABEL_124;
      }

      if (*(v32 + 12) < *(v21 + 12))
      {
        goto LABEL_51;
      }

      goto LABEL_124;
    }

    v24 = *v8;
    v25 = *(*v8 + 4);
    if (v25 == v22)
    {
      if (*(v24 + 12) >= *(v20 + 12))
      {
        goto LABEL_124;
      }
    }

    else if (v25 >= v22)
    {
      goto LABEL_124;
    }

    *v9 = v24;
    *v8 = v20;
    v38 = *v9;
    v39 = *v13;
    v40 = *(*v9 + 4);
    v41 = *(*v13 + 4);
    if (v40 != v41)
    {
      if (v40 >= v41)
      {
        goto LABEL_124;
      }

LABEL_73:
      *v13 = v38;
      *v9 = v39;
      goto LABEL_124;
    }

    if (*(v38 + 12) < *(v39 + 12))
    {
      goto LABEL_73;
    }

LABEL_124:
    --a3;
    v82 = *v9;
    if (a4)
    {
      v83 = *(v82 + 4);
LABEL_138:
      for (i = v9 + 1; ; ++i)
      {
        v90 = *i;
        v91 = *(*i + 4);
        if (v91 != v83)
        {
          break;
        }

        if (*(v90 + 12) >= *(v82 + 12))
        {
          goto LABEL_144;
        }

LABEL_143:
        ;
      }

      if (v91 < v83)
      {
        goto LABEL_143;
      }

LABEL_144:
      v92 = i - 1;
      j = a2 - 1;
      if (i - 1 != v9)
      {
        while (1)
        {
          v94 = *(*j + 4);
          if (v94 == v83)
          {
            if (*(*j + 12) < *(v82 + 12))
            {
              goto LABEL_159;
            }
          }

          else if (v94 < v83)
          {
            goto LABEL_159;
          }

          --j;
        }
      }

      j = a2;
      if (i < a2)
      {
        for (j = a2 - 1; ; --j)
        {
          v95 = *(*j + 4);
          if (v95 == v83)
          {
            if (i >= j || *(*j + 12) < *(v82 + 12))
            {
              break;
            }
          }

          else if (i >= j || v95 < v83)
          {
            break;
          }
        }
      }

LABEL_159:
      if (i >= j)
      {
        goto LABEL_173;
      }

      v96 = *j;
      v97 = i;
      v98 = j;
      while (2)
      {
        *v97 = v96;
        v97 += 8;
        *v98 = v90;
        while (2)
        {
          v90 = *v97;
          v99 = *(*v97 + 4);
          if (v99 == v83)
          {
            if (*(v90 + 12) >= *(v82 + 12))
            {
              break;
            }

            goto LABEL_166;
          }

          if (v99 < v83)
          {
LABEL_166:
            v97 += 8;
            continue;
          }

          break;
        }

        v92 = (v97 - 8);
        do
        {
          while (1)
          {
            v100 = *--v98;
            v96 = v100;
            v101 = *(v100 + 4);
            if (v101 != v83)
            {
              break;
            }

            if (*(v96 + 12) < *(v82 + 12))
            {
              goto LABEL_172;
            }
          }
        }

        while (v101 >= v83);
LABEL_172:
        if (v97 < v98)
        {
          continue;
        }

        break;
      }

LABEL_173:
      if (v92 != v9)
      {
        *v9 = *v92;
      }

      *v92 = v82;
      if (i < j)
      {
LABEL_178:
        result = std::__introsort<std::_ClassicAlgPolicy,CA::MetadataFrameQueue::extract(double,double,AudioMetadataFrame &)::$_0 &,AudioMetadataEvent const**,false>(v7, v92, a3, a4 & 1);
        a4 = 0;
        v9 = v92 + 1;
      }

      else
      {
        v102 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CA::MetadataFrameQueue::extract(double,double,AudioMetadataFrame &)::$_0 &,AudioMetadataEvent const**>(v9, v92);
        v9 = v92 + 1;
        result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CA::MetadataFrameQueue::extract(double,double,AudioMetadataFrame &)::$_0 &,AudioMetadataEvent const**>(v92 + 1, a2);
        if (result)
        {
          a2 = v92;
          if (v102)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v102)
        {
          goto LABEL_178;
        }
      }
    }

    else
    {
      v84 = *(v9 - 1);
      v85 = *(v84 + 4);
      v83 = *(v82 + 4);
      if (v85 == v83)
      {
        v83 = *(v84 + 4);
        if (*(v84 + 12) < *(v82 + 12))
        {
          goto LABEL_138;
        }
      }

      else if (v85 < v83)
      {
        goto LABEL_138;
      }

      v86 = *v8;
      v87 = *(*v8 + 4);
      if (v83 == v87)
      {
        if (*(v82 + 12) < *(v86 + 12))
        {
          goto LABEL_180;
        }
      }

      else if (v83 < v87)
      {
LABEL_180:
        for (++v9; ; ++v9)
        {
          v103 = *(*v9 + 4);
          if (v83 == v103)
          {
            if (*(v82 + 12) < *(*v9 + 12))
            {
              goto LABEL_186;
            }
          }

          else if (v83 < v103)
          {
            goto LABEL_186;
          }
        }
      }

      for (++v9; v9 < a2; ++v9)
      {
        v88 = *(*v9 + 4);
        if (v83 == v88)
        {
          if (*(v82 + 12) < *(*v9 + 12))
          {
            break;
          }
        }

        else if (v83 < v88)
        {
          break;
        }
      }

LABEL_186:
      k = a2;
      if (v9 < a2)
      {
        for (k = a2 - 1; ; --k)
        {
          if (v83 == v87)
          {
            if (*(v82 + 12) >= *(v86 + 12))
            {
              break;
            }
          }

          else if (v83 >= v87)
          {
            break;
          }

          v105 = *(k - 1);
          v86 = v105;
          v87 = *(v105 + 4);
        }
      }

      if (v9 >= k)
      {
        goto LABEL_205;
      }

      v106 = *v9;
      v107 = *k;
      do
      {
        *v9++ = v107;
        *k = v106;
        while (1)
        {
          v106 = *v9;
          v108 = *(*v9 + 4);
          if (v83 == v108)
          {
            break;
          }

          if (v83 < v108)
          {
            goto LABEL_202;
          }

LABEL_200:
          ++v9;
        }

        if (*(v82 + 12) >= *(v106 + 12))
        {
          goto LABEL_200;
        }

        do
        {
LABEL_202:
          while (1)
          {
            v109 = *--k;
            v107 = v109;
            v110 = *(v109 + 4);
            if (v83 == v110)
            {
              break;
            }

            if (v83 >= v110)
            {
              goto LABEL_204;
            }
          }
        }

        while (*(v82 + 12) < *(v107 + 12));
LABEL_204:
        ;
      }

      while (v9 < k);
LABEL_205:
      v111 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v111;
      }

      a4 = 0;
      *v111 = v82;
    }
  }

  v126 = v9 + 1;
  v128 = v9 == a2 || v126 == a2;
  if ((a4 & 1) == 0)
  {
    if (v128)
    {
      return result;
    }

    while (1)
    {
      v190 = v7;
      v7 = v126;
      v192 = *v190;
      v191 = v190[1];
      v193 = *(v191 + 4);
      v194 = *(*v190 + 4);
      if (v193 == v194)
      {
        if (*(v191 + 12) < *(v192 + 12))
        {
          goto LABEL_319;
        }
      }

      else if (v193 < v194)
      {
        do
        {
LABEL_319:
          while (1)
          {
            v195 = v190;
            v196 = *--v190;
            v190[2] = v192;
            v192 = v196;
            v197 = *(v196 + 4);
            if (v193 != v197)
            {
              break;
            }

            if (*(v191 + 12) >= *(v192 + 12))
            {
              goto LABEL_323;
            }
          }
        }

        while (v193 < v197);
LABEL_323:
        *v195 = v191;
      }

      v126 = v7 + 1;
      if (v7 + 1 == a2)
      {
        return result;
      }
    }
  }

  if (v128)
  {
    return result;
  }

  v129 = 0;
  v130 = v9;
  while (2)
  {
    v131 = v130;
    v130 = v126;
    v133 = *v131;
    v132 = v131[1];
    v134 = *(v132 + 4);
    v135 = *(*v131 + 4);
    if (v134 == v135)
    {
      if (*(v132 + 12) >= *(v133 + 12))
      {
        goto LABEL_247;
      }
    }

    else if (v134 >= v135)
    {
      goto LABEL_247;
    }

    v131[1] = v133;
    v136 = v9;
    if (v131 == v9)
    {
      goto LABEL_246;
    }

    v137 = v129;
    while (2)
    {
      v138 = *(v9 + v137 - 8);
      v139 = *(v138 + 4);
      if (v134 == v139)
      {
        if (*(v132 + 12) >= *(v138 + 12))
        {
          v136 = v131;
          goto LABEL_246;
        }

LABEL_243:
        --v131;
        *(v9 + v137) = v138;
        v137 -= 8;
        if (!v137)
        {
          v136 = v9;
          goto LABEL_246;
        }

        continue;
      }

      break;
    }

    if (v134 < v139)
    {
      goto LABEL_243;
    }

    v136 = (v9 + v137);
LABEL_246:
    *v136 = v132;
LABEL_247:
    v126 = v130 + 1;
    v129 += 8;
    if (v130 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CA::MetadataFrameQueue::extract(double,double,AudioMetadataFrame &)::$_0 &,AudioMetadataEvent const**,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(*a2 + 4);
  v7 = *(*result + 4);
  if (v6 == v7)
  {
    if (*(v4 + 12) >= *(v5 + 12))
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = *a3;
    v10 = *(*a3 + 4);
    if (v10 == v6)
    {
      if (*(v9 + 12) >= *(v4 + 12))
      {
LABEL_9:
        *result = v4;
        *a2 = v5;
        v4 = *a3;
        v11 = *(*a3 + 4);
        if (v11 == v7)
        {
          if (*(v4 + 12) >= *(v5 + 12))
          {
            goto LABEL_22;
          }
        }

        else if (v11 >= v7)
        {
          goto LABEL_22;
        }

        *a2 = v4;
        goto LABEL_20;
      }
    }

    else if (v10 >= v6)
    {
      goto LABEL_9;
    }

    *result = v9;
LABEL_20:
    *a3 = v5;
    goto LABEL_21;
  }

  if (v6 < v7)
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = *a3;
  v8 = *(*a3 + 4);
  if (v8 == v6)
  {
    if (*(v5 + 12) >= *(v4 + 12))
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (v8 >= v6)
  {
LABEL_21:
    v4 = v5;
    goto LABEL_22;
  }

LABEL_13:
  *a2 = v5;
  *a3 = v4;
  v12 = *a2;
  v13 = *result;
  v14 = *(*a2 + 4);
  v15 = *(*result + 4);
  if (v14 == v15)
  {
    if (*(v12 + 12) >= *(v13 + 12))
    {
      goto LABEL_22;
    }
  }

  else if (v14 >= v15)
  {
    goto LABEL_22;
  }

  *result = v12;
  *a2 = v13;
  v4 = *a3;
LABEL_22:
  v16 = *a4;
  v17 = *(*a4 + 4);
  v18 = *(v4 + 4);
  if (v17 == v18)
  {
    if (*(v16 + 12) >= *(v4 + 12))
    {
      return result;
    }
  }

  else if (v17 >= v18)
  {
    return result;
  }

  *a3 = v16;
  *a4 = v4;
  v19 = *a3;
  v20 = *a2;
  v21 = *(*a3 + 4);
  v22 = *(*a2 + 4);
  if (v21 == v22)
  {
    if (*(v19 + 12) >= *(v20 + 12))
    {
      return result;
    }
  }

  else if (v21 >= v22)
  {
    return result;
  }

  *a2 = v19;
  *a3 = v20;
  v23 = *a2;
  v24 = *result;
  v25 = *(*a2 + 4);
  v26 = *(*result + 4);
  if (v25 == v26)
  {
    if (*(v23 + 12) < *(v24 + 12))
    {
      goto LABEL_36;
    }
  }

  else if (v25 < v26)
  {
LABEL_36:
    *result = v23;
    *a2 = v24;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CA::MetadataFrameQueue::extract(double,double,AudioMetadataFrame &)::$_0 &,AudioMetadataEvent const**>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CA::MetadataFrameQueue::extract(double,double,AudioMetadataFrame &)::$_0 &,AudioMetadataEvent const**,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_18;
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CA::MetadataFrameQueue::extract(double,double,AudioMetadataFrame &)::$_0 &,AudioMetadataEvent const**,0>(a1, a1 + 1, a1 + 2, a1 + 3);
      v9 = *(a2 - 1);
      v10 = a1[3];
      v11 = *(v9 + 4);
      v12 = *(v10 + 4);
      if (v11 == v12)
      {
        if (*(v9 + 12) >= *(v10 + 12))
        {
          return 1;
        }
      }

      else if (v11 >= v12)
      {
        return 1;
      }

      a1[3] = v9;
      *(a2 - 1) = v10;
      v34 = a1[2];
      v33 = a1[3];
      v35 = *(v33 + 4);
      v36 = *(v34 + 4);
      if (v35 == v36)
      {
        if (*(v33 + 12) >= *(v34 + 12))
        {
          return 1;
        }
      }

      else if (v35 >= v36)
      {
        return 1;
      }

      a1[2] = v33;
      a1[3] = v34;
      v41 = a1[1];
      v42 = *(v41 + 4);
      if (v35 == v42)
      {
        if (*(v33 + 12) >= *(v41 + 12))
        {
          return 1;
        }
      }

      else if (v35 >= v42)
      {
        return 1;
      }

      a1[1] = v33;
      a1[2] = v41;
      v54 = *a1;
      v55 = *(*a1 + 4);
      if (v35 == v55)
      {
        if (*(v33 + 12) < *(v54 + 12))
        {
          goto LABEL_92;
        }
      }

      else if (v35 < v55)
      {
LABEL_92:
        *a1 = v33;
        a1[1] = v54;
      }

      return 1;
    }

    v13 = *a1;
    v14 = a1[1];
    v15 = *(v14 + 4);
    v16 = *(*a1 + 4);
    if (v15 == v16)
    {
      if (*(v14 + 12) >= *(v13 + 12))
      {
        goto LABEL_15;
      }
    }

    else if (v15 >= v16)
    {
LABEL_15:
      v17 = *(a2 - 1);
      v18 = *(v17 + 4);
      if (v18 == v15)
      {
        if (*(v17 + 12) >= *(v14 + 12))
        {
          return 1;
        }
      }

      else if (v18 >= v15)
      {
        return 1;
      }

      a1[1] = v17;
      *(a2 - 1) = v14;
      v38 = *a1;
      v37 = a1[1];
      v39 = *(v37 + 4);
      v40 = *(*a1 + 4);
      if (v39 == v40)
      {
        if (*(v37 + 12) >= *(v38 + 12))
        {
          return 1;
        }
      }

      else if (v39 >= v40)
      {
        return 1;
      }

      *a1 = v37;
      a1[1] = v38;
      return 1;
    }

    v27 = *(a2 - 1);
    v28 = *(v27 + 4);
    if (v28 == v15)
    {
      if (*(v27 + 12) >= *(v14 + 12))
      {
LABEL_27:
        *a1 = v14;
        a1[1] = v13;
        v29 = *(a2 - 1);
        v30 = *(v29 + 4);
        if (v30 == v16)
        {
          if (*(v29 + 12) >= *(v13 + 12))
          {
            return 1;
          }
        }

        else if (v30 >= v16)
        {
          return 1;
        }

        a1[1] = v29;
LABEL_60:
        *(a2 - 1) = v13;
        return 1;
      }
    }

    else if (v28 >= v15)
    {
      goto LABEL_27;
    }

    *a1 = v27;
    goto LABEL_60;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    v7 = *(v5 + 4);
    v8 = *(*a1 + 4);
    if (v7 == v8)
    {
      if (*(v5 + 12) >= *(v6 + 12))
      {
        return 1;
      }
    }

    else if (v7 >= v8)
    {
      return 1;
    }

    *a1 = v5;
    *(a2 - 1) = v6;
    return 1;
  }

LABEL_18:
  v19 = (a1 + 2);
  v20 = *a1;
  v21 = a1 + 1;
  v22 = a1[1];
  v23 = *(v22 + 4);
  v24 = *(*a1 + 4);
  if (v23 == v24)
  {
    if (*(v22 + 12) >= *(v20 + 12))
    {
      goto LABEL_20;
    }

LABEL_31:
    v31 = *v19;
    v32 = *(*v19 + 4);
    if (v32 == v23)
    {
      if (*(v31 + 12) >= *(v22 + 12))
      {
LABEL_33:
        *a1 = v22;
        a1[1] = v20;
        if (v32 == v24)
        {
          if (*(v31 + 12) >= *(v20 + 12))
          {
            goto LABEL_69;
          }
        }

        else if (v32 >= v24)
        {
          goto LABEL_69;
        }

        *v21 = v31;
        goto LABEL_65;
      }
    }

    else if (v32 >= v23)
    {
      goto LABEL_33;
    }

    *a1 = v31;
LABEL_65:
    v21 = a1 + 2;
LABEL_68:
    *v21 = v20;
    goto LABEL_69;
  }

  if (v23 < v24)
  {
    goto LABEL_31;
  }

LABEL_20:
  v25 = *v19;
  v26 = *(*v19 + 4);
  if (v26 == v23)
  {
    if (*(v25 + 12) >= *(v22 + 12))
    {
      goto LABEL_69;
    }
  }

  else if (v26 >= v23)
  {
    goto LABEL_69;
  }

  *v21 = v25;
  *v19 = v22;
  if (v26 != v24)
  {
    if (v26 >= v24)
    {
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  if (*(v25 + 12) < *(v20 + 12))
  {
LABEL_67:
    *a1 = v25;
    goto LABEL_68;
  }

LABEL_69:
  v43 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (2)
  {
    v46 = *v43;
    v47 = *v19;
    v48 = *(*v43 + 4);
    v49 = *(*v19 + 4);
    if (v48 == v49)
    {
      if (*(v46 + 12) >= *(v47 + 12))
      {
        goto LABEL_84;
      }
    }

    else if (v48 >= v49)
    {
      goto LABEL_84;
    }

    *v43 = v47;
    v50 = v44;
    while (1)
    {
      v51 = *(a1 + v50 + 8);
      v52 = *(v51 + 4);
      if (v48 == v52)
      {
        if (*(v46 + 12) >= *(v51 + 12))
        {
          goto LABEL_83;
        }

        goto LABEL_80;
      }

      if (v48 >= v52)
      {
        break;
      }

LABEL_80:
      v19 -= 8;
      *(a1 + v50 + 16) = v51;
      v50 -= 8;
      if (v50 == -16)
      {
        v19 = a1;
        goto LABEL_83;
      }
    }

    v19 = a1 + v50 + 16;
LABEL_83:
    *v19 = v46;
    if (++v45 != 8)
    {
LABEL_84:
      v19 = v43;
      v44 += 8;
      if (++v43 == a2)
      {
        return 1;
      }

      continue;
    }

    return v43 + 1 == a2;
  }
}

uint64_t (*AUInstanceBase::LookupMethod(AUInstanceBase *this))(char *a1, int (*a2)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), void *a3)
{
  v1 = AUIB_Initialize;
  switch(this)
  {
    case 1:
      return v1;
    case 2:
      return AUIB_Uninitialize;
    case 3:
      return AUIB_GetPropertyInfo;
    case 4:
      return AUIB_GetProperty;
    case 5:
      return AUIB_SetProperty;
    case 6:
      return AUIB_GetParameter;
    case 7:
      return AUIB_SetParameter;
    case 8:
    case 12:
    case 13:
    case 19:
      return 0;
    case 9:
      return AUIB_Reset;
    case 10:
      return AUIB_AddPropertyListener;
    case 11:
      return AUIB_RemovePropertyListener;
    case 14:
      return AUIB_Render;
    case 15:
      return AUIB_AddRenderNotify;
    case 16:
      return AUIB_RemoveRenderNotify;
    case 17:
      return AUIB_ScheduleParameters;
    case 18:
      return AUIB_RemovePropertyListenerWithUserData;
    case 20:
      return AUIB_Process;
    case 21:
      return AUIB_ProcessMultiple;
    default:
      if (this != 0x7FFF)
      {
        return 0;
      }

      return AUIB_OpenAsync;
  }
}

uint64_t AUIB_Initialize(char *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1 - 8;
  }

  else
  {
    v1 = 0;
  }

  v2 = *gAUInstanceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315650;
    v6 = "AUInstanceBase.cpp";
    v7 = 1024;
    v8 = 92;
    v9 = 2048;
    v10 = v1;
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %p Initialize", &v5, 0x1Cu);
  }

  result = (*(*v1 + 56))(v1);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t gAUInstanceLog(void)
{
  if (atomic_load_explicit(&gAUInstanceLog(void)::onceflag, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&gAUInstanceLog(void)::onceflag, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<gAUInstanceLog(void)::$_0 &&>>);
  }

  return gAUInstanceLog(void)::global;
}

uint64_t AUIB_Uninitialize(char *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1 - 8;
  }

  else
  {
    v1 = 0;
  }

  v2 = *gAUInstanceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315650;
    v6 = "AUInstanceBase.cpp";
    v7 = 1024;
    v8 = 99;
    v9 = 2048;
    v10 = v1;
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %p Uninitialize", &v5, 0x1Cu);
  }

  (*(*v1 + 64))(v1);
  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t AUIB_Reset(char *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a1 - 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = *gAUInstanceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "AUInstanceBase.cpp";
    v11 = 1024;
    v12 = 107;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %p Reset", &v9, 0x1Cu);
  }

  result = (*(*v5 + 72))(v5, a2, a3);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AUIB_GetPropertyInfo(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned __int8 *a6)
{
  v11 = 0;
  v10 = 0;
  if (a1)
  {
    v8 = a1 - 8;
  }

  else
  {
    v8 = 0;
  }

  result = (*(*v8 + 80))(v8, a2, a3, a4, &v11, &v10);
  if (a5)
  {
    *a5 = v11;
  }

  if (a6)
  {
    *a6 = v10;
  }

  return result;
}

uint64_t AUIB_GetProperty(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned int *a6)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "AUInstanceBase.cpp";
      v17 = 1024;
      v18 = 130;
      v19 = 2080;
      v20 = "AudioUnitGetProperty: null size pointer";
      v11 = MEMORY[0x1E69E9C10];
LABEL_18:
      _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_debug_string: %s", buf, 0x1Cu);
    }

LABEL_19:
    result = 4294967246;
LABEL_20:
    v13 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (!a5)
  {
    *buf = 0;
    v14 = 0;
    if (a1)
    {
      v12 = a1 - 8;
    }

    else
    {
      v12 = 0;
    }

    result = (*(*v12 + 80))(v12, a2, a3, a4, buf, &v14);
    *a6 = *buf;
    goto LABEL_20;
  }

  if (!*a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "AUInstanceBase.cpp";
      v17 = 1024;
      v18 = 137;
      v19 = 2080;
      v20 = "AudioUnitGetProperty: zero size on entry";
      v11 = MEMORY[0x1E69E9C10];
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (a1)
  {
    v7 = a1 - 8;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*v7 + 88);
  v9 = *MEMORY[0x1E69E9840];

  return v8();
}

uint64_t AUIB_SetProperty(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (a1)
  {
    v5 = a1 - 8;
  }

  else
  {
    v5 = 0;
  }

  return (*(*v5 + 96))(v5, a2, a3, a4, a5);
}

uint64_t AUIB_AddPropertyListener(char *a1, unsigned int a2, void (*a3)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int), void *a4)
{
  if (!a3)
  {
    return 4294967246;
  }

  if (a1)
  {
    v4 = a1 - 8;
  }

  else
  {
    v4 = 0;
  }

  return (*(*v4 + 104))();
}

uint64_t AUIB_RemovePropertyListener(char *a1, unsigned int a2, void (*a3)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int))
{
  if (!a3)
  {
    return 4294967246;
  }

  if (a1)
  {
    v3 = a1 - 8;
  }

  else
  {
    v3 = 0;
  }

  return (*(*v3 + 112))();
}

uint64_t AUIB_RemovePropertyListenerWithUserData(char *a1, unsigned int a2, void (*a3)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int), void *a4)
{
  if (!a3)
  {
    return 4294967246;
  }

  if (a1)
  {
    v4 = a1 - 8;
  }

  else
  {
    v4 = 0;
  }

  return (*(*v4 + 112))();
}

uint64_t AUIB_AddRenderNotify(char *a1, int (*a2)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), void *a3)
{
  if (!a2)
  {
    return 4294967246;
  }

  if (a1)
  {
    v3 = a1 - 8;
  }

  else
  {
    v3 = 0;
  }

  return (*(*v3 + 120))();
}

uint64_t AUIB_RemoveRenderNotify(char *a1, int (*a2)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), void *a3)
{
  if (!a2)
  {
    return 4294967246;
  }

  if (a1)
  {
    v3 = a1 - 8;
  }

  else
  {
    v3 = 0;
  }

  return (*(*v3 + 128))();
}

uint64_t AUIB_GetParameter(char *a1, unsigned int a2, unsigned int a3, unsigned int a4, float *a5)
{
  if (!a5)
  {
    return 4294967246;
  }

  if (a1)
  {
    v5 = a1 - 8;
  }

  else
  {
    v5 = 0;
  }

  return (*(*v5 + 136))();
}

uint64_t AUIB_SetParameter(char *a1, __n128 a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return (*(*v2 + 144))(a2);
}

uint64_t AUIB_Render(char *a1, unsigned int *a2, const AudioTimeStamp *a3, unsigned int a4, unsigned int a5, AudioBufferList *a6)
{
  v6 = 4294967246;
  if (a3 && a6)
  {
    if (!a2)
    {
      a2 = &v9;
    }

    v9 = 0;
    if (a1)
    {
      v7 = a1 - 8;
    }

    else
    {
      v7 = 0;
    }

    return (*(*v7 + 152))(v7, a2);
  }

  return v6;
}

uint64_t AUIB_Process(char *a1, unsigned int *a2, const AudioTimeStamp *a3, unsigned int a4, AudioBufferList *a5)
{
  v9 = a5;
  v5 = 4294967246;
  if (a3 && a5)
  {
    if (!a2)
    {
      a2 = &v8;
    }

    v8 = 0;
    if (a1)
    {
      v6 = a1 - 8;
    }

    else
    {
      v6 = 0;
    }

    return (*(*v6 + 160))(v6, a2);
  }

  return v5;
}

uint64_t AUIB_ProcessMultiple(char *a1, unsigned int *a2, const AudioTimeStamp *a3, unsigned int a4, unsigned int a5, const AudioBufferList **a6, unsigned int a7, AudioBufferList **a8)
{
  result = 4294967246;
  if (a3 && a6 && a8)
  {
    if (!a2)
    {
      a2 = &v11;
    }

    v11 = 0;
    if (a1)
    {
      v10 = a1 - 8;
    }

    else
    {
      v10 = 0;
    }

    return (*(*v10 + 160))(v10, a2);
  }

  return result;
}

uint64_t AUIB_ScheduleParameters(char *a1, const AudioUnitParameterEvent *a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  if (!a2)
  {
    return 4294967246;
  }

  if (a1)
  {
    v3 = a1 - 8;
  }

  else
  {
    v3 = 0;
  }

  return (*(*v3 + 168))();
}

uint64_t AUIB_OpenAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v7 = a1 - 8;
  }

  else
  {
    v7 = 0;
  }

  v8 = *gAUInstanceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "AUInstanceBase.cpp";
    v13 = 1024;
    v14 = 69;
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %p OpenAsync", &v11, 0x1Cu);
  }

  result = (*(*v7 + 40))(v7, a2, a3, a4);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t (*AUInstanceBase::LookupMethod_Music(AUInstanceBase *this))(char *a1, const unsigned __int8 *a2)
{
  v1 = AUIB_MIDIEvent;
  switch(this)
  {
    case 0x101:
      return v1;
    case 0x107:
      return AUIB_MIDIEventList;
    case 0x102:
      return AUIB_SysEx;
  }

  return AUInstanceBase::LookupMethod(this);
}

uint64_t AUIB_MIDIEvent(char *a1)
{
  if (a1)
  {
    v1 = a1 - 8;
  }

  else
  {
    v1 = 0;
  }

  return (*(*v1 + 192))();
}

uint64_t AUIB_SysEx(char *a1, const unsigned __int8 *a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return (*(*v2 + 200))(v2, a2);
}

uint64_t AUIB_MIDIEventList(char *a1, uint64_t a2, const MIDIEventList *a3)
{
  if (a1)
  {
    v3 = a1 - 8;
  }

  else
  {
    v3 = 0;
  }

  return (*(*v3 + 208))(v3, a2, a3);
}

uint64_t (*AUInstanceBase::LookupMethod_Output(AUInstanceBase *this))(char *a1)
{
  v1 = AUIB_Start;
  if (this == 513)
  {
    return v1;
  }

  if (this == 514)
  {
    return AUIB_Stop;
  }

  return AUInstanceBase::LookupMethod(this);
}

uint64_t AUIB_Start(char *a1)
{
  if (a1)
  {
    v1 = a1 - 8;
  }

  else
  {
    v1 = 0;
  }

  return (*(*v1 + 176))();
}

uint64_t AUIB_Stop(char *a1)
{
  if (a1)
  {
    v1 = a1 - 8;
  }

  else
  {
    v1 = 0;
  }

  return (*(*v1 + 184))();
}

uint64_t AUIB_Close(char *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1 - 8;
  }

  else
  {
    v1 = 0;
  }

  v2 = *gAUInstanceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315650;
    v7 = "AUInstanceBase.cpp";
    v8 = 1024;
    v9 = 83;
    v10 = 2048;
    v11 = v1;
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %p Close", &v6, 0x1Cu);
  }

  v3 = (*(*v1 + 48))(v1);
  (*(*v1 + 8))(v1);
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t AUIB_Open(char *a1, OpaqueAudioComponentInstance *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1 - 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *gAUInstanceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315650;
    v8 = "AUInstanceBase.cpp";
    v9 = 1024;
    v10 = 76;
    v11 = 2048;
    v12 = v3;
    _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %p Open", &v7, 0x1Cu);
  }

  result = (*(*v3 + 32))(v3, a2);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::optional<CA::AudioBuffersDeprecated>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    ExtendedAudioBufferList_Destroy(*a1);
  }

  return a1;
}

void AudioConverterCapturer::~AudioConverterCapturer(const std::__fs::filesystem::path *this)
{
  v14 = *MEMORY[0x1E69E9840];
  size = this[4].__pn_.__r_.__value_.__l.__size_;
  if (size)
  {
    AudioFileClose(size);
    v3 = this[4].__pn_.__r_.__value_.__r.__words[2];
    if (v3)
    {
      ExtAudioFileDispose(v3);
    }

    if (!this[5].__pn_.__r_.__value_.__r.__words[0])
    {
      std::__fs::filesystem::__remove(this, 0);
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v4 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_INFO))
      {
        v5 = this;
        if (SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          v5 = this->__pn_.__r_.__value_.__r.__words[0];
        }

        v8 = 136315650;
        v9 = "AudioConverterCapturer.cpp";
        v10 = 1024;
        v11 = 86;
        v12 = 2080;
        v13 = v5;
        _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d delete empty capture file %s", &v8, 0x1Cu);
      }
    }
  }

  v6 = this[6].__pn_.__r_.__value_.__l.__size_;
  this[6].__pn_.__r_.__value_.__l.__size_ = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (this[6].__pn_.__r_.__value_.__s.__data_[0] == 1)
  {
    ExtendedAudioBufferList_Destroy(this[5].__pn_.__r_.__value_.__r.__words[2]);
  }

  if (SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(this->__pn_.__r_.__value_.__l.__data_);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_18F8ACE50(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18F8ACD20);
  }

  _Unwind_Resume(a1);
}

OpaqueExtAudioFile *AudioConverterCapturer::setDecompressionCookie(AudioConverterCapturer *this, const void *inPropertyData, UInt32 a3)
{
  if (*(this + 8) == 1819304813)
  {
    std::terminate();
  }

  if (*(this + 13))
  {
    v4 = *(this + 13);

    return AudioFileSetProperty(v4, 0x6D676963u, a3, inPropertyData);
  }

  else
  {
    result = *(this + 14);
    if (result)
    {

      return ExtAudioFileSetProperty(result, 0x6D676963u, a3, inPropertyData);
    }
  }

  return result;
}

OpaqueExtAudioFile *AudioConverterCapturer::write(AudioConverterCapturer *this, const AudioBufferList *ioData, const AudioStreamPacketDescription *inPacketDescriptions, UInt32 a4)
{
  result = *(this + 14);
  if (result)
  {
    if (*(this + 8) != 1819304813)
    {
      goto LABEL_26;
    }

    mDataByteSize = ioData->mBuffers[0].mDataByteSize;
    v8 = *(this + 12);
    if (v8 > mDataByteSize)
    {
      return result;
    }

    v9 = mDataByteSize / v8;
    if (*(this + 129) == 1)
    {
      v10 = *(this + 22) * v9;
      if (v10 > *(this + 33))
      {
        if (*(this + 144) == 1)
        {
          ExtendedAudioBufferList_Destroy(*(this + 17));
          *(this + 144) = 0;
        }

        CA::AudioBuffersBase::AudioBuffersBase((this + 136), (this + 64), v10);
        *(this + 144) = 1;
        *(this + 33) = v9;
      }

      v11 = CA::AudioBuffersDeprecated::Prepare(*(this + 17), *(this + 23), v10);
      v12 = *(this + 19);
      *ioPropertyDataSize = ioData;
      mNumberBuffers = ioData->mNumberBuffers;
      v25 = 0;
      v20 = v11;
      v21 = *v11;
      v22 = 0;
      (*(*v12 + 160))(v12, v9, ioPropertyDataSize, &v20);
      if (*(this + 128) != 1)
      {
        goto LABEL_22;
      }

      if (*(this + 15))
      {
LABEL_13:
        result = ExtAudioFileWriteAsync(*(this + 14), v9, v11);
LABEL_23:
        v18 = *(this + 15) + v9;
        goto LABEL_24;
      }

      ioPropertyDataSize[0] = 4;
      LODWORD(v20) = 0;
      if (!ExtAudioFileGetProperty(*(this + 14), 0x696F6273u, ioPropertyDataSize, &v20))
      {
        v13 = v11[3];
        v14 = v13 >= v20;
        *(this + 128) = v13 < v20;
        if (!v14)
        {
          goto LABEL_13;
        }

LABEL_22:
        result = ExtAudioFileWrite(*(this + 14), v9, v11);
        goto LABEL_23;
      }

LABEL_26:
      std::terminate();
    }

    if (*(this + 128) == 1)
    {
      if (*(this + 15))
      {
        goto LABEL_20;
      }

      ioPropertyDataSize[0] = 4;
      LODWORD(v20) = 0;
      if (ExtAudioFileGetProperty(result, 0x696F6273u, ioPropertyDataSize, &v20))
      {
        goto LABEL_26;
      }

      v19 = ioData->mBuffers[0].mDataByteSize;
      result = *(this + 14);
      v14 = v19 >= v20;
      *(this + 128) = v19 < v20;
      if (!v14)
      {
LABEL_20:
        result = ExtAudioFileWriteAsync(result, v9, ioData);
        goto LABEL_23;
      }
    }

    result = ExtAudioFileWrite(result, v9, ioData);
    goto LABEL_23;
  }

  mData = ioData->mBuffers[0].mData;
  v17 = ioData->mBuffers[0].mDataByteSize;
  ioPropertyDataSize[0] = a4;
  result = AudioFileWritePackets(*(this + 13), 0, v17, inPacketDescriptions, *(this + 15), ioPropertyDataSize, mData);
  if (result)
  {
    return result;
  }

  v18 = *(this + 15) + ioPropertyDataSize[0];
LABEL_24:
  *(this + 15) = v18;
  return result;
}

uint64_t acv2::CBRConverter::GetPropertyInfo(acv2::CBRConverter *this, int a2, unsigned int *a3, unsigned __int8 *a4)
{
  result = 1886547824;
  if (a2 <= 1836016242)
  {
    if (a2 != 1667850867 && a2 != 1668244083)
    {
      v6 = 1835623027;
      goto LABEL_11;
    }
  }

  else if (a2 > 2020175986)
  {
    if (a2 != 2020569203)
    {
      v5 = 28787;
      goto LABEL_10;
    }
  }

  else if (a2 != 1836016243)
  {
    v5 = 25203;
LABEL_10:
    v6 = v5 | 0x78690000;
LABEL_11:
    if (a2 != v6)
    {
      return result;
    }
  }

  if (a3)
  {
    *a3 = 4;
  }

  result = 0;
  if (a4)
  {
    *a4 = 0;
  }

  return result;
}

void sub_18F8AD644(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<APComponent_FromBundle_Base *,std::shared_ptr<APComponent_FromBundle_Base>::__shared_ptr_default_delete<APComponent_FromBundle_Base,APComponent_FromBundle_Base>,std::allocator<APComponent_FromBundle_Base>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void std::__shared_ptr_pointer<APComponent_FromBundle_Base *,std::shared_ptr<APComponent_FromBundle_Base>::__shared_ptr_default_delete<APComponent_FromBundle_Base,APComponent_FromBundle_Base>,std::allocator<APComponent_FromBundle_Base>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

double modDate(NSString *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 attributesOfItemAtPath:v1 error:0];

  v4 = 0.0;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696A350]];
    v6 = v5;
    if (v5)
    {
      [v5 timeIntervalSinceReferenceDate];
      v4 = v7;
    }
  }

  return v4;
}

void sub_18F8ADFF0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18F8AEE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void ****a17, uint64_t a18, uint64_t a19, uint64_t a20, void ***a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
{
  a17 = &a21;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a17);
  a21 = &a43;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a21);
  a43 = &a33;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a43);
  a43 = &a37;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a43);

  _Unwind_Resume(a1);
}

void sub_18F8AF2C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = _ACPluginDBDirectory;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(AudioComponentVector &,AudioComponentVector &)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_18F8AFAD8(_Unwind_Exception *a1)
{
  STACK[0x270] = v1;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x270]);
  _Unwind_Resume(a1);
}

void anonymous namespace::addNewTypes(void *a1, uint64_t a2, uint64_t a3, int **a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, a2, a3, (a3 - a2) >> 2);
  v7 = *a4;
  v6 = a4[1];
  while (v7 != v6)
  {
    v8 = *v7;
    v11 = *v7;
    v9 = *a1;
    v10 = a1[1];
    if (*a1 != v10)
    {
      while (*v9 != v8)
      {
        if (++v9 == v10)
        {
          goto LABEL_8;
        }
      }
    }

    if (v9 == v10)
    {
LABEL_8:
      std::vector<unsigned int>::push_back[abi:ne200100](a1, &v11);
    }

    ++v7;
  }
}

void sub_18F8AFDD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AudioFileAllowListFilter::AudioFileAllowListFilter(__CFDictionary const*)::$_3::__invoke(__CFString *a1, uint64_t a2)
{
  v3 = v4;
  std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(a2, *(a2 + 8), v4, v5, (v5 - v4) >> 2);
  if (v3)
  {

    operator delete(v3);
  }
}

void sub_18F8AFE74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double anonymous namespace::GetTypesForStringInput(_anonymous_namespace_ *this, AudioFilePropertyID inPropertyID, const __CFString *a3)
{
  inSpecifier = a3;
  outDataSize = 0;
  if (AudioFileGetGlobalInfoSize(inPropertyID, 8u, &inSpecifier, &outDataSize))
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    std::vector<unsigned int>::vector[abi:ne200100](outPropertyData, outDataSize >> 2);
    if (AudioFileGetGlobalInfo(inPropertyID, 8u, &inSpecifier, &outDataSize, outPropertyData[0]))
    {
      *this = 0;
      *(this + 1) = 0;
      *(this + 2) = 0;
      if (outPropertyData[0])
      {
        outPropertyData[1] = outPropertyData[0];
        operator delete(outPropertyData[0]);
      }
    }

    else
    {
      result = *outPropertyData;
      *this = *outPropertyData;
      *(this + 2) = v7;
    }
  }

  return result;
}

void sub_18F8AFF3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - v11;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v15 = (__dst - v11) >> 2;
    if (v14)
    {
      std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v14);
    }

    v31 = 4 * v15;
    v32 = 4 * a5;
    v33 = (4 * v15);
    do
    {
      v34 = *v6++;
      *v33++ = v34;
      v32 -= 4;
    }

    while (v32);
    memcpy((v31 + 4 * a5), __dst, a1[1] - __dst);
    v35 = *a1;
    v36 = v31 + 4 * a5 + a1[1] - __dst;
    a1[1] = __dst;
    v37 = (__dst - v35);
    v38 = (v31 - (__dst - v35));
    memcpy(v38, v35, v37);
    v39 = *a1;
    *a1 = v38;
    a1[1] = v36;
    a1[2] = 0;
    if (v39)
    {

      operator delete(v39);
    }

    return;
  }

  v16 = (v10 - __dst) >> 2;
  if (v16 >= a5)
  {
    v20 = &__dst[4 * a5];
    v21 = &v10[-4 * a5];
    v22 = a1[1];
    while (v21 < v10)
    {
      v23 = *v21;
      v21 += 4;
      *v22++ = v23;
    }

    a1[1] = v22;
    if (v10 != v20)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v20);
    }

    v28 = 4 * a5;
    v29 = __dst;
    v30 = v6;
    goto LABEL_35;
  }

  v17 = &__src[v10 - __dst];
  v18 = a1[1];
  while (v17 != a4)
  {
    v19 = *v17;
    v17 += 4;
    *v18 = v19;
    v18 += 4;
  }

  a1[1] = v18;
  if (v16 >= 1)
  {
    v24 = &__dst[4 * a5];
    v25 = &v18[-4 * a5];
    v26 = v18;
    while (v25 < v10)
    {
      v27 = *v25;
      v25 += 4;
      *v26 = v27;
      v26 += 4;
    }

    a1[1] = v26;
    if (v18 != v24)
    {
      memmove(&__dst[4 * a5], __dst, v18 - v24);
    }

    if (v10 != __dst)
    {
      v29 = __dst;
      v30 = v6;
      v28 = v10 - __dst;
LABEL_35:

      memmove(v29, v30, v28);
    }
  }
}

void AudioFileAllowListFilter::AudioFileAllowListFilter(__CFDictionary const*)::$_2::__invoke(__CFString *a1, uint64_t a2)
{
  v3 = v4;
  std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(a2, *(a2 + 8), v4, v5, (v5 - v4) >> 2);
  if (v3)
  {

    operator delete(v3);
  }
}

void sub_18F8B0200(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AudioFileAllowListFilter::AudioFileAllowListFilter(__CFDictionary const*)::$_1::__invoke(__CFString *a1, uint64_t a2)
{
  v3 = v4;
  std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(a2, *(a2 + 8), v4, v5, (v5 - v4) >> 2);
  if (v3)
  {

    operator delete(v3);
  }
}

void sub_18F8B0298(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AudioFileAllowListFilter::AudioFileAllowListFilter(__CFDictionary const*)::$_0::__invoke(CFNumberRef number, uint64_t a2)
{
  v3 = v4;
  std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(a2, *(a2 + 8), v4, v5, (v5 - v4) >> 2);
  if (v3)
  {

    operator delete(v3);
  }
}

void sub_18F8B0328(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GetTypesForHFSCode(_anonymous_namespace_ *this, CFNumberRef number)
{
  valuePtr = 0;
  if (!CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    v3 = 0uLL;
LABEL_5:
    *this = v3;
    *(this + 2) = 0;
    return;
  }

  outDataSize = 0;
  if (AudioFileGetGlobalInfoSize(0x74686673u, 4u, &valuePtr, &outDataSize))
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
    return;
  }

  if (outDataSize >= 4)
  {
    std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](outDataSize >> 2);
  }

  *&v4 = 0;
  *(&v4 + 1) = 4 * (outDataSize >> 2);
  v6 = v4;
  GlobalInfo = AudioFileGetGlobalInfo(0x74686673u, 4u, &valuePtr, &outDataSize, 0);
  v3 = v6;
  if (!GlobalInfo)
  {
    goto LABEL_5;
  }

  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

void AudioFileAllowListFilter::AudioFileAllowListFilter(AudioFileAllowListFilter *this, CFDictionaryRef theDict)
{
  v4 = (this + 40);
  *(this + 64) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 25) = 0u;
  Value = CFDictionaryGetValue(theDict, @"kAudioFileAllowList_HFSCodeKey");
  v6 = Value;
  if (Value)
  {
    v7 = CFGetTypeID(Value);
    if (v7 == CFArrayGetTypeID())
    {
      v8 = CFRetain(v6);
      *(this + 3) = v8;
      context = 0;
      v28 = 0;
      v29 = 0;
      v30.length = CFArrayGetCount(v8);
      v30.location = 0;
      CFArrayApplyFunction(v8, v30, AudioFileAllowListFilter::AudioFileAllowListFilter(__CFDictionary const*)::$_0::__invoke, &context);
      if (*(this + 64) == 1)
      {
        if (v4 != &context)
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v4, context, v28, (v28 - context) >> 2);
        }
      }

      else
      {
        *v4 = 0;
        v4[1] = 0;
        v4[2] = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v4, context, v28, (v28 - context) >> 2);
        *(this + 64) = 1;
      }

      if (context)
      {
        v28 = context;
        operator delete(context);
      }
    }
  }

  v9 = CFDictionaryGetValue(theDict, @"kAudioFileAllowList_UTIKey");
  v10 = v9;
  if (v9)
  {
    v11 = CFGetTypeID(v9);
    if (v11 == CFArrayGetTypeID())
    {
      v12 = CFRetain(v10);
      *this = v12;
      context = 0;
      v28 = 0;
      v29 = 0;
      v31.length = CFArrayGetCount(v12);
      v31.location = 0;
      CFArrayApplyFunction(v12, v31, AudioFileAllowListFilter::AudioFileAllowListFilter(__CFDictionary const*)::$_1::__invoke, &context);
      if (*(this + 64) == 1)
      {
      }

      else
      {
        __p = 0;
        v25 = 0;
        v26 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, context, v28, (v28 - context) >> 2);
      }

      std::optional<CA::ChannelLayout>::operator=[abi:ne200100]<CA::ChannelLayout,void>(v4, &__p);
      if (__p)
      {
        operator delete(__p);
      }

      if (context)
      {
        v28 = context;
        operator delete(context);
      }
    }
  }

  v13 = CFDictionaryGetValue(theDict, @"kAudioFileAllowList_ExtensionKey");
  v14 = v13;
  if (v13)
  {
    v15 = CFGetTypeID(v13);
    if (v15 == CFArrayGetTypeID())
    {
      v16 = CFRetain(v14);
      *(this + 2) = v16;
      context = 0;
      v28 = 0;
      v29 = 0;
      v32.length = CFArrayGetCount(v16);
      v32.location = 0;
      CFArrayApplyFunction(v16, v32, AudioFileAllowListFilter::AudioFileAllowListFilter(__CFDictionary const*)::$_2::__invoke, &context);
      if (*(this + 64) == 1)
      {
      }

      else
      {
        __p = 0;
        v25 = 0;
        v26 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, context, v28, (v28 - context) >> 2);
      }

      std::optional<CA::ChannelLayout>::operator=[abi:ne200100]<CA::ChannelLayout,void>(v4, &__p);
      if (__p)
      {
        operator delete(__p);
      }

      if (context)
      {
        v28 = context;
        operator delete(context);
      }
    }
  }

  v17 = CFDictionaryGetValue(theDict, @"kAudioFileAllowList_MIMETypeKey");
  v18 = v17;
  if (v17)
  {
    v19 = CFGetTypeID(v17);
    if (v19 == CFArrayGetTypeID())
    {
      v20 = CFRetain(v18);
      *(this + 1) = v20;
      context = 0;
      v28 = 0;
      v29 = 0;
      v33.length = CFArrayGetCount(v20);
      v33.location = 0;
      CFArrayApplyFunction(v20, v33, AudioFileAllowListFilter::AudioFileAllowListFilter(__CFDictionary const*)::$_3::__invoke, &context);
      if (*(this + 64) == 1)
      {
      }

      else
      {
        __p = 0;
        v25 = 0;
        v26 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, context, v28, (v28 - context) >> 2);
      }

      std::optional<CA::ChannelLayout>::operator=[abi:ne200100]<CA::ChannelLayout,void>(v4, &__p);
      if (__p)
      {
        operator delete(__p);
      }

      if (context)
      {
        v28 = context;
        operator delete(context);
      }
    }
  }

  v21 = CFDictionaryGetValue(theDict, @"kAudioFileAllowList_DataFormatKey");
  v22 = v21;
  if (v21)
  {
    v23 = CFGetTypeID(v21);
    if (v23 == CFArrayGetTypeID())
    {
      *(this + 4) = CFRetain(v22);
    }
  }
}

void sub_18F8B08F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v13 + 64) == 1)
  {
    v16 = *v14;
    if (*v14)
    {
      *(v13 + 48) = v16;
      operator delete(v16);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioFileAllowListFilter::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  *(a1 + 16) = v5;
  v6 = *a2;
  if (*a2)
  {
    v6 = CFRetain(v6);
  }

  *a1 = v6;
  v7 = *(a2 + 24);
  if (v7)
  {
    v7 = CFRetain(v7);
  }

  *(a1 + 24) = v7;
  v8 = *(a2 + 32);
  if (v8)
  {
    v8 = CFRetain(v8);
  }

  *(a1 + 32) = v8;
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (a1 != a2 && *(a1 + 64))
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 40), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
    }
  }

  else if (*(a1 + 64))
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      *(a1 + 48) = v9;
      operator delete(v9);
    }

    *(a1 + 64) = 0;
  }

  else
  {
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 40, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
    *(a1 + 64) = 1;
  }

  return a1;
}

void AudioFileAllowListFilter::~AudioFileAllowListFilter(AudioFileAllowListFilter *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
    *(this + 1) = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
    *(this + 2) = 0;
  }

  if (*this)
  {
    CFRelease(*this);
    *this = 0;
  }

  v4 = *(this + 3);
  if (v4)
  {
    CFRelease(v4);
    *(this + 3) = 0;
  }

  v5 = *(this + 4);
  if (v5)
  {
    CFRelease(v5);
    *(this + 4) = 0;
  }

  if (*(this + 64) == 1)
  {
    v6 = *(this + 5);
    if (v6)
    {
      *(this + 6) = v6;
      operator delete(v6);
    }
  }
}

void AudioFileAllowListFilter::GetAllowedTypes(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 64) == 1 && *(a2 + 40) == *(a2 + 48))
  {
    goto LABEL_25;
  }

  v6 = *a3;
  if (*a3 > 1718446444)
  {
    if (v6 == 1718446445)
    {
      v7 = *(a2 + 8);
      if (!v7)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v6 != 1718973545)
      {
        goto LABEL_25;
      }

      v7 = *a2;
      if (!*a2)
      {
LABEL_23:
        if (*(a2 + 64) == 1)
        {
          goto LABEL_29;
        }

        goto LABEL_33;
      }
    }
  }

  else if (v6 == 1717926004)
  {
    v7 = *(a2 + 16);
    if (!v7)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v6 != 1718118003)
    {
      goto LABEL_25;
    }

    v7 = *(a2 + 24);
    if (!v7)
    {
LABEL_19:
      if (*(a2 + 64) == 1)
      {
        goto LABEL_29;
      }

      goto LABEL_33;
    }
  }

  v12.length = CFArrayGetCount(v7);
  v12.location = 0;
  if (!CFArrayContainsValue(v7, v12, *(a3 + 8)))
  {
    goto LABEL_25;
  }

  v8 = *a3;
  if (*a3 <= 1718446444)
  {
    if (v8 != 1717926004)
    {
      if (v8 == 1718118003)
      {
        goto LABEL_19;
      }

LABEL_25:
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return;
    }

LABEL_26:
    if (*(a2 + 64) == 1)
    {
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (v8 != 1718446445)
  {
    if (v8 != 1718973545)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

LABEL_28:
  if (*(a2 + 64) == 1)
  {
LABEL_29:
    v9 = __p;
    goto LABEL_30;
  }

LABEL_33:
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v9 = __p;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, __p, v11, (v11 - __p) >> 2);
LABEL_30:
  if (v9)
  {
    operator delete(v9);
  }
}

void sub_18F8B0DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::intersectionOfAllowedTypes(void *a1, int *a2, int *a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v8 = *v6;
      v11 = *v6;
      v9 = *a4;
      v10 = *(a4 + 8);
      if (*a4 != v10)
      {
        while (*v9 != v8)
        {
          if (++v9 == v10)
          {
            goto LABEL_9;
          }
        }
      }

      if (v9 != v10)
      {
        std::vector<unsigned int>::push_back[abi:ne200100](a1, &v11);
      }

LABEL_9:
      ++v6;
    }

    while (v6 != a3);
  }
}

void sub_18F8B0E60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL AudioFileAllowListFilter::IsDataFormatAllowed(AudioFileAllowListFilter *this, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v4 = *(this + 4);
  if (v4)
  {
    v8.length = CFArrayGetCount(v4);
    v8.location = 0;
    v5 = CFArrayContainsValue(v4, v8, v3) != 0;
  }

  else
  {
    v5 = 1;
  }

  CFRelease(v3);
  return v5;
}

uint64_t CAFAudioStream::ParseHeader(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 348);
  v4 = *(a1 + 236);
  if (v4 > 301)
  {
    if (v4 > 349)
    {
      switch(v4)
      {
        case 350:
          v33 = *(a1 + 256);
          v34 = *(a1 + 264);
LABEL_171:
          LODWORD(__dst) = v33;
          StreamBuffer::Copy((*(a1 + 8) + 72), &__dst, v34);
          v129 = __dst;
          v130 = *(a1 + 256);
          *(a1 + 264) += __dst;
          v131 = v130 - v129;
          *(a1 + 256) = v131;
          if (!v131)
          {
            v132 = *(a1 + 432);
            v133 = *(a1 + 440);
            __dst = 0;
            v155 = 1;
            __dst = CFDataCreate(0, v132, v133);
            v134 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], __dst, 0, 0, 0);
            if (v134)
            {
              theDict = v134;
              v153 = 1;
              v135 = CFGetTypeID(v134);
              if (v135 == CFDictionaryGetTypeID())
              {
                operator new();
              }

              v13 = 1667787583;
              CACFObject<void const*>::~CACFObject(&theDict);
            }

            else
            {
              v13 = 1667787583;
            }

            CACFData::~CACFData(&__dst);
            return v13;
          }

          v13 = 0;
          v42 = 350;
LABEL_209:
          *(a1 + 236) = v42;
          return v13;
        case 373:
          v47 = *(a1 + 256);
          v48 = *(a1 + 264);
          goto LABEL_166;
        case 383:
          v11 = *(a1 + 256);
          v12 = *(a1 + 264);
LABEL_92:
          LODWORD(__dst) = v11;
          StreamBuffer::Copy((*(a1 + 8) + 72), &__dst, v12);
          v78 = __dst;
          v79 = *(a1 + 256);
          *(a1 + 264) += __dst;
          v80 = v79 - v78;
          *(a1 + 256) = v80;
          if (!v80)
          {
            operator new();
          }

          v13 = 0;
          v42 = 383;
          goto LABEL_209;
      }
    }

    else
    {
      switch(v4)
      {
        case 302:
          v14 = *(a1 + 256);
          v15 = *(a1 + 264);
          goto LABEL_22;
        case 319:
          v43 = *(a1 + 256);
          v44 = *(a1 + 264);
          goto LABEL_142;
        case 330:
          v7 = *(a1 + 256);
          v8 = *(a1 + 264);
          goto LABEL_60;
      }
    }

    goto LABEL_57;
  }

  if (v4 > 244)
  {
    switch(v4)
    {
      case 245:
        v31 = *(a1 + 256);
        v32 = *(a1 + 264);
        goto LABEL_69;
      case 261:
        v45 = *(a1 + 256);
        v46 = *(a1 + 264);
        goto LABEL_147;
      case 279:
        LODWORD(v9) = *(a1 + 256);
        v10 = *(a1 + 264);
        goto LABEL_100;
    }

    goto LABEL_57;
  }

  if (v4 == -1)
  {
    return 0;
  }

  if (v4)
  {
    if (v4 == 229)
    {
      v5 = *(a1 + 256);
      v6 = *(a1 + 264);
      goto LABEL_49;
    }

LABEL_57:
    v13 = 0;
LABEL_208:
    v42 = -1;
    goto LABEL_209;
  }

  v35 = *(a1 + 8);
  LODWORD(v158) = 1;
  if ((*(v35 + 104) & 1) == 0)
  {
    *(v35 + 104) = 1;
    v36 = *(v35 + 24);
    if (v36)
    {
      v36(*(v35 + 40), *(v35 + 8), 1717988724, &v158);
    }
  }

  v5 = 8;
  *(a1 + 256) = 8;
  v6 = (a1 + 336);
  *(a1 + 264) = a1 + 336;
LABEL_49:
  LODWORD(v158) = v5;
  StreamBuffer::Copy((*(a1 + 8) + 72), &v158, v6);
  v37 = v158;
  v38 = *(a1 + 256);
  *(a1 + 264) += v158;
  v39 = v38 - v37;
  *(a1 + 256) = v39;
  if (v39)
  {
    v13 = 0;
    v42 = 229;
    goto LABEL_209;
  }

  v40 = *(a1 + 336);
  *(a1 + 336) = bswap32(v40);
  v41 = *(a1 + 340);
  *(a1 + 340) = __rev16(v41);
  *(a1 + 342) = bswap32(*(a1 + 342)) >> 16;
  if (v40 != 1717985635 || v41 != 256)
  {
LABEL_207:
    v13 = 1685348671;
    *(a1 + 177) = 1;
    goto LABEL_208;
  }

  *(a1 + 296) += 8;
  while (1)
  {
    v31 = 12;
    *(a1 + 256) = 12;
    v32 = (a1 + 344);
    *(a1 + 264) = a1 + 344;
LABEL_69:
    LODWORD(__dst) = v31;
    StreamBuffer::Copy((*(a1 + 8) + 72), &__dst, v32);
    v63 = __dst;
    v64 = *(a1 + 256);
    *(a1 + 264) += __dst;
    v65 = v64 - v63;
    *(a1 + 256) = v65;
    if (v65)
    {
      v13 = 0;
      v42 = 245;
      goto LABEL_209;
    }

    v66 = bswap32(*(a1 + 344));
    *(a1 + 344) = v66;
    v9 = bswap64(v3->i64[0]);
    v3->i64[0] = v9;
    if (v9 <= 0)
    {
      goto LABEL_207;
    }

    v67 = *(a1 + 296);
    *(a1 + 296) = v67 + 12;
    if (v66 <= 1802857320)
    {
      break;
    }

    if (v66 > 1819243875)
    {
      if (v66 == 1819243876)
      {
        if (!HIDWORD(v9))
        {
          *(a1 + 440) = v9;
          CADeprecated::CAAutoFree<unsigned char>::alloc((a1 + 432), v9, 0);
          v33 = *(a1 + 440);
          *(a1 + 256) = v33;
          v34 = *(a1 + 432);
          *(a1 + 264) = v34;
          goto LABEL_171;
        }

        goto LABEL_193;
      }

      if (v66 == 1885432692)
      {
        if (HIDWORD(v9))
        {
          goto LABEL_193;
        }

        if (*(a1 + 284) < v9)
        {
          *(a1 + 284) = v9;
          CADeprecated::CAAutoFree<unsigned char>::allocBytes((a1 + 288), v9, 0);
          LODWORD(v9) = v3->i32[0];
        }

        *(a1 + 256) = v9;
        v10 = *(a1 + 288);
        *(a1 + 264) = v10;
LABEL_100:
        LODWORD(__dst) = v9;
        StreamBuffer::Copy((*(a1 + 8) + 72), &__dst, v10);
        v81 = __dst;
        v82 = *(a1 + 256);
        *(a1 + 264) += __dst;
        v83 = v82 - v81;
        *(a1 + 256) = v83;
        if (v83)
        {
          v13 = 0;
          v42 = 279;
          goto LABEL_209;
        }

        v13 = 1667787583;
        v84 = v3->i64[0];
        if (v3->i64[0] < 0x18)
        {
          goto LABEL_208;
        }

        v85 = *(a1 + 288);
        v151 = (*(*a1 + 88))(a1);
        v86 = *(a1 + 152);
        if (v86)
        {
          CompressedPacketTable::~CompressedPacketTable(v86);
          MEMORY[0x193ADF220]();
        }

        *(a1 + 152) = 0;
        AudioFileStreamObject::GetPacketTable(a1);
        v87 = *(a1 + 44);
        __dst = 0;
        CADeprecated::CAAutoFree<unsigned char>::allocBytes(&__dst, v84, 0);
        v88 = __dst;
        memcpy(__dst, v85, v84);
        v89 = v88 + 3;
        v90 = v88 + v84;
        v91 = *(a1 + 112);
        v92 = vrev64q_s8(*v88->i8);
        *v88->i8 = v92;
        v93 = vrev32_s8(v88[2]);
        v88[2] = v93;
        *(a1 + 160) = v92.i64[1];
        *(a1 + 168) = v93;
        if (*(a1 + 40) && *(a1 + 44))
        {
LABEL_106:
          v13 = 0;
          *(a1 + 112) = v91;
          if (!v88)
          {
            goto LABEL_198;
          }
        }

        else if (v92.i64[0] <= v84 - 24)
        {
          (*(*a1 + 80))(a1, v92.i64[0]);
          if (v84 != 24)
          {
            v94 = 0;
            v149 = 0;
            do
            {
              if (v94 >= *v88)
              {
                break;
              }

              v148 = v94;
              v95 = 0;
              v96 = 5;
              do
              {
                if (v89 >= v90)
                {
LABEL_177:
                  exception = __cxa_allocate_exception(4uLL);
                  *exception = 1667787583;
                  __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
                }

                if (!v96)
                {
LABEL_178:
                  v137 = __cxa_allocate_exception(4uLL);
                  *v137 = 1885563711;
                  __cxa_throw(v137, MEMORY[0x1E69E5478], 0);
                }

                v97 = v89->i8[0];
                v89 = (v89 + 1);
                v98 = v97 & 0x7F | (v95 << 7);
                --v96;
                v95 = v98;
              }

              while (v97 < 0);
              if (v98 > v91)
              {
                v91 = v98;
              }

              if (v87)
              {
                LODWORD(v99) = 0;
              }

              else
              {
                v106 = 0;
                LODWORD(v99) = 0;
                do
                {
                  if (&v89->i8[v106] >= v90)
                  {
                    goto LABEL_177;
                  }

                  if (v106 == 5)
                  {
                    goto LABEL_178;
                  }

                  v107 = v89->i8[v106];
                  LODWORD(v99) = v107 & 0x7F | (v99 << 7);
                  ++v106;
                }

                while (v107 < 0);
                v89 = (v89 + v106);
              }

              PacketTable = AudioFileStreamObject::GetPacketTable(a1);
              v101 = PacketTable;
              v102 = __PAIR64__(v98, v99);
              v103 = *(a1 + 44);
              *&v158 = v149;
              if (v103)
              {
                v99 = v103;
              }

              else
              {
                v99 = v99;
              }

              *(&v158 + 1) = v102;
              v104 = *(PacketTable + 24);
              if (v104)
              {
                v147 = PacketTable;
                CompressedPacketTable::operator[](v156, PacketTable, v104 - 1);
                v101 = v147;
                v104 = v157;
              }

              v159 = v104 + v99;
              CompressedPacketTable::push_back(v101, &v158);
              if (v98 > *(a1 + 112))
              {
                *(a1 + 112) = v98;
              }

              v149 += v98;
              if (v149 >= v151 && v151 >= 1)
              {
                break;
              }

              v94 = v148 + 1;
            }

            while (v89 < v90);
          }

          goto LABEL_106;
        }

        free(v88);
LABEL_198:
        if (v13)
        {
          goto LABEL_208;
        }

        v142 = *(a1 + 8);
        LODWORD(__dst) = 1;
        if ((*(v142 + 106) & 1) == 0)
        {
          *(v142 + 106) = 1;
          v143 = *(v142 + 24);
          if (v143)
          {
            v143(*(v142 + 40), *(v142 + 8), 1886283375, &__dst);
            v142 = *(a1 + 8);
          }
        }

        LODWORD(__dst) = 1;
        v144 = *(v142 + 24);
        if (v144)
        {
          v144(*(v142 + 40), *(v142 + 8), 1886616165, &__dst);
        }
      }
    }

    else if (v66 == 1802857321)
    {
      if (HIDWORD(v9))
      {
        goto LABEL_193;
      }

      CADeprecated::CAAutoFree<unsigned char>::alloc((a1 + 120), v9, 0);
      v47 = v3->i32[0];
      *(a1 + 256) = v3->i32[0];
      v48 = *(a1 + 120);
      *(a1 + 264) = v48;
LABEL_166:
      LODWORD(__dst) = v47;
      StreamBuffer::Copy((*(a1 + 8) + 72), &__dst, v48);
      v125 = __dst;
      v126 = *(a1 + 256);
      *(a1 + 264) += __dst;
      v127 = v126 - v125;
      *(a1 + 256) = v127;
      if (v127)
      {
        v13 = 0;
        v42 = 373;
        goto LABEL_209;
      }

      *(a1 + 128) = v3->i64[0];
      v128 = *(a1 + 8);
      LODWORD(__dst) = 1;
      *(v128 + 108) = 1;
      v59 = *(v128 + 24);
      if (v59)
      {
        v60 = *(v128 + 40);
        v61 = *(v128 + 8);
        v62 = 1835493731;
        goto LABEL_175;
      }
    }

    else if (v66 == 1818522467)
    {
      if (HIDWORD(v9))
      {
        goto LABEL_193;
      }

      v68 = *(a1 + 408);
      if (v68)
      {
        free(v68);
        *(a1 + 408) = 0;
      }

      v69 = malloc_type_malloc(v9, 0xBAAF0B94uLL);
      if (!v69)
      {
        v140 = __cxa_allocate_exception(8uLL);
        v141 = std::bad_alloc::bad_alloc(v140);
      }

      v8 = v69;
      *(a1 + 408) = v69;
      v7 = v3->i32[0];
      *(a1 + 256) = v3->i32[0];
      *(a1 + 264) = v69;
LABEL_60:
      LODWORD(__dst) = v7;
      StreamBuffer::Copy((*(a1 + 8) + 72), &__dst, v8);
      v49 = __dst;
      v50 = *(a1 + 256);
      *(a1 + 264) += __dst;
      v51 = v50 - v49;
      *(a1 + 256) = v51;
      if (v51)
      {
        v13 = 0;
        v42 = 330;
        goto LABEL_209;
      }

      v52 = v3->u32[0] / 0x24uLL;
      *(a1 + 400) = v52;
      std::vector<AudioFormatListItem>::resize((a1 + 64), v52);
      if (*(a1 + 400))
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        do
        {
          v56 = *(a1 + 408) + v53;
          *v56 = bswap64(*v56);
          *(v56 + 8) = vrev32q_s8(*(v56 + 8));
          *(v56 + 24) = vrev32_s8(*(v56 + 24));
          *(v56 + 32) = bswap32(*(v56 + 32));
          CAFtoAF_FormatListItem(v56, (*(a1 + 64) + v54));
          ++v55;
          v54 += 48;
          v53 += 36;
        }

        while (v55 < *(a1 + 400));
      }

      v57 = *(a1 + 408);
      if (v57)
      {
        free(v57);
        *(a1 + 408) = 0;
      }

      v58 = *(a1 + 8);
      LODWORD(__dst) = 0;
      *(v58 + 108) = 1;
      v59 = *(v58 + 24);
      if (v59)
      {
        v60 = *(v58 + 40);
        v61 = *(v58 + 8);
        v62 = 1718383476;
LABEL_175:
        v59(v60, v61, v62, &__dst);
      }
    }

LABEL_204:
    v145 = *(a1 + 296) + v3->i64[0];
    *(a1 + 296) = v145;
    *(*(a1 + 8) + 96) = v145;
  }

  if (v66 > 1684370274)
  {
    if (v66 == 1684370275)
    {
      v45 = 32;
      *(a1 + 256) = 32;
      v46 = (a1 + 356);
      *(a1 + 264) = a1 + 356;
LABEL_147:
      LODWORD(__dst) = v45;
      StreamBuffer::Copy((*(a1 + 8) + 72), &__dst, v46);
      v113 = __dst;
      v114 = *(a1 + 256);
      *(a1 + 264) += __dst;
      v115 = v114 - v113;
      *(a1 + 256) = v115;
      if (v115)
      {
        v13 = 0;
        v42 = 261;
        goto LABEL_209;
      }

      v116 = bswap64(v3->u64[1]);
      v3->i64[1] = v116;
      v117 = vrev32q_s8(v3[1]);
      v3[1] = v117;
      v118 = vrev32_s8(*v3[2].i8);
      *v3[2].i8 = v118;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 24) = v116;
      *(a1 + 32) = v117.i32[0];
      v119 = v117.i32[1];
      *(a1 + 40) = vextq_s8(v117, v117, 8uLL).u64[0];
      *(a1 + 52) = v118;
      if (v117.i32[3] == 1)
      {
        *(a1 + 48) = v117.i32[2];
      }

      if (v117.i32[0] == 1819304813)
      {
        if (v117.i8[4])
        {
          v120 = 1;
        }

        else
        {
          v120 = 4;
        }

        v121 = (v120 | v117.i8[4] & 2) ^ 2;
        if ((v118.i8[4] & 7) == 0 && (v118.i32[1] >> 3) * v118.i32[0] == v117.i32[2])
        {
          v119 = v121 | 8;
        }

        else
        {
          v119 = v121 | 0x10;
        }
      }

      *(a1 + 36) = v119;
      if (v117.i32[2])
      {
        *(a1 + 112) = v117.i32[2];
        v123 = (*(*a1 + 88))(a1);
        (*(*a1 + 80))(a1, v123 / *(a1 + 40));
      }

      v124 = *(a1 + 8);
      LODWORD(__dst) = 1;
      if ((*(v124 + 105) & 1) == 0)
      {
        *(v124 + 105) = 1;
        v59 = *(v124 + 24);
        if (v59)
        {
          v60 = *(v124 + 40);
          v61 = *(v124 + 8);
          v62 = 1684434292;
          goto LABEL_175;
        }
      }
    }

    else if (v66 == 1768842863)
    {
      v70 = *(*(a1 + 8) + 48);
      v71 = *(*(a1 + 8) + 56);
      v72 = v71 - v70;
      if (v71 != v70)
      {
        v73 = 0;
        v74 = v72 >> 2;
        v75 = 1;
        do
        {
          v76 = *(v70 + 4 * v73);
          v73 = v75++;
        }

        while (v76 != 1935832164 && v74 > v73);
        if (v76 == 1935832164)
        {
          if (v9 < 0x100000000)
          {
            CADeprecated::CAAutoFree<unsigned char>::alloc((a1 + 416), v9, 0);
            v11 = v3->i32[0];
            *(a1 + 256) = v3->i32[0];
            v12 = *(a1 + 416);
            *(a1 + 264) = v12;
            goto LABEL_92;
          }

LABEL_193:
          v13 = 2003334207;
          goto LABEL_208;
        }
      }
    }

    goto LABEL_204;
  }

  if (v66 == 1667785070)
  {
    if (HIDWORD(v9))
    {
      goto LABEL_193;
    }

    CADeprecated::CAAutoFree<unsigned char>::allocBytes((a1 + 136), v9, 0);
    v43 = v3->i32[0];
    *(a1 + 256) = v3->i32[0];
    v44 = *(a1 + 136);
    *(a1 + 264) = v44;
LABEL_142:
    LODWORD(__dst) = v43;
    StreamBuffer::Copy((*(a1 + 8) + 72), &__dst, v44);
    v108 = __dst;
    v109 = *(a1 + 256);
    *(a1 + 264) += __dst;
    v110 = v109 - v108;
    *(a1 + 256) = v110;
    if (v110)
    {
      v13 = 0;
      v42 = 319;
      goto LABEL_209;
    }

    v111 = v3->i64[0];
    *(a1 + 144) = v3->i64[0];
    AudioChannelLayout_BtoN(*(a1 + 136), v111);
    v112 = *(a1 + 8);
    LODWORD(__dst) = 1;
    if ((*(v112 + 109) & 1) == 0)
    {
      *(v112 + 109) = 1;
      v59 = *(v112 + 24);
      if (v59)
      {
        v60 = *(v112 + 40);
        v61 = *(v112 + 8);
        v62 = 1668112752;
        goto LABEL_175;
      }
    }

    goto LABEL_204;
  }

  if (v66 != 1684108385)
  {
    goto LABEL_204;
  }

  *(a1 + 104) = v67 + 16;
  if (v9 < 5)
  {
    (*(*a1 + 96))(a1, -1);
  }

  else
  {
    (*(*a1 + 96))(a1, v9 - 4);
    v138 = *(a1 + 8);
    LODWORD(__dst) = 1;
    v139 = *(v138 + 24);
    if (v139)
    {
      v139(*(v138 + 40), *(v138 + 8), 1650683508, &__dst);
    }
  }

  v14 = 4;
  *(a1 + 256) = 4;
  v15 = (a1 + 332);
  *(a1 + 264) = a1 + 332;
LABEL_22:
  LODWORD(__dst) = v14;
  StreamBuffer::Copy((*(a1 + 8) + 72), &__dst, v15);
  v16 = __dst;
  v17 = *(a1 + 256);
  *(a1 + 264) += __dst;
  v18 = v17 - v16;
  *(a1 + 256) = v18;
  if (v18)
  {
    v13 = 0;
    v42 = 302;
    goto LABEL_209;
  }

  *(a1 + 332) = bswap32(*(a1 + 332));
  v19 = *(a1 + 8);
  LODWORD(__dst) = 1;
  v20 = *(v19 + 24);
  if (v20)
  {
    v20(*(v19 + 40), *(v19 + 8), 1685022310, &__dst);
    v19 = *(a1 + 8);
  }

  v21 = a2;
  if (*(a1 + 40) || (*(v19 + 106) & 1) != 0)
  {
    LODWORD(__dst) = 1;
    if (!*(v19 + 112))
    {
      *(v19 + 112) = 1;
      v22 = *(v19 + 24);
      if (v22)
      {
        v22(*(v19 + 40), *(v19 + 8), 1919247481, &__dst);
        v21 = a2;
        v19 = *(a1 + 8);
      }
    }

    v23 = 0;
    *v21 = a1;
    *(v21 + 8) = AudioFileStreamObject::GeneratePackets;
    *(v21 + 16) = 0;
    v24 = *(v19 + 88);
    v25 = *(v19 + 96);
    v26 = v24 + *(v19 + 80);
    v27 = v25 < v24 || v26 <= v25;
    v28 = v27;
    v29 = v26 - v25;
    if (!v27 && v29)
    {
      v23 = *(v19 + 72) + (v25 - v24);
    }

    v13 = 0;
    *(v21 + 32) = v23;
    if (v28)
    {
      v30 = 0;
    }

    else
    {
      v30 = v29;
    }

    *(v21 + 24) = v30;
  }

  else
  {
    *(a1 + 236) = -1;
    return 1869640813;
  }

  return v13;
}

void sub_18F8B2058(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (a17)
  {
    free(a17);
  }

  JUMPOUT(0x18F8B1F54);
}

CACFDictionary *CADeprecated::CAAutoDelete<CACFDictionary>::set(CACFDictionary **a1, CACFDictionary *a2)
{
  result = *a1;
  if (result != a2)
  {
    if (result)
    {
      CACFDictionary::~CACFDictionary(result);
      result = MEMORY[0x193ADF220]();
    }

    *a1 = a2;
  }

  return result;
}

uint64_t CAFAudioStream::GetProperty(CAFAudioStream *this, int a2, unsigned int *a3, void *__dst)
{
  switch(a2)
  {
    case 1768842863:
      if (*a3 != 8)
      {
        return 561211770;
      }

      v7 = *(this + 53);
      if (!v7)
      {
        return 1836020325;
      }

LABEL_10:
      if (*v7)
      {
        CFRetain(*v7);
        v8 = *v7;
      }

      else
      {
        v8 = 0;
      }

      result = 0;
      *__dst = v8;
      return result;
    case 1819243876:
      if (*a3 != 8)
      {
        return 561211770;
      }

      v7 = *(this + 56);
      if (!v7)
      {
        return 1836020325;
      }

      goto LABEL_10;
    case 1935893603:
      if (*a3 == 8)
      {
        if (*(this + 56))
        {
          cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v11 = 257;
          AudioFileGetSoundCheckDictionaryFromLoudnessInfo(*(this + 56), &cf);
          if (cf)
          {
            CFRetain(cf);
            v6 = cf;
          }

          else
          {
            v6 = 0;
          }

          *__dst = v6;
          CACFDictionary::~CACFDictionary(&cf);
          return 0;
        }

        return 1836020325;
      }

      return 561211770;
  }

  return AudioFileStreamObject::GetProperty(this, a2, a3, __dst);
}

uint64_t CAFAudioStream::GetPropertyInfo(CAFAudioStream *this, int a2, unsigned int *a3, unsigned __int8 *a4)
{
  if (a2 != 1768842863 && a2 != 1819243876 && a2 != 1935893603)
  {
    return AudioFileStreamObject::GetPropertyInfo(this, a2, a3, a4);
  }

  if (a3)
  {
    *a3 = 8;
  }

  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

void CAFAudioStream::~CAFAudioStream(CACFDictionary **this)
{
  CAFAudioStream::~CAFAudioStream(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033CB30;
  CADeprecated::CAAutoDelete<CACFDictionary>::set(this + 56, 0);
  v2 = this[54];
  if (v2)
  {
    free(v2);
    this[54] = 0;
  }

  CADeprecated::CAAutoDelete<CACFDictionary>::set(this + 53, 0);
  v3 = this[52];
  if (v3)
  {
    free(v3);
    this[52] = 0;
  }

  v4 = this[51];
  if (v4)
  {
    free(v4);
    this[51] = 0;
  }

  v5 = this[49];
  if (v5)
  {
    free(v5);
    this[49] = 0;
  }

  AudioFileStreamObject::~AudioFileStreamObject(this);
}

uint64_t GetAllFormatIDs(UInt32 *outPropertyDataSize, void *outPropertyData)
{
  if (outPropertyData)
  {
    return AudioFormatGetProperty(0x61636966u, 0, 0, outPropertyDataSize, outPropertyData);
  }

  else
  {
    return AudioFormatGetPropertyInfo(0x61636966u, 0, 0, outPropertyDataSize);
  }
}

void AppendCommentStringToDictionary(CACFDictionary *a1, CFStringRef theString)
{
  if (CFStringGetLength(theString))
  {
    if (CACFDictionary::HasKey(a1, @"comments"))
    {
      theStringa = 0;
      CACFDictionary::GetString(a1, @"comments", &theStringa);
      if (theStringa)
      {
        v4 = *MEMORY[0x1E695E480];
        MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theStringa);
        if (MutableCopy)
        {
          v6 = MutableCopy;
          CFStringAppend(MutableCopy, @"\n\n");
          CFStringAppend(v6, theString);
          Copy = CFStringCreateCopy(v4, v6);
          if (Copy)
          {
            v8 = Copy;
            if (CFStringGetLength(Copy))
            {
              CACFDictionary::AddString(a1, @"comments", v8);
            }

            CFRelease(v8);
          }

          CFRelease(v6);
        }
      }
    }

    else
    {

      CACFDictionary::AddString(a1, @"comments", theString);
    }
  }
}

uint64_t FillOutAudioDescription(AudioStreamBasicDescription *a1, UInt32 a2, void *a3, int a4)
{
  a1->mFormatFlags = 0;
  mFormatID = a1->mFormatID;
  if (mFormatID > 1768775987)
  {
    if (mFormatID <= 1918990111)
    {
      if (mFormatID <= 1768829745)
      {
        if (mFormatID == 1768775988)
        {
          result = 0;
          a1->mBitsPerChannel = 0;
          *&a1->mFramesPerPacket = 64;
          a1->mBytesPerPacket = 34 * a1->mChannelsPerFrame;
          return result;
        }

        if (mFormatID == 1768829492)
        {
          result = 0;
          v7 = 3 * a1->mChannelsPerFrame;
          a1->mFramesPerPacket = 1;
          a1->mBytesPerFrame = v7;
          a1->mBytesPerPacket = v7;
          v8 = 24;
LABEL_39:
          a1->mBitsPerChannel = v8;
          return result;
        }

        goto LABEL_40;
      }

      if (mFormatID != 1768829746)
      {
        if (mFormatID == 1819304813)
        {
          goto LABEL_24;
        }

LABEL_40:
        outPropertyData = a1->mSampleRate;
        mChannelsPerFrame = a1->mChannelsPerFrame;
        v23 = mFormatID;
        v24 = 0;
        *v25 = a1->mBytesPerPacket;
        *&v25[4] = 0;
        v27 = 0;
        ioPropertyDataSize = 40;
        result = AudioFormatGetProperty(0x666D7469u, a2, a3, &ioPropertyDataSize, &outPropertyData);
        v18 = 0;
        v19 = 0;
        v20 = 0;
        if (!result)
        {
          a1->mFormatFlags = v24;
          v18 = *v25;
          v19 = *&v25[8];
          v20 = v27;
          a1->mReserved = HIDWORD(v27);
        }

        *&a1->mBytesPerPacket = v18;
        a1->mBytesPerFrame = v19;
        a1->mBitsPerChannel = v20;
        return result;
      }

LABEL_26:
      result = 0;
      v14 = 4 * a1->mChannelsPerFrame;
      a1->mFramesPerPacket = 1;
      a1->mBytesPerFrame = v14;
      a1->mBytesPerPacket = v14;
      v8 = 32;
      goto LABEL_39;
    }

    if (mFormatID <= 1953984370)
    {
      if (mFormatID == 1918990112)
      {
        result = 0;
        v17 = a1->mChannelsPerFrame;
        a1->mFramesPerPacket = 1;
        a1->mBytesPerFrame = v17;
        a1->mBytesPerPacket = v17;
        v8 = 8;
        goto LABEL_39;
      }

      if (mFormatID != 1936684916)
      {
        goto LABEL_40;
      }

LABEL_31:
      result = 0;
      v16 = 2 * a1->mChannelsPerFrame;
      a1->mFramesPerPacket = 1;
      a1->mBytesPerFrame = v16;
      a1->mBytesPerPacket = v16;
      v8 = 16;
      goto LABEL_39;
    }

    if (mFormatID == 1953984371)
    {
      goto LABEL_31;
    }

    v9 = 1970037111;
    goto LABEL_29;
  }

  if (mFormatID <= 1313820228)
  {
    switch(mFormatID)
    {
      case 842231401:
        goto LABEL_26;
      case 1296122675:
        result = 0;
        a1->mBitsPerChannel = 0;
        v10 = 2 * a1->mChannelsPerFrame;
        break;
      case 1296122678:
        result = 0;
        a1->mBitsPerChannel = 0;
        v10 = a1->mChannelsPerFrame;
        break;
      default:
        goto LABEL_40;
    }

    a1->mBytesPerFrame = v10;
    v15 = 6;
LABEL_36:
    a1->mBytesPerPacket = v10;
    a1->mFramesPerPacket = v15;
    return result;
  }

  if (mFormatID > 1718367025)
  {
    if (mFormatID != 1718367026)
    {
      if (mFormatID == 1718367796)
      {
        result = 0;
        v11 = 8 * a1->mChannelsPerFrame;
        a1->mFramesPerPacket = 1;
        a1->mBytesPerFrame = v11;
        a1->mBytesPerPacket = v11;
        v8 = 64;
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    goto LABEL_26;
  }

  if (mFormatID != 1313820229)
  {
    v9 = 1634492791;
LABEL_29:
    if (mFormatID != v9)
    {
      goto LABEL_40;
    }

    result = 0;
    a1->mBitsPerChannel = 8;
    v10 = a1->mChannelsPerFrame;
    a1->mBytesPerFrame = v10;
    v15 = 1;
    goto LABEL_36;
  }

LABEL_24:
  mBitsPerChannel = a1->mBitsPerChannel;
  v13 = ((mBitsPerChannel + 7) >> 3) * a1->mChannelsPerFrame;
  a1->mFramesPerPacket = 1;
  a1->mBytesPerFrame = v13;
  a1->mBytesPerPacket = v13;
  if (mBitsPerChannel == 8)
  {
    result = 0;
  }

  else if ((mBitsPerChannel & 7) != 0)
  {
    result = 0;
    mBitsPerChannel = 20;
  }

  else
  {
    result = 0;
    if (a4)
    {
      mBitsPerChannel = 9;
    }

    else
    {
      mBitsPerChannel = 12;
    }
  }

  a1->mFormatFlags = mBitsPerChannel;
  return result;
}

unint64_t SyncSampleTable::IndexOfEntryWithClosestSampleNumberLessThanOrEqualTo(SyncSampleTable *this, SyncSampleTable *a2, uint64_t a3)
{
  v3 = a2 - this;
  if (a2 == this)
  {
    return -1;
  }

  v4 = v3 >> 3;
  if (v3 >> 3 < 0)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = v4;
    do
    {
      v8 = (v5 + v7) >> 1;
      if (v8 >= v4)
      {
        break;
      }

      v9 = *(this + v8);
      if (v9 <= a3)
      {
        v6 = (v5 + v7) >> 1;
      }

      else
      {
        v7 = v8 - 1;
      }

      if (v9 <= a3)
      {
        v5 = v8 + 1;
      }
    }

    while (v7 >= v5);
  }

  if (*(this + v6) > a3)
  {
    return -1;
  }

  return v6;
}

uint64_t SampleToRollDistanceTable::IndexOfEntryWithClosestSampleNumberLessThanOrEqualTo(SampleToRollDistanceTable *this, SampleToRollDistanceTable *a2, uint64_t a3)
{
  if (this == a2)
  {
    return -1;
  }

  v3 = 0;
  v4 = this;
  do
  {
    v3 += *(v4 + 1);
    v4 = (v4 + 24);
  }

  while (v4 != a2);
  if (v3 < 1)
  {
    return -1;
  }

  v5 = 0;
  v6 = 0;
  v7 = v3;
  do
  {
    v8 = (v7 + v6) >> 1;
    if (v8 >= v3)
    {
      break;
    }

    v9 = (v7 + v6) >> 1;
    v10 = this;
    do
    {
      v11 = *(v10 + 1);
      v12 = v9 >= v11;
      v13 = v9 - v11;
      if (!v12)
      {
        v14 = *v10 + v9;
        goto LABEL_12;
      }

      v10 = (v10 + 24);
      v9 = v13;
    }

    while (v10 != a2);
    v14 = *(a2 - 3);
LABEL_12:
    if (v14 > a3)
    {
      v7 = v8 - 1;
    }

    else
    {
      v6 = v8 + 1;
      v5 = v8;
    }
  }

  while (v7 >= v6);
  v15 = v5;
  do
  {
    v16 = *(this + 1);
    v12 = v15 >= v16;
    v17 = v15 - v16;
    if (!v12)
    {
      v18 = *this + v15;
      goto LABEL_21;
    }

    this = (this + 24);
    v15 = v17;
  }

  while (this != a2);
  v18 = *(a2 - 3);
LABEL_21:
  if (v18 > a3)
  {
    return -1;
  }

  return v5;
}

uint64_t PacketToRollDistanceForRestrictedRandomAccess(AudioPacketRollDistanceTranslation *a1, const SampleToRollDistanceTable *a2, const SyncSampleTable *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  a1->mRollDistance = 0;
  v5 = *a2;
  v6 = *a3;
  if (v5)
  {
    mPacket = a1->mPacket;
    if ((*a3 & 1) == 0)
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_13;
    }

LABEL_6:
    v9 = *(a3 + 1);
    v10 = SyncSampleTable::IndexOfEntryWithClosestSampleNumberLessThanOrEqualTo(v9, *(a3 + 2), mPacket);
    if ((v10 & 0x8000000000000000) != 0)
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v5)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v8 = mPacket - *(v9 + v10);
      if (!v5)
      {
        goto LABEL_24;
      }
    }

LABEL_13:
    v12 = *(a2 + 4);
    v13 = *(a2 + 5);
    v14 = v13 - v12;
    if (v13 != v12)
    {
      if (v14 < 0)
      {
        v16 = 0;
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v17 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3);
        v18 = v17;
        do
        {
          v19 = (v15 + v18) >> 1;
          if (v19 >= v17)
          {
            break;
          }

          if (*(v12 + 24 * v19) + *(v12 + 24 * v19 + 16) > mPacket)
          {
            v18 = v19 - 1;
          }

          else
          {
            v16 = (v15 + v18) >> 1;
            v15 = v19 + 1;
          }
        }

        while (v18 >= v15);
      }

      v20 = (v12 + 24 * v16);
      v21 = *v20;
      v22 = *(v20 + 8);
      if (*v20 + v22 <= mPacket)
      {
        v24 = v20[1];
        if (mPacket - v21 >= v24)
        {
          v25 = mPacket - (v21 + v24);
          if (v25 + 1 > v22)
          {
            v22 = v25 + 1;
          }
        }

        goto LABEL_25;
      }
    }

LABEL_24:
    v22 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_25:
    result = 0;
    if (v22 < v8)
    {
      v8 = v22;
    }

    if (v8 >= mPacket)
    {
      v8 = mPacket;
    }

    a1->mRollDistance = v8;
    goto LABEL_30;
  }

  if (*a3)
  {
    mPacket = a1->mPacket;
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = 136315394;
    v27 = "AudioFileCommon.cpp";
    v28 = 1024;
    v29 = 551;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  invalid preroll table and invalid sync sample table", &v26, 0x12u);
  }

  result = 4294967246;
LABEL_30:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PacketToRollDistanceForRollRecovery(AudioPacketRollDistanceTranslation *a1, const SampleToRollDistanceTable *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  a1->mRollDistance = 0;
  if (*a2)
  {
    v2 = *(a2 + 4);
    v3 = *(a2 + 5);
    v4 = v3 - v2;
    if (v3 == v2)
    {
      goto LABEL_22;
    }

    if (v4 < 0)
    {
      v6 = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
      v8 = v7;
      do
      {
        v9 = (v5 + v8) >> 1;
        if (v9 >= v7)
        {
          break;
        }

        v10 = *(v2 + 24 * v9);
        if (v10 <= a1->mPacket)
        {
          if (v10 >= a1->mPacket)
          {
            v6 = (v5 + v8) >> 1;
            break;
          }

          v5 = v9 + 1;
          v6 = v9;
        }

        else
        {
          v8 = v9 - 1;
        }
      }

      while (v8 >= v5);
    }

    mPacket = a1->mPacket;
    v13 = v2 + 24 * v6;
    if (a1->mPacket >= *v13)
    {
      v14 = -*(v13 + 16);
      a1->mRollDistance = v14;
    }

    else
    {
      v14 = 0;
    }

    if (v14 <= mPacket)
    {
LABEL_22:
      v11 = 0;
    }

    else
    {
      v11 = 0;
      a1->mRollDistance = mPacket;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "AudioFileCommon.cpp";
      v19 = 1024;
      v20 = 590;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  invalid roll recovery table", &v17, 0x12u);
    }

    v11 = 4294967246;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t PacketToDependencyInfoForRestrictedRandomAccess(AudioPacketDependencyInfoTranslation *a1, const SampleToRollDistanceTable *a2, const SyncSampleTable *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    mPacket = a1->mPacket;
    if (a1->mPacket < 0)
    {
      v8 = 1885563711;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = 136315394;
        v22 = "AudioFileCommon.cpp";
        v23 = 1024;
        v24 = 636;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  invalid packet number", &v21, 0x12u);
      }
    }

    else
    {
      a1->mIsIndependentlyDecodable = 0;
      if (*a3 == 1 && (v6 = *(a3 + 1), v7 = SyncSampleTable::IndexOfEntryWithClosestSampleNumberLessThanOrEqualTo(v6, *(a3 + 2), mPacket), (v7 & 0x8000000000000000) == 0) && mPacket == *(v6 + v7))
      {
        v8 = 0;
        *&a1->mIsIndependentlyDecodable = 1;
      }

      else
      {
        if (*a2 != 1)
        {
          goto LABEL_21;
        }

        v9 = *(a2 + 4);
        v10 = *(a2 + 5);
        v11 = SampleToRollDistanceTable::IndexOfEntryWithClosestSampleNumberLessThanOrEqualTo(v9, v10, mPacket);
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        while (v9 != v10)
        {
          v12 = *(v9 + 1);
          v13 = v11 >= v12;
          v14 = v11 - v12;
          if (!v13)
          {
            v16 = *v9;
            v15 = v9 + 8;
            v17 = v16 + v11;
            goto LABEL_19;
          }

          v9 += 12;
          v11 = v14;
        }

        v17 = *(v10 - 3);
        v15 = (v10 - 8);
LABEL_19:
        if (mPacket == v17)
        {
          v8 = 0;
          v18 = *v15;
          a1->mIsIndependentlyDecodable = 1;
          a1->mNumberPrerollPackets = v18;
        }

        else
        {
LABEL_21:
          v8 = 0;
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "AudioFileCommon.cpp";
      v23 = 1024;
      v24 = 635;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  null AudioPacketDependencyInfoTranslation", &v21, 0x12u);
    }

    v8 = 4294967246;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t ScanForIndependentPacketWithRestrictedRandomAccess(uint64_t a1, AudioIndependentPacketTranslation *a2, SampleToRollDistanceTable **a3, SyncSampleTable **a4)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mPacket = a2->mPacket;
    if ((a2->mPacket & 0x8000000000000000) == 0)
    {
      if (*a4 == 1)
      {
        v9 = SyncSampleTable::IndexOfEntryWithClosestSampleNumberLessThanOrEqualTo(a4[1], a4[2], mPacket);
      }

      else
      {
        v9 = -1;
      }

      if (*a3 == 1)
      {
        v10 = SampleToRollDistanceTable::IndexOfEntryWithClosestSampleNumberLessThanOrEqualTo(a3[4], a3[5], mPacket);
        if (!a1)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v10 = -1;
        if (!a1)
        {
LABEL_13:
          if ((v9 & 0x8000000000000000) == 0)
          {
            v11 = a4[1];
            v12 = v9 - (mPacket == *(v11 + v9));
            if (v12 >= 0)
            {
              v13 = *(v11 + v12);
              if ((v10 & 0x8000000000000000) != 0)
              {
                goto LABEL_62;
              }

              goto LABEL_24;
            }
          }

          v13 = -1;
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_24:
            v15 = a3[4];
            v16 = a3[5];
            if (v15 == v16)
            {
LABEL_29:
              v34 = *(v16 - 3);
            }

            else
            {
              v17 = v10;
              v18 = a3[4];
              while (1)
              {
                v19 = *(v18 + 1);
                v20 = v17 >= v19;
                v21 = v17 - v19;
                if (!v20)
                {
                  break;
                }

                v18 = (v18 + 24);
                v17 = v21;
                if (v18 == v16)
                {
                  goto LABEL_29;
                }
              }

              v34 = *v18 + v17;
            }

            v35 = v10 - (mPacket == v34);
            if (v35 < 0)
            {
              goto LABEL_62;
            }

            while (v15 != v16)
            {
              v36 = *(v15 + 1);
              v20 = v35 >= v36;
              v37 = v35 - v36;
              if (!v20)
              {
                v26 = *v15 + v35;
                goto LABEL_63;
              }

              v15 = (v15 + 24);
              v35 = v37;
            }

LABEL_40:
            v26 = *(v16 - 3);
            goto LABEL_63;
          }

LABEL_62:
          v26 = -1;
LABEL_63:
          if (v13 == -1)
          {
            a1 = 0;
            a2->mIndependentlyDecodablePacket = v26;
          }

          else
          {
            if (v26 == -1)
            {
              a1 = 0;
            }

            else if (a1)
            {
              a1 = 0;
              if (v26 < v13)
              {
                v13 = v26;
              }
            }

            else if (v13 <= v26)
            {
              v13 = v26;
            }

            a2->mIndependentlyDecodablePacket = v13;
          }

          goto LABEL_74;
        }
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        v22 = a4[1];
        if (a4[2] == v22)
        {
LABEL_32:
          v13 = -1;
        }

        else
        {
          v13 = *v22;
        }
      }

      else
      {
        v14 = a4[1];
        while (1)
        {
          v13 = *(v14 + v9);
          if (mPacket < v13)
          {
            break;
          }

          if (++v9 >= (a4[2] - v14) >> 3)
          {
            goto LABEL_32;
          }
        }
      }

      v23 = a3[4];
      v16 = a3[5];
      if (v23 == v16)
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
          v24 = 0;
          goto LABEL_43;
        }

        goto LABEL_62;
      }

      v24 = 0;
      v25 = a3[4];
      do
      {
        v24 += *(v25 + 1);
        v25 = (v25 + 24);
      }

      while (v25 != v16);
      if ((v10 & 0x8000000000000000) != 0)
      {
        if (v24)
        {
          while (!v23[1])
          {
            v23 += 3;
            if (v23 == v16)
            {
              goto LABEL_40;
            }
          }

          v26 = *v23;
          goto LABEL_63;
        }

        goto LABEL_62;
      }

      while (1)
      {
LABEL_43:
        if (v23 == v16)
        {
LABEL_48:
          v31 = *(v16 - 3);
        }

        else
        {
          v27 = v10;
          v28 = a3[4];
          while (1)
          {
            v29 = *(v28 + 1);
            v20 = v27 >= v29;
            v30 = v27 - v29;
            if (!v20)
            {
              break;
            }

            v28 = (v28 + 24);
            v27 = v30;
            if (v28 == v16)
            {
              goto LABEL_48;
            }
          }

          v31 = *v28 + v27;
        }

        if (mPacket < v31)
        {
          break;
        }

        if (++v10 >= v24)
        {
          goto LABEL_62;
        }
      }

      if ((v10 & 0x8000000000000000) == 0)
      {
        while (v23 != v16)
        {
          v32 = v23[1];
          v20 = v10 >= v32;
          v33 = v10 - v32;
          if (!v20)
          {
            v26 = *v23 + v10;
            goto LABEL_63;
          }

          v23 += 3;
          v10 = v33;
        }

        goto LABEL_40;
      }

      goto LABEL_62;
    }

    a1 = 1885563711;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v40 = 136315394;
      v41 = "AudioFileCommon.cpp";
      v42 = 1024;
      v43 = 673;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  invalid packet number", &v40, 0x12u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v40 = 136315394;
      v41 = "AudioFileCommon.cpp";
      v42 = 1024;
      v43 = 672;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  null AudioIndependentPacketTranslation", &v40, 0x12u);
    }

    a1 = 4294967246;
  }

LABEL_74:
  v38 = *MEMORY[0x1E69E9840];
  return a1;
}