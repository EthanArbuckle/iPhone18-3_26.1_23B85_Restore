void sub_185EAF774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  IIOArray::~IIOArray(va);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void WriteValueForTagID(const __CFString *a1, uint64_t a2, int a3, int a4, int a5, unsigned __int8 *a6)
{
  v160 = *MEMORY[0x1E69E9840];
  if (!a1 || !a6)
  {
    return;
  }

  v12 = CFGetTypeID(a1);
  TypeID = CFArrayGetTypeID();
  if (v12 == TypeID)
  {
    Count = CFArrayGetCount(a1);
  }

  else
  {
    Count = 1;
  }

  if (a4 != 7)
  {
    if (!a3 && a4 == 1)
    {
      v155 = 0;
      LODWORD(valuePtr) = 0;
      LODWORD(usedBufLen[0]) = 0;
      LODWORD(v154) = 0;
      if (Count < 1 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, 0)) == 0 || !CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr))
      {
        LODWORD(valuePtr) = 0;
      }

      if (Count < 2 || (v16 = CFArrayGetValueAtIndex(a1, 1)) == 0 || !CFNumberGetValue(v16, kCFNumberIntType, usedBufLen))
      {
        LODWORD(usedBufLen[0]) = 0;
      }

      if (Count < 3 || (v17 = CFArrayGetValueAtIndex(a1, 2)) == 0 || !CFNumberGetValue(v17, kCFNumberIntType, &v154))
      {
        LODWORD(v154) = 0;
      }

      if (Count >= 4 && (v18 = CFArrayGetValueAtIndex(a1, 3)) != 0 && CFNumberGetValue(v18, kCFNumberIntType, &v155))
      {
        v19 = v155 % 10;
      }

      else
      {
        LOBYTE(v19) = 0;
      }

      *a6 = LOBYTE(valuePtr) - 10 * (((1717986919 * SLODWORD(valuePtr)) >> 34) + (1717986919 * SLODWORD(valuePtr) < 0));
      a6[1] = LOBYTE(usedBufLen[0]) - 10 * (((1717986919 * SLODWORD(usedBufLen[0])) >> 34) + (1717986919 * SLODWORD(usedBufLen[0]) < 0));
      v32 = SLODWORD(v154) % 10;
      goto LABEL_112;
    }

    if (a3 == 7 && a4 == 5)
    {
      LODWORD(p_valuePtr) = 0;
      valuePtr = 0.0;
      v162.length = CFStringGetLength(a1);
      usedBufLen[0] = 0;
      v162.location = 0;
      CFStringGetBytes(a1, v162, 0x600u, 0x3Fu, 0, &valuePtr, 11, usedBufLen);
      if (usedBufLen[0] == 11 && BYTE2(valuePtr) == 58 && BYTE5(valuePtr) == 58 && p_valuePtr == 46)
      {
        v20 = SBYTE1(valuePtr) + 10 * SLOBYTE(valuePtr) - 528;
        v21 = HIWORD(v20);
        if (a5)
        {
          v22 = 0;
          v23 = v20 >> 8;
          LOBYTE(v24) = BYTE1(valuePtr) + 10 * LOBYTE(valuePtr) - 16;
          v20 >>= 24;
          v25 = 1;
        }

        else
        {
          v25 = 0;
          v24 = HIBYTE(v20);
          v23 = HIWORD(v20);
          v21 = v20 >> 8;
          v22 = 1;
        }

        *a6 = v24;
        a6[1] = v23;
        a6[2] = v21;
        a6[3] = v20;
        a6[4] = v25;
        *(a6 + 5) = 0;
        a6[7] = v22;
        v68 = SBYTE4(valuePtr) + 10 * SBYTE3(valuePtr) - 528;
        v69 = HIWORD(v68);
        if (a5)
        {
          v70 = 0;
          v71 = v68 >> 8;
          LOBYTE(v72) = BYTE4(valuePtr) + 10 * BYTE3(valuePtr) - 16;
          v68 >>= 24;
          v73 = 1;
        }

        else
        {
          v73 = 0;
          v72 = HIBYTE(v68);
          v71 = HIWORD(v68);
          v69 = v68 >> 8;
          v70 = 1;
        }

        a6[8] = v72;
        a6[9] = v71;
        a6[10] = v69;
        a6[11] = v68;
        a6[12] = v73;
        *(a6 + 13) = 0;
        a6[15] = v70;
        v74 = 100 * SHIBYTE(valuePtr) + 1000 * SBYTE6(valuePtr) + 10 * SBYTE1(p_valuePtr) + SBYTE2(p_valuePtr) - 53328;
        v75 = HIWORD(v74);
        if (a5)
        {
          v76 = 0;
          v77 = HIWORD(v74);
          v75 = v74 >> 8;
          v78 = HIBYTE(v74);
          v79 = 100;
        }

        else
        {
          v79 = 0;
          v77 = v74 >> 8;
          LOBYTE(v78) = 100 * HIBYTE(valuePtr) - 24 * BYTE6(valuePtr) + 10 * BYTE1(p_valuePtr) + BYTE2(p_valuePtr) - 80;
          v74 >>= 24;
          v76 = 100;
        }
      }

      else
      {
        if (usedBufLen[0] != 8 || BYTE2(valuePtr) != 58 || BYTE5(valuePtr) != 58)
        {
          return;
        }

        v60 = SBYTE1(valuePtr) + 10 * SLOBYTE(valuePtr) - 528;
        v61 = HIWORD(v60);
        if (a5)
        {
          v62 = 0;
          v63 = v60 >> 8;
          LOBYTE(v64) = BYTE1(valuePtr) + 10 * LOBYTE(valuePtr) - 16;
          v60 >>= 24;
          v65 = 1;
        }

        else
        {
          v65 = 0;
          v64 = HIBYTE(v60);
          v63 = HIWORD(v60);
          v61 = v60 >> 8;
          v62 = 1;
        }

        *a6 = v64;
        a6[1] = v63;
        a6[2] = v61;
        a6[3] = v60;
        a6[4] = v65;
        *(a6 + 5) = 0;
        a6[7] = v62;
        v98 = SBYTE4(valuePtr) + 10 * SBYTE3(valuePtr) - 528;
        v99 = HIWORD(v98);
        if (a5)
        {
          v100 = 0;
          v101 = v98 >> 8;
          LOBYTE(v102) = BYTE4(valuePtr) + 10 * BYTE3(valuePtr) - 16;
          v98 >>= 24;
          v103 = 1;
        }

        else
        {
          v103 = 0;
          v102 = HIBYTE(v98);
          v101 = HIWORD(v98);
          v99 = v98 >> 8;
          v100 = 1;
        }

        a6[8] = v102;
        a6[9] = v101;
        a6[10] = v99;
        a6[11] = v98;
        a6[12] = v103;
        *(a6 + 13) = 0;
        a6[15] = v100;
        v74 = SHIBYTE(valuePtr) + 10 * SBYTE6(valuePtr) - 528;
        v75 = HIWORD(v74);
        if (a5)
        {
          v76 = 0;
          v77 = HIWORD(v74);
          v75 = v74 >> 8;
          v78 = HIBYTE(v74);
          v79 = 1;
        }

        else
        {
          v79 = 0;
          v77 = v74 >> 8;
          LOBYTE(v78) = HIBYTE(valuePtr) + 10 * BYTE6(valuePtr) - 16;
          v74 >>= 24;
          v76 = 1;
        }
      }

      a6[16] = v74;
      a6[17] = v75;
      a6[18] = v77;
      a6[19] = v78;
      a6[20] = v79;
      *(a6 + 21) = 0;
      a6[23] = v76;
      return;
    }

    if (a4 == 5)
    {
      if (a3 <= 0x16 && ((1 << a3) & 0x500014) != 0)
      {
        valuePtr = 0.0;
        if (CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr))
        {
          v36 = valuePtr;
          v37 = valuePtr;
          v38 = valuePtr >> 16;
          if (a5)
          {
            v39 = 0;
            v40 = v37 >> 8;
            v41 = HIBYTE(v37);
            v42 = 1;
            v43 = valuePtr;
          }

          else
          {
            v42 = 0;
            v43 = HIBYTE(v37);
            v40 = HIWORD(v37);
            v38 = v37 >> 8;
            v39 = 1;
            v41 = valuePtr;
          }

          *a6 = v43;
          a6[1] = v40;
          a6[2] = v38;
          a6[3] = v41;
          a6[4] = v42;
          *(a6 + 5) = 0;
          a6[7] = v39;
          v87 = (v36 - v37) * 60.0;
          v88 = v87 >> 16;
          v89 = v87 >> 24;
          if (a5)
          {
            v90 = v87;
          }

          else
          {
            v90 = v87 >> 24;
          }

          if (a5)
          {
            v91 = v87 >> 8;
          }

          else
          {
            v91 = v87 >> 16;
          }

          if (!a5)
          {
            LOBYTE(v88) = v87 >> 8;
            LOBYTE(v89) = v87;
          }

          a6[8] = v90;
          a6[9] = v91;
          a6[10] = v88;
          a6[11] = v89;
          a6[12] = a5 != 0;
          *(a6 + 13) = 0;
          a6[15] = a5 == 0;
          v92 = ((v87 - v87) * 60.0 * 100.0 + 0.5);
          v93 = HIWORD(v92);
          if (a5)
          {
            v94 = ((v87 - v87) * 60.0 * 100.0 + 0.5);
          }

          else
          {
            v94 = ((v87 - v87) * 60.0 * 100.0 + 0.5) >> 24;
          }

          if (a5)
          {
            v95 = ((v87 - v87) * 60.0 * 100.0 + 0.5) >> 8;
          }

          else
          {
            v95 = ((v87 - v87) * 60.0 * 100.0 + 0.5) >> 16;
          }

          a6[16] = v94;
          if (a5)
          {
            LOBYTE(v92) = ((v87 - v87) * 60.0 * 100.0 + 0.5) >> 24;
            v96 = 100;
          }

          else
          {
            LOBYTE(v93) = ((v87 - v87) * 60.0 * 100.0 + 0.5) >> 8;
            v96 = 0;
          }

          a6[17] = v95;
          a6[18] = v93;
          if (a5)
          {
            v97 = 0;
          }

          else
          {
            v97 = 100;
          }

          a6[19] = v92;
          a6[20] = v96;
          *(a6 + 21) = 0;
          a6[23] = v97;
        }
      }

      else if (Count >= 1)
      {
        v104 = 0;
        v105 = a6 + 3;
        do
        {
          v106 = a1;
          if (v12 == TypeID)
          {
            v106 = CFArrayGetValueAtIndex(a1, v104);
          }

          valuePtr = 0.0;
          if (CFNumberGetValue(v106, kCFNumberDoubleType, &valuePtr))
          {
            LODWORD(usedBufLen[0]) = 0;
            LODWORD(v154) = 0;
            URationalApprox(valuePtr, usedBufLen, &v154);
            LOBYTE(v107) = usedBufLen[0];
            v108 = HIWORD(LODWORD(usedBufLen[0]));
            LOBYTE(v109) = LOBYTE(v154);
            v110 = HIWORD(LODWORD(v154));
            v111 = LODWORD(usedBufLen[0]) >> 8;
            v112 = LODWORD(v154) >> 8;
            if (a5)
            {
              LOBYTE(v113) = usedBufLen[0];
              v107 = HIBYTE(LODWORD(usedBufLen[0]));
              LOBYTE(v114) = LOBYTE(v154);
              v109 = HIBYTE(LODWORD(v154));
            }

            else
            {
              v113 = HIBYTE(LODWORD(usedBufLen[0]));
              v111 = HIWORD(LODWORD(usedBufLen[0]));
              v108 = LODWORD(usedBufLen[0]) >> 8;
              v114 = HIBYTE(LODWORD(v154));
              v112 = HIWORD(LODWORD(v154));
              v110 = LODWORD(v154) >> 8;
            }

            *(v105 - 3) = v113;
            *(v105 - 2) = v111;
            *(v105 - 1) = v108;
            *v105 = v107;
            v105[1] = v114;
            v105[2] = v112;
            v105[3] = v110;
            v105[4] = v109;
          }

          ++v104;
          v105 += 8;
        }

        while (Count != v104);
      }

      return;
    }

    if (a4 == 2)
    {
      Length = CFStringGetLength(a1);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      valuePtr = 0.0;
      v167.location = 0;
      v167.length = Length;
      CFStringGetBytes(a1, v167, 0x8000100u, 0x3Fu, 0, a6, MaximumSizeForEncoding + 1, &valuePtr);
      a6[*&valuePtr] = 0;
      return;
    }

    if (a4 != 3)
    {
      switch(a4)
      {
        case 1:
          if (Count >= 1)
          {
            for (i = 0; i != Count; ++i)
            {
              v83 = a1;
              if (v12 == TypeID)
              {
                v83 = CFArrayGetValueAtIndex(a1, i);
              }

              valuePtr = 0.0;
              if (CFNumberGetValue(v83, kCFNumberLongType, &valuePtr))
              {
                v84 = *&valuePtr & ~(*&valuePtr >> 63);
                if (v84 >= 255)
                {
                  LOBYTE(v84) = -1;
                }

                a6[i] = v84;
              }
            }
          }

          return;
        case 32771:
          goto LABEL_183;
        case 10:
          if (Count >= 1)
          {
            v141 = 0;
            v142 = a6 + 3;
            do
            {
              v143 = a1;
              if (v12 == TypeID)
              {
                v143 = CFArrayGetValueAtIndex(a1, v141);
              }

              v154 = 0.0;
              if (CFNumberGetValue(v143, kCFNumberDoubleType, &v154))
              {
                valuePtr = 0.0;
                usedBufLen[0] = 0;
                RationalApprox(v154, 0x7FFFFFFFLL, &valuePtr, usedBufLen);
                LOBYTE(v144) = LOBYTE(valuePtr);
                LOBYTE(v145) = usedBufLen[0];
                v146 = HIWORD(LODWORD(usedBufLen[0]));
                if (a5)
                {
                  LODWORD(v147) = HIWORD(LODWORD(valuePtr));
                  v148 = *&valuePtr >> 8;
                  LOBYTE(v149) = LOBYTE(valuePtr);
                  v144 = *&valuePtr >> 24;
                  v150 = LODWORD(usedBufLen[0]) >> 8;
                  LOBYTE(v151) = usedBufLen[0];
                  v145 = HIBYTE(LODWORD(usedBufLen[0]));
                }

                else
                {
                  LODWORD(v148) = HIWORD(LODWORD(valuePtr));
                  v147 = *&valuePtr >> 8;
                  v149 = *&valuePtr >> 24;
                  v150 = HIWORD(LODWORD(usedBufLen[0]));
                  v146 = LODWORD(usedBufLen[0]) >> 8;
                  v151 = HIBYTE(LODWORD(usedBufLen[0]));
                }

                *(v142 - 3) = v149;
                *(v142 - 2) = v148;
                *(v142 - 1) = v147;
                *v142 = v144;
                v142[1] = v151;
                v142[2] = v150;
                v142[3] = v146;
                v142[4] = v145;
              }

              ++v141;
              v142 += 8;
            }

            while (Count != v141);
          }

          return;
        case 4:
LABEL_183:
          if (Count >= 1)
          {
            v115 = 0;
            v116 = a6 + 3;
            do
            {
              v117 = a1;
              if (v12 == TypeID)
              {
                v117 = CFArrayGetValueAtIndex(a1, v115);
              }

              valuePtr = 0.0;
              if (CFNumberGetValue(v117, kCFNumberLongType, &valuePtr))
              {
                LOBYTE(v118) = LOBYTE(valuePtr);
                v119 = HIWORD(LODWORD(valuePtr));
                if (a5)
                {
                  v120 = LODWORD(valuePtr) >> 8;
                  LOBYTE(v121) = LOBYTE(valuePtr);
                  v118 = HIBYTE(LODWORD(valuePtr));
                }

                else
                {
                  v121 = HIBYTE(LODWORD(valuePtr));
                  v120 = HIWORD(LODWORD(valuePtr));
                  v119 = LODWORD(valuePtr) >> 8;
                }

                *(v116 - 3) = v121;
                *(v116 - 2) = v120;
                *(v116 - 1) = v119;
                *v116 = v118;
              }

              ++v115;
              v116 += 4;
            }

            while (Count != v115);
          }

          return;
      }

      goto LABEL_194;
    }

    if (Count < 1)
    {
      return;
    }

    v52 = 0;
    for (j = a6 + 1; ; j += 2)
    {
      v54 = a1;
      if (v12 == TypeID)
      {
        v54 = CFArrayGetValueAtIndex(a1, v52);
      }

      usedBufLen[0] = 0;
      v55 = CFGetTypeID(v54);
      if (v55 == CFNumberGetTypeID())
      {
        if (CFNumberGetValue(v54, kCFNumberLongType, usedBufLen))
        {
          goto LABEL_89;
        }
      }

      else
      {
        v56 = CFGetTypeID(v54);
        if (v56 == CFStringGetTypeID())
        {
          valuePtr = 0.0;
          p_valuePtr = 0;
          v158 = 0;
          IIOString::IIOString(&valuePtr, v54);
          v57 = IIOString::utf8String(&valuePtr);
          usedBufLen[0] = atol(v57);
          IIOString::~IIOString(&valuePtr);
LABEL_89:
          v58 = usedBufLen[0];
          if (usedBufLen[0] <= -32768)
          {
            v58 = -32768;
          }

          if (v58 >= 0xFFFF)
          {
            LOWORD(v58) = -1;
          }

          if (a5)
          {
            v59 = v58;
          }

          else
          {
            v59 = BYTE1(v58);
          }

          if (a5)
          {
            LOBYTE(v58) = BYTE1(v58);
          }

          *(j - 1) = v59;
          *j = v58;
        }
      }

      if (Count == ++v52)
      {
        return;
      }
    }
  }

  if (a3 <= 37499)
  {
    if (a3 != 36864)
    {
      if (a3 != 37121)
      {
LABEL_73:
        if ((a3 & 0xFFFE) == 0xA300)
        {
          LOBYTE(valuePtr) = 0;
          if (CFNumberGetValue(a1, kCFNumberCharType, &valuePtr))
          {
            *a6 = LOBYTE(valuePtr);
          }

          return;
        }

LABEL_194:
        if (a3 != 42082)
        {
          if (a3 == 41995)
          {
            if (v12 == TypeID)
            {
              *a6 = a5;
              a6[1] = a5 ^ 1;
              v122 = BYTE1(Count);
              if (a5)
              {
                v123 = Count;
              }

              else
              {
                v123 = BYTE1(Count);
              }

              if (!a5)
              {
                v122 = Count;
              }

              a6[2] = v123;
              a6[3] = v122;
              valuePtr = 0.0;
              p_valuePtr = &valuePtr;
              v158 = 0x2000000000;
              v159 = 4;
              memset(usedBufLen, 0, sizeof(usedBufLen));
              IIOArray::IIOArray(usedBufLen, a1);
              v152[0] = MEMORY[0x1E69E9820];
              v152[1] = 0x40000000;
              v152[2] = ___ZL18WriteValueForTagIDPKvmttbPh_block_invoke;
              v152[3] = &unk_1E6F093F8;
              v152[4] = &valuePtr;
              v152[5] = a2;
              v152[6] = a6;
              IIOArray::enumerate(usedBufLen, v152);
              IIOArray::~IIOArray(usedBufLen);
              _Block_object_dispose(&valuePtr, 8);
            }

            return;
          }

LABEL_203:
          _cg_jpeg_mem_term("WriteValueForTagID", 3711, "*** did not handle '%4X'\n", a3);
          return;
        }

        if (v12 == TypeID && Count >= 8)
        {
          v124 = 0;
          v125 = 0;
          do
          {
            v126 = CFArrayGetValueAtIndex(a1, v124);
            valuePtr = 0.0;
            LODWORD(usedBufLen[0]) = 0;
            v127 = v124 - 7;
            if (v127 > 1)
            {
              if (CFNumberGetValue(v126, kCFNumberDoubleType, &valuePtr))
              {
                LODWORD(v154) = 0;
                v155 = 0;
                URationalApprox(valuePtr, &v154, &v155);
                LOBYTE(v131) = LOBYTE(v154);
                v132 = HIWORD(LODWORD(v154));
                if (a5)
                {
                  v133 = LODWORD(v154) >> 8;
                  LOBYTE(v134) = LOBYTE(v154);
                  v131 = HIBYTE(LODWORD(v154));
                }

                else
                {
                  v134 = HIBYTE(LODWORD(v154));
                  v133 = HIWORD(LODWORD(v154));
                  v132 = LODWORD(v154) >> 8;
                }

                v135 = &a6[v125];
                *v135 = v134;
                v135[1] = v133;
                v135[2] = v132;
                v135[3] = v131;
                LOBYTE(v131) = v155;
                v136 = HIWORD(v155);
                if (a5)
                {
                  v137 = v155 >> 8;
                  LOBYTE(v138) = v155;
                  v131 = HIBYTE(v155);
                }

                else
                {
                  v138 = HIBYTE(v155);
                  v137 = HIWORD(v155);
                  v136 = v155 >> 8;
                }

                v139 = &a6[v125 + 4];
                *v139 = v138;
                v139[1] = v137;
                v139[2] = v136;
                v139[3] = v131;
                v125 += 8;
              }
            }

            else if (CFNumberGetValue(v126, kCFNumberIntType, usedBufLen))
            {
              v128 = &a6[v125];
              v129 = usedBufLen[0];
              if (a5)
              {
                v130 = usedBufLen[0];
              }

              else
              {
                v130 = BYTE1(usedBufLen[0]);
              }

              if (a5)
              {
                v129 = BYTE1(usedBufLen[0]);
              }

              *v128 = v130;
              v128[1] = v129;
              v125 += 2;
            }

            v124 = v127 + 8;
          }

          while (v124 != Count);
        }

        return;
      }

      v155 = 0;
      LODWORD(valuePtr) = 0;
      LODWORD(usedBufLen[0]) = 0;
      LODWORD(v154) = 0;
      if (Count == 4)
      {
        v26 = CFArrayGetValueAtIndex(a1, 0);
        CFNumberGetValue(v26, kCFNumberIntType, &valuePtr);
        v27 = CFArrayGetValueAtIndex(a1, 1);
        CFNumberGetValue(v27, kCFNumberIntType, usedBufLen);
        v28 = CFArrayGetValueAtIndex(a1, 2);
        CFNumberGetValue(v28, kCFNumberIntType, &v154);
        v29 = CFArrayGetValueAtIndex(a1, 3);
        CFNumberGetValue(v29, kCFNumberIntType, &v155);
        LOBYTE(v19) = v155;
        v30 = LOBYTE(valuePtr);
        v31 = usedBufLen[0];
        LOBYTE(v32) = LOBYTE(v154);
      }

      else
      {
        LOBYTE(v19) = 0;
        LOBYTE(v32) = 3;
        v31 = 2;
        v30 = 1;
      }

      *a6 = v30;
      a6[1] = v31;
      goto LABEL_112;
    }

    goto LABEL_44;
  }

  if (a3 != 37500)
  {
    if (a3 == 37510)
    {
      v46 = CFStringGetLength(a1);
      valuePtr = 0.0;
      if (v46 && (v165.location = 0, v165.length = v46, CFStringGetBytes(a1, v165, 0x600u, 0, 0, 0, 0, &valuePtr) < 1))
      {
        *a6 = 0x45444F43494E55;
        v85 = a6 + 8;
        if (a5)
        {
          v86 = 335544576;
        }

        else
        {
          v86 = 268435712;
        }

        v168.location = 0;
        v168.length = v46;
        CFStringGetBytes(a1, v168, v86, 0x3Fu, 1u, v85, v46, &valuePtr);
      }

      else
      {
        *a6 = 0x4949435341;
        v166.location = 0;
        v166.length = v46;
        CFStringGetBytes(a1, v166, 0x600u, 0x3Fu, 0, a6 + 8, v46, &valuePtr);
      }

      return;
    }

    if (a3 != 40960)
    {
      goto LABEL_73;
    }

LABEL_44:
    LODWORD(valuePtr) = 0;
    LODWORD(usedBufLen[0]) = 0;
    LODWORD(v154) = 0;
    v33 = CFStringGetTypeID();
    if (v33 == CFGetTypeID(a1))
    {
      CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
      if (!CStringPtr)
      {
        return;
      }

      v35 = CStringPtr;
      if (strlen(CStringPtr) != 4)
      {
        return;
      }

      *a6 = *v35;
      a6[1] = v35[1];
      a6[2] = v35[2];
      LOBYTE(v19) = v35[3];
LABEL_113:
      a6[3] = v19;
      return;
    }

    if (Count < 1 || (v47 = CFArrayGetValueAtIndex(a1, 0)) == 0 || !CFNumberGetValue(v47, kCFNumberIntType, &valuePtr))
    {
      LODWORD(valuePtr) = 0;
    }

    if (Count < 2 || (v48 = CFArrayGetValueAtIndex(a1, 1)) == 0 || !CFNumberGetValue(v48, kCFNumberIntType, usedBufLen))
    {
      LODWORD(usedBufLen[0]) = 0;
    }

    if (Count >= 3 && (v49 = CFArrayGetValueAtIndex(a1, 2)) != 0 && CFNumberGetValue(v49, kCFNumberIntType, &v154))
    {
      v19 = SLODWORD(v154) % 10 + 48;
    }

    else
    {
      LOBYTE(v19) = 48;
    }

    v50 = LOBYTE(valuePtr);
    v51 = SLODWORD(valuePtr) / 10;
    *a6 = SLODWORD(valuePtr) / 10 % 10 + 48;
    a6[1] = v50 - 10 * v51 + 48;
    v32 = SLODWORD(usedBufLen[0]) % 10 + 48;
LABEL_112:
    a6[2] = v32;
    goto LABEL_113;
  }

  v44 = CFGetTypeID(a1);
  if (v44 == CFStringGetTypeID())
  {
    valuePtr = 0.0;
    v45 = CFStringGetLength(a1);
    *a6 = -7681;
    a6[2] = (v45 + 44) >> 8;
    a6[3] = v45 + 44;
    *(a6 + 18) = 0x70086920100;
    *(a6 + 4) = *"iOS ";
    a6[26] = (v45 + 8) >> 8;
    a6[27] = v45 + 8;
    *(a6 + 28) = 436207616;
    if (v45 && (v163.location = 0, v163.length = v45, CFStringGetBytes(a1, v163, 0x600u, 0, 0, 0, 30000, &valuePtr) < 1))
    {
      *(a6 + 36) = 0x45444F43494E55;
      if (a5)
      {
        v140 = 335544576;
      }

      else
      {
        v140 = 268435712;
      }

      v169.location = 0;
      v169.length = v45;
      CFStringGetBytes(a1, v169, v140, 0x3Fu, 1u, a6 + 44, 30000, &valuePtr);
    }

    else
    {
      *(a6 + 36) = 0x4949435341;
      v164.location = 0;
      v164.length = v45;
      CFStringGetBytes(a1, v164, 0x600u, 0x3Fu, 0, a6 + 44, 30000, &valuePtr);
    }

    return;
  }

  v66 = CFGetTypeID(a1);
  if (v66 != CFDictionaryGetTypeID())
  {
    a3 = 37500;
    goto LABEL_203;
  }

  v67 = AppleMakerNoteGetLength(a1);

  AppleMakerNoteWriteToBuffer(a1, a6, v67, a5);
}

void sub_185EB09B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  IIOArray::~IIOArray(va);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

size_t write_fn(void (**a1)(void), const void *a2, size_t a3)
{
  io_ptr = _cg_png_get_io_ptr(a1);
  result = IIOImageWriteSession::putBytes(io_ptr, a2, a3);
  if (result != a3)
  {
    _cg_png_error(a1, "Write Error");
  }

  return result;
}

void OUTLINED_FUNCTION_0_5(int a1, const char *a2, const char *a3)
{

  ImageIODebugOptions(a1, a2, a3, 0, 0, -1, 0);
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return kdebug_trace();
}

CFIndex OUTLINED_FUNCTION_0_7(uint64_t a1, UInt8 *a2)
{

  return CFReadStreamRead(v2, a2, 8);
}

void OUTLINED_FUNCTION_0_9()
{
  *v1 = *v0;
  v1[1] = v0[1];
  v1[2] = v0[2];
}

void OUTLINED_FUNCTION_0_14(int a1@<W8>)
{
  *(v4 + 332) = v2;
  *(v4 + 308) = v1;
  *(v4 + 312) = a1;
  *(v4 + 316) = ((v1 << (2 * v3)) + 15) & 0xFFFFFFF0;
}

void OUTLINED_FUNCTION_0_15()
{
  *(v0 + 262) = 3;
  *(v0 + 256) = 16;
  *(v0 + 260) = 4;
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CFRange a9)
{
  v12.location = 0;
  v12.length = v10;

  return CFStringFindWithOptions(v9, a2, v12, 4uLL, &a9);
}

vImage_Error OUTLINED_FUNCTION_0_21(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, vImage_Buffer *src)
{

  return vImageScale_ARGB8888(&src, &a9, 0, 0x20u);
}

void OUTLINED_FUNCTION_0_22(uint64_t a1, const char *a2, const char *a3)
{

  ImageIODebugOptions(3, a2, a3, 0, 0, -1, 0);
}

CFIndex OUTLINED_FUNCTION_0_28@<X0>(uint64_t a1@<X8>, uint64_t a2, int buffer)
{
  buffer = (a1 - v3) >> 3;

  return CFWriteStreamWrite(v4, &buffer, 4);
}

CFIndex OUTLINED_FUNCTION_0_32(int a1, CFReadStreamRef stream, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int buffer)
{
  buffer = 0;

  return CFReadStreamRead(stream, &buffer, 4);
}

void *OUTLINED_FUNCTION_0_38()
{
  atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);

  return __cxa_begin_catch(v0);
}

void OUTLINED_FUNCTION_0_40(uint64_t a1@<X8>)
{
  if (!v1)
  {
    v1 = v2;
  }

  *v3 = v1;
  v3[1] = a1;
}

uint64_t OUTLINED_FUNCTION_0_41(uint64_t result, uint64_t a2, int a3)
{
  *(result + 8) = a2;
  *(result + 16) = a3;
  return result;
}

BOOL CGImageDestinationFinalize(CGImageDestinationRef idst)
{
  kdebug_trace();
  v2 = (gIIODebugFlags >> 12) & 3;
  if (v2)
  {
    ImageIODebugOptions(v2, "A", "CGImageDestinationFinalize", idst, 0, -1, 0);
  }

  v8 = 0;
  if (!idst)
  {
    CGImageDestinationFinalize_cold_3();
    goto LABEL_13;
  }

  v3 = CFGetTypeID(idst);
  if (CGImageDestinationGetTypeID::once != -1)
  {
    CGImageDestinationGetTypeID_cold_1();
  }

  if (v3 != CGImageDestinationGetTypeID::id)
  {
    CGImageDestinationFinalize_cold_2();
    goto LABEL_13;
  }

  v4 = *(idst + 3);
  if (!v4)
  {
LABEL_13:
    v5 = -50;
    goto LABEL_14;
  }

  v5 = IIOImageDestination::finalizeDestination(*(idst + 3), &v8);
  v6 = *(v4 + 64);
  if (v6)
  {
    IIO_Reader::osType(v6);
  }

LABEL_14:
  if ((gIIODebugFlags & 0x800000000000) != 0 && v5)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CGImageDestinationFinalize", 5727, "finalize failed");
  }

  else if (!v5)
  {
    goto LABEL_19;
  }

  kdebug_trace();
LABEL_19:
  kdebug_trace();
  return v5 == 0;
}

uint64_t IIOImageDestination::finalizeDestination(IIOImageDestination *this, CFIndex *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  if (!*(this + 2))
  {
    IIOImageDestination::finalizeDestination();
LABEL_89:
    v5 = 4294967246;
    goto LABEL_78;
  }

  if (*(this + 233))
  {
    IIOImageDestination::finalizeDestination();
    goto LABEL_89;
  }

  if (*(this + 232))
  {
    IIOImageDestination::finalizeDestination();
    goto LABEL_89;
  }

  if (*(this + 53))
  {
    LogError("finalizeDestination", 4038, "*** ERROR: CGImageDestinationFinalize was called, but there were no images added [%d]\n", *(this + 53));
    goto LABEL_89;
  }

  if (*(this + 14) == *(this + 13) && !*(this + 20) && !*(this + 21))
  {
    IIOImageDestination::finalizeDestination();
    goto LABEL_89;
  }

  *(this + 233) = 1;
  if (*(this + 230) == 1)
  {
    if (*(this + 231))
    {
      v5 = 0;
    }

    else
    {
      v5 = 4294967246;
    }

    goto LABEL_61;
  }

  if (*(this + 220) == 1)
  {
    if (*(this + 20))
    {
      v6 = 1;
    }

    else
    {
      v6 = *(this + 21) != 0;
    }
  }

  else
  {
    v6 = 0;
  }

  *(this + 224) = v6;
  if (*(this + 221) == 1)
  {
    if (*(this + 20) || (v7 = *(this + 21)) != 0)
    {
      LOBYTE(v7) = *(this + 54) != 6;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  *(this + 225) = v7;
  v8 = *(this + 19);
  if (v8)
  {
    if (CFArrayGetCount(v8))
    {
      v9 = 0;
      *(this + 112) = 0;
      goto LABEL_29;
    }

    if ((*(this + 224) & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_26:
    v9 = IIOImageDestination::finalizeUsingAppleJPEGRecode(this);
    goto LABEL_29;
  }

  if (v6)
  {
    goto LABEL_26;
  }

LABEL_28:
  v9 = 0;
LABEL_29:
  if (*(this + 225) == 1)
  {
    v9 = IIOImageDestination::finalizeUsingHEIFRecode(this);
  }

  if (!v9 && ((*(this + 224) & 1) != 0 || (*(this + 225) & 1) != 0))
  {
    v5 = 0;
    goto LABEL_61;
  }

  v10 = *(this + 12);
  if (!v10 || (v11 = CFArrayGetCount(v10), v9) || (Count = v11) == 0)
  {
    IIOImageDestination::finalizeUsingPixelProvider(this);
    v26 = *(this + 12);
    if (!v26 || (Count = CFArrayGetCount(v26)) == 0)
    {
      LogError("finalizeDestination", 4091, "*** ERROR: image destination doesn't contain any images\n");
      v5 = 4294967228;
      goto LABEL_78;
    }
  }

  v13 = *(this + 5);
  if (!v13)
  {
    if (IIO_Reader::testHeaderSize(*(this + 8)) == -1 || IIO_Reader::testHeaderSize(*(this + 8)) >= Count)
    {
      goto LABEL_52;
    }

    v15 = IIO_Writer::utType(*(this + 8));
    IIOString::IIOString(buffer, v15);
    v16 = IIOString::utf8String(buffer);
    LogError("finalizeDestination", 4100, "*** ERROR: image destination count %d is too large for format '%s'\n", Count, v16);
    IIOString::~IIOString(buffer);
LABEL_74:
    v5 = 4294967227;
    goto LABEL_78;
  }

  if (Count <= v13)
  {
    if (Count == 1 && *(this + 234) == 1)
    {
      LogError("finalizeDestination", 4124, "*** ERROR: creating Gainmap from SDR and HDR, but there was only 1 image added?\n");
      *(this + 234) = 0;
      ImagePropertiesAtIndex = IIOImageDestination::getImagePropertiesAtIndex(this, 0);
      if (ImagePropertiesAtIndex)
      {
        IIODictionary::removeObjectForKeyGroup(ImagePropertiesAtIndex, @"kCGImageDestinationEncodeIsBaseImage", @"kCGImageDestinationEncodeRequestOptions");
      }
    }

    goto LABEL_52;
  }

  if (v13 != 1 || Count != 2 || (*(this + 234) & 1) == 0)
  {
    LogError("finalizeDestination", 4118, "*** ERROR: image destination capacity is %d, but there were %d images added\n", *(this + 5), Count);
    goto LABEL_74;
  }

  v14 = IIOImageDestination::validateSDRandHDRRequests(this);
  if (v14)
  {
    v5 = v14;
    LogError("finalizeDestination", 4113, "*** ERROR: image destination capacity is %d, but there were %d images added\n", *(this + 5), 2);
LABEL_78:
    if (IIOImageSource::count(*(this + 3)))
    {
      v27 = IIOImageSource::count(*(this + 3));
      CFDataSetLength(v27, 0);
    }

    if ((gIIODebugFlags & 0x3000) != 0)
    {
      v32 = 0u;
      v33 = 0u;
      *buffer = 0u;
      v31 = 0u;
      CFStringGetCString(*(this + 9), buffer, 64, 0x8000100u);
      ImageIOLog("*** %s - failed - '%s' (err: %d)\n", "finalizeDestination", buffer, v5);
    }

    goto LABEL_82;
  }

LABEL_52:
  IIO_Reader::osType(*(this + 8));
  kdebug_trace();
  if (*(this + 234) == 1)
  {
    v18 = IIOImageDestination::writeImageAndGainmap(this);
  }

  else
  {
    v18 = (***(this + 8))(*(this + 8), *(this + 3), this);
  }

  v5 = v18;
  IIO_Reader::osType(*(this + 8));
  kdebug_trace();
  if (v5)
  {
    v19 = IIO_Writer::utType(*(this + 8));
    IIOString::IIOString(buffer, v19);
    v20 = IIOString::utf8String(buffer);
    _cg_jpeg_mem_term("finalizeDestination", 4150, "*** ERROR: '%s' - write failed (err: %d)\n", v20, v5);
    IIOString::~IIOString(buffer);
  }

  if (v9)
  {
    v21 = "with error";
    if (!v5)
    {
      v21 = "OK";
    }

    _cg_jpeg_mem_term("finalizeDestination", 4154, "*** NOTE: full transcode fallback completed: %s\n", v21);
  }

LABEL_61:
  v22 = *(this + 12);
  if (v22)
  {
    CFRelease(v22);
    *(this + 12) = 0;
  }

  if (v5)
  {
    goto LABEL_78;
  }

  v5 = CGImageWriteSessionFinalize(*(this + 2), 0);
  if (a2)
  {
    Length = IIOImageSource::count(*(this + 3));
    if (Length)
    {
      v24 = IIOImageSource::count(*(this + 3));
      Length = CFDataGetLength(v24);
    }

    *a2 = Length;
  }

  if ((gIIODebugFlags & 0x10000000) != 0 && IIOImageSource::count(*(this + 3)))
  {
    v25 = IIOImageSource::count(*(this + 3));
    ImageIO_saveImageData("CGImageDestinationFinalize", v25);
  }

  if (v5)
  {
    goto LABEL_78;
  }

LABEL_82:
  if ((gIIODebugFlags & 0x20000000000) != 0)
  {
    v28 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("    IIOImageDestination::finalize - %g ms\n", (v28 - Current) * 1000.0);
  }

  return v5;
}

void sub_185EB1580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t PNGWritePlugin::WriteProc(PNGWritePlugin *this, IIOImageDestination *a2, void *a3, void *a4, void *a5)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "PNGWritePlugin::WriteProc", 0, 0, -1, 0);
  }

  v15 = 0u;
  v16 = 0u;
  memset(v14, 0, sizeof(v14));
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  IIOWritePlugin::IIOWritePlugin(v11, this, a2, 1347307296);
  memset(v14, 0, 21);
  *(&v16 + 9) = 1;
  v13 = 0uLL;
  *&v11[0] = &unk_1EF4D92B8;
  *(&v12 + 1) = 0;
  *(&v15 + 1) = 0;
  *&v16 = 0;
  v7 = PNGWritePlugin::writeAll(v11);
  PNGWritePlugin::~PNGWritePlugin(v11, v8, v9);
  return v7;
}

void sub_185EB168C(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  PNGWritePlugin::~PNGWritePlugin(&a9, a2, a3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185EB1674);
}

uint64_t PNGWritePlugin::writeAll(PNGWritePlugin *this)
{
  ImageCount = IIOWritePlugin::getImageCount(this);
  *(this + 18) = ImageCount;
  if (ImageCount)
  {
    ContainerProperties = IIOWritePlugin::getContainerProperties(this);
    *(this + 121) = 1;
    PixelDataProviderAtIndex = IIOWritePlugin::getPixelDataProviderAtIndex(this, 0);
    v5 = PixelDataProviderAtIndex;
    if (PixelDataProviderAtIndex)
    {
      hasAlpha = IIOImagePixelDataProvider::hasAlpha(PixelDataProviderAtIndex);
      PropertiesAtIndex = IIOWritePlugin::getPropertiesAtIndex(this, 0);
      *(this + 11) = IIOImageSource::count(v5);
      *(this + 12) = IIO_Reader::testHeaderSize(v5);
      *(this + 19) = 0;
      if (*(this + 18) == 1)
      {
        v8 = IIOWritePlugin::getPixelDataProviderAtIndex(this, 0);
        Ref = IIOImageSource::imageReadRef(v8);
        CGImageGetColorSpace(Ref);
        if (CGColorSpaceGetType() == 7)
        {
          *(this + 124) = 1;
        }
      }

      else
      {
        if (IIODictionary::containsKeyGroup(ContainerProperties, @"LoopCount", @"{PNG}"))
        {
          *(this + 20) = IIODictionary::getUint32ForKeyGroup(ContainerProperties, @"LoopCount", @"{PNG}");
        }

        if (*(this + 18) >= 2u)
        {
          v10 = 1;
          do
          {
            v11 = IIOWritePlugin::getPixelDataProviderAtIndex(this, v10);
            v12 = v11;
            if (v11)
            {
              v13 = *(this + 11);
              if (v13 != IIOImageSource::count(v11) || (v14 = *(this + 12), v14 != IIO_Reader::testHeaderSize(v12)))
              {
                v15 = 115;
                if (v10 == 1)
                {
                  v15 = 32;
                }

                _cg_jpeg_mem_term("writeAll", 1570, "*** ERROR trying to write APNG with %d frames - but frame sizes do not match. Writing %d frame%c.\n", *(this + 18), v10, v15);
                *(this + 18) = v10;
                goto LABEL_18;
              }
            }

            ++v10;
          }

          while (v10 < *(this + 18));
          LODWORD(v10) = *(this + 18);
LABEL_18:
          if (v10 >= 2)
          {
            v16 = 1;
            while (1)
            {
              v17 = IIOWritePlugin::getPixelDataProviderAtIndex(this, v16);
              if (hasAlpha != IIOImagePixelDataProvider::hasAlpha(v17))
              {
                break;
              }

              if (++v16 >= *(this + 18))
              {
                goto LABEL_24;
              }
            }

            *(this + 121) = 0;
          }
        }

LABEL_24:
        v8 = IIOWritePlugin::getPixelDataProviderAtIndex(this, 0);
        v18 = IIOImageSource::imageReadRef(v8);
        ColorSpace = CGImageGetColorSpace(v18);
        if (CGColorSpaceGetType() == 7)
        {
          ColorTableCount = CGColorSpaceGetColorTableCount(ColorSpace);
          BaseColorSpace = CGColorSpaceGetBaseColorSpace(ColorSpace);
          NumberOfComponents = CGColorSpaceGetNumberOfComponents(BaseColorSpace);
          v23 = malloc_type_malloc((NumberOfComponents * ColorTableCount), 0x100004077774924uLL);
          if (v23)
          {
            CGColorSpaceGetColorTable(ColorSpace, v23);
            *(this + 124) = 1;
            if (*(this + 18) < 2u)
            {
              goto LABEL_39;
            }

            v24 = 1;
            while (1)
            {
              v25 = IIOWritePlugin::getPixelDataProviderAtIndex(this, v24);
              v26 = IIOImageSource::imageReadRef(v25);
              v27 = CGImageGetColorSpace(v26);
              if (CGColorSpaceGetType() != 7)
              {
                *(this + 124) = 0;
                _cg_jpeg_mem_term("writeAll", 1623, "*** writing indexed color APNG - image #d has no color palette\n", v24);
                goto LABEL_39;
              }

              v28 = CGColorSpaceGetColorTableCount(v27);
              v29 = CGColorSpaceGetBaseColorSpace(v27);
              v30 = CGColorSpaceGetNumberOfComponents(v29);
              if (v28 != ColorTableCount || v30 != NumberOfComponents)
              {
                break;
              }

              v31 = (v30 * v28);
              v32 = malloc_type_malloc(v31, 0x100004077774924uLL);
              if (!v32 || (CGColorSpaceGetColorTable(v27, v32), v33 = memcmp(v32, v23, v31), free(v32), v33))
              {
                *(this + 124) = 0;
                goto LABEL_39;
              }

              if (++v24 >= *(this + 18))
              {
                goto LABEL_39;
              }
            }

            *(this + 124) = 0;
            v34 = CGColorSpaceGetColorTableCount(v27);
            _cg_jpeg_mem_term("writeAll", 1632, "*** writing indexed color APNG - image #%d: color palette mismatch (%d entries expected, got %d)\n", v24, ColorTableCount, v34);
LABEL_39:
            free(v23);
          }

          else
          {
            *(this + 124) = 0;
          }
        }
      }

      result = PNGWritePlugin::writePrologue(this, v8, PropertiesAtIndex);
      if (result)
      {
        return result;
      }

      v38 = *(this + 18);
      if (v38 == 1)
      {
        PNGWritePlugin::writePNG(this, v8, PropertiesAtIndex);
      }

      else
      {
        if ((*(this + 121) & 1) == 0)
        {
          _cg_jpeg_mem_term("writeAll", 1676, "alpha mismatch - convert all frames to have alpha\n");
          v38 = *(this + 18);
        }

        if (v38)
        {
          for (i = 0; i < *(this + 18); ++i)
          {
            if ((gIIODebugFlags & 0x30000) != 0)
            {
              ImageIOLog("    ==== writing APNG frame #%zu =================\n", i);
            }

            if (i)
            {
              v8 = IIOWritePlugin::getPixelDataProviderAtIndex(this, i);
              v40 = IIOWritePlugin::getPropertiesAtIndex(this, i);
              if (!v8)
              {
                return 4294967292;
              }

              PropertiesAtIndex = v40;
              *(this + 120) = IIOImagePixelDataProvider::hasAlpha(v8);
            }

            else if (IIODictionary::containsKey(PropertiesAtIndex, @"kCGImageDestinationOptimizeForSize"))
            {
              *(this + 123) = IIODictionary::getBoolForKey(PropertiesAtIndex, @"kCGImageDestinationOptimizeForSize");
            }

            *(this + 19) = i;
            PNGWritePlugin::writeAPNGFrame(this, v8, PropertiesAtIndex);
            _cg_png_reset_write(*(this + 5));
          }
        }
      }

      PNGWritePlugin::writeEpilogue(this, v36, v37);
      return 0;
    }
  }

  return 4294967246;
}

void *_cg_png_set_write_fn(void *result, uint64_t a2, size_t (*a3)(size_t result, void *__ptr, size_t a3), uint64_t (*a4)(uint64_t result))
{
  if (result)
  {
    result[5] = a2;
    if (a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = png_default_write_data;
    }

    result[3] = v4;
    if (a4)
    {
      v5 = a4;
    }

    else
    {
      v5 = png_default_flush;
    }

    result[59] = v5;
    if (result[4])
    {
      result[4] = 0;
      return png_warning(result, "Can't set both read_data_fn and write_data_fn in the same structure");
    }
  }

  return result;
}

uint64_t png_write_data(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(result + 24);
  if (!v4)
  {
    _cg_png_error(result, "Call to NULL write function");
  }

  if (a2 && !a3)
  {
    __break(0x5519u);
  }

  else
  {

    return v4();
  }

  return result;
}

void OUTLINED_FUNCTION_1_0()
{
  v3 = *v2;
  *(v1 + 4) = *(v2 + 2);
  *v1 = v3;
  *(v1 + 6) = v0;
}

int8x16_t OUTLINED_FUNCTION_1_1()
{
  v1 = *(v0 + 244);
  v2.i64[0] = v1;
  v2.i64[1] = HIDWORD(v1);
  return vextq_s8(v2, v2, 8uLL);
}

unsigned __int8 *OUTLINED_FUNCTION_1_2(uint64_t a1, IIOImageReadSession *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 *a7, uint64_t a8)
{
  v10 = *(v8 + 16);

  return ReadAndCreateASCIIString(a2, a7, a8, v10);
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, BOOL *a9, uint64_t a10, BOOL *a11, uint64_t a12, BOOL *a13, uint64_t a14, __CFDictionary *a15, uint64_t a16, uint64_t a17, __CFData *a18, const __CFData *a19, const __CFData *a20, int a21, unsigned __int8 a22, __int16 a23, char a24, BOOL a25, unsigned __int16 a26, char a27, BOOL a28, BOOL a29, BOOL a30)
{
  v36 = a26;

  return CopyTiffFile(v32, v31, v33, &a22, a19, &a30, a18, a15, &a29, a20, &a28, v36, &a25, v30);
}

void *OUTLINED_FUNCTION_1_11(uint64_t a1)
{
  v2 = a1 + 1;

  return malloc_type_malloc(v2, 0x100004077774924uLL);
}

CFIndex OUTLINED_FUNCTION_1_12@<X0>(UInt8 a1@<W8>, uint64_t a2, int a3, __int16 a4, char a5, UInt8 buffer)
{
  buffer = a1;

  return CFWriteStreamWrite(v6, &buffer, 1);
}

CFIndex OUTLINED_FUNCTION_1_13(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12)
{
  a12 = 0;
  a10 = 0u;
  a11 = 0u;
  a9 = 0u;

  return CFReadStreamRead(v12, &a9, 56);
}

uint64_t OUTLINED_FUNCTION_1_14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, unsigned int a13)
{

  return PBMReadPlugin::readWidthAndHeight(v13, &a13, &a12);
}

const char *OUTLINED_FUNCTION_1_16(int a1, uint64_t a2)
{

  return IIO_vImageErrorString(a2);
}

uint64_t OUTLINED_FUNCTION_1_17()
{
  if (*(v1 + 497))
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(v1 + 24);
  v10 = v4 + *(v1 + 208);

  return IIOImageReadSession::getBytesAtOffset(v9, (v0 + v8 * v2), v10, v3);
}

CFIndex OUTLINED_FUNCTION_1_18(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, UInt8 buffer)
{

  return CFReadStreamRead(v14, &buffer, 4);
}

uint64_t CGImageWriteSessionCreateWithMutableData(uint64_t a1)
{
  if (a1)
  {
    operator new();
  }

  return 0;
}

uint64_t IIOImageDestination::getPixelProviderAtIndex(CFArrayRef *this, CFIndex a2)
{
  Count = CFArrayGetCount(this[12]);
  if (a2 < Count)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(this[12], a2);
    if (ValueAtIndex)
    {
      v6 = ValueAtIndex == *MEMORY[0x1E695E738];
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      return ValueAtIndex[3];
    }

    return 0;
  }

  result = 0;
  if (a2 && Count)
  {
    _cg_jpeg_mem_term("getPixelProviderAtIndex", 4534, "*** getImageMetadataAtIndex index (%d) larger than arrayCount (%d)\n", a2, Count);
    return 0;
  }

  return result;
}

uint64_t CreateExifBufferFromPropertiesJPEG(IIODictionary *a1, uint64_t a2, unsigned int a3, CGColorSpace *a4, const __CFData *a5, const __CFString *a6, unint64_t *a7)
{
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v8;
  v10 = v7;
  v14[136] = *MEMORY[0x1E69E9840];
  bzero(v14, 0x440uLL);
  bzero(v13, 0x9A0uLL);
  bzero(v12, 0x420uLL);
  if (v10)
  {
    IIODictionary::getObjectForKey(v10, @"{TIFF}");
    operator new();
  }

  if (v9)
  {
    *v9 = 0;
  }

  return 0;
}

uint64_t CGImageWriteSessionCreateWith_wSession(IIOImageWriteSession *a1)
{
  if (CGImageWriteSessionGetTypeID::once != -1)
  {
    CGImageWriteSessionCreateWith_wSession();
  }

  result = _CFRuntimeCreateInstance();
  *(result + 16) = 1;
  atomic_fetch_add_explicit(&gWriteSessionCount, 1uLL, memory_order_relaxed);
  *(result + 24) = a1;
  return result;
}

__n128 IIOImageDestination::setPixelProviderAtIndex(uint64_t a1, const void *a2, CFIndex a3)
{
  Count = CFArrayGetCount(*(a1 + 96));
  v7 = *MEMORY[0x1E695E738];
  if (!a2)
  {
    a2 = *MEMORY[0x1E695E738];
  }

  if (a3 >= Count)
  {
    if (*(a1 + 48) <= a3)
    {
      return _cg_jpeg_mem_term("setPixelProviderAtIndex", 4559, "setImageMedadataAtIndex index (%d) larger than arrayCount (%d) and image count (%d)\n", a3, Count, *(a1 + 48));
    }

    while (CFArrayGetCount(*(a1 + 96)) <= a3)
    {
      CFArrayAppendValue(*(a1 + 96), v7);
    }
  }

  v8 = *(a1 + 96);

  CFArraySetValueAtIndex(v8, a3, a2);
  return result;
}

uint64_t IIOGeneric_Writer::write(IIOGeneric_Writer *this, void *a2, void *a3)
{
  v3 = *(this + 6);
  if (v3)
  {
    return v3(a2, a3, 0, 0);
  }

  else
  {
    return 4294967246;
  }
}

BOOL IIO_CGColorSpaceNameMatchesName(CGColorSpace *a1, const __CFString *a2)
{
  v3 = CGColorSpaceCopyName(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFStringCompare(v3, a2, 0) == kCFCompareEqualTo;
  CFRelease(v4);
  return v5;
}

CGImageDestinationRef CGImageDestinationCreateWithData(CFMutableDataRef data, CFStringRef type, size_t count, CFDictionaryRef options)
{
  v20 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  IIOInitDebugFlags();
  if (data)
  {
    if (type)
    {
      if (!count)
      {
        LogError("CGImageDestinationCreateWithData", 5262, "*** ERROR: CGImageDestinationCreateWithData: invalid capacity (%zu)\n", 0);
      }

      v8 = CFGetTypeID(data);
      if (v8 == CFDataGetTypeID())
      {
        v9 = CFGetTypeID(type);
        if (v9 == CFStringGetTypeID())
        {
          if (options)
          {
            v10 = CFGetTypeID(options);
            if (v10 != CFDictionaryGetTypeID())
            {
              LogError("CGImageDestinationCreateWithData", 5267, "*** ERROR: CGImageDestinationCreateWithData: options parameter is not a CFDictionaryRef - ignoring\n");
              options = 0;
            }
          }

          if ((gIIODebugFlags & 0x3000) != 0)
          {
            v18 = 0u;
            v19 = 0u;
            *buffer = 0u;
            v17 = 0u;
            CFStringGetCString(type, buffer, 64, 0x600u);
            v11 = (gIIODebugFlags >> 12) & 3;
            if (v11)
            {
              ImageIODebugOptions(v11, "A", "CGImageDestinationCreateWithData", 0, buffer, -1, options);
            }
          }

          memset(buffer, 0, sizeof(buffer));
          *&v17 = 0;
          v12 = IIODictionary::IIODictionary(buffer, options);
          WriterHandler = IIO_WriterHandler::GetWriterHandler(v12);
          if (IIO_WriterHandler::findWriterForType(WriterHandler, type, count, buffer, v14))
          {
            operator new();
          }

          IIODictionary::~IIODictionary(buffer);
          LogError("CGImageDestinationCreateWithData", 5283, "*** ERROR: CGImageDestinationCreateWithData: failed to create 'CGImageDestinationRef'\n");
        }

        else
        {
          CGImageDestinationCreateWithData_cold_2();
        }
      }

      else
      {
        CGImageDestinationCreateWithData_cold_1();
      }
    }

    else
    {
      CGImageDestinationCreateWithData_cold_3();
    }
  }

  else
  {
    CGImageDestinationCreateWithData_cold_4();
  }

  if ((gIIODebugFlags & 0x800000000000) != 0)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CGImageDestinationCreateWithData", 5286, "could not create CGImageDestinationRef");
  }

  kdebug_trace();
  kdebug_trace();
  return 0;
}

void sub_185EB3808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x186602850](v5, 0x10E1C405BBD71D3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef IIOImageDestination::setup(CFMutableArrayRef result, int a2)
{
  *(result + 23) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 21) = 0;
  *(result + 22) = -1;
  *(result + 230) = 0;
  *(result + 117) = 0;
  *(result + 200) = a2;
  *(result + 59) = 0;
  *(result + 19) = 0;
  *(result + 20) = 0;
  *(result + 30) = result;
  *(result + 31) = result;
  *(result + 53) = 0;
  *(result + 54) = 0;
  *(result + 110) = 0;
  *(result + 224) = 0;
  *(result + 11) = 0;
  *(result + 12) = 0;
  *(result + 51) = 0;
  if (a2 != 5)
  {
    v2 = result;
    result = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    *(v2 + 12) = result;
  }

  return result;
}

char *png_create_write_struct_2(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = png_create_png_struct(a1, a2, a3, a4, a5, a6, a7);
  v8 = result;
  if (!result)
  {
    return v8;
  }

  *(result + 216) = xmmword_18620A740;
  *(result + 64) = 0;
  *(result + 31) = 0x80000000FLL;
  *(result + 232) = xmmword_18620A750;
  *(result + 20) |= 0x200000u;
  if (result < result + 1280)
  {
    _cg_png_set_write_fn(result, 0, 0, 0);
    return v8;
  }

  __break(0x5519u);
  return result;
}

uint64_t _cg_png_set_filter(uint64_t result, int a2, unsigned int a3)
{
  if (!result)
  {
    return result;
  }

  v3 = a3;
  v4 = result;
  v5 = (*(result + 912) >> 2) & 1;
  if (a2 != 64)
  {
    v5 = 0;
  }

  if (a2 && !v5)
  {
    _cg_png_error(result, "Unknown custom filter method");
  }

  if (a3 > 2u)
  {
    if (a3 - 5 >= 3)
    {
      if (a3 == 3)
      {
        v6 = 64;
        goto LABEL_20;
      }

      if (a3 == 4)
      {
        v6 = 0x80;
        goto LABEL_20;
      }

LABEL_18:
      v6 = a3;
      goto LABEL_20;
    }

    result = png_app_error(result, "Unknown row filter for method 0");
LABEL_13:
    v6 = 8;
    goto LABEL_20;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  if (a3 == 1)
  {
    v6 = 16;
    goto LABEL_20;
  }

  if (a3 != 2)
  {
    goto LABEL_18;
  }

  v6 = 32;
LABEL_20:
  *(v4 + 430) = v6;
  if (*(v4 + 336))
  {
    if (*(v4 + 284) == 1)
    {
      v7 = v3 & 0xFFFFFF1F;
    }

    else
    {
      v7 = v3;
    }

    if (*(v4 + 280) == 1)
    {
      v3 = v7 & 0xFFFFFF2F;
    }

    else
    {
      v3 = v7;
    }

    if ((v3 & 0xE0) != 0 && !*(v4 + 320))
    {
      result = png_app_warning(v4, "png_set_filter: UP/AVG/PAETH cannot be added after start");
      v3 &= 0xFFFFFF1F;
    }

    v8 = *(v4 + 433) * *(v4 + 436);
    v9 = *(v4 + 280);
    v10 = v8 >= 8;
    v11 = (v9 * v8 + 7) >> 3;
    v12 = v9 * (v8 >> 3);
    if (!v10)
    {
      v12 = v11;
    }

    v13 = v12 + 1;
    if (!*(v4 + 352))
    {
      result = png_malloc(v4, v13);
      v14 = result + v13;
      if (!result)
      {
        v14 = 0;
      }

      *(v4 + 352) = result;
      *(v4 + 360) = v14;
    }

    if (((v3 >> 4) & 1) + ((v3 >> 5) & 1) + ((v3 >> 6) & 1) + ((v3 >> 7) & 1) >= 2 && !*(v4 + 368))
    {
      result = png_malloc(v4, v13);
      v15 = result + v13;
      if (!result)
      {
        v15 = 0;
      }

      *(v4 + 368) = result;
      *(v4 + 376) = v15;
    }
  }

  *(v4 + 430) = v3;
  return result;
}

uint64_t png_write_info_before_PLTE(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v3 = result;
  if ((*(result + 77) & 4) != 0)
  {
    return result;
  }

  png_write_sig(result);
  if ((*(v3 + 77) & 0x10) != 0 && *(v3 + 912))
  {
    png_warning(v3, "MNG features are not allowed in a PNG datastream");
    *(v3 + 912) = 0;
  }

  result = png_write_IHDR(v3, *a2, *(a2 + 4), *(a2 + 44), *(a2 + 45), *(a2 + 46), *(a2 + 47), *(a2 + 48));
  if ((*(a2 + 10) & 2) != 0)
  {
    result = png_write_acTL(v3, *(a2 + 408), *(a2 + 412));
  }

  v4 = *(a2 + 134);
  if ((v4 & 0x8008) == 8)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      goto LABEL_13;
    }

    result = png_write_gAMA_fixed(v3, *(a2 + 60));
    v4 = *(a2 + 134);
  }

  if ((v4 & 0x8000) == 0)
  {
LABEL_13:
    v5 = *(a2 + 8);
    if ((v5 & 0x1000) != 0)
    {
      if ((v5 & 0x800) != 0)
      {
        png_app_warning(v3, "profile matches sRGB but writing iCCP instead");
      }

      result = png_write_iCCP(v3, *(a2 + 136), *(a2 + 144), *(a2 + 152), *(a2 + 152) + *(a2 + 160));
    }

    else if ((v5 & 0x800) != 0)
    {
      result = png_write_sRGB(v3, *(a2 + 132));
    }
  }

  if ((*(a2 + 8) & 2) != 0)
  {
    if (a2 + 192 > (a2 + 197))
    {
      __break(0x5519u);
      return result;
    }

    png_write_sBIT(v3, (a2 + 192), *(a2 + 45));
  }

  if ((*(a2 + 134) & 0x8010) == 0x10 && (*(a2 + 8) & 4) != 0)
  {
    png_write_cHRM_fixed(v3, (a2 + 64));
  }

  result = write_unknown_chunks(v3, a2, 1u);
  *(v3 + 76) |= 0x400u;
  return result;
}

uint64_t __CGImagePixelDataProviderGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CGImagePixelDataProviderGetTypeID::id = result;
  return result;
}

void ImageIOLogger(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 136446210;
  v4 = v2;
  _os_log_error_impl(&dword_185E59000, a2, OS_LOG_TYPE_ERROR, "%{public}s\n", &v3, 0xCu);
}

{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 136446210;
  v4 = v2;
  _os_log_fault_impl(&dword_185E59000, a2, OS_LOG_TYPE_FAULT, "%{public}s\n", &v3, 0xCu);
}

{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 136446210;
  v4 = v2;
  _os_log_debug_impl(&dword_185E59000, a2, OS_LOG_TYPE_DEBUG, "%{public}s\n", &v3, 0xCu);
}

uint64_t CGImageSourceEnableRestrictedDecoding()
{
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageSourceEnableRestrictedDecoding", 0, 0, -1, 0);
  }

  return IIOEnableRestrictedDecoding();
}

uint64_t IIOEnableRestrictedDecoding()
{
  kdebug_trace();
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = -50;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __IIOEnableRestrictedDecoding_block_invoke;
  block[3] = &unk_1E6F097B0;
  block[4] = &v3;
  if (IIOEnableRestrictedDecoding::onceToken != -1)
  {
    dispatch_once(&IIOEnableRestrictedDecoding::onceToken, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __IIOEnableRestrictedDecoding_block_invoke(uint64_t result)
{
  v1 = result;
  if ((gIIODebugFlags & 0x4000000000000) != 0)
  {
    result = IIO_OSAppleInternalBuild();
    if (result)
    {
      result = ImageIOLog("••• CGImageSourceEnableRestrictedDecoding - restricted decoding (no IOSurface,...) is enabled for this process\n");
    }
  }

  gPermissions |= 0x10uLL;
  gPermissionsChanged = 1;
  *(*(*(v1 + 32) + 8) + 24) = 0;
  return result;
}

CFDataRef CGImageMetadataCreateXMPData(CGImageMetadataRef metadata, CFDictionaryRef options)
{
  v3 = metadata;
  if (metadata)
  {
    v4 = *(metadata + 3);
    if (v4)
    {
      CFDictionaryGetCount(v4);
    }
  }

  kdebug_trace();
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataCreateXMPData", 0, 0, -1, 0);
  }

  length = 0;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (qword_1ED569DD0 != -1)
    {
      dispatch_once(&qword_1ED569DD0, &__block_literal_global_21);
    }

    if (v5 == _MergedGlobals_1 && (!options || (v6 = CFGetTypeID(options), v6 == CFDictionaryGetTypeID())) && (v7 = SerializeMetadataForXMP(v3, &length)) != 0)
    {
      v8 = v7;
      v3 = CFDataCreate(*MEMORY[0x1E695E480], v7, length);
      free(v8);
      if (v3)
      {
        CFDataGetLength(v3);
      }
    }

    else
    {
      v3 = 0;
    }
  }

  kdebug_trace();
  return v3;
}

char *SerializeMetadataForXMP(char *cf, size_t *a2)
{
  if (!a2)
  {
    return 0;
  }

  SXMPMetaFromMetadata = cf;
  *a2 = 0;
  if (!cf)
  {
    return SXMPMetaFromMetadata;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CGImageMetadataGetTypeID())
  {
    return 0;
  }

  v5 = *(SXMPMetaFromMetadata + 3);
  if (v5)
  {
    if (!CFDictionaryGetCount(v5))
    {
      return 0;
    }
  }

  memset(&v10, 0, sizeof(v10));
  if ((IIO_InitializeXMPToolkit() & 1) == 0)
  {
    return 0;
  }

  SXMPMetaFromMetadata = CreateSXMPMetaFromMetadata(SXMPMetaFromMetadata);
  if (SXMPMetaFromMetadata)
  {
    std::string::erase(&v10, 0, 0xFFFFFFFFFFFFFFFFLL);
    TXMPMeta<std::string>::SerializeToBuffer(SXMPMetaFromMetadata, &v10, 16, 0, "", "", 0);
    (*(*SXMPMetaFromMetadata + 8))(SXMPMetaFromMetadata);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = malloc_type_malloc(size, 0x100004077774924uLL);
    SXMPMetaFromMetadata = v7;
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    strncpy(v7, v8, size);
    *a2 = size;
  }

  IIO_TerminateXMPToolkit();
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return SXMPMetaFromMetadata;
}

__CFData *CGColorSpaceCopyData(CGColorSpace *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  BaseColorSpace = a1;
  while (1)
  {
    Type = CGColorSpaceGetType();
    if (Type != 7)
    {
      break;
    }

    BaseColorSpace = CGColorSpaceGetBaseColorSpace(BaseColorSpace);
    if (!BaseColorSpace)
    {
      return 0;
    }
  }

  v5 = 0;
  if (Type <= 0xA && ((1 << Type) & 0x578) != 0)
  {
    v6 = CGColorSpaceCopyICCData(BaseColorSpace);
    if (v6)
    {
      v7 = v6;
      if (bswap32(*(CFDataGetBytePtr(v6) + 16)) == a2)
      {
        v5 = CFRetain(v7);
      }

      else
      {
        if (a2 == 4)
        {
          v8 = 0x2000000;
        }

        else
        {
          v8 = (a2 == 2) << 24;
        }

        MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, v7);
        v5 = MutableCopy;
        if (MutableCopy && CFDataGetLength(MutableCopy) >= 68)
        {
          *(CFDataGetMutableBytePtr(v5) + 16) = v8;
        }
      }

      CFRelease(v7);
      return v5;
    }

    return 0;
  }

  return v5;
}

uint64_t _cg_png_set_compression_strategy(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 80) |= 1u;
    *(result + 236) = a2;
  }

  return result;
}

uint64_t _cg_png_write_info(uint64_t result, uint64_t a2)
{
  if (!result || !a2)
  {
    return result;
  }

  v3 = result;
  png_write_info_before_PLTE(result, a2);
  v4 = *(a2 + 8);
  if ((v4 & 8) != 0)
  {
    png_write_PLTE(v3, *(a2 + 24), *(a2 + 32), *(a2 + 40));
    v4 = *(a2 + 8);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (*(a2 + 45) == 3)
    {
      goto LABEL_110;
    }

    if ((v4 & 0x10) == 0)
    {
LABEL_6:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_32;
    }
  }

  if ((*(v3 + 90) & 8) != 0 && *(a2 + 45) == 3 && *(a2 + 42))
  {
    v5 = 0;
    if (*(a2 + 42) >= 0x100u)
    {
      v6 = 256;
    }

    else
    {
      v6 = *(a2 + 42);
    }

    do
    {
      v7 = *(a2 + 200);
      v8 = (v7 + v5);
      if (v7 + v5 >= *(a2 + 208) || v8 < v7)
      {
        goto LABEL_109;
      }

      *v8 = ~*v8;
    }

    while (v6 != ++v5);
  }

  if (a2 + 216 > (a2 + 226))
  {
LABEL_109:
    __break(0x5519u);
LABEL_110:
    _cg_png_error(v3, "Valid palette required for paletted images");
  }

  png_write_tRNS(v3, *(a2 + 200), *(a2 + 208), (a2 + 216), *(a2 + 42), *(a2 + 45));
  v4 = *(a2 + 8);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_32:
  if (a2 + 226 > (a2 + 236))
  {
    goto LABEL_109;
  }

  png_write_bKGD(v3, (a2 + 226), *(a2 + 45));
  v4 = *(a2 + 8);
  if ((v4 & 0x10000) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_34:
  v10 = *(a2 + 260);
  if (v10 < 0)
  {
    goto LABEL_109;
  }

  png_write_eXIf(v3, *(a2 + 264), v10);
  *(v3 + 76) |= 0x4000u;
  v4 = *(a2 + 8);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_36:
  v11 = *(a2 + 288);
  v12 = *(a2 + 296);
  if (v11 > v12)
  {
    goto LABEL_109;
  }

  v13 = *(a2 + 40);
  if (v13 > (v12 - v11) >> 1)
  {
    goto LABEL_109;
  }

  png_write_hIST(v3, v11, v13);
  v4 = *(a2 + 8);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  png_write_oFFs(v3, *(a2 + 236), *(a2 + 240), *(a2 + 244));
  v4 = *(a2 + 8);
  if ((v4 & 0x400) == 0)
  {
LABEL_11:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  png_write_pCAL(v3, *(a2 + 304), *(a2 + 312), *(a2 + 316), *(a2 + 336), *(a2 + 337), *(a2 + 320), *(a2 + 328));
  v4 = *(a2 + 8);
  if ((v4 & 0x4000) == 0)
  {
LABEL_12:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  png_write_sCAL_s(v3, *(a2 + 372), *(a2 + 376), *(a2 + 384));
  v4 = *(a2 + 8);
  if ((v4 & 0x80) == 0)
  {
LABEL_13:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  png_write_pHYs(v3, *(a2 + 248), *(a2 + 252), *(a2 + 256));
  v4 = *(a2 + 8);
  if ((v4 & 0x200) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_48;
    }

LABEL_45:
    if (*(a2 + 368) >= 1)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        png_write_sPLT(v3, *(a2 + 360) + v14);
        ++v15;
        v14 += 40;
      }

      while (v15 < *(a2 + 368));
    }

    goto LABEL_48;
  }

LABEL_43:
  if (a2 + 184 > (a2 + 192))
  {
    goto LABEL_109;
  }

  png_write_tIME(v3, (a2 + 184));
  *(v3 + 76) |= 0x200u;
  if ((*(a2 + 8) & 0x2000) != 0)
  {
    goto LABEL_45;
  }

LABEL_48:
  if (*(a2 + 164) >= 1)
  {
    v16 = 0;
    v17 = *(a2 + 168);
    v18 = *(a2 + 176);
    while (1)
    {
      v19 = v18 + 88 * v16;
      v20 = v19 + 88;
      if (v19 < v18 || v20 > v18 + 88 * v17 || v19 > v20)
      {
        goto LABEL_109;
      }

      v23 = *v19;
      if (*v19 >= 1)
      {
        break;
      }

      if (v23 == -1)
      {
        v51 = *(v19 + 24);
        v52 = *(v19 + 32);
        if (v51 >= v52)
        {
          goto LABEL_109;
        }

        v53 = *(v19 + 8);
        v54 = *(v19 + 16);
        v55 = v51 + 1;
        do
        {
          if (v55 > v52)
          {
            goto LABEL_109;
          }
        }

        while (*(v55++ - 1));
        png_write_tEXt(v3, v53, v54, v51);
        v17 = *(a2 + 168);
        v18 = *(a2 + 176);
        v38 = (v18 + 88 * v16);
        v57 = (v38 + 22);
        v58 = v38 < v18 || v57 > v18 + 88 * v17;
        if (v58 || v38 > v57)
        {
          goto LABEL_109;
        }

LABEL_104:
        *v38 = -3;
        goto LABEL_105;
      }

      if (!v23)
      {
        v42 = *(v19 + 24);
        v43 = *(v19 + 32);
        if (v42 >= v43)
        {
          goto LABEL_109;
        }

        v44 = *(v19 + 8);
        v45 = *(v19 + 16);
        v46 = v42 + 1;
        do
        {
          if (v46 > v43)
          {
            goto LABEL_109;
          }
        }

        while (*(v46++ - 1));
        png_write_zTXt(v3, v44, v45, v42, 0);
        v17 = *(a2 + 168);
        v18 = *(a2 + 176);
        v38 = (v18 + 88 * v16);
        v48 = (v38 + 22);
        v49 = v38 < v18 || v48 > v18 + 88 * v17;
        if (v49 || v38 > v48)
        {
          goto LABEL_109;
        }

LABEL_92:
        *v38 = -2;
      }

LABEL_105:
      if (++v16 >= *(a2 + 164))
      {
        goto LABEL_106;
      }
    }

    v24 = *(v19 + 56);
    v25 = *(v19 + 64);
    if (v24 >= v25)
    {
      goto LABEL_109;
    }

    v26 = *(v19 + 8);
    v27 = *(v19 + 16);
    v28 = v24 + 1;
    do
    {
      if (v28 > v25)
      {
        goto LABEL_109;
      }
    }

    while (*(v28++ - 1));
    v30 = *(v19 + 72);
    v31 = *(v19 + 80);
    if (v30 >= v31)
    {
      goto LABEL_109;
    }

    v32 = v30 + 1;
    do
    {
      if (v32 > v31)
      {
        goto LABEL_109;
      }
    }

    while (*(v32++ - 1));
    v34 = *(v19 + 24);
    v35 = *(v19 + 32);
    if (v34 >= v35)
    {
      goto LABEL_109;
    }

    v36 = v34 + 1;
    do
    {
      if (v36 > v35)
      {
        goto LABEL_109;
      }
    }

    while (*(v36++ - 1));
    png_write_iTXt(v3, v23, v26, v27, v24, v30, v34);
    v17 = *(a2 + 168);
    v18 = *(a2 + 176);
    v38 = (v18 + 88 * v16);
    v39 = (v38 + 22);
    v40 = v38 < v18 || v39 > v18 + 88 * v17;
    if (v40 || v38 > v39)
    {
      goto LABEL_109;
    }

    if (*v38 == -1)
    {
      goto LABEL_104;
    }

    goto LABEL_92;
  }

LABEL_106:

  return write_unknown_chunks(v3, a2, 2u);
}

uint64_t __CGImageWriteSessionGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CGImageWriteSessionGetTypeID::id = result;
  return result;
}

uint64_t __CGImageDestinationGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CGImageDestinationGetTypeID::id = result;
  return result;
}

float IIODictionary::getFloatForKey(IIODictionary *this, const __CFString *a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0.0;
  }

  Value = CFDictionaryGetValue(v2, a2);
  IIONumber::IIONumber(v6, Value);
  v4 = IIONumber::floatNum(v6);
  IIONumber::~IIONumber(v6);
  return v4;
}

void sub_185EB491C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

_DWORD *URationalApprox(double a1, _DWORD *result, unsigned int *a3)
{
  v4 = result;
  if (a1 <= 0.0)
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    result = RationalApprox(a1, 0xFFFFFFFFLL, &v8, &v7);
    v5 = v8;
    v6 = v7;
  }

  *v4 = v5;
  *a3 = v6;
  return result;
}

uint64_t RationalApprox(double a1, uint64_t result, uint64_t *a3, uint64_t *a4)
{
  if (result <= a1)
  {
    v8 = 1;
  }

  else if (-result >= a1)
  {
    v8 = 1;
    result = -result;
  }

  else
  {
    v4 = -a1;
    if (a1 >= 0.0)
    {
      v4 = a1;
    }

    v5 = v4;
    if (v4 > result || result < 1)
    {
      v12 = 0;
      v8 = 1;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = v4 - v5;
      v10 = 1.0;
      v11 = 1;
      v12 = 1;
      while (1)
      {
        v13 = v7 - 1;
        if (v7)
        {
          if (v10 > v9 * 100000.0)
          {
            break;
          }
        }

        if (v10 > v9 * result && v7 == 0)
        {
          break;
        }

        v15 = (v10 / v9);
        v8 += v11 * v15;
        v12 += v5 * v15;
        v16 = v4 / (v5 / v11) >= 1.0 && v12 <= result;
        if (!v16 || v8 > result)
        {
          break;
        }

        v10 = v10 - (v10 / v9) * v9;
        if (v9 <= v10 * 100000.0)
        {
          v18 = v12 / v8 / v4 < 1.0 || v7 == -9;
          v19 = (v9 / v10);
          v9 = v9 - v19 * v10;
          v11 += v8 * v19;
          v5 += v12 * v19;
          v20 = !v18 && v5 <= result;
          v21 = v20 && v11 <= result;
          v7 = v13;
          if (v21)
          {
            continue;
          }
        }

        goto LABEL_40;
      }

      v12 = v5;
      v8 = v11;
    }

LABEL_40:
    if (a1 >= 0.0)
    {
      result = v12;
    }

    else
    {
      result = -v12;
    }
  }

  *a3 = result;
  *a4 = v8;
  return result;
}

void _cg_png_set_sRGB(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a1 && a2)
  {
    v4 = a2 + 60;
    if (a2 + 60 > (a2 + 136))
    {
      __break(0x5519u);
    }

    else
    {
      png_colorspace_set_sRGB(a1, v4, a3);

      png_colorspace_sync_info(a1, a2);
    }
  }
}

uint64_t png_read_IDAT_dataApple(uLong a1)
{
  *(a1 + 120) = *(a1 + 336);
  v3 = *(a1 + 434);
  v2 = *(a1 + 304);
  v12 = v3 >= 8;
  LODWORD(v3) = v2 * (v3 >> 3);
  if (!v12)
  {
    v3 = (v2 * *(a1 + 434) + 7) >> 3;
  }

  *(a1 + 128) = v3 + 1;
  while (1)
  {
    result = png_read_zstream(a1);
    if (result != -5)
    {
      if (result)
      {
        break;
      }
    }

    if (!*(a1 + 128))
    {
      return result;
    }

    if (!*(a1 + 104))
    {
      chunk_header = *(a1 + 392);
      while (!chunk_header)
      {
        png_crc_finish(a1, 0);
        chunk_header = _cg_png_read_chunk_header(a1);
        *(a1 + 392) = chunk_header;
        if (*(a1 + 312) != 1229209940)
        {
          v13 = "Not enough image data";
          goto LABEL_31;
        }
      }

      v6 = *(a1 + 1144);
      if (v6 >= chunk_header)
      {
        v7 = chunk_header;
      }

      else
      {
        v7 = v6;
      }

      buffer = png_read_buffer(a1, v7, 0);
      *(a1 + 104) = v7;
      *(a1 + 96) = buffer;
      v10 = *(a1 + 392);
      v11 = v7;
      if (v7 > v10)
      {
        *(a1 + 104) = v10;
        v7 = v10;
        v11 = v10;
      }

      v12 = v9 >= buffer && v9 - buffer >= v7;
      if (!v12)
      {
        __break(0x5519u);
        goto LABEL_35;
      }

      result = png_crc_read(a1, buffer, v11);
      *(a1 + 392) -= *(a1 + 104);
      if (!*(a1 + 128))
      {
        return result;
      }
    }
  }

  if (result != 1)
  {
    if (*(a1 + 144))
    {
      v13 = *(a1 + 144);
    }

    else
    {
      v13 = "Decompression error";
    }

LABEL_31:
    _cg_png_error(a1, v13);
  }

  if ((*(a1 + 128) || *(a1 + 104) || *(a1 + 392)) && (*(a1 + 84) & 8) == 0)
  {
LABEL_35:
    v13 = "Extra compressed data";
    goto LABEL_31;
  }

  *(a1 + 76) |= 8u;
  return result;
}

uint64_t png_read_zstream(uint64_t a1)
{
  if (!*(a1 + 152))
  {
    v2 = (*(a1 + 84) & 1) != 0 ? inflateInit2_((a1 + 96), -15, "1.2.12", 112) : inflateInit_((a1 + 96), "1.2.12", 112);
    if (v2)
    {
      if (v2 == -6)
      {
        v4 = "zlib version error";
      }

      else if (v2 == -2 || v2 == -4)
      {
        v4 = "zlib memory error";
      }

      else
      {
        v4 = "Unknown zlib error";
      }

      _cg_png_error(a1, v4);
    }
  }

  return inflate((a1 + 96), 1);
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<XPathStepInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<XPathStepInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<XPathStepInfo>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<XPathStepInfo>>>(uint64_t a1, const void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::vector<XPathStepInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<XPathStepInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<XPathStepInfo>>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::vector<XPathStepInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<XPathStepInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<XPathStepInfo>>>>::__construct_node<std::pair<std::string const,std::vector<XPathStepInfo>>>();
  }

  return v2;
}

CGColorSpaceRef CGColorSpaceCreateCalRGB(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9)
{
  if (IIOChromaticitiesMatchAdobeRGB(a1, a2, a3, a4, a5, a6, a7, a8, a9))
  {
    v24 = MEMORY[0x1E695F0A0];
    goto LABEL_7;
  }

  if (IIOChromaticitiesMatchSRGB(a1, a2, a3, a4, a5, a6, a7, a8, a9))
  {
    v24 = MEMORY[0x1E695F1C0];
    goto LABEL_7;
  }

  if (IIOChromaticitiesMatchLinearSRGB(a1, a2, a3, a4, a5, a6, a7, a8, a9))
  {
    v24 = MEMORY[0x1E695F1B0];
LABEL_7:
    v25 = CGColorSpaceCreateWithName(*v24);
    if (v25)
    {
      return v25;
    }

    return CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  }

  memset(v36, 0, sizeof(v36));
  IIODictionary::IIODictionary(v36);
  v33 = 0;
  value = 0;
  v35 = 0;
  IIOArray::IIOArray(&v33);
  v28 = *MEMORY[0x1E695E4D0];
  IIODictionary::setObjectForKey(v36, *MEMORY[0x1E695E4D0], @"skipPhosphorsCheck");
  IIODictionary::setObjectForKey(v36, @"Calibrated RGB Colorspace", @"description");
  IIODictionary::setObjectForKey(v36, v28, @"unrestrictedGamma");
  IIODictionary::setObjectForKey(v36, @"displayRGB", @"profileType");
  IIONumber::IIONumber(v32, a9);
  IIODictionary::setObjectForKey(v36, v32, @"gammaR");
  IIONumber::~IIONumber(v32);
  IIONumber::IIONumber(v32, a9);
  IIODictionary::setObjectForKey(v36, v32, @"gammaG");
  IIONumber::~IIONumber(v32);
  IIONumber::IIONumber(v32, a9);
  IIODictionary::setObjectForKey(v36, v32, @"gammaB");
  IIONumber::~IIONumber(v32);
  IIONumber::IIONumber(v32, a1);
  IIODictionary::setObjectForKey(v36, v32, @"whitePointx");
  IIONumber::~IIONumber(v32);
  IIONumber::IIONumber(v32, a2);
  IIODictionary::setObjectForKey(v36, v32, @"whitePointy");
  IIONumber::~IIONumber(v32);
  IIONumber::IIONumber(v32, a3);
  IIODictionary::setObjectForKey(v36, v32, @"phosphorRx");
  IIONumber::~IIONumber(v32);
  IIONumber::IIONumber(v32, a4);
  IIODictionary::setObjectForKey(v36, v32, @"phosphorRy");
  IIONumber::~IIONumber(v32);
  IIONumber::IIONumber(v32, a5);
  IIODictionary::setObjectForKey(v36, v32, @"phosphorGx");
  IIONumber::~IIONumber(v32);
  IIONumber::IIONumber(v32, a6);
  IIODictionary::setObjectForKey(v36, v32, @"phosphorGy");
  IIONumber::~IIONumber(v32);
  IIONumber::IIONumber(v32, v30);
  IIODictionary::setObjectForKey(v36, v32, @"phosphorBx");
  IIONumber::~IIONumber(v32);
  IIONumber::IIONumber(v32, a8);
  IIODictionary::setObjectForKey(v36, v32, @"phosphorBy");
  IIONumber::~IIONumber(v32);
  IIOAddDateComponents(&v33);
  IIODictionary::setObjectForKey(v36, value, @"Date");
  Profile = ColorSyncMakeProfile();
  IIOArray::~IIOArray(&v33);
  IIODictionary::~IIODictionary(v36);
  if (!Profile)
  {
    return CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  }

  v26 = MEMORY[0x186601190](Profile, 0);
  CFRelease(Profile);
  if (!v26)
  {
    return CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  }

  return v26;
}

void sub_185EB5298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  IIONumber::~IIONumber(va);
  IIOArray::~IIOArray(va1);
  IIODictionary::~IIODictionary(va2);
  _Unwind_Resume(a1);
}

uint64_t png_write_sig(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0xA1A0A0D474E5089;
  *(a1 + 1148) = 18;
  v1 = *(a1 + 437);
  v2 = (&v7 + v1);
  if ((&v7 + v1) <= &v8)
  {
    v3 = &v7 >= v2;
    v4 = &v7 == v2;
  }

  else
  {
    v3 = 1;
    v4 = 0;
  }

  if (!v4 && v3)
  {
    __break(0x5519u);
  }

  result = png_write_data(a1, v2, 8 - v1);
  if (*(a1 + 437) <= 2u)
  {
    *(a1 + 76) |= 0x1000u;
  }

  return result;
}

const char *IIOReadPlugin::ImageBlockReleaseNonCached(const char *result, const void *a2)
{
  v3 = result;
  if ((gIIODebugFlags & 0xC00) != 0)
  {
    result = IIO_ImageBlockReleased(result, a2);
  }

  if (a2)
  {
    Data = CGImageBlockGetData();

    return _ImageIO_Free(Data, v3);
  }

  return result;
}

BOOL TXMPFiles<std::string>::Initialize(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  WXMPFiles_Initialize_1(0, v7, a3, a4);
  if (*&v7[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v6 = *&v7[0];
    *exception = v8;
    exception[1] = v6;
    *(exception + 16) = 0;
  }

  return v8 != 0;
}

void (**png_write_IHDR(uint64_t a1, unsigned int a2, int a3, unsigned int a4, int a5, int a6, int a7, unsigned int a8))(void)
{
  v11 = a4;
  v24 = *MEMORY[0x1E69E9840];
  if (a5 <= 2)
  {
    if (a5)
    {
      if (a5 != 2)
      {
        goto LABEL_48;
      }

      v15 = 3;
      if (a4 == 8 || a4 == 16)
      {
        goto LABEL_21;
      }

      v16 = "Invalid bit depth for RGB image";
    }

    else
    {
      if (a4 <= 0x10)
      {
        v15 = 1;
        if (((1 << a4) & 0x10116) != 0)
        {
          goto LABEL_21;
        }
      }

      v16 = "Invalid bit depth for grayscale image";
    }

LABEL_49:
    _cg_png_error(a1, v16);
  }

  if (a5 == 3)
  {
    if (a4 - 1 < 8 && ((0x8Bu >> (a4 - 1)) & 1) != 0)
    {
      v15 = 1;
      goto LABEL_21;
    }

    v16 = "Invalid bit depth for paletted image";
    goto LABEL_49;
  }

  if (a5 == 4)
  {
    v15 = 2;
    if (a4 == 8 || a4 == 16)
    {
      goto LABEL_21;
    }

    v16 = "Invalid bit depth for grayscale+alpha image";
    goto LABEL_49;
  }

  if (a5 != 6)
  {
LABEL_48:
    v16 = "Invalid image color type specified";
    goto LABEL_49;
  }

  v15 = 4;
  if (a4 != 8 && a4 != 16)
  {
    v16 = "Invalid bit depth for RGBA image";
    goto LABEL_49;
  }

LABEL_21:
  *(a1 + 435) = v15;
  if (a6)
  {
    png_warning(a1, "Invalid compression type specified");
  }

  if ((*(a1 + 912) & 4) == 0 || (*(a1 + 77) & 0x10) != 0)
  {
    if (!a7)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v18 = (a5 & 0xFFFFFFFB) != 2 || a7 != 64;
  if (a7 && v18)
  {
LABEL_35:
    png_warning(a1, "Invalid filter type specified");
    LOBYTE(a7) = 0;
  }

LABEL_36:
  if (a8 >= 2)
  {
    png_warning(a1, "Invalid interlace type specified");
    LOBYTE(a8) = 1;
  }

  *(a1 + 432) = v11;
  *(a1 + 431) = a5;
  *(a1 + 428) = a8;
  *(a1 + 916) = a7;
  *(a1 + 1056) = 0;
  *(a1 + 280) = a2;
  *(a1 + 284) = a3;
  v19 = *(a1 + 435);
  *(a1 + 434) = v19 * v11;
  v20 = a2 * ((v19 * v11) >> 3);
  if ((v19 * v11) < 8u)
  {
    v20 = ((v19 * v11) * a2 + 7) >> 3;
  }

  *(a1 + 296) = v20;
  *(a1 + 292) = a2;
  *(a1 + 433) = v11;
  *(a1 + 436) = v19;
  v23[0] = HIBYTE(a2);
  v23[1] = BYTE2(a2);
  v23[2] = BYTE1(a2);
  v23[3] = a2;
  v23[4] = HIBYTE(a3);
  v23[5] = BYTE2(a3);
  v23[6] = BYTE1(a3);
  v23[7] = a3;
  v23[8] = v11;
  v23[9] = a5;
  v23[10] = 0;
  v23[11] = a7;
  v23[12] = a8;
  result = _cg_png_write_complete_chunk(a1, 1229472850, v23, 0xDuLL);
  *(a1 + 928) = a2;
  *(a1 + 932) = a3;
  if (!*(a1 + 430))
  {
    v22 = 8;
    if (*(a1 + 431) != 3)
    {
      if (*(a1 + 432) < 8u)
      {
        v22 = 8;
      }

      else
      {
        v22 = -8;
      }
    }

    *(a1 + 430) = v22;
  }

  *(a1 + 76) = 1;
  return result;
}

uint64_t png_write_eXIf(uint64_t a1, Bytef *a2, int a3)
{
  LODWORD(v3) = a3;
  v8 = 0;
  _cg_png_write_chunk_header(a1, 1700284774, a3);
  if (v3 >= 1)
  {
    v3 = v3;
    do
    {
      v6 = *a2++;
      v8 = v6;
      _cg_png_write_chunk_data(a1, &v8, 1);
      --v3;
    }

    while (v3);
  }

  return _cg_png_write_chunk_end(a1);
}

uint64_t _cg_png_write_chunk_end(uint64_t result)
{
  if (result)
  {
    *(result + 1148) = 130;
    v1 = bswap32(*(result + 396));
    return png_write_data(result, &v1, 4);
  }

  return result;
}

void *IIOImagePixelDataProvider::createEncodingTempBuffer(IIOImagePixelDataProvider *this, unint64_t *a2, unint64_t *a3)
{
  if (IIOImagePixelDataProvider::createEncodingTempBuffer(unsigned long *,unsigned long *)::once != -1)
  {
    IIOImagePixelDataProvider::createEncodingTempBuffer();
  }

  if (*(this + 24) == IIOImagePixelDataProvider::GetBytesCGAccessSessionNoConvert)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(this + 22);
    if (!v6)
    {
      v6 = IIOImagePixelDataProvider::createEncodingTempBuffer(unsigned long *,unsigned long *)::recommendedBufferSize / *(this + 18);
      if (v6 >= *(this + 4))
      {
        v6 = *(this + 4);
      }

      if (v6 <= 1)
      {
        v6 = 1;
      }
    }
  }

  *a2 = v6;
  v7 = *(this + 18) * v6;
  *a3 = v7;
  memptr = 0;
  if (!malloc_type_posix_memalign(&memptr, 0x40uLL, v7, 0x286AED50uLL))
  {
    return memptr;
  }

  *a2 = 1;
  v8 = *(this + 18);
  *a3 = v8;
  return malloc_type_malloc(v8, 0x4E744236uLL);
}

void _cg_png_set_iCCP(unsigned __int8 *a1, uint64_t a2, char *a3, int a4, unsigned int *a5, unint64_t a6)
{
  if (a1 && a2 && a3 && a5)
  {
    if (a4)
    {
      png_app_error(a1, "Invalid iCCP compression method");
    }

    if (a2 + 60 > (a2 + 136))
    {
      goto LABEL_22;
    }

    v11 = png_colorspace_set_ICC(a1, a2 + 60, a3, a6, a5, *(a2 + 45));
    png_colorspace_sync_info(a1, a2);
    if (!v11)
    {
      return;
    }

    *(a2 + 134) |= 0x18u;
    v12 = strlen(a3) + 1;
    v13 = png_malloc_warn(a1, v12);
    if (v13)
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_22;
      }

      if (&a3[v12] < a3)
      {
        goto LABEL_22;
      }

      v14 = v13;
      memcpy(v13, a3, v12);
      if (v14 > &v14[v12])
      {
        goto LABEL_22;
      }

      v15 = png_malloc_warn(a1, a6);
      if (v15)
      {
        v16 = v15;
        memcpy(v15, a5, a6);
        if (v16 <= &v16[a6])
        {
          png_free_data(a1, a2, 0x10u, 0);
          *(a2 + 160) = a6;
          *(a2 + 136) = v14;
          *(a2 + 144) = &v14[v12];
          *(a2 + 152) = v16;
          *(a2 + 340) |= 0x10u;
          *(a2 + 8) |= 0x1000u;
          return;
        }

LABEL_22:
        __break(0x5519u);
        return;
      }

      png_free(a1, v14);
      v17 = "Insufficient memory to process iCCP profile";
    }

    else
    {
      v17 = "Insufficient memory to process iCCP chunk";
    }

    png_benign_error(a1, v17);
  }
}

uint64_t png_colorspace_set_ICC(unsigned __int8 *a1, uint64_t a2, _BYTE *a3, unint64_t a4, unsigned int *a5, char a6)
{
  if (*(a2 + 74) < 0)
  {
    return 0;
  }

  v6 = a4;
  v10 = a4;
  if (a4 > 0x83)
  {
    result = png_icc_check_header(a1, a2, a3, a4, a5, a6);
    if (result)
    {
      result = png_icc_check_tag_table(a1, a2, a3, v6, a5);
      if (result)
      {
        png_icc_set_sRGB(a1, a2, a5, a5 + v10, 0);
        return 1;
      }
    }
  }

  else
  {
    png_icc_profile_error(a1, a2, a3, a4, "too short");
    return 0;
  }

  return result;
}

uint64_t png_write_iCCP(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  *&v19[7] = *MEMORY[0x1E69E9840];
  bzero(v16, 0x418uLL);
  if (!a4)
  {
    goto LABEL_22;
  }

  memset(v18, 0, sizeof(v18));
  if (a5 <= a4 || a4 + 1 >= a5 || a4 + 1 < a4 || a4 + 2 >= a5 || a4 + 2 < a4 || a4 + 3 >= a5 || a4 + 3 < a4)
  {
LABEL_21:
    __break(0x5519u);
LABEL_22:
    v15 = "No profile for iCCP chunk";
    goto LABEL_27;
  }

  v9 = _byteswap_ulong(*a4);
  if (v9 <= 0x83)
  {
    v15 = "ICC profile too short";
    goto LABEL_27;
  }

  v10 = (a4 + 8);
  if (a4 + 8 >= a5 || v10 < a4)
  {
    goto LABEL_21;
  }

  if ((*(a4 + 3) & 3) != 0 && *v10 >= 4u)
  {
    v15 = "ICC profile length invalid (not a multiple of 4)";
    goto LABEL_27;
  }

  v11 = png_check_keyword(a1, a2, v18, v19);
  if (!v11)
  {
    v15 = "iCCP: invalid keyword";
    goto LABEL_27;
  }

  v12 = &v18[v11 + 1];
  if (v12 >= v19)
  {
    goto LABEL_21;
  }

  if (v12 < v18)
  {
    goto LABEL_21;
  }

  *v12 = 0;
  if (a5 - a4 < v9)
  {
    goto LABEL_21;
  }

  v13 = (v11 + 2);
  v16[0] = a4;
  v16[1] = v9;
  v17 = 0;
  if (png_text_compress(a1, 1766015824, v16, v13))
  {
    v15 = *(a1 + 144);
LABEL_27:
    _cg_png_error(a1, v15);
  }

  _cg_png_write_chunk_header(a1, 1766015824, v17 + v13);
  if (v13 > 0x51)
  {
    goto LABEL_21;
  }

  _cg_png_write_chunk_data(a1, v18, v13);
  png_write_compressed_data_out(a1, v16);
  return _cg_png_write_chunk_end(a1);
}

uint64_t png_check_keyword(uint64_t a1, unsigned __int8 *a2, _BYTE *a3, unint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 1;
      v9 = a2;
      v10 = a3;
      while (1)
      {
        v11 = v5 >= 0xA1 || v5 - 127 >= 0xFFFFFFA2;
        LODWORD(v12) = !v11;
        if (v11)
        {
          if (v10 >= a4 || v10 < a3)
          {
            goto LABEL_46;
          }

          v8 = 0;
          *v10++ = v5;
          ++v6;
        }

        else
        {
          if (v8)
          {
            if (!v7)
            {
              v7 = v5;
            }
          }

          else
          {
            if (v10 >= a4 || v10 < a3)
            {
              goto LABEL_46;
            }

            *v10++ = 32;
            ++v6;
            if (v5 != 32)
            {
              v7 = v5;
            }
          }

          v8 = 1;
        }

        v13 = *++v9;
        v5 = v13;
        if (!v13 || v6 >= 0x4F)
        {
          goto LABEL_29;
        }
      }
    }

    v7 = 0;
    v6 = 0;
    LODWORD(v12) = 1;
    v10 = a3;
    v9 = a2;
LABEL_29:
    if (v6)
    {
      v12 = v12;
    }

    else
    {
      v12 = 0;
    }

    if ((v12 & (v7 == 0)) != 0)
    {
      v15 = 32;
    }

    else
    {
      v15 = v7;
    }

    v16 = &v10[-v12];
    if (&v10[-v12] >= a4 || v16 < a3)
    {
LABEL_46:
      __break(0x5519u);
    }

    *v16 = 0;
    v14 = v6 - v12;
    if (v14)
    {
      if (*v9)
      {
        png_warning(a1, "keyword truncated");
      }

      else if (v15)
      {
        memset(v19, 0, sizeof(v19));
        png_warning_parameter(v19, 1u, a2);
        png_warning_parameter_signed(v19, 2u, 4, v15);
        png_formatted_warning(a1, v19, "keyword @1: bad character '0x@2'");
      }
    }
  }

  else
  {
    if (a3 >= a4)
    {
      goto LABEL_46;
    }

    v14 = 0;
    *a3 = 0;
  }

  return v14;
}

uint64_t png_text_compress(uint64_t a1, int a2, uint64_t a3, int a4)
{
  result = png_deflate_claim(a1, a2, *(a3 + 8));
  v8 = result;
  if (result)
  {
    return v8;
  }

  v9 = *(a3 + 8);
  *(a1 + 96) = *a3;
  v10 = (a1 + 208);
  v11 = a1 + 216;
  *(a1 + 120) = a3 + 20;
  v12 = 1024;
  *(a1 + 128) = 1024;
  while (1)
  {
    v13 = v9 >= 0xFFFFFFFF ? 0xFFFFFFFFLL : v9;
    v9 -= v13;
    *(a1 + 104) = v13;
    if (!*(a1 + 128))
    {
      break;
    }

LABEL_17:
    result = deflate((a1 + 96), 4 * (v9 == 0));
    v9 += *(a1 + 104);
    *(a1 + 104) = 0;
    if (result)
    {
      v8 = result;
      goto LABEL_20;
    }
  }

  if (v12 + a4 < 0)
  {
    goto LABEL_19;
  }

  if ((v10 + 1) > v11 || v10 > v10 + 1)
  {
LABEL_26:
    __break(0x5519u);
    return result;
  }

  if (*v10)
  {
    v14 = *v10 + 24;
    v10 = *v10;
    goto LABEL_14;
  }

  v15 = *(a1 + 216) + 24;
  result = malloc_type_malloc(v15, 0x4210446AuLL);
  if (result)
  {
    v14 = result + v15;
    *(result + 8) = result + 24;
    *(result + 16) = result + v15;
    *result = 0;
    *v10 = result;
    v10 = result;
LABEL_14:
    if ((v10 + 3) > v14)
    {
      goto LABEL_26;
    }

    v11 = (v10 + 1);
    *(a1 + 120) = v10[1];
    v16 = *(a1 + 216);
    *(a1 + 128) = v16;
    if (v10 > v10 + 3)
    {
      goto LABEL_26;
    }

    v12 += v16;
    goto LABEL_17;
  }

LABEL_19:
  v8 = 4294967292;
LABEL_20:
  v17 = v12 - *(a1 + 128);
  *(a1 + 128) = 0;
  *(a3 + 16) = v17;
  if ((v17 + a4) < 0x7FFFFFFF)
  {
    png_zstream_error(a1, v8);
    *(a1 + 92) = 0;
    if (v8 == 1 && !v9)
    {
      optimize_cmf((a3 + 20), a3 + 1044, *(a3 + 8));
      return 0;
    }
  }

  else
  {
    *(a1 + 144) = "compressed data too long";
    *(a1 + 92) = 0;
    return 4294967292;
  }

  return v8;
}

uint64_t png_write_compressed_data_out(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 20);
  v5 = (a1 + 208);
  if (v3 >= 0x400)
  {
    v6 = 1024;
  }

  else
  {
    v6 = v3;
  }

  while (1)
  {
    v5 = *v5;
    result = _cg_png_write_chunk_data(a1, v4, v6);
    v3 -= v6;
    if (!v3 || !v5)
    {
      break;
    }

    v8 = *(a1 + 216);
    v4 = v5[1];
    v9 = v5[2];
    if (v8 >= v3)
    {
      v6 = v3;
    }

    else
    {
      v6 = v8;
    }

    if (v9 < v4 || v9 - v4 < v6)
    {
      __break(0x5519u);
      break;
    }
  }

  if (v3)
  {
    _cg_png_error(a1, "error writing ancillary chunked compressed data");
  }

  return result;
}

void XMP_Node::XMP_Node(XMP_Node *this, XMP_Node *a2, char *__s, int a4)
{
  *this = &unk_1EF4DE950;
  *(this + 2) = a4;
  v6 = (this + 16);
  v7 = std::string::basic_string[abi:fe200100]<0>(this + 16, __s);
  *(this + 72) = 0u;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = a2;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  if (std::string::find(v7, 58, 0) != -1)
  {
    return;
  }

  v8 = *(this + 39);
  if (v8 < 0)
  {
    if (*(this + 3) != 2)
    {
      goto LABEL_8;
    }

    v9 = *v6;
LABEL_7:
    if (*v9 == 23899)
    {
      return;
    }

    goto LABEL_8;
  }

  v9 = v6;
  if (v8 == 2)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((*(this + 2) & 0x80000000) == 0)
  {
    if (*(this + 8))
    {
      __assert_rtn("XMP_Node", "XMPCore_Impl.hpp", 311, "(name.find(':') != XMP_VarString::npos) || (name == []) || (options & ((XMP_OptionBits)0x80000000UL)) || (parent == 0)");
    }
  }
}

void sub_185EB667C(_Unwind_Exception *exception_object)
{
  v6 = *(v1 + 96);
  if (v6)
  {
    *(v1 + 104) = v6;
    operator delete(v6);
  }

  v7 = *v4;
  if (*v4)
  {
    *(v1 + 80) = v7;
    operator delete(v7);
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPUtils::Initialize(XMPUtils *this)
{
  if (!XMPUtils::WhiteSpaceStrPtr)
  {
    operator new();
  }

  return 1;
}

void (**png_write_sRGB(void (**a1)(void), int a2))(void)
{
  v2 = a2;
  if (a2 >= 4)
  {
    png_warning(a1, "Invalid sRGB rendering intent specified");
  }

  v5 = v2;
  return _cg_png_write_complete_chunk(a1, 1934772034, &v5, 1uLL);
}

BOOL XMPFiles::Initialize(XMPFiles *this, unsigned int a2, const char *a3, const char *a4)
{
  v4 = sXMPFilesInitCount++;
  result = 1;
  if (v4 <= 0)
  {
    v6 = this;
    TXMPMeta<std::string>::Initialize();
    v7 = ImageIOShouldAllowFullsizeDecode();
    if ((v7 & 1) == 0)
    {
      return 0;
    }

    Instance = Common::HandlerRegistry::getInstance(v7);
    Common::HandlerRegistry::initialize(Instance);
    InitializeUnicodeConversions();
    ignoreLocalText = (v6 & 2) != 0;
    if (!*kXMPFiles_EmbeddedVersion[0] || !*kXMPFiles_EmbeddedCopyright[0])
    {
      return 0;
    }
  }

  return result;
}

void sub_185EB6810(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    if (_MergedGlobals_6 != -1)
    {
      XMPFiles::Initialize();
    }

    GenericErrorCallback::NotifyClient(qword_1ED56A1C0, 3, v2, "");
    __cxa_end_catch();
    JUMPOUT(0x185EB67ACLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Common::HandlerRegistry::getInstance(Common::HandlerRegistry *this)
{
  if (!Common::HandlerRegistry::sInstance)
  {
    operator new();
  }

  return Common::HandlerRegistry::sInstance;
}

CGMutableImageMetadataRef AppleJPEGReadPlugin::readAPP13(IIOImageReadSession **this)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v18 = 0;
  *(v19 + 6) = 0;
  v19[0] = 0;
  if (IIOImageReadSession::getBytesAtOffset(this[3], &v18, 2, 4) != 4)
  {
    return 0;
  }

  v2 = 0;
  __ptr = 0;
  v3 = 2;
  do
  {
    v4 = bswap32(v18) >> 16;
    v5 = bswap32(HIWORD(v18)) >> 16;
    switch(v4)
    {
      case 0xFFEDu:
        if (v5 >= 0xF)
        {
          if (IIOImageReadSession::getBytesAtOffset(this[3], v19, v3 + 4, 14) != 14)
          {
            goto LABEL_22;
          }

          if (v19[0] == 0x6F68736F746F6850 && *(v19 + 6) == 0x302E3320706F68)
          {
            if (v5 < 0x11)
            {
              goto LABEL_22;
            }

            v7 = (v5 - 16);
            v8 = reallocf(__ptr, v7 + v2);
            if (v8)
            {
              __ptr = v8;
              if (IIOImageReadSession::getBytesAtOffset(this[3], v8 + v2, v3 + 18, (v5 - 16)) != v7)
              {
                Mutable = 0;
LABEL_32:
                v10 = __ptr;
                goto LABEL_33;
              }

              v2 += v7;
            }

            else
            {
              __ptr = 0;
            }
          }
        }

        break;
      case 0xFFFFu:
        ++v3;
        continue;
      case 0xFFDAu:
        if (!__ptr)
        {
          return 0;
        }

        Mutable = CGImageMetadataCreateMutable();
        ReadPhotoshopImageResource(Mutable, __ptr, v2);
        if (Mutable)
        {
          TagWithPath = CGImageMetadataGetTagWithPath(Mutable, 0, @"iio:PSIRClippingPath");
          if (TagWithPath)
          {
            v12 = TagWithPath;
            Value = CGImageMetadataTagGetValue(TagWithPath);
            if (Value)
            {
              v14 = this[2];
              v15 = CGPathRetain(Value);
              IIOImagePlus::setClipPath(v14, v15);
            }

            CGImageMetadataRemoveTag(Mutable, v12);
          }
        }

        goto LABEL_32;
    }

    v3 += v5 + 2;
  }

  while (IIOImageReadSession::getBytesAtOffset(this[3], &v18, v3, 4) == 4);
LABEL_22:
  Mutable = 0;
  v10 = __ptr;
  if (!__ptr)
  {
    return Mutable;
  }

LABEL_33:
  free(v10);
  return Mutable;
}

uint64_t AppleJPEGReadPlugin::readXMPData(IIOImageReadSession **this, CFDataRef theData)
{
  v37 = *MEMORY[0x1E69E9840];
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);

    return CreateMetadataFromXMPSidecarData(BytePtr, Length);
  }

  v35 = 0u;
  memset(v36, 0, sizeof(v36));
  v28 = 0;
  v32 = 0;
  v33 = 0;
  memset(v34, 0, 14);
  memset(__s1, 0, 75);
  MetadataFromExtendedXMPData = 0;
  if (IIOImageReadSession::getBytesAtOffset(this[3], &v28, 2, 4) != 4)
  {
    return MetadataFromExtendedXMPData;
  }

  v8 = 0;
  LODWORD(v9) = 0;
  v26 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 2;
  while (1)
  {
    v13 = bswap32(v28) >> 16;
    v14 = bswap32(HIWORD(v28)) >> 16;
    if (v13 != 65505)
    {
      if (v13 == 65498)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    if (v14 >= 0x1E)
    {
      break;
    }

LABEL_44:
    v12 += v14 + 2;
    if (IIOImageReadSession::getBytesAtOffset(this[3], &v28, v12, 4) != 4)
    {
LABEL_45:
      if (!v11)
      {
        goto LABEL_53;
      }

      goto LABEL_46;
    }
  }

  if (IIOImageReadSession::getBytesAtOffset(this[3], &v32, v12 + 4, 30) != 30)
  {
    goto LABEL_45;
  }

  v16 = v32 == 0x6E2F2F3A70747468 && v33 == 0x2E65626F64612E73 && v34[0] == 0x2F7061782F6D6F63;
  if (v16 && BYTE5(v34[1]) == 60)
  {
    v9 = v14 - 31;
    v8 = reallocf(v8, v9);
    if (IIOImageReadSession::getBytesAtOffset(this[3], v8, v12 + 33, v9) != v9)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v14 < 0x4C)
  {
    goto LABEL_44;
  }

  if (IIOImageReadSession::getBytesAtOffset(this[3], __s1, v12 + 4, 75) != 75)
  {
    goto LABEL_45;
  }

  if (strcmp(__s1, "http://ns.adobe.com/xmp/extension/"))
  {
    goto LABEL_44;
  }

  v24 = v10;
  v25 = v11;
  v29 = 0u;
  v30 = 0u;
  IIOImageReadSession::getBytesAtOffset(this[3], &v29, v12 + 39, 32);
  v27 = 0;
  IIOImageReadSession::getBytesAtOffset(this[3], &v27, v12 + 71, 4);
  v17 = bswap32(v27);
  v27 = 0;
  IIOImageReadSession::getBytesAtOffset(this[3], &v27, v12 + 75, 4);
  v18 = v27;
  if ((v26 & 1) != 0 || (v35 = v29, *v36 = v30, HIDWORD(v26) = v17, (v25 = malloc_type_calloc(1uLL, v17, 0x100004077774924uLL)) != 0))
  {
    v21 = v35 == v29 && *(&v35 + 1) == *(&v29 + 1) && *v36 == v30 && *&v36[8] == *(&v30 + 1);
    if (v21 && v17 == HIDWORD(v26))
    {
      v22 = bswap32(v18);
      v23 = v14 - 77;
      if (v22 + v23 > v17)
      {
        goto LABEL_52;
      }

      v11 = v25;
      IIOImageReadSession::getBytesAtOffset(this[3], &v25[v22], v12 + 79, v14 - 77);
      v10 = v24 + v23;
    }

    else
    {
      v10 = v24;
      v11 = v25;
    }

    LOBYTE(v26) = 1;
    goto LABEL_44;
  }

  v25 = 0;
LABEL_52:
  HIDWORD(v26) = v17;
  v10 = v24;
  v11 = v25;
  if (v25)
  {
LABEL_46:
    if (!HIDWORD(v26) || v10 != HIDWORD(v26) || !v8 || !v9)
    {
      goto LABEL_53;
    }

    MetadataFromExtendedXMPData = CreateMetadataFromExtendedXMPData(v8, v9, v11);
    free(v8);
    goto LABEL_60;
  }

LABEL_53:
  if (v8 && v9)
  {
    MetadataFromExtendedXMPData = CreateMetadataFromXMPBuffer(v8, v9);
    free(v8);
    if (!v11)
    {
      return MetadataFromExtendedXMPData;
    }

    goto LABEL_60;
  }

  if (v8)
  {
    free(v8);
  }

  MetadataFromExtendedXMPData = 0;
  if (v11)
  {
LABEL_60:
    free(v11);
  }

  return MetadataFromExtendedXMPData;
}

uint64_t IIO_TerminateXMPToolkit()
{
  v0 = pthread_mutex_lock(&xmpLock);
  WXMPFiles_Terminate_1(v0);
  WXMPMeta_Terminate_1(v1);

  return pthread_mutex_unlock(&xmpLock);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::UTF8StringImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::UTF8StringImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 448) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

void std::__tree<std::__value_type<std::string,std::vector<XPathStepInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<XPathStepInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<XPathStepInfo>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<XPathStepInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<XPathStepInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<XPathStepInfo>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<XPathStepInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<XPathStepInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<XPathStepInfo>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:fe200100]<std::pair<std::string const,std::vector<XPathStepInfo>>,0>((a2 + 4));

    operator delete(a2);
  }
}

double XMPMeta::Terminate(XMPMeta *this)
{
  if (!--sXMP_InitCount)
  {
    v21 = v1;
    v5 = kdebug_trace();
    v6 = XMPIterator::Terminate(v5);
    v7 = XMPUtils::Terminate(v6);
    AdobeXMPCore_Int::INameSpacePrefixMap_I::DestroyDefaultNameSapcePrefixMap(v7);
    AdobeXMPCore_Int::IDOMImplementationRegistry_I::DestoryDOMImplementationRegistry(v8);
    v10 = AdobeXMPCore::ICoreObjectFactory_v1::DestroyCoreObjectFactory(v9);
    AdobeXMPCore_Int::ICoreConfigurationManager_I::DestroyCoreConfigurationManager(v10);
    _cg_jpeg_mem_term(v11, v12, v13);
    if (sDefaultNamespacePrefixMapLock)
    {
      XMP_ReadWriteLock::~XMP_ReadWriteLock(sDefaultNamespacePrefixMapLock);
      MEMORY[0x186602850]();
    }

    sDefaultNamespacePrefixMapLock = 0;
    sUseNewCoreAPIs = 0;
    v16 = sRegisteredNamespaces;
    if (sRegisteredNamespaces)
    {
      v16 = (*(*sRegisteredNamespaces + 8))(sRegisteredNamespaces);
    }

    sRegisteredNamespaces = 0;
    v17 = sRegisteredAliasMap;
    if (sRegisteredAliasMap)
    {
      std::__tree<std::__value_type<std::string,std::vector<XPathStepInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<XPathStepInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<XPathStepInfo>>>>::destroy(sRegisteredAliasMap, *(sRegisteredAliasMap + 8));
      v16 = MEMORY[0x186602850](v17, 0x1020C4062D53EE8);
    }

    sRegisteredAliasMap = 0;
    v18 = xdefaultName;
    if (xdefaultName)
    {
      if (*(xdefaultName + 23) < 0)
      {
        operator delete(*xdefaultName);
      }

      v16 = MEMORY[0x186602850](v18, 0x1012C40EC159624);
    }

    xdefaultName = 0;
    _cg_jpeg_mem_term(v16, v14, v15, v2, v21, v3, v4);
    if (sDefaultErrorCallback(void)::onceToken != -1)
    {
      XMPMeta::XMPMeta();
    }

    v19 = gDefaultErrorCallback;
    *(gDefaultErrorCallback + 24) = 0;
    *(v19 + 32) = 0u;
    *&result = 1;
    *(v19 + 8) = 1;
    *(v19 + 16) = 0;
  }

  return result;
}

void std::__tree<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,std::__map_value_compare<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,AdobeXMPCore_Int::IUTF8StringComparator,true>,std::allocator<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,std::__map_value_compare<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,AdobeXMPCore_Int::IUTF8StringComparator,true>,std::allocator<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,std::__map_value_compare<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,AdobeXMPCore_Int::IUTF8StringComparator,true>,std::allocator<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:fe200100]<std::pair<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::SharedMutexImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::SharedMutexImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 120) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:fe200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

void AdobeXMPCore_Int::UTF8StringImpl::~UTF8StringImpl(void **this)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((v1 + 56), off_1EF4E4150);

  JUMPOUT(0x186602850);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((v1 + 56), off_1EF4E4150);
}

void IIODictionary::appendDictionary(IIODictionary *this, const __CFDictionary *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    IIODictionaryAppendDictionary(v2, a2, 1);
  }
}

void AdobeXMPCore_Int::NameSpacePrefixMapImpl::~NameSpacePrefixMapImpl(AdobeXMPCore_Int::NameSpacePrefixMapImpl *this)
{
  AdobeXMPCore_Int::ThreadSafeImpl::~ThreadSafeImpl((v2 + 96), off_1EF4FBA68);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 72), off_1EF4FBA50);
}

{
  AdobeXMPCore_Int::NameSpacePrefixMapImpl::~NameSpacePrefixMapImpl(this);

  JUMPOUT(0x186602850);
}

void AdobeXMPCore_Int::IDOMImplementationRegistry_I::DestoryDOMImplementationRegistry(AdobeXMPCore_Int::IDOMImplementationRegistry_I *this)
{
  AdobeXMPCore_Int::ManageDOMImplementationRegistry(1, &v2);
  v1 = v3;
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:fe200100](v1);
  }
}

void virtual thunk toAdobeXMPCore_Int::UTF8StringImpl::~UTF8StringImpl(void *a1)
{
  AdobeXMPCore_Int::UTF8StringImpl::~UTF8StringImpl((a1 + *(*a1 - 48)));
}

{
  v2 = (v1 + 56);

  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4E4150);
}

void virtual thunk toAdobeXMPCore_Int::SharedMutexImpl::~SharedMutexImpl(AdobeXMPCore_Int::SharedMutexImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + *(*this - 48) + 8), off_1EF4DFD00);

  JUMPOUT(0x186602850);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + *(*this - 48) + 8), off_1EF4DFD00);
}

unint64_t *AdobeXMPCore_Int::SharedObjectImpl::Release(unint64_t *this)
{
  v1 = atomic_load(this + 1);
  if (!v1 || atomic_fetch_add(this + 1, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    return (*(*this + 32))();
  }

  return this;
}

void XMP_NamespaceTable::~XMP_NamespaceTable(XMP_NamespaceTable *this)
{
  *this = &unk_1EF4FD088;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 240, *(this + 31));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 216, *(this + 28));
  XMP_ReadWriteLock::~XMP_ReadWriteLock((this + 8));
}

{
  XMP_NamespaceTable::~XMP_NamespaceTable(this);

  JUMPOUT(0x186602850);
}

void AdobeXMPCore_Int::ThreadSafeImpl::~ThreadSafeImpl(AdobeXMPCore_Int::ThreadSafeImpl *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 96)) = a2[1];
  *(this + *(*this - 72)) = a2[2];
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }
}

void AdobeXMPCore_Int::UTF8StringImpl::~UTF8StringImpl(void **this, void **a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 55)) = a2[1];
  *(this + *(*this - 51)) = a2[2];
  *(this + *(*this - 7)) = a2[3];
  *(this + *(*this - 8)) = a2[4];
  *(this + *(*this - 52)) = a2[5];
  *(this + *(*this - 56)) = a2[6];
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v4 = this[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void AdobeXMPCore_Int::ICoreConfigurationManager_I::DestroyCoreConfigurationManager(AdobeXMPCore_Int::ICoreConfigurationManager_I *this)
{
  AdobeXMPCore_Int::ManageCoreConfigurationManager(1, &v2);
  v1 = v3;
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:fe200100](v1);
  }
}

void AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(AdobeXMPCore_Int::SharedObjectImpl *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 72)) = a2[1];
  *(this + *(*this - 56)) = a2[2];
  if (atomic_load(this + 1))
  {
    __assert_rtn("~SharedObjectImpl", "SharedObjectImpl.cpp", 32, "mRefCount == 0");
  }
}

uint64_t AdobeXMPCore_Int::ManageCoreObjectFactory(AdobeXMPCore_Int *this)
{
  if ((atomic_load_explicit(&qword_1ED56A248, memory_order_acquire) & 1) == 0)
  {
    AdobeXMPCore_Int::ManageCoreObjectFactory();
  }

  return &_MergedGlobals_10 + *(_MergedGlobals_10 - 216);
}

void AdobeXMPCore_Int::ManageDOMImplementationRegistry(AdobeXMPCore_Int *this@<X0>, uint64_t *a2@<X8>)
{
  v2 = this;
  if ((atomic_load_explicit(_MergedGlobals_9, memory_order_acquire) & 1) == 0)
  {
    AdobeXMPCore_Int::ManageDOMImplementationRegistry();
  }

  v4 = qword_1ED56A230;
  if (v2)
  {
    if (qword_1ED56A230)
    {
      v5 = qword_1ED56A238;
      qword_1ED56A230 = 0;
      qword_1ED56A238 = 0;
      if (!v5)
      {
        *a2 = 0;
        a2[1] = 0;
        return;
      }

      std::__shared_weak_count::__release_shared[abi:fe200100](v5);
      v4 = qword_1ED56A230;
    }
  }

  else if (!qword_1ED56A230)
  {
    operator new();
  }

  v6 = qword_1ED56A238;
  *a2 = v4;
  a2[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_185EB7E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void XMP_ReadWriteLock::~XMP_ReadWriteLock(XMP_ReadWriteLock *this)
{
  if (atomic_load(this + 50))
  {
    v2 = "this->lockCount == 0";
    v3 = 70;
    goto LABEL_6;
  }

  if (pthread_rwlock_destroy(this))
  {
    v2 = "err == 0";
    v3 = 72;
LABEL_6:
    __assert_rtn("~XMP_ReadWriteLock", "XMP_LibUtils.cpp", v3, v2);
  }
}

void AdobeXMPCore_Int::ManageCoreConfigurationManager(AdobeXMPCore_Int *this@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(_MergedGlobals_8, memory_order_acquire) & 1) == 0)
  {
    v5 = this;
    AdobeXMPCore_Int::ManageCoreConfigurationManager();
    LODWORD(this) = v5;
  }

  if (this)
  {
    v3 = qword_1ED56A218;
    qword_1ED56A210 = 0;
    qword_1ED56A218 = 0;
    if (!v3)
    {
      *a2 = 0;
      a2[1] = 0;
      return;
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  else if (!qword_1ED56A210)
  {
    operator new();
  }

  v4 = qword_1ED56A218;
  *a2 = qword_1ED56A210;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t read_fn(void (**a1)(void), unsigned __int8 *a2, uint64_t a3)
{
  io_ptr = _cg_png_get_io_ptr(a1);
  result = IIOImageReadSession::getBytes(io_ptr, a2, a3);
  if (result != a3)
  {
    _cg_png_error(a1, "");
  }

  return result;
}

void png_handle_tEXt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v22 = 0u;
  v23 = 0u;
  v6 = *(a1 + 1068);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6 - 1;
  if (!v7)
  {

    png_crc_finish(a1, a3);
    return;
  }

  *(a1 + 1068) = v7;
  if (v7 == 1)
  {
    png_crc_finish(a1, a3);
    v8 = "no space in chunk cache";
  }

  else
  {
LABEL_8:
    v9 = *(a1 + 76);
    if ((v9 & 1) == 0)
    {
      png_chunk_error(a1, "missing IHDR");
    }

    if ((v9 & 4) != 0)
    {
      *(a1 + 76) = v9 | 8;
    }

    buffer = png_read_buffer(a1, (a3 + 1), 1);
    if (buffer)
    {
      v12 = buffer;
      v13 = v11;
      if (v11 >= buffer && v11 - buffer >= v3)
      {
        png_crc_read(a1, buffer, v3);
        if (png_crc_finish(a1, 0))
        {
          return;
        }

        v14 = v3;
        v15 = (v12 + v3);
        if (v15 < v13 && v15 >= v12)
        {
          *v15 = 0;
          if (v13 > v12)
          {
            v16 = v12;
            while (*v16)
            {
              if (++v16 < v13)
              {
                --v14;
                if (v16 >= v12)
                {
                  continue;
                }
              }

              goto LABEL_22;
            }

            v17 = v14 == 0;
            v18 = v14 != 0;
            if (v17)
            {
              v19 = v16;
            }

            else
            {
              v19 = v16 + 1;
            }

            LODWORD(v22) = -1;
            if ((v15 + 1) >= v15 && v15 + 1 <= v13)
            {
              *(&v22 + 1) = v12;
              v24 = 0;
              v25 = 0;
              v26 = 0;
              if (v19 >= v12 && v19 < v13)
              {
                while (&v16[v18 + 1] <= v13)
                {
                  if (!v16[v18++])
                  {
                    *&v23 = v19;
                    *(&v23 + 1) = strlen(v19);
                    png_set_text_2(a1, a2, &v22, 1);
                    if (v21)
                    {
                      png_warning(a1, "Insufficient memory to process text chunk");
                    }

                    return;
                  }
                }
              }
            }
          }
        }
      }

LABEL_22:
      __break(0x5519u);
    }

    v8 = "out of memory";
  }

  png_chunk_benign_error(a1, v8);
}

void png_set_text_2(void (**a1)(void), uint64_t a2, uint64_t a3, signed int a4)
{
  if (!a1)
  {
    return;
  }

  v4 = a2;
  if (!a2 || a4 < 1 || !a3)
  {
    return;
  }

  v7 = *(a2 + 164);
  v8 = *(a2 + 168);
  if ((v8 - v7) < a4)
  {
    if ((v7 ^ 0x7FFFFFFF) < a4 || ((v7 + a4) >= 2147483639 ? (v9 = 0x7FFFFFFF) : (v9 = ((v7 + a4) & 0xFFFFFFF8) + 8), (v10 = png_realloc_array(a1, *(a2 + 176), *(a2 + 176) + 88 * v8, v7, v9 - v7, 0x58uLL)) == 0))
    {
      v58 = "too many text chunks";
      goto LABEL_88;
    }

    v12 = v10;
    v13 = v11;
    png_free(a1, *(v4 + 176));
    if (v13 < v12 || v9 < 0 || 0x2E8BA2E8BA2E8BA3 * ((v13 - v12) >> 3) < v9)
    {
LABEL_90:
      __break(0x5519u);
      return;
    }

    v4 = a2;
    *(a2 + 176) = v12;
    *(a2 + 340) |= 0x4000u;
    *(a2 + 168) = v9;
  }

  v14 = a4;
  for (i = (a3 + 48); ; i += 7)
  {
    v16 = *(i - 5);
    if (!v16)
    {
      goto LABEL_84;
    }

    v17 = *(i - 12);
    if ((v17 - 3) <= 0xFFFFFFFB)
    {
      png_chunk_report(a1, "text compression mode is out of range", 1);
      goto LABEL_84;
    }

    v18 = *(v4 + 164);
    v19 = *(v4 + 168);
    v20 = *(v4 + 176);
    v21 = strlen(v16);
    if (v17 < 1)
    {
      v24 = 0;
      v23 = 0;
    }

    else
    {
      v22 = *(i - 1);
      v23 = v22 ? strlen(v22) : 0;
      v24 = *i ? strlen(*i) : 0;
    }

    v25 = v20 + 88 * v19;
    v26 = *(i - 4);
    v27 = v20 + 88 * v18;
    if (v26 && *v26)
    {
      if (v20 > v27 || v27 + 88 > v25)
      {
        goto LABEL_90;
      }

      v29 = strlen(v26);
    }

    else
    {
      if (v17 < 1)
      {
        v17 = -1;
      }

      else
      {
        v17 = 1;
      }

      if (v20 > v27 || v27 + 88 > v25)
      {
        goto LABEL_90;
      }

      v29 = 0;
    }

    *v27 = v17;
    v31 = v21 + v24 + v23 + v29 + 4;
    v32 = malloc_type_malloc(v31, 0x3F17B187uLL);
    v33 = &v32[v31];
    if (!v32)
    {
      v33 = 0;
    }

    *(v27 + 16) = v33;
    v34 = (v27 + 16);
    *(v27 + 8) = v32;
    if (!v32)
    {
      break;
    }

    if ((v31 & 0x8000000000000000) != 0)
    {
      goto LABEL_90;
    }

    v35 = *(i - 5);
    if (v35 > &v35[v21])
    {
      goto LABEL_90;
    }

    if (v21 > v31)
    {
      goto LABEL_90;
    }

    v36 = v32;
    memcpy(v32, v35, v21);
    if (v36 > &v36[v21])
    {
      goto LABEL_90;
    }

    v37 = *(v27 + 8);
    v38 = (v37 + v21);
    if (v37 + v21 >= *(v27 + 16) || v38 < v37)
    {
      goto LABEL_90;
    }

    *v38 = 0;
    if (*(i - 12) < 1)
    {
      *(v27 + 72) = 0u;
      *(v27 + 56) = 0u;
      v50 = *(v27 + 8);
      v51 = v50 + v21;
    }

    else
    {
      v39 = *(v27 + 8);
      v40 = (v39 + v21 + 1);
      if (v40 < v39)
      {
        goto LABEL_90;
      }

      v41 = *(v27 + 16);
      *(v27 + 56) = v40;
      *(v27 + 64) = v41;
      v42 = *(i - 1);
      if (v42 > &v42[v23])
      {
        goto LABEL_90;
      }

      if (v40 > v41)
      {
        goto LABEL_90;
      }

      if (v23 > v41 - v40)
      {
        goto LABEL_90;
      }

      memcpy(v40, v42, v23);
      if (v40 > &v40[v23])
      {
        goto LABEL_90;
      }

      v43 = *(v27 + 56);
      v44 = (v43 + v23);
      if (v43 + v23 >= *(v27 + 64))
      {
        goto LABEL_90;
      }

      if (v44 < v43)
      {
        goto LABEL_90;
      }

      *v44 = 0;
      v45 = *(v27 + 56);
      v46 = (v45 + v23 + 1);
      if (v46 < v45)
      {
        goto LABEL_90;
      }

      v47 = *(v27 + 64);
      *(v27 + 80) = v47;
      v34 = (v27 + 80);
      *(v27 + 72) = v46;
      if (*i > &(*i)[v24])
      {
        goto LABEL_90;
      }

      if (v46 > v47)
      {
        goto LABEL_90;
      }

      if (v24 > v47 - v46)
      {
        goto LABEL_90;
      }

      memcpy(v46, *i, v24);
      if (v46 > &v46[v24])
      {
        goto LABEL_90;
      }

      v48 = *(v27 + 72);
      v49 = (v48 + v24);
      if (v48 + v24 >= *(v27 + 80) || v49 < v48)
      {
        goto LABEL_90;
      }

      *v49 = 0;
      v50 = *(v27 + 72);
      v51 = v50 + v24;
    }

    v52 = (v51 + 1);
    if (v51 + 1 < v50)
    {
      goto LABEL_90;
    }

    v53 = *v34;
    *(v27 + 24) = v52;
    *(v27 + 32) = v53;
    if (v29)
    {
      v54 = *(i - 4);
      if (v54 > &v54[v29])
      {
        goto LABEL_90;
      }

      if (v52 > v53)
      {
        goto LABEL_90;
      }

      if (v29 > v53 - v52)
      {
        goto LABEL_90;
      }

      memcpy(v52, v54, v29);
      if (v52 > &v52[v29])
      {
        goto LABEL_90;
      }

      v52 = *(v27 + 24);
      v53 = *(v27 + 32);
    }

    v55 = &v52[v29];
    if (&v52[v29] >= v53 || v55 < v52)
    {
      goto LABEL_90;
    }

    *v55 = 0;
    if (*v27 <= 0)
    {
      v56 = v29;
    }

    else
    {
      v56 = 0;
    }

    if (*v27 <= 0)
    {
      v57 = 0;
    }

    else
    {
      v57 = v29;
    }

    *(v27 + 40) = v56;
    *(v27 + 48) = v57;
    v4 = a2;
    ++*(a2 + 164);
LABEL_84:
    if (!--v14)
    {
      return;
    }
  }

  v58 = "text chunk: out of memory";
LABEL_88:
  png_chunk_report(a1, v58, 1);
}

void png_handle_iTXt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 1068);
  if (v6)
  {
    v7 = v6 - 1;
    if (!v7)
    {

      png_crc_finish(a1, a3);
      return;
    }

    *(a1 + 1068) = v7;
    if (v7 == 1)
    {
      png_crc_finish(a1, a3);
      v8 = "no space in chunk cache";
LABEL_30:

      png_chunk_benign_error(a1, v8);
      return;
    }
  }

  v9 = *(a1 + 76);
  if ((v9 & 1) == 0)
  {
LABEL_95:
    png_chunk_error(a1, "missing IHDR");
  }

  if ((v9 & 4) != 0)
  {
    *(a1 + 76) = v9 | 8;
  }

  buffer = png_read_buffer(a1, (a3 + 1), 1);
  if (!buffer)
  {
    png_crc_finish(a1, a3);
    v8 = "out of memory";
    goto LABEL_30;
  }

  v12 = buffer;
  v13 = v11;
  if (v11 < buffer || v11 - buffer < a3)
  {
    goto LABEL_94;
  }

  png_crc_read(a1, buffer, a3);
  if (png_crc_finish(a1, 0))
  {
    return;
  }

  if (!a3)
  {
    goto LABEL_26;
  }

  v14 = 0;
  do
  {
    v15 = (v12 + v14);
    if (v12 + v14 >= v13 || v15 < v12)
    {
      goto LABEL_94;
    }

    if (!*v15)
    {
      goto LABEL_25;
    }

    ++v14;
  }

  while (a3 != v14);
  LODWORD(v14) = a3;
LABEL_25:
  if ((v14 - 80) < 0xFFFFFFB1)
  {
LABEL_26:
    v17 = "bad keyword";
LABEL_27:
    png_chunk_benign_error(a1, v17);
    return;
  }

  if (v14 + 5 > a3)
  {
    v17 = "truncated";
    goto LABEL_27;
  }

  v18 = v12 + v14;
  v19 = (v18 + 1);
  if ((v18 + 1) >= v13 || v19 < v12)
  {
    goto LABEL_94;
  }

  v20 = *v19;
  if (*v19)
  {
    if (v20 != 1)
    {
LABEL_42:
      v17 = "bad compression info";
      goto LABEL_27;
    }

    v21 = (v18 + 2);
    if (v21 >= v13 || v21 < v12)
    {
      goto LABEL_94;
    }

    if (*v21)
    {
      goto LABEL_42;
    }
  }

  v22 = (v14 + 3);
  v23 = (v12 + v22);
  v24 = v14 + 3;
  do
  {
    if (v23 >= v13 || v23 < v12)
    {
      goto LABEL_94;
    }

    if (!*v23)
    {
      goto LABEL_49;
    }

    ++v24;
    v23 = (v23 + 1);
  }

  while (a3 != v24);
  v24 = a3;
LABEL_49:
  v25 = (v24 + 1);
  if (v25 >= a3)
  {
    v27 = v24 + 1;
  }

  else
  {
    v26 = (v12 + v25);
    v27 = v24 + 1;
    do
    {
      if (v26 >= v13 || v26 < v12)
      {
        goto LABEL_94;
      }

      if (!*v26)
      {
        goto LABEL_57;
      }

      ++v27;
      v26 = (v26 + 1);
    }

    while (a3 != v27);
    v27 = a3;
  }

LABEL_57:
  v28 = (v27 + 1);
  if (*v19 || a3 < v28)
  {
    v17 = "truncated";
    if (!*v19 || a3 <= v28)
    {
      goto LABEL_27;
    }

    v48 = -1;
    png_decompress_chunk(a1, a3, v28, &v48);
    if (v43 == 1)
    {
      v12 = *(a1 + 1120);
      v13 = *(a1 + 1128);
    }

    else
    {
      v17 = *(a1 + 144);
      if (v17)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v48 = (a3 - v28);
  }

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v29 = v48;
  v30 = (v12 + v48 + v28);
  if (v30 >= v13 || v30 < v12)
  {
    goto LABEL_94;
  }

  *v30 = 0;
  v32 = v20 ? 2 : 1;
  LODWORD(v44) = v32;
  v33 = v12 + 1;
  do
  {
    if (v33 > v13)
    {
      goto LABEL_94;
    }
  }

  while (*(v33++ - 1));
  *(&v44 + 1) = v12;
  if ((v12 + v22) < v12 || v12 + v22 >= v13)
  {
    goto LABEL_94;
  }

  v35 = v12 + v22 + 1;
  do
  {
    if (v35 > v13)
    {
      goto LABEL_94;
    }
  }

  while (*(v35++ - 1));
  *(&v46 + 1) = v12 + v22;
  v37 = v12 + v25;
  if (v37 < v12 || v37 >= v13)
  {
    goto LABEL_94;
  }

  v38 = v12 + v25 + 1;
  do
  {
    if (v38 > v13)
    {
      goto LABEL_94;
    }
  }

  while (*(v38++ - 1));
  v47 = v12 + v25;
  if ((v12 + v28) < v12 || v12 + v28 >= v13)
  {
LABEL_94:
    __break(0x5519u);
    goto LABEL_95;
  }

  v40 = v12 + v28 + 1;
  do
  {
    if (v40 > v13)
    {
      goto LABEL_94;
    }
  }

  while (*(v40++ - 1));
  *&v45 = v12 + v28;
  *&v46 = v29;
  png_set_text_2(a1, a2, &v44, 1);
  if (v42)
  {
    v17 = "insufficient memory";
    goto LABEL_27;
  }
}

uint64_t PNGReadPlugin::Update_png_struct(uint64_t a1, _BYTE *a2, uint64_t a3, unsigned int *a4)
{
  if (a2[32] == 1)
  {
    _cg_png_set_palette_to_rgb(a3);
    if ((gIIODebugFlags & 0x20000) != 0)
    {
      v8 = *(a1 + 20);
      v9 = v8 >> 24;
      if ((v8 >> 24) <= 0x7F)
      {
        v10 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
      }

      else
      {
        v10 = __maskrune(v9, 0x40000uLL);
        v8 = *(a1 + 20);
        v9 = v8 >> 24;
      }

      if (v10)
      {
        v11 = v9;
      }

      else
      {
        v11 = 46;
      }

      v12 = v8 << 8 >> 24;
      if (v12 <= 0x7F)
      {
        v13 = *(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000;
      }

      else
      {
        v13 = __maskrune(v12, 0x40000uLL);
        v8 = *(a1 + 20);
        v12 = v8 << 8 >> 24;
      }

      if (v13)
      {
        v14 = v12;
      }

      else
      {
        v14 = 46;
      }

      v15 = v8 >> 8;
      if (v15 <= 0x7F)
      {
        v16 = *(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x40000;
      }

      else
      {
        v16 = __maskrune(v15, 0x40000uLL);
        v8 = *(a1 + 20);
        v15 = v8 >> 8;
      }

      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = 46;
      }

      v18 = v8;
      if (v8 <= 0x7F)
      {
        v19 = *(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x40000;
      }

      else
      {
        v19 = __maskrune(v8, 0x40000uLL);
        v18 = *(a1 + 20);
      }

      if (v19)
      {
        v20 = v18;
      }

      else
      {
        v20 = 46;
      }

      ImageIOLog("♦️  '%c%c%c%c' %d: png_set_palette_to_rgb\n", v11, v14, v17, v20, 2554);
    }
  }

  if (!a2[19] && _cg_png_get_bit_depth(a3, a4) <= 7)
  {
    _cg_png_set_expand_gray_1_2_4_to_8(a3);
  }

  if (a2[28] == 1)
  {
    _cg_png_set_palette_to_rgb(a3);
  }

  else if (a2[27] == 1)
  {
    _cg_png_set_add_alpha(a3, 255, 1);
    if ((gIIODebugFlags & 0x20000) != 0)
    {
      v21 = *(a1 + 20);
      if ((v21 >> 24) > 0x7F)
      {
        __maskrune(v21 >> 24, 0x40000uLL);
        v21 = *(a1 + 20);
      }

      v23 = v21 << 8 >> 24;
      if (v23 > 0x7F)
      {
        __maskrune(v23, 0x40000uLL);
        v21 = *(a1 + 20);
      }

      v24 = v21 >> 8;
      if (v24 > 0x7F)
      {
        __maskrune(v24, 0x40000uLL);
        v21 = *(a1 + 20);
      }

      if (v21 > 0x7F)
      {
        __maskrune(v21, 0x40000uLL);
      }

      ImageIOLog("♦️  '%c%c%c%c' %d: png_set_add_alpha: PNG_FILLER_AFTER\n");
    }
  }

  else if (a2[26] == 1)
  {
    _cg_png_set_filler(a3, 255, 0);
    if ((gIIODebugFlags & 0x20000) != 0)
    {
      v22 = *(a1 + 20);
      if ((v22 >> 24) > 0x7F)
      {
        __maskrune(v22 >> 24, 0x40000uLL);
        v22 = *(a1 + 20);
      }

      v25 = v22 << 8 >> 24;
      if (v25 > 0x7F)
      {
        __maskrune(v25, 0x40000uLL);
        v22 = *(a1 + 20);
      }

      v26 = v22 >> 8;
      if (v26 > 0x7F)
      {
        __maskrune(v26, 0x40000uLL);
        v22 = *(a1 + 20);
      }

      if (v22 > 0x7F)
      {
        __maskrune(v22, 0x40000uLL);
      }

      ImageIOLog("♦️  '%c%c%c%c' %d: png_set_filler: PNG_FILLER_BEFORE\n");
    }
  }

  return _cg_png_read_update_info(a3, a4);
}

uint64_t png_init_filter_functions(uint64_t a1)
{
  v1 = *(a1 + 434);
  *(a1 + 1168) = png_read_filter_row_sub;
  *(a1 + 1176) = png_read_filter_row_up;
  v2 = (v1 + 7) >> 3;
  *(a1 + 1184) = png_read_filter_row_avg;
  v3 = png_read_filter_row_paeth_multibyte_pixel;
  if (v2 == 1)
  {
    v3 = png_read_filter_row_paeth_1byte_pixel;
  }

  *(a1 + 1192) = v3;
  return png_init_filter_functions_apple(a1, v2);
}

uint64_t png_init_filter_functions_apple(void *a1, int a2)
{
  a1[147] = png_read_filter_row_up_apple_vector;
  a1[146] = png_read_filter_row_sub_apple_neon;
  if (a2 == 4)
  {
    a1[149] = png_read_filter_row_paeth4_apple;
    a1[146] = png_read_filter_row_sub4_a64;
    v4 = png_read_filter_row_avg4_a64;
  }

  else
  {
    if (a2 != 3)
    {
      goto LABEL_6;
    }

    a1[149] = png_read_filter_row_paeth3_apple;
    v4 = png_read_filter_row_avg3_apple;
  }

  a1[148] = v4;
LABEL_6:
  result = AppleGetCPUCapabilities();
  if (a2 == 4 && (result & 0x100) != 0)
  {
    a1[146] = png_read_filter_row_sub_neon;
    a1[147] = png_read_filter_row_up_4bpp_neon;
    a1[148] = png_read_filter_row_avg_neon;
    a1[149] = png_read_filter_row_paeth_neon;
  }

  return result;
}

uint64_t AppleGetCPUCapabilities()
{
  if (AppleGetCPUCapabilities::onceToken != -1)
  {
    AppleGetCPUCapabilities_cold_1();
  }

  return AppleGetCPUCapabilities::gImageIO_cpu_capabilities;
}

uint64_t png_read_filter_row(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  if (a7 - 1 < 4)
  {
    v13 = result + 1168;
    v14 = result + 1200;
    if (!*(result + 1168))
    {
      v15 = *(result + 434);
      *(result + 1168) = png_read_filter_row_sub;
      *(result + 1176) = png_read_filter_row_up;
      v16 = (v15 + 7) >> 3;
      *(result + 1184) = png_read_filter_row_avg;
      v17 = png_read_filter_row_paeth_multibyte_pixel;
      if (v16 == 1)
      {
        v17 = png_read_filter_row_paeth_1byte_pixel;
      }

      *(result + 1192) = v17;
      result = png_init_filter_functions_apple(result, v16);
    }

    v18 = v13 + 8 * a7;
    v19 = (v18 - 8);
    if (v18 - 8 < v13 || v18 > v14 || v19 >= v18)
    {
      __break(0x5519u);
    }

    else
    {
      v22 = *v19;

      return v22(a2, a3, a4, a5, a6);
    }
  }

  return result;
}

unsigned int *png_read_filter_row_sub_apple_neon(unsigned int *result, unint64_t a2, unint64_t a3, unsigned int *a4, unint64_t a5)
{
  v5 = *(result + 19);
  v6 = (v5 + 7) >> 3;
  v7 = *(result + 1);
  v8 = v7 - v6;
  v9 = v6 == 3 && v8 >= 0x1D;
  if (!v9)
  {
    v10 = (a2 + v6);
    if (*(result + 20))
    {
      v11 = a5;
    }

    else
    {
      v11 = a3;
    }

    if (*(result + 20))
    {
      v12 = a4;
    }

    else
    {
      v12 = a2;
    }

    if (v5 == 32)
    {
      if (a2 + 4 > a3 || a2 + 4 < a2)
      {
        goto LABEL_59;
      }

      v13 = *a2;
      v14 = (a2 + v6);
      if (*(result + 20))
      {
        v14 = a4 + 1;
        if ((a4 + 1) > a5 || v14 < a4)
        {
          goto LABEL_59;
        }

        *a4 = v13;
      }

      if (v6 < v7 - 3)
      {
        v15 = (a2 + v6);
        result = v14;
        v16 = a2;
        while (v15 >= a2)
        {
          v10 = v15 + 4;
          if ((v15 + 4) > a3)
          {
            break;
          }

          if (v15 > v10)
          {
            break;
          }

          if (result < v12)
          {
            break;
          }

          v14 = result + 1;
          if ((result + 1) > v11 || result > v14)
          {
            break;
          }

          v13 = ((*v15 & 0x7F7F7F7F) + (v13 & 0x7F7F7F7F)) ^ (*v15 ^ v13) & 0x80808080;
          *result = v13;
          v16 += 4;
          LODWORD(v6) = v6 + 4;
          v15 += 4;
          ++result;
          if (v6 >= v7 - 3)
          {
            goto LABEL_49;
          }
        }

        goto LABEL_59;
      }

LABEL_46:
      v16 = a2;
    }

    else if (*(result + 20))
    {
      if (*(result + 19))
      {
        v26 = (v5 + 7) >> 3;
        v27 = a2;
        v14 = a4;
        while (v27 < a3 && v27 >= a2 && v14 < v11 && v14 >= v12)
        {
          v28 = *v27++;
          *v14 = v28;
          v14 = (v14 + 1);
          if (!--v26)
          {
            goto LABEL_46;
          }
        }

        goto LABEL_59;
      }

      LODWORD(v6) = 0;
      v16 = a2;
      v14 = a4;
    }

    else
    {
      v16 = a2;
      v14 = (a2 + v6);
    }

LABEL_49:
    v9 = v7 >= v6;
    v29 = v7 - v6;
    if (v29 == 0 || !v9)
    {
      return result;
    }

    while (v10 < a3 && v10 >= a2 && v16 < a3 && v16 >= a2 && v14 < v11 && v14 >= v12)
    {
      v31 = *v10++;
      v30 = v31;
      v32 = *v16++;
      *v14 = v32 + v30;
      v14 = (v14 + 1);
      if (!--v29)
      {
        return result;
      }
    }

LABEL_59:
    __break(0x5519u);
    return result;
  }

  v17 = *(a2 + 16);
  v18 = vaddq_s8(vaddq_s8(vaddq_s8(vextq_s8(0, *a2, 0xAuLL), *a2), vaddq_s8(vextq_s8(0, *a2, 0xDuLL), vextq_s8(0, *a2, 7uLL))), vaddq_s8(vextq_s8(0, *a2, 4uLL), vextq_s8(0, *a2, 1uLL)));
  v19 = vaddq_s8(vaddq_s8(vaddq_s8(vaddq_s8(vextq_s8(*a2, v17, 0xAuLL), v17), vaddq_s8(vextq_s8(*a2, v17, 0xDuLL), vextq_s8(*a2, v17, 7uLL))), vaddq_s8(vextq_s8(*a2, v17, 4uLL), vextq_s8(*a2, v17, 1uLL))), vextq_s8(0, v18, 0xEuLL));
  *a2 = v18;
  *(a2 + 16) = v19;
  v20 = (a2 + 32);
  v21 = v8 - 29;
  if (v21 >= 0x10)
  {
    do
    {
      v22 = *v20;
      v23 = vaddq_s8(vaddq_s8(vaddq_s8(*v20, vextq_s8(v18, v19, 0xEuLL)), vextq_s8(v17, *v20, 0xAuLL)), vaddq_s8(vextq_s8(v17, *v20, 0xDuLL), vextq_s8(v17, *v20, 7uLL)));
      v18 = v19;
      v19 = vaddq_s8(v23, vaddq_s8(vextq_s8(v17, *v20, 4uLL), vextq_s8(v17, *v20, 1uLL)));
      *v20++ = v19;
      v21 -= 16;
      v17 = v22;
    }

    while (v21 > 0xF);
  }

  if (v21)
  {
    v24 = -v6;
    while (v20 < a3)
    {
      if (v20 < a2)
      {
        break;
      }

      v25 = &v20->i8[v24];
      if (v20->u64 + v24 >= a3 || v25 < a2)
      {
        break;
      }

      v20->i8[0] += *v25;
      v20 = (v20 + 1);
      if (!--v21)
      {
        return result;
      }
    }

    goto LABEL_59;
  }

  return result;
}

uint64_t png_read_filter_row_paeth3_apple(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, double a6, double a7, double a8, double a9, int8x8_t a10)
{
  v10 = 0;
  v11 = *(result + 8);
  while (1)
  {
    v12 = (a2 + v10);
    v13 = (a4 + v10);
    if (a2 + v10 >= a3 || v13 >= a5)
    {
      break;
    }

    v15 = *v12 + *v13;
    *v12 = v15;
    if (++v10 == 3)
    {
      v16 = (a4 + v10);
      v17 = a4 + v10 - 3;
      if (v17 < a5 && v17 >= a4)
      {
        v18 = a2 + v10 - 3;
        if (v18 < a3 && v18 >= a2 && v16 < a5 && a2 + v10 < a3)
        {
          v19 = a4 + v10 - 2;
          if (v19 < a5 && v19 >= a4)
          {
            v20 = a2 + v10 - 2;
            if (v20 < a3 && v20 >= a2)
            {
              result = a4 + v10;
              v21 = a4 + v10 + 1;
              if (v21 < a5 && v21 >= a4)
              {
                v22 = a2 + v10 + 1;
                if (v22 < a3 && v22 >= a2)
                {
                  v23 = a4 + v10;
                  v24 = a4 + v10 + 2;
                  if (v24 < a5 && v24 >= a4)
                  {
                    v25 = a2 + v10 + 2;
                    if (v25 < a3 && v25 >= a2)
                    {
                      if (v11 < 4)
                      {
                        return result;
                      }

                      v26 = 0;
                      v27 = *(v16 - 3);
                      v28 = *(a2 + v10 - 3);
                      v31.i32[0] = *(a2 + v10 - 2);
                      v29 = *v16;
                      v30 = *(result + 1);
                      result = v23 + 2;
                      v31.i32[1] = v15;
                      v32.i32[0] = *(a4 + v10 - 2);
                      v32.i32[1] = *(v16 - 1);
                      a10.i32[0] = v30;
                      a10.i8[4] = *(v23 + 2);
                      v33 = a2 + v10;
                      v34 = a4 + v10;
                      while (v33 + v26 < a3 && v33 + v26 >= a2)
                      {
                        v35 = v29;
                        v36 = v29 - v27;
                        v37 = v28 - v27;
                        LODWORD(result) = v28 - v27 + v36;
                        if (result >= 0)
                        {
                          result = result;
                        }

                        else
                        {
                          result = -result;
                        }

                        if (v37 < 0)
                        {
                          v37 = v27 - v28;
                        }

                        if (v36 < 0)
                        {
                          v36 = -v36;
                        }

                        if (v37 < v36)
                        {
                          v36 = v37;
                          LOBYTE(v28) = v35;
                        }

                        if (result < v36)
                        {
                          LOBYTE(v28) = v27;
                        }

                        v38 = v33 + v26 + 1;
                        if (v38 >= a3)
                        {
                          break;
                        }

                        if (v38 < a2)
                        {
                          break;
                        }

                        v39 = v33 + v26 + 2;
                        if (v39 >= a3)
                        {
                          break;
                        }

                        if (v39 < a2)
                        {
                          break;
                        }

                        v40 = vand_s8(a10, 0xFF000000FFLL);
                        LOBYTE(v28) = v28 + *(a2 + v26 + v10);
                        v41 = vabd_s32(v31, v32);
                        v42 = vabd_s32(v40, v32);
                        v43 = vbsl_s8(vcgt_u32(vmin_u32(v41, v42), vabs_s32(vadd_s32(vsub_s32(v31, v32), vsub_s32(v40, v32)))), v32, vbsl_s8(vcgt_u32(v42, v41), v40, v31));
                        v44 = (a2 + v26 + v10);
                        v45.i32[0] = v44[1];
                        result = v44[2];
                        v45.i32[1] = v44[2];
                        v46 = vadd_s32(v43, v45);
                        *v44 = v28;
                        v44[1] = v46.i8[0];
                        v44[2] = v46.i8[4];
                        v47 = v34 + v26 + 3;
                        if (v47 >= a5)
                        {
                          break;
                        }

                        if (v47 < a4)
                        {
                          break;
                        }

                        v48 = v34 + v26 + 4;
                        if (v48 >= a5)
                        {
                          break;
                        }

                        if (v48 < a4)
                        {
                          break;
                        }

                        v49 = v34 + v26 + 5;
                        if (v49 >= a5)
                        {
                          break;
                        }

                        if (v49 < a4)
                        {
                          break;
                        }

                        v50 = v33 + v26 + 3;
                        if (v50 >= a3)
                        {
                          break;
                        }

                        if (v50 < a2)
                        {
                          break;
                        }

                        v51 = v33 + v26 + 4;
                        if (v51 >= a3)
                        {
                          break;
                        }

                        if (v51 < a2)
                        {
                          break;
                        }

                        v52 = v33 + v26 + 5;
                        if (v52 >= a3 || v52 < a2)
                        {
                          break;
                        }

                        v28 = v28;
                        v31 = vand_s8(v46, 0xFF000000FFLL);
                        a10.i32[0] = *(a4 + v26 + v10 + 4);
                        a10.i32[1] = *(a4 + v26 + v10 + 5);
                        v29 = *(a4 + v26 + v10 + 3);
                        v26 += 3;
                        v27 = v35;
                        v32 = v40;
                        if (v26 + 3 >= v11)
                        {
                          return result;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      break;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t png_read_filter_row_up_apple_vector(uint64_t result, int8x16_t *a2, unint64_t a3, int8x16_t *a4, unint64_t a5)
{
  v5 = *(result + 8);
  if (v5 >= 0x40)
  {
    v6 = a2;
    v7 = a4;
    while (v7 >= a4)
    {
      v8 = v7 + 4;
      if (&v7[4] > a5)
      {
        break;
      }

      if (v7 > v8)
      {
        break;
      }

      if (v6 < a2)
      {
        break;
      }

      v9 = v6 + 4;
      if (&v6[4] > a3 || v6 > v9)
      {
        break;
      }

      v10 = vaddq_s8(v6[1], v7[1]);
      v11 = vaddq_s8(*v6, *v7);
      v12 = vaddq_s8(v6[3], v7[3]);
      v6[2] = vaddq_s8(v6[2], v7[2]);
      v6[3] = v12;
      *v6 = v11;
      v6[1] = v10;
      v5 -= 64;
      v6 += 4;
      v7 += 4;
      if (v5 <= 0x3F)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_35;
  }

  v8 = a4;
  v9 = a2;
LABEL_12:
  if (v5 >= 0x20)
  {
    if (v8 < a4 || &v8[2] > a5 || v8 > &v8[2] || v9 < a2 || &v9[2] > a3 || v9 > &v9[2])
    {
      goto LABEL_35;
    }

    v13 = vaddq_s8(v9[1], v8[1]);
    *v9 = vaddq_s8(*v9, *v8);
    v9[1] = v13;
    v8 += 2;
    v9 += 2;
    v5 -= 32;
  }

  if (v5 < 0x10)
  {
    goto LABEL_28;
  }

  if (v8 < a4 || &v8[1] > a5 || v8 > &v8[1] || v9 < a2 || &v9[1] > a3 || v9 > &v9[1])
  {
LABEL_35:
    __break(0x5519u);
    return result;
  }

  *v9 = vaddq_s8(*v9, *v8++);
  ++v9;
  v5 -= 16;
LABEL_28:
  if (v5)
  {
    while (v9 < a3 && v9 >= a2 && v8 < a5 && v8 >= a4)
    {
      v14 = v8->i8[0];
      v8 = (v8 + 1);
      v9->i8[0] += v14;
      v9 = (v9 + 1);
      if (!--v5)
      {
        return result;
      }
    }

    goto LABEL_35;
  }

  return result;
}

BOOL WXMPFiles_Initialize_1(XMPFiles *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  *a2 = 0;
  result = XMPFiles::Initialize(a1, 0, 0, a4);
  *(a2 + 32) = result;
  return result;
}

void (**png_write_pHYs(void (**a1)(void), int a2, int a3, int a4))(void)
{
  v4 = a4;
  v10 = *MEMORY[0x1E69E9840];
  if (a4 >= 2)
  {
    png_warning(a1, "Unrecognized unit type for pHYs chunk");
  }

  v9[0] = HIBYTE(a2);
  v9[1] = BYTE2(a2);
  v9[2] = BYTE1(a2);
  v9[3] = a2;
  v9[4] = HIBYTE(a3);
  v9[5] = BYTE2(a3);
  v9[6] = BYTE1(a3);
  v9[7] = a3;
  v9[8] = v4;
  return _cg_png_write_complete_chunk(a1, 1883789683, v9, 9uLL);
}

uint64_t Common::HandlerRegistry::registerNormalHandler(Common::HandlerRegistry *this, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2 == 538976288)
  {
    Common::HandlerRegistry::registerNormalHandler();
  }

  if ((a3 & 0x100) != 0)
  {
    Common::HandlerRegistry::registerNormalHandler();
  }

  if ((a3 & 0x1000) != 0)
  {
    Common::HandlerRegistry::registerNormalHandler();
  }

  if ((a3 & 3) == 1)
  {
    Common::HandlerRegistry::registerNormalHandler();
  }

  if (!a6)
  {
    if (!Common::HandlerRegistry::getHandlerInfo(this, a2))
    {
      goto LABEL_18;
    }

    return 0;
  }

  v11 = *(this + 3);
  v13 = v11 + 1;
  v12 = v11[1];
  if (v12)
  {
    v14 = v11 + 1;
    do
    {
      v15 = *(v12 + 32);
      v16 = v15 >= a2;
      v17 = v15 < a2;
      if (v16)
      {
        v14 = v12;
      }

      v12 = *(v12 + 8 * v17);
    }

    while (v12);
    if (v14 != v13 && *(v14 + 8) <= a2)
    {
      return 0;
    }
  }

  result = Common::HandlerRegistry::getHandlerInfo(this, a2);
  if (!result)
  {
    return result;
  }

  v21 = a2;
  v19 = *result;
  v23 = *(result + 16);
  v22 = v19;
  std::__tree<std::__value_type<unsigned int,Common::XMPFileHandlerInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Common::XMPFileHandlerInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Common::XMPFileHandlerInfo>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int,Common::XMPFileHandlerInfo>>(v11, v13, &v21);
  Common::HandlerRegistry::removeHandler(this, a2);
LABEL_18:
  v20 = *(this + 1);
  v21 = a2;
  *&v22 = __PAIR64__(a3, a2);
  *(&v22 + 1) = a4;
  v23 = a5;
  std::__tree<std::__value_type<unsigned int,Common::XMPFileHandlerInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Common::XMPFileHandlerInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Common::XMPFileHandlerInfo>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int,Common::XMPFileHandlerInfo>>(v20, v20 + 1, &v21);
  return 1;
}

double IIOImagePixelDataProvider::endingPointForByteCount(IIOImagePixelDataProvider *this, unint64_t a2)
{
  v2 = *(this + 21);
  v3 = *(this + 18);
  v4 = 8 * (*(this + 19) % v3);
  result = (v4 / v2);
  if (v4 >= v2)
  {
    v6 = (v3 + v2 * result * -0.125);
    if (v6)
    {
      v7 = a2 >= v6;
      v8 = a2 - v6;
      if (v7)
      {
        result = 0.0;
        a2 = v8;
      }

      else
      {
        result = result + (8 * a2 / v2);
        if (result > *(this + 3))
        {
          result = *(this + 3);
        }

        a2 = 0;
      }
    }
  }

  v9 = a2 % v3;
  if (v9)
  {
    result = ((v2 + 8 * v9 - 1) / v2);
    if (result > *(this + 3))
    {
      return *(this + 3);
    }
  }

  return result;
}

void _cg_png_write_row_sized(uint64_t a1, void *__src, size_t a3)
{
  if (!a1)
  {
    return;
  }

  if (!*(a1 + 308) && !*(a1 + 429))
  {
    if ((*(a1 + 77) & 4) == 0)
    {
      v36 = "png_write_info was never called before png_write_row";
LABEL_112:
      _cg_png_error(a1, v36);
    }

    _cg_png_write_start_row(a1);
  }

  if (!*(a1 + 428) || (*(a1 + 88) & 2) == 0)
  {
LABEL_8:
    v37 = 0;
    v38 = 0;
    v6 = *(a1 + 292);
    v7 = *(a1 + 436);
    v8 = *(a1 + 433);
    if ((v8 * v7) >= 8u)
    {
      v9 = v6 * ((v8 * v7) >> 3);
    }

    else
    {
      v9 = ((v8 * v7) * v6 + 7) >> 3;
    }

    v10 = *(a1 + 431);
    v38 = v9;
    v39 = v10;
    LODWORD(v37) = v6;
    BYTE2(v39) = v7;
    BYTE1(v39) = v8;
    *(&v39 + 3) = (v8 * v7);
    v11 = *(a1 + 336);
    v12 = *(a1 + 344);
    v13 = v11 + 1;
    if (v9 > a3 || v13 > v12 || v11 > v13 || v9 > v12 - (v11 + 1))
    {
      goto LABEL_110;
    }

    memcpy((v11 + 1), __src, v9);
    if (v13 > v13 + v9)
    {
      goto LABEL_110;
    }

    if (*(a1 + 428))
    {
      v17 = *(a1 + 429);
      if (v17 <= 5 && (*(a1 + 88) & 2) != 0)
      {
        v18 = *(a1 + 336);
        if (v18 + 1 < v18)
        {
          goto LABEL_110;
        }

        png_do_write_interlace(&v37, (v18 + 1), *(a1 + 344), v17);
        if (!v37)
        {
          png_write_finish_row(a1);
          return;
        }
      }
    }

    if (*(a1 + 88))
    {
      png_do_write_transformations(a1, &v37);
    }

    if (BYTE3(v39) != *(a1 + 434) || BYTE3(v39) != *(a1 + 439))
    {
      goto LABEL_111;
    }

    if ((*(a1 + 912) & 4) == 0 || *(a1 + 916) != 64)
    {
      goto LABEL_103;
    }

    v19 = *(a1 + 336);
    v20 = v19 + 1;
    if (v19 + 1 >= v19)
    {
      v21 = v39;
      if ((v39 & 2) == 0)
      {
        goto LABEL_104;
      }

      v22 = *(a1 + 344);
      v23 = v37;
      if (BYTE1(v39) != 16)
      {
        if (BYTE1(v39) == 8)
        {
          if (v39 == 2)
          {
            v24 = 3;
LABEL_73:
            if (v37)
            {
              v27 = (v19 + 3);
              while ((v27 - 2) < v22 && (v27 - 2) >= v20)
              {
                if ((v27 - 1) >= v22)
                {
                  break;
                }

                v29 = *(v27 - 1);
                *(v27 - 2) -= v29;
                if (v27 >= v22 || v27 < v20)
                {
                  break;
                }

                *v27 -= v29;
                v27 += v24;
                if (!--v23)
                {
                  goto LABEL_103;
                }
              }

              goto LABEL_110;
            }

            goto LABEL_103;
          }

          if (v39 == 6)
          {
            v24 = 4;
            goto LABEL_73;
          }
        }

LABEL_103:
        v21 = v39;
LABEL_104:
        if (v21 == 3 && (*(a1 + 420) & 0x80000000) == 0)
        {
          png_do_check_palette_indexes(a1, &v37);
        }

        png_write_find_filter(a1, &v37);
        v35 = *(a1 + 648);
        if (v35)
        {
          v35(a1, *(a1 + 308), *(a1 + 429));
        }

        return;
      }

      if (v39 == 2)
      {
        v26 = 6;
      }

      else
      {
        if (v39 != 6)
        {
          goto LABEL_103;
        }

        v26 = 8;
      }

      if (v37)
      {
        v30 = (v19 + 6);
        while (1)
        {
          v31 = (v30 - 5) < v22 && (v30 - 5) >= v20;
          if (!v31 || (v30 - 4) >= v22 || (v30 - 3) >= v22 || (v30 - 3) < v20 || (v30 - 2) >= v22 || (v30 - 2) < v20 || (v30 - 1) >= v22 || (v30 - 1) < v20 || v30 >= v22 || v30 < v20)
          {
            goto LABEL_110;
          }

          v32 = __rev16(*(v30 - 3));
          v33 = __rev16(*(v30 - 1)) - v32;
          v34 = __rev16(*(v30 - 5)) - v32;
          *(v30 - 5) = BYTE1(v34);
          *(v30 - 4) = v34;
          *(v30 - 1) = BYTE1(v33);
          *v30 = v33;
          v30 += v26;
          if (!--v23)
          {
            goto LABEL_103;
          }
        }
      }

      goto LABEL_103;
    }

LABEL_110:
    __break(0x5519u);
LABEL_111:
    v36 = "internal write transform logic error";
    goto LABEL_112;
  }

  v25 = *(a1 + 429);
  if (v25 <= 2)
  {
    if (*(a1 + 429))
    {
      if (v25 == 1)
      {
        if ((*(a1 + 308) & 7) == 0 && *(a1 + 280) > 4u)
        {
          goto LABEL_8;
        }
      }

      else if (v25 != 2 || (*(a1 + 308) & 7) == 4)
      {
        goto LABEL_8;
      }
    }

    else if ((*(a1 + 308) & 7) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (*(a1 + 429) > 4u)
  {
    if (v25 == 5)
    {
      if ((*(a1 + 308) & 1) == 0 && *(a1 + 280) > 1u)
      {
        goto LABEL_8;
      }
    }

    else if (v25 != 6 || (*(a1 + 308) & 1) != 0)
    {
      goto LABEL_8;
    }
  }

  else if (v25 == 3)
  {
    if ((*(a1 + 308) & 3) == 0 && *(a1 + 280) > 2u)
    {
      goto LABEL_8;
    }
  }

  else if (v25 != 4 || (*(a1 + 308) & 3) == 2)
  {
    goto LABEL_8;
  }

  png_write_finish_row(a1);
}

void _cg_png_insert_iDOTBreak(uint64_t a1)
{
  for (i = (a1 + 96); ; i = (a1 + 96))
  {
    if (deflate(i, 3))
    {
      v15 = *(a1 + 144);
      if (!v15)
      {
        v15 = "zlib error";
      }

      _cg_png_error(a1, v15);
    }

    v3 = *(a1 + 128);
    if (v3)
    {
      break;
    }

    v4 = *(a1 + 208);
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    v7 = *(a1 + 216);
    v9 = v6 >= v5;
    v8 = v6 - v5;
    v9 = v9 && v8 >= v7;
    if (!v9)
    {
      goto LABEL_21;
    }

    _cg_png_write_complete_chunk(a1, 1229209940, v5, v7);
    *(a1 + 120) = *(*(a1 + 208) + 8);
    *(a1 + 128) = *(a1 + 216);
  }

  if (*(a1 + 104) == v3)
  {
LABEL_17:
    *(a1 + 484) = 0;
    png_flush(a1);
    _cg_png_cleanup_for_write_start_row(a1);
    *(a1 + 92) = 0;
    *(a1 + 84) |= 0x10u;
    _cg_png_write_start_row(a1);
    *(a1 + 120) = *(*(a1 + 208) + 8);
    *(a1 + 128) = *(a1 + 216);
    return;
  }

  v10 = *(a1 + 208);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = (*(a1 + 216) - v3);
  if (v12 >= v11 && v12 - v11 >= v13)
  {
    _cg_png_write_complete_chunk(a1, 1229209940, v11, v13);
    goto LABEL_17;
  }

LABEL_21:
  __break(0x5519u);
}

void (**_cg_png_write_complete_chunk(void (**result)(void), int a2, Bytef *a3, unint64_t a4))(void)
{
  if (result)
  {
    v5 = result;
    if (a4 >> 31)
    {
      _cg_png_error(result, "length exceeds PNG maximum");
    }

    _cg_png_write_chunk_header(result, a2, a4);
    _cg_png_write_chunk_data(v5, a3, a4);
    *(v5 + 1148) = 130;
    v7 = bswap32(*(v5 + 396));
    return png_write_data(v5, &v7, 4);
  }

  return result;
}

uint64_t _cg_png_write_chunk_header(uint64_t result, int a2, int a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = result;
    *(result + 1148) = 34;
    v5[0] = HIBYTE(a3);
    v5[1] = BYTE2(a3);
    v5[2] = BYTE1(a3);
    v5[3] = a3;
    v6[0] = HIBYTE(a2);
    v6[1] = BYTE2(a2);
    v6[2] = BYTE1(a2);
    v6[3] = a2;
    png_write_data(result, v5, 8);
    *(v4 + 312) = a2;
    png_reset_crc(v4);
    result = png_calculate_crc(v4, v6, 4);
    *(v4 + 1148) = 66;
  }

  return result;
}

size_t IIOImageWriteSession::putBytes(IIOImageWriteSession *this, const void *__ptr, size_t __nitems)
{
  v3 = __nitems;
  v21 = *MEMORY[0x1E69E9840];
  v6 = *(this + 4);
  if (v6)
  {
    if (fwrite(__ptr, 1uLL, __nitems, v6) != __nitems)
    {
      __error();
      v7 = __error();
      strerror(*v7);
      LogError("putBytes", 250, "*** ERROR: failed to write %ld bytes - got: %ld  (err = %d '%s')\n");
      return 0;
    }
  }

  else
  {
    v8 = *(this + 3);
    if (v8)
    {
      v10 = *(this + 7);
      v9 = *(this + 8);
      if (v9 == v10)
      {
        CFDataAppendBytes(v8, __ptr, __nitems);
      }

      else
      {
        v13 = v9 + __nitems;
        if (v13 > v10)
        {
          CFDataIncreaseLength(v8, v13 - v10);
          v8 = *(this + 3);
        }

        MutableBytePtr = CFDataGetMutableBytePtr(v8);
        memcpy(&MutableBytePtr[*(this + 8)], __ptr, v3);
      }
    }

    else if (*(this + 2))
    {
      v12 = *(this + 7);
      v11 = *(this + 8);
      if (v11 < v12)
      {
        LogError("putBytes", 271, "*** ERROR: cannot write unless at end of data\n");
        return 0;
      }

      bzero(v20, 0x400uLL);
      if (v11 > v12)
      {
        do
        {
          v15 = CGDataConsumerPutBytes();
          v16 = *(this + 8);
          v17 = *(this + 7) + v15;
          *(this + 7) = v17;
        }

        while (v16 > v17);
      }

      v3 = CGDataConsumerPutBytes();
    }
  }

  v18 = *(this + 8) + v3;
  if (v18 > *(this + 7))
  {
    *(this + 7) = v18;
  }

  *(this + 8) = v18;
  return v3;
}

_BYTE *optimize_cmf(_BYTE *result, unint64_t a2, unint64_t a3)
{
  if (a3 > 0x4000)
  {
    return result;
  }

  if (result >= a2)
  {
LABEL_16:
    __break(0x5519u);
    return result;
  }

  v3 = *result;
  if ((v3 & 0xF) == 8)
  {
    v4 = v3 >> 4;
    v5 = 128 << (*result >> 4);
    v6 = (v3 & 0xF0) <= 0x70 && v5 >= a3;
    if (v6)
    {
      v7 = ((v4 & 0xF) << 12) | 0x800;
      v8 = (v3 & 0xF0) + 8;
      v9 = v4 - 1;
      do
      {
        v7 -= 4096;
        v8 -= 16;
        v6 = v9-- != 0;
        if (!v6)
        {
          break;
        }

        v5 = v5 >> 1;
      }

      while (v5 >= a3);
      *result = v8;
      v10 = result + 1;
      if ((result + 1) < a2 && v10 >= result)
      {
        *v10 = (*v10 & 0xE0 | ((*v10 & 0xE0) - 31 * (((*v10 & 0xE0u) + v7) / 0x1F))) ^ 0x1F;
        return result;
      }

      goto LABEL_16;
    }
  }

  return result;
}

uint64_t PNGWritePlugin::writeEpilogue(PNGWritePlugin *this, IIOImagePixelDataProvider *a2, IIODictionary *a3)
{
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    writeEpilogue\n", a2, a3);
  }

  v5 = (this + 40);
  v4 = *(this + 5);
  if (v4)
  {
    v8 = *(this + 6);
    v7 = (this + 48);
    v6 = v8;
    if (v8)
    {
      _cg_png_write_end(v4, v6);
      if (*v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = 0;
      }

      _cg_png_destroy_write_struct(v5, v9);
      *v5 = 0;
      v5[1] = 0;
    }
  }

  return 0;
}

void (**_cg_png_write_end(void (**result)(void), uint64_t a2))(void)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  if ((*(result + 76) & 4) == 0)
  {
    v47 = "No IDATs written into file";
    goto LABEL_83;
  }

  if (*(result + 431) == 3 && *(result + 105) >= *(result + 208))
  {
    png_benign_error(result, "Wrote palette index exceeding num_palette");
  }

  if (*(v2 + 964) != *(v2 + 960))
  {
    v47 = "Not enough frames written";
LABEL_83:
    _cg_png_error(v2, v47);
  }

  if (a2)
  {
    if ((*(a2 + 9) & 2) != 0 && (*(v2 + 77) & 2) == 0)
    {
      if (a2 + 184 > (a2 + 192))
      {
        goto LABEL_71;
      }

      png_write_tIME(v2, (a2 + 184));
    }

    if (*(a2 + 164) >= 1)
    {
      v4 = 0;
      v5 = *(a2 + 168);
      v6 = *(a2 + 176);
      do
      {
        v7 = v6 + 88 * v4;
        v8 = v7 + 88;
        if (v7 < v6 || v8 > v6 + 88 * v5 || v7 > v8)
        {
          goto LABEL_71;
        }

        v11 = *v7;
        if (*v7 < 1)
        {
          if ((v11 & 0x80000000) == 0)
          {
            v30 = *(v7 + 24);
            v31 = *(v7 + 32);
            if (v30 >= v31)
            {
              goto LABEL_71;
            }

            v32 = *(v7 + 8);
            v33 = *(v7 + 16);
            v34 = v30 + 1;
            do
            {
              if (v34 > v31)
              {
                goto LABEL_71;
              }
            }

            while (*(v34++ - 1));
            png_write_zTXt(v2, v32, v33, v30, v11);
            v5 = *(a2 + 168);
            v6 = *(a2 + 176);
            v26 = (v6 + 88 * v4);
            v36 = (v26 + 22);
            if (v26 < v6 || v36 > v6 + 88 * v5 || v26 > v36)
            {
              goto LABEL_71;
            }

LABEL_55:
            *v26 = -2;
            goto LABEL_56;
          }

          if (v11 != -1)
          {
            goto LABEL_56;
          }

          v39 = *(v7 + 24);
          v40 = *(v7 + 32);
          if (v39 >= v40)
          {
            goto LABEL_71;
          }

          v41 = v39 + 1;
          do
          {
            if (v41 > v40)
            {
              goto LABEL_71;
            }
          }

          while (*(v41++ - 1));
          png_write_tEXt(v2, *(v7 + 8), *(v7 + 16), v39);
          v5 = *(a2 + 168);
          v6 = *(a2 + 176);
          v26 = (v6 + 88 * v4);
          v43 = (v26 + 22);
          if (v26 < v6 || v43 > v6 + 88 * v5 || v26 > v43)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v12 = *(v7 + 56);
          v13 = *(v7 + 64);
          if (v12 >= v13)
          {
            goto LABEL_71;
          }

          v14 = *(v7 + 8);
          v15 = *(v7 + 16);
          v16 = v12 + 1;
          do
          {
            if (v16 > v13)
            {
              goto LABEL_71;
            }
          }

          while (*(v16++ - 1));
          v18 = *(v7 + 72);
          v19 = *(v7 + 80);
          if (v18 >= v19)
          {
            goto LABEL_71;
          }

          v20 = v18 + 1;
          do
          {
            if (v20 > v19)
            {
              goto LABEL_71;
            }
          }

          while (*(v20++ - 1));
          v22 = *(v7 + 24);
          v23 = *(v7 + 32);
          if (v22 >= v23)
          {
            goto LABEL_71;
          }

          v24 = v22 + 1;
          do
          {
            if (v24 > v23)
            {
              goto LABEL_71;
            }
          }

          while (*(v24++ - 1));
          png_write_iTXt(v2, v11, v14, v15, v12, v18, v22);
          v5 = *(a2 + 168);
          v6 = *(a2 + 176);
          v26 = (v6 + 88 * v4);
          v27 = (v26 + 22);
          v28 = v26 < v6 || v27 > v6 + 88 * v5;
          if (v28 || v26 > v27)
          {
            goto LABEL_71;
          }

          if (*v26 != -1)
          {
            goto LABEL_55;
          }
        }

        *v26 = -3;
LABEL_56:
        ++v4;
      }

      while (v4 < *(a2 + 164));
    }

    while ((*(a2 + 10) & 1) != 0 && (*(v2 + 77) & 0x40) == 0)
    {
      v46 = *(a2 + 260);
      if ((v46 & 0x80000000) == 0)
      {
        png_write_eXIf(v2, *(a2 + 264), v46);
        break;
      }

LABEL_71:
      __break(0x5519u);
    }

    write_unknown_chunks(v2, a2, 8u);
  }

  *(v2 + 76) |= 8u;

  return png_write_IEND(v2);
}

void IIOImagePixelDataProvider::~IIOImagePixelDataProvider(IIOImagePixelDataProvider *this)
{
  *this = &unk_1EF4DE880;
  if (*(this + 32))
  {
    CGAccessSessionRelease();
  }

  v2 = *(this + 2);
  if (v2)
  {
    CGImageRelease(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    CGColorSpaceRelease(v3);
  }

  v4 = *(this + 27);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 25);
  if (v5)
  {
    CFRelease(v5);
  }

  if (*(this + 26))
  {
    CGImageBlockSetRelease();
  }

  v6 = *(this + 28);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 15);
  if (v7)
  {
    vImageConverter_Release(v7);
  }

  v8 = *(this + 30);
  if (v8)
  {
    free(v8);
  }
}

{
  IIOImagePixelDataProvider::~IIOImagePixelDataProvider(this);

  JUMPOUT(0x186602850);
}

uint64_t CGImageWriteSessionFinalize(uint64_t a1, int a2)
{
  if (a1 && (v2 = *(a1 + 24)) != 0)
  {
    return IIOImageWriteSession::finalize(v2, a2);
  }

  else
  {
    return 4294967246;
  }
}

void IIOImageWriteSession::~IIOImageWriteSession(IIOImageWriteSession *this)
{
  IIOImageWriteSession::~IIOImageWriteSession(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4D5E30;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 2) = 0;
  v3 = *(this + 3);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 3) = 0;
  v4 = *(this + 4);
  if (v4)
  {
    if ((gIIODebugFlags & 0x200000000000) != 0)
    {
      ImageIOLog("<<< _CGImageWriteSessionFinalize: [%p] closing FILE* %p\n", this, v4);
      v4 = *(this + 4);
    }

    fclose(v4);
    *(this + 73) = 0;
  }

  *(this + 4) = 0;
  v5 = *(this + 5);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 5) = 0;
  v6 = *(this + 6);
  if (v6)
  {
    CFRelease(v6);
  }

  *(this + 6) = 0;
}

uint64_t IIOImagePixelDataProvider::getBytesImageProvider(IIOImagePixelDataProvider *this, char *a2, unint64_t a3)
{
  result = 0;
  if (!a2 || !a3)
  {
    return result;
  }

  v5 = *(this + 19);
  v6 = *(this + 20);
  if (v6 <= v5)
  {
    return 0;
  }

  v7 = a2;
  if (v5 + a3 <= v6)
  {
    v8 = a3;
  }

  else
  {
    v8 = v6 - v5;
  }

  v10 = v8 != *(this + 4) * *(this + 18) && *(this + 22) != 0;
  ImageProvider = CGImageGetImageProvider();
  v12 = ImageProvider;
  v13 = *(this + 26);
  if (!v10 || v13 == 0)
  {
    if (v13)
    {
      goto LABEL_40;
    }

    if (!ImageProvider)
    {
      return 0;
    }

LABEL_32:
    if (!*(this + 25))
    {
      *(this + 25) = CFRetain(v12);
    }

    if (!v10 || v8 % *(this + 18))
    {
      memset(&src, 0, 24);
      IIODictionary::IIODictionary(&src);
      IIONumber::IIONumber(&dest, 0);
      IIODictionary::setObjectForKey(&src, &dest.data, @"kCGImageProviderPreferedBandHeight");
      IIONumber::~IIONumber(&dest);
      v30 = CGImageProviderCopyImageBlockSetWithOptions();
      if (!v30)
      {
        v30 = CGImageProviderCopyImageBlockSetWithOptions();
      }

      IIODictionary::~IIODictionary(&src);
      if (!v30)
      {
        return 0;
      }

      goto LABEL_39;
    }

    v30 = CGImageProviderCopyImageBlockSetWithOptions();
    if (v30)
    {
LABEL_39:
      *(this + 26) = v30;
      CGImageBlockSetGetImageBlock();
      *(this + 17) = CGImageBlockGetBytesPerRow();
      goto LABEL_40;
    }

    return 0;
  }

  CGImageBlockSetGetRect();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  CGImageBlockSetGetImageBlock();
  CGImageBlockGetRect();
  if (v18 < v23)
  {
    v18 = v23;
  }

  if (v22 < v24)
  {
    v22 = v24;
  }

  *(this + 17) = CGImageBlockGetBytesPerRow();
  v25 = *(this + 18);
  v26 = 1.0;
  if (v8 > v25 && !(v8 % v25))
  {
    v26 = (v8 / v25);
  }

  if (v8 != v25 && v8 % v25 || (v27 = (*(this + 19) / v25), v28 = *(this + 3), v29 = 0, v80.origin.x = v16, v80.origin.y = v18, v80.size.width = v20, v80.size.height = v22, !CGRectContainsRect(v80, *(&v26 - 3))))
  {
    CGImageBlockSetRelease();
    *(this + 26) = 0;
    if (!v12)
    {
      return 0;
    }

    goto LABEL_32;
  }

LABEL_40:
  result = CGImageBlockSetGetCount();
  v71 = result;
  if (!result)
  {
    return result;
  }

  PixelSize = CGImageProviderGetPixelSize();
  v32 = (*(this + 21) + 7) >> 3;
  if (v8 < v32)
  {
    _cg_jpeg_mem_term("getBytesImageProvider", 838, "Only %zu bytes requested, must request at least a full pixel (%zu bytes)", v8, v32);
    return 0;
  }

  v33 = PixelSize;
  result = 0;
  v74 = v33;
  v72 = *(this + 3) * v33;
  v34 = v8 / v32 * v32;
LABEL_43:
  if (v34)
  {
    v77 = result;
    v70 = v7;
    v35 = 0;
    v36 = 0;
    while (1)
    {
      memset(&src, 0, sizeof(src));
      memset(&dest, 0, sizeof(dest));
      v38 = *(this + 18);
      v37 = *(this + 19);
      v39 = *(this + 21);
      v40 = IIOImagePixelDataProvider::endingPointForByteCount(this, v34);
      v42 = v41;
      if (CGImageBlockSetGetImageBlock())
      {
        v43 = (v37 / v38);
        CGImageBlockGetRect();
        v48 = v45 + v47;
        if (v48 >= *(this + 4))
        {
          v48 = *(this + 4);
        }

        v75 = v45;
        v76 = v48;
        if (v43 >= v45 && v48 > v43)
        {
          v50 = (8 * (v37 % v38) / v39);
          v51 = v44;
          v52 = (v44 + v46) >= *(this + 3) ? *(this + 3) : v44 + v46;
          if (v50 >= v51 && v52 > v50)
          {
            break;
          }
        }
      }

LABEL_101:
      if (++v35 >= v71 || !v34)
      {
        if (v34)
        {
          v7 = v70;
          result = v77;
          if (v36)
          {
            goto LABEL_43;
          }

          return result;
        }

        return v77;
      }
    }

    Data = CGImageBlockGetData();
    BytesPerRow = CGImageBlockGetBytesPerRow();
    *(this + 17) = BytesPerRow;
    if (v40 <= v52)
    {
      v55 = v40;
    }

    else
    {
      v55 = v52;
    }

    v56 = *(this + 3);
    v57 = v70;
    while (1)
    {
      v58 = v40 < v52 && v42 == v43;
      v59 = (v55 - v50);
      if (!v58)
      {
        v59 = v52 - v50;
      }

      src.data = (Data + BytesPerRow * (v43 - v75) + (v50 - v51) * v74);
      src.width = v59;
      src.rowBytes = BytesPerRow;
      if (v59 == v56 && BytesPerRow == *(this + 16))
      {
        v60 = v34 / *(this + 18);
        if (v60 >= v76 - v43)
        {
          v60 = v76 - v43;
        }

        if (v60 <= 1)
        {
          v60 = 1;
        }
      }

      else
      {
        v60 = 1;
      }

      src.height = v60;
      dest.height = v60;
      dest.width = v59;
      dest.data = v57;
      v61 = v59 < v56 && v60 == 1;
      v62 = v61 ? v59 * ((*(this + 21) + 7) >> 3) : *(this + 18);
      dest.rowBytes = v62;
      v63 = *(this + 11);
      if (BytesPerRow < (v59 * v63 + 7) >> 3)
      {
        return v77;
      }

      if (v34 < v60 * v59 * ((*(this + 21) + 7) >> 3))
      {
        _cg_jpeg_mem_term("getBytesImageProvider", 936, "*** numBytes < dstBuffer.rowBytes * dstBuffer.height (%ld > %d)\n", v34, v62 * v60);
        return v77;
      }

      if (v60 == 1)
      {
        v64 = v59 * (v63 >> 3);
        v65 = v56 * (v63 >> 3);
        if (v64 < v65)
        {
          v65 = v64;
        }

        src.rowBytes = v65;
      }

      v66 = IIOImagePixelDataProvider::convertBytes(this, &src, &dest);
      if (!v66)
      {
        return v77;
      }

      v67 = v66;
      BytesPerRow = *(this + 17);
      v57 += v67;
      v34 -= v67;
      v77 += v67;
      v36 += BytesPerRow;
      *(this + 19) += v67;
      if (!v51 && v34)
      {
        v68 = *(this + 3);
        v69 = dest.width + v50 == v68 ? dest.height : 0;
        if (dest.width + v50 == v68)
        {
          v50 = 0;
        }

        else
        {
          v50 += dest.width;
        }

        if (v52 == v68)
        {
          v43 += v69;
          if (v43 < v76)
          {
            v56 = v52;
            if (v72 <= v52 * v74)
            {
              continue;
            }
          }
        }
      }

      v70 = v57;
      goto LABEL_101;
    }
  }

  return result;
}

void sub_185EBB33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

vImagePixelCount IIOImagePixelDataProvider::convertBytes(IIOImagePixelDataProvider *this, vImage_Buffer *src, vImage_Buffer *dest)
{
  if (*(this + 10) == 16 && *(this + 20) == 8 && (*(this + 57) & 0x10) != 0)
  {
    v9 = *(this + 11);
    if (v9 == 16)
    {
      if (*(this + 21) == 8 && !vImageConvert_Planar16UtoPlanar8_dithered(src, dest, 3, 0))
      {
        return dest->height * dest->rowBytes;
      }
    }

    else if (v9 == 48)
    {
      if (*(this + 21) == 24 && !vImageConvert_RGB16UtoRGB888_dithered(src, dest, 3, 0))
      {
        return dest->height * dest->rowBytes;
      }
    }

    else if (v9 == 64 && *(this + 21) == 32 && !vImageConvert_ARGB16UtoARGB8888_dithered(src, dest, 3, 0, 0))
    {
      return dest->height * dest->rowBytes;
    }
  }

  v6 = vImageConvert_AnyToAny(*(this + 15), src, dest, 0, 0x80u);
  v7 = *(this + 30);
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (!v7)
    {
      if (!v6)
      {
        v7 = 0;
        goto LABEL_18;
      }

      *(this + 31) = v6;
      v8 = malloc_type_malloc(v6, 0x100004077774924uLL);
      goto LABEL_10;
    }

    if (*(this + 31) < v6)
    {
      *(this + 31) = v6;
      v8 = reallocf(v7, v6);
LABEL_10:
      v7 = v8;
      *(this + 30) = v8;
    }
  }

LABEL_18:
  v10 = iio_vImageConvert_AnyToAny(*(this + 15), src, dest, v7, 0);
  if (v10)
  {
    v11 = IIO_vImageErrorString(v10);
    LogError("convertBytes", 563, "*** ERROR: vImageConvert_AnyToAny error: '%s'\n", v11);
    return 0;
  }

  if (*(this + 233) == 1)
  {
    v13 = *&dest->width;
    *&desta.data = *&dest->data;
    desta.rowBytes = *(&v13 + 1);
    desta.width = 4 * v13;
    v14 = vImageByteSwap_Planar16U(&desta, &desta, 0x10u);
    if (v14)
    {
      LogError("convertBytes", 574, "*** ERROR: vImageByteSwap_Planar16U error: %d", v14);
    }
  }

  return dest->height * dest->rowBytes;
}

vImage_Error iio_vImageConvert_AnyToAny(vImageConverterRef converter, const vImage_Buffer *srcs, const vImage_Buffer *dests, void *a4, vImage_Flags flags)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!converter)
  {
    return -50;
  }

  if (srcs->data == dests->data)
  {
    MustOperateOutOfPlace = vImageConverter_MustOperateOutOfPlace(converter, srcs, dests, flags);
    if (MustOperateOutOfPlace == -21780)
    {
      LogError("iio_vImageConvert_AnyToAny", 1052, "ERROR: vImageConvert_AnyToAny cannot convert in-place\n");
      return -21780;
    }
  }

  else
  {
    MustOperateOutOfPlace = 0;
  }

  v11 = converter;
  if (a4)
  {
    v12 = srcs;
    v13 = dests;
    v14 = a4;
LABEL_15:
    MustOperateOutOfPlace = vImageConvert_AnyToAny(v11, v12, v13, v14, flags);
    goto LABEL_16;
  }

  v15 = vImageConvert_AnyToAny(converter, srcs, dests, 0, 0x80u);
  if ((v15 & 0x8000000000000000) != 0)
  {
    _cg_jpeg_mem_term("iio_vImageConvert_AnyToAny", 1060, "*** ERROR: vImageConvert_AnyToAny+kvImageGetTempBufferSize returned: %lld\n", v15);
  }

  else
  {
    if (!v15)
    {
      v17 = 0;
      goto LABEL_14;
    }

    if (v15 <= 0x800)
    {
      MEMORY[0x1EEE9AC00](v15, v15);
      v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v17, v16);
LABEL_14:
      v11 = converter;
      v12 = srcs;
      v13 = dests;
      v14 = v17;
      goto LABEL_15;
    }

    v20 = malloc_type_malloc(v15, 0x24674131uLL);
    MustOperateOutOfPlace = vImageConvert_AnyToAny(converter, srcs, dests, v20, flags);
    free(v20);
  }

LABEL_16:
  if (MustOperateOutOfPlace)
  {
    v18 = IIO_vImageErrorString(MustOperateOutOfPlace);
    _cg_jpeg_mem_term("iio_vImageConvert_AnyToAny", 1094, "*** ERROR *** vImageConvert_AnyToAny: %d (%s)\n", MustOperateOutOfPlace, v18);
    CFShow(converter);
  }

  return MustOperateOutOfPlace;
}

uint64_t PNGWritePlugin::writePNG(PNGWritePlugin *this, IIOImagePixelDataProvider *a2, IIODictionary *a3)
{
  v102 = *MEMORY[0x1E69E9840];
  v100 = 0;
  v98 = 0;
  v99 = 0;
  IIOImageSource::imageReadRef(a2);
  CGImageGetImageProvider();
  Property = CGImageProviderGetProperty();
  BitmapInfo = IIOImagePixelDataProvider::getBitmapInfo(a2);
  v8 = IIOImageSource::count(a2);
  v9 = IIO_Reader::testHeaderSize(a2);
  BytesPerRow = IIOImagePixelDataProvider::getBytesPerRow(a2);
  Error = _cg_GifLastError(a2);
  appleflags = _cg_png_get_appleflags(a2);
  v88 = a2;
  SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(a2);
  Model = CGColorSpaceGetModel(SourceGeomColorSpace);
  CGImageProviderGetProperty();
  if (*(this + 36) == 1)
  {
    ImageIOLog("♦️  --- writePNG <%p>------\n, this", v82);
    ImageIOLog("            size: %d x %d\n", v8, v9);
    ImageIOLog("        rowBytes: %d\n", BytesPerRow);
    ImageIOLog("             bpc: %d\n", Error);
    ImageIOLog("             bpp: %d\n", appleflags);
    v13 = IIO_BitmapInfoString(BitmapInfo);
    v14 = IIO_AlphaInfoString(BitmapInfo);
    ImageIOLog("      bitmapInfo: %X '%s + %s'\n", BitmapInfo, v13, v14);
  }

  v86 = v9;
  if ((BitmapInfo & 0x1000) != 0)
  {
    if (Error == 16)
    {
      v95 = (BitmapInfo >> 8) & 1;
      goto LABEL_8;
    }

    LogError("writePNG", 235, "BAD bitmapInfo: use 'ByteOrder16Little' or 'ByteOrder16Big' only for 16-bpc images\n");
  }

  v95 = 0;
LABEL_8:
  v15 = MEMORY[0x1E695E4D0];
  if ((BitmapInfo & 0x6000) != 0 && Error != 32 && appleflags != 32)
  {
    LogError("writePNG", 243, "BAD bitmapInfo: use 'ByteOrder32Little' or 'ByteOrder32Big' only for 32-bpp images\n");
  }

  v16 = *v15;
  rowbytes = BytesPerRow;
  if (_cg_png_get_rowbytes(*(this + 5), *(this + 6)) > BytesPerRow)
  {
    rowbytes = _cg_png_get_rowbytes(*(this + 5), *(this + 6));
  }

  if (rowbytes != BytesPerRow || v16 == Property)
  {
    v98 = BytesPerRow;
    v99 = 1;
    v19 = malloc_type_malloc(rowbytes, 0x100004077774924uLL);
  }

  else
  {
    v19 = IIOImagePixelDataProvider::createEncodingTempBuffer(a2, &v99, &v98);
  }

  v100 = v19;
  v20 = v86;
  v21 = _cg_png_set_interlace_handling(*(this + 5));
  if (Error == 16)
  {
    _cg_png_set_swap(*(this + 5));
  }

  if (IIODictionary::containsKey(a3, @"PencilKitPrivateData"))
  {
    ObjectForKey = IIODictionary::getObjectForKey(a3, @"PencilKitPrivateData");
    if (ObjectForKey)
    {
      v23 = ObjectForKey;
      v92 = appleflags;
      v24 = a3;
      BytePtr = CFDataGetBytePtr(ObjectForKey);
      Length = CFDataGetLength(v23);
      dest.data = 0x74694B7001000000;
      LODWORD(dest.height) = bswap32(Length);
      v27 = Length;
      _cg_png_write_chunk_header(*(this + 5), 1634750532, Length + 12);
      _cg_png_write_chunk_data(*(this + 5), &dest, 12);
      v28 = BytePtr;
      a3 = v24;
      appleflags = v92;
      _cg_png_write_chunk_data(*(this + 5), v28, v27);
      _cg_png_write_chunk_end(*(this + 5));
    }
  }

  Uint32ForKey = IIODictionary::getUint32ForKey(a3, @"kCGImagePropertyPNGBandCount");
  if (Uint32ForKey >= 0x10)
  {
    v30 = 16;
  }

  else
  {
    v30 = Uint32ForKey;
  }

  v93 = v30;
  if (!v21)
  {
    v51 = 0;
LABEL_91:
    if (v51 == v20)
    {
      v80 = 0;
    }

    else
    {
      v80 = 4294967246;
    }

    goto LABEL_94;
  }

  if (v21 == 1 && (*(this + 122) & 1) == 0)
  {
    v31 = v86 < v30 || Model == kCGColorSpaceModelIndexed;
    if (!v31 && Uint32ForKey)
    {
      Size = IIOImageWriteSession::getSize(*(this + 2));
      v32 = 12 * v93;
      v33 = malloc_type_calloc(v32 + 4, 1uLL, 0x100004052888210uLL);
      _cg_png_write_chunk(*(this + 5), "iDOT", v33, v32 + 4);
      v90 = v33;
      *v33 = v93 << 24;
      v34 = v33 + 4;
      v35 = OUTLINED_FUNCTION_0_18();
      _cg_png_set_write_fn(v35, v36, v37, flush_fn_noop);
      do_filter = _cg_png_get_do_filter(*(this + 5));
      _cg_png_set_do_filter(*(this + 5), do_filter & 0x1F);
      v39 = 0;
      v40 = 0;
      v41 = (v86 + v93 - 1) / v93;
      do
      {
        if (v41 + v40 >= v86)
        {
          v41 = v86 - v40;
        }

        v42 = &v34[12 * v39];
        v43 = IIOImageWriteSession::getSize(*(this + 2));
        *v42 = bswap32(v40);
        *(v42 + 1) = bswap32(v41);
        *(v42 + 2) = bswap32(v43 - Size);
        v44 = v41 + v40;
        if (v40 < v41 + v40)
        {
          while (1)
          {
            v45 = v100;
            if (IIOImagePixelDataProvider::getBytes(v88, v100) != BytesPerRow)
            {
              break;
            }

            _cg_png_write_row_sized(*(this + 5), v45, rowbytes);
            if (v44 == ++v40)
            {
              v46 = v44;
              goto LABEL_44;
            }
          }
        }

        v46 = v40;
LABEL_44:
        if (v39 != v93 - 1)
        {
          _cg_png_insert_iDOTBreak(*(this + 5));
        }

        ++v39;
        v40 = v44;
      }

      while (v39 != v93);
      v47 = OUTLINED_FUNCTION_0_18();
      _cg_png_set_write_fn(v47, v48, v49, flush_fn);
      v50 = IIOImageWriteSession::getSize(*(this + 2));
      IIOImageWriteSession::seek(*(this + 2), Size, 0);
      _cg_png_write_chunk(*(this + 5), "iDOT", v90, 12 * v93 + 4);
      free(v90);
      IIOImageWriteSession::seek(*(this + 2), v50, 0);
      v20 = v86;
      v51 = v46;
      goto LABEL_91;
    }
  }

  v52 = appleflags;
  v53 = 0;
  v94 = BitmapInfo & 0x1F;
  v85 = v52 / Error * v8;
  v83 = v21;
  while (1)
  {
    v84 = v53;
    v51 = 0;
    if (v20)
    {
      break;
    }

LABEL_86:
    v53 = v84 + 1;
    IIOImagePixelDataProvider::rewind(v88);
    if (v84 + 1 == v83)
    {
      goto LABEL_91;
    }
  }

  v55 = v98;
  v54 = v99;
  while (1)
  {
    if (v54 + v51 > v20)
    {
      v54 = v20 - v51;
      v55 = (v20 - v51) * BytesPerRow;
    }

    if (!v55)
    {
      goto LABEL_89;
    }

    Bytes = IIOImagePixelDataProvider::getBytes(v88, v100);
    if (Bytes != v55)
    {
      break;
    }

    v87 = v51;
    v57 = v100;
    dest.data = v100;
    dest.height = 1;
    dest.width = v85;
    dest.rowBytes = BytesPerRow;
    src.data = v100;
    src.height = 1;
    src.width = v8;
    src.rowBytes = BytesPerRow;
    if (v54)
    {
      v58 = 0;
      v59 = &v100[2 * v8 - 1];
      v60 = &v100[4 * v8 - 2];
      while (1)
      {
        if (*(this + 122) == 1)
        {
          if (*(this + 84) == 4)
          {
            if (v8)
            {
              v61 = 4 * v8 - 4;
              v62 = v8;
              do
              {
                v63 = v57[v62 - 1];
                v64 = v63 & 0xF;
                v65 = *(this + 13) - 1;
                v66 = v65 >= v63 >> 4;
                v67 = v63 >> 4;
                if (!v66)
                {
                  LOBYTE(v67) = *(this + 104) - 1;
                }

                if (v65 < v64)
                {
                  LOBYTE(v64) = *(this + 104) - 1;
                }

                v68 = 3 * v67;
                v69 = &v57[v61];
                *v69 = *(*(this + 14) + v68);
                v69[1] = *(*(this + 14) + v68 + 1);
                v69[2] = *(*(this + 14) + v68 + 2);
                v69[3] = v64 | (16 * v64);
                v61 -= 4;
                --v62;
              }

              while (v62);
            }
          }

          else
          {
            v72 = v60;
            v73 = v59;
            for (i = v8; i; --i)
            {
              v75 = *(v73 - 1);
              v77 = *v73;
              v73 -= 2;
              v76 = v77;
              v78 = *(this + 13) - 1;
              if (v78 < v75)
              {
                LOBYTE(v75) = *(this + 104) - 1;
              }

              if (v78 < v76)
              {
                LOBYTE(v76) = *(this + 104) - 1;
              }

              v79 = 3 * v75;
              *(v72 - 2) = *(*(this + 14) + v79);
              *(v72 - 1) = *(*(this + 14) + v79 + 1);
              *v72 = *(*(this + 14) + v79 + 2);
              v72[1] = v76;
              v72 -= 4;
            }
          }

          goto LABEL_84;
        }

        if (v95)
        {
          dest.data = v57;
          v70 = vImageConvert_16Fto16U(&dest, &dest, 0);
          if (v70)
          {
            _cg_jpeg_mem_term("writePNG", 492, "    vImageConvert_16Uto16F err=%d\n", v70);
          }
        }

        if (v94 != 1)
        {
          goto LABEL_84;
        }

        src.data = v57;
        if (Model != kCGColorSpaceModelRGB)
        {
          goto LABEL_84;
        }

        if (Error == 16)
        {
          break;
        }

        v71 = vImageUnpremultiplyData_RGBA8888(&src, &src, 0);
        if (v71)
        {
          goto LABEL_83;
        }

LABEL_84:
        _cg_png_write_row_sized(*(this + 5), v57, rowbytes);
        ++v58;
        v57 += BytesPerRow;
        v59 += BytesPerRow;
        v60 += BytesPerRow;
        if (v54 <= v58)
        {
          goto LABEL_85;
        }
      }

      v71 = vImageUnpremultiplyData_RGBA16U(&src, &src, 0);
      if (!v71)
      {
        goto LABEL_84;
      }

LABEL_83:
      _cg_jpeg_mem_term("writePNG", 514, "    vImageUnpremultiply err=%d  (%d bpc)\n", v71, Error);
      goto LABEL_84;
    }

LABEL_85:
    v20 = v86;
    v51 = v54 + v87;
    if (v54 + v87 >= v86)
    {
      goto LABEL_86;
    }
  }

  _cg_jpeg_mem_term("writePNG", 438, "    iPixelDataProvider->getBytes asked for %ld bytes - got %d bytes\n", v55, Bytes);
LABEL_89:
  v80 = 4294967246;
LABEL_94:
  if (v100)
  {
    free(v100);
  }

  return v80;
}

void _cg_png_write_start_row(uint64_t a1)
{
  v2 = *(a1 + 433) * *(a1 + 436);
  v3 = *(a1 + 280);
  v4 = (v3 * v2 + 7) >> 3;
  v5 = v3 * (v2 >> 3);
  if (v2 < 8)
  {
    v5 = v4;
  }

  v6 = v5 + 1;
  *(a1 + 439) = *(a1 + 434);
  *(a1 + 438) = v2;
  v7 = *(a1 + 336);
  if (v7)
  {
    free(v7);
  }

  v8 = png_malloc(a1, v6);
  v9 = (v8 + v6);
  if (!v8)
  {
    v9 = 0;
  }

  *(a1 + 336) = v8;
  *(a1 + 344) = v9;
  if (v8 < v9)
  {
    *v8 = 0;
    v10 = *(a1 + 430);
    if (*(a1 + 284) == 1)
    {
      v10 &= 0x1Fu;
    }

    if (*(a1 + 280) == 1)
    {
      v10 &= 0x2Fu;
    }

    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = 8;
    }

    *(a1 + 430) = v11;
    if (v11 >= 0x10)
    {
      if (!*(a1 + 352))
      {
        v12 = png_malloc(a1, v6);
        v13 = v12 + v6;
        if (!v12)
        {
          v13 = 0;
        }

        *(a1 + 352) = v12;
        *(a1 + 360) = v13;
        if (((v11 >> 5) & 1) + (v11 >> 7) + ((v11 >> 4) & 1) + ((v11 >> 6) & 1) >= 2)
        {
          v14 = png_malloc(a1, v6);
          v15 = v14 + v6;
          if (!v14)
          {
            v15 = 0;
          }

          *(a1 + 368) = v14;
          *(a1 + 376) = v15;
        }
      }

      if (v11 >= 0x20)
      {
        png_calloc(a1, v6);
        v17 = v16 + v6;
        if (!v16)
        {
          v17 = 0;
        }

        *(a1 + 320) = v16;
        *(a1 + 328) = v17;
      }
    }

    if (*(a1 + 428))
    {
      v18 = *(a1 + 284);
      if ((*(a1 + 88) & 2) == 0)
      {
        *(a1 + 288) = (v18 + 7) >> 3;
        v19 = (*(a1 + 280) + 7) >> 3;
LABEL_32:
        *(a1 + 292) = v19;
        return;
      }
    }

    else
    {
      v18 = *(a1 + 284);
    }

    *(a1 + 288) = v18;
    v19 = *(a1 + 280);
    goto LABEL_32;
  }

  __break(0x5519u);
}

void png_write_find_filter(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 430);
  v5 = *(a2 + 8);
  v6 = *(a2 + 19);
  v7 = (v6 + 7) >> 3;
  v8 = *(a1 + 336);
  v9 = *(a1 + 344);
  if (v5 < 0x1FFFFFFFFFFFFFFLL)
  {
    v10 = -257;
    if ((v4 & 8) != 0 && v4 != 8)
    {
      v20 = AppleGetCPUCapabilities() & 0x100;
      if (v7 != 4 || v20 == 0)
      {
        v10 = 0;
        if (v5)
        {
          v22 = (v8 + 1);
          v23 = v5;
          while (v22 < v9 && v22 >= v8)
          {
            v25 = *v22++;
            LODWORD(v24) = v25;
            v26 = 256 - v25;
            if ((v25 & 0x80u) == 0)
            {
              v24 = v24;
            }

            else
            {
              v24 = v26;
            }

            v10 += v24;
            if (!--v23)
            {
              goto LABEL_3;
            }
          }

          goto LABEL_263;
        }
      }

      else
      {
        if (v8 + 1 < v8)
        {
          goto LABEL_263;
        }

        v10 = png_write_filter_row_none_neon((v8 + 1), v9, v8 + 1, v9, v5);
      }
    }
  }

  else
  {
    v4 &= -v4;
    v10 = -257;
  }

LABEL_3:
  if (v4 == 16)
  {
    v11 = *(a1 + 352);
    v12 = *(a1 + 360);
    if (v11 >= v12)
    {
      goto LABEL_263;
    }

    *v11 = 1;
    v13 = v11 + 1;
    v14 = *(a1 + 336);
    v15 = *(a1 + 344);
    v16 = (v14 + 1);
    if (v6)
    {
      v17 = (v6 + 7) >> 3;
      v18 = (v14 + 1);
      while (v18 < v15 && v18 >= v14 && v13 < v12 && v13 >= v11)
      {
        v19 = *v18++;
        *v13++ = v19;
        if (!--v17)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_263;
    }

    v18 = (v14 + 1);
LABEL_37:
    v32 = v5 - v7;
    if (v5 > v7)
    {
      while (v18 < v15 && v18 >= v14 && v16 < v15 && v16 >= v14 && v13 < v12 && v13 >= v11)
      {
        v34 = *v18++;
        v33 = v34;
        v35 = *v16++;
        *v13++ = v33 - v35;
        if (!--v32)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_263;
    }

LABEL_45:
    v8 = *(a1 + 352);
    v9 = *(a1 + 360);
  }

  else if ((v4 & 0x10) != 0)
  {
    v174 = v2;
    v27 = *(a1 + 352);
    v28 = *(a1 + 360);
    if (v27 >= v28)
    {
      goto LABEL_263;
    }

    *v27 = 1;
    CPUCapabilities = AppleGetCPUCapabilities();
    v30 = *(a1 + 336);
    if (v7 == 4 && (CPUCapabilities & 0x100) != 0)
    {
      if (v27 + 1 < v27 || v30 + 1 < v30)
      {
        goto LABEL_263;
      }

      v31 = png_write_filter_row_sub_neon((v30 + 1), *(a1 + 344), (v27 + 1), v28, v5);
    }

    else
    {
      v36 = *(a1 + 344);
      v37 = (v30 + 1);
      v38 = (v27 + 1);
      v31 = 0;
      if (v6)
      {
        v39 = v7;
        v40 = (v30 + 1);
        while (v40 < v36 && v40 >= v30 && v38 < v28 && v38 >= v27)
        {
          v42 = *v40++;
          LODWORD(v41) = v42;
          *v38++ = v42;
          v43 = 256 - v42;
          if ((v42 & 0x80u) == 0)
          {
            v41 = v41;
          }

          else
          {
            v41 = v43;
          }

          v31 += v41;
          if (!--v39)
          {
            goto LABEL_60;
          }
        }

        goto LABEL_263;
      }

      v40 = (v30 + 1);
LABEL_60:
      if (v5 > v7)
      {
        v44 = v7 + 1;
        while (v40 < v36 && v40 >= v30 && v37 < v36 && v37 >= v30 && v38 < v28 && v38 >= v27)
        {
          v46 = *v40++;
          v45 = v46;
          v47 = *v37++;
          v48 = v45 - v47;
          v49 = v48;
          *v38++ = v48;
          v50 = v48;
          LODWORD(v51) = 256 - v48;
          if (v49 >= 0)
          {
            v51 = v50;
          }

          else
          {
            v51 = v51;
          }

          v31 += v51;
          if (v31 > v10 || v44++ >= v5)
          {
            goto LABEL_76;
          }
        }

        goto LABEL_263;
      }
    }

LABEL_76:
    v2 = v174;
    if (v31 < v10)
    {
      v8 = *(a1 + 352);
      v9 = *(a1 + 360);
      if (*(a1 + 368))
      {
        *(a1 + 352) = *(a1 + 368);
        *(a1 + 368) = v8;
        *(a1 + 376) = v9;
      }

      v10 = v31;
    }
  }

  if (v4 == 32)
  {
    png_setup_up_row(a1, v5, v10, (v6 + 7) >> 3);
LABEL_82:
    v8 = *(a1 + 352);
    v9 = *(a1 + 360);
    goto LABEL_83;
  }

  if ((v4 & 0x20) != 0)
  {
    v57 = png_setup_up_row(a1, v5, v10, (v6 + 7) >> 3);
    if (v57 < v10)
    {
      v8 = *(a1 + 352);
      v9 = *(a1 + 360);
      if (*(a1 + 368))
      {
        *(a1 + 352) = *(a1 + 368);
        *(a1 + 368) = v8;
        *(a1 + 376) = v9;
      }

      v10 = v57;
    }
  }

  if (v4 == 64)
  {
    v58 = *(a1 + 352);
    v59 = *(a1 + 360);
    if (v58 >= v59)
    {
      goto LABEL_263;
    }

    *v58 = 3;
    v60 = v58 + 1;
    v61 = *(a1 + 336);
    v62 = *(a1 + 344);
    v63 = *(a1 + 320);
    v64 = *(a1 + 328);
    v65 = (v61 + 1);
    v66 = (v63 + 1);
    if (v6)
    {
      v67 = (v6 + 7) >> 3;
      v68 = (v61 + 1);
      while (v68 < v62 && v68 >= v61 && v66 < v64 && v66 >= v63 && v60 < v59 && v60 >= v58)
      {
        v70 = *v68++;
        v69 = v70;
        v71 = *v66++;
        *v60++ = v69 - (v71 >> 1);
        LODWORD(v67) = v67 - 1;
        if (!v67)
        {
          goto LABEL_118;
        }
      }

      goto LABEL_263;
    }

    v68 = (v61 + 1);
LABEL_118:
    if (v5 > v7)
    {
      v78 = v7 + 1;
      while (v68 < v62 && v68 >= v61 && v66 < v64 && v66 >= v63 && v65 < v62 && v65 >= v61 && v60 < v59 && v60 >= v58)
      {
        v80 = *v68++;
        v79 = v80;
        v82 = *v66++;
        v81 = v82;
        v83 = *v65++;
        *v60++ = v79 - ((v83 + v81) >> 1);
        v109 = v5 > v78++;
        if (!v109)
        {
          goto LABEL_129;
        }
      }

      goto LABEL_263;
    }

LABEL_129:
    v8 = *(a1 + 352);
    v9 = *(a1 + 360);
  }

  else if ((v4 & 0x40) != 0)
  {
    v175 = v2;
    v72 = *(a1 + 352);
    v73 = *(a1 + 360);
    if (v72 >= v73)
    {
      goto LABEL_263;
    }

    *v72 = 3;
    v74 = AppleGetCPUCapabilities();
    v75 = *(a1 + 336);
    v76 = *(a1 + 320);
    if (v7 == 4 && (v74 & 0x100) != 0)
    {
      if (v72 + 1 < v72 || v75 + 1 < v75 || v76 + 1 < v76)
      {
        goto LABEL_263;
      }

      v77 = png_write_filter_row_avg_neon((v75 + 1), *(a1 + 344), (v72 + 1), v73, (v76 + 1), *(a1 + 328), v5);
    }

    else
    {
      v84 = *(a1 + 344);
      v85 = *(a1 + 328);
      v86 = (v75 + 1);
      v87 = (v72 + 1);
      v88 = (v76 + 1);
      v77 = 0;
      if (v6)
      {
        v89 = (v6 + 7) >> 3;
        v90 = (v75 + 1);
        while (v90 < v84 && v90 >= v75 && v88 < v85 && v88 >= v76 && v87 < v73 && v87 >= v72)
        {
          v92 = *v90++;
          v91 = v92;
          v93 = *v88++;
          v94 = v91 - (v93 >> 1);
          v95 = v94;
          *v87++ = v94;
          v96 = v94;
          LODWORD(v97) = 256 - v94;
          if (v95 >= 0)
          {
            v97 = v96;
          }

          else
          {
            v97 = v97;
          }

          v77 += v97;
          LODWORD(v89) = v89 - 1;
          if (!v89)
          {
            goto LABEL_144;
          }
        }

        goto LABEL_263;
      }

      v90 = (v75 + 1);
LABEL_144:
      if (v5 > v7)
      {
        v98 = v7 + 1;
        while (v90 < v84 && v90 >= v75 && v88 < v85 && v88 >= v76 && v86 < v84 && v86 >= v75 && v87 < v73 && v87 >= v72)
        {
          v100 = *v90++;
          v99 = v100;
          v102 = *v88++;
          v101 = v102;
          v103 = *v86++;
          v104 = v99 - ((v103 + v101) >> 1);
          *v87++ = v104;
          v105 = v104;
          v106 = v104;
          LODWORD(v107) = 256 - v104;
          if (v105 >= 0)
          {
            v107 = v106;
          }

          else
          {
            v107 = v107;
          }

          v77 += v107;
          v108 = v98++;
          v109 = v77 <= v10 && v5 > v108;
          if (!v109)
          {
            goto LABEL_161;
          }
        }

        goto LABEL_263;
      }
    }

LABEL_161:
    v2 = v175;
    if (v77 < v10)
    {
      v8 = *(a1 + 352);
      v9 = *(a1 + 360);
      if (*(a1 + 368))
      {
        *(a1 + 352) = *(a1 + 368);
        *(a1 + 368) = v8;
        *(a1 + 376) = v9;
      }

      v10 = v77;
    }
  }

  if (v4 == 128)
  {
    v110 = *(a1 + 352);
    v111 = *(a1 + 360);
    if (v110 < v111)
    {
      *v110 = 4;
      v112 = v110 + 1;
      v113 = *(a1 + 336);
      v114 = *(a1 + 344);
      v115 = *(a1 + 320);
      v116 = *(a1 + 328);
      v117 = (v113 + 1);
      v118 = (v115 + 1);
      if (v6)
      {
        v119 = v7;
        while (v117 < v114 && v117 >= v113 && v118 < v116 && v118 >= v115 && v112 < v111 && v112 >= v110)
        {
          v121 = *v117++;
          v120 = v121;
          v122 = *v118++;
          *v112++ = v120 - v122;
          if (!--v119)
          {
            goto LABEL_176;
          }
        }

        goto LABEL_263;
      }

LABEL_176:
      if (v7 < v5)
      {
        v123 = 1;
        while (1)
        {
          v124 = &v118[v123 - 1];
          if (v124 >= v116)
          {
            goto LABEL_263;
          }

          if (v124 < v115)
          {
            goto LABEL_263;
          }

          v125 = (v115 + v123);
          if (v115 + v123 >= v116)
          {
            goto LABEL_263;
          }

          if (v125 < v115)
          {
            goto LABEL_263;
          }

          v126 = (v113 + v123);
          if (v113 + v123 >= v114 || v126 < v113)
          {
            goto LABEL_263;
          }

          v127 = &v117[v123 - 1];
          v128 = *v124;
          v129 = *v125;
          v130 = *v126;
          v131 = v130 - v129;
          if (v128 - v129 >= 0)
          {
            v132 = v128 - v129;
          }

          else
          {
            v132 = v129 - v128;
          }

          if (v131 >= 0)
          {
            v133 = v130 - v129;
          }

          else
          {
            v133 = v129 - v130;
          }

          v134 = v131 + v128 - v129;
          if (v134 < 0)
          {
            v134 = -v134;
          }

          if (v133 > v134)
          {
            LOBYTE(v128) = v129;
          }

          if (v132 <= v134 && v132 <= v133)
          {
            LOBYTE(v128) = v130;
          }

          if (v127 >= v114)
          {
            goto LABEL_263;
          }

          if (v127 < v113)
          {
            goto LABEL_263;
          }

          v136 = &v112[v123 - 1];
          if (v136 >= v111 || v136 < v110)
          {
            goto LABEL_263;
          }

          *v136 = *v127 - v128;
          ++v123;
          if (v7 - v5 + v123 == 1)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_82;
    }

LABEL_263:
    __break(0x5519u);
    return;
  }

  if ((v4 & 0x80) == 0)
  {
    goto LABEL_83;
  }

  v176 = v2;
  v138 = *(a1 + 352);
  v137 = *(a1 + 360);
  if (v138 >= v137)
  {
    goto LABEL_263;
  }

  *v138 = 4;
  v139 = AppleGetCPUCapabilities();
  v140 = *(a1 + 336);
  v141 = *(a1 + 320);
  if (v7 == 4 && (v139 & 0x100) != 0)
  {
    if (v138 + 1 < v138 || v140 + 1 < v140 || v141 + 1 < v141)
    {
      goto LABEL_263;
    }

    v142 = png_write_filter_row_paeth_neon(v140 + 1, *(a1 + 344), (v138 + 1), v137, (v141 + 1), *(a1 + 328), v5);
  }

  else
  {
    v143 = *(a1 + 344);
    v144 = *(a1 + 328);
    v145 = (v140 + 1);
    v146 = (v138 + 1);
    v147 = (v141 + 1);
    v142 = 0;
    if (v6)
    {
      v148 = v7;
      while (v145 < v143 && v145 >= v140 && v147 < v144 && v147 >= v141 && v146 < v137 && v146 >= v138)
      {
        v150 = *v145++;
        v149 = v150;
        v151 = *v147++;
        v152 = v149 - v151;
        v153 = v152;
        *v146++ = v152;
        v154 = v152;
        LODWORD(v155) = 256 - v152;
        if (v153 >= 0)
        {
          v155 = v154;
        }

        else
        {
          v155 = v155;
        }

        v142 += v155;
        if (!--v148)
        {
          goto LABEL_225;
        }
      }

      goto LABEL_263;
    }

LABEL_225:
    if (v5 > v7)
    {
      v156 = 1;
      do
      {
        v157 = &v147[v156 - 1];
        if (v157 >= v144)
        {
          goto LABEL_263;
        }

        if (v157 < v141)
        {
          goto LABEL_263;
        }

        v158 = (v141 + v156);
        if (v141 + v156 >= v144)
        {
          goto LABEL_263;
        }

        if (v158 < v141)
        {
          goto LABEL_263;
        }

        v159 = (v140 + v156);
        if (v140 + v156 >= v143 || v159 < v140)
        {
          goto LABEL_263;
        }

        v160 = &v145[v156 - 1];
        v161 = *v157;
        v162 = *v158;
        v163 = *v159;
        v164 = v163 - v162;
        if (v161 - v162 >= 0)
        {
          v165 = v161 - v162;
        }

        else
        {
          v165 = v162 - v161;
        }

        if (v164 >= 0)
        {
          v166 = v163 - v162;
        }

        else
        {
          v166 = v162 - v163;
        }

        v167 = v164 + v161 - v162;
        if (v167 < 0)
        {
          v167 = -v167;
        }

        if (v166 > v167)
        {
          LOBYTE(v161) = v162;
        }

        if (v165 <= v167 && v165 <= v166)
        {
          LOBYTE(v161) = v163;
        }

        if (v160 >= v143)
        {
          goto LABEL_263;
        }

        if (v160 < v140)
        {
          goto LABEL_263;
        }

        v169 = &v146[v156 - 1];
        if (v169 >= v137 || v169 < v138)
        {
          goto LABEL_263;
        }

        v170 = *v160 - v161;
        v171 = v170;
        *v169 = v170;
        v172 = v170;
        LODWORD(v160) = 256 - v170;
        if (v171 >= 0)
        {
          v160 = v172;
        }

        else
        {
          v160 = v160;
        }

        v142 += v160;
      }

      while (v142 <= v10 && v5 - v7 != v156++);
    }
  }

  v2 = v176;
  if (v142 < v10)
  {
    v8 = *(a1 + 352);
    v9 = *(a1 + 360);
    if (*(a1 + 368))
    {
      *(a1 + 352) = *(a1 + 368);
      *(a1 + 368) = v8;
      *(a1 + 376) = v9;
    }
  }

LABEL_83:
  if (v9 < v8)
  {
    goto LABEL_263;
  }

  v53 = *(v2 + 8) + 1;
  if (v53 > v9 - v8)
  {
    goto LABEL_263;
  }

  png_compress_IDAT(a1, v8, v53, 0);
  v54 = *(a1 + 320);
  if (v54)
  {
    v55 = *(a1 + 328);
    *(a1 + 320) = *(a1 + 336);
    *(a1 + 336) = v54;
    *(a1 + 344) = v55;
  }

  png_write_finish_row(a1);
  v56 = *(a1 + 484) + 1;
  *(a1 + 484) = v56;
  if (*(a1 + 480) - 1 < v56)
  {

    _cg_png_write_flush(a1);
  }
}

uint64_t png_compress_IDAT(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  if (*(a1 + 92) != 1229209940)
  {
    v9 = *(a1 + 208);
    if (v9)
    {
      if (v9 >= v9 + 1)
      {
        goto LABEL_64;
      }

      v10 = *v9;
      if (*v9)
      {
        *v9 = 0;
        do
        {
          v11 = *v10;
          png_free(a1, v10);
          v10 = v11;
        }

        while (v11);
      }
    }

    else
    {
      v12 = *(a1 + 216) + 24;
      v13 = png_malloc(a1, v12);
      *(a1 + 208) = v13;
      if (v13 + 3 < v13)
      {
        goto LABEL_64;
      }

      v14 = (v13 + v12);
      if (!v13)
      {
        v14 = 0;
      }

      v13[1] = (v13 + 3);
      v13[2] = v14;
      *v13 = 0;
    }

    v15 = png_image_size(a1);
    if (png_deflate_claim(a1, 1229209940, v15))
    {
LABEL_66:
      v34 = *(a1 + 144);
LABEL_67:
      _cg_png_error(a1, v34);
    }

    *(a1 + 120) = *(*(a1 + 208) + 8);
    *(a1 + 128) = *(a1 + 216);
  }

  *(a1 + 96) = a2;
  do
  {
    do
    {
      v16 = a3 >= 0xFFFFFFFF ? 0xFFFFFFFFLL : a3;
      *(a1 + 104) = v16;
      v17 = a3 - v16;
      v18 = HIDWORD(a3) ? 0 : a4;
      result = deflate((a1 + 96), v18);
      v4 = result;
      a3 = v17 + *(a1 + 104);
      *(a1 + 104) = 0;
      LODWORD(v17) = *(a1 + 128);
      if (v17)
      {
        break;
      }

      v20 = *(a1 + 208);
      v21 = *(v20 + 8);
      v22 = *(v20 + 16);
      v17 = *(a1 + 216);
      if ((*(a1 + 76) & 4) != 0 || *(a1 + 1056))
      {
        if (v17)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v25 = png_image_size(a1);
        result = optimize_cmf(v21, v22, v25);
        if (v17)
        {
LABEL_28:
          v24 = v22 < v21 || v22 - v21 < v17;
          if (*(a1 + 964))
          {
            if (v24)
            {
              goto LABEL_64;
            }

            result = png_write_fdAT(a1, v21, v17);
          }

          else
          {
            if (v24)
            {
              goto LABEL_64;
            }

            result = _cg_png_write_complete_chunk(a1, 1229209940, v21, v17);
          }
        }
      }

      *(a1 + 76) |= 4u;
      *(a1 + 120) = v21;
      *(a1 + 128) = v17;
    }

    while (a4 && !v4);
    if (v4)
    {
      if (a4 != 4 || v4 != 1)
      {
        goto LABEL_65;
      }

      v26 = *(a1 + 208);
      v27 = *(v26 + 8);
      v28 = *(v26 + 16);
      v29 = *(a1 + 216);
      if ((*(a1 + 76) & 4) == 0 && !*(a1 + 1056))
      {
        v30 = png_image_size(a1);
        result = optimize_cmf(v27, v28, v30);
      }

      if (v29 == v17)
      {
        goto LABEL_62;
      }

      v31 = (v29 - v17);
      v33 = v28 < v27 || v28 - v27 < v31;
      if (*(a1 + 964))
      {
        if (!v33)
        {
          result = png_write_fdAT(a1, v27, (v29 - v17));
LABEL_62:
          *(a1 + 128) = 0;
          *(a1 + 120) = 0;
          *(a1 + 76) |= 0xCu;
          *(a1 + 92) = 0;
          return result;
        }
      }

      else if (!v33)
      {
        result = _cg_png_write_complete_chunk(a1, 1229209940, v27, v31);
        goto LABEL_62;
      }

LABEL_64:
      __break(0x5519u);
LABEL_65:
      png_zstream_error(a1, v4);
      goto LABEL_66;
    }
  }

  while (a3);
  if (a4 == 4)
  {
    v34 = "Z_OK on Z_FINISH with output space";
    goto LABEL_67;
  }

  return result;
}