void sub_23F1FA2D4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FA518(uint64_t a1, int a2, _DWORD *a3)
{
  v91 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 1:
      v80 = &unk_285181C18;
      LODWORD(v3) = *a3;
      v4 = *a3 != 0;
      if (*a3 <= 0x20u)
      {
        LODWORD(v3) = 32;
      }

      if (a3[1])
      {
        v3 = v3;
      }

      else
      {
        v3 = 32;
      }

      *&v83 = *a3;
      *(&v83 + 1) = v4 | (v3 << 32);
      LOBYTE(v73) = 0;
      v74 = &unk_285186F70;
      v75 = 0;
      sub_23F1CD93C(v76, &v83);
      if (v83 && DWORD1(v83))
      {
        *&v77 = sub_23F1CDA6C(v76);
        *(&v77 + 1) = v5;
      }

      else
      {
        v77 = v83;
      }

      if (!sub_23F1CE49C(&v74))
      {
        sub_23F1CE6D4(v86, &v74);
        sub_23F1CEAE0(v84, &v74);
        v81 = v84;
        v82 = &v73;
        sub_23F1F2AE8(&v81);
        sub_23F1FF570(v86);
      }

      v74 = &unk_2851876C0;
      operator new();
    case 2:
      v80 = &unk_285181C50;
      LODWORD(v34) = *a3;
      v35 = *a3 != 0;
      if (*a3 <= 0x10u)
      {
        LODWORD(v34) = 16;
      }

      if (a3[1])
      {
        v34 = v34;
      }

      else
      {
        v34 = 16;
      }

      *&v83 = *a3;
      *(&v83 + 1) = v35 | (v34 << 32);
      LOWORD(v73) = 0;
      v74 = &unk_2851871B0;
      v75 = 0;
      sub_23F1D3674(v76, &v83);
      if (v83 && DWORD1(v83))
      {
        *&v77 = sub_23F1D37A4(v76);
        *(&v77 + 1) = v36;
      }

      else
      {
        v77 = v83;
      }

      if (!sub_23F1CE49C(&v74))
      {
        sub_23F1D417C(v86, &v74);
        sub_23F1D4588(v84, &v74);
        v81 = v84;
        v82 = &v73;
        sub_23F1F3E6C(&v81);
        sub_23F1FF570(v86);
      }

      v74 = &unk_285187750;
      operator new();
    case 3:
      v80 = &unk_285181C88;
      LODWORD(v14) = *a3;
      v15 = *a3 != 0;
      if (*a3 <= 0x10u)
      {
        LODWORD(v14) = 16;
      }

      if (a3[1])
      {
        v14 = v14;
      }

      else
      {
        v14 = 16;
      }

      *&v83 = *a3;
      *(&v83 + 1) = v15 | (v14 << 32);
      LOWORD(v73) = 0;
      v74 = &unk_285187360;
      v75 = 0;
      sub_23F1D7AD0(v76, &v83);
      if (v83 && DWORD1(v83))
      {
        *&v77 = sub_23F1D7C00(v76);
        *(&v77 + 1) = v16;
      }

      else
      {
        v77 = v83;
      }

      if (!sub_23F1CE49C(&v74))
      {
        sub_23F1D82E0(v86, &v74);
        sub_23F1D86EC(v84, &v74);
        v81 = v84;
        v82 = &v73;
        sub_23F1F5664(&v81, v57);
        sub_23F1FF570(v86);
      }

      v74 = &unk_2851877E0;
      operator new();
    case 4:
      v80 = &unk_285181CC0;
      LODWORD(v41) = *a3;
      v42 = *a3 != 0;
      if (*a3 <= 8u)
      {
        LODWORD(v41) = 8;
      }

      if (a3[1])
      {
        v41 = v41;
      }

      else
      {
        v41 = 8;
      }

      *&v83 = *a3;
      *(&v83 + 1) = v42 | (v41 << 32);
      v73 = 0;
      v74 = &unk_285187510;
      v75 = 0;
      sub_23F1DBBA8(v76, &v83);
      if (v83 && DWORD1(v83))
      {
        *&v77 = sub_23F1DBCD8(v76);
        *(&v77 + 1) = v43;
      }

      else
      {
        v77 = v83;
      }

      if (!sub_23F1CE49C(&v74))
      {
        sub_23F1DC6B0(v86, &v74);
        sub_23F1DCABC(v84, &v74);
        v81 = v84;
        v82 = &v73;
        sub_23F1F7B90(&v81, v60);
        sub_23F1FF570(v86);
      }

      v74 = &unk_285187870;
      operator new();
    case 5:
      v80 = &unk_285181CF8;
      v26 = 2 * (*a3 != 0);
      LODWORD(v27) = v26 * *a3;
      if (v27 <= 0x20)
      {
        LODWORD(v27) = 32;
      }

      v28 = *a3;
      v29 = HIDWORD(*a3);
      if (a3[1])
      {
        v27 = v27;
      }

      else
      {
        v27 = 32;
      }

      *v86 = 2;
      *&v86[4] = v28;
      *v84 = *v86;
      *v86 = 1;
      *&v86[4] = v26 & 0x1FFFFFFFFLL | ((v27 >> 1) << 33);
      *&v84[12] = *v86;
      *&v84[8] = v29;
      *&v84[20] = v27;
      *&v84[24] = v28;
      v85 = *&v86[4];
      LOBYTE(v73) = 0;
      v74 = &unk_285187000;
      v75 = 0;
      sub_23F1CF244(v76, v84);
      if (*&v84[24] && *&v84[28])
      {
        sub_23F1CF374(&v77, v76);
      }

      else
      {
        v77 = *v84;
        v78 = *&v84[16];
        v79 = v85;
      }

      if (sub_23F1CE49C(&v74))
      {
        goto LABEL_181;
      }

      sub_23F1CFDF8(&v81, &v74);
      sub_23F1D0204(v86, &v74);
      *&v83 = v86;
      *(&v83 + 1) = &v73;
      if (v88 == 1)
      {
        sub_23F1F2E3C(&v83);
LABEL_180:
        sub_23F1FF570(&v81);
LABEL_181:
        v74 = &unk_285187900;
        operator new();
      }

      if (!*&v86[8] || !v87 || !HIDWORD(v87))
      {
        goto LABEL_180;
      }

      v63 = v87 - 1;
      v64 = v89;
      v65 = *v86;
      v66 = HIDWORD(v87) - 1;
      if (HIDWORD(v87) == 1)
      {
        v68 = 0;
      }

      else
      {
        v67 = HIDWORD(v89);
        v68 = 0;
        if (v87 != 1)
        {
          v69 = 0;
          v70 = *v86 + 1;
          do
          {
            v71 = v70;
            v72 = v63;
            do
            {
              *(v71 - 1) = v68;
              v68 = v73;
              *v71 = v73;
              v71 += v64;
              --v72;
            }

            while (v72);
            *(v71 - 1) = v68;
            v68 = v73;
            *v71 = v73;
            v65 += v67;
            ++v69;
            v70 += v67;
          }

          while (v69 != v66);
          goto LABEL_178;
        }

        do
        {
          *v65 = v68;
          v68 = v73;
          v65[1] = v73;
          v65 += v67;
          --v66;
        }

        while (v66);
      }

      if (!v63)
      {
LABEL_179:
        *v65 = v68;
        v65[1] = v73;
        goto LABEL_180;
      }

      do
      {
LABEL_178:
        *v65 = v68;
        v68 = v73;
        v65[1] = v73;
        v65 += v64;
        --v63;
      }

      while (v63);
      goto LABEL_179;
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 33:
    case 34:
    case 35:
    case 36:
    case 39:
    case 40:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageBuffer.h", 980, &unk_23F3091D6, 0, "The buffer does not support the given format", 0x2CuLL, sub_23F303DA4);
      abort();
    case 7:
      v80 = &unk_285181D30;
      v44 = 2 * (*a3 != 0);
      LODWORD(v45) = v44 * *a3;
      if (v45 <= 0x10)
      {
        LODWORD(v45) = 16;
      }

      v46 = *a3;
      v47 = HIDWORD(*a3);
      if (a3[1])
      {
        v45 = v45;
      }

      else
      {
        v45 = 16;
      }

      *v86 = 2;
      *&v86[4] = v46;
      *v84 = *v86;
      *v86 = 1;
      *&v86[4] = v44 & 0x1FFFFFFFFLL | ((v45 >> 1) << 33);
      *&v84[12] = *v86;
      *&v84[8] = v47;
      *&v84[20] = v45;
      *&v84[24] = v46;
      v85 = *&v86[4];
      LOWORD(v73) = 0;
      v74 = &unk_2851873F0;
      v75 = 0;
      sub_23F1D9250(v76, v84);
      if (*&v84[24] && *&v84[28])
      {
        sub_23F1D9380(&v77, v76);
      }

      else
      {
        v77 = *v84;
        v78 = *&v84[16];
        v79 = v85;
      }

      if (!sub_23F1CE49C(&v74))
      {
        sub_23F1D9E14(&v81, &v74);
        sub_23F1DA220(v86, &v74);
        *&v83 = v86;
        *(&v83 + 1) = &v73;
        sub_23F1F59A0(&v83, v61);
        sub_23F1FF570(&v81);
      }

      v74 = &unk_285187990;
      operator new();
    case 8:
      v80 = &unk_285181D68;
      v30 = 2 * (*a3 != 0);
      LODWORD(v31) = v30 * *a3;
      if (v31 <= 8)
      {
        LODWORD(v31) = 8;
      }

      v32 = *a3;
      v33 = HIDWORD(*a3);
      if (a3[1])
      {
        v31 = v31;
      }

      else
      {
        v31 = 8;
      }

      *v86 = 2;
      *&v86[4] = v32;
      *v84 = *v86;
      *v86 = 1;
      *&v86[4] = v30 & 0x1FFFFFFFFLL | ((v31 >> 1) << 33);
      *&v84[12] = *v86;
      *&v84[8] = v33;
      *&v84[20] = v31;
      *&v84[24] = v32;
      v85 = *&v86[4];
      v73 = 0;
      v74 = &unk_2851875A0;
      v75 = 0;
      sub_23F1DD220(v76, v84);
      if (*&v84[24] && *&v84[28])
      {
        sub_23F1DD350(&v77, v76);
      }

      else
      {
        v77 = *v84;
        v78 = *&v84[16];
        v79 = v85;
      }

      if (!sub_23F1CE49C(&v74))
      {
        sub_23F1DDDDC(&v81, &v74);
        sub_23F1DE1E8(v86, &v74);
        *&v83 = v86;
        *(&v83 + 1) = &v73;
        sub_23F1F7FCC(&v83, v58);
        sub_23F1FF570(&v81);
      }

      v74 = &unk_285187A20;
      operator new();
    case 21:
      v80 = &unk_285181DA0;
      if (*a3)
      {
        v10 = 3;
      }

      else
      {
        v10 = 0;
      }

      LODWORD(v11) = v10 * *a3;
      if (v11 <= 0x20)
      {
        LODWORD(v11) = 32;
      }

      v12 = *a3;
      v13 = HIDWORD(*a3);
      if (a3[1])
      {
        v11 = v11;
      }

      else
      {
        v11 = 32;
      }

      *v86 = 3;
      *&v86[4] = v12;
      *v84 = *v86;
      *v86 = 1;
      *&v86[4] = v10 | (v11 << 32);
      *&v84[12] = *v86;
      *&v84[8] = v13;
      *&v84[20] = v11;
      *&v84[24] = v12;
      v85 = *&v86[4];
      LOBYTE(v73) = 0;
      v74 = &unk_285187090;
      v75 = 0;
      sub_23F1D08A8(v76, v84);
      if (*&v84[24] && *&v84[28])
      {
        sub_23F1D09D4(&v77, v76);
      }

      else
      {
        v77 = *v84;
        v78 = *&v84[16];
        v79 = v85;
      }

      if (!sub_23F1CE49C(&v74))
      {
        sub_23F1D1458(&v81, &v74);
        sub_23F1D1864(v86, &v74);
        *&v83 = v86;
        *(&v83 + 1) = &v73;
        sub_23F1F3448(&v83);
        sub_23F1FF570(&v81);
      }

      v74 = &unk_285187AB0;
      operator new();
    case 22:
      v80 = &unk_285181DD8;
      if (*a3)
      {
        v17 = 3;
      }

      else
      {
        v17 = 0;
      }

      LODWORD(v18) = v17 * *a3;
      if (v18 <= 0x10)
      {
        LODWORD(v18) = 16;
      }

      v19 = *a3;
      v20 = HIDWORD(*a3);
      if (a3[1])
      {
        v18 = v18;
      }

      else
      {
        v18 = 16;
      }

      *v86 = 3;
      *&v86[4] = v19;
      *v84 = *v86;
      *v86 = 1;
      *&v86[4] = v17 | (v18 << 32);
      *&v84[12] = *v86;
      *&v84[8] = v20;
      *&v84[20] = v18;
      *&v84[24] = v19;
      v85 = *&v86[4];
      LOWORD(v73) = 0;
      v74 = &unk_285187240;
      v75 = 0;
      sub_23F1D4CEC(v76, v84);
      if (*&v84[24] && *&v84[28])
      {
        sub_23F1D4E1C(&v77, v76);
      }

      else
      {
        v77 = *v84;
        v78 = *&v84[16];
        v79 = v85;
      }

      if (!sub_23F1CE49C(&v74))
      {
        sub_23F1D58A8(&v81, &v74);
        sub_23F1D5CB4(v86, &v74);
        *&v83 = v86;
        *(&v83 + 1) = &v73;
        sub_23F1F43A0(&v83);
        sub_23F1FF570(&v81);
      }

      v74 = &unk_285187B40;
      operator new();
    case 25:
      v81 = &unk_285181E10;
      v21 = a3[1];
      v22 = 4 * (*a3 != 0);
      LODWORD(v23) = v22 * *a3;
      if (v23 <= 0x20)
      {
        LODWORD(v23) = 32;
      }

      v24 = *a3;
      v25 = HIDWORD(*a3);
      v74 = &unk_285187BD0;
      if (v21)
      {
        v23 = v23;
      }

      else
      {
        v23 = 32;
      }

      *&v86[4] = v24;
      *v86 = 4;
      *&v86[8] = v25;
      *v84 = 1;
      *&v84[4] = v22 & 0x3FFFFFFFFLL | ((v23 >> 2) << 34);
      v87 = *v84;
      v88 = v23;
      v89 = v24;
      v90 = *&v84[4];
      sub_23F1D262C(&v74, 25, v86);
      v74 = &unk_285187BD0;
      operator new();
    case 31:
      v80 = &unk_285181E48;
      v37 = 4 * (*a3 != 0);
      LODWORD(v38) = v37 * *a3;
      if (v38 <= 0x10)
      {
        LODWORD(v38) = 16;
      }

      v39 = *a3;
      v40 = HIDWORD(*a3);
      if (a3[1])
      {
        v38 = v38;
      }

      else
      {
        v38 = 16;
      }

      *v86 = 4;
      *&v86[4] = v39;
      *v84 = *v86;
      *v86 = 1;
      *&v86[4] = v37 & 0x3FFFFFFFFLL | ((v38 >> 2) << 34);
      *&v84[12] = *v86;
      *&v84[8] = v40;
      *&v84[20] = v38;
      *&v84[24] = v39;
      v85 = *&v86[4];
      LOWORD(v73) = 0;
      v74 = &unk_285187480;
      v75 = 0;
      sub_23F1DA8C4(v76, v84);
      if (*&v84[24] && *&v84[28])
      {
        sub_23F1DA9F4(&v77, v76);
      }

      else
      {
        v77 = *v84;
        v78 = *&v84[16];
        v79 = v85;
      }

      if (!sub_23F1CE49C(&v74))
      {
        sub_23F1DB0F8(&v81, &v74);
        sub_23F1DB504(v86, &v74);
        *&v83 = v86;
        *(&v83 + 1) = &v73;
        sub_23F1F6BB8(&v83, v59);
        sub_23F1FF570(&v81);
      }

      v74 = &unk_285187C60;
      operator new();
    case 32:
      v80 = &unk_285181E80;
      v53 = 4 * (*a3 != 0);
      LODWORD(v54) = v53 * *a3;
      if (v54 <= 8)
      {
        LODWORD(v54) = 8;
      }

      v55 = *a3;
      v56 = HIDWORD(*a3);
      if (a3[1])
      {
        v54 = v54;
      }

      else
      {
        v54 = 8;
      }

      *v86 = 4;
      *&v86[4] = v55;
      *v84 = *v86;
      *v86 = 1;
      *&v86[4] = v53 & 0x3FFFFFFFFLL | ((v54 >> 2) << 34);
      *&v84[12] = *v86;
      *&v84[8] = v56;
      *&v84[20] = v54;
      *&v84[24] = v55;
      v85 = *&v86[4];
      v73 = 0;
      v74 = &unk_285187630;
      v75 = 0;
      sub_23F1DE88C(v76, v84);
      if (*&v84[24] && *&v84[28])
      {
        sub_23F1DE9BC(&v77, v76);
      }

      else
      {
        v77 = *v84;
        v78 = *&v84[16];
        v79 = v85;
      }

      if (!sub_23F1CE49C(&v74))
      {
        sub_23F1DF448(&v81, &v74);
        sub_23F1DF854(v86, &v74);
        *&v83 = v86;
        *(&v83 + 1) = &v73;
        sub_23F1F8A04(&v83, v62);
        sub_23F1FF570(&v81);
      }

      v74 = &unk_285187CF0;
      operator new();
    case 37:
      v81 = &unk_285181EB8;
      v48 = a3[1];
      v49 = 4 * (*a3 != 0);
      LODWORD(v50) = v49 * *a3;
      if (v50 <= 0x20)
      {
        LODWORD(v50) = 32;
      }

      v51 = *a3;
      v52 = HIDWORD(*a3);
      v74 = &unk_285187D80;
      if (v48)
      {
        v50 = v50;
      }

      else
      {
        v50 = 32;
      }

      *&v86[4] = v51;
      *v86 = 4;
      *&v86[8] = v52;
      *v84 = 1;
      *&v84[4] = v49 & 0x3FFFFFFFFLL | ((v50 >> 2) << 34);
      v87 = *v84;
      v88 = v50;
      v89 = v51;
      v90 = *&v84[4];
      sub_23F1D262C(&v74, 37, v86);
      v74 = &unk_285187D80;
      operator new();
    case 38:
      v80 = &unk_285181EF0;
      v6 = 4 * (*a3 != 0);
      LODWORD(v7) = v6 * *a3;
      if (v7 <= 0x10)
      {
        LODWORD(v7) = 16;
      }

      v8 = *a3;
      v9 = HIDWORD(*a3);
      if (a3[1])
      {
        v7 = v7;
      }

      else
      {
        v7 = 16;
      }

      *v86 = 4;
      *&v86[4] = v8;
      *v84 = *v86;
      *v86 = 1;
      *&v86[4] = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
      *&v84[12] = *v86;
      *&v84[8] = v9;
      *&v84[20] = v7;
      *&v84[24] = v8;
      v85 = *&v86[4];
      LOWORD(v73) = 0;
      v74 = &unk_2851872D0;
      v75 = 0;
      sub_23F1D62DC(v76, v84);
      if (*&v84[24] && *&v84[28])
      {
        sub_23F1D640C(&v77, v76);
      }

      else
      {
        v77 = *v84;
        v78 = *&v84[16];
        v79 = v85;
      }

      if (!sub_23F1CE49C(&v74))
      {
        sub_23F1D6E98(&v81, &v74);
        sub_23F1D72A4(v86, &v74);
        *&v83 = v86;
        *(&v83 + 1) = &v73;
        sub_23F1F50FC(&v83);
        sub_23F1FF570(&v81);
      }

      v74 = &unk_285187E10;
      operator new();
    default:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_23F3091D6, 0, "Runtime format not in given Formats list", 0x28uLL, sub_23F303DA4);
      abort();
  }
}

void sub_23F1FC45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FC9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FCAB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FCBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FCCC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FCDC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FCDF4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Two8u]", 29, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F1FCED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1FCFE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FD014(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Two16f]", 30, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F1FD0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1FD204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FD234(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Two32f]", 30, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F1FD318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F1FD424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FD528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FD62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FD730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FD834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FD938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F1FDA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23F1FDA7C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23F1FDD88(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23EF2F8F4();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

void sub_23F1FDB7C(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_2851882D0[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_23EF42150(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_23F1FDD3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23F1FDD88(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_23EF3AE74();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_23F1FDF24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void sub_23F1FDF38(uint64_t a1, int a2)
{
  v2 = a2;
  v4[0] = 0;
  v4[1] = 0;
  value = v4;
  sub_23F2D2898();
}

void sub_23F1FE218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_23EF3AE8C(&a12);
  sub_23EF3AE8C(&a9);
  sub_23EF3AE8C(v12);
  _Unwind_Resume(a1);
}

CFTypeID sub_23F1FE2CC@<X0>(CFTypeID result@<X0>, _BYTE *a2@<X8>)
{
  v4 = *result;
  v3 = *(result + 8);
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v8 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    result = v8;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *MEMORY[0x277CC4DE8];
  value = 0;
  if (v5)
  {
    result = CFDictionaryGetValueIfPresent(*result, v5, &value);
    if (result)
    {
      v6 = value;
      if (value)
      {
        TypeID = CFDictionaryGetTypeID();
        result = CFGetTypeID(v6);
        if (result == TypeID)
        {
          CFRetain(v6);
          sub_23F1FE738(&v12, v6);
        }
      }

      v9 = 0;
      v10 = 0;
    }
  }

LABEL_12:
  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_23F1FE520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF3AE8C(v5 - 48);
  sub_23F061EB0(va);
  _Unwind_Resume(a1);
}

void sub_23F1FE60C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  sub_23F1FE738(&v4, v3);
}

void sub_23F1FE93C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F1FE9BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F1FE9F4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F1FEA18(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F1FEA78(uint64_t *a1, uint64_t a2, unsigned int *a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v6 = a3;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a3 = v6;
    if (v4)
    {
LABEL_4:
      valuePtr = *a3;
      v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberNSIntegerType, &valuePtr);
      sub_23EFEA754(&v8, v5);
    }
  }

  else if (v4)
  {
    goto LABEL_4;
  }

  return 0;
}

void sub_23F1FEC70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1FEC84(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v6 = a3;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a3 = v6;
    if (v4)
    {
LABEL_4:
      valuePtr = *a3;
      v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberNSIntegerType, &valuePtr);
      sub_23EFEA754(&v8, v5);
    }
  }

  else if (v4)
  {
    goto LABEL_4;
  }

  return 0;
}

void sub_23F1FEE7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F1FEE90(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 340, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v7 = qword_27E396178, v8 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_12:
        qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_27E396178;
      v8 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_29;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, &unk_23F3091D6, 0);
    }

    while (v7 != v8);
    if ((byte_27E3961A0 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = a2;
  v19 = *(a1 + 8);
  v12 = v19;
  if (atomic_load_explicit((v19 + 104), memory_order_acquire) != -1)
  {
    v21 = &v19;
    v20 = &v21;
    std::__call_once((v19 + 104), &v20, sub_23F202824);
  }

  if (v11 >= (*(v12 + 120) - *(v12 + 112)) >> 3)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 341, "idx < p_->GetCachedBaseAddress().size()", 0x27uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v13 = qword_27E396178, v14 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_23:
        qword_27E396190(*algn_27E396198, "idx < p_->GetCachedBaseAddress().size()", 39, &unk_23F3091D6, 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_27E396178;
      v14 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_29;
      }
    }

    do
    {
      v16 = *v13;
      v15 = *(v13 + 8);
      v13 += 16;
      v16(v15, "idx < p_->GetCachedBaseAddress().size()", 39, &unk_23F3091D6, 0);
    }

    while (v13 != v14);
    if (byte_27E3961A0)
    {
      goto LABEL_23;
    }

LABEL_29:
    abort();
  }

LABEL_24:
  v17 = *(a1 + 8);
  v19 = v17;
  if (atomic_load_explicit((v17 + 104), memory_order_acquire) != -1)
  {
    v21 = &v19;
    v20 = &v21;
    std::__call_once((v17 + 104), &v20, sub_23F202824);
  }

  return *(*(v17 + 112) + 8 * v11);
}

void *sub_23F1FF194(void *result)
{
  *result = &unk_285188558;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_23F1FF228(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    if (v6)
    {
      sub_23F2036F0(*(a1 + 8));
    }
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a1 + 16);
  *(a1 + 8) = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void *sub_23F1FF324(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    if (v4)
    {
LABEL_5:
      sub_23F2036F0(a1[1]);
    }
  }

LABEL_6:
  *a1 = &unk_285188558;
  v5 = a1[2];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_23F1FF43C(void *a1)
{
  sub_23F1FF324(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F1FF474(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    if (v6)
    {
      sub_23F2037F4(*(a1 + 8));
    }
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a1 + 16);
  *(a1 + 8) = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void *sub_23F1FF570(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    if (v4)
    {
LABEL_5:
      sub_23F2037F4(a1[1]);
    }
  }

LABEL_6:
  *a1 = &unk_285188558;
  v5 = a1[2];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_23F1FF688(void *a1)
{
  sub_23F1FF570(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F1FF6C0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v3;
    *(a1 + 8) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 850045863;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0;
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v5;
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 850045863;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0;
  }

  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = &unk_28518B6D8;
  IOSurface = CVPixelBufferGetIOSurface(*a2);
  sub_23F28EAA4(&v7, IOSurface, 1);
}

void sub_23F1FF8BC(_Unwind_Exception *a1)
{
  sub_23F28ED4C(v2);
  v4 = *(v1 + 112);
  if (v4)
  {
    *(v1 + 120) = v4;
    operator delete(v4);
  }

  sub_23F2014A4(v1);
  _Unwind_Resume(a1);
}

void sub_23F1FF8E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  pixelBufferOut = 0;
  sub_23F1FE60C(v5, a5);
}

void sub_23F2002DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (*(v31 - 105) < 0)
  {
    operator delete(*(v31 - 128));
    if ((v30 & 1) == 0)
    {
LABEL_6:
      sub_23F200698(&a10);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v29);
  goto LABEL_6;
}

void sub_23F200418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23EF3AE8C(v14 - 128);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F200450()
{
  if (*(v0 - 129) < 0)
  {
    operator delete(*(v0 - 152));
  }

  JUMPOUT(0x23F2004B0);
}

void sub_23F20046C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x23F2004B0);
}

void sub_23F2004AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_23EF41D10(&a26);
  sub_23EF3AE8C(&a22);
  _Unwind_Resume(a1);
}

void sub_23F2004C8()
{
  v1 = *(v0 - 128);
  *(v0 - 128) = 0;
  if (v1)
  {
    sub_23F302A54(v0 - 128, v1);
  }

  JUMPOUT(0x23F2004B0);
}

void *sub_23F2004E4(void *result)
{
  *result = &unk_285188558;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F200684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F200698(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = result;
    (**result)();
    return v1;
  }

  else if (*(result + 31) < 0)
  {
    v2 = result;
    operator delete(*(result + 8));
    return v2;
  }

  return result;
}

void sub_23F200720(void *a1)
{
  *a1 = &unk_285188558;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23F2007C8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 347, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v7 = qword_27E396178, v8 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_12:
        qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_27E396178;
      v8 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_18;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, &unk_23F3091D6, 0);
    }

    while (v7 != v8);
    if (byte_27E3961A0)
    {
      goto LABEL_12;
    }

LABEL_18:
    abort();
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = *(a1 + 8);
  v13 = *(v11 + 144);
  v12 = *(v11 + 152);
  *a2 = &unk_28518B6D8;
  a2[1] = v13;
  a2[2] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }
}

size_t sub_23F200988(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 293, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_27E396178;
      v10 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_27E396178;
      v10 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, &unk_23F3091D6, 0);
    }

    while (v9 != v10);
    if (byte_27E3961A0)
    {
LABEL_19:
      qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return CVPixelBufferGetWidth(v6);
  }

LABEL_20:
  v6 = 0;

  return CVPixelBufferGetWidth(v6);
}

size_t sub_23F200BC4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 303, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_27E396178;
      v10 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_27E396178;
      v10 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, &unk_23F3091D6, 0);
    }

    while (v9 != v10);
    if (byte_27E3961A0)
    {
LABEL_19:
      qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return CVPixelBufferGetHeight(v6);
  }

LABEL_20:
  v6 = 0;

  return CVPixelBufferGetHeight(v6);
}

size_t sub_23F200E00(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 313, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_27E396178;
      v10 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_27E396178;
      v10 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, &unk_23F3091D6, 0);
    }

    while (v9 != v10);
    if (byte_27E3961A0)
    {
LABEL_19:
      qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return CVPixelBufferGetBytesPerRow(v6);
  }

LABEL_20:
  v6 = 0;

  return CVPixelBufferGetBytesPerRow(v6);
}

_DWORD *sub_23F20103C(_DWORD *a1, int a2, uint64_t a3, uint64_t a4)
{
  v23[1] = *MEMORY[0x277D85DE8];
  *a1 = a2;
  v6 = (a1 + 2);
  *&v15 = a3;
  *(&v15 + 1) = a4;
  sub_23F201650();
  v7 = qword_27E395DF0;
  if (!qword_27E395DF0)
  {
    goto LABEL_8;
  }

  v8 = &qword_27E395DF0;
  do
  {
    if (*(v7 + 32) >= a2)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < a2));
  }

  while (v7);
  if (v8 != &qword_27E395DF0 && *(v8 + 8) <= a2)
  {
    sub_23F201650();
    v18 = v15;
    v19 = ": ";
    v20 = 2;
    v11 = v8[5];
    v10 = v8 + 5;
    v9 = v11;
    v12 = *(v10 + 23);
    if ((v12 & 0x80u) != 0)
    {
      v12 = v10[1];
    }

    else
    {
      v9 = v10;
    }

    v21 = v9;
    v22 = v12;
    sub_23EF45AA0(&v18, v23, 0, 0, v6);
  }

  else
  {
LABEL_8:
    sub_23F201650();
    LODWORD(v20) = 0;
    sub_23F04D774(&v17, &v18, &v15);
    if (v20 == -1)
    {
      sub_23EF41D6C();
    }

    v17 = &v16;
    (off_285188418[v20])(&v17, &v18);
    if (v20 != -1)
    {
      (off_2851883E8[v20])(&v17, &v18);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F2011C8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void sub_23F2011E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2011F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void *sub_23F201208(void *a1, int *a2)
{
  v11 = 0;
  v14 = v10;
  v15 = "{";
  v16 = v10;
  v17 = "{";
  v18 = "{";
  v12.__r_.__value_.__r.__words[0] = &v14;
  sub_23EF42398(&v12);
  std::to_string(&v12, *a2);
  v14 = v10;
  v15 = &v12;
  v16 = v10;
  v17 = &v12;
  v18 = &v12;
  if (v11 == -1)
  {
    sub_23EF41D6C();
  }

  v13 = &v14;
  (off_285188400[v11])(&v13, v10);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  v14 = v10;
  v15 = ",";
  v16 = v10;
  v17 = ",";
  v18 = ",";
  if (v11 == -1)
  {
    goto LABEL_18;
  }

  v12.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_285188480 + v11))(&v12, v10);
  v14 = v10;
  v15 = (a2 + 2);
  v16 = v10;
  v17 = (a2 + 2);
  v18 = (a2 + 2);
  if (v11 == -1 || (v12.__r_.__value_.__r.__words[0] = &v14, (off_285188498[v11])(&v12, v10), v14 = v10, v15 = "}", v16 = v10, v17 = "}", v18 = "}", v11 == -1))
  {
LABEL_18:
    sub_23EF41D6C();
  }

  v12.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_285188480 + v11))(&v12, v10);
  if (v11 == -1)
  {
    sub_23EF41D6C();
  }

  v14 = &v12;
  (off_285188418[v11])(__p, &v14, v10);
  if (v11 != -1)
  {
    (off_2851883E8[v11])(&v14, v10);
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = __p[1];
  }

  result = sub_23EF2F9B0(a1, v4, v5);
  if (v9 < 0)
  {
    v7 = result;
    operator delete(__p[0]);
    return v7;
  }

  return result;
}

void sub_23F20144C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2014A4(uint64_t a1)
{
  std::mutex::~mutex((a1 + 40));
  result = a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_23F201650()
{
  v2 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27E395DE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395DE0))
  {
    v1 = 0;
    operator new();
  }

  v0 = *MEMORY[0x277D85DE8];
}

void sub_23F201F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
    if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x210]);
  if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a84 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a85);
  if ((a84 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a82 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(a83);
  if ((a82 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a80 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(a81);
  if ((a80 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a78 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(a79);
  if ((a78 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a76 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(a77);
  if ((a76 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a74 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(a75);
  if ((a74 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a72 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(a73);
  if ((a72 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a65 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(a67);
  if ((a65 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a58 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(a60);
  if ((a58 & 0x80000000) == 0)
  {
LABEL_13:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(a53);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_14:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(a46);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_15:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(a39);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_16:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(a32);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_17:
    if ((a23 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(a25);
  if ((a23 & 0x80000000) == 0)
  {
LABEL_18:
    if ((a16 & 0x80000000) == 0)
    {
LABEL_38:
      __cxa_guard_abort(&qword_27E395DE0);
      _Unwind_Resume(a1);
    }

LABEL_37:
    operator delete(a11);
    __cxa_guard_abort(&qword_27E395DE0);
    _Unwind_Resume(a1);
  }

LABEL_36:
  operator delete(a18);
  if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  goto LABEL_37;
}

uint64_t sub_23F20214C(uint64_t a1, int a2, char *__s)
{
  *a1 = a2;
  v5 = (a1 + 8);
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = v6;
  if (v6)
  {
    memmove(v5, __s, v6);
  }

  *(v5 + v7) = 0;
  return a1;
}

void sub_23F202208(uint64_t a1, uint64_t a2)
{
  qword_27E395DF8 = 0;
  qword_27E395DF0 = 0;
  qword_27E395DE8 = &qword_27E395DF0;
  if (a2)
  {
    operator new();
  }
}

void sub_23F2023C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F202400(va);
  sub_23F202468(qword_27E395DF0);
  _Unwind_Resume(a1);
}

void *sub_23F202400(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 63) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 40));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void sub_23F202468(char *a1)
{
  if (a1)
  {
    sub_23F202468(*a1);
    sub_23F202468(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

void sub_23F2026E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F202768(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2027A0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F2027C4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP11__IOSurfaceEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP11__IOSurfaceEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP11__IOSurfaceEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP11__IOSurfaceEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F202824(CVPixelBufferRef ****a1)
{
  IOSurface = CVPixelBufferGetIOSurface(****a1);
  v2 = IOSurface;
  if (IOSurface)
  {
    CFRetain(IOSurface);
  }

  sub_23F2024E4(&buffer, v2);
}

void sub_23F202A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  operator delete(v11);
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23F202AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  operator delete(v9);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23F202AE8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285188440;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F202B3C(uint64_t a1)
{
  *(a1 + 160) = &unk_28518B6D8;
  v2 = *(a1 + 176);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    *(a1 + 144) = v3;
    operator delete(v3);
  }

  std::mutex::~mutex((a1 + 64));
  v4 = *(a1 + 32);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

size_t sub_23F202C40(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2851883E8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_23F202D34(uint64_t *a1, uint64_t a2)
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
    (off_2851883E8[v10])(&v13, v3);
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

void sub_23F202EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F202F50(uint64_t a1, uint64_t a2)
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

void sub_23F203190(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void sub_23F2033B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F203430(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F203468(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F20348C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP10__CVBufferEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP10__CVBufferEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP10__CVBufferEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP10__CVBufferEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F2034EC(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 24) + 1;
  *(a1 + 24) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 && !*(a1 + 32))
      {
LABEL_5:
        v4 = (a1 + 40);

        goto LABEL_7;
      }

      v5 = 1;
    }

    else
    {
      if (v3 != 2 || *(a1 + 32))
      {
        goto LABEL_5;
      }

      v5 = 0;
    }

    CVPixelBufferUnlockBaseAddress(*a1, v5);
    *(a1 + 16) = 0;
  }

  if (*(a1 + 32))
  {
    v6 = 0;
    v7 = 2;
  }

  else
  {
    if (!*(a1 + 24))
    {
      goto LABEL_5;
    }

    v6 = 1;
    v7 = 1;
  }

  CVPixelBufferLockBaseAddress(*a1, v6);
  *(a1 + 16) = v7;
  v4 = (a1 + 40);

LABEL_7:
  std::mutex::unlock(v4);
}

void sub_23F2035F0(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 32) + 1;
  *(a1 + 32) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      v6 = 1;
      if (*(a1 + 24) && !v2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v3 != 2 || v2 != 0)
      {
        goto LABEL_7;
      }

      v6 = 0;
    }

    CVPixelBufferUnlockBaseAddress(*a1, v6);
    *(a1 + 16) = 0;
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v7 = 0;
    v8 = 2;
    goto LABEL_19;
  }

  if (!*(a1 + 24))
  {
LABEL_7:
    v5 = (a1 + 40);

    goto LABEL_9;
  }

  v7 = 1;
  v8 = 1;
LABEL_19:
  CVPixelBufferLockBaseAddress(*a1, v7);
  *(a1 + 16) = v8;
  v5 = (a1 + 40);

LABEL_9:
  std::mutex::unlock(v5);
}

void sub_23F2036F0(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 24) - 1;
  *(a1 + 24) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 && !*(a1 + 32))
      {
LABEL_5:
        v4 = (a1 + 40);

        goto LABEL_7;
      }

      v5 = 1;
    }

    else
    {
      if (v3 != 2 || *(a1 + 32))
      {
        goto LABEL_5;
      }

      v5 = 0;
    }

    CVPixelBufferUnlockBaseAddress(*a1, v5);
    *(a1 + 16) = 0;
  }

  if (*(a1 + 32))
  {
    v6 = 0;
    v7 = 2;
  }

  else
  {
    if (!*(a1 + 24))
    {
      goto LABEL_5;
    }

    v6 = 1;
    v7 = 1;
  }

  CVPixelBufferLockBaseAddress(*a1, v6);
  *(a1 + 16) = v7;
  v4 = (a1 + 40);

LABEL_7:
  std::mutex::unlock(v4);
}

void sub_23F2037F4(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 32) - 1;
  *(a1 + 32) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      v6 = 1;
      if (*(a1 + 24) && !v2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v3 != 2 || v2 != 0)
      {
        goto LABEL_7;
      }

      v6 = 0;
    }

    CVPixelBufferUnlockBaseAddress(*a1, v6);
    *(a1 + 16) = 0;
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v7 = 0;
    v8 = 2;
    goto LABEL_19;
  }

  if (!*(a1 + 24))
  {
LABEL_7:
    v5 = (a1 + 40);

    goto LABEL_9;
  }

  v7 = 1;
  v8 = 1;
LABEL_19:
  CVPixelBufferLockBaseAddress(*a1, v7);
  *(a1 + 16) = v8;
  v5 = (a1 + 40);

LABEL_9:
  std::mutex::unlock(v5);
}

size_t sub_23F2038F4(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_285188608[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_23F2039E8(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgr8u]", 29, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F203ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21489C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v6 = *(v4 - 104);
  *(v4 - 104) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(v4 - 96);
  *(v4 - 96) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
    sub_23F08B948(va);
    sub_23F08B948(va1);
    _Unwind_Resume(a1);
  }

  sub_23F08B948(va);
  sub_23F08B948(va1);
  _Unwind_Resume(a1);
}

void sub_23F21619C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F08B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2161B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F133F30(va);
  _Unwind_Resume(a1);
}

void sub_23F2161C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F131A04(va);
  _Unwind_Resume(a1);
}

void sub_23F2161D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F130B24(va);
  _Unwind_Resume(a1);
}

void sub_23F2161EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F13AEB0(va);
  _Unwind_Resume(a1);
}

void sub_23F216200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F133050(va);
  _Unwind_Resume(a1);
}

void sub_23F216214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F138988(va);
  _Unwind_Resume(a1);
}

void sub_23F216228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F12E5F8(va);
  _Unwind_Resume(a1);
}

void sub_23F21623C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F12ED68(va);
  _Unwind_Resume(a1);
}

void sub_23F216250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F13A744(va);
  _Unwind_Resume(a1);
}

void sub_23F216264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F08B8D0(va);
  _Unwind_Resume(a1);
}

void sub_23F216278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F12B318(va);
  _Unwind_Resume(a1);
}

void sub_23F21628C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F12D71C(va);
  _Unwind_Resume(a1);
}

void sub_23F2162A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F131294(va);
  _Unwind_Resume(a1);
}

void sub_23F2162B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F12C0D0(va);
  _Unwind_Resume(a1);
}

void sub_23F2162C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F08B858(va);
  _Unwind_Resume(a1);
}

void sub_23F2162DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F12DE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F2162F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F138218(va);
  _Unwind_Resume(a1);
}

void sub_23F216304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1390F4(va);
  _Unwind_Resume(a1);
}

void sub_23F216318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F137338(va);
  _Unwind_Resume(a1);
}

void sub_23F21632C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F139864(va);
  _Unwind_Resume(a1);
}

void sub_23F216340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F139FD4(va);
  _Unwind_Resume(a1);
}

void sub_23F216354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F13645C(va);
  _Unwind_Resume(a1);
}

void sub_23F216368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F12B9F4(va);
  _Unwind_Resume(a1);
}

void sub_23F21637C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F12C83C(va);
  _Unwind_Resume(a1);
}

void sub_23F216390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F137AA8(va);
  _Unwind_Resume(a1);
}

void sub_23F2163A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F13557C(va);
  _Unwind_Resume(a1);
}

void sub_23F2163B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1337C0(va);
  _Unwind_Resume(a1);
}

void sub_23F2163CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F13B620(va);
  _Unwind_Resume(a1);
}

void sub_23F2163E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F12CFAC(va);
  _Unwind_Resume(a1);
}

void sub_23F2163F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F132170(va);
  _Unwind_Resume(a1);
}

void sub_23F216408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F13BD90(va);
  _Unwind_Resume(a1);
}

void sub_23F21641C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F12FC48(va);
  _Unwind_Resume(a1);
}

void sub_23F216430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1303B4(va);
  _Unwind_Resume(a1);
}

void sub_23F216444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1346A0(va);
  _Unwind_Resume(a1);
}

void sub_23F216458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F136BCC(va);
  _Unwind_Resume(a1);
}

void sub_23F21646C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F12F4D8(va);
  _Unwind_Resume(a1);
}

void sub_23F216480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F134E10(va);
  _Unwind_Resume(a1);
}

void sub_23F216494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F1328E0(va);
  _Unwind_Resume(a1);
}

void sub_23F2164A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23F135CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F216560(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F2165D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F216690(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F216740()
{
  if ((atomic_load_explicit(&qword_27E395378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395378))
  {
    sub_23F2167DC();
  }

  if (byte_27E395377 >= 0)
  {
    return &qword_27E395360;
  }

  else
  {
    return qword_27E395360;
  }
}

void sub_23F2168A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2168DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F216914(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F216978(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE5EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE5EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE5EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE5EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F2169D8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F216A50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F216B08(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F216BB8()
{
  if ((atomic_load_explicit(&qword_27E395398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395398))
  {
    sub_23F216C54();
  }

  if (byte_27E395397 >= 0)
  {
    return &qword_27E395380;
  }

  else
  {
    return qword_27E395380;
  }
}

void sub_23F216D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F216D50(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Two16u]", 30, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F216E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F216E70(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F216EA8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F216F0C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE6EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE6EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE6EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE6EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F216F6C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F216FE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21709C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21712C(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_23F231BB0(v2);
    MEMORY[0x245CACD00](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

uint64_t *sub_23F2171A0()
{
  if ((atomic_load_explicit(&qword_27E3953B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3953B8))
  {
    sub_23F21723C();
  }

  if (byte_27E3953B7 >= 0)
  {
    return &qword_27E3953A0;
  }

  else
  {
    return qword_27E3953A0;
  }
}

void sub_23F217308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21733C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F217374(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_23F231BB0(result);

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F2173B8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE7EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE7EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE7EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE7EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F217418(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F217490(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F217548(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F2175F8()
{
  if ((atomic_load_explicit(&qword_27E3953D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3953D8))
  {
    sub_23F217694();
  }

  if (byte_27E3953D7 >= 0)
  {
    return &qword_27E3953C0;
  }

  else
  {
    return qword_27E3953C0;
  }
}

void sub_23F217760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F217794(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2177CC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F217830(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE8EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE8EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE8EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE8EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F217890(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F217908(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2179C0(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F217A70()
{
  if ((atomic_load_explicit(&qword_27E3953F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3953F8))
  {
    sub_23F217B0C();
  }

  if (byte_27E3953F7 >= 0)
  {
    return &qword_27E3953E0;
  }

  else
  {
    return qword_27E3953E0;
  }
}

void sub_23F217BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F217C08(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Three8u]", 31, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F217CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F217D28(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F217D60(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F217DC4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE9EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE9EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE9EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE9EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F217E24(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F217E9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F217F54(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F218004()
{
  if ((atomic_load_explicit(&qword_27E395418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395418))
  {
    sub_23F2180A0();
  }

  if (byte_27E395417 >= 0)
  {
    return &qword_27E395400;
  }

  else
  {
    return qword_27E395400;
  }
}

void sub_23F21816C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21819C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Three16u]", 32, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F218280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2182BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2182F4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F218358(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE10EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE10EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE10EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE10EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F2183B8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F218430(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2184E8(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F218578(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_23F23577C(v2);
    MEMORY[0x245CACD00](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

uint64_t *sub_23F2185EC()
{
  if ((atomic_load_explicit(&qword_27E395438, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395438))
  {
    sub_23F218688();
  }

  if (byte_27E395437 >= 0)
  {
    return &qword_27E395420;
  }

  else
  {
    return qword_27E395420;
  }
}

void sub_23F218754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F218784(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Three16f]", 32, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F218868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2188A4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2188DC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_23F23577C(result);

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F218920(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE11EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE11EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE11EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE11EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F218980(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F2189F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F218AB0(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F218B60()
{
  if ((atomic_load_explicit(&qword_27E395458, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395458))
  {
    sub_23F218BFC();
  }

  if (byte_27E395457 >= 0)
  {
    return &qword_27E395440;
  }

  else
  {
    return qword_27E395440;
  }
}

void sub_23F218CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F218CF8(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Three32f]", 32, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F218DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F218E18(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F218E50(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F218EB4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE12EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE12EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE12EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE12EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F218F14(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F218F8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F219044(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F2190F4()
{
  if ((atomic_load_explicit(&qword_27E395478, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395478))
  {
    sub_23F219190();
  }

  if (byte_27E395477 >= 0)
  {
    return &qword_27E395460;
  }

  else
  {
    return qword_27E395460;
  }
}

void sub_23F21925C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21928C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Four8u]", 30, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F219370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F2193AC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2193E4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F219448(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE13EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE13EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE13EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE13EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F2194A8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F219520(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2195D8(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F219688()
{
  if ((atomic_load_explicit(&qword_27E395498, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395498))
  {
    sub_23F219724();
  }

  if (byte_27E395497 >= 0)
  {
    return &qword_27E395480;
  }

  else
  {
    return qword_27E395480;
  }
}

void sub_23F2197F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F219820(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Four16u]", 31, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F219904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F219940(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F219978(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F2199DC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE14EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE14EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE14EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE14EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F219A3C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F219AB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F219B6C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F219BFC(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_23F238420(v2);
    MEMORY[0x245CACD00](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

uint64_t *sub_23F219C70()
{
  if ((atomic_load_explicit(&qword_27E3954B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3954B8))
  {
    sub_23F219D0C();
  }

  if (byte_27E3954B7 >= 0)
  {
    return &qword_27E3954A0;
  }

  else
  {
    return qword_27E3954A0;
  }
}

void sub_23F219DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F219E08(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Four16f]", 31, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F219EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F219F28(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F219F60(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_23F238420(result);

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F219FA4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE15EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE15EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE15EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE15EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21A004(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21A07C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21A134(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21A1E4()
{
  if ((atomic_load_explicit(&qword_27E3954D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3954D8))
  {
    sub_23F21A280();
  }

  if (byte_27E3954D7 >= 0)
  {
    return &qword_27E3954C0;
  }

  else
  {
    return qword_27E3954C0;
  }
}

void sub_23F21A34C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21A37C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Four32f]", 31, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F21A460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21A49C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21A4D4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21A538(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE16EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE16EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE16EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE16EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21A598(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21A610(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21A6C8(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21A778()
{
  if ((atomic_load_explicit(&qword_27E3954F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3954F8))
  {
    sub_23F21A814();
  }

  if (byte_27E3954F7 >= 0)
  {
    return &qword_27E3954E0;
  }

  else
  {
    return qword_27E3954E0;
  }
}

void sub_23F21A8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21A914(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21A94C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21A9B0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE17EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE17EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE17EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE17EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21AA10(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21AA88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21AB40(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21ABF0()
{
  if ((atomic_load_explicit(&qword_27E395518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395518))
  {
    sub_23F21AC8C();
  }

  if (byte_27E395517 >= 0)
  {
    return &qword_27E395500;
  }

  else
  {
    return qword_27E395500;
  }
}

void sub_23F21AD58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21AD88(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgr16u]", 30, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F21AE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21AEA8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21AEE0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21AF44(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE18EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE18EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE18EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE18EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21AFA4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21B01C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21B0D4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21B164(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_23F23AF64(v2);
    MEMORY[0x245CACD00](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

uint64_t *sub_23F21B1D8()
{
  if ((atomic_load_explicit(&qword_27E395538, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395538))
  {
    sub_23F21B274();
  }

  if (byte_27E395537 >= 0)
  {
    return &qword_27E395520;
  }

  else
  {
    return qword_27E395520;
  }
}

void sub_23F21B340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21B370(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgr16f]", 30, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F21B454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21B490(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21B4C8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_23F23AF64(result);

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21B50C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE19EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE19EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE19EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE19EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21B56C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21B5E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21B69C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21B74C()
{
  if ((atomic_load_explicit(&qword_27E395558, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395558))
  {
    sub_23F21B7E8();
  }

  if (byte_27E395557 >= 0)
  {
    return &qword_27E395540;
  }

  else
  {
    return qword_27E395540;
  }
}

void sub_23F21B8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21B8E4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgr32f]", 30, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F21B9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21BA04(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21BA3C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21BAA0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE20EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE20EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE20EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE20EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21BB00(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21BB78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21BC30(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21BCE0()
{
  if ((atomic_load_explicit(&qword_27E395578, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395578))
  {
    sub_23F21BD7C();
  }

  if (byte_27E395577 >= 0)
  {
    return &qword_27E395560;
  }

  else
  {
    return qword_27E395560;
  }
}

void sub_23F21BE48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21BE78(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgra16u]", 31, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F21BF5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21BF98(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21BFD0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21C034(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE26EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE26EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE26EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE26EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21C094(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21C10C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21C1C4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21C254(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_23F2405DC(v2);
    MEMORY[0x245CACD00](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

uint64_t *sub_23F21C2C8()
{
  if ((atomic_load_explicit(&qword_27E395598, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395598))
  {
    sub_23F21C364();
  }

  if (byte_27E395597 >= 0)
  {
    return &qword_27E395580;
  }

  else
  {
    return qword_27E395580;
  }
}

void sub_23F21C430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21C460(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgra16f]", 31, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F21C544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21C580(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21C5B8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_23F2405DC(result);

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21C5FC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE27EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE27EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE27EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE27EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21C65C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21C6D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21C78C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21C83C()
{
  if ((atomic_load_explicit(&qword_27E3955B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3955B8))
  {
    sub_23F21C8D8();
  }

  if (byte_27E3955B7 >= 0)
  {
    return &qword_27E3955A0;
  }

  else
  {
    return qword_27E3955A0;
  }
}

void sub_23F21C9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21C9D4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Bgra32f]", 31, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F21CAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21CAF4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21CB2C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21CB90(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE28EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE28EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE28EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE28EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21CBF0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21CC68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21CD20(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21CDD0()
{
  if ((atomic_load_explicit(&qword_27E3955D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3955D8))
  {
    sub_23F21CE6C();
  }

  if (byte_27E3955D7 >= 0)
  {
    return &qword_27E3955C0;
  }

  else
  {
    return qword_27E3955C0;
  }
}

void sub_23F21CF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21CF68(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Abgr16u]", 31, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F21D04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21D088(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21D0C0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21D124(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE34EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE34EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE34EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE34EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21D184(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21D1FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21D2B4(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21D344(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_23F245C64(v2);
    MEMORY[0x245CACD00](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

uint64_t *sub_23F21D3B8()
{
  if ((atomic_load_explicit(&qword_27E3955F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3955F8))
  {
    sub_23F21D454();
  }

  if (byte_27E3955F7 >= 0)
  {
    return &qword_27E3955E0;
  }

  else
  {
    return qword_27E3955E0;
  }
}

void sub_23F21D520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21D550(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Abgr16f]", 31, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F21D634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21D670(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21D6A8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_23F245C64(result);

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21D6EC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE35EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE35EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE35EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE35EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F21D74C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F21D7C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21D87C(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t *sub_23F21D92C()
{
  if ((atomic_load_explicit(&qword_27E395618, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395618))
  {
    sub_23F21D9C8();
  }

  if (byte_27E395617 >= 0)
  {
    return &qword_27E395600;
  }

  else
  {
    return qword_27E395600;
  }
}

void sub_23F21DA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F21DAC4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Abgr32f]", 31, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F21DBA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F21DBE4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F21DC1C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F21DC80(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE36EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE36EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE36EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE36EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F21DCE0(int a1@<W0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  switch(a1)
  {
    case 1:
      v4 = **a2;
      v5 = (*a2)[1];
      v566 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = a2[1];
      if (!v4)
      {
        sub_23F085930(v6);
      }

      v7 = (*(*v4 + 24))(v4);
      v8 = *v6;
      (*(*v7 + 24))(&v576);
      v9 = v576;
      v576 = 0;
      v580 = v9;
      if (v9)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 1);
      v479 = *(v578 + 16);
      *v570 = *v578;
      *&v570[16] = v479;
      v578 = 0;
      MEMORY[0x245CACD00]();
      *&v570[24] = *v570;
      *&v570[32] = *&v570[8];
      v480 = (*(MEMORY[0] + 104))(0);
      LOWORD(v571) = v480 & ((v480 >> 1) >> 15);
      v481 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v481->__on_zero_shared)(v481);
        std::__shared_weak_count::__release_weak(v481);
      }

      v482 = v576;
      v576 = 0;
      if (v482)
      {
        (*(*v482 + 8))(v482);
      }

      *a3 = &unk_285179288;
      v483 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v570[32], 2, &v570[40], 2, 1);
      v484 = v569 | 0x100000000;
      v270 = v571;
      if (!BYTE4(v569))
      {
        v484 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v483;
      v485 = v576;
      *(a3 + 24) = v484;
      *(a3 + 32) = v485;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      *(a3 + 56) = 1;
      goto LABEL_645;
    case 2:
      v178 = **a2;
      v179 = (*a2)[1];
      v566 = v179;
      if (v179)
      {
        atomic_fetch_add_explicit(&v179->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v180 = a2[1];
      if (!v178)
      {
        sub_23F090714(v180);
      }

      v181 = (*(*v178 + 24))(v178);
      v182 = *v180;
      (*(*v181 + 24))(&v576);
      v183 = v576;
      v576 = 0;
      v580 = v183;
      if (v183)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 2);
      v473 = *(v578 + 16);
      *v570 = *v578;
      *&v570[16] = v473;
      v578 = 0;
      MEMORY[0x245CACD00]();
      *&v570[24] = *v570;
      *&v570[32] = *&v570[8];
      v474 = (*(MEMORY[0] + 104))(0);
      LOWORD(v571) = v474 & ((v474 >> 1) >> 15);
      v475 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v475->__on_zero_shared)(v475);
        std::__shared_weak_count::__release_weak(v475);
      }

      v476 = v576;
      v576 = 0;
      if (v476)
      {
        (*(*v476 + 8))(v476);
      }

      *a3 = &unk_285179288;
      v382 = v567;
      v381 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      v383 = BYTE4(v569);
      v384 = 2;
      sub_23F28E5E0(&v576, &v570[32], 2, &v570[40], 2, 2);
      v250 = v571;
      v385 = (2 * v569);
      goto LABEL_528;
    case 3:
      v172 = **a2;
      v173 = (*a2)[1];
      v566 = v173;
      if (v173)
      {
        atomic_fetch_add_explicit(&v173->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v174 = a2[1];
      if (!v172)
      {
        sub_23F1C5850(v174);
      }

      v175 = (*(*v172 + 24))(v172);
      v176 = *v174;
      (*(*v175 + 24))(&v576);
      v177 = v576;
      v576 = 0;
      v580 = v177;
      if (v177)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 3);
      v466 = *(v578 + 16);
      *v570 = *v578;
      *&v570[16] = v466;
      v578 = 0;
      MEMORY[0x245CACD00]();
      *&v570[24] = *v570;
      *&v570[32] = *&v570[8];
      v467 = (*(MEMORY[0] + 104))(0);
      LOWORD(v571) = v467 & ((v467 >> 1) >> 15);
      v468 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v468->__on_zero_shared)(v468);
        std::__shared_weak_count::__release_weak(v468);
      }

      v469 = v576;
      v576 = 0;
      if (v469)
      {
        (*(*v469 + 8))(v469);
      }

      *a3 = &unk_285179288;
      v470 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v570[32], 2, &v570[40], 2, 2);
      v250 = v571;
      v471 = (2 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v471 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v470;
      v472 = v576;
      *(a3 + 24) = v471;
      *(a3 + 32) = v472;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 3;
      goto LABEL_631;
    case 4:
      v106 = **a2;
      v107 = (*a2)[1];
      v566 = v107;
      if (v107)
      {
        atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v108 = a2[1];
      if (!v106)
      {
        sub_23F1C609C(v108);
      }

      v109 = (*(*v106 + 24))(v106);
      v110 = *v108;
      (*(*v109 + 24))(&v576);
      v111 = v576;
      v576 = 0;
      v580 = v111;
      if (v111)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 4);
      v377 = *(v578 + 16);
      *v570 = *v578;
      *&v570[16] = v377;
      v578 = 0;
      MEMORY[0x245CACD00]();
      *&v570[24] = *v570;
      *&v570[32] = *&v570[8];
      v378 = (*(MEMORY[0] + 104))(0);
      LOWORD(v571) = v378 & ((v378 >> 1) >> 15);
      v379 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v379->__on_zero_shared)(v379);
        std::__shared_weak_count::__release_weak(v379);
      }

      v380 = v576;
      v576 = 0;
      if (v380)
      {
        (*(*v380 + 8))(v380);
      }

      *a3 = &unk_285179288;
      v382 = v567;
      v381 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      v383 = BYTE4(v569);
      v384 = 4;
      sub_23F28E5E0(&v576, &v570[32], 2, &v570[40], 2, 4);
      v250 = v571;
      v385 = (4 * v569);
LABEL_528:
      v477 = v385 | 0x100000000;
      if (!v383)
      {
        v477 = 0;
      }

      *(a3 + 8) = v382;
      *(a3 + 16) = v381;
      v478 = v576;
      *(a3 + 24) = v477;
      *(a3 + 32) = v478;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      *(a3 + 56) = v384;
      goto LABEL_632;
    case 5:
      v154 = **a2;
      v155 = (*a2)[1];
      v566 = v155;
      if (v155)
      {
        atomic_fetch_add_explicit(&v155->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v156 = a2[1];
      if (!v154)
      {
        sub_23F226364(&v567, v156);
      }

      v157 = (*(*v154 + 24))(v154);
      v158 = *v156;
      (*(*v157 + 24))(&v576);
      v159 = v576;
      v576 = 0;
      v580 = v159;
      if (v159)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 5);
      v443 = *(v578 + 16);
      v442 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v443;
      *&v570[32] = v442;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v444 = (*(MEMORY[0] + 104))(0);
      v575 = v444 & ((v444 >> 1) >> 15);
      v445 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v445->__on_zero_shared)(v445);
        std::__shared_weak_count::__release_weak(v445);
      }

      v446 = v576;
      v576 = 0;
      if (v446)
      {
        (*(*v446 + 8))(v446);
      }

      *a3 = &unk_285179288;
      v447 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 1);
      v448 = v569 | 0x100000000;
      v270 = v575;
      if (!BYTE4(v569))
      {
        v448 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v447;
      v449 = v576;
      *(a3 + 24) = v448;
      *(a3 + 32) = v449;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v272 = 5;
      goto LABEL_644;
    case 6:
      v100 = **a2;
      v101 = (*a2)[1];
      v566 = v101;
      if (v101)
      {
        atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v102 = a2[1];
      if (!v100)
      {
        sub_23F22660C(&v567, v102);
      }

      v103 = (*(*v100 + 24))(v100);
      v104 = *v102;
      (*(*v103 + 24))(&v576);
      v105 = v576;
      v576 = 0;
      v580 = v105;
      if (v105)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 6);
      v370 = *(v578 + 16);
      v369 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v370;
      *&v570[32] = v369;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v371 = (*(MEMORY[0] + 104))(0);
      v575 = v371 & ((v371 >> 1) >> 15);
      v372 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v372->__on_zero_shared)(v372);
        std::__shared_weak_count::__release_weak(v372);
      }

      v373 = v576;
      v576 = 0;
      if (v373)
      {
        (*(*v373 + 8))(v373);
      }

      *a3 = &unk_285179288;
      v374 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 2);
      v250 = v575;
      v375 = (2 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v375 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v374;
      v376 = v576;
      *(a3 + 24) = v375;
      *(a3 + 32) = v376;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 6;
      goto LABEL_631;
    case 7:
      v70 = **a2;
      v71 = (*a2)[1];
      v566 = v71;
      if (v71)
      {
        atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v72 = a2[1];
      if (!v70)
      {
        sub_23F22691C(&v567, v72);
      }

      v73 = (*(*v70 + 24))(v70);
      v74 = *v72;
      (*(*v73 + 24))(&v576);
      v75 = v576;
      v576 = 0;
      v580 = v75;
      if (v75)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 7);
      v330 = *(v578 + 16);
      v329 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v330;
      *&v570[32] = v329;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v331 = (*(MEMORY[0] + 104))(0);
      v575 = v331 & ((v331 >> 1) >> 15);
      v332 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v332->__on_zero_shared)(v332);
        std::__shared_weak_count::__release_weak(v332);
      }

      v333 = v576;
      v576 = 0;
      if (v333)
      {
        (*(*v333 + 8))(v333);
      }

      *a3 = &unk_285179288;
      v334 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 2);
      v250 = v575;
      v335 = (2 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v335 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v334;
      v336 = v576;
      *(a3 + 24) = v335;
      *(a3 + 32) = v336;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 7;
      goto LABEL_631;
    case 8:
      v166 = **a2;
      v167 = (*a2)[1];
      v566 = v167;
      if (v167)
      {
        atomic_fetch_add_explicit(&v167->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v168 = a2[1];
      if (!v166)
      {
        sub_23F226BBC(&v567, v168);
      }

      v169 = (*(*v166 + 24))(v166);
      v170 = *v168;
      (*(*v169 + 24))(&v576);
      v171 = v576;
      v576 = 0;
      v580 = v171;
      if (v171)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 8);
      v459 = *(v578 + 16);
      v458 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v459;
      *&v570[32] = v458;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v460 = (*(MEMORY[0] + 104))(0);
      v575 = v460 & ((v460 >> 1) >> 15);
      v461 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v461->__on_zero_shared)(v461);
        std::__shared_weak_count::__release_weak(v461);
      }

      v462 = v576;
      v576 = 0;
      if (v462)
      {
        (*(*v462 + 8))(v462);
      }

      *a3 = &unk_285179288;
      v463 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 4);
      v250 = v575;
      v464 = (4 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v464 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v463;
      v465 = v576;
      *(a3 + 24) = v464;
      *(a3 + 32) = v465;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 8;
      goto LABEL_631;
    case 9:
      v148 = **a2;
      v149 = (*a2)[1];
      v566 = v149;
      if (v149)
      {
        atomic_fetch_add_explicit(&v149->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v150 = a2[1];
      if (!v148)
      {
        sub_23F226ECC(&v567, v150);
      }

      v151 = (*(*v148 + 24))(v148);
      v152 = *v150;
      (*(*v151 + 24))(&v576);
      v153 = v576;
      v576 = 0;
      v580 = v153;
      if (v153)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 9);
      v435 = *(v578 + 16);
      v434 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v435;
      *&v570[32] = v434;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v436 = (*(MEMORY[0] + 104))(0);
      v575 = v436 & ((v436 >> 1) >> 15);
      v437 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v437->__on_zero_shared)(v437);
        std::__shared_weak_count::__release_weak(v437);
      }

      v438 = v576;
      v576 = 0;
      if (v438)
      {
        (*(*v438 + 8))(v438);
      }

      *a3 = &unk_285179288;
      v439 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 1);
      v440 = v569 | 0x100000000;
      v270 = v575;
      if (!BYTE4(v569))
      {
        v440 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v439;
      v441 = v576;
      *(a3 + 24) = v440;
      *(a3 + 32) = v441;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v272 = 9;
      goto LABEL_644;
    case 10:
      v196 = **a2;
      v197 = (*a2)[1];
      v566 = v197;
      if (v197)
      {
        atomic_fetch_add_explicit(&v197->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v198 = a2[1];
      if (!v196)
      {
        sub_23F227174(&v567, v198);
      }

      v199 = (*(*v196 + 24))(v196);
      v200 = *v198;
      (*(*v199 + 24))(&v576);
      v201 = v576;
      v576 = 0;
      v580 = v201;
      if (v201)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 10);
      v503 = *(v578 + 16);
      v502 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v503;
      *&v570[32] = v502;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v504 = (*(MEMORY[0] + 104))(0);
      v575 = v504 & ((v504 >> 1) >> 15);
      v505 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v505->__on_zero_shared)(v505);
        std::__shared_weak_count::__release_weak(v505);
      }

      v506 = v576;
      v576 = 0;
      if (v506)
      {
        (*(*v506 + 8))(v506);
      }

      *a3 = &unk_285179288;
      v507 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 2);
      v250 = v575;
      v508 = (2 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v508 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v507;
      v509 = v576;
      *(a3 + 24) = v508;
      *(a3 + 32) = v509;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 10;
      goto LABEL_631;
    case 11:
      v190 = **a2;
      v191 = (*a2)[1];
      v566 = v191;
      if (v191)
      {
        atomic_fetch_add_explicit(&v191->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v192 = a2[1];
      if (!v190)
      {
        sub_23F227484(&v567, v192);
      }

      v193 = (*(*v190 + 24))(v190);
      v194 = *v192;
      (*(*v193 + 24))(&v576);
      v195 = v576;
      v576 = 0;
      v580 = v195;
      if (v195)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 11);
      v495 = *(v578 + 16);
      v494 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v495;
      *&v570[32] = v494;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v496 = (*(MEMORY[0] + 104))(0);
      v575 = v496 & ((v496 >> 1) >> 15);
      v497 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v497->__on_zero_shared)(v497);
        std::__shared_weak_count::__release_weak(v497);
      }

      v498 = v576;
      v576 = 0;
      if (v498)
      {
        (*(*v498 + 8))(v498);
      }

      *a3 = &unk_285179288;
      v499 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 2);
      v250 = v575;
      v500 = (2 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v500 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v499;
      v501 = v576;
      *(a3 + 24) = v500;
      *(a3 + 32) = v501;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 11;
      goto LABEL_631;
    case 12:
      v28 = **a2;
      v29 = (*a2)[1];
      v566 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = a2[1];
      if (!v28)
      {
        sub_23F227724(&v567, v30);
      }

      v31 = (*(*v28 + 24))(v28);
      v32 = *v30;
      (*(*v31 + 24))(&v576);
      v33 = v576;
      v576 = 0;
      v580 = v33;
      if (v33)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 12);
      v274 = *(v578 + 16);
      v273 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v274;
      *&v570[32] = v273;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v275 = (*(MEMORY[0] + 104))(0);
      v575 = v275 & ((v275 >> 1) >> 15);
      v276 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v276->__on_zero_shared)(v276);
        std::__shared_weak_count::__release_weak(v276);
      }

      v277 = v576;
      v576 = 0;
      if (v277)
      {
        (*(*v277 + 8))(v277);
      }

      *a3 = &unk_285179288;
      v278 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 4);
      v250 = v575;
      v279 = (4 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v279 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v278;
      v280 = v576;
      *(a3 + 24) = v279;
      *(a3 + 32) = v280;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 12;
      goto LABEL_631;
    case 13:
      v52 = **a2;
      v53 = (*a2)[1];
      v566 = v53;
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v54 = a2[1];
      if (!v52)
      {
        sub_23F227A34(&v567, v54);
      }

      v55 = (*(*v52 + 24))(v52);
      v56 = *v54;
      (*(*v55 + 24))(&v576);
      v57 = v576;
      v576 = 0;
      v580 = v57;
      if (v57)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 13);
      v306 = *(v578 + 16);
      v305 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v306;
      *&v570[32] = v305;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v307 = (*(MEMORY[0] + 104))(0);
      v575 = v307 & ((v307 >> 1) >> 15);
      v308 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v308->__on_zero_shared)(v308);
        std::__shared_weak_count::__release_weak(v308);
      }

      v309 = v576;
      v576 = 0;
      if (v309)
      {
        (*(*v309 + 8))(v309);
      }

      *a3 = &unk_285179288;
      v310 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 1);
      v311 = v569 | 0x100000000;
      v270 = v575;
      if (!BYTE4(v569))
      {
        v311 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v310;
      v312 = v576;
      *(a3 + 24) = v311;
      *(a3 + 32) = v312;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v272 = 13;
      goto LABEL_644;
    case 14:
      v46 = **a2;
      v47 = (*a2)[1];
      v566 = v47;
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v48 = a2[1];
      if (!v46)
      {
        sub_23F227CDC(&v567, v48);
      }

      v49 = (*(*v46 + 24))(v46);
      v50 = *v48;
      (*(*v49 + 24))(&v576);
      v51 = v576;
      v576 = 0;
      v580 = v51;
      if (v51)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 14);
      v298 = *(v578 + 16);
      v297 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v298;
      *&v570[32] = v297;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v299 = (*(MEMORY[0] + 104))(0);
      v575 = v299 & ((v299 >> 1) >> 15);
      v300 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v300->__on_zero_shared)(v300);
        std::__shared_weak_count::__release_weak(v300);
      }

      v301 = v576;
      v576 = 0;
      if (v301)
      {
        (*(*v301 + 8))(v301);
      }

      *a3 = &unk_285179288;
      v302 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 2);
      v250 = v575;
      v303 = (2 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v303 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v302;
      v304 = v576;
      *(a3 + 24) = v303;
      *(a3 + 32) = v304;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 14;
      goto LABEL_631;
    case 15:
      v220 = **a2;
      v221 = (*a2)[1];
      v566 = v221;
      if (v221)
      {
        atomic_fetch_add_explicit(&v221->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v222 = a2[1];
      if (!v220)
      {
        sub_23F227FEC(&v567, v222);
      }

      v223 = (*(*v220 + 24))(v220);
      v224 = *v222;
      (*(*v223 + 24))(&v576);
      v225 = v576;
      v576 = 0;
      v580 = v225;
      if (v225)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 15);
      v535 = *(v578 + 16);
      v534 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v535;
      *&v570[32] = v534;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v536 = (*(MEMORY[0] + 104))(0);
      v575 = v536 & ((v536 >> 1) >> 15);
      v537 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v537->__on_zero_shared)(v537);
        std::__shared_weak_count::__release_weak(v537);
      }

      v538 = v576;
      v576 = 0;
      if (v538)
      {
        (*(*v538 + 8))(v538);
      }

      *a3 = &unk_285179288;
      v539 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 2);
      v250 = v575;
      v540 = (2 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v540 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v539;
      v541 = v576;
      *(a3 + 24) = v540;
      *(a3 + 32) = v541;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 15;
      goto LABEL_631;
    case 16:
      v160 = **a2;
      v161 = (*a2)[1];
      v566 = v161;
      if (v161)
      {
        atomic_fetch_add_explicit(&v161->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v162 = a2[1];
      if (!v160)
      {
        sub_23F22828C(&v567, v162);
      }

      v163 = (*(*v160 + 24))(v160);
      v164 = *v162;
      (*(*v163 + 24))(&v576);
      v165 = v576;
      v576 = 0;
      v580 = v165;
      if (v165)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 16);
      v451 = *(v578 + 16);
      v450 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v451;
      *&v570[32] = v450;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v452 = (*(MEMORY[0] + 104))(0);
      v575 = v452 & ((v452 >> 1) >> 15);
      v453 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v453->__on_zero_shared)(v453);
        std::__shared_weak_count::__release_weak(v453);
      }

      v454 = v576;
      v576 = 0;
      if (v454)
      {
        (*(*v454 + 8))(v454);
      }

      *a3 = &unk_285179288;
      v455 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 4);
      v250 = v575;
      v456 = (4 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v456 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v455;
      v457 = v576;
      *(a3 + 24) = v456;
      *(a3 + 32) = v457;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 16;
      goto LABEL_631;
    case 17:
      v226 = **a2;
      v227 = (*a2)[1];
      v566 = v227;
      if (v227)
      {
        atomic_fetch_add_explicit(&v227->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v228 = a2[1];
      if (!v226)
      {
        sub_23F22859C(&v567, v228);
      }

      v229 = (*(*v226 + 24))(v226);
      v230 = *v228;
      (*(*v229 + 24))(&v576);
      v231 = v576;
      v576 = 0;
      v580 = v231;
      if (v231)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 17);
      v543 = *(v578 + 16);
      v542 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v543;
      *&v570[32] = v542;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v544 = (*(MEMORY[0] + 104))(0);
      v575 = v544 & ((v544 >> 1) >> 15);
      v545 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v545->__on_zero_shared)(v545);
        std::__shared_weak_count::__release_weak(v545);
      }

      v546 = v576;
      v576 = 0;
      if (v546)
      {
        (*(*v546 + 8))(v546);
      }

      *a3 = &unk_285179288;
      v547 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 1);
      v548 = v569 | 0x100000000;
      v270 = v575;
      if (!BYTE4(v569))
      {
        v548 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v547;
      v549 = v576;
      *(a3 + 24) = v548;
      *(a3 + 32) = v549;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v272 = 17;
      goto LABEL_644;
    case 18:
      v64 = **a2;
      v65 = (*a2)[1];
      v566 = v65;
      if (v65)
      {
        atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v66 = a2[1];
      if (!v64)
      {
        sub_23F228844(&v567, v66);
      }

      v67 = (*(*v64 + 24))(v64);
      v68 = *v66;
      (*(*v67 + 24))(&v576);
      v69 = v576;
      v576 = 0;
      v580 = v69;
      if (v69)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 18);
      v322 = *(v578 + 16);
      v321 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v322;
      *&v570[32] = v321;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v323 = (*(MEMORY[0] + 104))(0);
      v575 = v323 & ((v323 >> 1) >> 15);
      v324 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v324->__on_zero_shared)(v324);
        std::__shared_weak_count::__release_weak(v324);
      }

      v325 = v576;
      v576 = 0;
      if (v325)
      {
        (*(*v325 + 8))(v325);
      }

      *a3 = &unk_285179288;
      v326 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 2);
      v250 = v575;
      v327 = (2 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v327 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v326;
      v328 = v576;
      *(a3 + 24) = v327;
      *(a3 + 32) = v328;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 18;
      goto LABEL_631;
    case 19:
      v16 = **a2;
      v17 = (*a2)[1];
      v566 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = a2[1];
      if (!v16)
      {
        sub_23F228B54(&v567, v18);
      }

      v19 = (*(*v16 + 24))(v16);
      v20 = *v18;
      (*(*v19 + 24))(&v576);
      v21 = v576;
      v576 = 0;
      v580 = v21;
      if (v21)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 19);
      v256 = *(v578 + 16);
      v255 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v256;
      *&v570[32] = v255;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v257 = (*(MEMORY[0] + 104))(0);
      v575 = v257 & ((v257 >> 1) >> 15);
      v258 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v258->__on_zero_shared)(v258);
        std::__shared_weak_count::__release_weak(v258);
      }

      v259 = v576;
      v576 = 0;
      if (v259)
      {
        (*(*v259 + 8))(v259);
      }

      *a3 = &unk_285179288;
      v260 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 2);
      v250 = v575;
      v261 = (2 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v261 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v260;
      v262 = v576;
      *(a3 + 24) = v261;
      *(a3 + 32) = v262;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 19;
      goto LABEL_631;
    case 20:
      v208 = **a2;
      v209 = (*a2)[1];
      v566 = v209;
      if (v209)
      {
        atomic_fetch_add_explicit(&v209->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v210 = a2[1];
      if (!v208)
      {
        sub_23F228DF4(&v567, v210);
      }

      v211 = (*(*v208 + 24))(v208);
      v212 = *v210;
      (*(*v211 + 24))(&v576);
      v213 = v576;
      v576 = 0;
      v580 = v213;
      if (v213)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 20);
      v519 = *(v578 + 16);
      v518 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v519;
      *&v570[32] = v518;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v520 = (*(MEMORY[0] + 104))(0);
      v575 = v520 & ((v520 >> 1) >> 15);
      v521 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v521->__on_zero_shared)(v521);
        std::__shared_weak_count::__release_weak(v521);
      }

      v522 = v576;
      v576 = 0;
      if (v522)
      {
        (*(*v522 + 8))(v522);
      }

      *a3 = &unk_285179288;
      v523 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 4);
      v250 = v575;
      v524 = (4 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v524 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v523;
      v525 = v576;
      *(a3 + 24) = v524;
      *(a3 + 32) = v525;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 20;
      goto LABEL_631;
    case 21:
      v238 = **a2;
      v239 = (*a2)[1];
      v566 = v239;
      if (v239)
      {
        atomic_fetch_add_explicit(&v239->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v240 = a2[1];
      if (!v238)
      {
        sub_23F085E58(v240);
      }

      v241 = (*(*v238 + 24))(v238);
      v242 = *v240;
      (*(*v241 + 24))(&v576);
      v243 = v576;
      v576 = 0;
      v580 = v243;
      if (v243)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 21);
      v559 = *(v578 + 16);
      v558 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v559;
      *&v570[32] = v558;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v560 = (*(MEMORY[0] + 104))(0);
      v575 = v560 & ((v560 >> 1) >> 15);
      v561 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v561->__on_zero_shared)(v561);
        std::__shared_weak_count::__release_weak(v561);
      }

      v562 = v576;
      v576 = 0;
      if (v562)
      {
        (*(*v562 + 8))(v562);
      }

      *a3 = &unk_285179288;
      v563 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 1);
      v564 = v569 | 0x100000000;
      v270 = v575;
      if (!BYTE4(v569))
      {
        v564 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v563;
      v565 = v576;
      *(a3 + 24) = v564;
      *(a3 + 32) = v565;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v272 = 21;
      goto LABEL_644;
    case 22:
      v82 = **a2;
      v83 = (*a2)[1];
      v566 = v83;
      if (v83)
      {
        atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v84 = a2[1];
      if (!v82)
      {
        sub_23F1C68B8(v84);
      }

      v85 = (*(*v82 + 24))(v82);
      v86 = *v84;
      (*(*v85 + 24))(&v576);
      v87 = v576;
      v576 = 0;
      v580 = v87;
      if (v87)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 22);
      v346 = *(v578 + 16);
      v345 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v346;
      *&v570[32] = v345;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v347 = (*(MEMORY[0] + 104))(0);
      v575 = v347 & ((v347 >> 1) >> 15);
      v348 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v348->__on_zero_shared)(v348);
        std::__shared_weak_count::__release_weak(v348);
      }

      v349 = v576;
      v576 = 0;
      if (v349)
      {
        (*(*v349 + 8))(v349);
      }

      *a3 = &unk_285179288;
      v350 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 2);
      v250 = v575;
      v351 = (2 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v351 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v350;
      v352 = v576;
      *(a3 + 24) = v351;
      *(a3 + 32) = v352;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 22;
      goto LABEL_631;
    case 23:
      v232 = **a2;
      v233 = (*a2)[1];
      v566 = v233;
      if (v233)
      {
        atomic_fetch_add_explicit(&v233->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v234 = a2[1];
      if (!v232)
      {
        sub_23F1C7160(v234);
      }

      v235 = (*(*v232 + 24))(v232);
      v236 = *v234;
      (*(*v235 + 24))(&v576);
      v237 = v576;
      v576 = 0;
      v580 = v237;
      if (v237)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 23);
      v551 = *(v578 + 16);
      v550 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v551;
      *&v570[32] = v550;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v552 = (*(MEMORY[0] + 104))(0);
      v575 = v552 & ((v552 >> 1) >> 15);
      v553 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v553->__on_zero_shared)(v553);
        std::__shared_weak_count::__release_weak(v553);
      }

      v554 = v576;
      v576 = 0;
      if (v554)
      {
        (*(*v554 + 8))(v554);
      }

      *a3 = &unk_285179288;
      v555 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 2);
      v250 = v575;
      v556 = (2 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v556 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v555;
      v557 = v576;
      *(a3 + 24) = v556;
      *(a3 + 32) = v557;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 23;
      goto LABEL_631;
    case 24:
      v40 = **a2;
      v41 = (*a2)[1];
      v566 = v41;
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v42 = a2[1];
      if (!v40)
      {
        sub_23F1C79CC(v42);
      }

      v43 = (*(*v40 + 24))(v40);
      v44 = *v42;
      (*(*v43 + 24))(&v576);
      v45 = v576;
      v576 = 0;
      v580 = v45;
      if (v45)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 24);
      v290 = *(v578 + 16);
      v289 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v290;
      *&v570[32] = v289;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v291 = (*(MEMORY[0] + 104))(0);
      v575 = v291 & ((v291 >> 1) >> 15);
      v292 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v292->__on_zero_shared)(v292);
        std::__shared_weak_count::__release_weak(v292);
      }

      v293 = v576;
      v576 = 0;
      if (v293)
      {
        (*(*v293 + 8))(v293);
      }

      *a3 = &unk_285179288;
      v294 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 4);
      v250 = v575;
      v295 = (4 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v295 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v294;
      v296 = v576;
      *(a3 + 24) = v295;
      *(a3 + 32) = v296;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 24;
      goto LABEL_631;
    case 25:
      v22 = **a2;
      v23 = (*a2)[1];
      v566 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = a2[1];
      if (!v22)
      {
        sub_23F1C8274(v24);
      }

      v25 = (*(*v22 + 24))(v22);
      v26 = *v24;
      (*(*v25 + 24))(&v576);
      v27 = v576;
      v576 = 0;
      v580 = v27;
      if (v27)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 25);
      v264 = *(v578 + 16);
      v263 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v264;
      *&v570[32] = v263;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v265 = (*(MEMORY[0] + 104))(0);
      v575 = v265 & ((v265 >> 1) >> 15);
      v266 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v266->__on_zero_shared)(v266);
        std::__shared_weak_count::__release_weak(v266);
      }

      v267 = v576;
      v576 = 0;
      if (v267)
      {
        (*(*v267 + 8))(v267);
      }

      *a3 = &unk_285179288;
      v268 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 1);
      v269 = v569 | 0x100000000;
      v270 = v575;
      if (!BYTE4(v569))
      {
        v269 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v268;
      v271 = v576;
      *(a3 + 24) = v269;
      *(a3 + 32) = v271;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v272 = 25;
      goto LABEL_644;
    case 26:
      v88 = **a2;
      v89 = (*a2)[1];
      v566 = v89;
      if (v89)
      {
        atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v90 = a2[1];
      if (!v88)
      {
        sub_23F229104(&v567, v90);
      }

      v91 = (*(*v88 + 24))(v88);
      v92 = *v90;
      (*(*v91 + 24))(&v576);
      v93 = v576;
      v576 = 0;
      v580 = v93;
      if (v93)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 26);
      v354 = *(v578 + 16);
      v353 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v354;
      *&v570[32] = v353;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v355 = (*(MEMORY[0] + 104))(0);
      v575 = v355 & ((v355 >> 1) >> 15);
      v356 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v356->__on_zero_shared)(v356);
        std::__shared_weak_count::__release_weak(v356);
      }

      v357 = v576;
      v576 = 0;
      if (v357)
      {
        (*(*v357 + 8))(v357);
      }

      *a3 = &unk_285179288;
      v358 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 2);
      v250 = v575;
      v359 = (2 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v359 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v358;
      v360 = v576;
      *(a3 + 24) = v359;
      *(a3 + 32) = v360;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 26;
      goto LABEL_631;
    case 27:
      v10 = **a2;
      v11 = (*a2)[1];
      v566 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = a2[1];
      if (!v10)
      {
        sub_23F229414(&v567, v12);
      }

      v13 = (*(*v10 + 24))(v10);
      v14 = *v12;
      (*(*v13 + 24))(&v576);
      v15 = v576;
      v576 = 0;
      v580 = v15;
      if (v15)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 27);
      v245 = *(v578 + 16);
      v244 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v245;
      *&v570[32] = v244;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v246 = (*(MEMORY[0] + 104))(0);
      v575 = v246 & ((v246 >> 1) >> 15);
      v247 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v247->__on_zero_shared)(v247);
        std::__shared_weak_count::__release_weak(v247);
      }

      v248 = v576;
      v576 = 0;
      if (v248)
      {
        (*(*v248 + 8))(v248);
      }

      *a3 = &unk_285179288;
      v249 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 2);
      v250 = v575;
      v251 = (2 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v251 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v249;
      v252 = v576;
      *(a3 + 24) = v251;
      *(a3 + 32) = v252;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 27;
      goto LABEL_631;
    case 28:
      v112 = **a2;
      v113 = (*a2)[1];
      v566 = v113;
      if (v113)
      {
        atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v114 = a2[1];
      if (!v112)
      {
        sub_23F2296B4(&v567, v114);
      }

      v115 = (*(*v112 + 24))(v112);
      v116 = *v114;
      (*(*v115 + 24))(&v576);
      v117 = v576;
      v576 = 0;
      v580 = v117;
      if (v117)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 28);
      v387 = *(v578 + 16);
      v386 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v387;
      *&v570[32] = v386;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v388 = (*(MEMORY[0] + 104))(0);
      v575 = v388 & ((v388 >> 1) >> 15);
      v389 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v389->__on_zero_shared)(v389);
        std::__shared_weak_count::__release_weak(v389);
      }

      v390 = v576;
      v576 = 0;
      if (v390)
      {
        (*(*v390 + 8))(v390);
      }

      *a3 = &unk_285179288;
      v391 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 4);
      v250 = v575;
      v392 = (4 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v392 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v391;
      v393 = v576;
      *(a3 + 24) = v392;
      *(a3 + 32) = v393;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 28;
      goto LABEL_631;
    case 29:
      v34 = **a2;
      v35 = (*a2)[1];
      v566 = v35;
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v36 = a2[1];
      if (!v34)
      {
        sub_23F1C8AB4(v36);
      }

      v37 = (*(*v34 + 24))(v34);
      v38 = *v36;
      (*(*v37 + 24))(&v576);
      v39 = v576;
      v576 = 0;
      v580 = v39;
      if (v39)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 29);
      v282 = *(v578 + 16);
      v281 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v282;
      *&v570[32] = v281;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v283 = (*(MEMORY[0] + 104))(0);
      v575 = v283 & ((v283 >> 1) >> 15);
      v284 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v284->__on_zero_shared)(v284);
        std::__shared_weak_count::__release_weak(v284);
      }

      v285 = v576;
      v576 = 0;
      if (v285)
      {
        (*(*v285 + 8))(v285);
      }

      *a3 = &unk_285179288;
      v286 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 1);
      v287 = v569 | 0x100000000;
      v270 = v575;
      if (!BYTE4(v569))
      {
        v287 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v286;
      v288 = v576;
      *(a3 + 24) = v287;
      *(a3 + 32) = v288;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v272 = 29;
      goto LABEL_644;
    case 30:
      v130 = **a2;
      v131 = (*a2)[1];
      v566 = v131;
      if (v131)
      {
        atomic_fetch_add_explicit(&v131->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v132 = a2[1];
      if (!v130)
      {
        sub_23F1C92F4(v132);
      }

      v133 = (*(*v130 + 24))(v130);
      v134 = *v132;
      (*(*v133 + 24))(&v576);
      v135 = v576;
      v576 = 0;
      v580 = v135;
      if (v135)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 30);
      v411 = *(v578 + 16);
      v410 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v411;
      *&v570[32] = v410;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v412 = (*(MEMORY[0] + 104))(0);
      v575 = v412 & ((v412 >> 1) >> 15);
      v413 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v413->__on_zero_shared)(v413);
        std::__shared_weak_count::__release_weak(v413);
      }

      v414 = v576;
      v576 = 0;
      if (v414)
      {
        (*(*v414 + 8))(v414);
      }

      *a3 = &unk_285179288;
      v415 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 2);
      v250 = v575;
      v416 = (2 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v416 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v415;
      v417 = v576;
      *(a3 + 24) = v416;
      *(a3 + 32) = v417;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 30;
      goto LABEL_631;
    case 31:
      v94 = **a2;
      v95 = (*a2)[1];
      v566 = v95;
      if (v95)
      {
        atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v96 = a2[1];
      if (!v94)
      {
        sub_23F1C9B9C(v96);
      }

      v97 = (*(*v94 + 24))(v94);
      v98 = *v96;
      (*(*v97 + 24))(&v576);
      v99 = v576;
      v576 = 0;
      v580 = v99;
      if (v99)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 31);
      v362 = *(v578 + 16);
      v361 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v362;
      *&v570[32] = v361;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v363 = (*(MEMORY[0] + 104))(0);
      v575 = v363 & ((v363 >> 1) >> 15);
      v364 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v364->__on_zero_shared)(v364);
        std::__shared_weak_count::__release_weak(v364);
      }

      v365 = v576;
      v576 = 0;
      if (v365)
      {
        (*(*v365 + 8))(v365);
      }

      *a3 = &unk_285179288;
      v366 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 2);
      v250 = v575;
      v367 = (2 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v367 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v366;
      v368 = v576;
      *(a3 + 24) = v367;
      *(a3 + 32) = v368;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 31;
      goto LABEL_631;
    case 32:
      v142 = **a2;
      v143 = (*a2)[1];
      v566 = v143;
      if (v143)
      {
        atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v144 = a2[1];
      if (!v142)
      {
        sub_23F1CA408(v144);
      }

      v145 = (*(*v142 + 24))(v142);
      v146 = *v144;
      (*(*v145 + 24))(&v576);
      v147 = v576;
      v576 = 0;
      v580 = v147;
      if (v147)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 32);
      v427 = *(v578 + 16);
      v426 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v427;
      *&v570[32] = v426;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v428 = (*(MEMORY[0] + 104))(0);
      v575 = v428 & ((v428 >> 1) >> 15);
      v429 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v429->__on_zero_shared)(v429);
        std::__shared_weak_count::__release_weak(v429);
      }

      v430 = v576;
      v576 = 0;
      if (v430)
      {
        (*(*v430 + 8))(v430);
      }

      *a3 = &unk_285179288;
      v431 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 4);
      v250 = v575;
      v432 = (4 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v432 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v431;
      v433 = v576;
      *(a3 + 24) = v432;
      *(a3 + 32) = v433;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 32;
      goto LABEL_631;
    case 33:
      v202 = **a2;
      v203 = (*a2)[1];
      v566 = v203;
      if (v203)
      {
        atomic_fetch_add_explicit(&v203->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v204 = a2[1];
      if (!v202)
      {
        sub_23F1CACB0(v204);
      }

      v205 = (*(*v202 + 24))(v202);
      v206 = *v204;
      (*(*v205 + 24))(&v576);
      v207 = v576;
      v576 = 0;
      v580 = v207;
      if (v207)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 33);
      v511 = *(v578 + 16);
      v510 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v511;
      *&v570[32] = v510;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v512 = (*(MEMORY[0] + 104))(0);
      v575 = v512 & ((v512 >> 1) >> 15);
      v513 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v513->__on_zero_shared)(v513);
        std::__shared_weak_count::__release_weak(v513);
      }

      v514 = v576;
      v576 = 0;
      if (v514)
      {
        (*(*v514 + 8))(v514);
      }

      *a3 = &unk_285179288;
      v515 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 1);
      v516 = v569 | 0x100000000;
      v270 = v575;
      if (!BYTE4(v569))
      {
        v516 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v515;
      v517 = v576;
      *(a3 + 24) = v516;
      *(a3 + 32) = v517;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v272 = 33;
      goto LABEL_644;
    case 34:
      v136 = **a2;
      v137 = (*a2)[1];
      v566 = v137;
      if (v137)
      {
        atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v138 = a2[1];
      if (!v136)
      {
        sub_23F2299C4(&v567, v138);
      }

      v139 = (*(*v136 + 24))(v136);
      v140 = *v138;
      (*(*v139 + 24))(&v576);
      v141 = v576;
      v576 = 0;
      v580 = v141;
      if (v141)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 34);
      v419 = *(v578 + 16);
      v418 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v419;
      *&v570[32] = v418;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v420 = (*(MEMORY[0] + 104))(0);
      v575 = v420 & ((v420 >> 1) >> 15);
      v421 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v421->__on_zero_shared)(v421);
        std::__shared_weak_count::__release_weak(v421);
      }

      v422 = v576;
      v576 = 0;
      if (v422)
      {
        (*(*v422 + 8))(v422);
      }

      *a3 = &unk_285179288;
      v423 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 2);
      v250 = v575;
      v424 = (2 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v424 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v423;
      v425 = v576;
      *(a3 + 24) = v424;
      *(a3 + 32) = v425;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 34;
      goto LABEL_631;
    case 35:
      v124 = **a2;
      v125 = (*a2)[1];
      v566 = v125;
      if (v125)
      {
        atomic_fetch_add_explicit(&v125->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v126 = a2[1];
      if (!v124)
      {
        sub_23F229CD4(&v567, v126);
      }

      v127 = (*(*v124 + 24))(v124);
      v128 = *v126;
      (*(*v127 + 24))(&v576);
      v129 = v576;
      v576 = 0;
      v580 = v129;
      if (v129)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 35);
      v403 = *(v578 + 16);
      v402 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v403;
      *&v570[32] = v402;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v404 = (*(MEMORY[0] + 104))(0);
      v575 = v404 & ((v404 >> 1) >> 15);
      v405 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v405->__on_zero_shared)(v405);
        std::__shared_weak_count::__release_weak(v405);
      }

      v406 = v576;
      v576 = 0;
      if (v406)
      {
        (*(*v406 + 8))(v406);
      }

      *a3 = &unk_285179288;
      v407 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 2);
      v250 = v575;
      v408 = (2 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v408 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v407;
      v409 = v576;
      *(a3 + 24) = v408;
      *(a3 + 32) = v409;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 35;
      goto LABEL_631;
    case 36:
      v118 = **a2;
      v119 = (*a2)[1];
      v566 = v119;
      if (v119)
      {
        atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v120 = a2[1];
      if (!v118)
      {
        sub_23F229F74(&v567, v120);
      }

      v121 = (*(*v118 + 24))(v118);
      v122 = *v120;
      (*(*v121 + 24))(&v576);
      v123 = v576;
      v576 = 0;
      v580 = v123;
      if (v123)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 36);
      v395 = *(v578 + 16);
      v394 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v395;
      *&v570[32] = v394;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v396 = (*(MEMORY[0] + 104))(0);
      v575 = v396 & ((v396 >> 1) >> 15);
      v397 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v397->__on_zero_shared)(v397);
        std::__shared_weak_count::__release_weak(v397);
      }

      v398 = v576;
      v576 = 0;
      if (v398)
      {
        (*(*v398 + 8))(v398);
      }

      *a3 = &unk_285179288;
      v399 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 4);
      v250 = v575;
      v400 = (4 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v400 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v399;
      v401 = v576;
      *(a3 + 24) = v400;
      *(a3 + 32) = v401;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 36;
      goto LABEL_631;
    case 37:
      v184 = **a2;
      v185 = (*a2)[1];
      v566 = v185;
      if (v185)
      {
        atomic_fetch_add_explicit(&v185->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v186 = a2[1];
      if (!v184)
      {
        sub_23F1CB4F0(v186);
      }

      v187 = (*(*v184 + 24))(v184);
      v188 = *v186;
      (*(*v187 + 24))(&v576);
      v189 = v576;
      v576 = 0;
      v580 = v189;
      if (v189)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 37);
      v487 = *(v578 + 16);
      v486 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v487;
      *&v570[32] = v486;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v488 = (*(MEMORY[0] + 104))(0);
      v575 = v488 & ((v488 >> 1) >> 15);
      v489 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v489->__on_zero_shared)(v489);
        std::__shared_weak_count::__release_weak(v489);
      }

      v490 = v576;
      v576 = 0;
      if (v490)
      {
        (*(*v490 + 8))(v490);
      }

      *a3 = &unk_285179288;
      v491 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 1);
      v492 = v569 | 0x100000000;
      v270 = v575;
      if (!BYTE4(v569))
      {
        v492 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v491;
      v493 = v576;
      *(a3 + 24) = v492;
      *(a3 + 32) = v493;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v272 = 37;
LABEL_644:
      *(a3 + 56) = v272;
LABEL_645:
      *(a3 + 60) = v270;
      if (v253)
      {
        goto LABEL_646;
      }

      goto LABEL_648;
    case 38:
      v214 = **a2;
      v215 = (*a2)[1];
      v566 = v215;
      if (v215)
      {
        atomic_fetch_add_explicit(&v215->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v216 = a2[1];
      if (!v214)
      {
        sub_23F1CBD30(v216);
      }

      v217 = (*(*v214 + 24))(v214);
      v218 = *v216;
      (*(*v217 + 24))(&v576);
      v219 = v576;
      v576 = 0;
      v580 = v219;
      if (v219)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 38);
      v527 = *(v578 + 16);
      v526 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v527;
      *&v570[32] = v526;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v528 = (*(MEMORY[0] + 104))(0);
      v575 = v528 & ((v528 >> 1) >> 15);
      v529 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v529->__on_zero_shared)(v529);
        std::__shared_weak_count::__release_weak(v529);
      }

      v530 = v576;
      v576 = 0;
      if (v530)
      {
        (*(*v530 + 8))(v530);
      }

      *a3 = &unk_285179288;
      v531 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 2);
      v250 = v575;
      v532 = (2 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v532 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v531;
      v533 = v576;
      *(a3 + 24) = v532;
      *(a3 + 32) = v533;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 38;
      goto LABEL_631;
    case 39:
      v76 = **a2;
      v77 = (*a2)[1];
      v566 = v77;
      if (v77)
      {
        atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v78 = a2[1];
      if (!v76)
      {
        sub_23F1CC5D8(v78);
      }

      v79 = (*(*v76 + 24))(v76);
      v80 = *v78;
      (*(*v79 + 24))(&v576);
      v81 = v576;
      v576 = 0;
      v580 = v81;
      if (v81)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 39);
      v338 = *(v578 + 16);
      v337 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v338;
      *&v570[32] = v337;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v339 = (*(MEMORY[0] + 104))(0);
      v575 = v339 & ((v339 >> 1) >> 15);
      v340 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v340->__on_zero_shared)(v340);
        std::__shared_weak_count::__release_weak(v340);
      }

      v341 = v576;
      v576 = 0;
      if (v341)
      {
        (*(*v341 + 8))(v341);
      }

      *a3 = &unk_285179288;
      v342 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 2);
      v250 = v575;
      v343 = (2 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v343 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v342;
      v344 = v576;
      *(a3 + 24) = v343;
      *(a3 + 32) = v344;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 39;
      goto LABEL_631;
    case 40:
      v58 = **a2;
      v59 = (*a2)[1];
      v566 = v59;
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v60 = a2[1];
      if (!v58)
      {
        sub_23F1CCE44(v60);
      }

      v61 = (*(*v58 + 24))(v58);
      v62 = *v60;
      (*(*v61 + 24))(&v576);
      v63 = v576;
      v576 = 0;
      v580 = v63;
      if (v63)
      {
        operator new();
      }

      v581 = 0;
      v567 = 0;
      v568 = 0;
      v569 = 0;
      (*(MEMORY[0] + 64))(&v578, 0, 40);
      v314 = *(v578 + 16);
      v313 = *(v578 + 32);
      *v570 = *v578;
      *&v570[16] = v314;
      *&v570[32] = v313;
      v578 = 0;
      MEMORY[0x245CACD00]();
      v571 = *v570;
      v572 = *&v570[8];
      v573 = *&v570[24];
      v574 = *&v570[40];
      v315 = (*(MEMORY[0] + 104))(0);
      v575 = v315 & ((v315 >> 1) >> 15);
      v316 = v581;
      if (v581 && !atomic_fetch_add(&v581->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v316->__on_zero_shared)(v316);
        std::__shared_weak_count::__release_weak(v316);
      }

      v317 = v576;
      v576 = 0;
      if (v317)
      {
        (*(*v317 + 8))(v317);
      }

      *a3 = &unk_285179288;
      v318 = v568;
      if (v568)
      {
        atomic_fetch_add_explicit(&v568->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v578 = v567;
      v579 = v568;
      v580 = 0;
      v581 = 0;
      sub_23F28E5E0(&v576, &v572, 3, &v572 + 12, 3, 4);
      v250 = v575;
      v319 = (4 * v569) | 0x100000000;
      if (!BYTE4(v569))
      {
        v319 = 0;
      }

      *(a3 + 8) = v567;
      *(a3 + 16) = v318;
      v320 = v576;
      *(a3 + 24) = v319;
      *(a3 + 32) = v320;
      *(a3 + 40) = v577;
      v253 = v568;
      *(a3 + 48) = *v570;
      v254 = 40;
LABEL_631:
      *(a3 + 56) = v254;
LABEL_632:
      *(a3 + 60) = v250;
      if (v253)
      {
LABEL_646:
        if (!atomic_fetch_add(&v253->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v253->__on_zero_shared)(v253);
          std::__shared_weak_count::__release_weak(v253);
        }
      }

LABEL_648:
      if (v566)
      {
        if (!atomic_fetch_add(&v566->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v566->__on_zero_shared)(v566);
          std::__shared_weak_count::__release_weak(v566);
        }
      }

      return;
    default:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_23F3091D6, 0, "Runtime format not in given Formats list", 0x28uLL, sub_23F303DA4);
      abort();
  }
}