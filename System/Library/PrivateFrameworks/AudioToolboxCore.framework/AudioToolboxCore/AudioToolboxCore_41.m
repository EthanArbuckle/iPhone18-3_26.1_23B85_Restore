void APAC::MetadataBitStreamParser::parseChannelBedHeadphoneMetadata(uint64_t a1, unsigned __int8 *a2, unsigned __int8 **a3)
{
  v6 = *(a3 + 6);
  v5 = *(a3 + 7);
  v7 = v6 >> 28;
  v8 = v5 - 4;
  *(a3 + 7) = v5 - 4;
  if (v5 - 4 < 0)
  {
    v11 = a3[1];
    v10 = a3[2];
    v12 = *a3;
    if (((v10 - *a3) & ~((v10 - *a3) >> 63) & 0xFFFFFFFC) == 0 || v11 > v12)
    {
      v14 = 4;
      v15 = *a3;
      do
      {
        v16 = v6 << 8;
        *(a3 + 6) = v16;
        v17 = 255;
        if (v15 < v10 && v15 >= v11)
        {
          v17 = *v15;
        }

        v6 = v17 | v16;
        *(a3 + 6) = v6;
        ++v15;
        --v14;
      }

      while (v14);
    }

    else
    {
      v6 = bswap32(*v12);
    }

    v18 = v12 + 1;
    *a3 = (v12 + 1);
    v8 = v5 + 28;
    v7 |= v6 >> (v5 + 28);
    if (v5 == -28)
    {
      v20 = 0;
      v9 = 0;
      v19 = v7 + 1;
      *a2 = v19;
      a3[3] = 0xFFFFFFF800000000;
      goto LABEL_19;
    }

    v9 = v6 << (4 - v5);
  }

  else
  {
    v9 = 16 * v6;
  }

  v19 = v7 + 1;
  *a2 = v19;
  v20 = HIBYTE(v9);
  v21 = v8 - 8;
  *(a3 + 6) = v9;
  *(a3 + 7) = v8 - 8;
  if (v8 - 8 >= 0)
  {
    v22 = v9 << 8;
    goto LABEL_35;
  }

  v11 = a3[1];
  v10 = a3[2];
  v18 = *a3;
LABEL_19:
  if (((v10 - v18) & ~((v10 - v18) >> 63) & 0xFFFFFFFC) == 0 || v11 > v18)
  {
    v24 = 4;
    v25 = v18;
    do
    {
      v26 = v9 << 8;
      *(a3 + 6) = v26;
      v27 = 255;
      if (v25 < v10 && v25 >= v11)
      {
        v27 = *v25;
      }

      v9 = v27 | v26;
      *(a3 + 6) = v9;
      v25 = (v25 + 1);
      --v24;
    }

    while (v24);
  }

  else
  {
    v9 = bswap32(*v18);
  }

  v28 = v9 << (8 - v8);
  v29 = v8 + 24;
  *(a3 + 7) = v29;
  *a3 = (v18 + 1);
  v20 |= v9 >> v29;
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

LABEL_35:
  *(a3 + 6) = v22;
  a2[1] = v20 + 1;
  if (((v20 + 1) & 0x100) != 0)
  {
    v30 = -8;
  }

  else
  {
    v31 = 0;
    do
    {
      v33 = *(a3 + 6);
      v32 = *(a3 + 7);
      v34 = v33 >> 29;
      *(a3 + 7) = v32 - 3;
      if (v32 - 3 < 0)
      {
        v37 = a3[1];
        v36 = a3[2];
        v38 = *a3;
        if (((v36 - *a3) & ~((v36 - *a3) >> 63) & 0xFFFFFFFC) == 0 || v37 > v38)
        {
          v40 = 4;
          v41 = *a3;
          do
          {
            v42 = v33 << 8;
            *(a3 + 6) = v42;
            v43 = 255;
            if (v41 < v36 && v41 >= v37)
            {
              v43 = *v41;
            }

            v33 = v43 | v42;
            *(a3 + 6) = v33;
            ++v41;
            --v40;
          }

          while (v40);
        }

        else
        {
          v33 = bswap32(*v38);
        }

        v44 = v33 << (3 - v32);
        v45 = v32 + 29;
        *(a3 + 7) = v45;
        *a3 = (v38 + 1);
        v34 |= v33 >> v45;
        if (v45)
        {
          v35 = v44;
        }

        else
        {
          v35 = 0;
        }
      }

      else
      {
        v35 = 8 * v33;
      }

      *(a3 + 6) = v35;
      v47 = *(a2 + 2);
      v46 = *(a2 + 3);
      if (v47 >= v46)
      {
        v49 = *(a2 + 1);
        v50 = (v47 - v49);
        v51 = v47 - v49 + 1;
        if (v51 < 0)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v52 = v46 - v49;
        if (2 * v52 > v51)
        {
          v51 = 2 * v52;
        }

        if (v52 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v53 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v53 = v51;
        }

        if (v53)
        {
          operator new();
        }

        v54 = v47 - v49;
        *v50 = v34;
        v48 = v50 + 1;
        memcpy(0, v49, v54);
        *(a2 + 1) = 0;
        *(a2 + 2) = v50 + 1;
        *(a2 + 3) = 0;
        if (v49)
        {
          operator delete(v49);
        }
      }

      else
      {
        *v47 = v34;
        v48 = v47 + 1;
      }

      *(a2 + 2) = v48;
      ++v31;
      v55 = a2[1];
    }

    while (v31 < v55);
    v19 = *a2;
    v21 = *(a3 + 7);
    v30 = -3 * v55 - 8;
  }

  v56 = v30 + 8 * v19;
  v57 = v56 - v21;
  if (v56 > v21)
  {
    a3[3] = 0;
    v21 = 0;
    if (v57 >= 0x20)
    {
      *a3 += (v57 >> 3) & 0x1FFFFFFC;
      v56 = v57 & 0x1F;
    }

    else
    {
      v56 = v57;
    }
  }

  if ((v56 - 33) >= 0xFFFFFFE0)
  {
    v58 = *(a3 + 6);
    v59 = v21 - v56;
    *(a3 + 7) = v59;
    if (v59 < 0)
    {
      v62 = a3[1];
      v61 = a3[2];
      v63 = *a3;
      if (((v61 - *a3) & ~((v61 - *a3) >> 63) & 0xFFFFFFFC) != 0 && v62 <= v63)
      {
        v58 = bswap32(*v63);
      }

      else
      {
        v64 = 4;
        v65 = *a3;
        do
        {
          v66 = v58 << 8;
          *(a3 + 6) = v66;
          v67 = 255;
          if (v65 < v61 && v65 >= v62)
          {
            v67 = *v65;
          }

          v58 = v67 | v66;
          *(a3 + 6) = v58;
          ++v65;
          --v64;
        }

        while (v64);
      }

      v68 = v58 << -v59;
      v69 = v59 + 32;
      *(a3 + 7) = v69;
      *a3 = (v63 + 1);
      if (v69)
      {
        v60 = v68;
      }

      else
      {
        v60 = 0;
      }
    }

    else
    {
      v60 = v58 << v56;
    }

    *(a3 + 6) = v60;
  }
}

void APAC::MetadataBitStreamParser::parseFallbackSPAD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = 0;
  v8 = *(a4 + 8);
  v7 = *(a4 + 16);
  v9 = *a4;
  v10 = a2 + 2;
  v12 = *(a4 + 24);
  v11 = *(a4 + 28);
  do
  {
    if (v11 + 8 * (v7 - v9) <= 7)
    {
      exception = __cxa_allocate_exception(8uLL);
      v90 = "Cannot read fallback.mDeviceID[n]";
      goto LABEL_151;
    }

    v13 = HIBYTE(v12);
    *(a4 + 28) = v11 - 8;
    if (v11 - 8 < 0)
    {
      if (((v7 - v9) & ~((v7 - v9) >> 63) & 0xFFFFFFFC) != 0 && v8 <= v9)
      {
        v12 = bswap32(*v9);
      }

      else
      {
        v14 = 4;
        v15 = v9;
        do
        {
          v16 = v12 << 8;
          *(a4 + 24) = v16;
          v17 = 255;
          if (v15 < v7 && v15 >= v8)
          {
            v17 = *v15;
          }

          v12 = v17 | v16;
          *(a4 + 24) = v12;
          v15 = (v15 + 1);
          --v14;
        }

        while (v14);
      }

      v18 = v12 << (8 - v11);
      v11 += 24;
      *(a4 + 28) = v11;
      *a4 = ++v9;
      v13 |= v12 >> v11;
      if (v11)
      {
        v12 = v18;
      }

      else
      {
        v12 = 0;
      }

      if (!v11)
      {
        v11 = 0;
      }
    }

    else
    {
      v12 <<= 8;
      v11 -= 8;
    }

    *(a4 + 24) = v12;
    *(v10 + v6) = v13;
    if (!v13)
    {
      break;
    }

    ++v6;
  }

  while (v6 != 8);
  if (v11 + 8 * (v7 - v9) <= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v90 = "Cannot read fallback.mOrientation";
    goto LABEL_151;
  }

  v19 = v12 >> 28;
  v20 = v11 - 4;
  *(a4 + 28) = v11 - 4;
  if (v11 - 4 < 0)
  {
    if (((v7 - v9) & ~((v7 - v9) >> 63) & 0xFFFFFFFC) != 0 && v8 <= v9)
    {
      v12 = bswap32(*v9);
    }

    else
    {
      v22 = 4;
      v23 = v9;
      do
      {
        v24 = v12 << 8;
        *(a4 + 24) = v24;
        v25 = 255;
        if (v23 < v7 && v23 >= v8)
        {
          v25 = *v23;
        }

        v12 = v25 | v24;
        *(a4 + 24) = v12;
        v23 = (v23 + 1);
        --v22;
      }

      while (v22);
    }

    v26 = v12 << (4 - v11);
    v27 = v11 + 28;
    *(a4 + 28) = v27;
    *a4 = ++v9;
    v19 |= v12 >> v27;
    if (v27)
    {
      v21 = v26;
    }

    else
    {
      v21 = 0;
    }

    if (v27)
    {
      v20 = v27;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v21 = 16 * v12;
  }

  *(a4 + 24) = v21;
  *a2 = v19;
  if (v20 + 8 * (v7 - v9) <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v90 = "Cannot read fallback.mNumMicrophones";
    goto LABEL_151;
  }

  v28 = HIBYTE(v21);
  *(a4 + 28) = v20 - 8;
  if (v20 - 8 < 0)
  {
    if (((v7 - v9) & ~((v7 - v9) >> 63) & 0xFFFFFFFC) != 0 && v8 <= v9)
    {
      v21 = bswap32(*v9);
    }

    else
    {
      v30 = 4;
      v31 = v9;
      do
      {
        v32 = v21 << 8;
        *(a4 + 24) = v32;
        v33 = 255;
        if (v31 < v7 && v31 >= v8)
        {
          v33 = *v31;
        }

        v21 = v33 | v32;
        *(a4 + 24) = v21;
        v31 = (v31 + 1);
        --v30;
      }

      while (v30);
    }

    *(a4 + 28) = v20 + 24;
    *a4 = v9 + 1;
    v28 |= v21 >> (v20 + 24);
    if (v20 == -24)
    {
      v29 = 0;
    }

    else
    {
      v29 = v21 << (8 - v20);
    }
  }

  else
  {
    v29 = v21 << 8;
  }

  *(a4 + 24) = v29;
  *(a2 + 1) = v28;
  v34 = v28;
  if (!a3)
  {
    goto LABEL_63;
  }

  v36 = *(a2 + 16);
  v35 = *(a2 + 24);
  if (v28 <= &v35[-v36])
  {
    if (v28 < &v35[-v36])
    {
      *(a2 + 24) = v36 + v28;
    }
  }

  else
  {
    if (*(a2 + 32) - v35 < v28 - &v35[-v36])
    {
      operator new();
    }

    v37 = v28 + v36;
    bzero(v35, v28 - &v35[-v36]);
    *(a2 + 24) = v37;
  }

  std::vector<int>::resize((a2 + 40), v34);
  std::vector<int>::resize((a2 + 64), v34);
  std::vector<int>::resize((a2 + 88), v34);
  v39 = *(a2 + 112);
  v38 = *(a2 + 120);
  if (v34 <= &v38[-v39])
  {
    if (v34 < &v38[-v39])
    {
      *(a2 + 120) = v39 + v34;
    }

LABEL_63:
    if (!v34)
    {
      return;
    }

    goto LABEL_64;
  }

  v40 = *(a2 + 128);
  if (v40 - v38 < v34 - &v38[-v39])
  {
    operator new();
  }

  v88 = v34 + v39;
  bzero(v38, v34 - &v38[-v39]);
  *(a2 + 120) = v88;
  if (v34)
  {
LABEL_64:
    v41 = 0;
    v42 = *(a4 + 24);
    v43 = *(a4 + 28);
    v45 = *(a4 + 8);
    v44 = *(a4 + 16);
    v46 = *a4;
    v47 = *(a2 + 16);
    v48 = *(a2 + 40);
    v49 = *(a2 + 64);
    v50 = *(a2 + 88);
    v51 = *(a2 + 112);
    while (1)
    {
      if (v43 + 8 * (v44 - v46) <= 3)
      {
        exception = __cxa_allocate_exception(8uLL);
        v90 = "Cannot read fallback.mMicType[n]";
        goto LABEL_151;
      }

      v52 = v42 >> 28;
      v53 = v43 - 4;
      *(a4 + 28) = v43 - 4;
      if (v43 - 4 < 0)
      {
        if (((v44 - v46) & ~((v44 - v46) >> 63) & 0xFFFFFFFC) != 0 && v45 <= v46)
        {
          v42 = bswap32(*v46);
        }

        else
        {
          v55 = 4;
          v56 = v46;
          do
          {
            v57 = v42 << 8;
            *(a4 + 24) = v57;
            v58 = 255;
            if (v56 < v44 && v56 >= v45)
            {
              v58 = *v56;
            }

            v42 = v58 | v57;
            *(a4 + 24) = v42;
            v56 = (v56 + 1);
            --v55;
          }

          while (v55);
        }

        v59 = v42 << (4 - v43);
        v60 = v43 + 28;
        *(a4 + 28) = v60;
        *a4 = ++v46;
        v52 |= v42 >> v60;
        if (v60)
        {
          v54 = v59;
        }

        else
        {
          v54 = 0;
        }

        if (v60)
        {
          v53 = v60;
        }

        else
        {
          v53 = 0;
        }
      }

      else
      {
        v54 = 16 * v42;
      }

      *(a4 + 24) = v54;
      *(v47 + v41) = v52;
      v61 = v44 - v46;
      if (v53 + 8 * (v44 - v46) <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v90 = "Cannot read fallback.mMicPosAzimuth[n]";
        goto LABEL_151;
      }

      *(a4 + 28) = v53 - 32;
      if (v53 - 32 < 0)
      {
        if ((v61 & ~(v61 >> 63) & 0xFFFFFFFC) != 0 && v45 <= v46)
        {
          v64 = bswap32(*v46);
        }

        else
        {
          v65 = 4;
          v66 = v46;
          v64 = v54;
          do
          {
            v67 = v64 << 8;
            *(a4 + 24) = v67;
            v68 = 255;
            if (v66 < v44 && v66 >= v45)
            {
              v68 = *v66;
            }

            v64 = v68 | v67;
            *(a4 + 24) = v64;
            v66 = (v66 + 1);
            --v65;
          }

          while (v65);
        }

        *a4 = ++v46;
        v63 = (v64 >> v53) | v54;
        v54 = v64 << -v53;
        if (!v53)
        {
          v54 = 0;
        }

        *(a4 + 24) = v54;
        *(a4 + 28) = v53;
        v61 = v44 - v46;
        v62 = 8 * (v44 - v46);
      }

      else
      {
        v62 = 8 * v61;
        v53 -= 32;
        v63 = v54;
      }

      *(v48 + 4 * v41) = v63;
      if (v62 + v53 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v90 = "Cannot read fallback.mMicPosElevation[n]";
        goto LABEL_151;
      }

      *(a4 + 28) = v53 - 32;
      if (v53 - 32 < 0)
      {
        if ((v61 & ~(v61 >> 63) & 0xFFFFFFFC) != 0 && v45 <= v46)
        {
          v70 = bswap32(*v46);
        }

        else
        {
          v71 = 4;
          v72 = v46;
          v70 = v54;
          do
          {
            v73 = v70 << 8;
            *(a4 + 24) = v73;
            v74 = 255;
            if (v72 < v44 && v72 >= v45)
            {
              v74 = *v72;
            }

            v70 = v74 | v73;
            *(a4 + 24) = v70;
            v72 = (v72 + 1);
            --v71;
          }

          while (v71);
        }

        *a4 = ++v46;
        v69 = (v70 >> v53) | v54;
        v54 = v70 << -v53;
        if (!v53)
        {
          v54 = 0;
        }

        *(a4 + 24) = v54;
        *(a4 + 28) = v53;
        v61 = v44 - v46;
        v62 = 8 * (v44 - v46);
      }

      else
      {
        v53 -= 32;
        v69 = v54;
      }

      *(v49 + 4 * v41) = v69;
      if (v62 + v53 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v90 = "Cannot read fallback.mMicPosRadius[n]";
        goto LABEL_151;
      }

      *(a4 + 28) = v53 - 32;
      if (v53 - 32 < 0)
      {
        if ((v61 & ~(v61 >> 63) & 0xFFFFFFFC) != 0 && v45 <= v46)
        {
          v76 = bswap32(*v46);
        }

        else
        {
          v77 = 4;
          v78 = v46;
          v76 = v54;
          do
          {
            v79 = v76 << 8;
            *(a4 + 24) = v79;
            v80 = 255;
            if (v78 < v44 && v78 >= v45)
            {
              v80 = *v78;
            }

            v76 = v80 | v79;
            *(a4 + 24) = v76;
            v78 = (v78 + 1);
            --v77;
          }

          while (v77);
        }

        *a4 = ++v46;
        v75 = (v76 >> v53) | v54;
        v54 = v76 << -v53;
        if (!v53)
        {
          v54 = 0;
        }

        *(a4 + 24) = v54;
        *(a4 + 28) = v53;
        v61 = v44 - v46;
        v62 = 8 * (v44 - v46);
      }

      else
      {
        v53 -= 32;
        v75 = v54;
      }

      *(v50 + 4 * v41) = v75;
      if (v62 + v53 <= 2)
      {
        break;
      }

      v81 = v54 >> 29;
      v43 = v53 - 3;
      *(a4 + 28) = v53 - 3;
      if (v53 - 3 < 0)
      {
        if ((v61 & ~(v61 >> 63) & 0xFFFFFFFC) != 0 && v45 <= v46)
        {
          v54 = bswap32(*v46);
        }

        else
        {
          v82 = 4;
          v83 = v46;
          do
          {
            v84 = v54 << 8;
            *(a4 + 24) = v84;
            v85 = 255;
            if (v83 < v44 && v83 >= v45)
            {
              v85 = *v83;
            }

            v54 = v85 | v84;
            *(a4 + 24) = v54;
            v83 = (v83 + 1);
            --v82;
          }

          while (v82);
        }

        v86 = v54 << (3 - v53);
        v87 = v53 + 29;
        *(a4 + 28) = v87;
        *a4 = ++v46;
        v81 |= v54 >> v87;
        if (v87)
        {
          v42 = v86;
        }

        else
        {
          v42 = 0;
        }

        if (v87)
        {
          v43 = v87;
        }

        else
        {
          v43 = 0;
        }
      }

      else
      {
        v42 = 8 * v54;
      }

      *(a4 + 24) = v42;
      *(v51 + v41++) = v81;
      if (v41 == v34)
      {
        return;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v90 = "Cannot read fallback.mMicDirection[n]";
LABEL_151:
    *exception = v90;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }
}

void APAC::MetadataBitStreamParser::parseGroupDynamicData(uint64_t a1, BOOL *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v33 = "Cannot read grpDD.hasData";
    goto LABEL_41;
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

    v20 = v6 + 31;
    v19 = v6 == -31;
    *(a3 + 28) = v6 + 31;
    *a3 = ++v4;
    v10 |= v9 >> (v6 + 31);
    if (v6 == -31)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 << (1 - v6);
    }

    if (v19)
    {
      v11 = 0;
    }

    else
    {
      v11 = v20;
    }
  }

  else
  {
    v12 = 2 * v9;
  }

  *(a3 + 24) = v12;
  *a2 = v10 != 0;
  if (v10)
  {
    if (v11 + 8 * (v3 - v4) > 6)
    {
      v21 = v12 >> 25;
      *(a3 + 28) = v11 - 7;
      if (v11 - 7 < 0)
      {
        v23 = *(a3 + 8);
        if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v23 <= v4)
        {
          v12 = bswap32(*v4);
        }

        else
        {
          v24 = 4;
          v25 = v4;
          do
          {
            v26 = v12 << 8;
            *(a3 + 24) = v26;
            v27 = 255;
            if (v25 < v3 && v25 >= v23)
            {
              v27 = *v25;
            }

            v12 = v27 | v26;
            *(a3 + 24) = v12;
            v25 = (v25 + 1);
            --v24;
          }

          while (v24);
        }

        v28 = v12 << (7 - v11);
        v29 = v11 + 25;
        *(a3 + 28) = v29;
        *a3 = v4 + 1;
        v21 |= v12 >> v29;
        if (v29)
        {
          v22 = v28;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = v12 << 7;
      }

      *(a3 + 24) = v22;
      a2[1] = v21;
      if (v21)
      {
        v30 = 0;
        v31 = a2 + 4;
        do
        {
          APAC::MetadataBitStreamParser::parseDynamicGroup(a1, v31, a3);
          ++v30;
          v31 += 256;
        }

        while (v30 < a2[1]);
      }

      return;
    }

    exception = __cxa_allocate_exception(8uLL);
    v33 = "Cannot read grpDD.groupCount";
LABEL_41:
    *exception = v33;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }
}

void APAC::MetadataBitStreamParser::parseSceneComponenentDynamicData(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v43 = "Cannot read scDD.ASCCount";
LABEL_45:
    *exception = v43;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v9 = *(a3 + 24);
  v10 = v9 >> 25;
  *(a3 + 28) = v6 - 7;
  if (v6 - 7 < 0)
  {
    v12 = v5 & ~(v5 >> 63) & 0xFFFFFFFC;
    v13 = *(a3 + 8);
    if (v12)
    {
      v14 = v13 > v4;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
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

    v19 = v9 << (7 - v6);
    v20 = v6 + 25;
    *(a3 + 28) = v20;
    *a3 = v4 + 1;
    v10 |= v9 >> v20;
    if (v20)
    {
      v11 = v19;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = v9 << 7;
  }

  *(a3 + 24) = v11;
  *a2 = v10;
  if (v10)
  {
    v21 = 0;
    while (1)
    {
      v22 = *(a3 + 16);
      v23 = *a3;
      v24 = v22 - *a3;
      v25 = *(a3 + 28);
      if (v25 + 8 * v24 <= 1)
      {
        exception = __cxa_allocate_exception(8uLL);
        v43 = "Cannot read scDD.ASCData[n].ASCType";
        goto LABEL_45;
      }

      v26 = *(a3 + 24);
      v27 = v26 >> 30;
      *(a3 + 28) = v25 - 2;
      if (v25 - 2 < 0)
      {
        v29 = v24 & ~(v24 >> 63) & 0xFFFFFFFC;
        v30 = *(a3 + 8);
        if (!v29 || v30 > v23)
        {
          v32 = 4;
          v33 = v23;
          do
          {
            v34 = v26 << 8;
            *(a3 + 24) = v34;
            v35 = 255;
            if (v33 < v22 && v33 >= v30)
            {
              v35 = *v33;
            }

            v26 = v35 | v34;
            *(a3 + 24) = v26;
            v33 = (v33 + 1);
            --v32;
          }

          while (v32);
        }

        else
        {
          v26 = bswap32(*v23);
        }

        v36 = v26 << (2 - v25);
        v37 = v25 + 30;
        *(a3 + 28) = v37;
        *a3 = v23 + 1;
        v27 |= v26 >> v37;
        v28 = v37 ? v36 : 0;
      }

      else
      {
        v28 = 4 * v26;
      }

      *(a3 + 24) = v28;
      v38 = &a2[9752 * v21 + 4];
      *v38 = v27;
      if (v27 == 2)
      {
        break;
      }

      if (v27 == 1)
      {
        APAC::MetadataBitStreamParser::parseObjectMetadata(a1, v38 + 68, a3);
      }

      else if (!v27)
      {
        v39 = (v38 + 4);
LABEL_41:
        APAC::MetadataBitStreamParser::parseCommonDynamicMetadata(a1, v39, a3);
      }

      APAC::MetadataBitStreamParser::parseProprietaryDynamicData(a1, (v38 + 7572), a3);
      APAC::MetadataBitStreamParser::parseExtendedData(v40, (v38 + 7696), a3);
      APAC::MetadataBitStreamParser::parseExtendedData(v41, (v38 + 8724), a3);
      if (++v21 >= *a2)
      {
        return;
      }
    }

    v39 = (v38 + 36);
    goto LABEL_41;
  }
}

void APAC::MetadataBitStreamParser::parseExtendedData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v41 = "Cannot read extData.hasData";
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
  if (v8)
  {
    if (v9 + 8 * (v3 - v4) <= 9)
    {
      exception = __cxa_allocate_exception(8uLL);
      v41 = "Cannot read extData.chunkSize";
    }

    else
    {
      v19 = v10 >> 22;
      v20 = v9 - 10;
      *(a3 + 28) = v9 - 10;
      if (v9 - 10 < 0)
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

        v27 = v10 << (10 - v9);
        v28 = v9 + 22;
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
        v21 = v10 << 10;
      }

      v29 = 0;
      *(a3 + 24) = v21;
      *(a2 + 2) = v19;
      v30 = v19;
      v31 = *(a3 + 8);
      v32 = a2 + 4;
      v33 = (v30 + 1);
      while (v20 + 8 * (v3 - v4) > 7)
      {
        v34 = HIBYTE(v21);
        *(a3 + 28) = v20 - 8;
        if (v20 - 8 < 0)
        {
          if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v31 <= v4)
          {
            v21 = bswap32(*v4);
          }

          else
          {
            v35 = 4;
            v36 = v4;
            do
            {
              v37 = v21 << 8;
              *(a3 + 24) = v37;
              v38 = 255;
              if (v36 < v3 && v36 >= v31)
              {
                v38 = *v36;
              }

              v21 = v38 | v37;
              *(a3 + 24) = v21;
              v36 = (v36 + 1);
              --v35;
            }

            while (v35);
          }

          v39 = v21 << (8 - v20);
          v20 += 24;
          *(a3 + 28) = v20;
          *a3 = ++v4;
          v34 |= v21 >> v20;
          if (v20)
          {
            v21 = v39;
          }

          else
          {
            v21 = 0;
          }

          if (!v20)
          {
            v20 = 0;
          }
        }

        else
        {
          v21 <<= 8;
          v20 -= 8;
        }

        *(a3 + 24) = v21;
        *(v32 + v29++) = v34;
        if (v29 == v33)
        {
          return;
        }
      }

      exception = __cxa_allocate_exception(8uLL);
      v41 = "Cannot read extData.dataChunk[n]";
    }

LABEL_58:
    *exception = v41;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }
}

void APAC::MetadataBitStreamParser::parseCommonDynamicMetadata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v98 = "Cannot read cmmMd.hasADMMetadata";
    goto LABEL_180;
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
    if (v9 + 8 * (v3 - v4) <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v98 = "Cannot read cmmMd.absoluteDistance.hasData";
      goto LABEL_180;
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
    *(a2 + 4) = v19 != 0;
    if (v19)
    {
      if (v20 + 8 * (v3 - v4) <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v98 = "Cannot read cmmMd.absoluteDistance.distance";
        goto LABEL_180;
      }

      *(a3 + 28) = v20 - 32;
      if (v20 - 32 < 0)
      {
        v30 = *(a3 + 8);
        if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v30 <= v4)
        {
          v31 = bswap32(*v4);
        }

        else
        {
          v32 = 4;
          v33 = v4;
          v31 = v21;
          do
          {
            v34 = v31 << 8;
            *(a3 + 24) = v34;
            v35 = 255;
            if (v33 < v3 && v33 >= v30)
            {
              v35 = *v33;
            }

            v31 = v35 | v34;
            *(a3 + 24) = v31;
            v33 = (v33 + 1);
            --v32;
          }

          while (v32);
        }

        *a3 = ++v4;
        v29 = (v31 >> v20) | v21;
        v21 = v31 << -v20;
        if (!v20)
        {
          v21 = 0;
        }

        *(a3 + 24) = v21;
        *(a3 + 28) = v20;
      }

      else
      {
        v20 -= 32;
        v29 = v21;
      }

      *(a2 + 8) = v29;
    }

    if (v20 + 8 * (v3 - v4) <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v98 = "Cannot read cmmMd.gain.hasData";
      goto LABEL_180;
    }

    v36 = v21 >> 31;
    v37 = v20 - 1;
    *(a3 + 28) = v20 - 1;
    if (v20 - 1 < 0)
    {
      v39 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v39 <= v4)
      {
        v21 = bswap32(*v4);
      }

      else
      {
        v40 = 4;
        v41 = v4;
        do
        {
          v42 = v21 << 8;
          *(a3 + 24) = v42;
          v43 = 255;
          if (v41 < v3 && v41 >= v39)
          {
            v43 = *v41;
          }

          v21 = v43 | v42;
          *(a3 + 24) = v21;
          v41 = (v41 + 1);
          --v40;
        }

        while (v40);
      }

      v45 = v20 + 31;
      v44 = v20 == -31;
      *(a3 + 28) = v20 + 31;
      *a3 = ++v4;
      v36 |= v21 >> (v20 + 31);
      if (v20 == -31)
      {
        v38 = 0;
      }

      else
      {
        v38 = v21 << (1 - v20);
      }

      if (v44)
      {
        v37 = 0;
      }

      else
      {
        v37 = v45;
      }
    }

    else
    {
      v38 = 2 * v21;
    }

    *(a3 + 24) = v38;
    *(a2 + 12) = v36 != 0;
    if (v36)
    {
      if (v37 + 8 * (v3 - v4) <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v98 = "Cannot read cmmMd.gain.isDB";
        goto LABEL_180;
      }

      v46 = v38 >> 31;
      *(a3 + 28) = v37 - 1;
      if (v37 - 1 < 0)
      {
        v47 = *(a3 + 8);
        if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v47 <= v4)
        {
          v38 = bswap32(*v4);
        }

        else
        {
          v48 = 4;
          v49 = v4;
          do
          {
            v50 = v38 << 8;
            *(a3 + 24) = v50;
            v51 = 255;
            if (v49 < v3 && v49 >= v47)
            {
              v51 = *v49;
            }

            v38 = v51 | v50;
            *(a3 + 24) = v38;
            v49 = (v49 + 1);
            --v48;
          }

          while (v48);
        }

        v52 = v38 << (1 - v37);
        v37 += 31;
        *(a3 + 28) = v37;
        *a3 = ++v4;
        v46 |= v38 >> v37;
        if (v37)
        {
          v38 = v52;
        }

        else
        {
          v38 = 0;
        }

        if (!v37)
        {
          v37 = 0;
        }
      }

      else
      {
        v38 *= 2;
        --v37;
      }

      *(a3 + 24) = v38;
      *(a2 + 13) = v46 != 0;
      if (v37 + 8 * (v3 - v4) <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v98 = "Cannot read cmmMd.gain.gain";
        goto LABEL_180;
      }

      *(a3 + 28) = v37 - 32;
      if (v37 - 32 < 0)
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
          v55 = v38;
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
        v53 = (v55 >> v37) | v38;
        v38 = v55 << -v37;
        if (!v37)
        {
          v38 = 0;
        }

        *(a3 + 24) = v38;
        *(a3 + 28) = v37;
      }

      else
      {
        v37 -= 32;
        v53 = v38;
      }

      *(a2 + 16) = v53;
    }

    if (v37 + 8 * (v3 - v4) <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v98 = "Cannot read cmmMd.headLocked";
      goto LABEL_180;
    }

    v60 = v38 >> 31;
    v61 = v37 - 1;
    *(a3 + 28) = v37 - 1;
    if (v37 - 1 < 0)
    {
      v63 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v63 <= v4)
      {
        v38 = bswap32(*v4);
      }

      else
      {
        v64 = 4;
        v65 = v4;
        do
        {
          v66 = v38 << 8;
          *(a3 + 24) = v66;
          v67 = 255;
          if (v65 < v3 && v65 >= v63)
          {
            v67 = *v65;
          }

          v38 = v67 | v66;
          *(a3 + 24) = v38;
          v65 = (v65 + 1);
          --v64;
        }

        while (v64);
      }

      v68 = v38 << (1 - v37);
      v69 = v37 + 31;
      *(a3 + 28) = v69;
      *a3 = ++v4;
      v60 |= v38 >> v69;
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
      v62 = 2 * v38;
    }

    *(a3 + 24) = v62;
    *(a2 + 22) = v60 != 0;
    if (v61 + 8 * (v3 - v4) <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v98 = "Cannot read cmmMd.headphoneVirtualize.hasData";
      goto LABEL_180;
    }

    v70 = v62 >> 31;
    v71 = v61 - 1;
    *(a3 + 28) = v61 - 1;
    if (v61 - 1 < 0)
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

      v78 = v62 << (1 - v61);
      v79 = v61 + 31;
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
      v72 = 2 * v62;
    }

    *(a3 + 24) = v72;
    *(a2 + 24) = v70 != 0;
    if (v70)
    {
      if (v71 + 8 * (v3 - v4) <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v98 = "Cannot read cmmMd.headphoneVirtualize.bypass";
      }

      else
      {
        v80 = v72 >> 31;
        v81 = v71 - 1;
        *(a3 + 28) = v71 - 1;
        if (v71 - 1 < 0)
        {
          v83 = *(a3 + 8);
          if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v83 <= v4)
          {
            v72 = bswap32(*v4);
          }

          else
          {
            v84 = 4;
            v85 = v4;
            do
            {
              v86 = v72 << 8;
              *(a3 + 24) = v86;
              v87 = 255;
              if (v85 < v3 && v85 >= v83)
              {
                v87 = *v85;
              }

              v72 = v87 | v86;
              *(a3 + 24) = v72;
              v85 = (v85 + 1);
              --v84;
            }

            while (v84);
          }

          v89 = v71 + 31;
          v88 = v71 == -31;
          *(a3 + 28) = v71 + 31;
          *a3 = ++v4;
          v80 |= v72 >> (v71 + 31);
          if (v71 == -31)
          {
            v82 = 0;
          }

          else
          {
            v82 = v72 << (1 - v71);
          }

          if (v88)
          {
            v81 = 0;
          }

          else
          {
            v81 = v89;
          }
        }

        else
        {
          v82 = 2 * v72;
        }

        *(a3 + 24) = v82;
        *(a2 + 25) = v80 != 0;
        if (v81 + 8 * (v3 - v4) > 31)
        {
          *(a3 + 28) = v81 - 32;
          if (v81 - 32 < 0)
          {
            v90 = *(a3 + 8);
            if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v90 <= v4)
            {
              v91 = bswap32(*v4);
            }

            else
            {
              v92 = 4;
              v93 = v4;
              v91 = v82;
              do
              {
                v94 = v91 << 8;
                *(a3 + 24) = v94;
                v95 = 255;
                if (v93 < v3 && v93 >= v90)
                {
                  v95 = *v93;
                }

                v91 = v95 | v94;
                *(a3 + 24) = v91;
                v93 = (v93 + 1);
                --v92;
              }

              while (v92);
            }

            *a3 = v4 + 1;
            v82 |= v91 >> v81;
            v96 = v91 << -v81;
            if (!v81)
            {
              v96 = 0;
            }

            *(a3 + 24) = v96;
            *(a3 + 28) = v81;
          }

          *(a2 + 28) = v82;
          return;
        }

        exception = __cxa_allocate_exception(8uLL);
        v98 = "Cannot read cmmMd.headphoneVirtualize.DRR";
      }

LABEL_180:
      *exception = v98;
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }
  }
}

void APAC::MetadataBitStreamParser::parseObjectMetadata(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v57 = "Cannot read objMd.objectID";
    goto LABEL_76;
  }

  v9 = *(a3 + 24);
  v10 = v9 >> 25;
  v11 = v6 - 7;
  *(a3 + 28) = v6 - 7;
  if (v6 - 7 < 0)
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

    v20 = v6 + 25;
    v19 = v6 == -25;
    *(a3 + 28) = v6 + 25;
    *a3 = ++v4;
    v10 |= v9 >> (v6 + 25);
    if (v6 == -25)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 << (7 - v6);
    }

    if (v19)
    {
      v11 = 0;
    }

    else
    {
      v11 = v20;
    }
  }

  else
  {
    v12 = v9 << 7;
  }

  *(a3 + 24) = v12;
  *a2 = v10;
  if (v11 + 8 * (v3 - v4) <= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v57 = "Cannot read objMd.numBlocks";
LABEL_76:
    *exception = v57;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v21 = v12 >> 28;
  *(a3 + 28) = v11 - 4;
  if (v11 - 4 < 0)
  {
    v23 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v23 <= v4)
    {
      v12 = bswap32(*v4);
    }

    else
    {
      v24 = 4;
      v25 = v4;
      do
      {
        v26 = v12 << 8;
        *(a3 + 24) = v26;
        v27 = 255;
        if (v25 < v3 && v25 >= v23)
        {
          v27 = *v25;
        }

        v12 = v27 | v26;
        *(a3 + 24) = v12;
        v25 = (v25 + 1);
        --v24;
      }

      while (v24);
    }

    v28 = v12 << (4 - v11);
    v29 = v11 + 28;
    *(a3 + 28) = v29;
    *a3 = v4 + 1;
    v21 |= v12 >> v29;
    if (v29)
    {
      v22 = v28;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 16 * v12;
  }

  *(a3 + 24) = v22;
  a2[1] = v21;
  LODWORD(v30) = v21;
  if (v21)
  {
    for (i = 0; i < v30; ++i)
    {
      v32 = *(a3 + 16);
      v33 = *a3;
      v34 = v32 - *a3;
      v35 = *(a3 + 28);
      if (v35 + 8 * v34 <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v57 = "Cannot read objMd.blockData[n].isNewBlk";
        goto LABEL_76;
      }

      v36 = *(a3 + 24);
      v37 = v36 >> 31;
      v38 = v35 - 1;
      *(a3 + 28) = v35 - 1;
      if (v35 - 1 < 0)
      {
        v40 = *(a3 + 8);
        if ((v34 & ~(v34 >> 63) & 0xFFFFFFFC) == 0 || v40 > v33)
        {
          v42 = 4;
          v43 = v33;
          do
          {
            v44 = v36 << 8;
            *(a3 + 24) = v44;
            v45 = 255;
            if (v43 < v32 && v43 >= v40)
            {
              v45 = *v43;
            }

            v36 = v45 | v44;
            *(a3 + 24) = v36;
            v43 = (v43 + 1);
            --v42;
          }

          while (v42);
        }

        else
        {
          v36 = bswap32(*v33);
        }

        v46 = v36 << (1 - v35);
        v47 = v35 + 31;
        *(a3 + 28) = v47;
        *a3 = ++v33;
        v37 |= v36 >> v47;
        if (v47)
        {
          v39 = v46;
        }

        else
        {
          v39 = 0;
        }

        if (v47)
        {
          v38 = v47;
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
        v39 = 2 * v36;
      }

      LOWORD(v48) = 0;
      *(a3 + 24) = v39;
      v49 = &a2[500 * i + 4];
      *v49 = v37 != 0;
      if (i && i < (v30 - 1))
      {
        if (v38 + 8 * (v32 - v33) <= 9)
        {
          exception = __cxa_allocate_exception(8uLL);
          v57 = "Cannot read objMd.blockData[n].rtime";
          goto LABEL_76;
        }

        v48 = v39 >> 22;
        *(a3 + 28) = v38 - 10;
        if (v38 - 10 < 0)
        {
          v51 = *(a3 + 8);
          if (((v32 - v33) & ~((v32 - v33) >> 63) & 0xFFFFFFFC) != 0 && v51 <= v33)
          {
            v39 = bswap32(*v33);
          }

          else
          {
            v52 = 4;
            v53 = v33;
            do
            {
              v54 = v39 << 8;
              *(a3 + 24) = v54;
              v55 = 255;
              if (v53 < v32 && v53 >= v51)
              {
                v55 = *v53;
              }

              v39 = v55 | v54;
              *(a3 + 24) = v39;
              v53 = (v53 + 1);
              --v52;
            }

            while (v52);
          }

          *(a3 + 28) = v38 + 22;
          *a3 = v33 + 1;
          v48 |= v39 >> (v38 + 22);
          if (v38 == -22)
          {
            v50 = 0;
          }

          else
          {
            v50 = v39 << (10 - v38);
          }
        }

        else
        {
          v50 = v39 << 10;
        }

        *(a3 + 24) = v50;
      }

      *(v49 + 2) = v48;
      APAC::MetadataBitStreamParser::parseBlockData(a1, v49, 513, a3);
      v30 = a2[1];
    }
  }
}

void APAC::MetadataBitStreamParser::parseProprietaryDynamicData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v93 = "Cannot read pDD.hasData";
    goto LABEL_140;
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

    v20 = v6 + 31;
    v19 = v6 == -31;
    *(a3 + 28) = v6 + 31;
    *a3 = ++v4;
    v10 |= v9 >> (v6 + 31);
    if (v6 == -31)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 << (1 - v6);
    }

    if (v19)
    {
      v11 = 0;
    }

    else
    {
      v11 = v20;
    }
  }

  else
  {
    v12 = 2 * v9;
  }

  *(a3 + 24) = v12;
  *a2 = v10 != 0;
  if (!v10)
  {
    return;
  }

  if (v11 + 8 * (v3 - v4) <= 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v93 = "Cannot read pDD.numParameters";
LABEL_140:
    *exception = v93;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v21 = v12 >> 27;
  *(a3 + 28) = v11 - 5;
  if (v11 - 5 < 0)
  {
    v23 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v23 <= v4)
    {
      v12 = bswap32(*v4);
    }

    else
    {
      v24 = 4;
      v25 = v4;
      do
      {
        v26 = v12 << 8;
        *(a3 + 24) = v26;
        v27 = 255;
        if (v25 < v3 && v25 >= v23)
        {
          v27 = *v25;
        }

        v12 = v27 | v26;
        *(a3 + 24) = v12;
        v25 = (v25 + 1);
        --v24;
      }

      while (v24);
    }

    v28 = v12 << (5 - v11);
    v29 = v11 + 27;
    *(a3 + 28) = v29;
    *a3 = v4 + 1;
    v21 |= v12 >> v29;
    if (v29)
    {
      v22 = v28;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 32 * v12;
  }

  *(a3 + 24) = v22;
  *(a2 + 1) = v21;
  if (v21)
  {
    for (i = 0; i < *(a2 + 1); ++i)
    {
      v31 = *(a3 + 16);
      v32 = *a3;
      v33 = v31 - *a3;
      v34 = *(a3 + 28);
      if (v34 + 8 * v33 <= 4)
      {
        exception = __cxa_allocate_exception(8uLL);
        v93 = "Cannot read pDD.paramIndexList[n]";
        goto LABEL_140;
      }

      v35 = *(a3 + 24);
      v36 = v35 >> 27;
      v37 = v34 - 5;
      *(a3 + 28) = v34 - 5;
      if (v34 - 5 < 0)
      {
        v39 = *(a3 + 8);
        if ((v33 & ~(v33 >> 63) & 0xFFFFFFFC) == 0 || v39 > v32)
        {
          v41 = 4;
          v42 = v32;
          do
          {
            v43 = v35 << 8;
            *(a3 + 24) = v43;
            v44 = 255;
            if (v42 < v31 && v42 >= v39)
            {
              v44 = *v42;
            }

            v35 = v44 | v43;
            *(a3 + 24) = v35;
            v42 = (v42 + 1);
            --v41;
          }

          while (v41);
        }

        else
        {
          v35 = bswap32(*v32);
        }

        v46 = v34 + 27;
        v45 = v34 == -27;
        *(a3 + 28) = v34 + 27;
        *a3 = ++v32;
        v36 |= v35 >> (v34 + 27);
        if (v34 == -27)
        {
          v38 = 0;
        }

        else
        {
          v38 = v35 << (5 - v34);
        }

        if (v45)
        {
          v37 = 0;
        }

        else
        {
          v37 = v46;
        }
      }

      else
      {
        v38 = 32 * v35;
      }

      *(a3 + 24) = v38;
      *(a2 + 90 + i) = v36;
      if (v36 > 2u)
      {
        switch(v36)
        {
          case 3u:
            APAC::MetadataBitStreamParser::parseParametricReverb(a1, a2 + 48, a3);
            break;
          case 4u:
            if (v37 + 8 * (v31 - v32) <= 0)
            {
              exception = __cxa_allocate_exception(8uLL);
              v93 = "Cannot read pDD.headLocked";
              goto LABEL_140;
            }

            v54 = v38 >> 31;
            *(a3 + 28) = v37 - 1;
            if (v37 - 1 < 0)
            {
              v61 = *(a3 + 8);
              if (((v31 - v32) & ~((v31 - v32) >> 63) & 0xFFFFFFFC) != 0 && v61 <= v32)
              {
                v38 = bswap32(*v32);
              }

              else
              {
                v81 = 4;
                v82 = v32;
                do
                {
                  v83 = v38 << 8;
                  *(a3 + 24) = v83;
                  v84 = 255;
                  if (v82 < v31 && v82 >= v61)
                  {
                    v84 = *v82;
                  }

                  v38 = v84 | v83;
                  *(a3 + 24) = v38;
                  v82 = (v82 + 1);
                  --v81;
                }

                while (v81);
              }

              v85 = v38 << (1 - v37);
              v86 = v37 + 31;
              *(a3 + 28) = v86;
              *a3 = v32 + 1;
              v54 |= v38 >> v86;
              if (v86)
              {
                v55 = v85;
              }

              else
              {
                v55 = 0;
              }
            }

            else
            {
              v55 = 2 * v38;
            }

            *(a3 + 24) = v55;
            *(a2 + 88) = v54 != 0;
            break;
          case 5u:
            if (v37 + 8 * (v31 - v32) <= 0)
            {
              exception = __cxa_allocate_exception(8uLL);
              v93 = "Cannot read pDD.parallax";
              goto LABEL_140;
            }

            v49 = v38 >> 31;
            *(a3 + 28) = v37 - 1;
            if (v37 - 1 < 0)
            {
              v60 = *(a3 + 8);
              if (((v31 - v32) & ~((v31 - v32) >> 63) & 0xFFFFFFFC) != 0 && v60 <= v32)
              {
                v38 = bswap32(*v32);
              }

              else
              {
                v75 = 4;
                v76 = v32;
                do
                {
                  v77 = v38 << 8;
                  *(a3 + 24) = v77;
                  v78 = 255;
                  if (v76 < v31 && v76 >= v60)
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

              v79 = v38 << (1 - v37);
              v80 = v37 + 31;
              *(a3 + 28) = v80;
              *a3 = v32 + 1;
              v49 |= v38 >> v80;
              if (v80)
              {
                v50 = v79;
              }

              else
              {
                v50 = 0;
              }
            }

            else
            {
              v50 = 2 * v38;
            }

            *(a3 + 24) = v50;
            *(a2 + 89) = v49 != 0;
            break;
        }
      }

      else if (v36)
      {
        if (v36 == 1)
        {
          APAC::MetadataBitStreamParser::parseAudioSceneMaskingZone(a1, a2 + 12, a3);
        }

        else
        {
          if (v37 + 8 * (v31 - v32) <= 2)
          {
            exception = __cxa_allocate_exception(8uLL);
            v93 = "Cannot read pDD.preferredDoF";
            goto LABEL_140;
          }

          v47 = v38 >> 29;
          *(a3 + 28) = v37 - 3;
          if (v37 - 3 < 0)
          {
            v59 = *(a3 + 8);
            if (((v31 - v32) & ~((v31 - v32) >> 63) & 0xFFFFFFFC) != 0 && v59 <= v32)
            {
              v38 = bswap32(*v32);
            }

            else
            {
              v69 = 4;
              v70 = v32;
              do
              {
                v71 = v38 << 8;
                *(a3 + 24) = v71;
                v72 = 255;
                if (v70 < v31 && v70 >= v59)
                {
                  v72 = *v70;
                }

                v38 = v72 | v71;
                *(a3 + 24) = v38;
                v70 = (v70 + 1);
                --v69;
              }

              while (v69);
            }

            v73 = v38 << (3 - v37);
            v74 = v37 + 29;
            *(a3 + 28) = v74;
            *a3 = v32 + 1;
            v47 |= v38 >> v74;
            if (v74)
            {
              v48 = v73;
            }

            else
            {
              v48 = 0;
            }
          }

          else
          {
            v48 = 8 * v38;
          }

          *(a3 + 24) = v48;
          *(a2 + 44) = v47;
        }
      }

      else
      {
        v51 = v31 - v32;
        if (v37 + 8 * (v31 - v32) <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v93 = "Cannot read pDD.lookDirection.azimuth";
          goto LABEL_140;
        }

        *(a3 + 28) = v37 - 32;
        if (v37 - 32 < 0)
        {
          v56 = v51 & ~(v51 >> 63);
          v57 = *(a3 + 8);
          if ((v56 & 0xFFFFFFFC) != 0 && v57 <= v32)
          {
            v58 = bswap32(*v32);
          }

          else
          {
            v62 = 4;
            v63 = v32;
            v58 = v38;
            do
            {
              v64 = v58 << 8;
              *(a3 + 24) = v64;
              v65 = 255;
              if (v63 < v31 && v63 >= v57)
              {
                v65 = *v63;
              }

              v58 = v65 | v64;
              *(a3 + 24) = v58;
              v63 = (v63 + 1);
              --v62;
            }

            while (v62);
          }

          *a3 = ++v32;
          v53 = (v58 >> v37) | v38;
          v38 = v58 << -v37;
          if (!v37)
          {
            v38 = 0;
          }

          *(a3 + 24) = v38;
          *(a3 + 28) = v37;
          v51 = v31 - v32;
          v52 = 8 * (v31 - v32);
        }

        else
        {
          v52 = 8 * v51;
          v37 -= 32;
          v53 = v38;
        }

        *(a2 + 4) = v53;
        if (v52 + v37 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v93 = "Cannot read pDD.lookDirection.elevation";
          goto LABEL_140;
        }

        *(a3 + 28) = v37 - 32;
        if (v37 - 32 < 0)
        {
          v66 = v51 & ~(v51 >> 63);
          v67 = *(a3 + 8);
          if ((v66 & 0xFFFFFFFC) != 0 && v67 <= v32)
          {
            v68 = bswap32(*v32);
          }

          else
          {
            v87 = 4;
            v88 = v32;
            v68 = v38;
            do
            {
              v89 = v68 << 8;
              *(a3 + 24) = v89;
              v90 = 255;
              if (v88 < v31 && v88 >= v67)
              {
                v90 = *v88;
              }

              v68 = v90 | v89;
              *(a3 + 24) = v68;
              v88 = (v88 + 1);
              --v87;
            }

            while (v87);
          }

          *a3 = v32 + 1;
          v38 |= v68 >> v37;
          v91 = v68 << -v37;
          if (!v37)
          {
            v91 = 0;
          }

          *(a3 + 24) = v91;
          *(a3 + 28) = v37;
        }

        *(a2 + 8) = v38;
      }
    }
  }
}

void APAC::MetadataBitStreamParser::parseAudioSceneMaskingZone(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *a3;
  v6 = v4 - *a3;
  v7 = *(a3 + 28);
  if (v7 + 8 * v6 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v179 = "Cannot read mZ.isZoneDefined";
    goto LABEL_217;
  }

  v9 = *(a3 + 24);
  v10 = v9 >> 31;
  v11 = v7 - 1;
  *(a3 + 28) = v7 - 1;
  if (v7 - 1 < 0)
  {
    v13 = *(a3 + 8);
    if ((v6 & ~(v6 >> 63) & 0xFFFFFFFC) == 0 || v13 > v5)
    {
      v15 = 4;
      v16 = v5;
      do
      {
        v17 = v9 << 8;
        *(a3 + 24) = v17;
        v18 = 255;
        if (v16 < v4 && v16 >= v13)
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
      v9 = bswap32(*v5);
    }

    v19 = v9 << (1 - v7);
    v20 = v7 + 31;
    *(a3 + 28) = v20;
    *a3 = ++v5;
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
  *a2 = v10 != 0;
  if (v10)
  {
    if (v11 + 8 * (v4 - v5) <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v179 = "Cannot read mZ.keepPreviousZone";
      goto LABEL_217;
    }

    v21 = v12 >> 31;
    v22 = v11 - 1;
    *(a3 + 28) = v11 - 1;
    if (v11 - 1 < 0)
    {
      v24 = *(a3 + 8);
      if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v24 <= v5)
      {
        v12 = bswap32(*v5);
      }

      else
      {
        v25 = 4;
        v26 = v5;
        do
        {
          v27 = v12 << 8;
          *(a3 + 24) = v27;
          v28 = 255;
          if (v26 < v4 && v26 >= v24)
          {
            v28 = *v26;
          }

          v12 = v28 | v27;
          *(a3 + 24) = v12;
          v26 = (v26 + 1);
          --v25;
        }

        while (v25);
      }

      v29 = v12 << (1 - v11);
      v30 = v11 + 31;
      *(a3 + 28) = v30;
      *a3 = ++v5;
      v21 |= v12 >> v30;
      v23 = v30 ? v29 : 0;
      v22 = v30 ? v30 : 0;
    }

    else
    {
      v23 = 2 * v12;
    }

    *(a3 + 24) = v23;
    *(a2 + 1) = v21 != 0;
    if (!v21)
    {
      if (v22 + 8 * (v4 - v5) <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v179 = "Cannot read mZ.usePreDefinedZone";
        goto LABEL_217;
      }

      v31 = v23 >> 31;
      v32 = v22 - 1;
      *(a3 + 28) = v22 - 1;
      if (v22 - 1 < 0)
      {
        v34 = *(a3 + 8);
        if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v34 <= v5)
        {
          v23 = bswap32(*v5);
        }

        else
        {
          v35 = 4;
          v36 = v5;
          do
          {
            v37 = v23 << 8;
            *(a3 + 24) = v37;
            v38 = 255;
            if (v36 < v4 && v36 >= v34)
            {
              v38 = *v36;
            }

            v23 = v38 | v37;
            *(a3 + 24) = v23;
            v36 = (v36 + 1);
            --v35;
          }

          while (v35);
        }

        v40 = v22 + 31;
        v39 = v22 == -31;
        *(a3 + 28) = v22 + 31;
        *a3 = ++v5;
        v31 |= v23 >> (v22 + 31);
        if (v22 == -31)
        {
          v33 = 0;
        }

        else
        {
          v33 = v23 << (1 - v22);
        }

        if (v39)
        {
          v32 = 0;
        }

        else
        {
          v32 = v40;
        }
      }

      else
      {
        v33 = 2 * v23;
      }

      *(a3 + 24) = v33;
      *(a2 + 2) = v31 != 0;
      v41 = v4 - v5;
      v42 = v32 + 8 * (v4 - v5);
      if (v31)
      {
        if (v42 > 3)
        {
          v43 = v33 >> 28;
          *(a3 + 28) = v32 - 4;
          if (v32 - 4 < 0)
          {
            v48 = *(a3 + 8);
            if ((v41 & ~(v41 >> 63) & 0xFFFFFFFC) != 0 && v48 <= v5)
            {
              v33 = bswap32(*v5);
            }

            else
            {
              v50 = 4;
              v51 = v5;
              do
              {
                v52 = v33 << 8;
                *(a3 + 24) = v52;
                v53 = 255;
                if (v51 < v4 && v51 >= v48)
                {
                  v53 = *v51;
                }

                v33 = v53 | v52;
                *(a3 + 24) = v33;
                v51 = (v51 + 1);
                --v50;
              }

              while (v50);
            }

            v44 = v33 << (4 - v32);
            v54 = v32 + 28;
            *(a3 + 28) = v54;
            *a3 = v5 + 1;
            v43 |= v33 >> v54;
            if (!v54)
            {
              v44 = 0;
            }
          }

          else
          {
            v44 = 16 * v33;
          }

          *(a3 + 24) = v44;
          *(a2 + 4) = v43;
          return;
        }

        exception = __cxa_allocate_exception(8uLL);
        v179 = "Cannot read mZ.zoneIndex";
LABEL_217:
        *exception = v179;
        __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
      }

      if (v42 <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v179 = "Cannot read mZ.cartesian";
        goto LABEL_217;
      }

      v45 = v33 >> 31;
      v46 = v32 - 1;
      *(a3 + 28) = v32 - 1;
      if (v32 - 1 < 0)
      {
        v49 = *(a3 + 8);
        if ((v41 & ~(v41 >> 63) & 0xFFFFFFFC) != 0 && v49 <= v5)
        {
          v33 = bswap32(*v5);
        }

        else
        {
          v55 = 4;
          v56 = v5;
          do
          {
            v57 = v33 << 8;
            *(a3 + 24) = v57;
            v58 = 255;
            if (v56 < v4 && v56 >= v49)
            {
              v58 = *v56;
            }

            v33 = v58 | v57;
            *(a3 + 24) = v33;
            v56 = (v56 + 1);
            --v55;
          }

          while (v55);
        }

        v59 = v33 << (1 - v32);
        v60 = v32 + 31;
        *(a3 + 28) = v60;
        *a3 = ++v5;
        v45 |= v33 >> v60;
        if (v60)
        {
          v47 = v59;
        }

        else
        {
          v47 = 0;
        }

        if (v60)
        {
          v46 = v60;
        }

        else
        {
          v46 = 0;
        }
      }

      else
      {
        v47 = 2 * v33;
      }

      *(a3 + 24) = v47;
      *(a2 + 3) = v45 != 0;
      v61 = v46 + 8 * (v4 - v5);
      if (v45)
      {
        if (v61 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v179 = "Cannot read mZ.co_tu.cartesian.minX";
          goto LABEL_217;
        }

        *(a3 + 28) = v46 - 32;
        if (v46 - 32 < 0)
        {
          v62 = *(a3 + 8);
          if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v62 <= v5)
          {
            v63 = bswap32(*v5);
          }

          else
          {
            v108 = 4;
            v109 = v5;
            v63 = v47;
            do
            {
              v110 = v63 << 8;
              *(a3 + 24) = v110;
              v111 = 255;
              if (v109 < v4 && v109 >= v62)
              {
                v111 = *v109;
              }

              v63 = v111 | v110;
              *(a3 + 24) = v63;
              v109 = (v109 + 1);
              --v108;
            }

            while (v108);
          }

          *a3 = v5 + 1;
          v47 |= v63 >> v46;
          v112 = v63 << -v46;
          if (!v46)
          {
            v112 = 0;
          }

          *(a3 + 24) = v112;
          *(a3 + 28) = v46;
        }

        *(a2 + 8) = v47;
        v113 = *(a3 + 16);
        v114 = *a3;
        v115 = v113 - *a3;
        v116 = *(a3 + 28);
        if (v116 + 8 * v115 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v179 = "Cannot read mZ.co_tu.cartesian.maxX";
          goto LABEL_217;
        }

        v117 = *(a3 + 24);
        *(a3 + 28) = v116 - 32;
        if (v116 - 32 < 0)
        {
          v118 = v115 & ~(v115 >> 63);
          v119 = *(a3 + 8);
          if ((v118 & 0xFFFFFFFC) != 0 && v119 <= v114)
          {
            v120 = bswap32(*v114);
          }

          else
          {
            v121 = 4;
            v122 = v114;
            v120 = v117;
            do
            {
              v123 = v120 << 8;
              *(a3 + 24) = v123;
              v124 = 255;
              if (v122 < v113 && v122 >= v119)
              {
                v124 = *v122;
              }

              v120 = v124 | v123;
              *(a3 + 24) = v120;
              v122 = (v122 + 1);
              --v121;
            }

            while (v121);
          }

          *a3 = v114 + 1;
          v117 |= v120 >> v116;
          v125 = v120 << -v116;
          if (!v116)
          {
            v125 = 0;
          }

          *(a3 + 24) = v125;
          *(a3 + 28) = v116;
        }

        *(a2 + 12) = v117;
        v126 = *(a3 + 16);
        v127 = *a3;
        v128 = v126 - *a3;
        v129 = *(a3 + 28);
        if (v129 + 8 * v128 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v179 = "Cannot read mZ.co_tu.cartesian.minY";
          goto LABEL_217;
        }

        v130 = *(a3 + 24);
        *(a3 + 28) = v129 - 32;
        if (v129 - 32 < 0)
        {
          v131 = v128 & ~(v128 >> 63);
          v132 = *(a3 + 8);
          if ((v131 & 0xFFFFFFFC) != 0 && v132 <= v127)
          {
            v133 = bswap32(*v127);
          }

          else
          {
            v134 = 4;
            v135 = v127;
            v133 = v130;
            do
            {
              v136 = v133 << 8;
              *(a3 + 24) = v136;
              v137 = 255;
              if (v135 < v126 && v135 >= v132)
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

          *a3 = v127 + 1;
          v130 |= v133 >> v129;
          v138 = v133 << -v129;
          if (!v129)
          {
            v138 = 0;
          }

          *(a3 + 24) = v138;
          *(a3 + 28) = v129;
        }

        *(a2 + 16) = v130;
        v139 = *(a3 + 16);
        v140 = *a3;
        v141 = v139 - *a3;
        v142 = *(a3 + 28);
        if (v142 + 8 * v141 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v179 = "Cannot read mZ.co_tu.cartesian.maxY";
          goto LABEL_217;
        }

        v143 = *(a3 + 24);
        *(a3 + 28) = v142 - 32;
        if (v142 - 32 < 0)
        {
          v144 = v141 & ~(v141 >> 63);
          v145 = *(a3 + 8);
          if ((v144 & 0xFFFFFFFC) != 0 && v145 <= v140)
          {
            v146 = bswap32(*v140);
          }

          else
          {
            v147 = 4;
            v148 = v140;
            v146 = v143;
            do
            {
              v149 = v146 << 8;
              *(a3 + 24) = v149;
              v150 = 255;
              if (v148 < v139 && v148 >= v145)
              {
                v150 = *v148;
              }

              v146 = v150 | v149;
              *(a3 + 24) = v146;
              v148 = (v148 + 1);
              --v147;
            }

            while (v147);
          }

          *a3 = v140 + 1;
          v143 |= v146 >> v142;
          v151 = v146 << -v142;
          if (!v142)
          {
            v151 = 0;
          }

          *(a3 + 24) = v151;
          *(a3 + 28) = v142;
        }

        *(a2 + 20) = v143;
        v152 = *(a3 + 16);
        v153 = *a3;
        v154 = v152 - *a3;
        v155 = *(a3 + 28);
        if (v155 + 8 * v154 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v179 = "Cannot read mZ.co_tu.cartesian.minZ";
          goto LABEL_217;
        }

        v156 = *(a3 + 24);
        *(a3 + 28) = v155 - 32;
        if (v155 - 32 < 0)
        {
          v157 = v154 & ~(v154 >> 63);
          v158 = *(a3 + 8);
          if ((v157 & 0xFFFFFFFC) != 0 && v158 <= v153)
          {
            v159 = bswap32(*v153);
          }

          else
          {
            v160 = 4;
            v161 = v153;
            v159 = v156;
            do
            {
              v162 = v159 << 8;
              *(a3 + 24) = v162;
              v163 = 255;
              if (v161 < v152 && v161 >= v158)
              {
                v163 = *v161;
              }

              v159 = v163 | v162;
              *(a3 + 24) = v159;
              v161 = (v161 + 1);
              --v160;
            }

            while (v160);
          }

          *a3 = v153 + 1;
          v156 |= v159 >> v155;
          v164 = v159 << -v155;
          if (!v155)
          {
            v164 = 0;
          }

          *(a3 + 24) = v164;
          *(a3 + 28) = v155;
        }

        *(a2 + 24) = v156;
        v165 = *(a3 + 16);
        v166 = *a3;
        v167 = v165 - *a3;
        v168 = *(a3 + 28);
        if (v168 + 8 * v167 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v179 = "Cannot read mZ.co_tu.cartesian.maxZ";
          goto LABEL_217;
        }

        v169 = *(a3 + 24);
        *(a3 + 28) = v168 - 32;
        if (v168 - 32 < 0)
        {
          v170 = v167 & ~(v167 >> 63);
          v171 = *(a3 + 8);
          if ((v170 & 0xFFFFFFFC) != 0 && v171 <= v166)
          {
            v172 = bswap32(*v166);
          }

          else
          {
            v173 = 4;
            v174 = v166;
            v172 = v169;
            do
            {
              v175 = v172 << 8;
              *(a3 + 24) = v175;
              v176 = 255;
              if (v174 < v165 && v174 >= v171)
              {
                v176 = *v174;
              }

              v172 = v176 | v175;
              *(a3 + 24) = v172;
              v174 = (v174 + 1);
              --v173;
            }

            while (v173);
          }

          *a3 = v166 + 1;
          v169 |= v172 >> v168;
          v177 = v172 << -v168;
          if (!v168)
          {
            v177 = 0;
          }

          *(a3 + 24) = v177;
          *(a3 + 28) = v168;
        }

        *(a2 + 28) = v169;
      }

      else
      {
        if (v61 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v179 = "Cannot read mZ.co_tu.spherical.minAzimuth";
          goto LABEL_217;
        }

        *(a3 + 28) = v46 - 32;
        if (v46 - 32 < 0)
        {
          AT::TBitstreamReader<unsigned int>::FillCacheFrom(a3, v5);
          v65 = *(a3 + 24);
          v64 = *(a3 + 28);
          v66 = v64 + 32;
          v39 = v64 == -32;
          *a3 += 4;
          v47 |= v65 >> v64;
          v67 = v65 << -v64;
          if (v39)
          {
            v67 = 0;
          }

          *(a3 + 24) = v67;
          *(a3 + 28) = v66;
        }

        *(a2 + 8) = v47;
        v68 = *a3;
        v69 = *(a3 + 28);
        if ((v69 + 8 * (*(a3 + 16) - *a3)) <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v179 = "Cannot read mZ.co_tu.spherical.maxAzimuth";
          goto LABEL_217;
        }

        v70 = *(a3 + 24);
        v71 = v69 - 32;
        *(a3 + 28) = v71;
        if (v71 < 0)
        {
          AT::TBitstreamReader<unsigned int>::FillCacheFrom(a3, v68);
          v73 = *(a3 + 24);
          v72 = *(a3 + 28);
          v74 = v72 + 32;
          v39 = v72 == -32;
          *a3 += 4;
          v70 |= v73 >> v72;
          v75 = v73 << -v72;
          if (v39)
          {
            v75 = 0;
          }

          *(a3 + 24) = v75;
          *(a3 + 28) = v74;
        }

        *(a2 + 12) = v70;
        v76 = *a3;
        v77 = *(a3 + 28);
        if ((v77 + 8 * (*(a3 + 16) - *a3)) <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v179 = "Cannot read mZ.co_tu.spherical.minElevation";
          goto LABEL_217;
        }

        v78 = *(a3 + 24);
        v79 = v77 - 32;
        *(a3 + 28) = v79;
        if (v79 < 0)
        {
          AT::TBitstreamReader<unsigned int>::FillCacheFrom(a3, v76);
          v81 = *(a3 + 24);
          v80 = *(a3 + 28);
          v82 = v80 + 32;
          v39 = v80 == -32;
          *a3 += 4;
          v78 |= v81 >> v80;
          v83 = v81 << -v80;
          if (v39)
          {
            v83 = 0;
          }

          *(a3 + 24) = v83;
          *(a3 + 28) = v82;
        }

        *(a2 + 16) = v78;
        v84 = *a3;
        v85 = *(a3 + 28);
        if ((v85 + 8 * (*(a3 + 16) - *a3)) <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v179 = "Cannot read mZ.co_tu.spherical.maxElevation";
          goto LABEL_217;
        }

        v86 = *(a3 + 24);
        v87 = v85 - 32;
        *(a3 + 28) = v87;
        if (v87 < 0)
        {
          AT::TBitstreamReader<unsigned int>::FillCacheFrom(a3, v84);
          v89 = *(a3 + 24);
          v88 = *(a3 + 28);
          v90 = v88 + 32;
          v39 = v88 == -32;
          *a3 += 4;
          v86 |= v89 >> v88;
          v91 = v89 << -v88;
          if (v39)
          {
            v91 = 0;
          }

          *(a3 + 24) = v91;
          *(a3 + 28) = v90;
        }

        *(a2 + 20) = v86;
        v92 = *a3;
        v93 = *(a3 + 28);
        if ((v93 + 8 * (*(a3 + 16) - *a3)) <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v179 = "Cannot read mZ.co_tu.spherical.minDistance";
          goto LABEL_217;
        }

        v94 = *(a3 + 24);
        v95 = v93 - 32;
        *(a3 + 28) = v95;
        if (v95 < 0)
        {
          AT::TBitstreamReader<unsigned int>::FillCacheFrom(a3, v92);
          v97 = *(a3 + 24);
          v96 = *(a3 + 28);
          v98 = v96 + 32;
          v39 = v96 == -32;
          *a3 += 4;
          v94 |= v97 >> v96;
          v99 = v97 << -v96;
          if (v39)
          {
            v99 = 0;
          }

          *(a3 + 24) = v99;
          *(a3 + 28) = v98;
        }

        *(a2 + 24) = v94;
        v100 = *a3;
        v101 = *(a3 + 28);
        if ((v101 + 8 * (*(a3 + 16) - *a3)) <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v179 = "Cannot read mZ.co_tu.spherical.maxDistance";
          goto LABEL_217;
        }

        v102 = *(a3 + 24);
        v103 = v101 - 32;
        *(a3 + 28) = v103;
        if (v103 < 0)
        {
          AT::TBitstreamReader<unsigned int>::FillCacheFrom(a3, v100);
          v105 = *(a3 + 24);
          v104 = *(a3 + 28);
          v106 = v104 + 32;
          v39 = v104 == -32;
          *a3 += 4;
          v102 |= v105 >> v104;
          v107 = v105 << -v104;
          if (v39)
          {
            v107 = 0;
          }

          *(a3 + 24) = v107;
          *(a3 + 28) = v106;
        }

        *(a2 + 28) = v102;
      }
    }
  }
}

void APAC::MetadataBitStreamParser::parseBlockData(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  if (*a2 != 1)
  {
    return;
  }

  v5 = *(a4 + 16);
  v6 = *a4;
  v7 = v5 - *a4;
  v8 = *(a4 + 28);
  if (v8 + 8 * v7 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v621 = "Cannot read blkData.cartesian";
    goto LABEL_922;
  }

  v11 = (a4 + 24);
  v10 = *(a4 + 24);
  v12 = v10 >> 31;
  v13 = v8 - 1;
  *(a4 + 28) = v8 - 1;
  if (v8 - 1 < 0)
  {
    v15 = *(a4 + 8);
    if ((v7 & ~(v7 >> 63) & 0xFFFFFFFC) == 0 || v15 > v6)
    {
      v17 = 4;
      v18 = v6;
      do
      {
        v19 = v10 << 8;
        *v11 = v19;
        v20 = 255;
        if (v18 < v5 && v18 >= v15)
        {
          v20 = *v18;
        }

        v10 = v20 | v19;
        *v11 = v10;
        v18 = (v18 + 1);
        --v17;
      }

      while (v17);
    }

    else
    {
      v10 = bswap32(*v6);
    }

    v22 = v8 + 31;
    v21 = v8 == -31;
    *(a4 + 28) = v8 + 31;
    *a4 = ++v6;
    v12 |= v10 >> (v8 + 31);
    if (v8 == -31)
    {
      v14 = 0;
    }

    else
    {
      v14 = v10 << (1 - v8);
    }

    if (v21)
    {
      v13 = 0;
    }

    else
    {
      v13 = v22;
    }
  }

  else
  {
    v14 = 2 * v10;
  }

  *v11 = v14;
  *(a2 + 4) = v12 != 0;
  v23 = v5 - v6;
  v24 = v13 + 8 * (v5 - v6);
  if (v12)
  {
    if (v24 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v621 = "Cannot read blkData.position.co_ut.cartesian.X";
      goto LABEL_922;
    }

    *(a4 + 28) = v13 - 32;
    if (v13 - 32 < 0)
    {
      v25 = *(a4 + 8);
      if ((v23 & ~(v23 >> 63) & 0xFFFFFFFC) != 0 && v25 <= v6)
      {
        v26 = bswap32(*v6);
      }

      else
      {
        v29 = 4;
        v30 = v6;
        v26 = v14;
        do
        {
          v31 = v26 << 8;
          *v11 = v31;
          v32 = 255;
          if (v30 < v5 && v30 >= v25)
          {
            v32 = *v30;
          }

          v26 = v32 | v31;
          *v11 = v26;
          v30 = (v30 + 1);
          --v29;
        }

        while (v29);
      }

      *a4 = v6 + 1;
      v14 |= v26 >> v13;
      v33 = v26 << -v13;
      if (!v13)
      {
        v33 = 0;
      }

      *(a4 + 24) = v33;
      *(a4 + 28) = v13;
    }

    *(a2 + 8) = v14;
    v34 = *(a4 + 16);
    v35 = *a4;
    v36 = v34 - *a4;
    v37 = *(a4 + 28);
    if (v37 + 8 * v36 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v621 = "Cannot read blkData.position.co_ut.cartesian.Y";
      goto LABEL_922;
    }

    v38 = *(a4 + 24);
    *(a4 + 28) = v37 - 32;
    if (v37 - 32 < 0)
    {
      v39 = v36 & ~(v36 >> 63);
      v40 = *(a4 + 8);
      if ((v39 & 0xFFFFFFFC) != 0 && v40 <= v35)
      {
        v41 = bswap32(*v35);
      }

      else
      {
        v42 = 4;
        v43 = v35;
        v41 = v38;
        do
        {
          v44 = v41 << 8;
          *v11 = v44;
          v45 = 255;
          if (v43 < v34 && v43 >= v40)
          {
            v45 = *v43;
          }

          v41 = v45 | v44;
          *v11 = v41;
          v43 = (v43 + 1);
          --v42;
        }

        while (v42);
      }

      *a4 = v35 + 1;
      v38 |= v41 >> v37;
      v46 = v41 << -v37;
      if (!v37)
      {
        v46 = 0;
      }

      *(a4 + 24) = v46;
      *(a4 + 28) = v37;
    }

    *(a2 + 12) = v38;
    v47 = *(a4 + 16);
    v48 = *a4;
    v49 = v47 - *a4;
    v50 = *(a4 + 28);
    if (v50 + 8 * v49 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v621 = "Cannot read blkData.position.co_ut.cartesian.Z";
      goto LABEL_922;
    }

    v51 = *(a4 + 24);
    *(a4 + 28) = v50 - 32;
    if (v50 - 32 < 0)
    {
      v52 = *(a4 + 8);
      if ((v49 & ~(v49 >> 63) & 0xFFFFFFFC) == 0 || v52 > v48)
      {
        v53 = 4;
        v54 = v48;
        v55 = v51;
        do
        {
          v56 = v55 << 8;
          *v11 = v56;
          v57 = 255;
          if (v54 < v47 && v54 >= v52)
          {
            v57 = *v54;
          }

          v55 = v57 | v56;
          *v11 = v55;
          v54 = (v54 + 1);
          --v53;
        }

        while (v53);
        goto LABEL_94;
      }

LABEL_88:
      v55 = bswap32(*v48);
LABEL_94:
      *(a4 + 28) = v50;
      *a4 = v48 + 1;
      v51 |= v55 >> v50;
      if (v50)
      {
        v83 = v55 << -v50;
      }

      else
      {
        v83 = 0;
      }

      *v11 = v83;
    }
  }

  else
  {
    if (v24 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v621 = "Cannot read blkData.position.co_ut.spherical.azimuth";
      goto LABEL_922;
    }

    *(a4 + 28) = v13 - 32;
    if (v13 - 32 < 0)
    {
      v27 = *(a4 + 8);
      if ((v23 & ~(v23 >> 63) & 0xFFFFFFFC) != 0 && v27 <= v6)
      {
        v28 = bswap32(*v6);
      }

      else
      {
        v58 = 4;
        v59 = v6;
        v28 = v14;
        do
        {
          v60 = v28 << 8;
          *v11 = v60;
          v61 = 255;
          if (v59 < v5 && v59 >= v27)
          {
            v61 = *v59;
          }

          v28 = v61 | v60;
          *v11 = v28;
          v59 = (v59 + 1);
          --v58;
        }

        while (v58);
      }

      *a4 = v6 + 1;
      v14 |= v28 >> v13;
      v62 = v28 << -v13;
      if (!v13)
      {
        v62 = 0;
      }

      *(a4 + 24) = v62;
      *(a4 + 28) = v13;
    }

    *(a2 + 8) = v14;
    v63 = *(a4 + 16);
    v64 = *a4;
    v65 = v63 - *a4;
    v66 = *(a4 + 28);
    if (v66 + 8 * v65 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v621 = "Cannot read blkData.position.co_ut.spherical.elevation";
      goto LABEL_922;
    }

    v67 = *(a4 + 24);
    *(a4 + 28) = v66 - 32;
    if (v66 - 32 < 0)
    {
      v68 = v65 & ~(v65 >> 63);
      v69 = *(a4 + 8);
      if ((v68 & 0xFFFFFFFC) != 0 && v69 <= v64)
      {
        v70 = bswap32(*v64);
      }

      else
      {
        v71 = 4;
        v72 = v64;
        v70 = v67;
        do
        {
          v73 = v70 << 8;
          *v11 = v73;
          v74 = 255;
          if (v72 < v63 && v72 >= v69)
          {
            v74 = *v72;
          }

          v70 = v74 | v73;
          *v11 = v70;
          v72 = (v72 + 1);
          --v71;
        }

        while (v71);
      }

      *a4 = v64 + 1;
      v67 |= v70 >> v66;
      v75 = v70 << -v66;
      if (!v66)
      {
        v75 = 0;
      }

      *(a4 + 24) = v75;
      *(a4 + 28) = v66;
    }

    *(a2 + 12) = v67;
    v76 = *(a4 + 16);
    v48 = *a4;
    v77 = v76 - *a4;
    v50 = *(a4 + 28);
    if (v50 + 8 * v77 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v621 = "Cannot read blkData.position.co_ut.spherical.distance";
      goto LABEL_922;
    }

    v51 = *(a4 + 24);
    *(a4 + 28) = v50 - 32;
    if (v50 - 32 < 0)
    {
      v78 = *(a4 + 8);
      if ((v77 & ~(v77 >> 63) & 0xFFFFFFFC) == 0 || v78 > v48)
      {
        v79 = 4;
        v80 = v48;
        v55 = v51;
        do
        {
          v81 = v55 << 8;
          *v11 = v81;
          v82 = 255;
          if (v80 < v76 && v80 >= v78)
          {
            v82 = *v80;
          }

          v55 = v82 | v81;
          *v11 = v55;
          v80 = (v80 + 1);
          --v79;
        }

        while (v79);
        goto LABEL_94;
      }

      goto LABEL_88;
    }
  }

  *(a2 + 16) = v51;
  v84 = *(a4 + 16);
  v85 = *a4;
  v86 = v84 - *a4;
  v87 = *(a4 + 28);
  if (v87 + 8 * v86 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v621 = "Cannot read blkData.hasADMMetadata";
    goto LABEL_922;
  }

  v88 = *(a4 + 24);
  v89 = v88 >> 31;
  v90 = v87 - 1;
  *(a4 + 28) = v87 - 1;
  if (v87 - 1 < 0)
  {
    v92 = *(a4 + 8);
    if ((v86 & ~(v86 >> 63) & 0xFFFFFFFC) != 0 && v92 <= v85)
    {
      v88 = bswap32(*v85);
    }

    else
    {
      v93 = 4;
      v94 = v85;
      do
      {
        v95 = v88 << 8;
        *v11 = v95;
        v96 = 255;
        if (v94 < v84 && v94 >= v92)
        {
          v96 = *v94;
        }

        v88 = v96 | v95;
        *v11 = v88;
        v94 = (v94 + 1);
        --v93;
      }

      while (v93);
    }

    v98 = v87 + 31;
    v97 = v87 == -31;
    *(a4 + 28) = v87 + 31;
    *a4 = ++v85;
    v89 |= v88 >> (v87 + 31);
    if (v87 == -31)
    {
      v91 = 0;
    }

    else
    {
      v91 = v88 << (1 - v87);
    }

    if (v97)
    {
      v90 = 0;
    }

    else
    {
      v90 = v98;
    }
  }

  else
  {
    v91 = 2 * v88;
  }

  *v11 = v91;
  *(a2 + 20) = v89 != 0;
  if (!v89)
  {
    return;
  }

  if (v90 + 8 * (v84 - v85) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v621 = "Cannot read blkData.absoluteDistance.hasData";
    goto LABEL_922;
  }

  v99 = v91 >> 31;
  v100 = v90 - 1;
  *(a4 + 28) = v90 - 1;
  if (v90 - 1 < 0)
  {
    v102 = *(a4 + 8);
    if (((v84 - v85) & ~((v84 - v85) >> 63) & 0xFFFFFFFC) != 0 && v102 <= v85)
    {
      v91 = bswap32(*v85);
    }

    else
    {
      v103 = 4;
      v104 = v85;
      do
      {
        v105 = v91 << 8;
        *v11 = v105;
        v106 = 255;
        if (v104 < v84 && v104 >= v102)
        {
          v106 = *v104;
        }

        v91 = v106 | v105;
        *v11 = v91;
        v104 = (v104 + 1);
        --v103;
      }

      while (v103);
    }

    v107 = v91 << (1 - v90);
    v108 = v90 + 31;
    *(a4 + 28) = v108;
    *a4 = ++v85;
    v99 |= v91 >> v108;
    if (v108)
    {
      v101 = v107;
    }

    else
    {
      v101 = 0;
    }

    if (v108)
    {
      v100 = v108;
    }

    else
    {
      v100 = 0;
    }
  }

  else
  {
    v101 = 2 * v91;
  }

  *v11 = v101;
  *(a2 + 24) = v99 != 0;
  if (v99)
  {
    if (v100 + 8 * (v84 - v85) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v621 = "Cannot read blkData.absoluteDistance.distance";
      goto LABEL_922;
    }

    *(a4 + 28) = v100 - 32;
    if (v100 - 32 < 0)
    {
      v110 = *(a4 + 8);
      if (((v84 - v85) & ~((v84 - v85) >> 63) & 0xFFFFFFFC) != 0 && v110 <= v85)
      {
        v111 = bswap32(*v85);
      }

      else
      {
        v112 = 4;
        v113 = v85;
        v111 = v101;
        do
        {
          v114 = v111 << 8;
          *v11 = v114;
          v115 = 255;
          if (v113 < v84 && v113 >= v110)
          {
            v115 = *v113;
          }

          v111 = v115 | v114;
          *v11 = v111;
          v113 = (v113 + 1);
          --v112;
        }

        while (v112);
      }

      *a4 = ++v85;
      v109 = (v111 >> v100) | v101;
      v101 = v111 << -v100;
      if (!v100)
      {
        v101 = 0;
      }

      *(a4 + 24) = v101;
      *(a4 + 28) = v100;
    }

    else
    {
      v100 -= 32;
      v109 = v101;
    }

    *(a2 + 28) = v109;
  }

  if (v100 + 8 * (v84 - v85) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v621 = "Cannot read blkData.spread.hasData";
    goto LABEL_922;
  }

  v116 = v101 >> 31;
  v117 = v100 - 1;
  *(a4 + 28) = v100 - 1;
  if (v100 - 1 < 0)
  {
    v119 = *(a4 + 8);
    if (((v84 - v85) & ~((v84 - v85) >> 63) & 0xFFFFFFFC) != 0 && v119 <= v85)
    {
      v101 = bswap32(*v85);
    }

    else
    {
      v120 = 4;
      v121 = v85;
      do
      {
        v122 = v101 << 8;
        *v11 = v122;
        v123 = 255;
        if (v121 < v84 && v121 >= v119)
        {
          v123 = *v121;
        }

        v101 = v123 | v122;
        *v11 = v101;
        v121 = (v121 + 1);
        --v120;
      }

      while (v120);
    }

    v125 = v100 + 31;
    v124 = v100 == -31;
    *(a4 + 28) = v100 + 31;
    *a4 = ++v85;
    v116 |= v101 >> (v100 + 31);
    if (v100 == -31)
    {
      v118 = 0;
    }

    else
    {
      v118 = v101 << (1 - v100);
    }

    if (v124)
    {
      v117 = 0;
    }

    else
    {
      v117 = v125;
    }
  }

  else
  {
    v118 = 2 * v101;
  }

  *v11 = v118;
  *(a2 + 32) = v116 != 0;
  if (v116)
  {
    v126 = v84 - v85;
    if (v117 + 8 * (v84 - v85) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v621 = "Cannot read blkData.spread.width";
      goto LABEL_922;
    }

    *(a4 + 28) = v117 - 32;
    if (v117 - 32 < 0)
    {
      v129 = v126 & ~(v126 >> 63);
      v130 = *(a4 + 8);
      if ((v129 & 0xFFFFFFFC) != 0 && v130 <= v85)
      {
        v131 = bswap32(*v85);
      }

      else
      {
        v132 = 4;
        v133 = v85;
        v131 = v118;
        do
        {
          v134 = v131 << 8;
          *v11 = v134;
          v135 = 255;
          if (v133 < v84 && v133 >= v130)
          {
            v135 = *v133;
          }

          v131 = v135 | v134;
          *v11 = v131;
          v133 = (v133 + 1);
          --v132;
        }

        while (v132);
      }

      *a4 = ++v85;
      v128 = (v131 >> v117) | v118;
      v118 = v131 << -v117;
      if (!v117)
      {
        v118 = 0;
      }

      *(a4 + 24) = v118;
      *(a4 + 28) = v117;
      v126 = v84 - v85;
      v127 = 8 * (v84 - v85);
    }

    else
    {
      v127 = 8 * v126;
      v117 -= 32;
      v128 = v118;
    }

    *(a2 + 36) = v128;
    if (v127 + v117 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v621 = "Cannot read blkData.spread.height";
      goto LABEL_922;
    }

    *(a4 + 28) = v117 - 32;
    if (v117 - 32 < 0)
    {
      v137 = v126 & ~(v126 >> 63);
      v138 = *(a4 + 8);
      if ((v137 & 0xFFFFFFFC) != 0 && v138 <= v85)
      {
        v139 = bswap32(*v85);
      }

      else
      {
        v140 = 4;
        v141 = v85;
        v139 = v118;
        do
        {
          v142 = v139 << 8;
          *v11 = v142;
          v143 = 255;
          if (v141 < v84 && v141 >= v138)
          {
            v143 = *v141;
          }

          v139 = v143 | v142;
          *v11 = v139;
          v141 = (v141 + 1);
          --v140;
        }

        while (v140);
      }

      *a4 = ++v85;
      v136 = (v139 >> v117) | v118;
      v118 = v139 << -v117;
      if (!v117)
      {
        v118 = 0;
      }

      *(a4 + 24) = v118;
      *(a4 + 28) = v117;
      v126 = v84 - v85;
      v127 = 8 * (v84 - v85);
    }

    else
    {
      v117 -= 32;
      v136 = v118;
    }

    *(a2 + 40) = v136;
    if (v127 + v117 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v621 = "Cannot read blkData.spread.depth";
      goto LABEL_922;
    }

    *(a4 + 28) = v117 - 32;
    if (v117 - 32 < 0)
    {
      v145 = v126 & ~(v126 >> 63);
      v146 = *(a4 + 8);
      if ((v145 & 0xFFFFFFFC) != 0 && v146 <= v85)
      {
        v147 = bswap32(*v85);
      }

      else
      {
        v148 = 4;
        v149 = v85;
        v147 = v118;
        do
        {
          v150 = v147 << 8;
          *v11 = v150;
          v151 = 255;
          if (v149 < v84 && v149 >= v146)
          {
            v151 = *v149;
          }

          v147 = v151 | v150;
          *v11 = v147;
          v149 = (v149 + 1);
          --v148;
        }

        while (v148);
      }

      *a4 = ++v85;
      v144 = (v147 >> v117) | v118;
      v118 = v147 << -v117;
      if (!v117)
      {
        v118 = 0;
      }

      *(a4 + 24) = v118;
      *(a4 + 28) = v117;
    }

    else
    {
      v117 -= 32;
      v144 = v118;
    }

    *(a2 + 44) = v144;
  }

  if (v117 + 8 * (v84 - v85) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v621 = "Cannot read blkData.gain.hasData";
    goto LABEL_922;
  }

  v152 = v118 >> 31;
  v153 = v117 - 1;
  *(a4 + 28) = v117 - 1;
  if (v117 - 1 < 0)
  {
    v155 = *(a4 + 8);
    if (((v84 - v85) & ~((v84 - v85) >> 63) & 0xFFFFFFFC) != 0 && v155 <= v85)
    {
      v118 = bswap32(*v85);
    }

    else
    {
      v156 = 4;
      v157 = v85;
      do
      {
        v158 = v118 << 8;
        *v11 = v158;
        v159 = 255;
        if (v157 < v84 && v157 >= v155)
        {
          v159 = *v157;
        }

        v118 = v159 | v158;
        *v11 = v118;
        v157 = (v157 + 1);
        --v156;
      }

      while (v156);
    }

    v161 = v117 + 31;
    v160 = v117 == -31;
    *(a4 + 28) = v117 + 31;
    *a4 = ++v85;
    v152 |= v118 >> (v117 + 31);
    if (v117 == -31)
    {
      v154 = 0;
    }

    else
    {
      v154 = v118 << (1 - v117);
    }

    if (v160)
    {
      v153 = 0;
    }

    else
    {
      v153 = v161;
    }
  }

  else
  {
    v154 = 2 * v118;
  }

  *v11 = v154;
  *(a2 + 48) = v152 != 0;
  if (v152)
  {
    if (v153 + 8 * (v84 - v85) <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v621 = "Cannot read blkData.gain.isDB";
      goto LABEL_922;
    }

    v162 = v154 >> 31;
    *(a4 + 28) = v153 - 1;
    if (v153 - 1 < 0)
    {
      v163 = *(a4 + 8);
      if (((v84 - v85) & ~((v84 - v85) >> 63) & 0xFFFFFFFC) != 0 && v163 <= v85)
      {
        v154 = bswap32(*v85);
      }

      else
      {
        v164 = 4;
        v165 = v85;
        do
        {
          v166 = v154 << 8;
          *v11 = v166;
          v167 = 255;
          if (v165 < v84 && v165 >= v163)
          {
            v167 = *v165;
          }

          v154 = v167 | v166;
          *v11 = v154;
          v165 = (v165 + 1);
          --v164;
        }

        while (v164);
      }

      v168 = v154 << (1 - v153);
      v153 += 31;
      *(a4 + 28) = v153;
      *a4 = ++v85;
      v162 |= v154 >> v153;
      if (v153)
      {
        v154 = v168;
      }

      else
      {
        v154 = 0;
      }

      if (!v153)
      {
        v153 = 0;
      }
    }

    else
    {
      v154 *= 2;
      --v153;
    }

    *v11 = v154;
    *(a2 + 49) = v162 != 0;
    if (v153 + 8 * (v84 - v85) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v621 = "Cannot read blkData.gain.gain";
      goto LABEL_922;
    }

    *(a4 + 28) = v153 - 32;
    if (v153 - 32 < 0)
    {
      v170 = *(a4 + 8);
      if (((v84 - v85) & ~((v84 - v85) >> 63) & 0xFFFFFFFC) != 0 && v170 <= v85)
      {
        v171 = bswap32(*v85);
      }

      else
      {
        v172 = 4;
        v173 = v85;
        v171 = v154;
        do
        {
          v174 = v171 << 8;
          *v11 = v174;
          v175 = 255;
          if (v173 < v84 && v173 >= v170)
          {
            v175 = *v173;
          }

          v171 = v175 | v174;
          *v11 = v171;
          v173 = (v173 + 1);
          --v172;
        }

        while (v172);
      }

      *a4 = ++v85;
      v169 = (v171 >> v153) | v154;
      v154 = v171 << -v153;
      if (!v153)
      {
        v154 = 0;
      }

      *(a4 + 24) = v154;
      *(a4 + 28) = v153;
    }

    else
    {
      v153 -= 32;
      v169 = v154;
    }

    *(a2 + 52) = v169;
  }

  if (v153 + 8 * (v84 - v85) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v621 = "Cannot read blkData.diffuse.hasData";
    goto LABEL_922;
  }

  v176 = v154 >> 31;
  v177 = v153 - 1;
  *(a4 + 28) = v153 - 1;
  if (v153 - 1 < 0)
  {
    v179 = *(a4 + 8);
    if (((v84 - v85) & ~((v84 - v85) >> 63) & 0xFFFFFFFC) != 0 && v179 <= v85)
    {
      v154 = bswap32(*v85);
    }

    else
    {
      v180 = 4;
      v181 = v85;
      do
      {
        v182 = v154 << 8;
        *v11 = v182;
        v183 = 255;
        if (v181 < v84 && v181 >= v179)
        {
          v183 = *v181;
        }

        v154 = v183 | v182;
        *v11 = v154;
        v181 = (v181 + 1);
        --v180;
      }

      while (v180);
    }

    v184 = v154 << (1 - v153);
    v185 = v153 + 31;
    *(a4 + 28) = v185;
    *a4 = ++v85;
    v176 |= v154 >> v185;
    if (v185)
    {
      v178 = v184;
    }

    else
    {
      v178 = 0;
    }

    if (v185)
    {
      v177 = v185;
    }

    else
    {
      v177 = 0;
    }
  }

  else
  {
    v178 = 2 * v154;
  }

  *v11 = v178;
  *(a2 + 56) = v176 != 0;
  if (v176)
  {
    if (v177 + 8 * (v84 - v85) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v621 = "Cannot read blkData.diffuse.diffuse";
      goto LABEL_922;
    }

    *(a4 + 28) = v177 - 32;
    if (v177 - 32 < 0)
    {
      v187 = *(a4 + 8);
      if (((v84 - v85) & ~((v84 - v85) >> 63) & 0xFFFFFFFC) != 0 && v187 <= v85)
      {
        v188 = bswap32(*v85);
      }

      else
      {
        v189 = 4;
        v190 = v85;
        v188 = v178;
        do
        {
          v191 = v188 << 8;
          *v11 = v191;
          v192 = 255;
          if (v190 < v84 && v190 >= v187)
          {
            v192 = *v190;
          }

          v188 = v192 | v191;
          *v11 = v188;
          v190 = (v190 + 1);
          --v189;
        }

        while (v189);
      }

      *a4 = ++v85;
      v186 = (v188 >> v177) | v178;
      v178 = v188 << -v177;
      if (!v177)
      {
        v178 = 0;
      }

      *(a4 + 24) = v178;
      *(a4 + 28) = v177;
    }

    else
    {
      v177 -= 32;
      v186 = v178;
    }

    *(a2 + 60) = v186;
  }

  if (v177 + 8 * (v84 - v85) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v621 = "Cannot read blkData.channelLock.channelLock";
    goto LABEL_922;
  }

  v193 = v178 >> 31;
  v194 = v177 - 1;
  *(a4 + 28) = v177 - 1;
  if (v177 - 1 < 0)
  {
    v196 = *(a4 + 8);
    if (((v84 - v85) & ~((v84 - v85) >> 63) & 0xFFFFFFFC) != 0 && v196 <= v85)
    {
      v178 = bswap32(*v85);
    }

    else
    {
      v197 = 4;
      v198 = v85;
      do
      {
        v199 = v178 << 8;
        *v11 = v199;
        v200 = 255;
        if (v198 < v84 && v198 >= v196)
        {
          v200 = *v198;
        }

        v178 = v200 | v199;
        *v11 = v178;
        v198 = (v198 + 1);
        --v197;
      }

      while (v197);
    }

    v201 = v178 << (1 - v177);
    v202 = v177 + 31;
    *(a4 + 28) = v202;
    *a4 = ++v85;
    v193 |= v178 >> v202;
    if (v202)
    {
      v195 = v201;
    }

    else
    {
      v195 = 0;
    }

    if (v202)
    {
      v194 = v202;
    }

    else
    {
      v194 = 0;
    }
  }

  else
  {
    v195 = 2 * v178;
  }

  *v11 = v195;
  *(a2 + 64) = v193 != 0;
  if (v193)
  {
    if (v194 + 8 * (v84 - v85) <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v621 = "Cannot read blkData.channelLock.hasMaxDistance";
      goto LABEL_922;
    }

    v203 = v195 >> 31;
    *(a4 + 28) = v194 - 1;
    if (v194 - 1 < 0)
    {
      v204 = *(a4 + 8);
      if (((v84 - v85) & ~((v84 - v85) >> 63) & 0xFFFFFFFC) != 0 && v204 <= v85)
      {
        v195 = bswap32(*v85);
      }

      else
      {
        v205 = 4;
        v206 = v85;
        do
        {
          v207 = v195 << 8;
          *v11 = v207;
          v208 = 255;
          if (v206 < v84 && v206 >= v204)
          {
            v208 = *v206;
          }

          v195 = v208 | v207;
          *v11 = v195;
          v206 = (v206 + 1);
          --v205;
        }

        while (v205);
      }

      v209 = v195 << (1 - v194);
      v194 += 31;
      *(a4 + 28) = v194;
      *a4 = ++v85;
      v203 |= v195 >> v194;
      if (v194)
      {
        v195 = v209;
      }

      else
      {
        v195 = 0;
      }

      if (!v194)
      {
        v194 = 0;
      }
    }

    else
    {
      v195 *= 2;
      --v194;
    }

    *v11 = v195;
    *(a2 + 65) = v203 != 0;
    if (v203)
    {
      if (v194 + 8 * (v84 - v85) <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v621 = "Cannot read blkData.channelLock.maxDistance";
        goto LABEL_922;
      }

      *(a4 + 28) = v194 - 32;
      if (v194 - 32 < 0)
      {
        v211 = *(a4 + 8);
        if (((v84 - v85) & ~((v84 - v85) >> 63) & 0xFFFFFFFC) != 0 && v211 <= v85)
        {
          v212 = bswap32(*v85);
        }

        else
        {
          v213 = 4;
          v214 = v85;
          v212 = v195;
          do
          {
            v215 = v212 << 8;
            *v11 = v215;
            v216 = 255;
            if (v214 < v84 && v214 >= v211)
            {
              v216 = *v214;
            }

            v212 = v216 | v215;
            *v11 = v212;
            v214 = (v214 + 1);
            --v213;
          }

          while (v213);
        }

        *a4 = ++v85;
        v210 = (v212 >> v194) | v195;
        v195 = v212 << -v194;
        if (!v194)
        {
          v195 = 0;
        }

        *(a4 + 24) = v195;
        *(a4 + 28) = v194;
      }

      else
      {
        v194 -= 32;
        v210 = v195;
      }

      *(a2 + 68) = v210;
    }
  }

  if (v194 + 8 * (v84 - v85) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v621 = "Cannot read blkData.objectDivergence.hasData";
    goto LABEL_922;
  }

  v217 = v195 >> 31;
  v218 = v194 - 1;
  *(a4 + 28) = v194 - 1;
  if (v194 - 1 < 0)
  {
    v220 = *(a4 + 8);
    if (((v84 - v85) & ~((v84 - v85) >> 63) & 0xFFFFFFFC) != 0 && v220 <= v85)
    {
      v195 = bswap32(*v85);
    }

    else
    {
      v221 = 4;
      v222 = v85;
      do
      {
        v223 = v195 << 8;
        *v11 = v223;
        v224 = 255;
        if (v222 < v84 && v222 >= v220)
        {
          v224 = *v222;
        }

        v195 = v224 | v223;
        *v11 = v195;
        v222 = (v222 + 1);
        --v221;
      }

      while (v221);
    }

    v226 = v194 + 31;
    v225 = v194 == -31;
    *(a4 + 28) = v194 + 31;
    *a4 = ++v85;
    v217 |= v195 >> (v194 + 31);
    if (v194 == -31)
    {
      v219 = 0;
    }

    else
    {
      v219 = v195 << (1 - v194);
    }

    if (v225)
    {
      v218 = 0;
    }

    else
    {
      v218 = v226;
    }
  }

  else
  {
    v219 = 2 * v195;
  }

  *v11 = v219;
  *(a2 + 72) = v217 != 0;
  if (v217)
  {
    v227 = v84 - v85;
    if (v218 + 8 * (v84 - v85) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v621 = "Cannot read blkData.objectDivergence.objectDivergence";
      goto LABEL_922;
    }

    *(a4 + 28) = v218 - 32;
    if (v218 - 32 < 0)
    {
      v230 = v227 & ~(v227 >> 63);
      v231 = *(a4 + 8);
      if ((v230 & 0xFFFFFFFC) != 0 && v231 <= v85)
      {
        v232 = bswap32(*v85);
      }

      else
      {
        v233 = 4;
        v234 = v85;
        v232 = v219;
        do
        {
          v235 = v232 << 8;
          *v11 = v235;
          v236 = 255;
          if (v234 < v84 && v234 >= v231)
          {
            v236 = *v234;
          }

          v232 = v236 | v235;
          *v11 = v232;
          v234 = (v234 + 1);
          --v233;
        }

        while (v233);
      }

      *a4 = ++v85;
      v229 = (v232 >> v218) | v219;
      v219 = v232 << -v218;
      if (!v218)
      {
        v219 = 0;
      }

      *(a4 + 24) = v219;
      *(a4 + 28) = v218;
      v227 = v84 - v85;
      v228 = 8 * (v84 - v85);
    }

    else
    {
      v228 = 8 * v227;
      v218 -= 32;
      v229 = v219;
    }

    *(a2 + 76) = v229;
    if (v228 + v218 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v621 = "Cannot read blkData.objectDivergence.positionOrAzimuthRange";
      goto LABEL_922;
    }

    *(a4 + 28) = v218 - 32;
    if (v218 - 32 < 0)
    {
      v238 = v227 & ~(v227 >> 63);
      v239 = *(a4 + 8);
      if ((v238 & 0xFFFFFFFC) != 0 && v239 <= v85)
      {
        v240 = bswap32(*v85);
      }

      else
      {
        v241 = 4;
        v242 = v85;
        v240 = v219;
        do
        {
          v243 = v240 << 8;
          *v11 = v243;
          v244 = 255;
          if (v242 < v84 && v242 >= v239)
          {
            v244 = *v242;
          }

          v240 = v244 | v243;
          *v11 = v240;
          v242 = (v242 + 1);
          --v241;
        }

        while (v241);
      }

      *a4 = ++v85;
      v237 = (v240 >> v218) | v219;
      v219 = v240 << -v218;
      if (!v218)
      {
        v219 = 0;
      }

      *(a4 + 24) = v219;
      *(a4 + 28) = v218;
    }

    else
    {
      v218 -= 32;
      v237 = v219;
    }

    *(a2 + 88) = v237;
  }

  if (v218 + 8 * (v84 - v85) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v621 = "Cannot read blkData.screenRef";
    goto LABEL_922;
  }

  v245 = v219 >> 31;
  v246 = v218 - 1;
  *(a4 + 28) = v218 - 1;
  if (v218 - 1 < 0)
  {
    v249 = *(a4 + 8);
    v248 = *(a4 + 16);
    if (((v248 - v85) & ~((v248 - v85) >> 63) & 0xFFFFFFFC) != 0 && v249 <= v85)
    {
      v219 = bswap32(*v85);
    }

    else
    {
      v250 = 4;
      v251 = v85;
      do
      {
        v252 = v219 << 8;
        *v11 = v252;
        v253 = 255;
        if (v251 < v248 && v251 >= v249)
        {
          v253 = *v251;
        }

        v219 = v253 | v252;
        *v11 = v219;
        v251 = (v251 + 1);
        --v250;
      }

      while (v250);
    }

    v254 = v219 << (1 - v218);
    v255 = v218 + 31;
    *(a4 + 28) = v255;
    *a4 = ++v85;
    v245 |= v219 >> v255;
    if (v255)
    {
      v247 = v254;
    }

    else
    {
      v247 = 0;
    }

    if (v255)
    {
      v246 = v255;
    }

    else
    {
      v246 = 0;
    }
  }

  else
  {
    v247 = 2 * v219;
  }

  *v11 = v247;
  *(a2 + 92) = v245 != 0;
  v256 = a3 == 1 && HIBYTE(a3) == 1;
  v257 = v256;
  if (v256)
  {
    if (v246 + 8 * (v84 - v85) <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v621 = "Cannot read blkData.importance.hasData";
      goto LABEL_922;
    }

    v258 = v247 >> 31;
    *(a4 + 28) = v246 - 1;
    if (v246 - 1 < 0)
    {
      v259 = *(a4 + 8);
      if (((v84 - v85) & ~((v84 - v85) >> 63) & 0xFFFFFFFC) != 0 && v259 <= v85)
      {
        v247 = bswap32(*v85);
      }

      else
      {
        v260 = 4;
        v261 = v85;
        do
        {
          v262 = v247 << 8;
          *v11 = v262;
          v263 = 255;
          if (v261 < v84 && v261 >= v259)
          {
            v263 = *v261;
          }

          v247 = v263 | v262;
          *v11 = v247;
          v261 = (v261 + 1);
          --v260;
        }

        while (v260);
      }

      v264 = v247 << (1 - v246);
      v246 += 31;
      *(a4 + 28) = v246;
      *a4 = ++v85;
      v258 |= v247 >> v246;
      if (v246)
      {
        v247 = v264;
      }

      else
      {
        v247 = 0;
      }

      if (!v246)
      {
        v246 = 0;
      }
    }

    else
    {
      v247 *= 2;
      --v246;
    }

    *v11 = v247;
    *(a2 + 93) = v258 != 0;
    if (v258)
    {
      if (v246 + 8 * (v84 - v85) <= 3)
      {
        exception = __cxa_allocate_exception(8uLL);
        v621 = "Cannot read blkData.importance.importance";
        goto LABEL_922;
      }

      v265 = v247 >> 28;
      *(a4 + 28) = v246 - 4;
      if (v246 - 4 < 0)
      {
        v266 = *(a4 + 8);
        if (((v84 - v85) & ~((v84 - v85) >> 63) & 0xFFFFFFFC) != 0 && v266 <= v85)
        {
          v247 = bswap32(*v85);
        }

        else
        {
          v267 = 4;
          v268 = v85;
          do
          {
            v269 = v247 << 8;
            *v11 = v269;
            v270 = 255;
            if (v268 < v84 && v268 >= v266)
            {
              v270 = *v268;
            }

            v247 = v270 | v269;
            *v11 = v247;
            v268 = (v268 + 1);
            --v267;
          }

          while (v267);
        }

        v271 = v247 << (4 - v246);
        v246 += 28;
        *(a4 + 28) = v246;
        *a4 = ++v85;
        v265 |= v247 >> v246;
        if (v246)
        {
          v247 = v271;
        }

        else
        {
          v247 = 0;
        }

        if (!v246)
        {
          v246 = 0;
        }
      }

      else
      {
        v247 *= 16;
        v246 -= 4;
      }

      *v11 = v247;
      *(a2 + 94) = v265;
    }
  }

  if (v246 + 8 * (v84 - v85) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v621 = "Cannot read blkData.headLocked";
    goto LABEL_922;
  }

  v272 = v247 >> 31;
  v273 = v246 - 1;
  *(a4 + 28) = v246 - 1;
  if (v246 - 1 < 0)
  {
    v276 = *(a4 + 8);
    v275 = *(a4 + 16);
    if (((v275 - v85) & ~((v275 - v85) >> 63) & 0xFFFFFFFC) != 0 && v276 <= v85)
    {
      v247 = bswap32(*v85);
      *v11 = v247;
    }

    else
    {
      v277 = 4;
      v278 = v85;
      do
      {
        v279 = v247 << 8;
        *v11 = v279;
        v280 = 255;
        if (v278 < v275 && v278 >= v276)
        {
          v280 = *v278;
        }

        v247 = v280 | v279;
        *v11 = v247;
        v278 = (v278 + 1);
        --v277;
      }

      while (v277);
    }

    *a4 = ++v85;
    v273 = v246 + 31;
    *(a4 + 28) = v246 + 31;
    v272 |= v247 >> (v246 + 31);
    if (v246 == -31)
    {
      v274 = 0;
      *v11 = 0;
    }

    else
    {
      v274 = v247 << (1 - v246);
      *v11 = v274;
    }
  }

  else
  {
    v274 = 2 * v247;
    *(a4 + 24) = v274;
    v275 = *(a4 + 16);
  }

  *(a2 + 95) = v272 != 0;
  if (v273 + 8 * (v275 - v85) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v621 = "Cannot read blkData.headphoneVirtualize.hasData";
    goto LABEL_922;
  }

  v281 = v274 >> 31;
  v282 = v273 - 1;
  *(a4 + 28) = v273 - 1;
  if (v273 - 1 < 0)
  {
    v284 = *(a4 + 8);
    if (((v275 - v85) & ~((v275 - v85) >> 63) & 0xFFFFFFFC) != 0 && v284 <= v85)
    {
      v274 = bswap32(*v85);
    }

    else
    {
      v285 = 4;
      v286 = v85;
      do
      {
        v287 = v274 << 8;
        *v11 = v287;
        v288 = 255;
        if (v286 < v275 && v286 >= v284)
        {
          v288 = *v286;
        }

        v274 = v288 | v287;
        *v11 = v274;
        v286 = (v286 + 1);
        --v285;
      }

      while (v285);
    }

    v289 = v274 << (1 - v273);
    v290 = v273 + 31;
    *(a4 + 28) = v290;
    *a4 = ++v85;
    v281 |= v274 >> v290;
    if (v290)
    {
      v283 = v289;
    }

    else
    {
      v283 = 0;
    }

    if (v290)
    {
      v282 = v290;
    }

    else
    {
      v282 = 0;
    }
  }

  else
  {
    v283 = 2 * v274;
  }

  *v11 = v283;
  *(a2 + 96) = v281 != 0;
  if (v281)
  {
    if (v282 + 8 * (v275 - v85) <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v621 = "Cannot read blkData.headphoneVirtualize.bypass";
      goto LABEL_922;
    }

    v291 = v283 >> 31;
    *(a4 + 28) = v282 - 1;
    if (v282 - 1 < 0)
    {
      v292 = *(a4 + 8);
      if (((v275 - v85) & ~((v275 - v85) >> 63) & 0xFFFFFFFC) != 0 && v292 <= v85)
      {
        v283 = bswap32(*v85);
      }

      else
      {
        v293 = 4;
        v294 = v85;
        do
        {
          v295 = v283 << 8;
          *v11 = v295;
          v296 = 255;
          if (v294 < v275 && v294 >= v292)
          {
            v296 = *v294;
          }

          v283 = v296 | v295;
          *v11 = v283;
          v294 = (v294 + 1);
          --v293;
        }

        while (v293);
      }

      v297 = v283 << (1 - v282);
      v282 += 31;
      *(a4 + 28) = v282;
      *a4 = ++v85;
      v291 |= v283 >> v282;
      if (v282)
      {
        v283 = v297;
      }

      else
      {
        v283 = 0;
      }

      if (!v282)
      {
        v282 = 0;
      }
    }

    else
    {
      v283 *= 2;
      --v282;
    }

    *v11 = v283;
    *(a2 + 97) = v291 != 0;
    if (v282 + 8 * (v275 - v85) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v621 = "Cannot read blkData.headphoneVirtualize.DRR";
      goto LABEL_922;
    }

    *(a4 + 28) = v282 - 32;
    if (v282 - 32 < 0)
    {
      v299 = *(a4 + 8);
      if (((v275 - v85) & ~((v275 - v85) >> 63) & 0xFFFFFFFC) != 0 && v299 <= v85)
      {
        v300 = bswap32(*v85);
      }

      else
      {
        v301 = 4;
        v302 = v85;
        v300 = v283;
        do
        {
          v303 = v300 << 8;
          *v11 = v303;
          v304 = 255;
          if (v302 < v275 && v302 >= v299)
          {
            v304 = *v302;
          }

          v300 = v304 | v303;
          *v11 = v300;
          v302 = (v302 + 1);
          --v301;
        }

        while (v301);
      }

      *a4 = ++v85;
      v298 = (v300 >> v282) | v283;
      v283 = v300 << -v282;
      if (!v282)
      {
        v283 = 0;
      }

      *(a4 + 24) = v283;
      *(a4 + 28) = v282;
    }

    else
    {
      v282 -= 32;
      v298 = v283;
    }

    *(a2 + 100) = v298;
  }

  if (v257)
  {
    if (v282 + 8 * (v275 - v85) > 3)
    {
      v305 = v283 >> 28;
      *(a4 + 28) = v282 - 4;
      if (v282 - 4 < 0)
      {
        v310 = *(a4 + 8);
        if (((v275 - v85) & ~((v275 - v85) >> 63) & 0xFFFFFFFC) != 0 && v310 <= v85)
        {
          v283 = bswap32(*v85);
        }

        else
        {
          v311 = 4;
          v312 = v85;
          do
          {
            v313 = v283 << 8;
            *v11 = v313;
            v314 = 255;
            if (v312 < v275 && v312 >= v310)
            {
              v314 = *v312;
            }

            v283 = v314 | v313;
            *v11 = v283;
            v312 = (v312 + 1);
            --v311;
          }

          while (v311);
        }

        v306 = v283 << (4 - v282);
        *(a4 + 28) = v282 + 28;
        *a4 = v85 + 1;
        v305 |= v283 >> (v282 + 28);
        if (v282 == -28)
        {
          v306 = 0;
        }
      }

      else
      {
        v306 = 16 * v283;
      }

      *v11 = v306;
      *(a2 + 106) = v305;
      v315 = v305;
      if (v305)
      {
        v316 = 0;
        v317 = a2 + 140;
        v318 = *(a2 + 4);
        while (1)
        {
          v319 = *(a4 + 16);
          v320 = *a4;
          v321 = v319 - *a4;
          v322 = *(a4 + 28);
          v323 = v322 + 8 * v321;
          if (v318)
          {
            if (v323 <= 31)
            {
              goto LABEL_878;
            }

            v324 = *(a4 + 24);
            *(a4 + 28) = v322 - 32;
            if (v322 - 32 < 0)
            {
              v325 = v321 & ~(v321 >> 63) & 0xFFFFFFFC;
              v326 = *(a4 + 8);
              if (v325)
              {
                v327 = v326 > v320;
              }

              else
              {
                v327 = 1;
              }

              if (v327)
              {
                v328 = 4;
                v329 = v320;
                v340 = v324;
                do
                {
                  v330 = v340 << 8;
                  *v11 = v330;
                  v331 = 255;
                  if (v329 < v319 && v329 >= v326)
                  {
                    v331 = *v329;
                  }

                  v340 = v331 | v330;
                  *v11 = v340;
                  v329 = (v329 + 1);
                  --v328;
                }

                while (v328);
              }

              else
              {
                v340 = bswap32(*v320);
              }

              *a4 = v320 + 1;
              v324 |= v340 >> v322;
              v341 = v340 << -v322;
              if (!v322)
              {
                v341 = 0;
              }

              *(a4 + 24) = v341;
              *(a4 + 28) = v322;
            }

            v342 = (v317 + 24 * v316);
            *v342 = v324;
            v343 = *(a4 + 16);
            v344 = *a4;
            v345 = v343 - *a4;
            v346 = *(a4 + 28);
            if (v346 + 8 * v345 <= 31)
            {
              goto LABEL_882;
            }

            v347 = *(a4 + 24);
            *(a4 + 28) = v346 - 32;
            if (v346 - 32 < 0)
            {
              v348 = v345 & ~(v345 >> 63) & 0xFFFFFFFC;
              v349 = *(a4 + 8);
              if (v348)
              {
                v350 = v349 > v344;
              }

              else
              {
                v350 = 1;
              }

              if (v350)
              {
                v351 = 4;
                v352 = v344;
                v370 = v347;
                do
                {
                  v353 = v370 << 8;
                  *v11 = v353;
                  v354 = 255;
                  if (v352 < v343 && v352 >= v349)
                  {
                    v354 = *v352;
                  }

                  v370 = v354 | v353;
                  *v11 = v370;
                  v352 = (v352 + 1);
                  --v351;
                }

                while (v351);
              }

              else
              {
                v370 = bswap32(*v344);
              }

              *a4 = v344 + 1;
              v347 |= v370 >> v346;
              v371 = v370 << -v346;
              if (!v346)
              {
                v371 = 0;
              }

              *(a4 + 24) = v371;
              *(a4 + 28) = v346;
            }

            v342[1] = v347;
            v372 = *(a4 + 16);
            v373 = *a4;
            v374 = v372 - *a4;
            v375 = *(a4 + 28);
            if (v375 + 8 * v374 <= 31)
            {
              goto LABEL_877;
            }

            v376 = *(a4 + 24);
            *(a4 + 28) = v375 - 32;
            if (v375 - 32 < 0)
            {
              v377 = v374 & ~(v374 >> 63);
              v378 = *(a4 + 8);
              if ((v377 & 0xFFFFFFFC) != 0 && v378 <= v373)
              {
                v379 = bswap32(*v373);
              }

              else
              {
                v390 = 4;
                v391 = v373;
                v379 = v376;
                do
                {
                  v392 = v379 << 8;
                  *v11 = v392;
                  v393 = 255;
                  if (v391 < v372 && v391 >= v378)
                  {
                    v393 = *v391;
                  }

                  v379 = v393 | v392;
                  *v11 = v379;
                  v391 = (v391 + 1);
                  --v390;
                }

                while (v390);
              }

              *a4 = v373 + 1;
              v376 |= v379 >> v375;
              v394 = v379 << -v375;
              if (!v375)
              {
                v394 = 0;
              }

              *(a4 + 24) = v394;
              *(a4 + 28) = v375;
            }

            v342[2] = v376;
            v395 = *(a4 + 16);
            v396 = *a4;
            v397 = v395 - *a4;
            v398 = *(a4 + 28);
            if (v398 + 8 * v397 <= 31)
            {
              goto LABEL_881;
            }

            v399 = *(a4 + 24);
            *(a4 + 28) = v398 - 32;
            if (v398 - 32 < 0)
            {
              v400 = v397 & ~(v397 >> 63);
              v401 = *(a4 + 8);
              if ((v400 & 0xFFFFFFFC) != 0 && v401 <= v396)
              {
                v402 = bswap32(*v396);
              }

              else
              {
                v416 = 4;
                v417 = v396;
                v402 = v399;
                do
                {
                  v418 = v402 << 8;
                  *v11 = v418;
                  v419 = 255;
                  if (v417 < v395 && v417 >= v401)
                  {
                    v419 = *v417;
                  }

                  v402 = v419 | v418;
                  *v11 = v402;
                  v417 = (v417 + 1);
                  --v416;
                }

                while (v416);
              }

              *a4 = v396 + 1;
              v399 |= v402 >> v398;
              v420 = v402 << -v398;
              if (!v398)
              {
                v420 = 0;
              }

              *(a4 + 24) = v420;
              *(a4 + 28) = v398;
            }

            v342[3] = v399;
            v421 = *(a4 + 16);
            v422 = *a4;
            v423 = v421 - *a4;
            v424 = *(a4 + 28);
            if (v424 + 8 * v423 <= 31)
            {
              goto LABEL_876;
            }

            v425 = *(a4 + 24);
            *(a4 + 28) = v424 - 32;
            if (v424 - 32 < 0)
            {
              v426 = v423 & ~(v423 >> 63);
              v427 = *(a4 + 8);
              if ((v426 & 0xFFFFFFFC) != 0 && v427 <= v422)
              {
                v428 = bswap32(*v422);
              }

              else
              {
                v434 = 4;
                v435 = v422;
                v428 = v425;
                do
                {
                  v436 = v428 << 8;
                  *v11 = v436;
                  v437 = 255;
                  if (v435 < v421 && v435 >= v427)
                  {
                    v437 = *v435;
                  }

                  v428 = v437 | v436;
                  *v11 = v428;
                  v435 = (v435 + 1);
                  --v434;
                }

                while (v434);
              }

              *a4 = v422 + 1;
              v425 |= v428 >> v424;
              v438 = v428 << -v424;
              if (!v424)
              {
                v438 = 0;
              }

              *(a4 + 24) = v438;
              *(a4 + 28) = v424;
            }

            v342[4] = v425;
            v439 = *(a4 + 16);
            v440 = *a4;
            v441 = v439 - *a4;
            v442 = *(a4 + 28);
            if (v442 + 8 * v441 <= 31)
            {
              goto LABEL_880;
            }

            v443 = *(a4 + 24);
            *(a4 + 28) = v442 - 32;
            if (v442 - 32 < 0)
            {
              v444 = v441 & ~(v441 >> 63);
              v445 = *(a4 + 8);
              if ((v444 & 0xFFFFFFFC) != 0 && v445 <= v440)
              {
                v446 = bswap32(*v440);
              }

              else
              {
                v447 = 4;
                v448 = v440;
                v446 = v443;
                do
                {
                  v449 = v446 << 8;
                  *v11 = v449;
                  v450 = 255;
                  if (v448 < v439 && v448 >= v445)
                  {
                    v450 = *v448;
                  }

                  v446 = v450 | v449;
                  *v11 = v446;
                  v448 = (v448 + 1);
                  --v447;
                }

                while (v447);
              }

              *a4 = v440 + 1;
              v443 |= v446 >> v442;
              v451 = v446 << -v442;
              if (!v442)
              {
                v451 = 0;
              }

              *(a4 + 24) = v451;
              *(a4 + 28) = v442;
            }

            v342[5] = v443;
          }

          else
          {
            if (v323 <= 31)
            {
              goto LABEL_875;
            }

            v332 = *(a4 + 24);
            *(a4 + 28) = v322 - 32;
            if (v322 - 32 < 0)
            {
              v333 = v321 & ~(v321 >> 63) & 0xFFFFFFFC;
              v334 = *(a4 + 8);
              if (v333)
              {
                v335 = v334 > v320;
              }

              else
              {
                v335 = 1;
              }

              if (v335)
              {
                v336 = 4;
                v337 = v320;
                v355 = v332;
                do
                {
                  v338 = v355 << 8;
                  *v11 = v338;
                  v339 = 255;
                  if (v337 < v319 && v337 >= v334)
                  {
                    v339 = *v337;
                  }

                  v355 = v339 | v338;
                  *v11 = v355;
                  v337 = (v337 + 1);
                  --v336;
                }

                while (v336);
              }

              else
              {
                v355 = bswap32(*v320);
              }

              *a4 = v320 + 1;
              v332 |= v355 >> v322;
              v356 = v355 << -v322;
              if (!v322)
              {
                v356 = 0;
              }

              *(a4 + 24) = v356;
              *(a4 + 28) = v322;
            }

            v357 = (v317 + 24 * v316);
            *v357 = v332;
            v358 = *(a4 + 16);
            v359 = *a4;
            v360 = v358 - *a4;
            v361 = *(a4 + 28);
            if (v361 + 8 * v360 <= 31)
            {
              goto LABEL_884;
            }

            v362 = *(a4 + 24);
            *(a4 + 28) = v361 - 32;
            if (v361 - 32 < 0)
            {
              v363 = v360 & ~(v360 >> 63) & 0xFFFFFFFC;
              v364 = *(a4 + 8);
              if (v363)
              {
                v365 = v364 > v359;
              }

              else
              {
                v365 = 1;
              }

              if (v365)
              {
                v366 = 4;
                v367 = v359;
                v380 = v362;
                do
                {
                  v368 = v380 << 8;
                  *v11 = v368;
                  v369 = 255;
                  if (v367 < v358 && v367 >= v364)
                  {
                    v369 = *v367;
                  }

                  v380 = v369 | v368;
                  *v11 = v380;
                  v367 = (v367 + 1);
                  --v366;
                }

                while (v366);
              }

              else
              {
                v380 = bswap32(*v359);
              }

              *a4 = v359 + 1;
              v362 |= v380 >> v361;
              v381 = v380 << -v361;
              if (!v361)
              {
                v381 = 0;
              }

              *(a4 + 24) = v381;
              *(a4 + 28) = v361;
            }

            v357[1] = v362;
            v382 = *(a4 + 16);
            v383 = *a4;
            v384 = v382 - *a4;
            v385 = *(a4 + 28);
            if (v385 + 8 * v384 <= 31)
            {
              goto LABEL_879;
            }

            v386 = *(a4 + 24);
            *(a4 + 28) = v385 - 32;
            if (v385 - 32 < 0)
            {
              v387 = v384 & ~(v384 >> 63);
              v388 = *(a4 + 8);
              if ((v387 & 0xFFFFFFFC) != 0 && v388 <= v383)
              {
                v389 = bswap32(*v383);
              }

              else
              {
                v403 = 4;
                v404 = v383;
                v389 = v386;
                do
                {
                  v405 = v389 << 8;
                  *v11 = v405;
                  v406 = 255;
                  if (v404 < v382 && v404 >= v388)
                  {
                    v406 = *v404;
                  }

                  v389 = v406 | v405;
                  *v11 = v389;
                  v404 = (v404 + 1);
                  --v403;
                }

                while (v403);
              }

              *a4 = v383 + 1;
              v386 |= v389 >> v385;
              v407 = v389 << -v385;
              if (!v385)
              {
                v407 = 0;
              }

              *(a4 + 24) = v407;
              *(a4 + 28) = v385;
            }

            v357[2] = v386;
            v408 = *(a4 + 16);
            v409 = *a4;
            v410 = v408 - *a4;
            v411 = *(a4 + 28);
            if (v411 + 8 * v410 <= 31)
            {
              goto LABEL_883;
            }

            v412 = *(a4 + 24);
            *(a4 + 28) = v411 - 32;
            if (v411 - 32 < 0)
            {
              v413 = v410 & ~(v410 >> 63);
              v414 = *(a4 + 8);
              if ((v413 & 0xFFFFFFFC) != 0 && v414 <= v409)
              {
                v415 = bswap32(*v409);
              }

              else
              {
                v429 = 4;
                v430 = v409;
                v415 = v412;
                do
                {
                  v431 = v415 << 8;
                  *v11 = v431;
                  v432 = 255;
                  if (v430 < v408 && v430 >= v414)
                  {
                    v432 = *v430;
                  }

                  v415 = v432 | v431;
                  *v11 = v415;
                  v430 = (v430 + 1);
                  --v429;
                }

                while (v429);
              }

              *a4 = v409 + 1;
              v412 |= v415 >> v411;
              v433 = v415 << -v411;
              if (!v411)
              {
                v433 = 0;
              }

              *(a4 + 24) = v433;
              *(a4 + 28) = v411;
            }

            v357[3] = v412;
          }

          if (++v316 == v315)
          {
            return;
          }
        }
      }

      return;
    }

    goto LABEL_916;
  }

  if (a3 != 1 || HIBYTE(a3) != 2)
  {
    return;
  }

  if (v282 + 8 * (v275 - v85) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v621 = "Cannot read blkData.zoneExclusion.isZoneDefined";
    goto LABEL_922;
  }

  v307 = v283 >> 31;
  v308 = v282 - 1;
  *(a4 + 28) = v282 - 1;
  if (v282 - 1 < 0)
  {
    v452 = *(a4 + 8);
    if (((v275 - v85) & ~((v275 - v85) >> 63) & 0xFFFFFFFC) != 0 && v452 <= v85)
    {
      v283 = bswap32(*v85);
    }

    else
    {
      v453 = 4;
      v454 = v85;
      do
      {
        v455 = v283 << 8;
        *v11 = v455;
        v456 = 255;
        if (v454 < v275 && v454 >= v452)
        {
          v456 = *v454;
        }

        v283 = v456 | v455;
        *v11 = v283;
        v454 = (v454 + 1);
        --v453;
      }

      while (v453);
    }

    v309 = v283 << (1 - v282);
    v308 = v282 + 31;
    *(a4 + 28) = v282 + 31;
    *a4 = ++v85;
    v307 |= v283 >> (v282 + 31);
    if (v282 == -31)
    {
      v309 = 0;
      v308 = 0;
    }
  }

  else
  {
    v309 = 2 * v283;
  }

  *v11 = v309;
  *(a2 + 104) = v307 != 0;
  if (!v307)
  {
    return;
  }

  if (v308 + 8 * (v275 - v85) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v621 = "Cannot read blkData.zoneExclusion.keepPreviousZone";
LABEL_922:
    *exception = v621;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v457 = v309 >> 31;
  v458 = v308 - 1;
  *(a4 + 28) = v308 - 1;
  if (v308 - 1 < 0)
  {
    AT::TBitstreamReader<unsigned int>::FillCacheFrom(a4, v85);
    v85 = (*a4 + 4);
    *a4 = v85;
    v461 = *(a4 + 24);
    v460 = *(a4 + 28);
    v457 |= v461 >> v460;
    v458 = v460 + 32;
    *(a4 + 28) = v460 + 32;
    if (v460 == -32)
    {
      v459 = 0;
    }

    else
    {
      v459 = v461 << -v460;
    }
  }

  else
  {
    v459 = 2 * v309;
  }

  *v11 = v459;
  *(a2 + 105) = v457 != 0;
  if (v457)
  {
    return;
  }

  if (v458 + 8 * (*(a4 + 16) - v85) <= 3)
  {
LABEL_916:
    exception = __cxa_allocate_exception(8uLL);
    v621 = "Cannot read blkData.zoneExclusion.numZones";
    goto LABEL_922;
  }

  v462 = v459 >> 28;
  v463 = v458 - 4;
  *(a4 + 28) = v463;
  if (v463 < 0)
  {
    AT::TBitstreamReader<unsigned int>::FillCacheFrom(a4, v85);
    *a4 += 4;
    v466 = *(a4 + 24);
    v465 = *(a4 + 28);
    v462 |= v466 >> v465;
    *(a4 + 28) = v465 + 32;
    if (v465 == -32)
    {
      v464 = 0;
    }

    else
    {
      v464 = v466 << -v465;
    }
  }

  else
  {
    v464 = 16 * v459;
  }

  *v11 = v464;
  *(a2 + 106) = v462;
  if (v462)
  {
    v467 = 0;
    v468 = a2 + 107;
    v469 = a2 + 140;
    v470 = a2 + 122;
    v471 = *(a2 + 4);
    do
    {
      v472 = *(a4 + 16);
      v473 = *a4;
      v474 = v472 - *a4;
      v475 = *(a4 + 28);
      if (v475 + 8 * v474 <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v621 = "Cannot read blkData.zoneExclusion.usePreDefinedZone[w]";
        goto LABEL_922;
      }

      v476 = *(a4 + 24);
      v477 = v476 >> 31;
      v478 = v475 - 1;
      *(a4 + 28) = v475 - 1;
      if (v475 - 1 < 0)
      {
        v480 = *(a4 + 8);
        if ((v474 & ~(v474 >> 63) & 0xFFFFFFFC) == 0 || v480 > v473)
        {
          v482 = 4;
          v483 = v473;
          do
          {
            v484 = v476 << 8;
            *v11 = v484;
            v485 = 255;
            if (v483 < v472 && v483 >= v480)
            {
              v485 = *v483;
            }

            v476 = v485 | v484;
            *v11 = v476;
            v483 = (v483 + 1);
            --v482;
          }

          while (v482);
        }

        else
        {
          v476 = bswap32(*v473);
        }

        v487 = v475 + 31;
        v486 = v475 == -31;
        *(a4 + 28) = v475 + 31;
        *a4 = ++v473;
        v477 |= v476 >> (v475 + 31);
        if (v475 == -31)
        {
          v479 = 0;
        }

        else
        {
          v479 = v476 << (1 - v475);
        }

        if (v486)
        {
          v478 = 0;
        }

        else
        {
          v478 = v487;
        }
      }

      else
      {
        v479 = 2 * v476;
      }

      *v11 = v479;
      *(v468 + v467) = v477 != 0;
      v488 = v472 - v473;
      v489 = v478 + 8 * (v472 - v473);
      if (v477)
      {
        if (v489 <= 3)
        {
          exception = __cxa_allocate_exception(8uLL);
          v621 = "Cannot read blkData.zoneExclusion.zoneIndex[w]";
          goto LABEL_922;
        }

        v490 = v479 >> 28;
        *(a4 + 28) = v478 - 4;
        if (v478 - 4 < 0)
        {
          v494 = v488 & ~(v488 >> 63);
          v495 = *(a4 + 8);
          if ((v494 & 0xFFFFFFFC) != 0 && v495 <= v473)
          {
            v479 = bswap32(*v473);
          }

          else
          {
            v498 = 4;
            v499 = v473;
            do
            {
              v500 = v479 << 8;
              *v11 = v500;
              v501 = 255;
              if (v499 < v472 && v499 >= v495)
              {
                v501 = *v499;
              }

              v479 = v501 | v500;
              *v11 = v479;
              v499 = (v499 + 1);
              --v498;
            }

            while (v498);
          }

          v502 = v479 << (4 - v478);
          v503 = v478 + 28;
          *(a4 + 28) = v503;
          *a4 = v473 + 1;
          v490 |= v479 >> v503;
          if (v503)
          {
            v491 = v502;
          }

          else
          {
            v491 = 0;
          }
        }

        else
        {
          v491 = 16 * v479;
        }

        *v11 = v491;
        *(v470 + v467) = v490;
      }

      else if (v471)
      {
        if (v489 <= 31)
        {
LABEL_878:
          exception = __cxa_allocate_exception(8uLL);
          v621 = "Cannot read blkData.zoneExclusion.zone[w].co_tu.cartesian.minX";
          goto LABEL_922;
        }

        *(a4 + 28) = v478 - 32;
        if (v478 - 32 < 0)
        {
          v492 = *(a4 + 8);
          if ((v488 & ~(v488 >> 63) & 0xFFFFFFFC) != 0 && v492 <= v473)
          {
            v493 = bswap32(*v473);
          }

          else
          {
            v504 = 4;
            v505 = v473;
            v493 = v479;
            do
            {
              v506 = v493 << 8;
              *v11 = v506;
              v507 = 255;
              if (v505 < v472 && v505 >= v492)
              {
                v507 = *v505;
              }

              v493 = v507 | v506;
              *v11 = v493;
              v505 = (v505 + 1);
              --v504;
            }

            while (v504);
          }

          *a4 = v473 + 1;
          v479 |= v493 >> v478;
          v508 = v493 << -v478;
          if (!v478)
          {
            v508 = 0;
          }

          *(a4 + 24) = v508;
          *(a4 + 28) = v478;
        }

        v509 = (v469 + 24 * v467);
        *v509 = v479;
        v510 = *(a4 + 16);
        v511 = *a4;
        v512 = v510 - *a4;
        v513 = *(a4 + 28);
        if (v513 + 8 * v512 <= 31)
        {
LABEL_882:
          exception = __cxa_allocate_exception(8uLL);
          v621 = "Cannot read blkData.zoneExclusion.zone[w].co_tu.cartesian.maxX";
          goto LABEL_922;
        }

        v514 = *(a4 + 24);
        *(a4 + 28) = v513 - 32;
        if (v513 - 32 < 0)
        {
          v515 = v512 & ~(v512 >> 63);
          v516 = *(a4 + 8);
          if ((v515 & 0xFFFFFFFC) != 0 && v516 <= v511)
          {
            v517 = bswap32(*v511);
          }

          else
          {
            v532 = 4;
            v533 = v511;
            v517 = v514;
            do
            {
              v534 = v517 << 8;
              *v11 = v534;
              v535 = 255;
              if (v533 < v510 && v533 >= v516)
              {
                v535 = *v533;
              }

              v517 = v535 | v534;
              *v11 = v517;
              v533 = (v533 + 1);
              --v532;
            }

            while (v532);
          }

          *a4 = v511 + 1;
          v514 |= v517 >> v513;
          v536 = v517 << -v513;
          if (!v513)
          {
            v536 = 0;
          }

          *(a4 + 24) = v536;
          *(a4 + 28) = v513;
        }

        v509[1] = v514;
        v537 = *(a4 + 16);
        v538 = *a4;
        v539 = v537 - *a4;
        v540 = *(a4 + 28);
        if (v540 + 8 * v539 <= 31)
        {
LABEL_877:
          exception = __cxa_allocate_exception(8uLL);
          v621 = "Cannot read blkData.zoneExclusion.zone[w].co_tu.cartesian.minY";
          goto LABEL_922;
        }

        v541 = *(a4 + 24);
        *(a4 + 28) = v540 - 32;
        if (v540 - 32 < 0)
        {
          v542 = v539 & ~(v539 >> 63);
          v543 = *(a4 + 8);
          if ((v542 & 0xFFFFFFFC) != 0 && v543 <= v538)
          {
            v544 = bswap32(*v538);
          }

          else
          {
            v558 = 4;
            v559 = v538;
            v544 = v541;
            do
            {
              v560 = v544 << 8;
              *v11 = v560;
              v561 = 255;
              if (v559 < v537 && v559 >= v543)
              {
                v561 = *v559;
              }

              v544 = v561 | v560;
              *v11 = v544;
              v559 = (v559 + 1);
              --v558;
            }

            while (v558);
          }

          *a4 = v538 + 1;
          v541 |= v544 >> v540;
          v562 = v544 << -v540;
          if (!v540)
          {
            v562 = 0;
          }

          *(a4 + 24) = v562;
          *(a4 + 28) = v540;
        }

        v509[2] = v541;
        v563 = *(a4 + 16);
        v564 = *a4;
        v565 = v563 - *a4;
        v566 = *(a4 + 28);
        if (v566 + 8 * v565 <= 31)
        {
LABEL_881:
          exception = __cxa_allocate_exception(8uLL);
          v621 = "Cannot read blkData.zoneExclusion.zone[w].co_tu.cartesian.maxY";
          goto LABEL_922;
        }

        v567 = *(a4 + 24);
        *(a4 + 28) = v566 - 32;
        if (v566 - 32 < 0)
        {
          v568 = v565 & ~(v565 >> 63);
          v569 = *(a4 + 8);
          if ((v568 & 0xFFFFFFFC) != 0 && v569 <= v564)
          {
            v570 = bswap32(*v564);
          }

          else
          {
            v584 = 4;
            v585 = v564;
            v570 = v567;
            do
            {
              v586 = v570 << 8;
              *v11 = v586;
              v587 = 255;
              if (v585 < v563 && v585 >= v569)
              {
                v587 = *v585;
              }

              v570 = v587 | v586;
              *v11 = v570;
              v585 = (v585 + 1);
              --v584;
            }

            while (v584);
          }

          *a4 = v564 + 1;
          v567 |= v570 >> v566;
          v588 = v570 << -v566;
          if (!v566)
          {
            v588 = 0;
          }

          *(a4 + 24) = v588;
          *(a4 + 28) = v566;
        }

        v509[3] = v567;
        v589 = *(a4 + 16);
        v590 = *a4;
        v591 = v589 - *a4;
        v592 = *(a4 + 28);
        if (v592 + 8 * v591 <= 31)
        {
LABEL_876:
          exception = __cxa_allocate_exception(8uLL);
          v621 = "Cannot read blkData.zoneExclusion.zone[w].co_tu.cartesian.minZ";
          goto LABEL_922;
        }

        v593 = *(a4 + 24);
        *(a4 + 28) = v592 - 32;
        if (v592 - 32 < 0)
        {
          v594 = v591 & ~(v591 >> 63);
          v595 = *(a4 + 8);
          if ((v594 & 0xFFFFFFFC) != 0 && v595 <= v590)
          {
            v596 = bswap32(*v590);
          }

          else
          {
            v602 = 4;
            v603 = v590;
            v596 = v593;
            do
            {
              v604 = v596 << 8;
              *v11 = v604;
              v605 = 255;
              if (v603 < v589 && v603 >= v595)
              {
                v605 = *v603;
              }

              v596 = v605 | v604;
              *v11 = v596;
              v603 = (v603 + 1);
              --v602;
            }

            while (v602);
          }

          *a4 = v590 + 1;
          v593 |= v596 >> v592;
          v606 = v596 << -v592;
          if (!v592)
          {
            v606 = 0;
          }

          *(a4 + 24) = v606;
          *(a4 + 28) = v592;
        }

        v509[4] = v593;
        v607 = *(a4 + 16);
        v608 = *a4;
        v609 = v607 - *a4;
        v610 = *(a4 + 28);
        if (v610 + 8 * v609 <= 31)
        {
LABEL_880:
          exception = __cxa_allocate_exception(8uLL);
          v621 = "Cannot read blkData.zoneExclusion.zone[w].co_tu.cartesian.maxZ";
          goto LABEL_922;
        }

        v611 = *(a4 + 24);
        *(a4 + 28) = v610 - 32;
        if (v610 - 32 < 0)
        {
          v612 = v609 & ~(v609 >> 63);
          v613 = *(a4 + 8);
          if ((v612 & 0xFFFFFFFC) != 0 && v613 <= v608)
          {
            v614 = bswap32(*v608);
          }

          else
          {
            v615 = 4;
            v616 = v608;
            v614 = v611;
            do
            {
              v617 = v614 << 8;
              *v11 = v617;
              v618 = 255;
              if (v616 < v607 && v616 >= v613)
              {
                v618 = *v616;
              }

              v614 = v618 | v617;
              *v11 = v614;
              v616 = (v616 + 1);
              --v615;
            }

            while (v615);
          }

          *a4 = v608 + 1;
          v611 |= v614 >> v610;
          v619 = v614 << -v610;
          if (!v610)
          {
            v619 = 0;
          }

          *(a4 + 24) = v619;
          *(a4 + 28) = v610;
        }

        v509[5] = v611;
      }

      else
      {
        if (v489 <= 31)
        {
LABEL_875:
          exception = __cxa_allocate_exception(8uLL);
          v621 = "Cannot read blkData.zoneExclusion.zone[w].co_tu.spherical.minAzimuth";
          goto LABEL_922;
        }

        *(a4 + 28) = v478 - 32;
        if (v478 - 32 < 0)
        {
          v496 = *(a4 + 8);
          if ((v488 & ~(v488 >> 63) & 0xFFFFFFFC) != 0 && v496 <= v473)
          {
            v497 = bswap32(*v473);
          }

          else
          {
            v518 = 4;
            v519 = v473;
            v497 = v479;
            do
            {
              v520 = v497 << 8;
              *v11 = v520;
              v521 = 255;
              if (v519 < v472 && v519 >= v496)
              {
                v521 = *v519;
              }

              v497 = v521 | v520;
              *v11 = v497;
              v519 = (v519 + 1);
              --v518;
            }

            while (v518);
          }

          *a4 = v473 + 1;
          v479 |= v497 >> v478;
          v522 = v497 << -v478;
          if (!v478)
          {
            v522 = 0;
          }

          *(a4 + 24) = v522;
          *(a4 + 28) = v478;
        }

        v523 = (v469 + 24 * v467);
        *v523 = v479;
        v524 = *(a4 + 16);
        v525 = *a4;
        v526 = v524 - *a4;
        v527 = *(a4 + 28);
        if (v527 + 8 * v526 <= 31)
        {
LABEL_884:
          exception = __cxa_allocate_exception(8uLL);
          v621 = "Cannot read blkData.zoneExclusion.zone[w].co_tu.spherical.maxAzimuth";
          goto LABEL_922;
        }

        v528 = *(a4 + 24);
        *(a4 + 28) = v527 - 32;
        if (v527 - 32 < 0)
        {
          v529 = v526 & ~(v526 >> 63);
          v530 = *(a4 + 8);
          if ((v529 & 0xFFFFFFFC) != 0 && v530 <= v525)
          {
            v531 = bswap32(*v525);
          }

          else
          {
            v545 = 4;
            v546 = v525;
            v531 = v528;
            do
            {
              v547 = v531 << 8;
              *v11 = v547;
              v548 = 255;
              if (v546 < v524 && v546 >= v530)
              {
                v548 = *v546;
              }

              v531 = v548 | v547;
              *v11 = v531;
              v546 = (v546 + 1);
              --v545;
            }

            while (v545);
          }

          *a4 = v525 + 1;
          v528 |= v531 >> v527;
          v549 = v531 << -v527;
          if (!v527)
          {
            v549 = 0;
          }

          *(a4 + 24) = v549;
          *(a4 + 28) = v527;
        }

        v523[1] = v528;
        v550 = *(a4 + 16);
        v551 = *a4;
        v552 = v550 - *a4;
        v553 = *(a4 + 28);
        if (v553 + 8 * v552 <= 31)
        {
LABEL_879:
          exception = __cxa_allocate_exception(8uLL);
          v621 = "Cannot read blkData.zoneExclusion.zone[w].co_tu.spherical.minElevation";
          goto LABEL_922;
        }

        v554 = *(a4 + 24);
        *(a4 + 28) = v553 - 32;
        if (v553 - 32 < 0)
        {
          v555 = v552 & ~(v552 >> 63);
          v556 = *(a4 + 8);
          if ((v555 & 0xFFFFFFFC) != 0 && v556 <= v551)
          {
            v557 = bswap32(*v551);
          }

          else
          {
            v571 = 4;
            v572 = v551;
            v557 = v554;
            do
            {
              v573 = v557 << 8;
              *v11 = v573;
              v574 = 255;
              if (v572 < v550 && v572 >= v556)
              {
                v574 = *v572;
              }

              v557 = v574 | v573;
              *v11 = v557;
              v572 = (v572 + 1);
              --v571;
            }

            while (v571);
          }

          *a4 = v551 + 1;
          v554 |= v557 >> v553;
          v575 = v557 << -v553;
          if (!v553)
          {
            v575 = 0;
          }

          *(a4 + 24) = v575;
          *(a4 + 28) = v553;
        }

        v523[2] = v554;
        v576 = *(a4 + 16);
        v577 = *a4;
        v578 = v576 - *a4;
        v579 = *(a4 + 28);
        if (v579 + 8 * v578 <= 31)
        {
LABEL_883:
          exception = __cxa_allocate_exception(8uLL);
          v621 = "Cannot read blkData.zoneExclusion.zone[w].co_tu.spherical.maxElevation";
          goto LABEL_922;
        }

        v580 = *(a4 + 24);
        *(a4 + 28) = v579 - 32;
        if (v579 - 32 < 0)
        {
          v581 = v578 & ~(v578 >> 63);
          v582 = *(a4 + 8);
          if ((v581 & 0xFFFFFFFC) != 0 && v582 <= v577)
          {
            v583 = bswap32(*v577);
          }

          else
          {
            v597 = 4;
            v598 = v577;
            v583 = v580;
            do
            {
              v599 = v583 << 8;
              *v11 = v599;
              v600 = 255;
              if (v598 < v576 && v598 >= v582)
              {
                v600 = *v598;
              }

              v583 = v600 | v599;
              *v11 = v583;
              v598 = (v598 + 1);
              --v597;
            }

            while (v597);
          }

          *a4 = v577 + 1;
          v580 |= v583 >> v579;
          v601 = v583 << -v579;
          if (!v579)
          {
            v601 = 0;
          }

          *(a4 + 24) = v601;
          *(a4 + 28) = v579;
        }

        v523[3] = v580;
      }

      ++v467;
    }

    while (v467 != v462);
  }
}

void APAC::MetadataBitStreamParser::parseDynamicGroup(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v68 = "Cannot read dG.groupID";
    goto LABEL_115;
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
    v68 = "Cannot read dG.isGlobal";
    goto LABEL_115;
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
      v68 = "Cannot read dG.memberCount";
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
        v68 = "Cannot read dG.hasConjunctMembers";
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
              v60 = *(a3 + 8);
              if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v60 <= v4)
              {
                v41 = bswap32(*v4);
              }

              else
              {
                v61 = 4;
                v62 = v4;
                do
                {
                  v63 = v41 << 8;
                  *(a3 + 24) = v63;
                  v64 = 255;
                  if (v62 < v3 && v62 >= v60)
                  {
                    v64 = *v62;
                  }

                  v41 = v64 | v63;
                  *(a3 + 24) = v41;
                  v62 = (v62 + 1);
                  --v61;
                }

                while (v61);
              }

              v65 = v41 << (7 - v40);
              v66 = v40 + 25;
              *(a3 + 28) = v66;
              *a3 = v4 + 1;
              v49 |= v41 >> v66;
              if (v66)
              {
                v50 = v65;
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
            return;
          }

          exception = __cxa_allocate_exception(8uLL);
          v68 = "Cannot read dG.startASCID";
        }

        else
        {
          if (!v29)
          {
            return;
          }

          v51 = 0;
          v52 = *(a3 + 8);
          v53 = a2 + 5;
          while (v40 + 8 * (v3 - v4) > 6)
          {
            v54 = v41 >> 25;
            *(a3 + 28) = v40 - 7;
            if (v40 - 7 < 0)
            {
              if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v52 <= v4)
              {
                v41 = bswap32(*v4);
              }

              else
              {
                v55 = 4;
                v56 = v4;
                do
                {
                  v57 = v41 << 8;
                  *(a3 + 24) = v57;
                  v58 = 255;
                  if (v56 < v3 && v56 >= v52)
                  {
                    v58 = *v56;
                  }

                  v41 = v58 | v57;
                  *(a3 + 24) = v41;
                  v56 = (v56 + 1);
                  --v55;
                }

                while (v55);
              }

              v59 = v41 << (7 - v40);
              v40 += 25;
              *(a3 + 28) = v40;
              *a3 = ++v4;
              v54 |= v41 >> v40;
              if (v40)
              {
                v41 = v59;
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
            v53[v51++] = v54;
            if (v51 == v29)
            {
              return;
            }
          }

          exception = __cxa_allocate_exception(8uLL);
          v68 = "Cannot read dG.ASCIDList[n]";
        }
      }
    }

LABEL_115:
    *exception = v68;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }
}

void APAC::MetadataBitStreamParser::parseReferenceScreen(uint64_t a1, BOOL *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v33 = "Cannot read refScreen.hasData";
    goto LABEL_41;
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

    v20 = v6 + 31;
    v19 = v6 == -31;
    *(a3 + 28) = v6 + 31;
    *a3 = ++v4;
    v10 |= v9 >> (v6 + 31);
    if (v6 == -31)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 << (1 - v6);
    }

    if (v19)
    {
      v11 = 0;
    }

    else
    {
      v11 = v20;
    }
  }

  else
  {
    v12 = 2 * v9;
  }

  *(a3 + 24) = v12;
  *a2 = v10 != 0;
  if (v10)
  {
    if (v11 + 8 * (v3 - v4) > 3)
    {
      v21 = v12 >> 28;
      *(a3 + 28) = v11 - 4;
      if (v11 - 4 < 0)
      {
        v23 = *(a3 + 8);
        if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v23 <= v4)
        {
          v12 = bswap32(*v4);
        }

        else
        {
          v24 = 4;
          v25 = v4;
          do
          {
            v26 = v12 << 8;
            *(a3 + 24) = v26;
            v27 = 255;
            if (v25 < v3 && v25 >= v23)
            {
              v27 = *v25;
            }

            v12 = v27 | v26;
            *(a3 + 24) = v12;
            v25 = (v25 + 1);
            --v24;
          }

          while (v24);
        }

        v28 = v12 << (4 - v11);
        v29 = v11 + 28;
        *(a3 + 28) = v29;
        *a3 = v4 + 1;
        v21 |= v12 >> v29;
        if (v29)
        {
          v22 = v28;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 16 * v12;
      }

      *(a3 + 24) = v22;
      a2[1] = v21;
      if (v21)
      {
        v30 = 0;
        v31 = (a2 + 4);
        do
        {
          APAC::MetadataBitStreamParser::parseScreenData(a1, v31, a3);
          ++v30;
          v31 += 28;
        }

        while (v30 < a2[1]);
      }

      return;
    }

    exception = __cxa_allocate_exception(8uLL);
    v33 = "Cannot read refScreen.APCount";
LABEL_41:
    *exception = v33;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }
}

void APAC::MetadataBitStreamParser::parseCodeBookData(uint64_t a1, BOOL *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Cannot read cbD.hasData";
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
  *a2 = v8 != 0;
}

void APAC::MetadataBitStreamParser::parseGroupStaticData(uint64_t a1, BOOL *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v33 = "Cannot read grpSD.hasData";
    goto LABEL_41;
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

    v20 = v6 + 31;
    v19 = v6 == -31;
    *(a3 + 28) = v6 + 31;
    *a3 = ++v4;
    v10 |= v9 >> (v6 + 31);
    if (v6 == -31)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 << (1 - v6);
    }

    if (v19)
    {
      v11 = 0;
    }

    else
    {
      v11 = v20;
    }
  }

  else
  {
    v12 = 2 * v9;
  }

  *(a3 + 24) = v12;
  *a2 = v10 != 0;
  if (v10)
  {
    if (v11 + 8 * (v3 - v4) > 6)
    {
      v21 = v12 >> 25;
      *(a3 + 28) = v11 - 7;
      if (v11 - 7 < 0)
      {
        v23 = *(a3 + 8);
        if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v23 <= v4)
        {
          v12 = bswap32(*v4);
        }

        else
        {
          v24 = 4;
          v25 = v4;
          do
          {
            v26 = v12 << 8;
            *(a3 + 24) = v26;
            v27 = 255;
            if (v25 < v3 && v25 >= v23)
            {
              v27 = *v25;
            }

            v12 = v27 | v26;
            *(a3 + 24) = v12;
            v25 = (v25 + 1);
            --v24;
          }

          while (v24);
        }

        v28 = v12 << (7 - v11);
        v29 = v11 + 25;
        *(a3 + 28) = v29;
        *a3 = v4 + 1;
        v21 |= v12 >> v29;
        if (v29)
        {
          v22 = v28;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = v12 << 7;
      }

      *(a3 + 24) = v22;
      a2[1] = v21;
      if (v21)
      {
        v30 = 0;
        v31 = a2 + 4;
        do
        {
          APAC::MetadataBitStreamParser::parseStaticGroup(a1, v31, a3);
          ++v30;
          v31 += 216;
        }

        while (v30 < a2[1]);
      }

      return;
    }

    exception = __cxa_allocate_exception(8uLL);
    v33 = "Cannot read grpSD.groupCount";
LABEL_41:
    *exception = v33;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }
}

void APAC::MetadataBitStreamParser::parseSceneComponenentStaticData(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Cannot read scSD.ASCCount";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v9 = *(a3 + 24);
  v10 = v9 >> 25;
  *(a3 + 28) = v6 - 7;
  if (v6 - 7 < 0)
  {
    v12 = v5 & ~(v5 >> 63) & 0xFFFFFFFC;
    v13 = *(a3 + 8);
    if (v12)
    {
      v14 = v13 > v4;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
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

    v19 = v9 << (7 - v6);
    v20 = v6 + 25;
    *(a3 + 28) = v20;
    *a3 = v4 + 1;
    v10 |= v9 >> v20;
    if (v20)
    {
      v11 = v19;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = v9 << 7;
  }

  *(a3 + 24) = v11;
  *a2 = v10;
  if (v10)
  {
    v21 = 0;
    v22 = (a2 + 4);
    do
    {
      APAC::MetadataBitStreamParser::parseASCStaticData(a1, v22, a3);
      ++v21;
      v22 += 1144;
    }

    while (v21 < *a2);
  }
}

void APAC::MetadataBitStreamParser::parseASCStaticData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v129 = "Cannot read sD.sceneComponentID";
    goto LABEL_215;
  }

  v9 = *(a3 + 24);
  v10 = v9 >> 25;
  v11 = v6 - 7;
  *(a3 + 28) = v6 - 7;
  if (v6 - 7 < 0)
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

    v19 = v9 << (7 - v6);
    v20 = v6 + 25;
    *(a3 + 28) = v20;
    *a3 = ++v4;
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
    v12 = v9 << 7;
  }

  *(a3 + 24) = v12;
  *a2 = v10;
  if (v11 + 8 * (v3 - v4) <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v129 = "Cannot read sD.sceneComponentType";
    goto LABEL_215;
  }

  v21 = v12 >> 30;
  v22 = v11 - 2;
  *(a3 + 28) = v11 - 2;
  if (v11 - 2 < 0)
  {
    v24 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v24 <= v4)
    {
      v12 = bswap32(*v4);
    }

    else
    {
      v25 = 4;
      v26 = v4;
      do
      {
        v27 = v12 << 8;
        *(a3 + 24) = v27;
        v28 = 255;
        if (v26 < v3 && v26 >= v24)
        {
          v28 = *v26;
        }

        v12 = v28 | v27;
        *(a3 + 24) = v12;
        v26 = (v26 + 1);
        --v25;
      }

      while (v25);
    }

    v29 = v12 << (2 - v11);
    v30 = v11 + 30;
    *(a3 + 28) = v30;
    *a3 = ++v4;
    v21 |= v12 >> v30;
    if (v30)
    {
      v23 = v29;
    }

    else
    {
      v23 = 0;
    }

    if (v30)
    {
      v22 = v30;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v23 = 4 * v12;
  }

  *(a3 + 24) = v23;
  *(a2 + 1) = v21;
  if (v22 + 8 * (v3 - v4) <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v129 = "Cannot read sD.startChannelIndex";
    goto LABEL_215;
  }

  v31 = v23 >> 25;
  v32 = v22 - 7;
  *(a3 + 28) = v22 - 7;
  if (v22 - 7 < 0)
  {
    v34 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v34 <= v4)
    {
      v23 = bswap32(*v4);
    }

    else
    {
      v35 = 4;
      v36 = v4;
      do
      {
        v37 = v23 << 8;
        *(a3 + 24) = v37;
        v38 = 255;
        if (v36 < v3 && v36 >= v34)
        {
          v38 = *v36;
        }

        v23 = v38 | v37;
        *(a3 + 24) = v23;
        v36 = (v36 + 1);
        --v35;
      }

      while (v35);
    }

    v39 = v23 << (7 - v22);
    v40 = v22 + 25;
    *(a3 + 28) = v40;
    *a3 = ++v4;
    v31 |= v23 >> v40;
    if (v40)
    {
      v33 = v39;
    }

    else
    {
      v33 = 0;
    }

    if (v40)
    {
      v32 = v40;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v33 = v23 << 7;
  }

  *(a3 + 24) = v33;
  *(a2 + 2) = v31;
  if (v32 + 8 * (v3 - v4) <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v129 = "Cannot read sD.rendererSubType";
    goto LABEL_215;
  }

  v41 = v33 >> 29;
  v42 = v32 - 3;
  *(a3 + 28) = v32 - 3;
  if (v32 - 3 < 0)
  {
    v44 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v44 <= v4)
    {
      v33 = bswap32(*v4);
    }

    else
    {
      v45 = 4;
      v46 = v4;
      do
      {
        v47 = v33 << 8;
        *(a3 + 24) = v47;
        v48 = 255;
        if (v46 < v3 && v46 >= v44)
        {
          v48 = *v46;
        }

        v33 = v48 | v47;
        *(a3 + 24) = v33;
        v46 = (v46 + 1);
        --v45;
      }

      while (v45);
    }

    v49 = v33 << (3 - v32);
    v50 = v32 + 29;
    *(a3 + 28) = v50;
    *a3 = ++v4;
    v41 |= v33 >> v50;
    if (v50)
    {
      v43 = v49;
    }

    else
    {
      v43 = 0;
    }

    if (v50)
    {
      v42 = v50;
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v43 = 8 * v33;
  }

  *(a3 + 24) = v43;
  *(a2 + 3) = v41;
  if (v42 + 8 * (v3 - v4) <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v129 = "Cannot read sD.rendererVersion";
    goto LABEL_215;
  }

  v51 = HIBYTE(v43);
  v52 = v42 - 8;
  *(a3 + 28) = v42 - 8;
  if (v42 - 8 < 0)
  {
    v54 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v54 <= v4)
    {
      v43 = bswap32(*v4);
    }

    else
    {
      v55 = 4;
      v56 = v4;
      do
      {
        v57 = v43 << 8;
        *(a3 + 24) = v57;
        v58 = 255;
        if (v56 < v3 && v56 >= v54)
        {
          v58 = *v56;
        }

        v43 = v58 | v57;
        *(a3 + 24) = v43;
        v56 = (v56 + 1);
        --v55;
      }

      while (v55);
    }

    v60 = v42 + 24;
    v59 = v42 == -24;
    *(a3 + 28) = v42 + 24;
    *a3 = ++v4;
    v51 |= v43 >> (v42 + 24);
    if (v42 == -24)
    {
      v53 = 0;
    }

    else
    {
      v53 = v43 << (8 - v42);
    }

    if (v59)
    {
      v52 = 0;
    }

    else
    {
      v52 = v60;
    }
  }

  else
  {
    v53 = v43 << 8;
  }

  *(a3 + 24) = v53;
  *(a2 + 4) = v51;
  v61 = v3 - v4;
  if (v52 + 8 * (v3 - v4) <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v129 = "Cannot read sD.channelLayoutTag";
    goto LABEL_215;
  }

  *(a3 + 28) = v52 - 32;
  if (v52 - 32 < 0)
  {
    v64 = *(a3 + 8);
    if ((v61 & ~(v61 >> 63) & 0xFFFFFFFC) != 0 && v64 <= v4)
    {
      v65 = bswap32(*v4);
    }

    else
    {
      v66 = 4;
      v67 = v4;
      v65 = v53;
      do
      {
        v68 = v65 << 8;
        *(a3 + 24) = v68;
        v69 = 255;
        if (v67 < v3 && v67 >= v64)
        {
          v69 = *v67;
        }

        v65 = v69 | v68;
        *(a3 + 24) = v65;
        v67 = (v67 + 1);
        --v66;
      }

      while (v66);
    }

    *a3 = ++v4;
    v63 = (v65 >> v52) | v53;
    v53 = v65 << -v52;
    if (!v52)
    {
      v53 = 0;
    }

    *(a3 + 24) = v53;
    *(a3 + 28) = v52;
    v61 = v3 - v4;
    v62 = 8 * (v3 - v4);
  }

  else
  {
    v62 = 8 * v61;
    v52 -= 32;
    v63 = v53;
  }

  *(a2 + 8) = v63;
  if (v62 + v52 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v129 = "Cannot read sD.HOAOrder";
    goto LABEL_215;
  }

  v70 = v53 >> 29;
  v71 = v52 - 3;
  *(a3 + 28) = v52 - 3;
  if (v52 - 3 < 0)
  {
    v73 = *(a3 + 8);
    if ((v61 & ~(v61 >> 63) & 0xFFFFFFFC) != 0 && v73 <= v4)
    {
      v53 = bswap32(*v4);
    }

    else
    {
      v74 = 4;
      v75 = v4;
      do
      {
        v76 = v53 << 8;
        *(a3 + 24) = v76;
        v77 = 255;
        if (v75 < v3 && v75 >= v73)
        {
          v77 = *v75;
        }

        v53 = v77 | v76;
        *(a3 + 24) = v53;
        v75 = (v75 + 1);
        --v74;
      }

      while (v74);
    }

    v78 = v53 << (3 - v52);
    v79 = v52 + 29;
    *(a3 + 28) = v79;
    *a3 = ++v4;
    v70 |= v53 >> v79;
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
    v72 = 8 * v53;
  }

  *(a3 + 24) = v72;
  *(a2 + 12) = v70;
  if (v71 + 8 * (v3 - v4) <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v129 = "Cannot read sD.HOAOrdering";
    goto LABEL_215;
  }

  v80 = v72 >> 30;
  v81 = v71 - 2;
  *(a3 + 28) = v71 - 2;
  if (v71 - 2 < 0)
  {
    v83 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v83 <= v4)
    {
      v72 = bswap32(*v4);
    }

    else
    {
      v84 = 4;
      v85 = v4;
      do
      {
        v86 = v72 << 8;
        *(a3 + 24) = v86;
        v87 = 255;
        if (v85 < v3 && v85 >= v83)
        {
          v87 = *v85;
        }

        v72 = v87 | v86;
        *(a3 + 24) = v72;
        v85 = (v85 + 1);
        --v84;
      }

      while (v84);
    }

    v88 = v72 << (2 - v71);
    v89 = v71 + 30;
    *(a3 + 28) = v89;
    *a3 = ++v4;
    v80 |= v72 >> v89;
    if (v89)
    {
      v82 = v88;
    }

    else
    {
      v82 = 0;
    }

    if (v89)
    {
      v81 = v89;
    }

    else
    {
      v81 = 0;
    }
  }

  else
  {
    v82 = 4 * v72;
  }

  *(a3 + 24) = v82;
  *(a2 + 13) = v80;
  if (v81 + 8 * (v3 - v4) <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v129 = "Cannot read sD.HOANormalization";
    goto LABEL_215;
  }

  v90 = v82 >> 30;
  v91 = v81 - 2;
  *(a3 + 28) = v81 - 2;
  if (v81 - 2 < 0)
  {
    v93 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v93 <= v4)
    {
      v82 = bswap32(*v4);
    }

    else
    {
      v94 = 4;
      v95 = v4;
      do
      {
        v96 = v82 << 8;
        *(a3 + 24) = v96;
        v97 = 255;
        if (v95 < v3 && v95 >= v93)
        {
          v97 = *v95;
        }

        v82 = v97 | v96;
        *(a3 + 24) = v82;
        v95 = (v95 + 1);
        --v94;
      }

      while (v94);
    }

    v98 = v82 << (2 - v81);
    v99 = v81 + 30;
    *(a3 + 28) = v99;
    *a3 = ++v4;
    v90 |= v82 >> v99;
    if (v99)
    {
      v92 = v98;
    }

    else
    {
      v92 = 0;
    }

    if (v99)
    {
      v91 = v99;
    }

    else
    {
      v91 = 0;
    }
  }

  else
  {
    v92 = 4 * v82;
  }

  *(a3 + 24) = v92;
  *(a2 + 14) = v90;
  if (v91 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v129 = "Cannot read sD.NFCRefDist.hasData";
    goto LABEL_215;
  }

  v100 = v92 >> 31;
  v101 = v91 - 1;
  *(a3 + 28) = v91 - 1;
  if (v91 - 1 < 0)
  {
    v103 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v103 <= v4)
    {
      v92 = bswap32(*v4);
    }

    else
    {
      v104 = 4;
      v105 = v4;
      do
      {
        v106 = v92 << 8;
        *(a3 + 24) = v106;
        v107 = 255;
        if (v105 < v3 && v105 >= v103)
        {
          v107 = *v105;
        }

        v92 = v107 | v106;
        *(a3 + 24) = v92;
        v105 = (v105 + 1);
        --v104;
      }

      while (v104);
    }

    v109 = v91 + 31;
    v108 = v91 == -31;
    *(a3 + 28) = v91 + 31;
    *a3 = ++v4;
    v100 |= v92 >> (v91 + 31);
    if (v91 == -31)
    {
      v102 = 0;
    }

    else
    {
      v102 = v92 << (1 - v91);
    }

    if (v108)
    {
      v101 = 0;
    }

    else
    {
      v101 = v109;
    }
  }

  else
  {
    v102 = 2 * v92;
  }

  *(a3 + 24) = v102;
  *(a2 + 16) = v100 != 0;
  if (v100)
  {
    if (v101 + 8 * (v3 - v4) <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v129 = "Cannot read sD.NFCRefDist.nfcRefDist";
LABEL_215:
      *exception = v129;
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }

    *(a3 + 28) = v101 - 32;
    if (v101 - 32 < 0)
    {
      v111 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v111 <= v4)
      {
        v112 = bswap32(*v4);
      }

      else
      {
        v113 = 4;
        v114 = v4;
        v112 = v102;
        do
        {
          v115 = v112 << 8;
          *(a3 + 24) = v115;
          v116 = 255;
          if (v114 < v3 && v114 >= v111)
          {
            v116 = *v114;
          }

          v112 = v116 | v115;
          *(a3 + 24) = v112;
          v114 = (v114 + 1);
          --v113;
        }

        while (v113);
      }

      *a3 = ++v4;
      v110 = (v112 >> v101) | v102;
      v102 = v112 << -v101;
      if (!v101)
      {
        v102 = 0;
      }

      *(a3 + 24) = v102;
      *(a3 + 28) = v101;
    }

    else
    {
      v101 -= 32;
      v110 = v102;
    }

    *(a2 + 20) = v110;
  }

  if (v101 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v129 = "Cannot read sD.screenRef";
    goto LABEL_215;
  }

  v117 = v102 >> 31;
  *(a3 + 28) = v101 - 1;
  if (v101 - 1 < 0)
  {
    v119 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v119 <= v4)
    {
      v102 = bswap32(*v4);
    }

    else
    {
      v120 = 4;
      v121 = v4;
      do
      {
        v122 = v102 << 8;
        *(a3 + 24) = v122;
        v123 = 255;
        if (v121 < v3 && v121 >= v119)
        {
          v123 = *v121;
        }

        v102 = v123 | v122;
        *(a3 + 24) = v102;
        v121 = (v121 + 1);
        --v120;
      }

      while (v120);
    }

    v124 = v102 << (1 - v101);
    v125 = v101 + 31;
    *(a3 + 28) = v125;
    *a3 = v4 + 1;
    v117 |= v102 >> v125;
    if (v125)
    {
      v118 = v124;
    }

    else
    {
      v118 = 0;
    }
  }

  else
  {
    v118 = 2 * v102;
  }

  *(a3 + 24) = v118;
  *(a2 + 24) = v117 != 0;
  APAC::MetadataBitStreamParser::parseProprietaryStaticData(a1, a2 + 28, a3);
  APAC::MetadataBitStreamParser::parseDolbyStaticData(v126, (a2 + 112), a3);

  APAC::MetadataBitStreamParser::parseExtendedData(v127, a2 + 114, a3);
}

void APAC::MetadataBitStreamParser::parseProprietaryStaticData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v119 = "Cannot read pSD.hasData";
    goto LABEL_188;
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

    v20 = v6 + 31;
    v19 = v6 == -31;
    *(a3 + 28) = v6 + 31;
    *a3 = ++v4;
    v10 |= v9 >> (v6 + 31);
    if (v6 == -31)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 << (1 - v6);
    }

    if (v19)
    {
      v11 = 0;
    }

    else
    {
      v11 = v20;
    }
  }

  else
  {
    v12 = 2 * v9;
  }

  *(a3 + 24) = v12;
  *a2 = v10 != 0;
  if (!v10)
  {
    return;
  }

  if (v11 + 8 * (v3 - v4) <= 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v119 = "Cannot read pSD.numParameters";
LABEL_188:
    *exception = v119;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v21 = v12 >> 27;
  *(a3 + 28) = v11 - 5;
  if (v11 - 5 < 0)
  {
    v23 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v23 <= v4)
    {
      v12 = bswap32(*v4);
    }

    else
    {
      v24 = 4;
      v25 = v4;
      do
      {
        v26 = v12 << 8;
        *(a3 + 24) = v26;
        v27 = 255;
        if (v25 < v3 && v25 >= v23)
        {
          v27 = *v25;
        }

        v12 = v27 | v26;
        *(a3 + 24) = v12;
        v25 = (v25 + 1);
        --v24;
      }

      while (v24);
    }

    v28 = v12 << (5 - v11);
    v29 = v11 + 27;
    *(a3 + 28) = v29;
    *a3 = v4 + 1;
    v21 |= v12 >> v29;
    if (v29)
    {
      v22 = v28;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 32 * v12;
  }

  *(a3 + 24) = v22;
  *(a2 + 1) = v21;
  if (v21)
  {
    for (i = 0; i < *(a2 + 1); ++i)
    {
      v31 = *(a3 + 16);
      v32 = *a3;
      v33 = v31 - *a3;
      v34 = *(a3 + 28);
      if (v34 + 8 * v33 <= 4)
      {
        exception = __cxa_allocate_exception(8uLL);
        v119 = "Cannot read pSD.paramIndexList[n]";
        goto LABEL_188;
      }

      v35 = *(a3 + 24);
      v36 = v35 >> 27;
      v37 = v34 - 5;
      *(a3 + 28) = v34 - 5;
      if (v34 - 5 < 0)
      {
        v39 = *(a3 + 8);
        if ((v33 & ~(v33 >> 63) & 0xFFFFFFFC) == 0 || v39 > v32)
        {
          v41 = 4;
          v42 = v32;
          do
          {
            v43 = v35 << 8;
            *(a3 + 24) = v43;
            v44 = 255;
            if (v42 < v31 && v42 >= v39)
            {
              v44 = *v42;
            }

            v35 = v44 | v43;
            *(a3 + 24) = v35;
            v42 = (v42 + 1);
            --v41;
          }

          while (v41);
        }

        else
        {
          v35 = bswap32(*v32);
        }

        v46 = v34 + 27;
        v45 = v34 == -27;
        *(a3 + 28) = v34 + 27;
        *a3 = ++v32;
        v36 |= v35 >> (v34 + 27);
        if (v34 == -27)
        {
          v38 = 0;
        }

        else
        {
          v38 = v35 << (5 - v34);
        }

        if (v45)
        {
          v37 = 0;
        }

        else
        {
          v37 = v46;
        }
      }

      else
      {
        v38 = 32 * v35;
      }

      *(a3 + 24) = v38;
      *(a2 + 52 + i) = v36;
      if (v36 <= 3u)
      {
        if (v36 > 1u)
        {
          if (v36 == 2)
          {
            if (v37 + 8 * (v31 - v32) <= 1)
            {
              exception = __cxa_allocate_exception(8uLL);
              v119 = "Cannot read pSD.productionCoordinate";
              goto LABEL_188;
            }

            v54 = v38 >> 30;
            *(a3 + 28) = v37 - 2;
            if (v37 - 2 < 0)
            {
              v62 = *(a3 + 8);
              if (((v31 - v32) & ~((v31 - v32) >> 63) & 0xFFFFFFFC) != 0 && v62 <= v32)
              {
                v38 = bswap32(*v32);
              }

              else
              {
                v80 = 4;
                v81 = v32;
                do
                {
                  v82 = v38 << 8;
                  *(a3 + 24) = v82;
                  v83 = 255;
                  if (v81 < v31 && v81 >= v62)
                  {
                    v83 = *v81;
                  }

                  v38 = v83 | v82;
                  *(a3 + 24) = v38;
                  v81 = (v81 + 1);
                  --v80;
                }

                while (v80);
              }

              v84 = v38 << (2 - v37);
              v85 = v37 + 30;
              *(a3 + 28) = v85;
              *a3 = v32 + 1;
              v54 |= v38 >> v85;
              if (v85)
              {
                v55 = v84;
              }

              else
              {
                v55 = 0;
              }
            }

            else
            {
              v55 = 4 * v38;
            }

            *(a3 + 24) = v55;
            *(a2 + 4) = v54;
          }

          else
          {
            APAC::MetadataBitStreamParser::parseSceneReverb(a1, a2 + 6, a3);
          }
        }

        else if (v36)
        {
          if (v37 + 8 * (v31 - v32) <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v119 = "Cannot read pSD.isCSPhase";
            goto LABEL_188;
          }

          v50 = v38 >> 31;
          *(a3 + 28) = v37 - 1;
          if (v37 - 1 < 0)
          {
            v60 = *(a3 + 8);
            if (((v31 - v32) & ~((v31 - v32) >> 63) & 0xFFFFFFFC) != 0 && v60 <= v32)
            {
              v38 = bswap32(*v32);
            }

            else
            {
              v68 = 4;
              v69 = v32;
              do
              {
                v70 = v38 << 8;
                *(a3 + 24) = v70;
                v71 = 255;
                if (v69 < v31 && v69 >= v60)
                {
                  v71 = *v69;
                }

                v38 = v71 | v70;
                *(a3 + 24) = v38;
                v69 = (v69 + 1);
                --v68;
              }

              while (v68);
            }

            v72 = v38 << (1 - v37);
            v73 = v37 + 31;
            *(a3 + 28) = v73;
            *a3 = v32 + 1;
            v50 |= v38 >> v73;
            if (v73)
            {
              v51 = v72;
            }

            else
            {
              v51 = 0;
            }
          }

          else
          {
            v51 = 2 * v38;
          }

          *(a3 + 24) = v51;
          *(a2 + 3) = v50 != 0;
        }

        else
        {
          if (v37 + 8 * (v31 - v32) <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v119 = "Cannot read pSD.isComplexSH";
            goto LABEL_188;
          }

          v52 = v38 >> 31;
          *(a3 + 28) = v37 - 1;
          if (v37 - 1 < 0)
          {
            v61 = *(a3 + 8);
            if (((v31 - v32) & ~((v31 - v32) >> 63) & 0xFFFFFFFC) != 0 && v61 <= v32)
            {
              v38 = bswap32(*v32);
            }

            else
            {
              v74 = 4;
              v75 = v32;
              do
              {
                v76 = v38 << 8;
                *(a3 + 24) = v76;
                v77 = 255;
                if (v75 < v31 && v75 >= v61)
                {
                  v77 = *v75;
                }

                v38 = v77 | v76;
                *(a3 + 24) = v38;
                v75 = (v75 + 1);
                --v74;
              }

              while (v74);
            }

            v78 = v38 << (1 - v37);
            v79 = v37 + 31;
            *(a3 + 28) = v79;
            *a3 = v32 + 1;
            v52 |= v38 >> v79;
            if (v79)
            {
              v53 = v78;
            }

            else
            {
              v53 = 0;
            }
          }

          else
          {
            v53 = 2 * v38;
          }

          *(a3 + 24) = v53;
          *(a2 + 2) = v52 != 0;
        }
      }

      else if (v36 <= 5u)
      {
        if (v36 == 4)
        {
          if (v37 + 8 * (v31 - v32) <= 1)
          {
            exception = __cxa_allocate_exception(8uLL);
            v119 = "Cannot read pSD.postProcReverbIndex";
            goto LABEL_188;
          }

          v56 = v38 >> 30;
          *(a3 + 28) = v37 - 2;
          if (v37 - 2 < 0)
          {
            v63 = *(a3 + 8);
            if (((v31 - v32) & ~((v31 - v32) >> 63) & 0xFFFFFFFC) != 0 && v63 <= v32)
            {
              v38 = bswap32(*v32);
            }

            else
            {
              v86 = 4;
              v87 = v32;
              do
              {
                v88 = v38 << 8;
                *(a3 + 24) = v88;
                v89 = 255;
                if (v87 < v31 && v87 >= v63)
                {
                  v89 = *v87;
                }

                v38 = v89 | v88;
                *(a3 + 24) = v38;
                v87 = (v87 + 1);
                --v86;
              }

              while (v86);
            }

            v90 = v38 << (2 - v37);
            v91 = v37 + 30;
            *(a3 + 28) = v91;
            *a3 = v32 + 1;
            v56 |= v38 >> v91;
            if (v91)
            {
              v57 = v90;
            }

            else
            {
              v57 = 0;
            }
          }

          else
          {
            v57 = 4 * v38;
          }

          *(a3 + 24) = v57;
          *(a2 + 14) = v56;
        }

        else
        {
          APAC::MetadataBitStreamParser::parseRadiationPattern(a1, a2 + 16, a3);
        }
      }

      else
      {
        switch(v36)
        {
          case 6u:
            APAC::MetadataBitStreamParser::parseBinauralization(a1, a2 + 24, a3);
            break;
          case 7u:
            if (v37 + 8 * (v31 - v32) <= 3)
            {
              exception = __cxa_allocate_exception(8uLL);
              v119 = "Cannot read pSD.HCFilterCodeBookID";
              goto LABEL_188;
            }

            v58 = v38 >> 28;
            *(a3 + 28) = v37 - 4;
            if (v37 - 4 < 0)
            {
              v67 = *(a3 + 8);
              if (((v31 - v32) & ~((v31 - v32) >> 63) & 0xFFFFFFFC) != 0 && v67 <= v32)
              {
                v38 = bswap32(*v32);
              }

              else
              {
                v100 = 4;
                v101 = v32;
                do
                {
                  v102 = v38 << 8;
                  *(a3 + 24) = v102;
                  v103 = 255;
                  if (v101 < v31 && v101 >= v67)
                  {
                    v103 = *v101;
                  }

                  v38 = v103 | v102;
                  *(a3 + 24) = v38;
                  v101 = (v101 + 1);
                  --v100;
                }

                while (v100);
              }

              v104 = v38 << (4 - v37);
              v105 = v37 + 28;
              *(a3 + 28) = v105;
              *a3 = v32 + 1;
              v58 |= v38 >> v105;
              if (v105)
              {
                v59 = v104;
              }

              else
              {
                v59 = 0;
              }
            }

            else
            {
              v59 = 16 * v38;
            }

            *(a3 + 24) = v59;
            *(a2 + 36) = v58;
            break;
          case 8u:
            v47 = v31 - v32;
            if (v37 + 8 * (v31 - v32) <= 31)
            {
              exception = __cxa_allocate_exception(8uLL);
              v119 = "Cannot read pSD.hoaRotation.pitch";
              goto LABEL_188;
            }

            *(a3 + 28) = v37 - 32;
            if (v37 - 32 < 0)
            {
              v64 = v47 & ~(v47 >> 63);
              v65 = *(a3 + 8);
              if ((v64 & 0xFFFFFFFC) != 0 && v65 <= v32)
              {
                v66 = bswap32(*v32);
              }

              else
              {
                v92 = 4;
                v93 = v32;
                v66 = v38;
                do
                {
                  v94 = v66 << 8;
                  *(a3 + 24) = v94;
                  v95 = 255;
                  if (v93 < v31 && v93 >= v65)
                  {
                    v95 = *v93;
                  }

                  v66 = v95 | v94;
                  *(a3 + 24) = v66;
                  v93 = (v93 + 1);
                  --v92;
                }

                while (v92);
              }

              *a3 = ++v32;
              v49 = (v66 >> v37) | v38;
              v38 = v66 << -v37;
              if (!v37)
              {
                v38 = 0;
              }

              *(a3 + 24) = v38;
              *(a3 + 28) = v37;
              v47 = v31 - v32;
              v48 = 8 * (v31 - v32);
            }

            else
            {
              v48 = 8 * v47;
              v37 -= 32;
              v49 = v38;
            }

            *(a2 + 40) = v49;
            if (v48 + v37 <= 31)
            {
              exception = __cxa_allocate_exception(8uLL);
              v119 = "Cannot read pSD.hoaRotation.yaw";
              goto LABEL_188;
            }

            *(a3 + 28) = v37 - 32;
            if (v37 - 32 < 0)
            {
              v97 = v47 & ~(v47 >> 63);
              v98 = *(a3 + 8);
              if ((v97 & 0xFFFFFFFC) != 0 && v98 <= v32)
              {
                v99 = bswap32(*v32);
              }

              else
              {
                v106 = 4;
                v107 = v32;
                v99 = v38;
                do
                {
                  v108 = v99 << 8;
                  *(a3 + 24) = v108;
                  v109 = 255;
                  if (v107 < v31 && v107 >= v98)
                  {
                    v109 = *v107;
                  }

                  v99 = v109 | v108;
                  *(a3 + 24) = v99;
                  v107 = (v107 + 1);
                  --v106;
                }

                while (v106);
              }

              *a3 = ++v32;
              v96 = (v99 >> v37) | v38;
              v38 = v99 << -v37;
              if (!v37)
              {
                v38 = 0;
              }

              *(a3 + 24) = v38;
              *(a3 + 28) = v37;
              v47 = v31 - v32;
              v48 = 8 * (v31 - v32);
            }

            else
            {
              v37 -= 32;
              v96 = v38;
            }

            *(a2 + 44) = v96;
            if (v48 + v37 <= 31)
            {
              exception = __cxa_allocate_exception(8uLL);
              v119 = "Cannot read pSD.hoaRotation.roll";
              goto LABEL_188;
            }

            *(a3 + 28) = v37 - 32;
            if (v37 - 32 < 0)
            {
              v110 = v47 & ~(v47 >> 63);
              v111 = *(a3 + 8);
              if ((v110 & 0xFFFFFFFC) != 0 && v111 <= v32)
              {
                v112 = bswap32(*v32);
              }

              else
              {
                v113 = 4;
                v114 = v32;
                v112 = v38;
                do
                {
                  v115 = v112 << 8;
                  *(a3 + 24) = v115;
                  v116 = 255;
                  if (v114 < v31 && v114 >= v111)
                  {
                    v116 = *v114;
                  }

                  v112 = v116 | v115;
                  *(a3 + 24) = v112;
                  v114 = (v114 + 1);
                  --v113;
                }

                while (v113);
              }

              *a3 = v32 + 1;
              v38 |= v112 >> v37;
              v117 = v112 << -v37;
              if (!v37)
              {
                v117 = 0;
              }

              *(a3 + 24) = v117;
              *(a3 + 28) = v37;
            }

            *(a2 + 48) = v38;
            break;
        }
      }
    }
  }
}