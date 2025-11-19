unint64_t AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocatePLOCScratch(void *a1, uint64_t a2, void *a3)
{
  bzero(a1, 0x388uLL);
  v6 = *(a2 + 40);
  if (v6)
  {
    v7 = *(a2 + 18) == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7 && *(a2 + 17) == 2)
  {
    v10 = *(a2 + 44);
    v11 = *(a2 + 152);
    v12 = 8 * *(a2 + 32);
    v13 = a3 + 9;
    v14 = 16 * v10 + 63;
    v15 = a3[1];
    v16 = ((v14 + a3[9]) & 0xFFFFFFFFFFFFFFC0) >= v15;
    v17 = a3[(((v14 + a3[9]) & 0xFFFFFFFFFFFFFFC0) >= v15) + 9];
    v13[((v14 + a3[9]) & 0xFFFFFFFFFFFFFFC0) >= v15] = (v17 + v14) & 0xFFFFFFFFFFFFFFC0;
    a1[88] = a3;
    *(a1 + 179) = v16;
    a1[90] = v17;
    *(a1 + 182) = 16 * v10;
    v18 = 4 * v10 + 63;
    v19 = ((a3[9] + v18) & 0xFFFFFFFFFFFFFFC0) >= v15;
    v20 = a3[(((a3[9] + v18) & 0xFFFFFFFFFFFFFFC0) >= v15) + 9];
    v13[((a3[9] + v18) & 0xFFFFFFFFFFFFFFC0) >= v15] = (v20 + v18) & 0xFFFFFFFFFFFFFFC0;
    a1[92] = a3;
    *(a1 + 187) = v19;
    a1[94] = v20;
    *(a1 + 190) = 4 * v10;
    v10 *= 36;
    v21 = ((a3[9] + v10 + 63) & 0xFFFFFFFFFFFFFFC0) >= v15;
    v22 = a3[(((a3[9] + v10 + 63) & 0xFFFFFFFFFFFFFFC0) >= v15) + 9];
    v13[((a3[9] + v10 + 63) & 0xFFFFFFFFFFFFFFC0) >= v15] = (v22 + v10 + 63) & 0xFFFFFFFFFFFFFFC0;
    a1[96] = a3;
    *(a1 + 195) = v21;
    a1[98] = v22;
    *(a1 + 198) = v10;
    v23 = a3[18];
    v24 = (v12 + v23 + 63) & 0xFFFFFFFFFFFFFFC0;
    a1[100] = a3;
    a1[101] = 0x100000004;
    a1[102] = v23;
    *(a1 + 206) = v12;
    v25 = (8 * v6 + v24 + 63) & 0xFFFFFFFFFFFFFFC0;
    a1[104] = a3;
    a1[105] = 0x100000004;
    a1[106] = v24;
    *(a1 + 214) = 8 * v6;
    v9 = (v11 + v25 + 63) & 0xFFFFFFFFFFFFFFC0;
    a1[108] = a3;
    a1[109] = 0x100000004;
    a1[110] = v25;
    *(a1 + 222) = v11;
  }

  else
  {
    v9 = a3[18];
  }

  v26 = *(a2 + 32);
  v27 = v26 >= 0x800001 || v6 >= 0x101;
  v28 = 2;
  if (v27)
  {
    v28 = 3;
  }

  if (v26 >= 0x801 || v6 >= 0x11)
  {
    v30 = v28;
  }

  else
  {
    v30 = 1;
  }

  v31 = (v26 << v30) + 63;
  v32 = v31 + v9;
  v33 = (v31 + v9) & 0xFFFFFFFFFFFFFFC0;
  a3[18] = v33;
  a1[16] = a3;
  a1[17] = 0x100000004;
  a1[18] = v9;
  *(a1 + 38) = v26 << v30;
  if (*(a2 + 4) == 1)
  {
    result = AGX::BVHDescriptor::maxInnerNodeCount(a2);
    if (v26 <= result)
    {
      v35 = result;
    }

    else
    {
      v35 = v26;
    }

    v36 = 24 * v35;
    v37 = ((v32 | 0x38) + 24 * v35) & 0xFFFFFFFFFFFFFFC0;
    *a1 = a3;
    a1[1] = 0x100000004;
    a1[2] = v33;
    *(a1 + 6) = v36;
    v38 = 24 * result;
    v39 = (v38 + v37 + 63) & 0xFFFFFFFFFFFFFFC0;
    a1[4] = a3;
    a1[5] = 0x100000004;
    a1[6] = v37;
    *(a1 + 14) = v38;
    v40 = 16 * result;
    a1[8] = a3;
    v41 = (v40 + v39 + 63) & 0xFFFFFFFFFFFFFFC0;
    a1[9] = 0x100000004;
    a1[10] = v39;
    *(a1 + 22) = v40;
    a3[18] = (v41 + 111) & 0xFFFFFFFFFFFFFFC0;
    a1[84] = a3;
    a1[85] = 0x100000004;
    a1[86] = v41;
    *(a1 + 174) = 48;
  }

  else
  {
    v42 = a3 + 9;
    v43 = *(a2 + 164);
    v44 = v26 - 1;
    v45 = (v43 + v26 - 1) / v43;
    v46 = a3[1];
    v47 = ((a3[11] + v31) & 0xFFFFFFFFFFFFFFC0) >= v46;
    v48 = &a3[(((a3[11] + v31) & 0xFFFFFFFFFFFFFFC0) >= v46) + 9];
    v49 = *(v48 + 16);
    *(v48 + 16) = (v49 + v31) & 0xFFFFFFFFFFFFFFC0;
    a1[12] = a3;
    *(a1 + 26) = 1;
    *(a1 + 27) = v47;
    a1[14] = v49;
    *(a1 + 30) = v26 << v30;
    v50 = v45 << v30;
    v51 = ((v32 | 0x3E) + (v45 << v30)) & 0xFFFFFFFFFFFFFFC0;
    a3[18] = v51;
    a1[20] = a3;
    a1[21] = 0x100000004;
    a1[22] = v33;
    *(a1 + 46) = v50;
    v52 = *(a2 + 15);
    if ((v52 & 0x100) != 0)
    {
      v53 = ((v26 + 2047) >> 1) & 0x7FFFFC00;
      v54 = v53 + 1024;
      v55 = 4 * v26 + 63;
      v56 = ((a3[11] + v55) & 0xFFFFFFFFFFFFFFC0) >= v46;
      v57 = a3 + 11;
      v58 = a3[(((a3[11] + v55) & 0xFFFFFFFFFFFFFFC0) >= v46) + 11];
      a3[(((a3[11] + v55) & 0xFFFFFFFFFFFFFFC0) >= v46) + 11] = (v58 + v55) & 0xFFFFFFFFFFFFFFC0;
      a1[24] = a3;
      *(a1 + 50) = 1;
      *(a1 + 51) = v56;
      a1[26] = v58;
      *(a1 + 54) = 4 * v26;
      v59 = ((a3[11] + v55) & 0xFFFFFFFFFFFFFFC0) >= v46;
      v60 = a3[(((a3[11] + v55) & 0xFFFFFFFFFFFFFFC0) >= v46) + 11];
      v57[((a3[11] + v55) & 0xFFFFFFFFFFFFFFC0) >= v46] = (v60 + v55) & 0xFFFFFFFFFFFFFFC0;
      a1[28] = a3;
      *(a1 + 58) = 1;
      *(a1 + 59) = v59;
      a1[30] = v60;
      v61 = v53 + 1087;
      v62 = ((a3[11] + v61) & 0xFFFFFFFFFFFFFFC0) >= v46;
      v63 = a3[(((a3[11] + v61) & 0xFFFFFFFFFFFFFFC0) >= v46) + 11];
      *(a1 + 62) = 4 * v26;
      v57[v62] = (v63 + v61) & 0xFFFFFFFFFFFFFFC0;
      a1[32] = a3;
      *(a1 + 66) = 1;
      *(a1 + 67) = v62;
      a1[34] = v63;
      *(a1 + 70) = v54;
      LODWORD(v61) = ((v26 + 0x3FFF) >> 11) & 0x1FFFF8;
      v64 = (v61 + 63);
      v65 = ((a3[11] + v64) & 0xFFFFFFFFFFFFFFC0) >= v46;
      v66 = a3[(((a3[11] + v64) & 0xFFFFFFFFFFFFFFC0) >= v46) + 11];
      v57[((a3[11] + v64) & 0xFFFFFFFFFFFFFFC0) >= v46] = (v66 + v64) & 0xFFFFFFFFFFFFFFC0;
      a1[36] = a3;
      *(a1 + 74) = 1;
      *(a1 + 75) = v65;
      a1[38] = v66;
      *(a1 + 78) = v61;
      v52 = *(a2 + 15);
    }

    v67 = 4 * v45;
    if ((v52 & 0x80) != 0)
    {
      v68 = 2 * v26 + 63;
      v69 = ((a3[11] + v68) & 0xFFFFFFFFFFFFFFC0) >= v46;
      v70 = &v42[((a3[11] + v68) & 0xFFFFFFFFFFFFFFC0) >= v46];
      v71 = v70[2];
      v70[2] = (v71 + v68) & 0xFFFFFFFFFFFFFFC0;
      a1[64] = a3;
      v72 = 1;
      *(a1 + 130) = 1;
      *(a1 + 131) = v69;
      a1[66] = v71;
      *(a1 + 134) = 2 * v26;
      v73 = 36 * (2 * v45 - 1);
      if ((*(a2 + 16) & 2) != 0)
      {
        v75 = (v73 + v51 + 63) & 0xFFFFFFFFFFFFFFC0;
        a3[18] = v75;
        v76 = 4;
      }

      else
      {
        v72 = ((a3[11] + v73 + 63) & 0xFFFFFFFFFFFFFFC0) >= v46;
        v74 = &v42[((a3[11] + v73 + 63) & 0xFFFFFFFFFFFFFFC0) >= v46];
        v75 = v51;
        v51 = v74[2];
        v74[2] = (v51 + v73 + 63) & 0xFFFFFFFFFFFFFFC0;
        v76 = 1;
      }

      a1[68] = a3;
      *(a1 + 138) = v76;
      *(a1 + 139) = v72;
      a1[70] = v51;
      *(a1 + 142) = v73;
      v52 = *(a2 + 15);
      if ((v52 & 0x100) != 0)
      {
        v51 = v75;
      }

      else
      {
        v77 = 96 * ((v26 + 511) >> 9);
        if (v77 <= (((v26 + 1023) >> 8) & 0xFFFFFC))
        {
          v77 = ((v26 + 1023) >> 8) & 0xFFFFFC;
        }

        v78 = v77 + 63;
        v79 = ((a3[11] + v78) & 0xFFFFFFFFFFFFFFC0) >= v46;
        v80 = a3 + 11;
        v81 = a3[(((a3[11] + v78) & 0xFFFFFFFFFFFFFFC0) >= v46) + 11];
        a3[(((a3[11] + v78) & 0xFFFFFFFFFFFFFFC0) >= v46) + 11] = (v81 + v78) & 0xFFFFFFFFFFFFFFC0;
        a1[72] = a3;
        *(a1 + 146) = 1;
        *(a1 + 147) = v79;
        a1[74] = v81;
        if (v43 >= 0x200)
        {
          v43 = 512;
        }

        v27 = __CFADD__(v43, v44);
        v82 = 2 * ((v43 + v44) / v43);
        if (v27)
        {
          v82 = 2;
        }

        v83 = 1440 * v82;
        v84 = (((v83 | 0x3F) + a3[11]) & 0xFFFFFFFFFFFFFFC0) >= v46;
        v85 = v80[(((v83 | 0x3F) + a3[11]) & 0xFFFFFFFFFFFFFFC0) >= v46];
        *(a1 + 150) = v77;
        v80[v84] = ((v83 | 0x3F) + v85) & 0xFFFFFFFFFFFFFFC0;
        a1[76] = a3;
        *(a1 + 154) = 1;
        *(a1 + 155) = v84;
        a1[78] = v85;
        *(a1 + 158) = v83;
        v86 = ((a3[11] + v67 + 63) & 0xFFFFFFFFFFFFFFC0) >= v46;
        v87 = v80[v86];
        v80[v86] = (v87 + v67 + 63) & 0xFFFFFFFFFFFFFFC0;
        a1[80] = a3;
        *(a1 + 162) = 1;
        *(a1 + 163) = v86;
        a1[82] = v87;
        *(a1 + 166) = v67;
        v51 = (v75 + 399) & 0xFFFFFFFFFFFFFFC0;
        a3[18] = v51;
        a1[84] = a3;
        a1[85] = 0x100000004;
        a1[86] = v75;
        *(a1 + 174) = 336;
        v52 = *(a2 + 15);
      }
    }

    v88 = v67 + 63;
    if ((~v52 & 0x280) != 0)
    {
      a1[62] = v51;
      v51 = (v88 + v51) & 0xFFFFFFFFFFFFFFC0;
      a1[60] = a3;
      a1[61] = 0x100000004;
      *(a1 + 126) = v67;
    }

    v89 = (v45 + 1) << 7;
    v90 = v51 + v89 + 63;
    a3[18] = v90 & 0xFFFFFFFFFFFFFFC0;
    a1[40] = a3;
    a1[41] = 0x100000004;
    a1[42] = v51;
    *(a1 + 86) = v89;
    result = AGX::BVHDescriptor::maxInnerNodeCount(a2);
    if (v26 <= 1)
    {
      v91 = 1;
    }

    else
    {
      v91 = v26;
    }

    v92 = 28 * v91;
    v93 = 40 * result + 24 * (v91 + v45);
    if (v92 > v93)
    {
      v93 = v92;
    }

    a1[44] = a3;
    v94 = ((v90 | 0x3C) + v93) & 0xFFFFFFFFFFFFFFC0;
    a1[45] = 0x100000004;
    a1[46] = v90 & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 94) = v93;
    v95 = (v94 + 79) & 0xFFFFFFFFFFFFFFC0;
    a1[48] = a3;
    a1[49] = 0x100000004;
    a1[50] = v94;
    *(a1 + 102) = 16;
    v96 = (v88 + v95) & 0xFFFFFFFFFFFFFFC0;
    a1[52] = a3;
    a1[53] = 0x100000004;
    a1[54] = v95;
    *(a1 + 110) = v67;
    a3[18] = (24 * v45 + v96 + 63) & 0xFFFFFFFFFFFFFFC0;
    a1[56] = a3;
    a1[57] = 0x100000004;
    a1[58] = v96;
    *(a1 + 118) = 24 * v45;
  }

  *(a1 + 224) = 2;
  return result;
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateTopDownScratch(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = -1;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = -1;
  *(a1 + 80) = -1;
  *(a1 + 96) = 0;
  v247 = (a1 + 96);
  *(a1 + 88) = 0;
  *(a1 + 104) = -1;
  *(a1 + 112) = -1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = -1;
  *(a1 + 144) = -1;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v241 = (a1 + 160);
  *(a1 + 168) = -1;
  *(a1 + 176) = -1;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v242 = (a1 + 192);
  *(a1 + 200) = -1;
  *(a1 + 208) = -1;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = -1;
  *(a1 + 240) = -1;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  *(a1 + 272) = -1;
  *(a1 + 280) = 0;
  *(a1 + 296) = -1;
  *(a1 + 304) = -1;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = -1;
  *(a1 + 336) = -1;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = -1;
  *(a1 + 368) = -1;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = -1;
  *(a1 + 400) = -1;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = -1;
  *(a1 + 432) = -1;
  *(a1 + 440) = 0;
  *(a1 + 456) = -1;
  *(a1 + 464) = -1;
  *(a1 + 448) = 0;
  *(a1 + 472) = 0;
  *(a1 + 488) = -1;
  *(a1 + 496) = -1;
  *(a1 + 480) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 528) = -1;
  *(a1 + 520) = -1;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 560) = -1;
  *(a1 + 552) = -1;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  *(a1 + 592) = -1;
  *(a1 + 584) = -1;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0;
  *(a1 + 624) = -1;
  *(a1 + 616) = -1;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0;
  *(a1 + 656) = -1;
  *(a1 + 648) = -1;
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
  *(a1 + 688) = -1;
  *(a1 + 680) = -1;
  *(a1 + 696) = 0;
  *(a1 + 704) = 0;
  *(a1 + 720) = -1;
  *(a1 + 712) = -1;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  *(a1 + 752) = -1;
  *(a1 + 744) = -1;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0;
  *(a1 + 784) = -1;
  *(a1 + 776) = -1;
  *(a1 + 792) = 0;
  *(a1 + 800) = 0;
  *(a1 + 816) = -1;
  *(a1 + 808) = -1;
  *(a1 + 824) = 0;
  *(a1 + 832) = 0;
  *(a1 + 848) = -1;
  *(a1 + 840) = -1;
  *(a1 + 856) = 0;
  *(a1 + 864) = 0;
  *(a1 + 880) = -1;
  *(a1 + 872) = -1;
  *(a1 + 888) = 0;
  *(a1 + 896) = 0;
  *(a1 + 912) = -1;
  *(a1 + 904) = -1;
  *(a1 + 920) = 0;
  *(a1 + 928) = 0;
  *(a1 + 944) = -1;
  *(a1 + 936) = -1;
  *(a1 + 952) = 0;
  *(a1 + 960) = 0;
  *(a1 + 976) = -1;
  *(a1 + 968) = -1;
  *(a1 + 984) = 0;
  *(a1 + 992) = 0;
  *(a1 + 1008) = -1;
  *(a1 + 1000) = -1;
  *(a1 + 1016) = 0;
  bzero(a1, 0x7B8uLL);
  v7 = *(a2 + 40);
  if (v7)
  {
    v8 = *(a2 + 18) == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (*(a2 + 17) == 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v249 = v10;
  v11 = *(a2 + 32);
  if (*(a2 + 4))
  {
    v9 = 0;
  }

  if (*(a2 + 12) == 3)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a2 + 32);
  if (v12 == 1)
  {
    v14 = 0x3FFFFFFFLL;
    if ((*(a2 + 28) & 4) == 0)
    {
      v14 = 0xFFFFFFFLL;
    }

    v15 = *(a2 + 192) + -1.0;
    if (v15 < 0.0)
    {
      v15 = 0.0;
    }

    v16 = vcvtpd_u64_f64(v15 * v11) + v11;
    if (v14 >= v16)
    {
      v13 = v16;
    }

    else
    {
      v13 = v14;
    }
  }

  v17 = *(a2 + 15);
  if ((v17 & 2) != 0)
  {
    v18 = *(a2 + 160);
    if (v18 >= 2)
    {
      v13 *= v18 - 1;
    }
  }

  if (v13 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v13;
  }

  LODWORD(v20) = *(a2 + 32);
  if (v12)
  {
    v20 = 0x3FFFFFFFLL;
    if ((*(a2 + 28) & 4) == 0)
    {
      v20 = 0xFFFFFFFLL;
    }

    v21 = *(a2 + 192) + -1.0;
    if (v21 < 0.0)
    {
      v21 = 0.0;
    }

    v22 = vcvtpd_u64_f64(v21 * v11) + v11;
    if (v20 >= v22)
    {
      LODWORD(v20) = v22;
    }
  }

  v257 = v19;
  if ((v17 & 2) != 0)
  {
    v24 = *(a2 + 160);
    v25 = v24 - 1;
    if (v24 <= 1)
    {
      v25 = 1;
    }

    v26 = v25 * v20;
    if (v26 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v26;
    }

    if (v24 > 1)
    {
      v23 <<= *(a2 + 13);
    }
  }

  else if (v20 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = v20;
  }

  v255 = v23;
  v244 = *(a2 + 44);
  v245 = *(a2 + 152);
  v27 = AGX::BVHDescriptor::maxInnerNodeCount(a2);
  v28 = v27;
  if ((v17 & 0x400) != 0)
  {
    v29 = 24 * v27;
  }

  else
  {
    v29 = 0;
  }

  v251 = v29;
  if ((v17 & 0x400) != 0)
  {
    v33 = v7 >= 0x101 || v13 >= 0x800001;
    v34 = 2;
    if (v33)
    {
      v34 = 3;
    }

    if (v7 >= 0x11 || v13 >= 0x801)
    {
      v36 = v34;
    }

    else
    {
      v36 = 1;
    }

    LODWORD(v37) = v11;
    if (v12)
    {
      v37 = 0x3FFFFFFFLL;
      if ((*(a2 + 28) & 4) == 0)
      {
        v37 = 0xFFFFFFFLL;
      }

      v38 = *(a2 + 192) + -1.0;
      if (v38 < 0.0)
      {
        v38 = 0.0;
      }

      v39 = vcvtpd_u64_f64(v38 * v11) + v11;
      if (v37 >= v39)
      {
        LODWORD(v37) = v39;
      }
    }

    if ((v17 & 2) != 0)
    {
      v40 = *(a2 + 160);
      if (v40 >= 2)
      {
        LODWORD(v37) = v37 * (v40 - 1);
      }
    }

    if (v37 <= 1)
    {
      LODWORD(v37) = 1;
    }

    v41 = (*(a2 + 20) + v37 - 1) / *(a2 + 20);
    v30 = AGX::BVHDescriptor::topDownLeafNodeCapacity(a2);
    if (v12)
    {
      v42 = 0x3FFFFFFFLL;
      if ((*(a2 + 28) & 4) == 0)
      {
        v42 = 0xFFFFFFFLL;
      }

      v43 = *(a2 + 192) + -1.0;
      if (v43 < 0.0)
      {
        v43 = 0.0;
      }

      v44 = vcvtpd_u64_f64(v43 * v11) + v11;
      if (v42 >= v44)
      {
        LODWORD(v42) = v44;
      }
    }

    else
    {
      LODWORD(v42) = v11;
    }

    v256 = v257 << v36;
    v246 = v41 - 1;
    if ((v17 & 2) != 0)
    {
      v45 = *(a2 + 160);
      if (v45 >= 2)
      {
        LODWORD(v42) = v42 * (v45 - 1);
      }
    }

    if (v42 <= 1)
    {
      LODWORD(v42) = 1;
    }

    v31 = (*(a2 + 20) + v42 - 1) / *(a2 + 20) - 1;
    v32 = 1;
  }

  else
  {
    v30 = AGX::BVHDescriptor::topDownLeafNodeCapacity(a2);
    v31 = AGX::BVHDescriptor::maxInnerNodeCount(a2);
    v256 = 0;
    v32 = 4;
    v246 = v28;
  }

  v46 = AGX::BVHDescriptor::topDownLeafNodeCapacity(a2);
  v47 = 136;
  if ((v17 & 1) == 0)
  {
    v47 = 72;
  }

  v248 = v30;
  v48 = v47 * v30;
  v49 = a3 + 9;
  v50 = a3[1];
  v51 = ((v48 + 63 + a3[11]) & 0xFFFFFFFFFFFFFFC0) >= v50;
  v52 = &a3[(((v48 + 63 + a3[11]) & 0xFFFFFFFFFFFFFFC0) >= v50) + 9];
  v53 = *(v52 + 16);
  *(v52 + 16) = (v48 + 63 + v53) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 736) = a3;
  v54 = 1;
  *(a1 + 744) = 1;
  *(a1 + 748) = v51;
  v55 = v46 + v31;
  *(a1 + 752) = v53;
  *(a1 + 760) = v48;
  if ((v17 & 0x400) != 0)
  {
    v54 = ((a3[11] + 79) & 0xFFFFFFFFFFFFFFC0) >= v50;
    v56 = 1;
  }

  else
  {
    v56 = 4;
  }

  v57 = v257;
  v58 = v255;
  v59 = &v49[2 * v56];
  v60 = v59[v54];
  v59[v54] = (v60 + 79) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 832) = a3;
  *(a1 + 840) = v32;
  *(a1 + 844) = v54;
  *(a1 + 848) = v60;
  *(a1 + 856) = 16;
  v61 = 5;
  if (*(a2 + 15))
  {
    v61 = 6;
  }

  v62 = v55 << v61;
  if ((v17 & 0x400) != 0)
  {
    v63 = ((a3[11] + v62 + 63) & 0xFFFFFFFFFFFFFFC0) >= v50;
    v64 = 1;
  }

  else
  {
    v63 = 1;
    v64 = 4;
  }

  v65 = &v49[2 * v64];
  v66 = v65[v63];
  v65[v63] = (v66 + v62 + 63) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 864) = a3;
  *(a1 + 872) = v32;
  *(a1 + 876) = v63;
  *(a1 + 880) = v66;
  *(a1 + 888) = v62;
  v67 = *(a2 + 40);
  v68 = v67 >= 0x101 || v11 >= 0x800001;
  v69 = 2;
  if (v68)
  {
    v69 = 3;
  }

  if (v67 >= 0x11 || v11 >= 0x801)
  {
    v71 = v69;
  }

  else
  {
    v71 = 1;
  }

  v72 = v257 << v71;
  if ((v17 & 0x400) != 0)
  {
    v73 = ((a3[11] + v72 + 63) & 0xFFFFFFFFFFFFFFC0) >= v50;
    v74 = 1;
  }

  else
  {
    v73 = 1;
    v74 = 4;
  }

  v75 = &v49[2 * v74];
  v76 = v75[v73];
  v75[v73] = (v76 + v72 + 63) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 896) = a3;
  *(a1 + 904) = v32;
  *(a1 + 908) = v73;
  *(a1 + 912) = v76;
  *(a1 + 920) = v72;
  if (*(a2 + 15))
  {
    v77 = 60 * v257;
    if ((v17 & 0x400) != 0)
    {
      v78 = ((a3[11] + v77 + 63) & 0xFFFFFFFFFFFFFFC0) >= v50;
      v79 = 1;
    }

    else
    {
      v78 = 1;
      v79 = 4;
    }

    v80 = &v49[2 * v79];
    v81 = v80[v78];
    v80[v78] = (v81 + 60 * v257 + 63) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 928) = a3;
    *(a1 + 936) = v32;
    *(a1 + 940) = v78;
    *(a1 + 944) = v81;
    *(a1 + 952) = v77;
  }

  v250 = v11;
  v82 = 4 * v255;
  v253 = v28;
  if ((v17 & 0x400) != 0)
  {
    v83 = ((a3[11] + v82 + 63) & 0xFFFFFFFFFFFFFFC0) >= v50;
    v84 = 1;
  }

  else
  {
    v83 = 1;
    v84 = 4;
  }

  v85 = &v49[2 * v84];
  v86 = v85[v83];
  v85[v83] = (v86 + v82 + 63) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 960) = a3;
  *(a1 + 968) = v32;
  *(a1 + 972) = v83;
  *(a1 + 976) = v86;
  *(a1 + 984) = 4 * v255;
  v87 = *(a2 + 14);
  v254 = v46 + v31;
  if (v87 >= 3 && (*(a2 + 15) & 0x400) == 0)
  {
    v88 = AGX::BVHDescriptor::maxInnerNodeCount(a2);
    v89 = AGX::BVHDescriptor::topDownLeafNodeCapacity(a2);
    v55 = v254;
    if ((v89 + v88) >> 24)
    {
      v90 = 4;
    }

    else
    {
      v90 = 3;
    }

    if ((v89 + v88) >= 0x10000)
    {
      v91 = v90;
    }

    else
    {
      v91 = 2;
    }

    v92 = v254 * v87 * v91;
    if ((v17 & 0x400) != 0)
    {
      v93 = ((a3[11] + v92 + 63) & 0xFFFFFFFFFFFFFFC0) >= v50;
      v94 = 1;
    }

    else
    {
      v93 = 1;
      v94 = 4;
    }

    v95 = &v49[2 * v94];
    v96 = v95[v93];
    v95[v93] = (v96 + v92 + 63) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 992) = a3;
    *(a1 + 1000) = v32;
    *(a1 + 1004) = v93;
    *(a1 + 1008) = v96;
    *(a1 + 1016) = v92;
    v57 = v257;
    v58 = v255;
  }

  if ((v17 & 0x400) != 0)
  {
    v97 = ((a3[11] + 195) & 0xFFFFFFFFFFFFFFC0) >= v50;
    v98 = 1;
  }

  else
  {
    v97 = 1;
    v98 = 4;
  }

  v99 = &v49[2 * v98];
  v100 = v99[v97];
  v99[v97] = (v100 + 195) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 1024) = a3;
  v101 = v58;
  *(a1 + 1032) = v32;
  *(a1 + 1036) = v97;
  *(a1 + 1040) = v100;
  *(a1 + 1048) = 132;
  if ((v17 & 0x400) != 0)
  {
    v103 = ((a3[11] + 195) & 0xFFFFFFFFFFFFFFC0) >= v50;
    v102 = 1;
  }

  else
  {
    v102 = 4;
    v103 = 1;
  }

  v104 = &v49[2 * v102];
  v105 = v104[v103];
  v104[v103] = (v105 + 195) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 1056) = a3;
  *(a1 + 1064) = v32;
  *(a1 + 1068) = v103;
  *(a1 + 1072) = v105;
  *(a1 + 1080) = 132;
  v106 = 24 * v57 + 63;
  LODWORD(v105) = ((a3[11] + v106) & 0xFFFFFFFFFFFFFFC0) >= v50;
  v107 = a3 + 11;
  v108 = a3[(((a3[11] + v106) & 0xFFFFFFFFFFFFFFC0) >= v50) + 11];
  a3[(((a3[11] + v106) & 0xFFFFFFFFFFFFFFC0) >= v50) + 11] = (v108 + v106) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 96) = a3;
  *(a1 + 104) = 1;
  *(a1 + 108) = v105;
  *(a1 + 112) = v108;
  *(a1 + 120) = 24 * v57;
  v109 = 4 * v55 + 63;
  LODWORD(v106) = ((a3[11] + v109) & 0xFFFFFFFFFFFFFFC0) >= v50;
  v110 = a3[(((a3[11] + v109) & 0xFFFFFFFFFFFFFFC0) >= v50) + 11];
  a3[(((a3[11] + v109) & 0xFFFFFFFFFFFFFFC0) >= v50) + 11] = (v110 + v109) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 128) = a3;
  *(a1 + 136) = 1;
  *(a1 + 140) = v106;
  *(a1 + 144) = v110;
  *(a1 + 152) = 4 * v55;
  v243 = (v256 >= v82) & (*(a2 + 15) >> 10);
  if (!v243)
  {
    v111 = ((a3[11] + v82 + 63) & 0xFFFFFFFFFFFFFFC0) >= v50;
    v112 = &v49[((a3[11] + v82 + 63) & 0xFFFFFFFFFFFFFFC0) >= v50];
    v113 = v112[2];
    v112[2] = (v113 + v82 + 63) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 160) = a3;
    *(a1 + 168) = 1;
    *(a1 + 172) = v111;
    *(a1 + 176) = v113;
    *(a1 + 184) = 4 * v255;
  }

  v114 = 6 * v58;
  v115 = ((a3[11] + v114 + 63) & 0xFFFFFFFFFFFFFFC0) >= v50;
  v116 = v107[((a3[11] + v114 + 63) & 0xFFFFFFFFFFFFFFC0) >= v50];
  v107[((a3[11] + v114 + 63) & 0xFFFFFFFFFFFFFFC0) >= v50] = (v116 + v114 + 63) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 192) = a3;
  *(a1 + 200) = 1;
  *(a1 + 204) = v115;
  *(a1 + 208) = v116;
  *(a1 + 216) = v114;
  v117 = ((a3[11] + 79) & 0xFFFFFFFFFFFFFFC0) >= v50;
  v118 = v107[((a3[11] + 79) & 0xFFFFFFFFFFFFFFC0) >= v50];
  v107[((a3[11] + 79) & 0xFFFFFFFFFFFFFFC0) >= v50] = (v118 + 79) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 224) = a3;
  *(a1 + 232) = 1;
  *(a1 + 236) = v117;
  *(a1 + 240) = v118;
  LODWORD(v118) = ((a3[11] + 79) & 0xFFFFFFFFFFFFFFC0) >= v50;
  v119 = v107[((a3[11] + 79) & 0xFFFFFFFFFFFFFFC0) >= v50];
  v107[((a3[11] + 79) & 0xFFFFFFFFFFFFFFC0) >= v50] = (v119 + 79) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 248) = 16;
  *(a1 + 256) = a3;
  *(a1 + 264) = 1;
  *(a1 + 268) = v118;
  *(a1 + 272) = v119;
  LODWORD(v118) = ((a3[11] + 191) & 0xFFFFFFFFFFFFFFC0) >= v50;
  v120 = v107[((a3[11] + 191) & 0xFFFFFFFFFFFFFFC0) >= v50];
  *(a1 + 280) = 16;
  v107[v118] = (v120 + 191) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 288) = a3;
  *(a1 + 296) = 1;
  *(a1 + 300) = v118;
  *(a1 + 304) = v120;
  *(a1 + 312) = 128;
  if (*(a2 + 15))
  {
    v121 = ((a3[11] + 79) & 0xFFFFFFFFFFFFFFC0) >= v50;
    v122 = a3 + 11;
    v123 = a3[(((a3[11] + 79) & 0xFFFFFFFFFFFFFFC0) >= v50) + 11];
    a3[(((a3[11] + 79) & 0xFFFFFFFFFFFFFFC0) >= v50) + 11] = (v123 + 79) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 320) = a3;
    *(a1 + 328) = 1;
    *(a1 + 332) = v121;
    *(a1 + 336) = v123;
    *(a1 + 344) = 16;
    v124 = ((a3[11] + 79) & 0xFFFFFFFFFFFFFFC0) >= v50;
    v125 = a3[(((a3[11] + 79) & 0xFFFFFFFFFFFFFFC0) >= v50) + 11];
    v122[((a3[11] + 79) & 0xFFFFFFFFFFFFFFC0) >= v50] = (v125 + 79) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 352) = a3;
    *(a1 + 360) = 1;
    *(a1 + 364) = v124;
    *(a1 + 368) = v125;
    *(a1 + 376) = 16;
    v126 = ((a3[11] + 67) & 0xFFFFFFFFFFFFFFC0) >= v50;
    v127 = a3[(((a3[11] + 67) & 0xFFFFFFFFFFFFFFC0) >= v50) + 11];
    v122[((a3[11] + 67) & 0xFFFFFFFFFFFFFFC0) >= v50] = (v127 + 67) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 384) = a3;
    *(a1 + 392) = 1;
    *(a1 + 396) = v126;
    *(a1 + 400) = v127;
    LODWORD(v127) = ((a3[11] + 67) & 0xFFFFFFFFFFFFFFC0) >= v50;
    v128 = a3[(((a3[11] + 67) & 0xFFFFFFFFFFFFFFC0) >= v50) + 11];
    v122[((a3[11] + 67) & 0xFFFFFFFFFFFFFFC0) >= v50] = (v128 + 67) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 408) = 4;
    *(a1 + 416) = a3;
    *(a1 + 424) = 1;
    *(a1 + 428) = v127;
    *(a1 + 432) = v128;
    *(a1 + 440) = 4;
  }

  if ((v57 + 1023) >= 0x400)
  {
    v129 = ((v57 + 1023) >> 8) & 0xFFFFFC;
  }

  else
  {
    v129 = 4;
  }

  v130 = v129 + 63;
  v131 = ((a3[11] + v130) & 0xFFFFFFFFFFFFFFC0) >= v50;
  v132 = &v49[((a3[11] + v130) & 0xFFFFFFFFFFFFFFC0) >= v50];
  v133 = v132[2];
  v132[2] = (v133 + v130) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 448) = a3;
  *(a1 + 456) = 1;
  *(a1 + 460) = v131;
  *(a1 + 464) = v133;
  *(a1 + 472) = v129;
  {
    v58 = v255;
    LODWORD(v57) = v257;
    if (v237)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateTopDownScratch(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::ScratchAllocator *,unsigned long long)::instanceBatchSize = 256;
      v58 = v255;
      LODWORD(v57) = v257;
    }
  }

  {
    v58 = v255;
    LODWORD(v57) = v257;
    if (v238)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateTopDownScratch(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::ScratchAllocator *,unsigned long long)::primitiveBatchSize = 512;
      v58 = v255;
      LODWORD(v57) = v257;
    }
  }

  {
    v58 = v255;
    LODWORD(v57) = v257;
    if (v239)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateTopDownScratch(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::ScratchAllocator *,unsigned long long)::batchingThreshold = 2048;
      v58 = v255;
      LODWORD(v57) = v257;
    }
  }

  {
    v58 = v255;
    LODWORD(v57) = v257;
    if (v240)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateTopDownScratch(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::ScratchAllocator *,unsigned long long)::allowBatchingEV = 1;
      v58 = v255;
      LODWORD(v57) = v257;
    }
  }

  v134 = 0;
  if (v57 < AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateTopDownScratch(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::ScratchAllocator *,unsigned long long)::batchingThreshold)
  {
    v135 = 0;
  }

  else
  {
    v135 = 0;
    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateTopDownScratch(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::ScratchAllocator *,unsigned long long)::allowBatchingEV)
    {
      if ((*(a2 + 18) & 0xFE) == 6)
      {
        v136 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateTopDownScratch(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::ScratchAllocator *,unsigned long long)::instanceBatchSize;
      }

      else
      {
        v136 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateTopDownScratch(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::ScratchAllocator *,unsigned long long)::primitiveBatchSize;
      }

      v137 = *v136;
      if (__CFADD__(v101 - 1, v137))
      {
        v134 = 2;
      }

      else
      {
        v134 = 2 * ((v101 - 1 + v137) / v137);
      }

      v135 = (v58 + v137 - 1) / v137;
    }
  }

  v138 = 16 * v248 + 63;
  v139 = a3[1];
  v140 = ((a3[11] + v138) & 0xFFFFFFFFFFFFFFC0) >= v139;
  v141 = a3 + 11;
  v142 = a3[(((a3[11] + v138) & 0xFFFFFFFFFFFFFFC0) >= v139) + 11];
  a3[(((a3[11] + v138) & 0xFFFFFFFFFFFFFFC0) >= v139) + 11] = (v142 + v138) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 480) = a3;
  *(a1 + 488) = 1;
  *(a1 + 492) = v140;
  *(a1 + 496) = v142;
  v143 = 16 * v135 + 63;
  LODWORD(v142) = ((a3[11] + v143) & 0xFFFFFFFFFFFFFFC0) >= v139;
  v144 = a3[(((a3[11] + v143) & 0xFFFFFFFFFFFFFFC0) >= v139) + 11];
  *(a1 + 504) = 16 * v248;
  v141[v142] = (v144 + v143) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 512) = a3;
  *(a1 + 520) = 1;
  *(a1 + 524) = v142;
  *(a1 + 528) = v144;
  *(a1 + 536) = 16 * v135;
  LODWORD(v142) = ((a3[11] + v138) & 0xFFFFFFFFFFFFFFC0) >= v139;
  v145 = a3[(((a3[11] + v138) & 0xFFFFFFFFFFFFFFC0) >= v139) + 11];
  v141[((a3[11] + v138) & 0xFFFFFFFFFFFFFFC0) >= v139] = (v145 + v138) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 544) = a3;
  *(a1 + 552) = 1;
  *(a1 + 556) = v142;
  *(a1 + 560) = v145;
  LODWORD(v138) = ((a3[11] + v143) & 0xFFFFFFFFFFFFFFC0) >= v139;
  v146 = a3[(((a3[11] + v143) & 0xFFFFFFFFFFFFFFC0) >= v139) + 11];
  v141[v138] = (v146 + v143) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 568) = 16 * v248;
  *(a1 + 576) = a3;
  *(a1 + 584) = 1;
  *(a1 + 588) = v138;
  *(a1 + 592) = v146;
  *(a1 + 600) = 16 * v135;
  if (!AGX::BVHDescriptor::useSpatialSplits(a2) && ((v147 = *(a2 + 15), (~v147 & 3) != 0) || *(a2 + 160) <= 1u))
  {
    v149 = a3[1];
  }

  else
  {
    v148 = 8 * v134 + 63;
    v149 = a3[1];
    v150 = ((a3[11] + v148) & 0xFFFFFFFFFFFFFFC0) >= v149;
    v151 = &v49[((a3[11] + v148) & 0xFFFFFFFFFFFFFFC0) >= v149];
    v152 = v151[2];
    v151[2] = (v152 + v148) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 608) = a3;
    *(a1 + 616) = 1;
    *(a1 + 620) = v150;
    *(a1 + 624) = v152;
    *(a1 + 632) = 8 * v134;
    v147 = *(a2 + 15);
  }

  v153 = 1732 * v135;
  v154 = (v251 >= 1732 * v135) & (v147 >> 10);
  if ((v154 & 1) == 0)
  {
    v155 = ((a3[11] + v153 + 63) & 0xFFFFFFFFFFFFFFC0) >= v149;
    v156 = &v49[((a3[11] + v153 + 63) & 0xFFFFFFFFFFFFFFC0) >= v149];
    v157 = v156[2];
    v156[2] = (v157 + v153 + 63) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 640) = a3;
    *(a1 + 648) = 1;
    *(a1 + 652) = v155;
    *(a1 + 656) = v157;
    *(a1 + 664) = v153;
  }

  v158 = 200 * v134 + 63;
  v159 = ((a3[11] + v158) & 0xFFFFFFFFFFFFFFC0) >= v149;
  v160 = &v49[((a3[11] + v158) & 0xFFFFFFFFFFFFFFC0) >= v149];
  v161 = v160[2];
  v160[2] = (v161 + v158) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 672) = a3;
  *(a1 + 680) = 1;
  *(a1 + 684) = v159;
  *(a1 + 688) = v161;
  *(a1 + 696) = 200 * v134;
  if (*(a2 + 15))
  {
    v162 = (((3 * v135) & 0x3FFFFFFFFLL) << 9) | 0x3F;
    v163 = ((a3[11] + v162) & 0xFFFFFFFFFFFFFFC0) >= v149;
    v164 = &v49[((a3[11] + v162) & 0xFFFFFFFFFFFFFFC0) >= v149];
    v165 = v164[2];
    v164[2] = (v165 + v162) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 704) = a3;
    *(a1 + 712) = 1;
    *(a1 + 716) = v163;
    *(a1 + 720) = v165;
    *(a1 + 728) = 1536 * v135;
  }

  v166 = ((a3[11] + 75) & 0xFFFFFFFFFFFFFFC0) >= v149;
  v167 = a3[(((a3[11] + 75) & 0xFFFFFFFFFFFFFFC0) >= v149) + 11];
  a3[(((a3[11] + 75) & 0xFFFFFFFFFFFFFFC0) >= v149) + 11] = (v167 + 75) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 768) = a3;
  *(a1 + 776) = 1;
  *(a1 + 780) = v166;
  *(a1 + 784) = v167;
  LODWORD(v167) = ((a3[11] + 207) & 0xFFFFFFFFFFFFFFC0) >= v149;
  v168 = a3[(((a3[11] + 207) & 0xFFFFFFFFFFFFFFC0) >= v149) + 11];
  *(a1 + 792) = 12;
  a3[v167 + 11] = (v168 + 207) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 800) = a3;
  *(a1 + 808) = 1;
  *(a1 + 812) = v167;
  *(a1 + 816) = v168;
  *(a1 + 824) = 144;
  if (v249)
  {
    v169 = 16 * v244 + 63;
    v170 = ((a3[9] + v169) & 0xFFFFFFFFFFFFFFC0) >= v149;
    v171 = v49[((a3[9] + v169) & 0xFFFFFFFFFFFFFFC0) >= v149];
    v49[((a3[9] + v169) & 0xFFFFFFFFFFFFFFC0) >= v149] = (v171 + v169) & 0xFFFFFFFFFFFFFFC0;
    *a1 = a3;
    *(a1 + 8) = 0;
    *(a1 + 12) = v170;
    *(a1 + 16) = v171;
    *(a1 + 24) = 16 * v244;
    v172 = 4 * v244 + 63;
    v173 = ((a3[9] + v172) & 0xFFFFFFFFFFFFFFC0) >= v149;
    v174 = v49[((a3[9] + v172) & 0xFFFFFFFFFFFFFFC0) >= v149];
    v49[((a3[9] + v172) & 0xFFFFFFFFFFFFFFC0) >= v149] = (v174 + v172) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 32) = a3;
    *(a1 + 40) = 0;
    *(a1 + 44) = v173;
    *(a1 + 48) = v174;
    v175 = 36 * v244 + 63;
    LODWORD(v172) = ((a3[9] + v175) & 0xFFFFFFFFFFFFFFC0) >= v149;
    v176 = v49[((a3[9] + v175) & 0xFFFFFFFFFFFFFFC0) >= v149];
    *(a1 + 56) = 4 * v244;
    v49[v172] = (v176 + v175) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 64) = a3;
    *(a1 + 72) = 0;
    *(a1 + 76) = v172;
    *(a1 + 80) = v176;
    *(a1 + 88) = 36 * v244;
    v177 = a3[18];
    v178 = 8 * v250 + v177 + 63;
    *(a1 + 1288) = a3;
    *(a1 + 1296) = 0x100000004;
    *(a1 + 1304) = v177;
    *(a1 + 1312) = 8 * v250;
    v179 = 8 * *(a2 + 40);
    v180 = ((v178 | 0x38) + v179) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 1320) = a3;
    *(a1 + 1328) = 0x100000004;
    *(a1 + 1336) = v178 & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 1344) = v179;
    a3[18] = (v245 + v180 + 63) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 1352) = a3;
    *(a1 + 1360) = 0x100000004;
    *(a1 + 1368) = v180;
    *(a1 + 1376) = v245;
  }

  if ((*(a2 + 18) & 0xFE) == 6)
  {
    if (*(a2 + 15))
    {
      v181 = 56;
    }

    else
    {
      v181 = 24;
    }

    v182 = (v181 * *(a2 + 52));
    v183 = ((v182 + 63 + a3[11]) & 0xFFFFFFFFFFFFFFC0) >= v149;
    v184 = &v49[((v182 + 63 + a3[11]) & 0xFFFFFFFFFFFFFFC0) >= v149];
    v185 = v184[2];
    v184[2] = (v182 + 63 + v185) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 1256) = a3;
    *(a1 + 1264) = 1;
    *(a1 + 1268) = v183;
    *(a1 + 1272) = v185;
    *(a1 + 1280) = v182;
  }

  v186 = a3[18];
  v187 = (v186 + 87) & 0xFFFFFFFFFFFFFFC0;
  a3[18] = v187;
  *(a1 + 1944) = a3;
  *(a1 + 1952) = 0x100000004;
  *(a1 + 1960) = v186;
  *(a1 + 1968) = 24;
  v188 = a4 + 63;
  if ((a4 + 63) >= 0x4000)
  {
    if (v188 >= 0x400000)
    {
      if (v188 >> 30)
      {
        if (v188 >> 38)
        {
          v189 = 8;
        }

        else
        {
          v189 = 4;
        }
      }

      else
      {
        v189 = 3;
      }
    }

    else
    {
      v189 = 2;
    }
  }

  else
  {
    v189 = 1;
  }

  *(a1 + 1552) = v189;
  if ((*(a2 + 15) & 0x400) != 0)
  {
    *(a1 + 1592) = *(a1 + 736);
    *(a1 + 1604) = *(a1 + 748);
    v200 = (20 * v253 + v187 + 63) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 1624) = a3;
    *(a1 + 1632) = 0x100000004;
    *(a1 + 1640) = v187;
    *(a1 + 1648) = 20 * v253;
    v201 = v256 + v200 + 63;
    v202 = v201 & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 1656) = a3;
    *(a1 + 1664) = 0x100000004;
    *(a1 + 1672) = v200;
    *(a1 + 1680) = v256;
    if (v243)
    {
      *v241 = *(a1 + 1656);
      *(v241 + 12) = *(a1 + 1668);
    }

    v203 = v253 * v189;
    v204 = ((v201 | 0x3F) + v203) & 0xFFFFFFFFFFFFFFC0;
    a3[18] = v204;
    *(a1 + 1688) = a3;
    *(a1 + 1696) = 0x100000004;
    *(a1 + 1704) = v202;
    *(a1 + 1712) = v203;
    *(a1 + 1720) = *v247;
    *(a1 + 1732) = *(v247 + 12);
    v205 = (v251 + v204 + 63) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 1752) = a3;
    *(a1 + 1760) = 0x100000004;
    *(a1 + 1768) = v204;
    *(a1 + 1776) = v251;
    if (v154)
    {
      *(a1 + 640) = *(a1 + 1752);
      *(a1 + 652) = *(a1 + 1764);
    }

    if (v114 >= 8 * v253)
    {
      *(a1 + 1816) = *v242;
      *(a1 + 1828) = *(v242 + 12);
    }

    else
    {
      v206 = ((a3[11] + 8 * v254 + 63) & 0xFFFFFFFFFFFFFFC0) >= v149;
      v207 = &v49[v206];
      v208 = v207[2];
      v207[2] = (v208 + 8 * v254 + 63) & 0xFFFFFFFFFFFFFFC0;
      *(a1 + 1816) = a3;
      *(a1 + 1824) = 1;
      *(a1 + 1828) = v206;
      *(a1 + 1832) = v208;
      *(a1 + 1840) = 8 * v254;
    }

    v218 = (v205 + 191) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 1848) = a3;
    *(a1 + 1856) = 0x100000004;
    *(a1 + 1864) = v205;
    *(a1 + 1872) = 128;
    v219 = (v218 + 399) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 1880) = a3;
    *(a1 + 1888) = 0x100000004;
    *(a1 + 1896) = v218;
    *(a1 + 1904) = 336;
    if (v253 >= v248)
    {
      v220 = v248;
    }

    else
    {
      v220 = v253;
    }

    v221 = 20 * ((8 * v220 + 1023) >> 10);
    if (v220 <= 0x80)
    {
      v221 = 20;
    }

    v222 = (v221 + v219 + 63) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 1784) = a3;
    *(a1 + 1792) = 0x100000004;
    *(a1 + 1800) = v219;
    *(a1 + 1808) = v221;
    LODWORD(v219) = 4;
    v223 = 1936;
    a3[18] = (v222 + 67) & 0xFFFFFFFFFFFFFFC0;
    v224 = 1928;
    v225 = 1924;
    v226 = 1920;
    v227 = 1912;
    goto LABEL_225;
  }

  *(a1 + 1120) = v253;
  v190 = ((4 * v253) & 0x3FFFFFFFCLL) + 63;
  v191 = ((a3[13] + v190) & 0xFFFFFFFFFFFFFFC0) >= v149;
  v192 = a3 + 13;
  v193 = a3[(((a3[13] + v190) & 0xFFFFFFFFFFFFFFC0) >= v149) + 13];
  a3[(((a3[13] + v190) & 0xFFFFFFFFFFFFFFC0) >= v149) + 13] = (v193 + v190) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 1088) = a3;
  *(a1 + 1096) = 2;
  *(a1 + 1100) = v191;
  *(a1 + 1104) = v193;
  *(a1 + 1112) = 4 * v253;
  LODWORD(v190) = ((a3[13] + 4 * v253 + 63) & 0xFFFFFFFFFFFFFFC0) >= v149;
  v194 = a3[(((a3[13] + 4 * v253 + 63) & 0xFFFFFFFFFFFFFFC0) >= v149) + 13];
  v192[((a3[13] + 4 * v253 + 63) & 0xFFFFFFFFFFFFFFC0) >= v149] = (v194 + 4 * v253 + 63) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 1128) = a3;
  *(a1 + 1136) = 2;
  *(a1 + 1140) = v190;
  *(a1 + 1144) = v194;
  *(a1 + 1152) = 4 * v253;
  LODWORD(v190) = ((a3[13] + 4 * v253 + 63) & 0xFFFFFFFFFFFFFFC0) >= v149;
  v195 = a3[(((a3[13] + 4 * v253 + 63) & 0xFFFFFFFFFFFFFFC0) >= v149) + 13];
  v192[((a3[13] + 4 * v253 + 63) & 0xFFFFFFFFFFFFFFC0) >= v149] = (v195 + 4 * v253 + 63) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 1160) = a3;
  *(a1 + 1168) = 2;
  *(a1 + 1172) = v190;
  *(a1 + 1176) = v195;
  *(a1 + 1184) = 4 * v253;
  v196 = (v253 + 4095) & 0xFFFFFFFFFFFFF000;
  if (v196 <= 0x1000)
  {
    v199 = 0;
  }

  else
  {
    v197 = 0;
    do
    {
      v197 += (((v196 + 4095) >> 12) + 4095) & 0x1FFFFFFFFFF000;
      v198 = v196 > 0x1000000;
      v196 = (v196 + 4095) >> 12;
    }

    while (v198);
    v199 = 4 * v197;
  }

  v209 = ((a3[13] + (v199 | 0x3F)) & 0xFFFFFFFFFFFFFFC0) >= v149;
  v210 = v192[((a3[13] + (v199 | 0x3F)) & 0xFFFFFFFFFFFFFFC0) >= v149];
  v192[((a3[13] + (v199 | 0x3F)) & 0xFFFFFFFFFFFFFFC0) >= v149] = (v210 + (v199 | 0x3F)) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 1192) = a3;
  *(a1 + 1200) = 2;
  *(a1 + 1204) = v209;
  *(a1 + 1208) = v210;
  *(a1 + 1216) = v199;
  v211 = ((a3[13] + (v199 | 0x3F)) & 0xFFFFFFFFFFFFFFC0) >= v149;
  v212 = v192[v211];
  v192[v211] = (v212 + (v199 | 0x3F)) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 1224) = a3;
  *(a1 + 1232) = 2;
  *(a1 + 1236) = v211;
  *(a1 + 1240) = v212;
  *(a1 + 1248) = v199;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
  }

  v213 = 8;
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride > 4)
  {
    v213 = 4;
  }

  v214 = a4 - 1 + v213;
  v215 = 2;
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride <= 4)
  {
    v215 = 3;
  }

  v216 = v214 >> v215;
  if (v216 >= 0x100)
  {
    if (v216 >= 0x10000)
    {
      if (v216 >> 24)
      {
        if (HIDWORD(v216))
        {
          v217 = 8;
        }

        else
        {
          v217 = 4;
        }
      }

      else
      {
        v217 = 3;
      }
    }

    else
    {
      v217 = 2;
    }
  }

  else
  {
    v217 = 1;
  }

  *(a1 + 1416) = v217;
  v228 = (v217 * v254);
  v229 = a3[18];
  v230 = (v228 + v229 + 63) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 1384) = a3;
  *(a1 + 1392) = 0x100000004;
  *(a1 + 1400) = v229;
  *(a1 + 1408) = v228;
  v231 = 4 * v246;
  v232 = (v231 + v230 + 63) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 1424) = a3;
  *(a1 + 1432) = 0x100000004;
  *(a1 + 1440) = v230;
  *(a1 + 1448) = v231;
  v233 = (4 * v248 + v232 + 63) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 1456) = a3;
  *(a1 + 1464) = 0x100000004;
  *(a1 + 1472) = v232;
  *(a1 + 1480) = 4 * v248;
  a3[18] = (v233 + 95) & 0xFFFFFFFFFFFFFFC0;
  *(a1 + 1560) = a3;
  *(a1 + 1568) = 0x100000004;
  *(a1 + 1576) = v233;
  *(a1 + 1584) = 32;
  {
    AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
  }

  {
    AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
  }

  if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) == 0 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || (*(a2 + 28)))
  {
    v234 = a3[18];
    v235 = v234 + 335;
    v222 = (v234 + 335) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 1488) = a3;
    *(a1 + 1496) = 0x100000004;
    *(a1 + 1504) = v234;
    v219 = (v253 * *(a1 + 1552) + 7) & 0xFFFFFFFFFFFFFFF8;
    v236 = ((v235 | 0x38) + v219) & 0xFFFFFFFFFFFFFFC0;
    v223 = 1544;
    *(a1 + 1512) = 272;
    a3[18] = v236;
    v224 = 1536;
    v225 = 1532;
    v226 = 1528;
    v227 = 1520;
LABEL_225:
    *(a1 + v227) = a3;
    *(a1 + v226) = 4;
    *(a1 + v225) = 1;
    *(a1 + v224) = v222;
    *(a1 + v223) = v219;
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildAndEncodeRiaBvh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, MTLAccelerationStructureDescriptor *a6, unint64_t a7, void *a8, char *a9)
{
  v9 = a5;
  __src[113] = *MEMORY[0x29EDCA608];
  v995 = 0u;
  v996 = 0u;
  v993 = 0u;
  v994 = 0u;
  v977 = a1;
  if ((*(a2 + 18) & 0xFE) == 6 && (*(a2 + 112) - 3) >= 2)
  {
    v14 = a1;
    v13 = [(MTLAccelerationStructureDescriptor *)a6 instancedAccelerationStructures];
    v15 = [v13 count];
    v16 = v15;
    if (v15 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v15;
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(__src, v14, 8 * v17, 0);
    if (v16)
    {
      v18 = 0;
      v19 = __src[1];
      do
      {
        v20 = [v13 objectAtIndexedSubscript:v18];
        v21 = [objc_msgSend(v20 "buffer")];
        v19[v18++] = [v20 bufferOffset] + v21;
      }

      while (v16 != v18);
    }

    v995 = *__src;
    v996 = *&__src[2];
    v22 = [v13 count];
    if ([v13 count] < 2)
    {
      v23 = 4;
    }

    else
    {
      v23 = 4 * [v13 count];
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(__src, v977, v23, 0);
    if (v22)
    {
      v24 = 0;
      v25 = __src[1];
      do
      {
        v25[v24] = *([v13 objectAtIndexedSubscript:v24] + 360);
        ++v24;
      }

      while (v22 != v24);
    }

    v993 = *__src;
    v994 = *&__src[2];
    v9 = a5;
    a1 = v977;
  }

  else
  {
    v13 = 0;
  }

  if (*(a1 + 49) == 1)
  {
    v26 = *(a3 + 80);
    if (v26 <= *(a3 + 96))
    {
      v26 = *(a3 + 96);
    }

    if (v26 <= *(a3 + 112))
    {
      v26 = *(a3 + 112);
    }

    if (v26 <= *(a3 + 128))
    {
      v26 = *(a3 + 128);
    }

    v27 = *(a3 + 144) + ((v26 + 63) & 0xFFFFFFFFFFFFFFC0);
    v28 = (*(a2 + 18) & 0xFE) != 6 || (*(a2 + 112) - 3) >= 2;
    v29 = !v28;
    BatchForCommand = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getBatchForCommand(a1, 0, 0, v9, a7, a8, a9, v27 + 64, v13, v29);
  }

  else
  {
    BatchForCommand = 0;
  }

  v961 = [v9 accelerationStructureUniqueIdentifier];
  *v991 = 0u;
  v992 = 0u;
  v30 = *(a2 + 40);
  v31 = *(a2 + 18);
  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = *(a2 + 17) == 2;
  }

  v33 = !v32 || v30 == 0;
  v34 = !v33;
  v965 = v34;
  if (!v33)
  {
    v35 = 4 * v30;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v991, v977, 4 * v30, 1);
    bzero(v991[1], v35);
  }

  v36 = *(a2 + 4);
  if (**MEMORY[0x29EDC56B0])
  {
    AGX::BVHDescriptor::bvhBuildFlags(a2);
    IOGPUDeviceTraceEvent();
  }

  if (v36 != 2)
  {
    if (v36 == 1)
    {
      v37 = a5;
      v38 = [a5 buffer];
      v39 = [a5 bufferOffset];
      v40 = [v38 gpuAddress];
      *(a3 + 32) = [v38 length];
      *(a3 + 40) = a7;
      *(a3 + 48) = a8;
      *(a3 + 56) = v39;
      *(a3 + 64) = (a9 + 63) & 0xFFFFFFFFFFFFFFC0;
      v41 = *(a3 + 80);
      if (v41 <= *(a3 + 96))
      {
        v41 = *(a3 + 96);
      }

      if (v41 <= *(a3 + 112))
      {
        v41 = *(a3 + 112);
      }

      if (v41 <= *(a3 + 128))
      {
        v41 = *(a3 + 128);
      }

      *(a3 + 16) = (v41 + 63) & 0xFFFFFFFFFFFFFFC0;
      *(a3 + 24) = v40;
      *a3 = 1;
      [objc_msgSend(a5 "buffer")];
      [a5 bufferOffset];
      [a5 size];
      v42 = *(a2 + 18) & 0xFE;
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getVersionToEncode(BOOL,BOOL,BOOL)::gen = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen();
      }

      v43 = v42 == 6;
      v44 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhVersions[AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getVersionToEncode(BOOL,BOOL,BOOL)::gen];
      if (v965)
      {
        v45 = 0x20000000;
      }

      else
      {
        v45 = 0;
      }

      {
        {
        }

        {
        }

        if (shouldDumpOrVerifyBVHs(void)::once != -1)
        {
          dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
        }

        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupBuildSmallBVH(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,unsigned int,unsigned long long,MTL4BufferRange,unsigned long long)::verify = 0;
        v37 = a5;
      }

      v46 = [v37 buffer];
      v47 = [v37 bufferOffset];
      v48 = [v46 length];
      v49 = [v46 gpuAddress];
      [v46 length];
      memset(__src, 0, 24);
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(__src, v977, 128, 1);
      v50 = __src[0];
      v51 = __src[1];
      *(__src[0] + 2) = 0;
      *(v50 + 9) = 0;
      *(v50 + 6) = v49 + v47;
      *(v50 + 7) = v48 - v47;
      v52 = *a4;
      if (*(a4 + 8) == 4)
      {
        v53 = *(v52 + 16);
      }

      else
      {
        v53 = 0;
      }

      v95 = *(a4 + 24) / 0x18u;
      *(v50 + 8) = v53 + *(*a4 + 16 * *(a4 + 12) + 24) + *(v52 + 8 * *(a4 + 12) + 56) + *(a4 + 16);
      *(v50 + 36) = v95;
      v96 = *(a4 + 32);
      if (*(a4 + 40) == 4)
      {
        v97 = *(v96 + 16);
      }

      else
      {
        v97 = 0;
      }

      v98 = *(a4 + 56) / 0x18u;
      *(v50 + 10) = v97 + *(v96 + 16 * *(a4 + 44) + 24) + *(v96 + 8 * *(a4 + 44) + 56) + *(a4 + 48);
      *(v50 + 44) = v98;
      v99 = *(a4 + 64);
      if (*(a4 + 72) == 4)
      {
        v100 = *(v99 + 16);
      }

      else
      {
        v100 = 0;
      }

      v101 = *(a4 + 88) >> 4;
      *(v50 + 12) = v100 + *(v99 + 16 * *(a4 + 76) + 24) + *(v99 + 8 * *(a4 + 76) + 56) + *(a4 + 80);
      *(v50 + 52) = v101;
      v102 = *(a4 + 128);
      v103 = *(a4 + 140);
      v104 = *(v102 + 16 * v103 + 24);
      if (*(a4 + 136) == 4)
      {
        v105 = *(v102 + 16);
      }

      else
      {
        v105 = 0;
      }

      v106 = 0;
      v107 = *(v102 + 8 * v103 + 56);
      v108 = v105 + v104;
      v109 = *(a4 + 152);
      *(v50 + 14) = v108 + v107 + *(a4 + 144);
      *(v50 + 15) = v109;
      *v50 = 0;
      *(v50 + 10) = 16;
      __src[0] = v961;
      __src[1] = 0;
      LODWORD(__src[2]) = v45 & 0xE0000000 | (v43 << 31) | v44 & 0x1FFFFFFF;
      HIDWORD(__src[8]) = 0;
      LOBYTE(__src[9]) = 0;
      LODWORD(__src[10]) = 0;
      HIDWORD(__src[9]) = 0;
      __src[14] = 0;
      LODWORD(__src[15]) = 0;
      __src[16] = 0;
      LODWORD(__src[17]) = 0;
      __src[18] = 0;
      *(&__src[2] + 4) = 0u;
      *(&__src[4] + 4) = 0u;
      WORD2(__src[6]) = 0;
      __src[7] = 0;
      *(&__src[7] + 7) = 0;
      memset(&__src[11], 0, 20);
      LOWORD(__src[19]) &= 0x8000u;
      HIDWORD(__src[21]) = 0;
      LOBYTE(__src[22]) = 0;
      *(&__src[19] + 4) = 0;
      *(&__src[20] + 2) = 0;
      *(&__src[22] + 4) = 0u;
      *(&__src[24] + 4) = 0u;
      *(&__src[26] + 4) = 0u;
      *(&__src[28] + 4) = 0;
      *&__src[30] = *(v50 + 3);
      __src[55] = 0;
      LODWORD(__src[56]) = 0;
      __src[76] = 0;
      LODWORD(__src[77]) = 0;
      __src[78] = 0;
      LODWORD(__src[79]) = 0;
      memset(&__src[32], 0, 26);
      memset(&__src[36], 0, 92);
      memset(&__src[48], 0, 52);
      memset(&__src[57], 0, 148);
      memset(&__src[80], 0, 28);
      v110 = *(a4 + 672);
      if (*(a4 + 680) == 4)
      {
        v106 = *(v110 + 16);
      }

      __src[84] = (v106 + *(v110 + 16 * *(a4 + 684) + 24) + *(v110 + 8 * *(a4 + 684) + 56) + *(a4 + 688));
      LOWORD(__src[85]) = 2;
      __src[86] = 0;
      LODWORD(__src[87]) = 0;
      LODWORD(__src[88]) = 0;
      __src[95] = 0;
      LODWORD(__src[96]) = 0;
      __src[97] = 0;
      LODWORD(__src[98]) = 0;
      __src[99] = 0;
      LODWORD(__src[100]) = 0;
      memset(&__src[89], 0, 44);
      __src[101] = v51;
      LOWORD(__src[102]) = 1;
      __src[103] = 0;
      LOWORD(__src[104]) = 0;
      __src[105] = 0;
      LODWORD(__src[106]) = 0;
      __src[107] = 0;
      LODWORD(__src[108]) = 0;
      __src[109] = 0;
      LODWORD(__src[110]) = 0;
      __src[111] = 0;
      LOWORD(__src[112]) = 0;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(v1005, v977, a6, a2, &v995, &v993, __src, a4, v991);
      v111 = 0;
      *(v50 + 28) = __src[3];
      *(v50 + 12) = 0;
      *(v50 + 8) = WORD2(__src[2]);
      if (*(a2 + 40))
      {
        v112 = v977;
        v113 = 0;
        v114 = 0;
        if (*(a2 + 18))
        {
          v115 = 0;
          v116 = 0;
          v117 = 0;
          v118 = 0;
        }

        else
        {
          v115 = 0;
          v116 = 0;
          v117 = 0;
          v118 = 0;
          if (*(a2 + 17) == 2)
          {
            v119 = *(a4 + 704);
            if (*(a4 + 712) == 4)
            {
              v120 = *(v119 + 16);
            }

            else
            {
              v120 = 0;
            }

            v126 = *(a4 + 716);
            v127 = *(a4 + 768);
            v128 = *(a4 + 780);
            if (*(a4 + 776) == 4)
            {
              v129 = *(v127 + 16);
            }

            else
            {
              v129 = 0;
            }

            v130 = v119 + 16 * v126;
            v131 = v119 + 8 * v126;
            v132 = v127 + 16 * v128;
            v133 = v127 + 8 * v128;
            v134 = *(a4 + 800);
            v135 = *(a4 + 812);
            if (*(a4 + 808) == 4)
            {
              v136 = *(v134 + 16);
            }

            else
            {
              v136 = 0;
            }

            v137 = *(v130 + 24);
            v138 = *(v131 + 56);
            v139 = *(v132 + 24);
            v140 = *(v133 + 56);
            v141 = *(v134 + 16 * v135 + 24);
            v142 = *(v134 + 8 * v135 + 56);
            v143 = *(a4 + 832);
            if (*(a4 + 840) == 4)
            {
              v144 = *(v143 + 16);
            }

            else
            {
              v144 = 0;
            }

            v145 = v120 + v137;
            v146 = v138 + *(a4 + 720);
            v147 = v129 + v139;
            v148 = v140 + *(a4 + 784);
            v149 = v136 + v141;
            v150 = *(a4 + 864);
            if (*(a4 + 872) == 4)
            {
              v151 = *(v150 + 16);
            }

            else
            {
              v151 = 0;
            }

            v111 = v991[0];
            v113 = v145 + v146;
            v114 = v147 + v148;
            v115 = v149 + v142 + *(a4 + 816);
            v116 = v144 + *(v143 + 16 * *(a4 + 844) + 24) + *(v143 + 8 * *(a4 + 844) + 56) + *(a4 + 848);
            v117 = v151 + *(v150 + 16 * *(a4 + 876) + 24) + *(v150 + 8 * *(a4 + 876) + 56) + *(a4 + 880);
            v152 = *(a4 + 736);
            if (*(a4 + 744) == 4)
            {
              v153 = *(v152 + 16);
            }

            else
            {
              v153 = 0;
            }

            v118 = v153 + *(v152 + 16 * *(a4 + 748) + 24) + *(v152 + 8 * *(a4 + 748) + 56) + *(a4 + 752);
          }
        }
      }

      else
      {
        v113 = 0;
        v114 = 0;
        v115 = 0;
        v116 = 0;
        v117 = 0;
        v118 = 0;
        v112 = v977;
      }

      v959 = v117;
      v963 = v116;
      v967 = v115;
      *v970 = v114;
      v1004 = 0uLL;
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupBuildSmallBVH(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,unsigned int,unsigned long long,MTL4BufferRange,unsigned long long)::verify == 1)
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v997, v112, 0x480188uLL, 1);
        v154 = v997[0];
        v155 = v997[1];
        v1004 = v998;
        bzero(v997[1], 0x480188uLL);
        v155[1] = -1;
        v156 = **(v977 + 16);
        v997[0] = MEMORY[0x29EDCA5F8];
        v997[1] = 3221225472;
        *&v998 = ___ZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE18setupBuildSmallBVHEP34MTLAccelerationStructureDescriptorRKNS_13BVHDescriptorEP44AGXG18PFamilyRayTracingAccelerationStructureRKNS6_13BuilderBufferESG_RKNS6_15PLOCScratchInfoESG_jy15MTL4BufferRangey_block_invoke;
        *(&v998 + 1) = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
        v999 = v155;
        [v156 addCompletedHandler:v997];
        v112 = v977;
      }

      else
      {
        v155 = 0;
        v154 = 0;
      }

      v1001 = 0;
      __dst = 0;
      v1002 = 0;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&__dst, v112, 904, 1);
      v157 = __dst;
      v158 = v1001;
      v159 = v1002;
      memcpy(__dst, __src, 0x388uLL);
      v160 = *(a2 + 176);
      *&v983[256] = *(a2 + 160);
      *&v983[272] = v160;
      *&v983[288] = *(a2 + 192);
      v161 = *(a2 + 112);
      *&v983[192] = *(a2 + 96);
      *&v983[208] = v161;
      v162 = *(a2 + 144);
      *&v983[224] = *(a2 + 128);
      *&v983[240] = v162;
      v163 = *(a2 + 48);
      *&v983[128] = *(a2 + 32);
      *&v983[144] = v163;
      v164 = *(a2 + 80);
      *&v983[160] = *(a2 + 64);
      *&v983[176] = v164;
      v165 = *(a2 + 16);
      *&v983[96] = *a2;
      *&v983[112] = v165;
      v985 = v1005[0];
      v986 = v1005[1];
      *v983 = v158;
      *&v983[8] = v157;
      *&v983[16] = 904;
      *&v983[24] = v159;
      *&v983[32] = v111;
      *&v983[40] = v113;
      *&v983[48] = *v970;
      *&v983[56] = v967;
      *&v983[64] = v963;
      *&v983[72] = v959;
      *&v983[80] = v118;
      *&v983[88] = 0;
      v166 = a5;
      v984 = v166;
      *&v987 = v154;
      *(&v987 + 1) = v155;
      v988 = v1004;
      *&v989 = &a9[a7];
      *(&v989 + 1) = a9;
      v990 = a8;
      if (*(v977 + 49) == 1)
      {
        v167 = *&v983[136] >= 0x101u || *&v983[128] >= 0x800001u;
        v168 = 1;
        if (v167)
        {
          v168 = 2;
        }

        if (*&v983[136] >= 0x11u || *&v983[128] >= 0x801u)
        {
          v170 = v168;
        }

        else
        {
          v170 = 0;
        }

        v171 = BatchForCommand + 24 * v170;
        v173 = *(v171 + 56);
        v172 = *(v171 + 64);
        if (v173 < v172)
        {
          memcpy(*(v171 + 56), v983, 0x124uLL);
          v984 = 0;
          *(v173 + 296) = v166;
          v174 = v987;
          v175 = v988;
          v176 = v990;
          *(v173 + 368) = v989;
          *(v173 + 384) = v176;
          *(v173 + 336) = v174;
          *(v173 + 352) = v175;
          v177 = v986;
          *(v173 + 304) = v985;
          *(v173 + 320) = v177;
          v178 = v173 + 400;
LABEL_635:
          *(v171 + 56) = v178;
          v179 = v984;
          goto LABEL_1160;
        }

        v258 = *(v171 + 48);
        v259 = 0x8F5C28F5C28F5C29 * ((v173 - v258) >> 4) + 1;
        if (v259 > 0xA3D70A3D70A3D7)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v260 = 0x8F5C28F5C28F5C29 * ((v172 - v258) >> 4);
        if (2 * v260 > v259)
        {
          v259 = 2 * v260;
        }

        if (v260 >= 0x51EB851EB851EBLL)
        {
          v261 = 0xA3D70A3D70A3D7;
        }

        else
        {
          v261 = v259;
        }

        if (!v261)
        {
          v573 = 16 * ((v173 - v258) >> 4);
          memcpy(v573, v983, 0x124uLL);
          v984 = 0;
          *(v573 + 296) = v166;
          v574 = v988;
          *(v573 + 336) = v987;
          *(v573 + 352) = v574;
          v575 = v990;
          *(v573 + 368) = v989;
          *(v573 + 384) = v575;
          v576 = v986;
          v178 = v573 + 400;
          v577 = v573 - (v173 - v258);
          *(v573 + 304) = v985;
          *(v573 + 320) = v576;
          if (v258 != v173)
          {
            v578 = v258;
            v579 = v577;
            do
            {
              memcpy(v579, v578, 0x124uLL);
              v580 = v578[37];
              v578[37] = 0;
              *(v579 + 296) = v580;
              v581 = *(v578 + 21);
              v582 = *(v578 + 22);
              v583 = *(v578 + 24);
              *(v579 + 368) = *(v578 + 23);
              *(v579 + 384) = v583;
              *(v579 + 336) = v581;
              *(v579 + 352) = v582;
              v584 = *(v578 + 20);
              *(v579 + 304) = *(v578 + 19);
              *(v579 + 320) = v584;
              v578 += 50;
              v579 += 400;
            }

            while (v578 != v173);
            do
            {

              v258 += 50;
            }

            while (v258 != v173);
            v258 = *(v171 + 48);
          }

          *(v171 + 48) = v577;
          *(v171 + 56) = v178;
          *(v171 + 64) = 0;
          if (v258)
          {
            operator delete(v258);
          }

          goto LABEL_635;
        }

        if (v261 <= 0xA3D70A3D70A3D7)
        {
          operator new();
        }

LABEL_1252:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSmallBVHs(v977, v983, 1uLL, 4u);
      v179 = v984;
      goto LABEL_1160;
    }

    v1003 = 0uLL;
    {
      {
      }

      {
      }

      if (shouldDumpOrVerifyBVHs(void)::once != -1)
      {
        dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
      }

      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildAndEncodeRiaBvh(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::ScratchAllocator *,void const*,unsigned long long,unsigned long long,AGXG18PFamilyRayTracingAccelerationStructure *,MTLAccelerationStructureDescriptor *,MTL4BufferRange,unsigned long)::verify = 0;
    }

    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildAndEncodeRiaBvh(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::ScratchAllocator *,void const*,unsigned long long,unsigned long long,AGXG18PFamilyRayTracingAccelerationStructure *,MTLAccelerationStructureDescriptor *,MTL4BufferRange,unsigned long)::verify == 1)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(__src, v977, 0x480188uLL, 1);
      v956 = __src[0];
      v82 = __src[1];
      v1003 = *&__src[2];
      bzero(__src[1], 0x480188uLL);
      v82[1] = -1;
      v83 = [objc_msgSend(a5 "buffer")];
      v84 = [a5 bufferOffset] + v83;
      v85 = *(a2 + 32);
      v86 = **(v977 + 16);
      v981[0] = MEMORY[0x29EDCA5F8];
      v981[1] = 3221225472;
      v981[2] = ___ZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE26encodeBuildAndEncodeRiaBvhERKNS_13BVHDescriptorEPNS6_16ScratchAllocatorEPKvyyP44AGXG18PFamilyRayTracingAccelerationStructureP34MTLAccelerationStructureDescriptor15MTL4BufferRangem_block_invoke;
      v981[3] = &__block_descriptor_52_e28_v16__0___MTLCommandBuffer__8l;
      v982 = v85;
      v981[4] = v84;
      v981[5] = v82;
      v958 = v82;
      [v86 addCompletedHandler:v981];
    }

    else
    {
      v956 = 0;
      v958 = 0;
    }

    v87 = [a5 buffer];
    v88 = [a5 bufferOffset];
    v89 = [v87 gpuAddress];
    *(a3 + 32) = [v87 length];
    *(a3 + 40) = a7;
    *(a3 + 48) = a8;
    *(a3 + 56) = v88;
    *(a3 + 64) = (a9 + 63) & 0xFFFFFFFFFFFFFFC0;
    v90 = *(a3 + 80);
    if (v90 <= *(a3 + 96))
    {
      v90 = *(a3 + 96);
    }

    if (v90 <= *(a3 + 112))
    {
      v90 = *(a3 + 112);
    }

    if (v90 <= *(a3 + 128))
    {
      v90 = *(a3 + 128);
    }

    *(a3 + 16) = (v90 + 63) & 0xFFFFFFFFFFFFFFC0;
    *(a3 + 24) = v89;
    *a3 = 1;
    if (*(a2 + 52))
    {
      v91 = (v31 & 0xFE) != 6;
    }

    else
    {
      v91 = 1;
    }

    if (v91)
    {
      v92 = 0;
      v93 = 0;
      v962 = 0;
      v94 = a5;
    }

    else
    {
      v121 = *(a4 + 1256);
      v122 = *(a4 + 1268);
      v123 = v121 + 16 * v122;
      v124 = *(v123 + 24);
      v92 = *(v123 + 32);
      if (*(a4 + 1264) == 4)
      {
        v125 = *(v121 + 16);
      }

      else
      {
        v125 = 0;
      }

      v94 = a5;
      v93 = (*(v121 + 8 * v122 + 56) + v125 + *(a4 + 1272));
      v962 = &v93[v124];
    }

    [objc_msgSend(v94 "buffer")];
    [a5 bufferOffset];
    [a5 size];
    v262 = *(a4 + 1944);
    v263 = *(a4 + 1956);
    if (*(a4 + 1952) == 4)
    {
      v264 = *(v262 + 16);
    }

    else
    {
      v264 = 0;
    }

    v265 = *(v262 + 16 * v263 + 24);
    v266 = *(v262 + 8 * v263 + 56);
    v267 = *(a4 + 1960);
    v997[1] = 0;
    v997[0] = 0;
    *&v998 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v997, v977, 4, 0);
    *v997[0] = 6;
    v268 = v997[1];
    v269 = v998;
    v270 = *(v977 + 16);
    *(v270 + 26408) = v997[1];
    v271 = *(v270 + 22488);
    *v271 = v268;
    *(v270 + 22504) = v269;
    *(v270 + 27560) |= 1uLL;
    LODWORD(v269) = *(v270 + 27592) | 1;
    v272 = v265 + v266 + v264 + v267;
    *(v270 + 26416) = v272;
    v271[1] = v272;
    *(v270 + 22512) = 0;
    *(v270 + 27560) |= 2uLL;
    *(v270 + 27592) = v269;
    Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v977, 130, 0);
    v274 = *(Pipeline + 456);
    v275 = *(v977 + 16);
    __src[0] = 32;
    *&__src[1] = vdupq_n_s64(1uLL);
    *v983 = v274;
    *&v983[8] = *&__src[1];
    *(v275 + 2060) |= 4u;
    v276 = *(v275 + 2336);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v275, Pipeline);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v275, 0x16u, __src, v983);
    if (*(v275 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v275, 22, 0, 0);
    }

    if (v276)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v275, v276);
    }

    __src[0] = v962;
    __src[1] = v93;
    *&__src[2] = v92;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::newResourceBuffer(v980, v977, a2, a6, __src);
    v277 = v991;
    if (*(a2 + 18) == 7)
    {
      v277 = (a2 + 64);
    }

    v278 = *v277;
    memset(__src, 0, 24);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(__src, v977, 504, 1);
    v279 = __src[0];
    v952 = __src[1];
    v954 = __src[2];
    *(__src[0] + 62) = 0;
    v279[29] = 0u;
    v279[30] = 0u;
    v279[27] = 0u;
    v279[28] = 0u;
    v279[25] = 0u;
    v279[26] = 0u;
    v279[23] = 0u;
    v279[24] = 0u;
    v279[21] = 0u;
    v279[22] = 0u;
    v279[19] = 0u;
    v279[20] = 0u;
    v279[17] = 0u;
    v279[18] = 0u;
    v279[15] = 0u;
    v279[16] = 0u;
    v279[13] = 0u;
    v279[14] = 0u;
    v279[11] = 0u;
    v279[12] = 0u;
    v279[9] = 0u;
    v279[10] = 0u;
    v279[7] = 0u;
    v279[8] = 0u;
    v279[5] = 0u;
    v279[6] = 0u;
    v279[3] = 0u;
    v279[4] = 0u;
    v279[1] = 0u;
    v279[2] = 0u;
    *v279 = 0u;
    if (*(a2 + 4) | *(a2 + 18))
    {
      v280 = 0;
    }

    else
    {
      v280 = *(a2 + 12) == 3;
    }

    v281 = *(a2 + 40);
    v282 = !v280 || v281 == 0;
    v283 = !v282;
    v284 = *(a2 + 32);
    LODWORD(v285) = *(a2 + 32);
    if (!v282)
    {
      v285 = 0x3FFFFFFFLL;
      if ((*(a2 + 28) & 4) == 0)
      {
        v285 = 0xFFFFFFFLL;
      }

      v286 = *(a2 + 192) + -1.0;
      if (v286 < 0.0)
      {
        v286 = 0.0;
      }

      v287 = vcvtpd_u64_f64(v286 * v284) + v284;
      if (v285 >= v287)
      {
        LODWORD(v285) = v287;
      }
    }

    v288 = *(a2 + 15);
    if ((v288 & 2) != 0)
    {
      v289 = *(a2 + 160);
      if (v289 >= 2)
      {
        LODWORD(v285) = v285 * (v289 - 1);
      }
    }

    if (v285 <= 1)
    {
      v290 = 1;
    }

    else
    {
      v290 = v285;
    }

    LODWORD(v291) = *(a2 + 32);
    if (v283)
    {
      v291 = 0x3FFFFFFFLL;
      if ((*(a2 + 28) & 4) == 0)
      {
        v291 = 0xFFFFFFFLL;
      }

      v292 = *(a2 + 192) + -1.0;
      if (v292 < 0.0)
      {
        v292 = 0.0;
      }

      v293 = vcvtpd_u64_f64(v292 * v284) + v284;
      if (v291 >= v293)
      {
        LODWORD(v291) = v293;
      }
    }

    if ((v288 & 2) != 0)
    {
      v295 = *(a2 + 160);
      v296 = v295 - 1;
      if (v295 <= 1)
      {
        v296 = 1;
      }

      v297 = v296 * v291;
      if (v297 <= 1)
      {
        v294 = 1;
      }

      else
      {
        v294 = v297;
      }

      if (v295 > 1)
      {
        v294 <<= *(a2 + 13);
      }
    }

    else if (v291 <= 1)
    {
      v294 = 1;
    }

    else
    {
      v294 = v291;
    }

    v972 = AGX::BVHDescriptor::topDownLeafNodeCapacity(a2);
    if ((v288 & 0x400) != 0)
    {
      if (v283)
      {
        v299 = 0x3FFFFFFFLL;
        if ((*(a2 + 28) & 4) == 0)
        {
          v299 = 0xFFFFFFFLL;
        }

        v300 = *(a2 + 192) + -1.0;
        if (v300 < 0.0)
        {
          v300 = 0.0;
        }

        v301 = vcvtpd_u64_f64(v300 * v284) + v284;
        if (v299 >= v301)
        {
          LODWORD(v284) = v301;
        }

        else
        {
          LODWORD(v284) = v299;
        }
      }

      if ((v288 & 2) != 0)
      {
        v302 = *(a2 + 160);
        if (v302 >= 2)
        {
          LODWORD(v284) = v284 * (v302 - 1);
        }
      }

      if (v284 <= 1)
      {
        v303 = 1;
      }

      else
      {
        v303 = v284;
      }

      v298 = (*(a2 + 20) + v303 - 1) / *(a2 + 20) - 1;
    }

    else
    {
      v298 = AGX::BVHDescriptor::maxInnerNodeCount(a2);
    }

    v304 = AGX::BVHDescriptor::topDownLeafNodeCapacity(a2);
    if (v278)
    {
      *(v279 + 3) = v278;
      *(v279 + 8) = v281;
    }

    *(v279 + 5) = *&v980[0];
    *(v279 + 12) = v281;
    v305 = *(a4 + 960);
    if (*(a4 + 968) == 4)
    {
      v306 = *(v305 + 16);
    }

    else
    {
      v306 = 0;
    }

    v307 = *(a4 + 984) >> 2;
    *(v279 + 9) = v306 + *(v305 + 16 * *(a4 + 972) + 24) + *(v305 + 8 * *(a4 + 972) + 56) + *(a4 + 976);
    *(v279 + 20) = v307;
    v308 = *(a4 + 864);
    if (*(a4 + 872) == 4)
    {
      v309 = *(v308 + 16);
    }

    else
    {
      v309 = 0;
    }

    v310 = *(a4 + 888);
    *(v279 + 33) = v309 + *(v308 + 16 * *(a4 + 876) + 24) + *(v308 + 8 * *(a4 + 876) + 56) + *(a4 + 880);
    *(v279 + 34) = v310;
    if (*(a2 + 15))
    {
      v311 = *(a4 + 928);
      if (*(a4 + 936) == 4)
      {
        v312 = *(v311 + 16);
      }

      else
      {
        v312 = 0;
      }

      v313 = *(a4 + 952) / 0x3Cu;
      *(v279 + 43) = v312 + *(v311 + 16 * *(a4 + 940) + 24) + *(v311 + 8 * *(a4 + 940) + 56) + *(a4 + 944);
      *(v279 + 88) = v313;
    }

    v314 = *(a4 + 832);
    if (*(a4 + 840) == 4)
    {
      v315 = *(v314 + 16);
    }

    else
    {
      v315 = 0;
    }

    v316 = *(a4 + 856) >> 4;
    *(v279 + 57) = v315 + *(v314 + 16 * *(a4 + 844) + 24) + *(v314 + 8 * *(a4 + 844) + 56) + *(a4 + 848);
    *(v279 + 232) = v316;
    v317 = *(a4 + 896);
    if (*(a4 + 904) == 4)
    {
      v318 = *(v317 + 16);
    }

    else
    {
      v318 = 0;
    }

    v319 = *(a4 + 920);
    *(v279 + 59) = v318 + *(v317 + 16 * *(a4 + 908) + 24) + *(v317 + 8 * *(a4 + 908) + 56) + *(a4 + 912);
    *(v279 + 60) = v319;
    if (*(a2 + 14) >= 3u && (*(a2 + 15) & 0x400) == 0)
    {
      v320 = *(a4 + 992);
      if (*(a4 + 1000) == 4)
      {
        v321 = *(v320 + 16);
      }

      else
      {
        v321 = 0;
      }

      v363 = *(a4 + 1016);
      *(v279 + 61) = v321 + *(v320 + 16 * *(a4 + 1004) + 24) + *(v320 + 8 * *(a4 + 1004) + 56) + *(a4 + 1008);
      *(v279 + 62) = v363;
    }

    v364 = *(a4 + 96);
    if (*(a4 + 104) == 4)
    {
      v365 = *(v364 + 16);
    }

    else
    {
      v365 = 0;
    }

    *(v279 + 7) = v365 + *(v364 + 16 * *(a4 + 108) + 24) + *(v364 + 8 * *(a4 + 108) + 56) + *(a4 + 112);
    *(v279 + 16) = v290;
    v366 = *(a4 + 128);
    if (*(a4 + 136) == 4)
    {
      v367 = *(v366 + 16);
    }

    else
    {
      v367 = 0;
    }

    *(v279 + 35) = v367 + *(v366 + 16 * *(a4 + 140) + 24) + *(v366 + 8 * *(a4 + 140) + 56) + *(a4 + 144);
    *(v279 + 72) = v304 + v298;
    v368 = *(a4 + 160);
    if (*(a4 + 168) == 4)
    {
      v369 = *(v368 + 16);
    }

    else
    {
      v369 = 0;
    }

    v370 = *(a4 + 184) >> 2;
    *(v279 + 11) = v369 + *(v368 + 16 * *(a4 + 172) + 24) + *(v368 + 8 * *(a4 + 172) + 56) + *(a4 + 176);
    *(v279 + 24) = v370;
    v371 = *(a4 + 192);
    if (*(a4 + 200) == 4)
    {
      v372 = *(v371 + 16);
    }

    else
    {
      v372 = 0;
    }

    *(v279 + 41) = v372 + *(v371 + 16 * *(a4 + 204) + 24) + *(v371 + 8 * *(a4 + 204) + 56) + *(a4 + 208);
    *(v279 + 84) = v294;
    v373 = *(a4 + 224);
    if (*(a4 + 232) == 4)
    {
      v374 = *(v373 + 16);
    }

    else
    {
      v374 = 0;
    }

    *(v279 + 51) = v374 + *(v373 + 16 * *(a4 + 236) + 24) + *(v373 + 8 * *(a4 + 236) + 56) + *(a4 + 240);
    v375 = *(a4 + 256);
    if (*(a4 + 264) == 4)
    {
      v376 = *(v375 + 16);
    }

    else
    {
      v376 = 0;
    }

    *(v279 + 52) = v376 + *(v375 + 16 * *(a4 + 268) + 24) + *(v375 + 8 * *(a4 + 268) + 56) + *(a4 + 272);
    v377 = *(a4 + 288);
    if (*(a4 + 296) == 4)
    {
      v378 = *(v377 + 16);
    }

    else
    {
      v378 = 0;
    }

    *(v279 + 37) = v378 + *(v377 + 16 * *(a4 + 300) + 24) + *(v377 + 8 * *(a4 + 300) + 56) + *(a4 + 304);
    *(v279 + 76) = 4;
    if (*(a2 + 15))
    {
      v379 = *(a4 + 320);
      if (*(a4 + 328) == 4)
      {
        v380 = *(v379 + 16);
      }

      else
      {
        v380 = 0;
      }

      *(v279 + 53) = v380 + *(v379 + 16 * *(a4 + 332) + 24) + *(v379 + 8 * *(a4 + 332) + 56) + *(a4 + 336);
      v381 = *(a4 + 352);
      if (*(a4 + 360) == 4)
      {
        v382 = *(v381 + 16);
      }

      else
      {
        v382 = 0;
      }

      *(v279 + 54) = v382 + *(v381 + 16 * *(a4 + 364) + 24) + *(v381 + 8 * *(a4 + 364) + 56) + *(a4 + 368);
      v383 = *(a4 + 384);
      if (*(a4 + 392) == 4)
      {
        v384 = *(v383 + 16);
      }

      else
      {
        v384 = 0;
      }

      *(v279 + 55) = v384 + *(v383 + 16 * *(a4 + 396) + 24) + *(v383 + 8 * *(a4 + 396) + 56) + *(a4 + 400);
      v385 = *(a4 + 416);
      if (*(a4 + 424) == 4)
      {
        v386 = *(v385 + 16);
      }

      else
      {
        v386 = 0;
      }

      *(v279 + 56) = v386 + *(v385 + 16 * *(a4 + 428) + 24) + *(v385 + 8 * *(a4 + 428) + 56) + *(a4 + 432);
    }

    v387 = *(a4 + 448);
    if (*(a4 + 456) == 4)
    {
      v388 = *(v387 + 16);
    }

    else
    {
      v388 = 0;
    }

    *(v279 + 39) = v388 + *(v387 + 16 * *(a4 + 460) + 24) + *(v387 + 8 * *(a4 + 460) + 56) + *(a4 + 464);
    *(v279 + 80) = (v290 + 1023) >> 10;
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupTopDownBindings(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,unsigned long long,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::instanceBatchSize = 256;
    }

    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupTopDownBindings(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,unsigned long long,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::primitiveBatchSize = 512;
    }

    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupTopDownBindings(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,unsigned long long,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::batchingThreshold = 2048;
    }

    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupTopDownBindings(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,unsigned long long,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::allowBatchingEV = 1;
    }

    v389 = 0;
    if (*(a2 + 32) < AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupTopDownBindings(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,unsigned long long,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::batchingThreshold)
    {
      v390 = 0;
    }

    else
    {
      v390 = 0;
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupTopDownBindings(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,unsigned long long,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::allowBatchingEV)
      {
        if ((*(a2 + 18) & 0xFE) == 6)
        {
          v391 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupTopDownBindings(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,unsigned long long,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::instanceBatchSize;
        }

        else
        {
          v391 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupTopDownBindings(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,unsigned long long,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::primitiveBatchSize;
        }

        v392 = *v391;
        v393 = v294 - 1;
        v28 = __CFADD__(v393, v392);
        v394 = 2 * ((v393 + v392) / v392);
        if (v28)
        {
          v389 = 2;
        }

        else
        {
          v389 = v394;
        }

        v390 = (v294 + v392 - 1) / v392;
      }
    }

    v395 = *(a4 + 480);
    if (*(a4 + 488) == 4)
    {
      v396 = *(v395 + 16);
    }

    else
    {
      v396 = 0;
    }

    *(v279 + 13) = v396 + *(v395 + 16 * *(a4 + 492) + 24) + *(v395 + 8 * *(a4 + 492) + 56) + *(a4 + 496);
    *(v279 + 28) = v972;
    v397 = *(a4 + 512);
    if (*(a4 + 520) == 4)
    {
      v398 = *(v397 + 16);
    }

    else
    {
      v398 = 0;
    }

    *(v279 + 15) = v398 + *(v397 + 16 * *(a4 + 524) + 24) + *(v397 + 8 * *(a4 + 524) + 56) + *(a4 + 528);
    *(v279 + 32) = v390;
    v399 = *(a4 + 544);
    if (*(a4 + 552) == 4)
    {
      v400 = *(v399 + 16);
    }

    else
    {
      v400 = 0;
    }

    *(v279 + 17) = v400 + *(v399 + 16 * *(a4 + 556) + 24) + *(v399 + 8 * *(a4 + 556) + 56) + *(a4 + 560);
    *(v279 + 36) = v972;
    v401 = *(a4 + 576);
    if (*(a4 + 584) == 4)
    {
      v402 = *(v401 + 16);
    }

    else
    {
      v402 = 0;
    }

    *(v279 + 19) = v402 + *(v401 + 16 * *(a4 + 588) + 24) + *(v401 + 8 * *(a4 + 588) + 56) + *(a4 + 592);
    *(v279 + 40) = v390;
    if (AGX::BVHDescriptor::useSpatialSplits(a2) || (~*(a2 + 15) & 3) == 0 && *(a2 + 160) >= 2u)
    {
      v403 = *(a4 + 608);
      if (*(a4 + 616) == 4)
      {
        v404 = *(v403 + 16);
      }

      else
      {
        v404 = 0;
      }

      *(v279 + 29) = v404 + *(v403 + 16 * *(a4 + 620) + 24) + *(v403 + 8 * *(a4 + 620) + 56) + *(a4 + 624);
      *(v279 + 60) = v389;
    }

    v405 = *(a4 + 640);
    if (*(a4 + 648) == 4)
    {
      v406 = *(v405 + 16);
    }

    else
    {
      v406 = 0;
    }

    *(v279 + 21) = v406 + *(v405 + 16 * *(a4 + 652) + 24) + *(v405 + 8 * *(a4 + 652) + 56) + *(a4 + 656);
    *(v279 + 44) = v390;
    v407 = *(a4 + 672);
    if (*(a4 + 680) == 4)
    {
      v408 = *(v407 + 16);
    }

    else
    {
      v408 = 0;
    }

    *(v279 + 25) = v408 + *(v407 + 16 * *(a4 + 684) + 24) + *(v407 + 8 * *(a4 + 684) + 56) + *(a4 + 688);
    *(v279 + 52) = v389;
    if (*(a2 + 15))
    {
      v410 = *(a4 + 704);
      if (*(a4 + 712) == 4)
      {
        v411 = *(v410 + 16);
      }

      else
      {
        v411 = 0;
      }

      *(v279 + 23) = v411 + *(v410 + 16 * *(a4 + 716) + 24) + *(v410 + 8 * *(a4 + 716) + 56) + *(a4 + 720);
      *(v279 + 48) = v390;
      v409 = 136;
      if ((*(a2 + 15) & 1) == 0)
      {
        v409 = 72;
      }
    }

    else
    {
      v409 = 72;
    }

    v412 = v409 * v972;
    v413 = *(a4 + 736);
    if (*(a4 + 744) == 4)
    {
      v414 = *(v413 + 16);
    }

    else
    {
      v414 = 0;
    }

    *(v279 + 31) = v414 + *(v413 + 16 * *(a4 + 748) + 24) + *(v413 + 8 * *(a4 + 748) + 56) + *(a4 + 752);
    *(v279 + 32) = v412;
    v415 = *(a4 + 768);
    if (*(a4 + 776) == 4)
    {
      v416 = *(v415 + 16);
    }

    else
    {
      v416 = 0;
    }

    *(v279 + 2) = v416 + *(v415 + 16 * *(a4 + 780) + 24) + *(v415 + 8 * *(a4 + 780) + 56) + *(a4 + 784);
    v417 = *(a4 + 800);
    if (*(a4 + 808) == 4)
    {
      v418 = *(v417 + 16);
    }

    else
    {
      v418 = 0;
    }

    *(v279 + 45) = v418 + *(v417 + 16 * *(a4 + 812) + 24) + *(v417 + 8 * *(a4 + 812) + 56) + *(a4 + 816);
    *(v279 + 184) = 6;
    v419 = *(a4 + 1024);
    if (*(a4 + 1032) == 4)
    {
      v420 = *(v419 + 16);
    }

    else
    {
      v420 = 0;
    }

    v421 = *(a4 + 1048) >> 2;
    *(v279 + 47) = v420 + *(v419 + 16 * *(a4 + 1036) + 24) + *(v419 + 8 * *(a4 + 1036) + 56) + *(a4 + 1040);
    *(v279 + 96) = v421;
    v422 = *(a4 + 1056);
    if (*(a4 + 1064) == 4)
    {
      v423 = *(v422 + 16);
    }

    else
    {
      v423 = 0;
    }

    v424 = *(a4 + 1080) >> 2;
    *(v279 + 49) = v423 + *(v422 + 16 * *(a4 + 1068) + 24) + *(v422 + 8 * *(a4 + 1068) + 56) + *(a4 + 1072);
    *(v279 + 100) = v424;
    {
      {
      }

      {
      }

      if (shouldDumpOrVerifyBVHs(void)::once != -1)
      {
        dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
      }

      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupTopDownBindings(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,unsigned long long,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::verify = 0;
    }

    if ((*(a2 + 18) & 0xFE) == 6)
    {
      memset(__src, 0, 24);
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(__src, v977, 64, 0);
      v425 = __src[0];
      *&v950 = __src[1];
      v973 = __src[2];
      v426 = v995;
      *__src[0] = *(a2 + 72);
      v425[1] = v426;
      v425[2] = v993;
      v425[3] = *(a2 + 88);
      v425[4] = v962;
      v427 = *(a2 + 64);
      if (!v427)
      {
        v428 = v425;
        v429 = *(a2 + 52);
        memset(__src, 0, 24);
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(__src, v977, 4, 0);
        v427 = __src[1];
        *__src[0] = v429;
        v425 = v428;
      }

      v425[5] = v427;
      *(v425 + 12) = *(a2 + 52);
      *(v425 + 13) = *(a2 + 80);
      *(v425 + 14) = *(a2 + 104);
      *(v425 + 60) = *(a2 + 120) == 1;
      v949 = 64;
    }

    else
    {
      v973 = 0;
      v949 = 0;
      *&v950 = 0;
      v425 = 0;
    }

    *(&v950 + 1) = v425;
    v978 = 0u;
    v979 = 0u;
    if ((*(a2 + 16) & 4) == 0)
    {
      v430 = [a5 accelerationStructureUniqueIdentifier];
      v431 = *(a2 + 18) == 7;
      if (*(a2 + 18) == 7)
      {
        v432 = 376;
      }

      else
      {
        v432 = 392;
      }

      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v978, v977, v432, 0);
      v433 = 0;
      v434 = 0;
      v435 = *(&v978 + 1);
      **(&v978 + 1) = 0u;
      *(v435 + 16) = 0u;
      *(v435 + 32) = 0u;
      *(v435 + 48) = 0u;
      *(v435 + 64) = 0u;
      *(v435 + 80) = 0u;
      *(v435 + 96) = 0u;
      *(v435 + 112) = 0u;
      *(v435 + 128) = 0u;
      *(v435 + 144) = 0u;
      *(v435 + 160) = 0u;
      *(v435 + 176) = 0u;
      *(v435 + 192) = 0u;
      *(v435 + 208) = 0;
      *(v435 + 216) = xmmword_29D2F2470;
      *(v435 + 232) = -1;
      *(v435 + 252) = 0u;
      *(v435 + 236) = 0u;
      *(v435 + 264) = 0u;
      *(v435 + 280) = -1;
      v436 = (v435 + 281);
      *(v435 + 281) = 0u;
      *(v435 + 297) = 0u;
      *(v435 + 313) = 0u;
      *(v435 + 329) = 0u;
      *(v435 + 345) = 0u;
      *(v435 + 354) = 0u;
      if (!v431)
      {
        v434 = (v435 + 376);
        *(v435 + 376) = 0;
        v437 = &v978;
        v438 = vld1q_dup_f64(v437);
        *(v435 + 256) = vaddq_s64(v438, xmmword_29D2F2480);
        v433 = (v435 + 384);
        *(v435 + 384) = 0;
      }

      {
        AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
      }

      {
        AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
      }

      if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit)
      {
        v439 = 0;
      }

      else if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable)
      {
        v439 = 1;
      }

      else
      {
        v439 = *(a2 + 28) & 1;
      }

      v948 = v430;
      *(v435 + 284) = v439;
      {
        AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
      }

      *(v435 + 293) = AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild | ((*(a2 + 28) & 2u) >> 1);
      *(v435 + 287) = 0;
      *(v435 + 240) = 0;
      *(v435 + 236) = 1;
      v464 = *(a2 + 18);
      v465 = v464 - 8;
      if (v464 - 8 <= 0xFFFFFFFD)
      {
        v466 = *(a2 + 40);
        if (!v466)
        {
          v470 = 0;
          goto LABEL_934;
        }

        *(v435 + 272) = v466;
        if (*(a2 + 136))
        {
          v467 = *(a2 + 144) == 0;
        }

        else
        {
          v467 = 1;
        }

        v468 = !v467;
        *(v435 + 232) = 1;
        v469 = *(a2 + 160);
        *(v435 + 192) = v469;
        v470 = v469 > 1;
        if (v469 >= 2)
        {
          *(v435 + 200) = *(a2 + 180);
          *(v435 + 208) = *(a2 + 172);
          *(v435 + 196) = 64;
        }

        *(v435 + 216) = 1;
        if (v464 <= 5)
        {
          if (((1 << v464) & 9) == 0)
          {
            if (((1 << v464) & 0x12) != 0)
            {
              if (v469 < 2)
              {
                *(v435 + 228) = 4;
                v471 = 32;
                v472 = 1;
                if (v468)
                {
                  goto LABEL_791;
                }
              }

              else
              {
                *(v435 + 228) = 5;
                v471 = 60;
                v472 = 1;
                if (v468)
                {
                  goto LABEL_791;
                }
              }

LABEL_816:
              v620 = *(v977 + 44);
              if (v620 > 4)
              {
                *(v435 + 224) = v471;
              }

              else if (v471)
              {
                if (v471 >= 0x1D)
                {
                  if (v471 >= 0x2D)
                  {
                    if (v471 >= 0x3D)
                    {
                      if (v471 <= 0x5C)
                      {
                        v662 = 96;
                      }

                      else
                      {
                        v662 = 128;
                      }

                      *(v435 + 224) = v662;
                    }

                    else
                    {
                      *(v435 + 224) = 64;
                    }
                  }

                  else
                  {
                    *(v435 + 224) = 48;
                  }
                }

                else
                {
                  *(v435 + 224) = 32;
                }
              }

              else
              {
                *(v435 + 224) = 4;
              }

              goto LABEL_933;
            }

            if (v469 < 2)
            {
              *(v435 + 228) = 6;
              *(v435 + 287) = 1;
              {
                getCoarseCurveTestMode(AGX::BVHDescriptor const&)::evCoarseCurveTestMode = 1;
              }

              if (getCoarseCurveTestMode(AGX::BVHDescriptor const&)::evCoarseCurveTestMode != 1)
              {
                goto LABEL_786;
              }

              {
                AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
              }

              {
                AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
              }

              if ((AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) != 0 || (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) == 0 && (*(a2 + 28) & 1) == 0)
              {
                if (getCoarseCurveTestMode(AGX::BVHDescriptor const&)::evCoarseCurveTestMode)
                {
                  v598 = 2;
                }

                else
                {
                  v598 = 0;
                }
              }

              else
              {
LABEL_786:
                v598 = 0;
              }

              *(v435 + 290) = v598;
              v469 = *(a2 + 160);
              v471 = 16;
            }

            else
            {
              *(v435 + 228) = 7;
              v471 = 28;
            }

            v472 = 0;
            if (v469 <= 1)
            {
              v469 = 1;
            }

            *(v435 + 248) = 16 * *(a2 + 36) * v469;
            if (!v468)
            {
              goto LABEL_816;
            }

LABEL_791:
            if (v464 != 3 && v464)
            {
              v620 = *(v977 + 44);
              v624 = *(a2 + 160);
              if (v472)
              {
                v621 = v624 > 1;
                if (v620 > 4)
                {
                  v622 = 40;
                  v623 = 68;
                }

                else
                {
                  v622 = 48;
                  v623 = 96;
                }
              }

              else
              {
                v621 = v624 > 1;
                if (v620 > 4)
                {
                  v622 = 24;
                  v623 = 36;
                }

                else
                {
                  v622 = 32;
                  v623 = 48;
                }
              }
            }

            else
            {
              v620 = *(v977 + 44);
              if (*(a2 + 17) == 2)
              {
                v621 = *(a2 + 160) > 1u;
                if (v620 > 4)
                {
                  v622 = 76;
                  v623 = 124;
                }

                else
                {
                  v622 = 96;
                  v623 = 128;
                }
              }

              else
              {
                if (*(a2 + 17))
                {
LABEL_811:
                  *(v435 + 240) = *(a2 + 136);
LABEL_933:
                  *(v435 + 291) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(*(v435 + 228), a2, v620);
LABEL_934:
                  v663 = *(v977 + 44);
                  {
                    v877 = v663;
                    v663 = v877;
                    if (v878)
                    {
                      AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
                      v663 = v877;
                    }
                  }

                  v664 = AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild;
                  v665 = *(a2 + 28);
                  {
                    v879 = v663;
                    v663 = v879;
                    if (v880)
                    {
                      AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
                      v663 = v879;
                    }
                  }

                  v666 = v665 & 2;
                  {
                    v881 = v663;
                    v663 = v881;
                    if (v882)
                    {
                      AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
                      v663 = v881;
                    }
                  }

                  if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit)
                  {
                    v667 = 0;
                  }

                  else if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable)
                  {
                    v667 = 1;
                  }

                  else
                  {
                    v667 = *(a2 + 28) & 1;
                  }

                  *v436 = isQTBEnabled(v663, a2, (v664 | (v666 >> 1)) & 1, v667);
                  {
                    LOBYTE(__src[0]) = 0;
                    findEnvVarNum<BOOL>("AGX_ALWAYS_ALLOW_PAIR_FALLBACK", __src);
                    if (__src[0])
                    {
                      v883 = 1;
                    }

                    else
                    {
                      LOBYTE(__src[0]) = 0;
                      findEnvVarNum<BOOL>("AGX_ALWAYS_ALLOW_VERT_MATCHING_ON_POS", __src);
                      v883 = __src[0];
                    }

                    isVertMatchingOnPositionRequestedAlwaysAllowed(void)::allow = v883 & 1;
                  }

                  if (isVertMatchingOnPositionRequestedAlwaysAllowed(void)::allow == 1)
                  {
                    {
                      AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
                    }

                    {
                      AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
                    }

                    if (((AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) != 0 || (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) == 0 && (*(a2 + 28) & 1) == 0) && *(a2 + 18) - 6 <= 0xFFFFFFFC && ((*v436 & 1) != 0 || *(v435 + 291)))
                    {
                      *(v435 + 282) = 1;
                    }
                  }

                  *(v435 + 295) = (*(v435 + 192) < 3u) & *(v435 + 281);
                  if (*(v435 + 284) == 1)
                  {
                    *(v435 + 287) = 0;
                  }

                  v668 = *(v977 + 44);
                  {
                  }

                  if (v668 <= 4)
                  {
                    {
                      AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
                    }

                    {
                      AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
                    }

                    if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) == 0 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || (*(a2 + 28)))
                    {
                      goto LABEL_966;
                    }

                    {
                      AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
                    }

                    if (AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild)
                    {
LABEL_966:
                      LOBYTE(v669) = 1;
                    }

                    else
                    {
                      v669 = (*(a2 + 28) >> 1) & 1;
                    }
                  }

                  else
                  {
                    LOBYTE(v669) = 0;
                  }

                  *(v435 + 283) = v669;
                  *(v435 + 296) = 0;
                  v670 = *(v435 + 284);
                  v671 = v670 ^ 1;
                  if (v465 >= 0xFFFFFFFE)
                  {
                    v671 = 0;
                  }

                  *(v435 + 288) = v470 & v671;
                  v672 = *(a4 + 1384);
                  if (*(a4 + 1392) == 4)
                  {
                    v673 = *(v672 + 16);
                  }

                  else
                  {
                    v673 = 0;
                  }

                  *v435 = v673 + *(v672 + 16 * *(a4 + 1396) + 24) + *(v672 + 8 * *(a4 + 1396) + 56) + *(a4 + 1400);
                  *(v435 + 324) = *(a4 + 1416);
                  v674 = *(a4 + 1560);
                  if (*(a4 + 1568) == 4)
                  {
                    v675 = *(v674 + 16);
                  }

                  else
                  {
                    v675 = 0;
                  }

                  *(v435 + 8) = v675 + *(v674 + 16 * *(a4 + 1572) + 24) + *(v674 + 8 * *(a4 + 1572) + 56) + *(a4 + 1576);
                  v676 = *(a4 + 1424);
                  if (*(a4 + 1432) == 4)
                  {
                    v677 = *(v676 + 16);
                  }

                  else
                  {
                    v677 = 0;
                  }

                  *(v435 + 80) = v677 + *(v676 + 16 * *(a4 + 1436) + 24) + *(v676 + 8 * *(a4 + 1436) + 56) + *(a4 + 1440);
                  v678 = *(a4 + 1456);
                  if (*(a4 + 1464) == 4)
                  {
                    v679 = *(v678 + 16);
                  }

                  else
                  {
                    v679 = 0;
                  }

                  *(v435 + 88) = v679 + *(v678 + 16 * *(a4 + 1468) + 24) + *(v678 + 8 * *(a4 + 1468) + 56) + *(a4 + 1472);
                  if (v670)
                  {
                    v680 = *(a4 + 1488);
                    if (*(a4 + 1496) == 4)
                    {
                      v681 = *(v680 + 16);
                    }

                    else
                    {
                      v681 = 0;
                    }

                    *(v435 + 16) = v681 + *(v680 + 16 * *(a4 + 1500) + 24) + *(v680 + 8 * *(a4 + 1500) + 56) + *(a4 + 1504);
                  }

                  v682 = *(a4 + 1944);
                  if (*(a4 + 1952) == 4)
                  {
                    v683 = *(v682 + 16);
                  }

                  else
                  {
                    v683 = 0;
                  }

                  *(v435 + 96) = v683 + *(v682 + 16 * *(a4 + 1956) + 24) + *(v682 + 8 * *(a4 + 1956) + 56) + *(a4 + 1960);
                  v684 = *(a2 + 15);
                  if ((v684 & 0x400) != 0)
                  {
                    v686 = *(a2 + 32);
                    if (!*(a2 + 4) && *(a2 + 40) && !*(a2 + 18) && *(a2 + 12) == 3)
                    {
                      v687 = 0x3FFFFFFFLL;
                      if ((*(a2 + 28) & 4) == 0)
                      {
                        v687 = 0xFFFFFFFLL;
                      }

                      v688 = *(a2 + 192) + -1.0;
                      if (v688 < 0.0)
                      {
                        v688 = 0.0;
                      }

                      v686 += vcvtpd_u64_f64(v688 * v686);
                      if (v687 < v686)
                      {
                        LODWORD(v686) = v687;
                      }
                    }

                    if ((v684 & 2) != 0)
                    {
                      v689 = *(a2 + 160);
                      if (v689 >= 2)
                      {
                        LODWORD(v686) = v686 * (v689 - 1);
                      }
                    }

                    if (v686 <= 1)
                    {
                      LODWORD(v686) = 1;
                    }

                    v685 = (*(a2 + 20) + v686 - 1) / *(a2 + 20) - 1;
                  }

                  else
                  {
                    v685 = AGX::BVHDescriptor::maxInnerNodeCount(a2);
                  }

                  v690 = AGX::BVHDescriptor::topDownLeafNodeCapacity(a2) + v685;
                  if (HIBYTE(v690))
                  {
                    v691 = 4;
                  }

                  else
                  {
                    v691 = 3;
                  }

                  if (v690 >= 0x10000)
                  {
                    v692 = v691;
                  }

                  else
                  {
                    v692 = 2;
                  }

                  *(v435 + 336) = v692;
                  v693 = *(a4 + 864);
                  if (*(a4 + 872) == 4)
                  {
                    v694 = *(v693 + 16);
                  }

                  else
                  {
                    v694 = 0;
                  }

                  *(v435 + 56) = v694 + *(v693 + 16 * *(a4 + 876) + 24) + *(v693 + 8 * *(a4 + 876) + 56) + *(a4 + 880);
                  if (*(a2 + 14) >= 3u)
                  {
                    v695 = *(a4 + 992);
                    if (*(a4 + 1000) == 4)
                    {
                      v696 = *(v695 + 16);
                    }

                    else
                    {
                      v696 = 0;
                    }

                    *(v435 + 64) = v696 + *(v695 + 16 * *(a4 + 1004) + 24) + *(v695 + 8 * *(a4 + 1004) + 56) + *(a4 + 1008);
                  }

                  v697 = *(a4 + 832);
                  if (*(a4 + 840) == 4)
                  {
                    v698 = *(v697 + 16);
                  }

                  else
                  {
                    v698 = 0;
                  }

                  *(v435 + 72) = v698 + *(v697 + 16 * *(a4 + 844) + 24) + *(v697 + 8 * *(a4 + 844) + 56) + *(a4 + 848);
                  v699 = *(a4 + 1088);
                  if (*(a4 + 1096) == 4)
                  {
                    v700 = *(v699 + 16);
                  }

                  else
                  {
                    v700 = 0;
                  }

                  *(v435 + 24) = v700 + *(v699 + 16 * *(a4 + 1100) + 24) + *(v699 + 8 * *(a4 + 1100) + 56) + *(a4 + 1104);
                  *(v435 + 328) = *(a4 + 1120);
                  *(v435 + 332) = *(a4 + 1552);
                  v701 = *(a4 + 1128);
                  if (*(a4 + 1136) == 4)
                  {
                    v702 = *(v701 + 16);
                  }

                  else
                  {
                    v702 = 0;
                  }

                  *(v435 + 32) = v702 + *(v701 + 16 * *(a4 + 1140) + 24) + *(v701 + 8 * *(a4 + 1140) + 56) + *(a4 + 1144);
                  v703 = *(a4 + 1160);
                  if (*(a4 + 1168) == 4)
                  {
                    v704 = *(v703 + 16);
                  }

                  else
                  {
                    v704 = 0;
                  }

                  *(v435 + 40) = v704 + *(v703 + 16 * *(a4 + 1172) + 24) + *(v703 + 8 * *(a4 + 1172) + 56) + *(a4 + 1176);
                  if (v670)
                  {
                    v705 = *(a4 + 1520);
                    if (*(a4 + 1528) == 4)
                    {
                      v706 = *(v705 + 16);
                    }

                    else
                    {
                      v706 = 0;
                    }

                    *(v435 + 48) = v706 + *(v705 + 16 * *(a4 + 1532) + 24) + *(v705 + 8 * *(a4 + 1532) + 56) + *(a4 + 1536);
                  }

                  v707 = *(v435 + 228) & 0xFFFFFFFE;
                  if (v707 == 2)
                  {
                    v708 = *(a4 + 1288);
                    if (*(a4 + 1296) == 4)
                    {
                      v709 = *(v708 + 16);
                    }

                    else
                    {
                      v709 = 0;
                    }

                    *(v435 + 136) = v709 + *(v708 + 16 * *(a4 + 1300) + 24) + *(v708 + 8 * *(a4 + 1300) + 56) + *(a4 + 1304);
                    v710 = *(a4 + 1320);
                    if (*(a4 + 1328) == 4)
                    {
                      v711 = *(v710 + 16);
                    }

                    else
                    {
                      v711 = 0;
                    }

                    *(v435 + 144) = v711 + *(v710 + 16 * *(a4 + 1332) + 24) + *(v710 + 8 * *(a4 + 1332) + 56) + *(a4 + 1336);
                  }

                  v712 = *(a4 + 896);
                  if (*(a4 + 904) == 4)
                  {
                    v713 = *(v712 + 16);
                  }

                  else
                  {
                    v713 = 0;
                  }

                  *(v435 + 104) = v713 + *(v712 + 16 * *(a4 + 908) + 24) + *(v712 + 8 * *(a4 + 908) + 56) + *(a4 + 912);
                  v714 = *(a2 + 32);
                  v715 = *(a2 + 40);
                  if (v715 >= 0x101 || v714 >= 0x800001)
                  {
                    v717 = 2;
                  }

                  else
                  {
                    v717 = 1;
                  }

                  if (v715 >= 0x11 || v714 >= 0x801)
                  {
                    v719 = v717;
                  }

                  else
                  {
                    v719 = 0;
                  }

                  *(v435 + 340) = v719;
                  if (*(a2 + 15))
                  {
                    v720 = *(a4 + 928);
                    if (*(a4 + 936) == 4)
                    {
                      v721 = *(v720 + 16);
                    }

                    else
                    {
                      v721 = 0;
                    }

                    *(v435 + 112) = v721 + *(v720 + 16 * *(a4 + 940) + 24) + *(v720 + 8 * *(a4 + 940) + 56) + *(a4 + 944);
                  }

                  v722 = *(a4 + 960);
                  if (*(a4 + 968) == 4)
                  {
                    v723 = *(v722 + 16);
                  }

                  else
                  {
                    v723 = 0;
                  }

                  *(v435 + 120) = v723 + *(v722 + 16 * *(a4 + 972) + 24) + *(v722 + 8 * *(a4 + 972) + 56) + *(a4 + 976);
                  *(v435 + 344) = 4;
                  *(v435 + 304) = v948;
                  v724 = [objc_msgSend(a5 "buffer")];
                  *(v435 + 312) = v724 - [a5 bufferOffset];
                  {
                    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getVersionToEncode(BOOL,BOOL,BOOL)::gen = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen();
                  }

                  if (v470)
                  {
                    v725 = 0x40000000;
                  }

                  else
                  {
                    v725 = 0;
                  }

                  v726 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhVersions[AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getVersionToEncode(BOOL,BOOL,BOOL)::gen];
                  *(v435 + 128) = *&v980[0];
                  *(v435 + 320) = v725 & 0xE0000000 | ((v465 > 0xFFFFFFFD) << 31) | ((v707 == 2) << 29) | v726 & 0x1FFFFFFF;
                  if (v465 > 0xFFFFFFFD)
                  {
                    *(v435 + 160) = *(a2 + 72);
                    *(v435 + 348) = *(a2 + 80);
                    if ((*(a2 + 28) & 4) != 0)
                    {
                      v727 = -1;
                    }

                    else
                    {
                      v727 = 255;
                    }

                    *(v435 + 352) = v727;
                    *(v435 + 168) = v995;
                    *(v435 + 152) = v993;
                    *(v435 + 176) = *(a2 + 88);
                    *(v435 + 184) = v962;
                    *(v435 + 356) = *(a2 + 52);
                    *(v435 + 360) = *(a2 + 104);
                    *(v435 + 364) = *(a2 + 120) == 1;
                  }

                  else
                  {
                    *(v435 + 276) = *(a2 + 32);
                    if (*(v435 + 281) == 1)
                    {
                      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer_impl<AGXBuffer>(*(v977 + 16), *(v977 + 24), 0, 0xAu, 0);
                    }
                  }

                  v728 = *(a4 + 1560);
                  v729 = *(a4 + 1572);
                  v730 = v728 + 16 * v729;
                  v731 = *(v730 + 24);
                  v658 = *(v730 + 32);
                  if (*(a4 + 1568) == 4)
                  {
                    v732 = *(v728 + 16);
                  }

                  else
                  {
                    v732 = 0;
                  }

                  v942 = 0;
                  v944 = 0;
                  v946 = 0;
                  v947 = 0;
                  v964 = 0;
                  v661 = 0;
                  v440 = 0;
                  v659 = *(v728 + 8 * v729 + 56) + v732 + *(a4 + 1576);
                  v660 = v659 + v731;
                  goto LABEL_1084;
                }

                v621 = *(a2 + 160) > 1u;
                if (v620 > 4)
                {
                  v622 = 52;
                  v623 = 92;
                }

                else
                {
                  v622 = 64;
                  v623 = 96;
                }
              }
            }

            if (v621)
            {
              v622 = v623;
            }

            *(v435 + 224) = v622;
            goto LABEL_811;
          }

          if (*(a2 + 17) == 2)
          {
            if (v469 >= 2)
            {
              v472 = 0;
              *(v435 + 228) = 3;
              v471 = 112;
              if (v468)
              {
                goto LABEL_791;
              }

              goto LABEL_816;
            }

            *(v435 + 228) = 2;
            *(v435 + 287) = 1;
            v471 = 36;
            if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(2, a2, *(v977 + 44)) != 3)
            {
              PrimLeafEncodingMode = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(*(v435 + 228), a2, *(v977 + 44));
              v472 = 0;
              if (PrimLeafEncodingMode == 2)
              {
                v471 = 36;
              }

              else
              {
                v471 = 60;
              }

              if (!v468)
              {
                goto LABEL_816;
              }

              goto LABEL_791;
            }

            goto LABEL_780;
          }

          if (!*(a2 + 17))
          {
            if (v469 >= 2)
            {
              v472 = 0;
              *(v435 + 228) = 1;
              v471 = 84;
              if (v468)
              {
                goto LABEL_791;
              }

              goto LABEL_816;
            }

            *(v435 + 228) = 0;
            *(v435 + 287) = 1;
            v471 = 36;
            if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(0, a2, *(v977 + 44)) != 3)
            {
              v619 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(*(v435 + 228), a2, *(v977 + 44));
              v472 = 0;
              if (v619 == 2)
              {
                v471 = 36;
              }

              else
              {
                v471 = 44;
              }

              if (!v468)
              {
                goto LABEL_816;
              }

              goto LABEL_791;
            }

LABEL_780:
            v472 = 0;
            if (v468)
            {
              goto LABEL_791;
            }

            goto LABEL_816;
          }
        }

        v472 = 0;
        v471 = 0;
        if (v468)
        {
          goto LABEL_791;
        }

        goto LABEL_816;
      }

      v470 = 0;
      v473 = *(a2 + 112);
      if (v473 <= 4)
      {
        if (((1 << v473) & 0xB) != 0)
        {
          v474 = 8;
          v475 = 128;
        }

        else
        {
          if (*(v977 + 44) >= 5u)
          {
            v475 = 44;
          }

          else
          {
            v475 = 48;
          }

          v470 = 1;
          v474 = 9;
        }

        *(v435 + 224) = v475;
        *(v435 + 228) = v474;
      }

      *(v435 + 232) = 0;
      *(v435 + 192) = 1;
      *(v435 + 220) = *(a2 + 128);
      v585 = *(v977 + 44);
      {
        AGX::BVHDescriptor::isExtendedLimits(void)const::forceExtendedLimits = 0;
      }

      if (v470)
      {
        *(v435 + 289) = 1;
        if (*(a2 + 18) != 7)
        {
          *v433 = *(a2 + 52);
          v586 = *(a2 + 56);
LABEL_656:
          *v434 = v586;
LABEL_657:
          *(v435 + 294) = *(a2 + 120) == 1;
          goto LABEL_934;
        }
      }

      else
      {
        *(v435 + 289) = (v585 < 4) & (AGX::BVHDescriptor::isExtendedLimits(void)const::forceExtendedLimits | ((*(a2 + 28) & 4u) >> 2));
        if (*(a2 + 18) != 7)
        {
          v586 = *(a2 + 52);
          *v433 = v586;
          goto LABEL_656;
        }
      }

      v587 = *(a2 + 64);
      *(v435 + 264) = v587;
      if (*(a2 + 96))
      {
        v587 = *(a2 + 96);
      }

      *(v435 + 256) = v587;
      goto LABEL_657;
    }

    memset(__src, 0, 24);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(__src, v977, 632, 1);
    v440 = __src[0];
    v947 = __src[1];
    v964 = __src[2];
    bzero(__src[0], 0x278uLL);
    v441 = [objc_msgSend(a5 "buffer")];
    v442 = [a5 bufferOffset];
    v443 = [a5 size];
    *v440 = v442 + v441;
    *(v440 + 1) = v443;
    v445 = *(v977 + 24);
    if (v445)
    {
      v446 = *(v977 + 16);
      if (*(v445 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
      {
        v447 = *(v445 + 312);
        IOGPUResourceListAddResource();
        v448 = *(v447 + 64);
        v449 = *(v447 + 72);
        while (v448 != v449)
        {
          if (*v448)
          {
            AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v448);
            IOGPUResourceListAddResource();
          }

          v448 += 2;
        }
      }

      AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v446, v445, v444, 1, 1);
    }

    *(v440 + 2) = *(v279 + 57);
    v450 = *(a2 + 32);
    if (*(a2 + 4) | *(a2 + 18))
    {
      v451 = 0;
    }

    else
    {
      v451 = *(a2 + 12) == 3;
    }

    v452 = !v451 || *(a2 + 40) == 0;
    v453 = !v452;
    LODWORD(v454) = *(a2 + 32);
    if (!v452)
    {
      v455 = 0x3FFFFFFFLL;
      if ((*(a2 + 28) & 4) == 0)
      {
        v455 = 0xFFFFFFFLL;
      }

      v456 = *(a2 + 192) + -1.0;
      if (v456 < 0.0)
      {
        v456 = 0.0;
      }

      v454 = vcvtpd_u64_f64(v456 * v450) + v450;
      if (v455 < v454)
      {
        LODWORD(v454) = v455;
      }
    }

    v457 = *(a2 + 15);
    if ((v457 & 2) != 0)
    {
      v458 = *(a2 + 160);
      if (v458 >= 2)
      {
        LODWORD(v454) = v454 * (v458 - 1);
      }
    }

    v943 = v454;
    if (v454 <= 1)
    {
      v459 = 1;
    }

    else
    {
      v459 = v454;
    }

    v937 = v459;
    v938 = AGX::BVHDescriptor::maxInnerNodeCount(a2);
    v460 = v938;
    if ((v457 & 0x400) == 0)
    {
LABEL_546:
      v945 = v460;
      v477 = AGX::BVHDescriptor::topDownLeafNodeCapacity(a2);
      *(v440 + 24) = *(v279 + 264);
      v478 = *(v279 + 20);
      *(v440 + 5) = *(v279 + 9);
      *(v440 + 12) = v478;
      *(v440 + 56) = *(v279 + 472);
      if ((*(a2 + 18) & 0xFE) == 6)
      {
        v479 = (a2 + 52);
      }

      else
      {
        v479 = (a2 + 32);
      }

      *(v440 + 132) = *v479;
      v480 = *(a4 + 1592);
      v481 = *(a4 + 1604);
      v934 = *(v480 + 16 * v481 + 24);
      if (*(a4 + 1600) == 4)
      {
        v931 = *(v480 + 16);
      }

      else
      {
        v931 = 0;
      }

      v482 = *(v480 + 8 * v481 + 56);
      v483 = *(a4 + 1624);
      v484 = *(a4 + 1636);
      v927 = *(v483 + 16 * v484 + 24);
      if (*(a4 + 1632) == 4)
      {
        v925 = *(v483 + 16);
      }

      else
      {
        v925 = 0;
      }

      v485 = *(v483 + 8 * v484 + 56);
      v486 = *(a4 + 1656);
      v487 = *(a4 + 1668);
      v923 = *(v486 + 16 * v487 + 24);
      if (*(a4 + 1664) == 4)
      {
        v921 = *(v486 + 16);
      }

      else
      {
        v921 = 0;
      }

      v488 = *(v486 + 8 * v487 + 56);
      v489 = *(a4 + 1688);
      v490 = *(a4 + 1700);
      v919 = *(v489 + 16 * v490 + 24);
      if (*(a4 + 1696) == 4)
      {
        v491 = *(v489 + 16);
      }

      else
      {
        v491 = 0;
      }

      v492 = *(v489 + 8 * v490 + 56);
      v493 = *(a4 + 1720);
      v494 = *(a4 + 1732);
      v495 = *(v493 + 16 * v494 + 24);
      v917 = v450;
      if (*(a4 + 1728) == 4)
      {
        v496 = *(v493 + 16);
      }

      else
      {
        v496 = 0;
      }

      v497 = *(v493 + 8 * v494 + 56);
      v498 = *(a4 + 1752);
      v499 = *(a4 + 1764);
      v500 = *(v498 + 16 * v499 + 24);
      v940 = v477;
      if (*(a4 + 1760) == 4)
      {
        v501 = *(v498 + 16);
      }

      else
      {
        v501 = 0;
      }

      v502 = *(v498 + 8 * v499 + 56);
      v503 = *(a4 + 1816);
      v504 = *(a4 + 1828);
      if (*(a4 + 1824) == 4)
      {
        v505 = *(v503 + 16);
      }

      else
      {
        v505 = 0;
      }

      v506 = v496 + v495;
      v507 = v497 + *(a4 + 1736);
      v508 = *(a4 + 1848);
      v509 = *(a4 + 1860);
      if (*(a4 + 1856) == 4)
      {
        v510 = *(v508 + 16);
      }

      else
      {
        v510 = 0;
      }

      v511 = v488 + *(a4 + 1672);
      v512 = v492 + *(a4 + 1704);
      v513 = v506 + v507;
      v514 = v502 + *(a4 + 1768);
      v515 = v505 + *(v503 + 16 * v504 + 24);
      v516 = *(v503 + 8 * v504 + 56) + *(a4 + 1832);
      v517 = v510 + *(v508 + 16 * v509 + 24);
      v518 = *(v508 + 8 * v509 + 56) + *(a4 + 1864);
      v519 = *(a4 + 1784);
      if (*(a4 + 1792) == 4)
      {
        v520 = *(v519 + 16);
      }

      else
      {
        v520 = 0;
      }

      v521 = v940 + v945;
      v522 = v931 + v934 + v482 + *(a4 + 1608);
      v523 = v925 + v927 + v485 + *(a4 + 1640);
      v524 = v921 + v923 + v511;
      v525 = v491 + v919 + v512;
      v526 = v520 + *(v519 + 16 * *(a4 + 1796) + 24) + *(v519 + 8 * *(a4 + 1796) + 56) + *(a4 + 1800);
      v527 = *(a4 + 1880);
      v528 = *(a4 + 1892);
      v529 = v527 + 16 * v528;
      v530 = *(v529 + 24);
      v946 = *(v529 + 32);
      v932 = v515 + v516;
      v935 = v517 + v518;
      v941 = v521;
      v929 = v501 + v500 + v514;
      if (*(a4 + 1888) == 4)
      {
        v531 = *(v527 + 16);
      }

      else
      {
        v531 = 0;
      }

      v532 = v943;
      v944 = (*(v527 + 8 * v528 + 56) + v531 + *(a4 + 1896));
      v533 = &v944[v530];
      v534 = v937;
      *(v440 + 9) = v522;
      *(v440 + 20) = 2 * v937;
      *(v440 + 11) = v523;
      *(v440 + 24) = v938;
      v535 = *(a2 + 40);
      v536 = v535 >= 0x101 || v532 >= 0x800001;
      v537 = 2;
      if (v536)
      {
        v537 = 3;
      }

      if (v535 >= 0x11 || v532 >= 0x801)
      {
        v539 = v537;
      }

      else
      {
        v539 = 1;
      }

      *(v440 + 13) = v524;
      *(v440 + 14) = v937 << v539;
      v540 = *(a4 + 1552) * v938;
      *(v440 + 15) = v525;
      *(v440 + 16) = v540;
      v541 = AGX::BVHDescriptor::topDownLeafNodeCapacity(a2);
      if (v541 >= v938)
      {
        v542 = v938;
      }

      else
      {
        v542 = v541;
      }

      v543 = (8 * v542 + 1023) >> 10;
      if (v543 <= 1)
      {
        LODWORD(v543) = 1;
      }

      *(v440 + 17) = v526;
      *(v440 + 36) = v543;
      if (v513)
      {
        v544 = v937;
      }

      else
      {
        v544 = 0;
      }

      *(v440 + 19) = v513;
      *(v440 + 40) = v544;
      *(v440 + 21) = v929;
      *(v440 + 44) = v938;
      *(v440 + 23) = v932;
      *(v440 + 48) = v941;
      v942 = v533;
      *(v440 + 46) = v533;
      *(v440 + 188) = 14;
      *(v440 + 25) = *&v980[0];
      v545 = *(v279 + 96);
      *(v440 + 40) = *(v279 + 47);
      *(v440 + 82) = v545;
      v546 = *(v279 + 100);
      *(v440 + 42) = *(v279 + 49);
      *(v440 + 86) = v546;
      *(v440 + 44) = v935;
      *(v440 + 90) = 32;
      *(v440 + 50) = 0;
      *(v440 + 51) = [a5 accelerationStructureUniqueIdentifier];
      *(v440 + 52) = *(a2 + 136);
      *(v440 + 424) = 0u;
      *(v440 + 440) = 0u;
      *(v440 + 57) = 0;
      v547 = *(a2 + 18);
      v548 = v547 & 0xFE;
      v549 = *(a2 + 15) & 1;
      v551 = (v547 - 8) < 0xFFFFFFFE && *(a2 + 17) == 2;
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getVersionToEncode(BOOL,BOOL,BOOL)::gen = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen();
      }

      if (v551)
      {
        v552 = 0x20000000;
      }

      else
      {
        v552 = 0;
      }

      *(v440 + 122) = ((v548 == 6) << 31) | (v549 << 30) | v552 & 0xE0000000 | AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhVersions[AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getVersionToEncode(BOOL,BOOL,BOOL)::gen] & 0x1FFFFFFF;
      *(v440 + 123) = *(a4 + 1552);
      *(v440 + 532) = 0;
      v553 = *(a2 + 40);
      *(v440 + 135) = v553;
      *(v440 + 69) = 0x100000000;
      v554 = *(a2 + 18);
      v556 = v977;
      if ((v554 - 8) <= 0xFFFFFFFD)
      {
        if (!v553)
        {
LABEL_831:
          v626 = *(a4 + 1912);
          if (*(a4 + 1920) == 4)
          {
            v627 = *(v626 + 16);
          }

          else
          {
            v627 = 0;
          }

          v628 = *(a4 + 1936) >> 2;
          *(v440 + 48) = v627 + *(v626 + 16 * *(a4 + 1924) + 24) + *(v626 + 8 * *(a4 + 1924) + 56) + *(a4 + 1928);
          *(v440 + 196) = v628;
          v629 = *(a2 + 32);
          v630 = *(a2 + 40);
          if (v630 >= 0x101 || v629 >= 0x800001)
          {
            v632 = 2;
          }

          else
          {
            v632 = 1;
          }

          if (v630 < 0x11 && v629 < 0x801)
          {
            v632 = 0;
          }

          *(v440 + 140) = v632;
          v634 = *(a2 + 15);
          if ((v634 & 0x400) != 0)
          {
            if (!*(a2 + 4) && v630 && !*(a2 + 18) && *(a2 + 12) == 3)
            {
              v636 = 0x3FFFFFFFLL;
              if ((*(a2 + 28) & 4) == 0)
              {
                v636 = 0xFFFFFFFLL;
              }

              v637 = *(a2 + 192) + -1.0;
              if (v637 < 0.0)
              {
                v637 = 0.0;
              }

              v629 += vcvtpd_u64_f64(v637 * v629);
              if (v636 < v629)
              {
                LODWORD(v629) = v636;
              }
            }

            if ((v634 & 2) != 0)
            {
              v638 = *(a2 + 160);
              if (v638 >= 2)
              {
                LODWORD(v629) = v629 * (v638 - 1);
              }
            }

            if (v629 <= 1)
            {
              LODWORD(v629) = 1;
            }

            v635 = (*(a2 + 20) + v629 - 1) / *(a2 + 20) - 1;
          }

          else
          {
            v635 = AGX::BVHDescriptor::maxInnerNodeCount(a2);
          }

          *(v440 + 144) = AGX::BVHDescriptor::topDownLeafNodeCapacity(a2) + v635;
          *(v440 + 145) = v938;
          {
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahPrimitiveLeafCost = 1090519040;
          }

          {
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahInstanceLeafCost = 1065353216;
          }

          if (*(a2 + 18) != 3 && *(a2 + 18))
          {
            v639 = 8 * *(a2 + 22);
            v641 = v639 >= 8;
            v640 = 8;
          }

          else
          {
            if (*(v556 + 44) >= 5u)
            {
              v639 = 28;
            }

            else
            {
              v639 = 16;
            }

            v640 = 8 * *(a2 + 22);
            v641 = v639 >= v640;
          }

          if (v641)
          {
            v642 = v640;
          }

          else
          {
            v642 = v639;
          }

          {
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::kWideBuildMaxDepth = 16;
          }

          if (v534 <= v642)
          {
            v643 = 1;
          }

          else
          {
            v643 = ((86 * (34 - __clz((v534 + v642 - 1) / v642 - 1))) >> 8) + 1;
          }

          if ((*(a2 + 18) & 0xFE) == 6)
          {
            v644 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahInstanceLeafCost;
          }

          else
          {
            v644 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahPrimitiveLeafCost;
          }

          *(v440 + 146) = *v644;
          if (v643 <= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::kWideBuildMaxDepth)
          {
            v643 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::kWideBuildMaxDepth;
          }

          if (v643 >= 0x10)
          {
            v643 = 16;
          }

          *(v440 + 147) = v643;
          *(v440 + 297) = v642;
          *(v440 + 296) = *(a2 + 22);
          {
            AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
          }

          {
            AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
          }

          if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit)
          {
            v645 = 0;
          }

          else if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable)
          {
            v645 = 1;
          }

          else
          {
            v645 = *(a2 + 28) & 1;
          }

          v440[598] = v645;
          v440[604] = AGX::BVHDescriptor::useSpatialSplits(a2);
          {
            *(v555 + 2824) = 0;
          }

          v440[605] = *(v555 + 2824) | ((*(a2 + 28) & 2u) >> 1);
          {
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::multiThreadgroupSAHScoreNodeThreshold = 1024;
          }

          v646 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::multiThreadgroupSAHScoreNodeThreshold;
          v440[609] = *(v440 + 144) >= 2 * AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::multiThreadgroupSAHScoreNodeThreshold;
          *(v440 + 310) = v646;
          {
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::multiThreadgroupWideBuildNodeThreshold = 4096;
          }

          v440[573] = *(v440 + 145) >= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::multiThreadgroupWideBuildNodeThreshold;
          v440[610] = AGX::BVHDescriptor::requiresCompactionMetadata(a2, v440[608]);
          {
            getForcedMatchLeafHeaders(AGX::BVHDescriptor const&)::forceMatchLeafHeaders = 0;
          }

          v440[612] = getForcedMatchLeafHeaders(AGX::BVHDescriptor const&)::forceMatchLeafHeaders | ((*(a2 + 15) & 0x1000) >> 12);
          v647 = v440[596];
          {
            *(v555 + 2824) = 0;
          }

          v648 = *(v555 + 2824);
          v649 = *(a2 + 28);
          {
            AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
          }

          {
            AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
          }

          if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit)
          {
            v650 = 0;
          }

          else if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable)
          {
            v650 = 1;
          }

          else
          {
            v650 = *(a2 + 28) & 1;
          }

          v651 = v440[602];
          v652 = *(v977 + 44);
          if (v652 >= 5)
          {
            v653 = 2688;
          }

          else
          {
            v653 = 1536;
          }

          if (v440[608] - 1 <= 1)
          {
            __src[0] = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v652 < 5), 0x1FuLL)), 0x7E000000430, 0x4F0000008A0);
            if (v653 <= 4 * *(__src | (4 * v651)))
            {
              v653 = 4 * *(__src | (4 * v651));
            }
          }

          if (v647)
          {
            if ((v648 | ((v649 & 2) >> 1) | v650))
            {
              v654 = 64;
            }

            else
            {
              v655 = v652 >= 5 ? 5056 : 8064;
              v656 = v652 >= 5 ? 8832 : 4288;
              v657 = v651 ? v655 : v656;
              v654 = (v657 + 124) & 0x7FC0;
            }

            if (v654 > v653)
            {
              LOWORD(v653) = v654;
            }
          }

          v658 = 0;
          v659 = 0;
          v660 = 0;
          *(v440 + 311) = v653;
          v661 = 632;
LABEL_1084:
          *(&v936 + 1) = v659;
          if (v965)
          {
            v733 = *a4;
            if (*(a4 + 8) == 4)
            {
              v734 = *(v733 + 16);
            }

            else
            {
              v734 = 0;
            }

            v742 = *(a4 + 64);
            if (*(a4 + 72) == 4)
            {
              v743 = *(v742 + 16);
            }

            else
            {
              v743 = 0;
            }

            v744 = *(a4 + 12);
            v745 = *(a4 + 76);
            v746 = *(a4 + 1288);
            v747 = *(a4 + 1300);
            if (*(a4 + 1296) == 4)
            {
              v748 = *(v746 + 16);
            }

            else
            {
              v748 = 0;
            }

            v749 = v733 + 16 * v744;
            v750 = v733 + 8 * v744;
            v751 = v742 + 16 * v745;
            v752 = v742 + 8 * v745;
            v753 = v746 + 16 * v747;
            v754 = v746 + 8 * v747;
            v755 = *(a4 + 1320);
            v756 = *(a4 + 1332);
            if (*(a4 + 1328) == 4)
            {
              v757 = *(v755 + 16);
            }

            else
            {
              v757 = 0;
            }

            v758 = *(v751 + 24);
            v759 = *(v752 + 56);
            v760 = *(v753 + 24);
            v761 = *(v754 + 56);
            v762 = *(v755 + 16 * v756 + 24);
            v763 = *(v755 + 8 * v756 + 56);
            v764 = *(a4 + 1352);
            v765 = *(a4 + 1364);
            if (*(a4 + 1360) == 4)
            {
              v766 = *(v764 + 16);
            }

            else
            {
              v766 = 0;
            }

            v767 = v734 + *(v749 + 24);
            v768 = v743 + v758;
            v769 = v759 + *(a4 + 80);
            v770 = v748 + v760;
            v771 = v757 + v762;
            v772 = v766 + *(v764 + 16 * v765 + 24);
            v773 = *(v764 + 8 * v765 + 56) + *(a4 + 1368);
            v774 = *(a4 + 32);
            if (*(a4 + 40) == 4)
            {
              v775 = *(v774 + 16);
            }

            else
            {
              v775 = 0;
            }

            v735 = v991[0];
            v736 = (v767 + *(v750 + 56) + *(a4 + 16));
            v737 = (v768 + v769);
            v738 = (v770 + v761 + *(a4 + 1304));
            v739 = (v771 + v763 + *(a4 + 1336));
            v740 = (v772 + v773);
            v920 = (v775 + *(v774 + 16 * *(a4 + 44) + 24) + *(v774 + 8 * *(a4 + 44) + 56) + *(a4 + 48));
            v776 = *(a4 + 1944);
            if (*(a4 + 1952) == 4)
            {
              v777 = *(v776 + 16);
            }

            else
            {
              v777 = 0;
            }

            v741 = (v777 + *(v776 + 16 * *(a4 + 1956) + 24) + *(v776 + 8 * *(a4 + 1956) + 56) + *(a4 + 1960));
          }

          else
          {
            v735 = 0;
            v736 = 0;
            v737 = 0;
            v738 = 0;
            v739 = 0;
            v740 = 0;
            v920 = 0;
            v741 = 0;
          }

          v939 = v661;
          v933 = v735;
          *&v936 = v660;
          v928 = v737;
          v930 = v736;
          v924 = v739;
          v926 = v738;
          v922 = v740;
          v918 = v741;
          v915 = v658;
          if ((*(a2 + 15) & 0x400) != 0)
          {
            v916 = 0;
            v902 = 0;
            v903 = 0;
            v904 = 0;
            v905 = 0;
            v900 = 0;
            v901 = 0;
            v780 = 0;
            v968 = 0;
            v908 = 0;
            v910 = 0;
            v913 = 0;
            v914 = 0;
            v781 = 0;
            v782 = 0;
            v906 = 0;
            v912 = 0;
            v783 = 0;
          }

          else
          {
            v778 = *(a4 + 1128);
            if (*(a4 + 1136) == 4)
            {
              v779 = *(v778 + 16);
            }

            else
            {
              v779 = 0;
            }

            v784 = *(a4 + 1140);
            v785 = *(a4 + 1160);
            v786 = *(a4 + 1172);
            if (*(a4 + 1168) == 4)
            {
              v787 = *(v785 + 16);
            }

            else
            {
              v787 = 0;
            }

            v788 = v778 + 8 * v784;
            v789 = *(a4 + 1192);
            v790 = *(a4 + 1204);
            if (*(a4 + 1200) == 4)
            {
              v791 = *(v789 + 16);
            }

            else
            {
              v791 = 0;
            }

            v792 = v778 + 16 * v784;
            v793 = *(v788 + 56);
            v794 = v779 + *(a4 + 1144);
            v795 = v785 + 16 * v786;
            v796 = *(v785 + 8 * v786 + 56);
            v797 = v787 + *(a4 + 1176);
            v798 = v789 + 16 * v790;
            v799 = *(v789 + 8 * v790 + 56);
            v800 = v791 + *(a4 + 1208);
            v801 = *(a4 + 1224);
            v802 = *(a4 + 1236);
            v803 = v801 + 16 * v802;
            if (*(a4 + 1232) == 4)
            {
              v804 = *(v801 + 16);
            }

            else
            {
              v804 = 0;
            }

            v783 = (v793 + v794);
            v782 = (v796 + v797);
            v781 = (v799 + v800);
            v805 = *(v792 + 24);
            v912 = *(v792 + 32);
            v806 = *(v795 + 24);
            v913 = *(v795 + 32);
            v807 = *(v798 + 24);
            v914 = *(v798 + 32);
            v808 = *(v803 + 24);
            v916 = *(v803 + 32);
            v809 = (*(v801 + 8 * v802 + 56) + v804 + *(a4 + 1240));
            v968 = v809;
            {
              v909 = v782;
              v911 = (v799 + v800);
              v907 = v783;
              v783 = v907;
              v782 = v909;
              v809 = v968;
              v781 = v911;
              if (v884)
              {
                AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
                v783 = v907;
                v782 = v909;
                v809 = v968;
                v781 = v911;
              }
            }

            v905 = &v783[v805];
            v906 = &v782[v806];
            v908 = &v781[v807];
            v910 = &v809[v808];
            {
              v885 = v781;
              v886 = v782;
              v887 = v783;
              v783 = v887;
              v782 = v886;
              v781 = v885;
              if (v888)
              {
                AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
                v783 = v887;
                v782 = v886;
                v781 = v885;
              }
            }

            if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) == 0 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || (*(a2 + 28)))
            {
              v810 = *(a4 + 1520);
              v811 = *(a4 + 1532);
              v812 = v810 + 16 * v811;
              if (*(a4 + 1528) == 4)
              {
                v813 = *(v810 + 16);
              }

              else
              {
                v813 = 0;
              }

              v814 = *(v812 + 32);
              v815 = (*(v810 + 8 * v811 + 56) + v813 + *(a4 + 1536));
              v816 = &v815[*(v812 + 24)];
              v817 = *(a4 + 1488);
              v818 = *(a4 + 1500);
              v819 = v817 + 16 * v818;
              v820 = *(v819 + 24);
              v903 = v816;
              v904 = v814;
              v901 = *(v819 + 32);
              v902 = v815;
              if (*(a4 + 1496) == 4)
              {
                v821 = *(v817 + 16);
              }

              else
              {
                v821 = 0;
              }

              v780 = (*(v817 + 8 * v818 + 56) + v821 + *(a4 + 1504));
              v900 = &v780[v820];
            }

            else
            {
              v902 = 0;
              v903 = 0;
              v904 = 0;
              v900 = 0;
              v901 = 0;
              v780 = 0;
            }
          }

          v822 = *(a4 + 800);
          v823 = *(a4 + 812);
          v824 = v783;
          v825 = v782;
          v826 = v781;
          if (*(a4 + 808) == 4)
          {
            v827 = *(v822 + 16);
          }

          else
          {
            v827 = 0;
          }

          v899 = *(v822 + 16 * v823 + 24);
          v828 = *(v822 + 8 * v823 + 56);
          v829 = *(a4 + 816);
          v830 = *(a2 + 176);
          *&__src[20] = *(a2 + 160);
          *&__src[22] = v830;
          __src[24] = *(a2 + 192);
          v831 = *(a2 + 112);
          *&__src[12] = *(a2 + 96);
          *&__src[14] = v831;
          v832 = *(a2 + 128);
          *&__src[18] = *(a2 + 144);
          *&__src[16] = v832;
          v833 = *(a2 + 48);
          *&__src[4] = *(a2 + 32);
          *&__src[6] = v833;
          v834 = *(a2 + 64);
          *&__src[10] = *(a2 + 80);
          *&__src[8] = v834;
          v835 = *a2;
          *&__src[2] = *(a2 + 16);
          *__src = v835;
          v836 = a5;
          __src[26] = v952;
          __src[27] = v279;
          *&__src[30] = v950;
          __src[32] = v949;
          __src[33] = v973;
          *&__src[38] = v936;
          *&__src[40] = v915;
          __src[46] = v905;
          __src[47] = v824;
          *&__src[48] = v912;
          __src[50] = v906;
          __src[51] = v825;
          *&__src[52] = v913;
          __src[54] = v908;
          __src[55] = v826;
          __src[56] = v914;
          __src[58] = v910;
          __src[59] = v968;
          __src[25] = v836;
          __src[28] = 504;
          __src[29] = v954;
          *&__src[34] = v978;
          *&__src[36] = v979;
          *&__src[44] = v980[1];
          *&__src[42] = v980[0];
          __src[57] = 0;
          __src[60] = v916;
          __src[61] = 0;
          __src[62] = v903;
          __src[63] = v902;
          __src[64] = v904;
          __src[65] = 0;
          __src[66] = v900;
          __src[67] = v780;
          __src[68] = v901;
          __src[69] = 0;
          __src[70] = v947;
          __src[71] = v440;
          __src[72] = v939;
          __src[73] = v964;
          __src[74] = v942;
          __src[75] = v944;
          __src[76] = v946;
          __src[77] = 0;
          __src[78] = v956;
          __src[79] = v958;
          *&__src[80] = v1003;
          *&__src[82] = v899;
          __src[84] = (v828 + v827 + v829);
          __src[85] = v933;
          __src[86] = v930;
          __src[87] = v928;
          __src[88] = v926;
          __src[89] = v924;
          __src[90] = v922;
          __src[91] = v920;
          __src[92] = v918;
          __src[93] = a7;
          __src[94] = a8;
          __src[95] = a9;
          if (*(v977 + 49) == 1)
          {
            v838 = *(BatchForCommand + 8);
            v837 = *(BatchForCommand + 16);
            if (v838 >= v837)
            {
              v850 = 0xAAAAAAAAAAAAAAABLL * ((v838 - *BatchForCommand) >> 8);
              if (v850 + 1 > 0x55555555555555)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v851 = 0xAAAAAAAAAAAAAAABLL * ((v837 - *BatchForCommand) >> 8);
              v852 = 2 * v851;
              if (2 * v851 <= v850 + 1)
              {
                v852 = v850 + 1;
              }

              if (v851 >= 0x2AAAAAAAAAAAAALL)
              {
                v853 = 0x55555555555555;
              }

              else
              {
                v853 = v852;
              }

              if (v853)
              {
                if (v853 <= 0x55555555555555)
                {
                  operator new();
                }

                goto LABEL_1252;
              }

              v854 = *&__src[22];
              v855 = 768 * v850;
              *(v855 + 160) = *&__src[20];
              *(v855 + 176) = v854;
              v856 = *&__src[14];
              *(v855 + 96) = *&__src[12];
              *(v855 + 112) = v856;
              v857 = *&__src[18];
              *(v855 + 128) = *&__src[16];
              *(v855 + 144) = v857;
              v858 = *&__src[6];
              *(v855 + 32) = *&__src[4];
              *(v855 + 48) = v858;
              v859 = *&__src[10];
              *(v855 + 64) = *&__src[8];
              *(v855 + 80) = v859;
              v860 = *&__src[2];
              *v855 = *__src;
              *(v855 + 16) = v860;
              v861 = __src[25];
              __src[25] = 0;
              *(v855 + 192) = __src[24];
              *(v855 + 200) = v861;
              memcpy((768 * v850 + 208), &__src[26], 0x230uLL);
              v849 = 768 * v850 + 768;
              v862 = *BatchForCommand;
              v863 = *(BatchForCommand + 8);
              v864 = 768 * v850 + *BatchForCommand - v863;
              if (*BatchForCommand != v863)
              {
                v865 = *BatchForCommand;
                v866 = 768 * v850 + *BatchForCommand - v863;
                do
                {
                  *v866 = *v865;
                  v867 = *(v865 + 1);
                  v868 = *(v865 + 2);
                  v869 = *(v865 + 4);
                  *(v866 + 48) = *(v865 + 3);
                  *(v866 + 64) = v869;
                  *(v866 + 16) = v867;
                  *(v866 + 32) = v868;
                  v870 = *(v865 + 5);
                  v871 = *(v865 + 6);
                  v872 = *(v865 + 8);
                  *(v866 + 112) = *(v865 + 7);
                  *(v866 + 128) = v872;
                  *(v866 + 80) = v870;
                  *(v866 + 96) = v871;
                  v873 = *(v865 + 9);
                  v874 = *(v865 + 10);
                  v875 = *(v865 + 11);
                  *(v866 + 192) = v865[24];
                  *(v866 + 160) = v874;
                  *(v866 + 176) = v875;
                  *(v866 + 144) = v873;
                  v876 = v865[25];
                  v865[25] = 0;
                  *(v866 + 200) = v876;
                  memcpy((v866 + 208), v865 + 26, 0x230uLL);
                  v865 += 96;
                  v866 += 768;
                }

                while (v865 != v863);
                do
                {

                  v862 += 96;
                }

                while (v862 != v863);
                v862 = *BatchForCommand;
              }

              *BatchForCommand = v864;
              *(BatchForCommand + 8) = v849;
              *(BatchForCommand + 16) = 0;
              if (v862)
              {
                operator delete(v862);
              }
            }

            else
            {
              *v838 = *__src;
              v839 = *&__src[2];
              v840 = *&__src[4];
              v841 = *&__src[8];
              *(v838 + 48) = *&__src[6];
              *(v838 + 64) = v841;
              *(v838 + 16) = v839;
              *(v838 + 32) = v840;
              v842 = *&__src[10];
              v843 = *&__src[12];
              v844 = *&__src[16];
              *(v838 + 112) = *&__src[14];
              *(v838 + 128) = v844;
              *(v838 + 80) = v842;
              *(v838 + 96) = v843;
              v845 = *&__src[18];
              v846 = *&__src[20];
              v847 = *&__src[22];
              *(v838 + 192) = __src[24];
              *(v838 + 160) = v846;
              *(v838 + 176) = v847;
              *(v838 + 144) = v845;
              v848 = __src[25];
              __src[25] = 0;
              *(v838 + 200) = v848;
              memcpy((v838 + 208), &__src[26], 0x230uLL);
              v849 = v838 + 768;
            }

            *(BatchForCommand + 8) = v849;
          }

          else
          {
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeTopDownBuilds(v977, __src, 1);
          }

          v179 = __src[25];
          goto LABEL_1160;
        }

        v557 = *(a2 + 160);
        *(v440 + 126) = v557;
        if (v557 >= 2)
        {
          *(v440 + 508) = *(a2 + 180);
          *(v440 + 516) = *(a2 + 172);
          *(v440 + 131) = 64;
        }

        LODWORD(v558) = 0;
        if (v554 > 2)
        {
          if (v554 == 4)
          {
            goto LABEL_675;
          }

          v559 = 0;
          if (v554 != 3)
          {
            goto LABEL_752;
          }
        }

        else if (v554)
        {
          v559 = 0;
          if (v554 != 1)
          {
            goto LABEL_752;
          }

LABEL_675:
          LODWORD(v558) = 4;
          *(v440 + 138) = 4;
          v559 = 32;
          goto LABEL_752;
        }

        v588 = *(a2 + 17);
        if (*(a2 + 17))
        {
          if (v588 != 2)
          {
            v559 = 0;
LABEL_700:
            if (*(a2 + 18) && *(a2 + 18) != 3)
            {
              v605 = v440[596];
            }

            else
            {
              v599 = *(v977 + 44);
              {
                v893 = v599;
                v599 = v893;
                if (v894)
                {
                  AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
                  v599 = v893;
                }
              }

              v600 = AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild;
              v601 = *(a2 + 28);
              {
                v895 = v599;
                v599 = v895;
                if (v896)
                {
                  AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
                  v599 = v895;
                }
              }

              v602 = v601 & 2;
              {
                v897 = v599;
                v599 = v897;
                if (v898)
                {
                  AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
                  v599 = v897;
                }
              }

              v603 = v600 | (v602 >> 1);
              if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit)
              {
                v604 = 0;
                v556 = v977;
              }

              else
              {
                v556 = v977;
                if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable)
                {
                  v604 = 1;
                }

                else
                {
                  v604 = *(a2 + 28) & 1;
                }
              }

              v605 = isQTBEnabled(v599, a2, v603 & 1, v604);
              v440[596] = v605;
            }

            v440[599] = -1;
            v440[600] = v605;
            v606 = *(v556 + 44);
            {
            }

            if (v606 <= 4)
            {
              {
                AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
              }

              {
                AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
              }

              if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) == 0 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || (*(a2 + 28)))
              {
                goto LABEL_726;
              }

              {
                AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
              }

              if (AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild)
              {
LABEL_726:
                LOBYTE(v607) = 1;
              }

              else
              {
                v607 = (*(a2 + 28) >> 1) & 1;
              }
            }

            else
            {
              LOBYTE(v607) = 0;
            }

            v440[601] = v607;
            {
              LOBYTE(__src[0]) = 0;
              findEnvVarNum<BOOL>("AGX_ALWAYS_ALLOW_PAIR_FALLBACK", __src);
              if (__src[0])
              {
                v892 = 1;
              }

              else
              {
                LOBYTE(__src[0]) = 0;
                findEnvVarNum<BOOL>("AGX_ALWAYS_ALLOW_VERT_MATCHING_ON_POS", __src);
                v892 = __src[0];
              }

              isVertMatchingOnPositionRequestedAlwaysAllowed(void)::allow = v892 & 1;
              v556 = v977;
              v534 = v937;
            }

            if (isVertMatchingOnPositionRequestedAlwaysAllowed(void)::allow != 1)
            {
              goto LABEL_735;
            }

            {
              AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
            }

            {
              AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
            }

            if ((AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) != 0 || (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) == 0 && (*(a2 + 28) & 1) == 0)
            {
              v608 = *(a2 + 18) - 6 < 0xFFFFFFFD;
            }

            else
            {
LABEL_735:
              v608 = 0;
            }

            v440[602] = v608;
            v440[613] = 0;
            v609 = *(v279 + 8);
            *(v440 + 26) = *(v279 + 3);
            *(v440 + 54) = v609;
            v558 = *(v440 + 138);
            if ((v558 & 0xFFFFFFFE) == 2)
            {
              v610 = *(a4 + 1288);
              if (*(a4 + 1296) == 4)
              {
                v611 = *(v610 + 16);
              }

              else
              {
                v611 = 0;
              }

              *(v440 + 28) = v611 + *(v610 + 16 * *(a4 + 1300) + 24) + *(v610 + 8 * *(a4 + 1300) + 56) + *(a4 + 1304);
              *(v440 + 58) = v917;
              v612 = *(a4 + 1320);
              if (*(a4 + 1328) == 4)
              {
                v613 = *(v612 + 16);
              }

              else
              {
                v613 = 0;
              }

              v614 = *(a2 + 40);
              *(v440 + 30) = v613 + *(v612 + 16 * *(a4 + 1332) + 24) + *(v612 + 8 * *(a4 + 1332) + 56) + *(a4 + 1336);
              *(v440 + 62) = v614;
            }

            if (v440[596] == 1)
            {
              *(v440 + 32) = *(*(v556 + 24) + *MEMORY[0x29EDC5638] + 8);
              v615 = 0.0;
              if (v558 <= 3)
              {
                v615 = flt_29D2F27A0[v558];
              }

              v616 = v534 / v938;
              if (v616 < 1.0)
              {
                v616 = 1.0;
              }

              v617 = vcvtps_u32_f32(fminf(((v616 + v615) + -1.0) / v615, 4.0) * v938);
              if (v617 <= 1)
              {
                v617 = 1;
              }

              *(v440 + 137) = v617;
            }

LABEL_752:
            if (!*(a2 + 136))
            {
              if (*(v556 + 44) > 4u)
              {
                *(v440 + 136) = v559;
              }

              else
              {
                if (v559)
                {
                  if (v559 >= 0x2D)
                  {
                    v618 = 64;
                  }

                  else
                  {
                    v618 = 48;
                  }
                }

                else
                {
                  v618 = 4;
                }

                *(v440 + 136) = v618;
              }

              goto LABEL_830;
            }

            if (v554 > 2)
            {
              if (v554 == 4)
              {
                goto LABEL_766;
              }

              if (v554 != 3)
              {
LABEL_830:
                *(v440 + 154) = 1;
                v440[608] = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(v558, a2, *(v556 + 44));
                goto LABEL_831;
              }
            }

            else
            {
              if (v554)
              {
                if (v554 != 1)
                {
                  goto LABEL_830;
                }

LABEL_766:
                if (*(v556 + 44) > 4u)
                {
                  *(v440 + 136) = 40;
                }

                else
                {
                  *(v440 + 136) = 48;
                }

                goto LABEL_830;
              }
            }

            if (*(a2 + 17) == 2)
            {
              if (*(v556 + 44) > 4u)
              {
                *(v440 + 136) = 76;
              }

              else
              {
                *(v440 + 136) = 96;
              }
            }

            else if (!*(a2 + 17))
            {
              if (*(v556 + 44) > 4u)
              {
                *(v440 + 136) = 52;
              }

              else
              {
                *(v440 + 136) = 64;
              }
            }

            goto LABEL_830;
          }

          v589 = 60;
        }

        else
        {
          v589 = 44;
        }

        *(v440 + 138) = v588;
        v440[606] = 1;
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(v588, a2, *(v977 + 44)) == 3)
        {
          v559 = 36;
        }

        else
        {
          v559 = v589;
        }

        goto LABEL_700;
      }

      v440[596] = 0;
      v560 = *(a2 + 112);
      if (v560)
      {
        if (v560 == 3)
        {
          LODWORD(v560) = 1;
        }

        else
        {
          if (v560 != 1)
          {
            goto LABEL_660;
          }

          LODWORD(v560) = 2;
        }
      }

      *(v440 + 136) = 128;
      *(v440 + 138) = 8;
      *(v440 + 78) = v560;
LABEL_660:
      *(v440 + 139) = 0;
      *(v440 + 126) = 1;
      v590 = *(v977 + 44);
      v591 = *(a2 + 15);
      {
        if (v889)
        {
          AGX::BVHDescriptor::isExtendedLimits(void)const::forceExtendedLimits = 0;
        }
      }

      if (v591)
      {
        v593 = 1;
      }

      else
      {
        v593 = (v590 < 4) & (*(v592 + 3128) | ((*(a2 + 28) & 4u) >> 2));
      }

      v440[603] = v593;
      v440[597] = *(a2 + 120) == 1;
      {
        v890 = v592;
        v592 = v890;
        if (v891)
        {
          *(v890 + 3128) = 0;
          v592 = v890;
        }
      }

      if ((v592[391] & 1) != 0 || (*(a2 + 28) & 4) != 0)
      {
        v594 = -1;
      }

      else
      {
        v594 = 255;
      }

      *(v440 + 73) = v594;
      *(v440 + 33) = *(a2 + 72);
      *(v440 + 72) = *(a2 + 80);
      v595 = *(a2 + 64);
      *(v440 + 37) = v595;
      if (!v595)
      {
        v596 = *(a2 + 52);
        memset(__src, 0, 24);
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(__src, v977, 4, 0);
        v595 = __src[1];
        *__src[0] = v596;
        v556 = v977;
      }

      *(v440 + 38) = v595;
      if ((*(a2 + 18) & 0xFE) != 6 || (*(a2 + 112) - 3) >= 2)
      {
        *(v440 + 26) = v595;
        *(v440 + 54) = 1;
      }

      v597 = v995;
      *(v440 + 34) = v993;
      *(v440 + 35) = v597;
      goto LABEL_831;
    }

    if (v453)
    {
      v461 = 0x3FFFFFFFLL;
      if ((*(a2 + 28) & 4) == 0)
      {
        v461 = 0xFFFFFFFLL;
      }

      v462 = *(a2 + 192) + -1.0;
      if (v462 < 0.0)
      {
        v462 = 0.0;
      }

      v463 = vcvtpd_u64_f64(v462 * v450) + v450;
      if (v461 >= v463)
      {
        LODWORD(v461) = v463;
      }

      if ((v457 & 2) == 0)
      {
        goto LABEL_543;
      }
    }

    else
    {
      LODWORD(v461) = v450;
      if ((v457 & 2) == 0)
      {
LABEL_543:
        if (v461 <= 1)
        {
          LODWORD(v461) = 1;
        }

        v460 = (*(a2 + 20) + v461 - 1) / *(a2 + 20) - 1;
        goto LABEL_546;
      }
    }

    v476 = *(a2 + 160);
    if (v476 >= 2)
    {
      LODWORD(v461) = v461 * (v476 - 1);
    }

    goto LABEL_543;
  }

  v54 = [a5 buffer];
  v55 = [a5 bufferOffset];
  v56 = [v54 gpuAddress];
  *(a3 + 32) = [v54 length];
  *(a3 + 40) = a7;
  *(a3 + 48) = a8;
  *(a3 + 56) = v55;
  *(a3 + 64) = (a9 + 63) & 0xFFFFFFFFFFFFFFC0;
  v57 = *(a3 + 80);
  if (v57 <= *(a3 + 96))
  {
    v57 = *(a3 + 96);
  }

  if (v57 <= *(a3 + 112))
  {
    v57 = *(a3 + 112);
  }

  if (v57 <= *(a3 + 128))
  {
    v57 = *(a3 + 128);
  }

  *(a3 + 16) = (v57 + 63) & 0xFFFFFFFFFFFFFFC0;
  *(a3 + 24) = v56;
  *a3 = 1;
  [objc_msgSend(a5 "buffer")];
  [a5 bufferOffset];
  [a5 size];
  v58 = *(a2 + 18) & 0xFE;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getVersionToEncode(BOOL,BOOL,BOOL)::gen = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen();
  }

  v59 = v58 == 6;
  v60 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhVersions[AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getVersionToEncode(BOOL,BOOL,BOOL)::gen];
  if (v965)
  {
    v61 = 0x20000000;
  }

  else
  {
    v61 = 0;
  }

  v62 = [a5 buffer];
  v63 = [a5 bufferOffset];
  v64 = [v62 gpuAddress];
  [v62 length];
  v65 = [v62 length];
  v966 = *(a2 + 32);
  v66 = *(a2 + 164);
  memset(v983, 0, 24);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v983, v977, 904, 1);
  v67 = *v983;
  v955 = *&v983[8];
  v957 = *&v983[16];
  bzero(*v983, 0x388uLL);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(v997, v977, a6, a2, &v995, &v993, v67, a4, v991);
  v68 = v61 & 0xE0000000 | (v59 << 31) | v60 & 0x1FFFFFFF;
  v69 = v64 + v63;
  v70 = v65 - v63;
  if (!*(a2 + 40) || *(a2 + 18))
  {
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
  }

  else
  {
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    if (*(a2 + 17) == 2)
    {
      v71 = v991[0];
      v78 = *(a4 + 704);
      v79 = *(a4 + 716);
      v80 = *(v78 + 16 * v79 + 24);
      if (*(a4 + 712) == 4)
      {
        v81 = *(v78 + 16);
      }

      else
      {
        v81 = 0;
      }

      v180 = *(v78 + 8 * v79 + 56);
      v181 = *(a4 + 768);
      v182 = *(a4 + 780);
      v183 = *(v181 + 16 * v182 + 24);
      if (*(a4 + 776) == 4)
      {
        v184 = *(v181 + 16);
      }

      else
      {
        v184 = 0;
      }

      v185 = *(v181 + 8 * v182 + 56);
      v186 = *(a4 + 800);
      v187 = *(a4 + 812);
      v188 = *(v186 + 16 * v187 + 24);
      if (*(a4 + 808) == 4)
      {
        v189 = *(v186 + 16);
      }

      else
      {
        v189 = 0;
      }

      v190 = *(v186 + 8 * v187 + 56);
      v191 = *(a4 + 832);
      v192 = *(a4 + 844);
      v193 = *(v191 + 16 * v192 + 24);
      if (*(a4 + 840) == 4)
      {
        v194 = *(v191 + 16);
      }

      else
      {
        v194 = 0;
      }

      v195 = v81 + v80;
      v196 = v180 + *(a4 + 720);
      v197 = v189 + v188;
      v198 = *(v191 + 8 * v192 + 56) + *(a4 + 848);
      v199 = *(a4 + 864);
      if (*(a4 + 872) == 4)
      {
        v200 = *(v199 + 16);
      }

      else
      {
        v200 = 0;
      }

      v72 = (v195 + v196);
      v73 = (v184 + v183 + v185 + *(a4 + 784));
      v74 = (v197 + v190 + *(a4 + 816));
      v75 = (v194 + v193 + v198);
      v76 = (v200 + *(v199 + 16 * *(a4 + 876) + 24) + *(v199 + 8 * *(a4 + 876) + 56) + *(a4 + 880));
      v201 = *(a4 + 736);
      if (*(a4 + 744) == 4)
      {
        v202 = *(v201 + 16);
      }

      else
      {
        v202 = 0;
      }

      v77 = v202 + *(v201 + 16 * *(a4 + 748) + 24) + *(v201 + 8 * *(a4 + 748) + 56) + *(a4 + 752);
    }
  }

  v203 = *(v67 + 76) & 0xFFF7 | (8 * ((((*(a2 + 15) >> 4) & ~(*(a2 + 15) >> 5)) >> 3) & 1));
  *(v67 + 76) = *(v67 + 76) & 0xFFF7 | (8 * ((((*(a2 + 15) >> 4) & ~(*(a2 + 15) >> 5)) >> 3) & 1));
  *v67 = v961;
  *(v67 + 4) = v68;
  *(v67 + 30) = v69;
  *(v67 + 31) = v70;
  v204 = *(a4 + 352);
  if (*(a4 + 360) == 4)
  {
    v205 = *(v204 + 16);
  }

  else
  {
    v205 = 0;
  }

  v206 = *(a4 + 376);
  *(v67 + 32) = v205 + *(v204 + 16 * *(a4 + 364) + 24) + *(v204 + 8 * *(a4 + 364) + 56) + *(a4 + 368);
  *(v67 + 33) = v206;
  v207 = *(a4 + 384);
  if (*(a4 + 392) == 4)
  {
    v208 = *(v207 + 16);
  }

  else
  {
    v208 = 0;
  }

  v209 = *(a4 + 408) >> 2;
  *(v67 + 34) = v208 + *(v207 + 16 * *(a4 + 396) + 24) + *(v207 + 8 * *(a4 + 396) + 56) + *(a4 + 400);
  *(v67 + 140) = v209;
  v210 = *(a4 + 96);
  if (*(a4 + 104) == 4)
  {
    v211 = *(v210 + 16);
  }

  else
  {
    v211 = 0;
  }

  v212 = *(a4 + 120);
  *(v67 + 48) = v211 + *(v210 + 16 * *(a4 + 108) + 24) + *(v210 + 8 * *(a4 + 108) + 56) + *(a4 + 112);
  *(v67 + 49) = v212;
  v213 = *(a4 + 128);
  if (*(a4 + 136) == 4)
  {
    v214 = *(v213 + 16);
  }

  else
  {
    v214 = 0;
  }

  v215 = *(a4 + 152);
  *(v67 + 89) = v214 + *(v213 + 16 * *(a4 + 140) + 24) + *(v213 + 8 * *(a4 + 140) + 56) + *(a4 + 144);
  *(v67 + 90) = v215;
  v216 = *(a4 + 160);
  if (*(a4 + 168) == 4)
  {
    v217 = *(v216 + 16);
  }

  else
  {
    v217 = 0;
  }

  v218 = *(a4 + 184);
  *(v67 + 91) = v217 + *(v216 + 16 * *(a4 + 172) + 24) + *(v216 + 8 * *(a4 + 172) + 56) + *(a4 + 176);
  *(v67 + 92) = v218;
  if (*(a2 + 16))
  {
    v219 = *(a4 + 192);
    if (*(a4 + 200) == 4)
    {
      v220 = *(v219 + 16);
    }

    else
    {
      v220 = 0;
    }

    v221 = *(a4 + 216) >> 2;
    *(v67 + 93) = v220 + *(v219 + 16 * *(a4 + 204) + 24) + *(v219 + 8 * *(a4 + 204) + 56) + *(a4 + 208);
    *(v67 + 188) = v221;
    v222 = *(a4 + 224);
    if (*(a4 + 232) == 4)
    {
      v223 = *(v222 + 16);
    }

    else
    {
      v223 = 0;
    }

    v224 = *(a4 + 248) >> 2;
    *(v67 + 95) = v223 + *(v222 + 16 * *(a4 + 236) + 24) + *(v222 + 8 * *(a4 + 236) + 56) + *(a4 + 240);
    *(v67 + 192) = v224;
    v225 = *(a4 + 256);
    if (*(a4 + 264) == 4)
    {
      v226 = *(v225 + 16);
    }

    else
    {
      v226 = 0;
    }

    v227 = *(a4 + 280) >> 2;
    *(v67 + 97) = v226 + *(v225 + 16 * *(a4 + 268) + 24) + *(v225 + 8 * *(a4 + 268) + 56) + *(a4 + 272);
    *(v67 + 196) = v227;
    v228 = *(a4 + 288);
    if (*(a4 + 296) == 4)
    {
      v229 = *(v228 + 16);
    }

    else
    {
      v229 = 0;
    }

    v230 = *(a4 + 312) >> 3;
    *(v67 + 99) = v229 + *(v228 + 16 * *(a4 + 300) + 24) + *(v228 + 8 * *(a4 + 300) + 56) + *(a4 + 304);
    *(v67 + 200) = v230;
  }

  v231 = *(a4 + 320);
  if (*(a4 + 328) == 4)
  {
    v232 = *(v231 + 16);
  }

  else
  {
    v232 = 0;
  }

  v233 = *(a4 + 344) >> 7;
  *(v67 + 101) = v232 + *(v231 + 16 * *(a4 + 332) + 24) + *(v231 + 8 * *(a4 + 332) + 56) + *(a4 + 336);
  *(v67 + 408) = v233;
  v234 = *(a4 + 448);
  if (*(a4 + 456) == 4)
  {
    v235 = *(v234 + 16);
  }

  else
  {
    v235 = 0;
  }

  v236 = *(a4 + 472) / 0x18u;
  *(v67 + 105) = v235 + *(v234 + 16 * *(a4 + 460) + 24) + *(v234 + 8 * *(a4 + 460) + 56) + *(a4 + 464);
  *(v67 + 212) = v236;
  v237 = *(a4 + 416);
  v971 = v75;
  v951 = v77;
  v953 = v76;
  if (*(a4 + 424) == 4)
  {
    v238 = *(v237 + 16);
  }

  else
  {
    v238 = 0;
  }

  v239 = *(a4 + 440) >> 2;
  *(v67 + 111) = v238 + *(v237 + 16 * *(a4 + 428) + 24) + *(v237 + 8 * *(a4 + 428) + 56) + *(a4 + 432);
  *(v67 + 448) = v239;
  *(v67 + 76) = v203 & 0xFBFF | (2 * *(a2 + 15)) & 0x400;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupBuildMediumBVH(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,unsigned int,unsigned long long,MTL4BufferRange,unsigned long long)::printLeafHandlesPerNode = 0;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupBuildMediumBVH(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,unsigned int,unsigned long long,MTL4BufferRange,unsigned long long)::validateLeafHandlesPerNode = 0;
  }

  v240 = (v966 + v66 - 1) / v66;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupBuildMediumBVH(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,unsigned int,unsigned long long,MTL4BufferRange,unsigned long long)::forceSimpleSubtreeDivision = 0;
  }

  *(v67 + 76) = *(v67 + 76) & 0xFFFB | (4 * (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupBuildMediumBVH(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,unsigned int,unsigned long long,MTL4BufferRange,unsigned long long)::forceSimpleSubtreeDivision & 1));
  *(v67 + 80) = 0;
  v241 = *(a2 + 15);
  if ((v241 & 0x80) != 0)
  {
    v242 = *(a4 + 352);
    v243 = *(a4 + 360) == 4 ? *(v242 + 16) : 0;
    v244 = *(a4 + 376) / 0x1Cu;
    *(v67 + 53) = v243 + *(v242 + 16 * *(a4 + 364) + 24) + *(v242 + 8 * *(a4 + 364) + 56) + *(a4 + 368);
    *(v67 + 108) = v244;
    v245 = *(a4 + 512);
    v246 = *(a4 + 520) == 4 ? *(v245 + 16) : 0;
    v247 = *(a4 + 536) >> 1;
    *(v67 + 55) = v246 + *(v245 + 16 * *(a4 + 524) + 24) + *(v245 + 8 * *(a4 + 524) + 56) + *(a4 + 528);
    *(v67 + 112) = v247;
    v248 = *(a4 + 544);
    v249 = *(a4 + 552) == 4 ? *(v248 + 16) : 0;
    *(v67 + 74) = v249 + *(v248 + 16 * *(a4 + 556) + 24) + *(v248 + 8 * *(a4 + 556) + 56) + *(a4 + 560);
    *(v67 + 150) = 2 * v240 - 1;
    v241 = *(a2 + 15);
    if ((v241 & 0x100) == 0)
    {
      v250 = *(a4 + 576);
      v251 = *(a4 + 588);
      v252 = v250 + 16 * v251;
      v255 = *(v252 + 24);
      v253 = (v252 + 24);
      v254 = v255;
      v256 = *(a4 + 584);
      if (v256 == 4)
      {
        v257 = *(v250 + 16);
      }

      else
      {
        v257 = 0;
      }

      v322 = v250 + 56;
      v323 = v257 + *(v250 + 56 + 8 * v251) + v254 + *(a4 + 592);
      v324 = *(a4 + 600) >> 2;
      if (v324 >= (*(a2 + 32) + 1023) >> 10)
      {
        v324 = (*(a2 + 32) + 1023) >> 10;
      }

      *(v67 + 76) = v323;
      *(v67 + 154) = v324;
      v325 = *v253;
      if (v256 == 4)
      {
        v326 = *(v250 + 16);
      }

      else
      {
        v326 = 0;
      }

      v327 = v326 + *(v322 + 8 * v251) + v325 + *(a4 + 592);
      v328 = *(a4 + 600) / 0x60u;
      *(v67 + 78) = v327;
      *(v67 + 158) = v328;
      v329 = *(a4 + 608);
      if (*(a4 + 616) == 4)
      {
        v330 = *(v329 + 16);
      }

      else
      {
        v330 = 0;
      }

      v331 = *(a4 + 632) / 0x5A0u;
      *(v67 + 82) = v330 + *(v329 + 16 * *(a4 + 620) + 24) + *(v329 + 8 * *(a4 + 620) + 56) + *(a4 + 624);
      *(v67 + 166) = v331;
      v332 = *(a4 + 640);
      if (*(a4 + 648) == 4)
      {
        v333 = *(v332 + 16);
      }

      else
      {
        v333 = 0;
      }

      *(v67 + 86) = v333 + *(v332 + 16 * *(a4 + 652) + 24) + *(v332 + 8 * *(a4 + 652) + 56) + *(a4 + 656);
      *(v67 + 174) = v240;
      v241 = *(a2 + 15);
    }
  }

  if ((~v241 & 0x280) != 0)
  {
    v336 = *(a4 + 480);
    if (*(a4 + 488) == 4)
    {
      v337 = *(v336 + 16);
    }

    else
    {
      v337 = 0;
    }

    v338 = v337 + *(v336 + 16 * *(a4 + 492) + 24) + *(v336 + 8 * *(a4 + 492) + 56) + *(a4 + 496);
    v339 = *(a4 + 504) >> 2;
  }

  else
  {
    v334 = *(a4 + 544);
    if (*(a4 + 552) == 4)
    {
      v335 = *(v334 + 16);
    }

    else
    {
      v335 = 0;
    }

    v338 = v335 + *(v334 + 16 * *(a4 + 556) + 24) + *(v334 + 8 * *(a4 + 556) + 56) + *(a4 + 560);
    LOWORD(v339) = (v966 + v66 - 1) / v66;
  }

  *(v67 + 103) = v338;
  *(v67 + 416) = v339;
  v340 = *(a4 + 672);
  if (*(a4 + 680) == 4)
  {
    v341 = *(v340 + 16);
  }

  else
  {
    v341 = 0;
  }

  *(v67 + 84) = v341 + *(v340 + 16 * *(a4 + 684) + 24) + *(v340 + 8 * *(a4 + 684) + 56) + *(a4 + 688);
  *(v67 + 340) = 14;
  *(v67 + 86) = v240;
  *(v67 + 348) = 0;
  v1005[0] = 0uLL;
  {
    {
    }

    {
    }

    if (shouldDumpOrVerifyBVHs(void)::once != -1)
    {
      dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupBuildMediumBVH(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,unsigned int,unsigned long long,MTL4BufferRange,unsigned long long)::verify = 0;
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupBuildMediumBVH(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,unsigned int,unsigned long long,MTL4BufferRange,unsigned long long)::verify == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v983, v977, 0x480188uLL, 1);
    v342 = *v983;
    v343 = *&v983[8];
    v1005[0] = *&v983[16];
    bzero(*&v983[8], 0x480188uLL);
    v343[1] = -1;
    v344 = **(v977 + 16);
    *v983 = MEMORY[0x29EDCA5F8];
    *&v983[8] = 3221225472;
    *&v983[16] = ___ZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE19setupBuildMediumBVHEP34MTLAccelerationStructureDescriptorRKNS_13BVHDescriptorEP44AGXG18PFamilyRayTracingAccelerationStructureRKNS6_13BuilderBufferESG_RKNS6_15PLOCScratchInfoESG_jy15MTL4BufferRangey_block_invoke;
    *&v983[24] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
    *&v983[32] = v343;
    [v344 addCompletedHandler:v983];
  }

  else
  {
    v343 = 0;
    v342 = 0;
  }

  v345 = *(a2 + 176);
  *&__src[32] = *(a2 + 160);
  *&__src[34] = v345;
  __src[36] = *(a2 + 192);
  v346 = *(a2 + 112);
  *&__src[24] = *(a2 + 96);
  *&__src[26] = v346;
  v347 = *(a2 + 128);
  *&__src[30] = *(a2 + 144);
  *&__src[28] = v347;
  v348 = *(a2 + 48);
  *&__src[16] = *(a2 + 32);
  *&__src[18] = v348;
  v349 = *(a2 + 64);
  *&__src[22] = *(a2 + 80);
  *&__src[20] = v349;
  v350 = *a2;
  *&__src[14] = *(a2 + 16);
  *&__src[12] = v350;
  *&__src[38] = *v997;
  *&__src[40] = v998;
  __src[0] = v955;
  __src[1] = v67;
  __src[2] = 904;
  __src[3] = v957;
  __src[4] = v71;
  __src[5] = v72;
  __src[6] = v73;
  __src[7] = v74;
  __src[8] = v971;
  __src[9] = v953;
  *&__src[10] = v951;
  v351 = a5;
  __src[37] = v351;
  __src[42] = v342;
  __src[43] = v343;
  *&__src[44] = v1005[0];
  __src[46] = &a9[a7];
  __src[47] = a9;
  *&__src[48] = a8;
  if (*(v977 + 49) == 1)
  {
    v353 = *(BatchForCommand + 32);
    v352 = *(BatchForCommand + 40);
    if (v353 >= v352)
    {
      v359 = *(BatchForCommand + 24);
      v360 = 0x8F5C28F5C28F5C29 * ((v353 - v359) >> 4) + 1;
      if (v360 > 0xA3D70A3D70A3D7)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v361 = 0x8F5C28F5C28F5C29 * ((v352 - v359) >> 4);
      if (2 * v361 > v360)
      {
        v360 = 2 * v361;
      }

      if (v361 >= 0x51EB851EB851EBLL)
      {
        v362 = 0xA3D70A3D70A3D7;
      }

      else
      {
        v362 = v360;
      }

      if (v362)
      {
        if (v362 <= 0xA3D70A3D70A3D7)
        {
          operator new();
        }

        goto LABEL_1252;
      }

      v561 = 16 * ((v353 - v359) >> 4);
      memcpy(v561, __src, 0x124uLL);
      __src[37] = 0;
      *(v561 + 296) = v351;
      v562 = *&__src[44];
      *(v561 + 336) = *&__src[42];
      *(v561 + 352) = v562;
      v563 = *&__src[48];
      *(v561 + 368) = *&__src[46];
      *(v561 + 384) = v563;
      v564 = *&__src[40];
      v358 = v561 + 400;
      v565 = v561 - (v353 - v359);
      *(v561 + 304) = *&__src[38];
      *(v561 + 320) = v564;
      if (v359 != v353)
      {
        v566 = v359;
        v567 = v565;
        do
        {
          memcpy(v567, v566, 0x124uLL);
          v568 = v566[37];
          v566[37] = 0;
          *(v567 + 296) = v568;
          v569 = *(v566 + 21);
          v570 = *(v566 + 22);
          v571 = *(v566 + 24);
          *(v567 + 368) = *(v566 + 23);
          *(v567 + 384) = v571;
          *(v567 + 336) = v569;
          *(v567 + 352) = v570;
          v572 = *(v566 + 20);
          *(v567 + 304) = *(v566 + 19);
          *(v567 + 320) = v572;
          v566 += 50;
          v567 += 400;
        }

        while (v566 != v353);
        do
        {

          v359 += 50;
        }

        while (v359 != v353);
        v359 = *(BatchForCommand + 24);
      }

      *(BatchForCommand + 24) = v565;
      *(BatchForCommand + 32) = v358;
      *(BatchForCommand + 40) = 0;
      if (v359)
      {
        operator delete(v359);
      }
    }

    else
    {
      memcpy(*(BatchForCommand + 32), __src, 0x124uLL);
      __src[37] = 0;
      *(v353 + 296) = v351;
      v354 = *&__src[42];
      v355 = *&__src[44];
      v356 = *&__src[48];
      *(v353 + 368) = *&__src[46];
      *(v353 + 384) = v356;
      *(v353 + 336) = v354;
      *(v353 + 352) = v355;
      v357 = *&__src[40];
      *(v353 + 304) = *&__src[38];
      *(v353 + 320) = v357;
      v358 = v353 + 400;
    }

    *(BatchForCommand + 32) = v358;
    v179 = __src[37];
  }

  else
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(v977, __src, 1);
    v179 = __src[37];
  }

LABEL_1160:
}

uint64_t AGX::BVHDescriptor::bvhBuildFlags(AGX::BVHDescriptor *this)
{
  {
    v19 = this;
    v9 = v8;
    this = v19;
    if (v9)
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
      this = v19;
    }
  }

  {
    v20 = this;
    v11 = v10;
    this = v20;
    if (v11)
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
      this = v20;
    }
  }

  if (v1[2792])
  {
    v2 = 0;
  }

  else if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(this + 7) & 1;
  }

  {
    v21 = this;
    v17 = v2;
    v2 = v17;
    v13 = v12;
    this = v21;
    if (v13)
    {
      AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
      v2 = v17;
      this = v21;
    }
  }

  if ((v3[2824] & 1) != 0 || (*(this + 7) & 2) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  {
    v22 = this;
    v16 = v4;
    v18 = v2;
    v4 = v16;
    v2 = v18;
    v15 = v14;
    this = v22;
    if (v15)
    {
      AGX::BVHDescriptor::isExtendedLimits(void)const::forceExtendedLimits = 0;
      v4 = v16;
      v2 = v18;
      this = v22;
    }
  }

  if ((v5[3128] & 1) != 0 || (*(this + 7) & 4) != 0)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  return v4 | v2 | v6;
}

uint64_t ___ZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE26encodeBuildAndEncodeRiaBvhERKNS_13BVHDescriptorEPNS6_16ScratchAllocatorEPKvyyP44AGXG18PFamilyRayTracingAccelerationStructureP34MTLAccelerationStructureDescriptor15MTL4BufferRangem_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  snprintf(__str, 0x100uLL, "Top-down BVH Builder - GPUVA (%llx) - leaf count: %u", *(a1 + 32), *(a1 + 48));
  return bvhPrintDebugBufferContents(*(a1 + 40), __str);
}

uint64_t AGX::BVHDescriptor::requiresCompactionMetadata(uint64_t a1, int a2)
{
  {
    v30 = a1;
    v25 = a2;
    a2 = v25;
    v15 = v14;
    a1 = v30;
    if (v15)
    {
      AGX::BVHDescriptor::requiresCompactionMetadata(PrimLeafEncodingMode)const::allowCompactionMetadata = 1;
      a1 = v30;
      a2 = v25;
    }
  }

  if (v2[3048] != 1 || (v3 = *(a1 + 15), (v3 & 1) != 0) || ((v4 = *(a1 + 18), v4 != 2) ? (v5 = v4 == 5) : (v5 = 1), v5))
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = v3 & 0x400 | *(a1 + 4);
    if (v6)
    {
      {
        v31 = a1;
        v26 = a2;
        a2 = v26;
        v17 = v16;
        a1 = v31;
        if (v17)
        {
          AGX::BVHDescriptor::requiresCompactionMetadata(PrimLeafEncodingMode)const::compactionFragmentThreshold = 0x40000;
          a1 = v31;
          a2 = v26;
        }
      }

      if (*(a1 + 8) >= 2u && *(a1 + 32) >= AGX::BVHDescriptor::requiresCompactionMetadata(PrimLeafEncodingMode)const::compactionFragmentThreshold)
      {
        LOBYTE(v6) = 1;
      }

      else
      {
        {
          v32 = a1;
          v27 = a2;
          a2 = v27;
          v19 = v18;
          a1 = v32;
          if (v19)
          {
            AGX::BVHDescriptor::requiresCompactionMetadata(PrimLeafEncodingMode)const::enableForMediumBVHs = 1;
            a1 = v32;
            a2 = v27;
          }
        }

        v9 = v8[3080] == 1 && *(a1 + 4) == 2;
        {
          v33 = a1;
          v23 = v9;
          v28 = a2;
          v9 = v23;
          a2 = v28;
          v21 = v20;
          a1 = v33;
          if (v21)
          {
            AGX::BVHDescriptor::requiresCompactionMetadata(PrimLeafEncodingMode)const::enableQtbCompaction = 0;
            v9 = v23;
            a2 = v28;
            a1 = v33;
          }
        }

        v11 = v10[3096] == 1 && *(a1 + 8) > 1u;
        v12 = a2 - 1;
        {
          v24 = v9;
          v29 = v11;
          v34 = a2 - 1;
          v11 = v29;
          v12 = v34;
          v9 = v24;
          if (v22)
          {
            AGX::BVHDescriptor::requiresCompactionMetadata(PrimLeafEncodingMode)const::forceCompaction = 0;
            v11 = v29;
            v12 = v34;
            v9 = v24;
          }
        }

        LOBYTE(v6) = (v12 < 2 || v9 || v11) | v13[3112];
      }
    }
  }

  return v6 & 1;
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(uint64_t a1, uint64_t a2, MTLAccelerationStructureDescriptor *a3, AGX::BVHDescriptor *this, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v124 = *MEMORY[0x29EDCA608];
  v15 = *a9;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v16 = *(this + 10);
  v17 = *(this + 18);
  v18 = *(a7 + 152) & 0xFFF7 | (8 * ((*(this + 15) >> 7) & 1));
  *(a7 + 152) = v18;
  *(a7 + 152) = v18 & 0xFFEF | (*(this + 15) >> 4) & 0x10;
  *(a7 + 20) = *(this + 8);
  {
    v112 = a5;
    a5 = v112;
    if (v113)
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
      a5 = v112;
    }
  }

  {
    v114 = a5;
    a5 = v114;
    if (v115)
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
      a5 = v114;
    }
  }

  v122 = v15;
  v121 = v16;
  if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit != 1)
  {
    if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable == 1)
    {
      v21 = *(a7 + 152);
    }

    else
    {
      v21 = *(a7 + 152);
      if ((*(this + 7) & 1) == 0)
      {
        v19 = a5;
        v20 = 0;
        goto LABEL_10;
      }
    }

    v19 = a5;
    v20 = 64;
    goto LABEL_10;
  }

  v19 = a5;
  v20 = 0;
  v21 = *(a7 + 152);
LABEL_10:
  *(a7 + 152) = v21 & 0xFFBF | v20;
  {
    AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
  }

  if (AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild == 1)
  {
    v22 = *(a7 + 152);
LABEL_15:
    v23 = 128;
    goto LABEL_16;
  }

  v22 = *(a7 + 152);
  if ((*(this + 7) & 2) != 0)
  {
    goto LABEL_15;
  }

  v23 = 0;
LABEL_16:
  *(a7 + 152) = v22 & 0xFF7F | v23;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::instanceForceFastBuildReduction = 0;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::primitiveForceFastBuildReduction = 0;
  }

  if ((*(this + 18) & 0xFE) == 6)
  {
    v24 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::instanceForceFastBuildReduction;
  }

  else
  {
    v24 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::primitiveForceFastBuildReduction;
  }

  *(a7 + 156) = *v24;
  *(a7 + 344) = 0;
  *(a7 + 66) = *(this + 1);
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::multiThreadgroupCommitSplit = 1;
  }

  *(a7 + 158) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::multiThreadgroupCommitSplit;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::enableMediumCompaction = 1;
  }

  v25 = *(a7 + 152) & 0xFEFF | (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::enableMediumCompaction << 8);
  *(a7 + 152) = v25;
  *(a7 + 24) = AGX::BVHDescriptor::maxInnerNodeCount(this);
  *(a7 + 28) = 0;
  *(a7 + 224) = 0;
  *(a7 + 152) = v25 & 0xFFDE;
  v27 = *(a2 + 44);
  v28 = *(this + 15);
  {
    AGX::BVHDescriptor::isExtendedLimits(void)const::forceExtendedLimits = 0;
  }

  if (v28)
  {
    v29 = *(a7 + 152);
  }

  else
  {
    v29 = *(a7 + 152);
    if (((v27 < 4) & (AGX::BVHDescriptor::isExtendedLimits(void)const::forceExtendedLimits | ((*(this + 7) & 4u) >> 2))) != 1)
    {
      v30 = 0;
      goto LABEL_29;
    }
  }

  v30 = 512;
LABEL_29:
  *(a7 + 152) = v29 & 0xFDFD | v30;
  *(a7 + 64) = *(a8 + 896);
  v31 = *(this + 41);
  *(a7 + 652) = v31;
  *(a7 + 654) = *(this + 42);
  v32 = *(this + 8);
  v36 = *(this + 10);
  v33 = v32 < 0x801;
  v34 = v36 < 0x11;
  v35 = v32 > 0x800000 || v36 >= 0x101;
  LOBYTE(v36) = 1;
  if (v35)
  {
    v37 = 2;
  }

  else
  {
    v37 = 1;
  }

  if (v35)
  {
    v38 = 8;
  }

  else
  {
    v38 = 4;
  }

  v39 = !v33 || !v34;
  if (v33 && v34)
  {
    v40 = 0;
  }

  else
  {
    v40 = v37;
  }

  if (v39)
  {
    v41 = v38;
  }

  else
  {
    v41 = 2;
  }

  *(a7 + 76) = v40;
  *(a7 + 80) = v41;
  v42 = v31 + v32 - 1;
  v43 = v42 / v31;
  if (v31 <= v42)
  {
    *&v26 = (33 - __clz(~(-1 << -__clz(v43 - 1)))) * 1.5;
    v36 = vcvtps_u32_f32(*&v26);
    if (v36 >= 0x20)
    {
      v36 = 32;
    }

    if (v36 <= 1)
    {
      LOBYTE(v36) = 1;
    }
  }

  *(a7 + 65) = v36;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::maxBatchIterationCount = -1;
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::maxBatchIterationCount != -1)
  {
    LOBYTE(v26) = *(a7 + 65);
    v45 = v26;
    v46 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::maxBatchIterationCount;
    v47 = ceil(log2((v43 + 1)));
    if (v47 >= v46)
    {
      if (v47 <= v45)
      {
        v45 = v47;
      }
    }

    else if (v46 <= v45)
    {
      v45 = v46;
    }

    *(a7 + 65) = v45;
  }

  *(a7 + 152) &= ~0x400u;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::enableMultipleLeafsPerBox = 1;
  }

  *(a7 + 152) = *(a7 + 152) & 0xF7FF | (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::enableMultipleLeafsPerBox << 11);
  *(a7 + 456) = 0;
  *(a7 + 458) = *(this + 12);
  v48 = *(a2 + 44);
  {
  }

  if (v48 <= 4)
  {
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
    }

    {
      AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
    }

    if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) == 0 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || (*(this + 28)))
    {
      goto LABEL_67;
    }

    {
      AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
    }

    if (AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild == 1)
    {
LABEL_67:
      v50 = *(a7 + 152);
    }

    else
    {
      v50 = *(a7 + 152);
      if ((*(this + 7) & 2) == 0)
      {
        v49 = 0;
        goto LABEL_69;
      }
    }

    v49 = 4096;
    goto LABEL_69;
  }

  v49 = 0;
  v50 = *(a7 + 152);
LABEL_69:
  *(a7 + 152) = v50 & 0xEFFF | v49;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::instanceDynamicMaxDepth = 1;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::primitiveDynamicMaxDepth = 1;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::fastBuildDynamicMaxDepth = 1;
  }

  {
    AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
  }

  if (((AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild & 1) != 0 || (*(this + 28) & 2) != 0) && AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::fastBuildDynamicMaxDepth != 1)
  {
    v52 = *(a7 + 152) & 0xDFFF;
  }

  else
  {
    if ((*(this + 18) & 0xFE) == 6)
    {
      v51 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::instanceDynamicMaxDepth;
    }

    else
    {
      v51 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::primitiveDynamicMaxDepth;
    }

    v52 = *(a7 + 152) & 0xDFFF | (v51 << 13);
  }

  *(a7 + 152) = v52;
  {
    LOBYTE(v123[0]) = 0;
    findEnvVarNum<BOOL>("AGX_ALWAYS_ALLOW_PAIR_FALLBACK", v123);
    if (v123[0])
    {
      v116 = 1;
    }

    else
    {
      LOBYTE(v123[0]) = 0;
      findEnvVarNum<BOOL>("AGX_ALWAYS_ALLOW_VERT_MATCHING_ON_POS", v123);
      v116 = v123[0];
    }

    isVertMatchingOnPositionRequestedAlwaysAllowed(void)::allow = v116 & 1;
  }

  if (isVertMatchingOnPositionRequestedAlwaysAllowed(void)::allow != 1)
  {
    goto LABEL_89;
  }

  {
    AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
  }

  {
    AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
  }

  if ((AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) != 0 || (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) == 0 && (*(this + 28) & 1) == 0)
  {
    v53 = *(this + 18) - 6 < 0xFFFFFFFD;
  }

  else
  {
LABEL_89:
    v53 = 0;
  }

  *(a7 + 157) = v53;
  *(a7 + 169) = 0;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::primitiveForceFallback = 0;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::instanceForceFallback = 0;
  }

  v54 = v17 & 0xFE;
  if ((*(this + 18) & 0xFE) == 6)
  {
    v55 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::instanceForceFallback;
  }

  else
  {
    v55 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::primitiveForceFallback;
  }

  *(a7 + 152) = *(a7 + 152) & 0xBFFF | (*v55 << 14);
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::earlyOutStage = 11;
  }

  *(a7 + 68) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::earlyOutStage;
  memset(v123, 0, sizeof(v123));
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::newResourceBuffer(a1, a2, this, a3, v123);
  *(a7 + 88) = *a1;
  *(a7 + 8) = *(this + 17);
  if (v54 != 6)
  {
    *(a7 + 60) = 1;
    v59 = *(this + 17);
    v60 = *(this + 18);
    if (v60 > 2)
    {
      if (v60 == 4)
      {
LABEL_117:
        v65 = 0;
        *(a7 + 56) = 4;
        v64 = *(a2 + 44);
        v66 = 1;
        if (v64 < 5)
        {
          goto LABEL_118;
        }

        LOWORD(v63) = 32;
        goto LABEL_137;
      }

      if (v60 != 3)
      {
LABEL_132:
        v64 = *(a2 + 44);
        if (v64 < 5)
        {
          v66 = 0;
          v67 = 0;
          v65 = 1;
          LOWORD(v63) = 4;
          goto LABEL_138;
        }

        v66 = 0;
        v65 = 0;
        LOWORD(v63) = 0;
        goto LABEL_137;
      }
    }

    else if (*(this + 18))
    {
      if (v60 != 1)
      {
        goto LABEL_132;
      }

      goto LABEL_117;
    }

    v61 = 2 * (*(this + 17) == 2);
    if (*(this + 17) == 2)
    {
      v62 = 60;
    }

    else
    {
      v62 = 44;
    }

    *(a7 + 56) = v61;
    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(v61, this, *(a2 + 44)) == 3)
    {
      v63 = 36;
    }

    else
    {
      v63 = v62;
    }

    v64 = *(a2 + 44);
    if (v64 < 5)
    {
      v66 = 0;
      v65 = 1;
      if (v63 > 0x2C)
      {
        LOWORD(v63) = 64;
        v67 = 1;
LABEL_138:
        *(a7 + 48) = v63;
        if (!*(this + 17))
        {
LABEL_156:
          if (v59 == 2)
          {
            *(a7 + 96) = v122;
            *(a7 + 104) = 4 * v121;
            v77 = *(a8 + 800);
            if (*(a8 + 808) == 4)
            {
              v78 = *(v77 + 16);
            }

            else
            {
              v78 = 0;
            }

            v79 = *(a8 + 824);
            *(a7 + 112) = v78 + *(v77 + 16 * *(a8 + 812) + 24) + *(v77 + 8 * *(a8 + 812) + 56) + *(a8 + 816);
            *(a7 + 120) = v79;
            v80 = *(a8 + 832);
            if (*(a8 + 840) == 4)
            {
              v81 = *(v80 + 16);
            }

            else
            {
              v81 = 0;
            }

            v82 = *(a8 + 856);
            *(a7 + 128) = v81 + *(v80 + 16 * *(a8 + 844) + 24) + *(v80 + 8 * *(a8 + 844) + 56) + *(a8 + 848);
            *(a7 + 136) = v82;
            v64 = *(a2 + 44);
          }

          *(a7 + 20) = *(this + 8);
          *(a7 + 40) = *(this + 10);
          {
            v118 = v64;
            v64 = v118;
            if (v119)
            {
              AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
              v64 = v118;
            }
          }

          v83 = isQTBEnabled(v64, this, (AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild | (*(this + 7) >> 1)) & 1, (*(a7 + 152) >> 6) & 1);
          if (v83)
          {
            v85 = 2;
          }

          else
          {
            v85 = 0;
          }

          *(a7 + 152) = v85 | v83 | *(a7 + 152) & 0xFFFC;
          if (v83)
          {
            v86 = *(a7 + 56);
            v87 = *(a7 + 24);
            v84.i64[0] = 0;
            if (v86 <= 3)
            {
              *v84.i32 = flt_29D2F27A0[v86];
            }

            v88 = *(a7 + 20) / v87;
            if (v88 < 1.0)
            {
              v88 = 1.0;
            }

            *v84.i32 = fminf(((v88 + *v84.i32) + -1.0) / *v84.i32, 4.0) * v87;
            v89 = vcvtps_u32_f32(*v84.i32);
            if (v89 <= 1)
            {
              v89 = 1;
            }

            *(a7 + 28) = v89;
            {
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::qtbEncodingOverride = -1;
            }

            *(a7 + 176) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::qtbEncodingOverride;
            v90 = *(a2 + 24);
            v91 = *MEMORY[0x29EDC5638];
            *(a7 + 144) = *(v90 + v91 + 8);
            v92 = *(a2 + 16);
            if (*(v90 + v91 + 16) >> 61 == 3)
            {
              v93 = *(v90 + 312);
              IOGPUResourceListAddResource();
              v94 = *(v93 + 64);
              v95 = *(v93 + 72);
              while (v94 != v95)
              {
                if (*v94)
                {
                  AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v94);
                  IOGPUResourceListAddResource();
                }

                v94 += 2;
              }
            }

            AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v92, v90, v84, 1, 1);
          }

          {
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahLeafCost = 1098907648;
          }

          {
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahUpperLeafCost = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahLeafCost;
          }

          {
            v69 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahBinningLeafCost;
            v70 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahUpperLeafCost;
            v71 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahLeafCost;
            goto LABEL_187;
          }

          v69 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahBinningLeafCost;
          {
            v70 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahUpperLeafCost;
            v71 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahLeafCost;
            goto LABEL_347;
          }

          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahBinningLeafCost = 1098907648;
          v70 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahUpperLeafCost;
          v71 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahLeafCost;
LABEL_335:
          __cxa_guard_release(v117);
LABEL_347:
          goto LABEL_187;
        }

        if (*(this + 10) && (v72 = *(this + 36), v72 >= 2))
        {
          if (v72 <= 0x10)
          {
            v73 = 1 << -__clz(v72 - 1);
            *(a7 + 159) = 0;
            if (!v67)
            {
              goto LABEL_143;
            }

LABEL_146:
            if (*(this + 17) == 2)
            {
              v74 = v65 == 0;
              v75 = 76;
              v76 = 96;
              goto LABEL_152;
            }

            if (!*(this + 17))
            {
              v74 = v65 == 0;
              v75 = 52;
              v76 = 64;
              goto LABEL_152;
            }

LABEL_155:
            *(a7 + 160) = v73;
            goto LABEL_156;
          }

          v73 = 32;
          *(a7 + 159) = 0;
          if (v67)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v73 = 1;
          *(a7 + 159) = 0;
          if (v67)
          {
            goto LABEL_146;
          }
        }

LABEL_143:
        if (v66)
        {
          v74 = v65 == 0;
          v75 = 40;
          v76 = 48;
LABEL_152:
          if (!v74)
          {
            v75 = v76;
          }

          *(a7 + 48) = v75;
          goto LABEL_155;
        }

        goto LABEL_155;
      }

LABEL_118:
      v67 = v65;
      v65 = 1;
      LOWORD(v63) = 48;
      goto LABEL_138;
    }

    v66 = 0;
    v65 = 1;
LABEL_137:
    v67 = v65;
    v65 = 0;
    goto LABEL_138;
  }

  *(a7 + 56) = 8;
  *(a7 + 48) = 128;
  if (([(MTLAccelerationStructureDescriptor *)a3 usage]& 4) != 0)
  {
    v56 = -1;
  }

  else
  {
    v56 = 255;
  }

  *(a7 + 220) = v56;
  *(a7 + 192) = *(this + 9);
  *(a7 + 216) = *(this + 10);
  *(a7 + 152) = *(a7 + 152) & 0xFFDF | (32 * (*(this + 15) == 1));
  v57 = *(this + 18);
  if (v57 == 7)
  {
    v58 = *(this + 8);
  }

  else
  {
    if (v57 != 6)
    {
      goto LABEL_121;
    }

    v58 = 0;
    *(a7 + 200) = *a6;
    *(a7 + 208) = *v19;
  }

  *(a7 + 224) = v58;
LABEL_121:
  *(a7 + 20) = *(this + 13);
  v68 = *(this + 14);
  switch(v68)
  {
    case 0:
LABEL_126:
      *(a7 + 232) = v68;
      break;
    case 3:
      LODWORD(v68) = 1;
      goto LABEL_126;
    case 1:
      LODWORD(v68) = 2;
      goto LABEL_126;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahLeafCost = 1098907648;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahUpperLeafCost = 1065353216;
  }

  {
    v69 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahBinningLeafCost;
    {
      goto LABEL_131;
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahBinningLeafCost = 1098907648;
    v70 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahUpperLeafCost;
    v71 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahLeafCost;
    goto LABEL_335;
  }

  v69 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahBinningLeafCost;
LABEL_131:
  v70 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahUpperLeafCost;
  v71 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::sahLeafCost;
LABEL_187:
  *(a7 + 180) = *v71;
  *(a7 + 184) = *v70;
  *(a7 + 188) = *v69;
  PrimLeafEncodingMode = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(*(a7 + 56), this, *(a2 + 44));
  *(a7 + 72) = PrimLeafEncodingMode;
  *(a7 + 164) = AGX::BVHDescriptor::requiresCompactionMetadata(this, PrimLeafEncodingMode);
  v97 = *(a7 + 72);
  {
    AGX::BVHDescriptor::plocIndirectNodeEncoding(PrimLeafEncodingMode)const::forceEnableIndirectEncoding = 1;
  }

  *(a7 + 165) = ((v97 - 1) < 2) | AGX::BVHDescriptor::plocIndirectNodeEncoding(PrimLeafEncodingMode)const::forceEnableIndirectEncoding;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::encodeGeometryIndexInMortonCode = 1;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::minPrimitiveThresholdForGeometryRadixSort = 64;
  }

  v98 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::encodeGeometryIndexInMortonCode == 1 && (*(this + 15) & 0x1000) == 0 && *(this + 8) >= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::minPrimitiveThresholdForGeometryRadixSort && *(this + 18) - 8 < 0xFFFFFFFE;
  *(a7 + 166) = v98;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::forceRadixSort64Bits = 0;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::radixSort64BitsForFastIntersection = 1;
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::radixSort64BitsForFastIntersection != 1)
  {
    goto LABEL_200;
  }

  {
    AGX::BVHDescriptor::isFastIntersection(void)const::forceFastintersection = 0;
  }

  if ((AGX::BVHDescriptor::isFastIntersection(void)const::forceFastintersection & 1) != 0 || (*(this + 28) & 0x10) != 0)
  {
    v99 = 1;
  }

  else
  {
LABEL_200:
    v99 = *(a7 + 166);
  }

  *(a7 + 167) = (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::forceRadixSort64Bits | v99) & 1;
  {
    getForcedMatchLeafHeaders(AGX::BVHDescriptor const&)::forceMatchLeafHeaders = 0;
  }

  *(a7 + 168) = getForcedMatchLeafHeaders(AGX::BVHDescriptor const&)::forceMatchLeafHeaders | ((*(this + 15) & 0x1000) >> 12);
  v100 = *(a7 + 152);
  {
    v44[2824] = 0;
  }

  v101 = v44[2824];
  v102 = *(this + 7);
  {
    AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
  }

  {
    AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
  }

  if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit)
  {
    v103 = 0;
  }

  else if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable)
  {
    v103 = 1;
  }

  else
  {
    v103 = *(this + 28) & 1;
  }

  v104 = *(a7 + 157);
  v105 = *(a2 + 44);
  if (v105 >= 5)
  {
    v106 = 2688;
  }

  else
  {
    v106 = 1536;
  }

  if (*(a7 + 72) - 1 <= 1)
  {
    *&v123[0] = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v105 < 5), 0x1FuLL)), 0x7E000000430, 0x4F0000008A0);
    if (v106 <= 4 * *(v123 | (4 * v104)))
    {
      v106 = 4 * *(v123 | (4 * v104));
    }
  }

  if (v100)
  {
    if ((v101 | ((v102 & 2) >> 1) | v103))
    {
      v107 = 64;
    }

    else
    {
      v108 = v105 >= 5 ? 5056 : 8064;
      v109 = v105 >= 5 ? 8832 : 4288;
      v110 = v104 ? v108 : v109;
      v107 = (v110 + 124) & 0x7FC0;
    }

    if (v107 > v106)
    {
      LOWORD(v106) = v107;
    }
  }

  *(a7 + 50) = v106;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::plocDefaultSearchRadius = 8;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::plocFastBuildSearchRadius = 4;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::plocFastTraceSearchRadius = 16;
  }

  {
    AGX::BVHDescriptor::isFastIntersection(void)const::forceFastintersection = 0;
  }

  if ((AGX::BVHDescriptor::isFastIntersection(void)const::forceFastintersection & 1) != 0 || (*(this + 28) & 0x10) != 0)
  {
    v111 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::plocFastTraceSearchRadius;
  }

  else
  {
    {
      v44[2824] = 0;
    }

    v111 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::plocFastBuildSearchRadius;
    if ((v44[2824] & 1) == 0 && (*(this + 28) & 2) == 0)
    {
      v111 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBottomUpBVHBuildParams(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BVHSmallBuildParams &,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&)::plocDefaultSearchRadius;
    }
  }

  *(a7 + 52) = *v111;
}

void sub_29CE93284(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));
  std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch>>::~vector[abi:nn200100]((v1 + 272));
  v5 = *(v1 + 248);
  if (v5)
  {
    *(v1 + 256) = v5;
    operator delete(v5);
    v6 = *(v1 + 224);
    if (!v6)
    {
LABEL_3:
      v7 = *(v1 + 200);
      if (!v7)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v6 = *(v1 + 224);
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 232) = v6;
  operator delete(v6);
  v7 = *(v1 + 200);
  if (!v7)
  {
LABEL_4:
    v8 = *(v1 + 176);
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v1 + 208) = v7;
  operator delete(v7);
  v8 = *(v1 + 176);
  if (!v8)
  {
LABEL_5:
    v9 = *(v1 + 152);
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v1 + 184) = v8;
  operator delete(v8);
  v9 = *(v1 + 152);
  if (!v9)
  {
LABEL_6:
    v10 = *(v1 + 128);
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v1 + 160) = v9;
  operator delete(v9);
  v10 = *(v1 + 128);
  if (!v10)
  {
LABEL_7:
    v11 = *(v1 + 104);
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v1 + 136) = v10;
  operator delete(v10);
  v11 = *(v1 + 104);
  if (!v11)
  {
LABEL_8:
    v12 = *(v1 + 80);
    if (!v12)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v1 + 112) = v11;
  operator delete(v11);
  v12 = *(v1 + 80);
  if (!v12)
  {
LABEL_9:
    v13 = *(v1 + 56);
    if (!v13)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v1 + 88) = v12;
  operator delete(v12);
  v13 = *(v1 + 56);
  if (!v13)
  {
LABEL_10:
    _Unwind_Resume(a1);
  }

LABEL_19:
  *(v1 + 64) = v13;
  operator delete(v13);
  _Unwind_Resume(a1);
}

void *AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::newQtbTablesBuffer(uint64_t a1)
{
  v19[1] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 44);
  if (v1 < 2)
  {
    return 0;
  }

  if (v1 <= 4)
  {
    v2 = 34;
  }

  else
  {
    v2 = 28;
  }

  if (v1 <= 4)
  {
    v3 = &AGX::qtbSubTableInfoGen1;
  }

  else
  {
    v3 = &AGX::qtbSubTableInfoGen2;
  }

  v4 = MEMORY[0x2A1C7C4A8](a1);
  v6 = (v19 - v5);
  *(v19 - v5) = 4 * v2;
  v7 = (v3 + 1);
  v8 = 1;
  v9 = 4 * v2;
  do
  {
    v10 = *v7;
    v7 += 4;
    v9 += v10;
    v6[v8++] = v9;
  }

  while (v2 != v8);
  v11 = [*v4 newBufferWithLength:LODWORD(v3[2 * (v2 - 1) + 1]) + v6[(v2 - 1)] options:0];
  v12 = [v11 contents];
  memcpy(v12, v6, 4 * v2);
  v13 = v3 + 1;
  do
  {
    v15 = *v6++;
    v14 = v15;
    v16 = *(v13 - 1);
    v17 = *v13;
    v13 += 4;
    memcpy(&v12[v14], v16, v17);
    --v2;
  }

  while (v2);
  return v11;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch::BufferAccess,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch::BufferAccess>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch::BufferAccess,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch::BufferAccess>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch::BufferAccess,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch::BufferAccess>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch::BufferAccess,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch::BufferAccess>>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch::BufferAccess,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch::BufferAccess>>>>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (v6[2] == a2)
        {
          return result;
        }
      }

      else if ((v7 & (*&v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= *&v2)
    {
      v8 %= *&v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_29CE93DEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess>>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch::insertRead(int8x8_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[31];
  if (!*&v4)
  {
    goto LABEL_21;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = a2;
    if (*&v4 <= a2)
    {
      v6 = a2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & a2;
  }

  v7 = *(*&a1[30] + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_21:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    v9 = *&v4 - 1;
    while (1)
    {
      v10 = v8[1];
      if (v10 == a2)
      {
        if (v8[2] == a2)
        {
          goto LABEL_22;
        }
      }

      else if ((v10 & v9) != v6)
      {
        goto LABEL_21;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v11 = v8[1];
    if (v11 == a2)
    {
      break;
    }

    if (v11 >= *&v4)
    {
      v11 %= *&v4;
    }

    if (v11 != v6)
    {
      goto LABEL_21;
    }

LABEL_16:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_21;
    }
  }

  if (v8[2] != a2)
  {
    goto LABEL_16;
  }

LABEL_22:
  *&v12 = a3 + a2;
  *(&v12 + 1) = a3 + a2 + a4;
  std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100]((v8 + 3), &v12);
}

void sub_29CE93F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch::insertWrite(int8x8_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[36];
  if (!*&v4)
  {
    goto LABEL_21;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = a2;
    if (*&v4 <= a2)
    {
      v6 = a2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & a2;
  }

  v7 = *(*&a1[35] + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_21:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    v9 = *&v4 - 1;
    while (1)
    {
      v10 = v8[1];
      if (v10 == a2)
      {
        if (v8[2] == a2)
        {
          goto LABEL_22;
        }
      }

      else if ((v10 & v9) != v6)
      {
        goto LABEL_21;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v11 = v8[1];
    if (v11 == a2)
    {
      break;
    }

    if (v11 >= *&v4)
    {
      v11 %= *&v4;
    }

    if (v11 != v6)
    {
      goto LABEL_21;
    }

LABEL_16:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_21;
    }
  }

  if (v8[2] != a2)
  {
    goto LABEL_16;
  }

LABEL_22:
  *&v12 = a3 + a2;
  *(&v12 + 1) = a3 + a2 + a4;
  std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100]((v8 + 3), &v12);
}

void sub_29CE940D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::RayTracingGPUBuilderGen1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 72);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  *(a1 + 44) = 0;
  *(a1 + 49) = 0;
  *(a1 + 51) = 1;
  *(a1 + 292) = 0;
  *(a1 + 244) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 276) = 0u;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
  }

  v5 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen(void)::riaBvhGenOverride;
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen(void)::riaBvhGenOverride <= 0)
  {
    v5 = 3;
  }

  *(a1 + 44) = v5;
  if (v5 >= 2)
  {
    v6 = *(*a1 + 848);
    explicit = atomic_load_explicit((v6 + 17080), memory_order_acquire);
    if (!explicit)
    {
      os_unfair_lock_lock((v6 + 16920));
      explicit = *(v6 + 17080);
      if (!explicit)
      {
        explicit = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::newQtbTablesBuffer(a1);
        atomic_store(explicit, (v6 + 17080));
      }

      os_unfair_lock_unlock((v6 + 16920));
    }

    *(a1 + 24) = explicit;
  }

  *(*(a1 + 16) + 1961) = 1;
  if (*(*(*a1 + 848) + 7056) <= 0x1Eu)
  {
    v8 = 6;
  }

  else
  {
    v8 = 7;
  }

  *(a1 + 40) = v8;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getBuilderAlgorithm(void)::riaBvhGen = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen();
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getBuilderAlgorithm(void)::riaBvhGen == 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  *(a1 + 48) = v9;
  *(a1 + 49) = 1;
  *(a1 + 51) = 1;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::RayTracingGPUBuilderGen1(AGXG18PFamilyDevice *,AGXG18PFamilyComputeContext_mtlnext *,BOOL,BOOL)::skipResourceResidency = 0;
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::RayTracingGPUBuilderGen1(AGXG18PFamilyDevice *,AGXG18PFamilyComputeContext_mtlnext *,BOOL,BOOL)::skipResourceResidency == 1)
  {
    *(a1 + 51) = 0;
  }

  v10 = *(*a1 + 848);
  if (*(v10 + 15872) < 0x60uLL)
  {
    v13 = 0;
    goto LABEL_26;
  }

  os_unfair_lock_lock((v10 + 15884));
  v11 = *(v10 + 15880);
  if (!v11)
  {
    os_unfair_lock_unlock((v10 + 15884));
    goto LABEL_25;
  }

  v12 = v11 - 1;
  *(v10 + 15880) = v12;
  v13 = *(v10 + 8 * v12 + 15888);
  os_unfair_lock_unlock((v10 + 15884));
  if (!v13)
  {
LABEL_25:
    v13 = malloc_type_calloc(*(v10 + 15872), 1uLL, 0x689CC946uLL);
    goto LABEL_26;
  }

  bzero(v13, *(v10 + 15872));
LABEL_26:
  *v13 = 22;
  *(v13 + 2) = 0u;
  *(v13 + 3) = 0u;
  *(v13 + 4) = 0u;
  *(v13 + 73) = 0u;
  *(v13 + 1) = 0;
  *(v13 + 1) = 0;
  *&v14 = 0xB0000000B0;
  *(&v14 + 1) = 0xB0000000B0;
  *(v13 + 8) = v14;
  *(v13 + 3) = malloc_type_malloc(0xB0uLL, 0x29804BA5uLL);
  *(a1 + 32) = v13;
  return a1;
}

void sub_29CE943C0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));
  std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch>>::~vector[abi:nn200100]((v1 + 272));
  v5 = *(v1 + 248);
  if (v5)
  {
    *(v1 + 256) = v5;
    operator delete(v5);
    v6 = *(v1 + 224);
    if (!v6)
    {
LABEL_3:
      v7 = *(v1 + 200);
      if (!v7)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v6 = *(v1 + 224);
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 232) = v6;
  operator delete(v6);
  v7 = *(v1 + 200);
  if (!v7)
  {
LABEL_4:
    v8 = *(v1 + 176);
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v1 + 208) = v7;
  operator delete(v7);
  v8 = *(v1 + 176);
  if (!v8)
  {
LABEL_5:
    v9 = *(v1 + 152);
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v1 + 184) = v8;
  operator delete(v8);
  v9 = *(v1 + 152);
  if (!v9)
  {
LABEL_6:
    v10 = *(v1 + 128);
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v1 + 160) = v9;
  operator delete(v9);
  v10 = *(v1 + 128);
  if (!v10)
  {
LABEL_7:
    v11 = *(v1 + 104);
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v1 + 136) = v10;
  operator delete(v10);
  v11 = *(v1 + 104);
  if (!v11)
  {
LABEL_8:
    v12 = *(v1 + 80);
    if (!v12)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v1 + 112) = v11;
  operator delete(v11);
  v12 = *(v1 + 80);
  if (!v12)
  {
LABEL_9:
    v13 = *(v1 + 56);
    if (!v13)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v1 + 88) = v12;
  operator delete(v12);
  v13 = *(v1 + 56);
  if (!v13)
  {
LABEL_10:
    _Unwind_Resume(a1);
  }

LABEL_19:
  *(v1 + 64) = v13;
  operator delete(v13);
  _Unwind_Resume(a1);
}

uint64_t AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen()
{
  {
    if (v3)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
    }
  }

  v1 = v0[292];
  if (v1 <= 0)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

void **std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch>>::~vector[abi:nn200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::~DeferredBatch(v3 - 41);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

AGX::BVHDescriptor *AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::newBVHDescriptor(AGX::BVHDescriptor *a1, void *a2, MTLAccelerationStructureDescriptor *a3)
{
  v3 = a3;
  v4 = a2;
  {
    v20 = a1;
    v18 = a3;
    v4 = a2;
    v3 = v18;
    v12 = v11;
    a1 = v20;
    if (v12)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
      a1 = v20;
      v4 = a2;
      v3 = v18;
    }
  }

  v6 = v5[292];
  {
    v21 = a1;
    v19 = v3;
    v17 = v4;
    v15 = v6;
    v6 = v15;
    v4 = v17;
    v3 = v19;
    v14 = v13;
    a1 = v21;
    if (v14)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getBuilderAlgorithm(void)::riaBvhGen = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen();
      v6 = v15;
      a1 = v21;
      v4 = v17;
      v3 = v19;
    }
  }

  if (v6 <= 0)
  {
    v8 = 3;
  }

  else
  {
    v8 = v6;
  }

  if (v7[680] == 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  return AGX::BVHDescriptor::BVHDescriptor(a1, v8, v9, v4, v3);
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildAndEncodeRiaBvh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, MTLAccelerationStructureDescriptor *a6, void *a7, void *a8)
{
  v11 = a1;
  __src[113] = *MEMORY[0x29EDCA608];
  v993 = 0u;
  v994 = 0u;
  v991 = 0u;
  v992 = 0u;
  if ((*(a2 + 18) & 0xFE) == 6 && (*(a2 + 112) - 3) >= 2)
  {
    v12 = [(MTLAccelerationStructureDescriptor *)a6 instancedAccelerationStructures];
    v13 = [v12 count];
    v14 = v13;
    if (v13 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v13;
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(__src, v11, 8 * v15, 0);
    if (v14)
    {
      v16 = 0;
      v17 = __src[1];
      do
      {
        v18 = [v12 objectAtIndexedSubscript:v16];
        v19 = [objc_msgSend(v18 "buffer")];
        v17[v16++] = [v18 bufferOffset] + v19;
      }

      while (v14 != v16);
    }

    v993 = *__src;
    v994 = *&__src[2];
    v20 = [v12 count];
    if ([v12 count] < 2)
    {
      v21 = 4;
    }

    else
    {
      v21 = 4 * [v12 count];
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(__src, a1, v21, 0);
    if (v20)
    {
      v22 = 0;
      v23 = __src[1];
      do
      {
        v23[v22] = *([v12 objectAtIndexedSubscript:v22] + 360);
        ++v22;
      }

      while (v20 != v22);
    }

    v991 = *__src;
    v992 = *&__src[2];
    v11 = a1;
  }

  if (*(v11 + 49) == 1)
  {
    v25 = *(v11 + 272);
    v24 = *(v11 + 280);
    if (v25 == v24)
    {
      __src[40] = 0;
      memset(__src, 0, 272);
      __src[34] = 1065353216;
      memset(&__src[35], 0, 32);
      __src[39] = 1065353216;
      if (v25 >= *(v11 + 288))
      {
        v26 = std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch>>::__emplace_back_slow_path<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch>((v11 + 272), __src);
      }

      else
      {
        v26 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::DeferredBatch(v24, __src) + 328;
      }

      *(v11 + 280) = v26;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::~DeferredBatch(__src);
      v25 = *(v11 + 272);
    }
  }

  else
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(*(v11 + 16));
    v25 = 0;
  }

  v957 = v25;
  v958 = [a5 accelerationStructureUniqueIdentifier];
  *v989 = 0u;
  v990 = 0u;
  v27 = *(a2 + 40);
  v28 = *(a2 + 18);
  if (v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = *(a2 + 17) == 2;
  }

  v30 = !v29 || v27 == 0;
  v31 = !v30;
  v963 = v31;
  if (!v30)
  {
    v32 = 4 * v27;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v989, a1, 4 * v27, 1);
    bzero(v989[1], v32);
  }

  v33 = *(a2 + 4);
  if (**MEMORY[0x29EDC56B0])
  {
    AGX::BVHDescriptor::bvhBuildFlags(a2);
    IOGPUDeviceTraceEvent();
  }

  if (v33 == 2)
  {
    v50 = [a5 buffer];
    v51 = [a5 bufferOffset];
    v52 = [v50 gpuAddress];
    *(a3 + 32) = [v50 length];
    *(a3 + 40) = a7;
    *(a3 + 48) = a8;
    *(a3 + 56) = v51;
    *(a3 + 64) = 0;
    v53 = *(a3 + 80);
    if (v53 <= *(a3 + 96))
    {
      v53 = *(a3 + 96);
    }

    if (v53 <= *(a3 + 112))
    {
      v53 = *(a3 + 112);
    }

    if (v53 <= *(a3 + 128))
    {
      v53 = *(a3 + 128);
    }

    *(a3 + 16) = (v53 + 63) & 0xFFFFFFFFFFFFFFC0;
    *(a3 + 24) = v52;
    *a3 = 1;
    [objc_msgSend(a5 "buffer")];
    [a5 bufferOffset];
    [a5 size];
    v54 = *(a2 + 18) & 0xFE;
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getVersionToEncode(BOOL,BOOL,BOOL)::gen = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen();
    }

    v55 = v54 == 6;
    v56 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhVersions[AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getVersionToEncode(BOOL,BOOL,BOOL)::gen];
    if (v963)
    {
      v57 = 0x20000000;
    }

    else
    {
      v57 = 0;
    }

    v58 = [a5 buffer];
    v59 = [a5 bufferOffset];
    v60 = [v58 gpuAddress];
    [v58 length];
    v61 = [v58 length];
    v954 = *(a2 + 32);
    v964 = *(a2 + 164);
    memset(v981, 0, 24);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v981, a1, 904, 1);
    v62 = *v981;
    v950 = *&v981[8];
    v952 = *&v981[16];
    bzero(*v981, 0x388uLL);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(v995, a1, a6, a2, &v993, &v991, v62, a4, v989);
    v63 = 0;
    v64 = v57 & 0xE0000000 | (v55 << 31) | v56 & 0x1FFFFFFF;
    v65 = v60 + v59;
    v66 = v61 - v59;
    if (*(a2 + 40))
    {
      v67 = v958;
      v68 = v964;
      v69 = 0;
      v70 = 0;
      if (*(a2 + 18))
      {
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v74 = 0;
      }

      else
      {
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v74 = 0;
        if (*(a2 + 17) == 2)
        {
          v63 = v989[0];
          v75 = *(a4 + 704);
          v76 = *(a4 + 716);
          v77 = *(v75 + 16 * v76 + 24);
          if (*(a4 + 712) == 4)
          {
            v78 = *(v75 + 16);
          }

          else
          {
            v78 = 0;
          }

          v199 = *(v75 + 8 * v76 + 56);
          v200 = *(a4 + 768);
          v201 = *(a4 + 780);
          v202 = *(v200 + 16 * v201 + 24);
          if (*(a4 + 776) == 4)
          {
            v203 = *(v200 + 16);
          }

          else
          {
            v203 = 0;
          }

          v204 = *(v200 + 8 * v201 + 56);
          v205 = *(a4 + 800);
          v206 = *(a4 + 812);
          v207 = *(v205 + 16 * v206 + 24);
          if (*(a4 + 808) == 4)
          {
            v208 = *(v205 + 16);
          }

          else
          {
            v208 = 0;
          }

          v209 = *(v205 + 8 * v206 + 56);
          v210 = *(a4 + 832);
          v211 = *(a4 + 844);
          v212 = *(v210 + 16 * v211 + 24);
          if (*(a4 + 840) == 4)
          {
            v213 = *(v210 + 16);
          }

          else
          {
            v213 = 0;
          }

          v214 = v78 + v77;
          v215 = v199 + *(a4 + 720);
          v216 = v208 + v207;
          v217 = *(v210 + 8 * v211 + 56) + *(a4 + 848);
          v218 = *(a4 + 864);
          if (*(a4 + 872) == 4)
          {
            v219 = *(v218 + 16);
          }

          else
          {
            v219 = 0;
          }

          v69 = (v214 + v215);
          v70 = (v203 + v202 + v204 + *(a4 + 784));
          v71 = (v216 + v209 + *(a4 + 816));
          v72 = (v213 + v212 + v217);
          v73 = (v219 + *(v218 + 16 * *(a4 + 876) + 24) + *(v218 + 8 * *(a4 + 876) + 56) + *(a4 + 880));
          v220 = *(a4 + 736);
          if (*(a4 + 744) == 4)
          {
            v221 = *(v220 + 16);
          }

          else
          {
            v221 = 0;
          }

          v74 = v221 + *(v220 + 16 * *(a4 + 748) + 24) + *(v220 + 8 * *(a4 + 748) + 56) + *(a4 + 752);
        }
      }
    }

    else
    {
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v67 = v958;
      v68 = v964;
    }

    v222 = *(v62 + 76) & 0xFFF7 | (8 * ((((*(a2 + 15) >> 4) & ~(*(a2 + 15) >> 5)) >> 3) & 1));
    *(v62 + 76) = *(v62 + 76) & 0xFFF7 | (8 * ((((*(a2 + 15) >> 4) & ~(*(a2 + 15) >> 5)) >> 3) & 1));
    *v62 = v67;
    *(v62 + 4) = v64;
    *(v62 + 30) = v65;
    *(v62 + 31) = v66;
    v223 = *(a4 + 352);
    if (*(a4 + 360) == 4)
    {
      v224 = *(v223 + 16);
    }

    else
    {
      v224 = 0;
    }

    v225 = *(a4 + 376);
    *(v62 + 32) = v224 + *(v223 + 16 * *(a4 + 364) + 24) + *(v223 + 8 * *(a4 + 364) + 56) + *(a4 + 368);
    *(v62 + 33) = v225;
    v226 = *(a4 + 384);
    if (*(a4 + 392) == 4)
    {
      v227 = *(v226 + 16);
    }

    else
    {
      v227 = 0;
    }

    v228 = *(a4 + 408) >> 2;
    *(v62 + 34) = v227 + *(v226 + 16 * *(a4 + 396) + 24) + *(v226 + 8 * *(a4 + 396) + 56) + *(a4 + 400);
    *(v62 + 140) = v228;
    v229 = *(a4 + 96);
    if (*(a4 + 104) == 4)
    {
      v230 = *(v229 + 16);
    }

    else
    {
      v230 = 0;
    }

    v231 = *(a4 + 120);
    *(v62 + 48) = v230 + *(v229 + 16 * *(a4 + 108) + 24) + *(v229 + 8 * *(a4 + 108) + 56) + *(a4 + 112);
    *(v62 + 49) = v231;
    v232 = *(a4 + 128);
    if (*(a4 + 136) == 4)
    {
      v233 = *(v232 + 16);
    }

    else
    {
      v233 = 0;
    }

    v234 = *(a4 + 152);
    *(v62 + 89) = v233 + *(v232 + 16 * *(a4 + 140) + 24) + *(v232 + 8 * *(a4 + 140) + 56) + *(a4 + 144);
    *(v62 + 90) = v234;
    v235 = *(a4 + 160);
    if (*(a4 + 168) == 4)
    {
      v236 = *(v235 + 16);
    }

    else
    {
      v236 = 0;
    }

    v237 = *(a4 + 184);
    *(v62 + 91) = v236 + *(v235 + 16 * *(a4 + 172) + 24) + *(v235 + 8 * *(a4 + 172) + 56) + *(a4 + 176);
    *(v62 + 92) = v237;
    if (*(a2 + 16))
    {
      v238 = *(a4 + 192);
      if (*(a4 + 200) == 4)
      {
        v239 = *(v238 + 16);
      }

      else
      {
        v239 = 0;
      }

      v240 = *(a4 + 216) >> 2;
      *(v62 + 93) = v239 + *(v238 + 16 * *(a4 + 204) + 24) + *(v238 + 8 * *(a4 + 204) + 56) + *(a4 + 208);
      *(v62 + 188) = v240;
      v241 = *(a4 + 224);
      if (*(a4 + 232) == 4)
      {
        v242 = *(v241 + 16);
      }

      else
      {
        v242 = 0;
      }

      v243 = *(a4 + 248) >> 2;
      *(v62 + 95) = v242 + *(v241 + 16 * *(a4 + 236) + 24) + *(v241 + 8 * *(a4 + 236) + 56) + *(a4 + 240);
      *(v62 + 192) = v243;
      v244 = *(a4 + 256);
      if (*(a4 + 264) == 4)
      {
        v245 = *(v244 + 16);
      }

      else
      {
        v245 = 0;
      }

      v246 = *(a4 + 280) >> 2;
      *(v62 + 97) = v245 + *(v244 + 16 * *(a4 + 268) + 24) + *(v244 + 8 * *(a4 + 268) + 56) + *(a4 + 272);
      *(v62 + 196) = v246;
      v247 = *(a4 + 288);
      if (*(a4 + 296) == 4)
      {
        v248 = *(v247 + 16);
      }

      else
      {
        v248 = 0;
      }

      v249 = *(a4 + 312) >> 3;
      *(v62 + 99) = v248 + *(v247 + 16 * *(a4 + 300) + 24) + *(v247 + 8 * *(a4 + 300) + 56) + *(a4 + 304);
      *(v62 + 200) = v249;
    }

    v250 = *(a4 + 320);
    if (*(a4 + 328) == 4)
    {
      v251 = *(v250 + 16);
    }

    else
    {
      v251 = 0;
    }

    v252 = *(a4 + 344) >> 7;
    *(v62 + 101) = v251 + *(v250 + 16 * *(a4 + 332) + 24) + *(v250 + 8 * *(a4 + 332) + 56) + *(a4 + 336);
    *(v62 + 408) = v252;
    v253 = *(a4 + 448);
    if (*(a4 + 456) == 4)
    {
      v254 = *(v253 + 16);
    }

    else
    {
      v254 = 0;
    }

    v255 = *(a4 + 472) / 0x18u;
    *(v62 + 105) = v254 + *(v253 + 16 * *(a4 + 460) + 24) + *(v253 + 8 * *(a4 + 460) + 56) + *(a4 + 464);
    *(v62 + 212) = v255;
    v256 = *(a4 + 416);
    v969 = v72;
    v960 = v73;
    v949 = v74;
    if (*(a4 + 424) == 4)
    {
      v257 = *(v256 + 16);
    }

    else
    {
      v257 = 0;
    }

    v258 = v954 + v68;
    v259 = *(a4 + 440) >> 2;
    *(v62 + 111) = v257 + *(v256 + 16 * *(a4 + 428) + 24) + *(v256 + 8 * *(a4 + 428) + 56) + *(a4 + 432);
    *(v62 + 448) = v259;
    *(v62 + 76) = v222 & 0xFBFF | (2 * *(a2 + 15)) & 0x400;
    {
      v68 = v964;
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupBuildMediumBVH(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,unsigned int,unsigned long long,MTL4BufferRange,unsigned long long)::printLeafHandlesPerNode = 0;
        v68 = v964;
      }
    }

    v260 = v70;
    v261 = v258 - 1;
    {
      v68 = v964;
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupBuildMediumBVH(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,unsigned int,unsigned long long,MTL4BufferRange,unsigned long long)::validateLeafHandlesPerNode = 0;
        v68 = v964;
      }
    }

    v262 = v261 / v68;
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupBuildMediumBVH(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,unsigned int,unsigned long long,MTL4BufferRange,unsigned long long)::forceSimpleSubtreeDivision = 0;
    }

    *(v62 + 76) = *(v62 + 76) & 0xFFFB | (4 * (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupBuildMediumBVH(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,unsigned int,unsigned long long,MTL4BufferRange,unsigned long long)::forceSimpleSubtreeDivision & 1));
    *(v62 + 80) = 0;
    v263 = *(a2 + 15);
    v264 = a1;
    if ((v263 & 0x80) != 0)
    {
      v265 = *(a4 + 352);
      v266 = *(a4 + 360) == 4 ? *(v265 + 16) : 0;
      v267 = *(a4 + 376) / 0x1Cu;
      *(v62 + 53) = v266 + *(v265 + 16 * *(a4 + 364) + 24) + *(v265 + 8 * *(a4 + 364) + 56) + *(a4 + 368);
      *(v62 + 108) = v267;
      v268 = *(a4 + 512);
      v269 = *(a4 + 520) == 4 ? *(v268 + 16) : 0;
      v270 = *(a4 + 536) >> 1;
      *(v62 + 55) = v269 + *(v268 + 16 * *(a4 + 524) + 24) + *(v268 + 8 * *(a4 + 524) + 56) + *(a4 + 528);
      *(v62 + 112) = v270;
      v271 = *(a4 + 544);
      v272 = *(a4 + 552) == 4 ? *(v271 + 16) : 0;
      *(v62 + 74) = v272 + *(v271 + 16 * *(a4 + 556) + 24) + *(v271 + 8 * *(a4 + 556) + 56) + *(a4 + 560);
      *(v62 + 150) = 2 * v262 - 1;
      v263 = *(a2 + 15);
      if ((v263 & 0x100) == 0)
      {
        v273 = *(a4 + 576);
        v274 = *(a4 + 588);
        v275 = v273 + 16 * v274;
        v278 = *(v275 + 24);
        v276 = (v275 + 24);
        v277 = v278;
        v279 = *(a4 + 584);
        if (v279 == 4)
        {
          v280 = *(v273 + 16);
        }

        else
        {
          v280 = 0;
        }

        v321 = v273 + 56;
        v322 = v280 + *(v273 + 56 + 8 * v274) + v277 + *(a4 + 592);
        v323 = *(a4 + 600) >> 2;
        if (v323 >= (*(a2 + 32) + 1023) >> 10)
        {
          v323 = (*(a2 + 32) + 1023) >> 10;
        }

        *(v62 + 76) = v322;
        *(v62 + 154) = v323;
        v324 = *v276;
        if (v279 == 4)
        {
          v325 = *(v273 + 16);
        }

        else
        {
          v325 = 0;
        }

        v326 = v325 + *(v321 + 8 * v274) + v324 + *(a4 + 592);
        v327 = *(a4 + 600) / 0x60u;
        *(v62 + 78) = v326;
        *(v62 + 158) = v327;
        v328 = *(a4 + 608);
        if (*(a4 + 616) == 4)
        {
          v329 = *(v328 + 16);
        }

        else
        {
          v329 = 0;
        }

        v330 = *(a4 + 632) / 0x5A0u;
        *(v62 + 82) = v329 + *(v328 + 16 * *(a4 + 620) + 24) + *(v328 + 8 * *(a4 + 620) + 56) + *(a4 + 624);
        *(v62 + 166) = v330;
        v331 = *(a4 + 640);
        if (*(a4 + 648) == 4)
        {
          v332 = *(v331 + 16);
        }

        else
        {
          v332 = 0;
        }

        *(v62 + 86) = v332 + *(v331 + 16 * *(a4 + 652) + 24) + *(v331 + 8 * *(a4 + 652) + 56) + *(a4 + 656);
        *(v62 + 174) = v262;
        v263 = *(a2 + 15);
      }
    }

    if ((~v263 & 0x280) != 0)
    {
      v335 = *(a4 + 480);
      if (*(a4 + 488) == 4)
      {
        v336 = *(v335 + 16);
      }

      else
      {
        v336 = 0;
      }

      v337 = v336 + *(v335 + 16 * *(a4 + 492) + 24) + *(v335 + 8 * *(a4 + 492) + 56) + *(a4 + 496);
      v338 = *(a4 + 504) >> 2;
    }

    else
    {
      v333 = *(a4 + 544);
      if (*(a4 + 552) == 4)
      {
        v334 = *(v333 + 16);
      }

      else
      {
        v334 = 0;
      }

      v337 = v334 + *(v333 + 16 * *(a4 + 556) + 24) + *(v333 + 8 * *(a4 + 556) + 56) + *(a4 + 560);
      v338 = v261 / v68;
    }

    *(v62 + 103) = v337;
    *(v62 + 416) = v338;
    v339 = *(a4 + 672);
    if (*(a4 + 680) == 4)
    {
      v340 = *(v339 + 16);
    }

    else
    {
      v340 = 0;
    }

    *(v62 + 84) = v340 + *(v339 + 16 * *(a4 + 684) + 24) + *(v339 + 8 * *(a4 + 684) + 56) + *(a4 + 688);
    *(v62 + 340) = 14;
    *(v62 + 86) = v262;
    *(v62 + 348) = 0;
    v1002[0] = 0uLL;
    {
      v264 = a1;
      if (v875)
      {
        {
        }

        {
        }

        if (shouldDumpOrVerifyBVHs(void)::once != -1)
        {
          dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
        }

        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupBuildMediumBVH(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,unsigned int,unsigned long long,MTL4BufferRange,unsigned long long)::verify = 0;
        v264 = a1;
      }
    }

    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupBuildMediumBVH(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,unsigned int,unsigned long long,MTL4BufferRange,unsigned long long)::verify == 1)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v981, v264, 0x480188uLL, 1);
      v341 = *v981;
      v342 = *&v981[8];
      v1002[0] = *&v981[16];
      bzero(*&v981[8], 0x480188uLL);
      v342[1] = -1;
      v343 = **(a1 + 16);
      *v981 = MEMORY[0x29EDCA5F8];
      *&v981[8] = 3221225472;
      *&v981[16] = ___ZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE19setupBuildMediumBVHEP34MTLAccelerationStructureDescriptorRKNS_13BVHDescriptorEP44AGXG18PFamilyRayTracingAccelerationStructureRKNS6_13BuilderBufferESG_RKNS6_15PLOCScratchInfoESG_jy15MTL4BufferRangey_block_invoke;
      *&v981[24] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
      *&v981[32] = v342;
      [v343 addCompletedHandler:v981];
    }

    else
    {
      v342 = 0;
      v341 = 0;
    }

    v344 = *(a2 + 176);
    *&__src[32] = *(a2 + 160);
    *&__src[34] = v344;
    __src[36] = *(a2 + 192);
    v345 = *(a2 + 112);
    *&__src[24] = *(a2 + 96);
    *&__src[26] = v345;
    v346 = *(a2 + 128);
    *&__src[30] = *(a2 + 144);
    *&__src[28] = v346;
    v347 = *(a2 + 48);
    *&__src[16] = *(a2 + 32);
    *&__src[18] = v347;
    v348 = *(a2 + 64);
    *&__src[22] = *(a2 + 80);
    *&__src[20] = v348;
    v349 = *a2;
    *&__src[14] = *(a2 + 16);
    *&__src[12] = v349;
    *&__src[38] = *v995;
    *&__src[40] = *&v995[16];
    __src[0] = v950;
    __src[1] = v62;
    __src[2] = 904;
    __src[3] = v952;
    __src[4] = v63;
    __src[5] = v69;
    __src[6] = v260;
    __src[7] = v71;
    __src[8] = v969;
    __src[9] = v960;
    *&__src[10] = v949;
    v350 = a5;
    __src[37] = v350;
    __src[42] = v341;
    __src[43] = v342;
    *&__src[44] = v1002[0];
    __src[46] = a7;
    __src[47] = 0;
    *&__src[48] = a8;
    v294 = a1;
    if (*(a1 + 49) != 1)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(a1, __src, 1);
      v307 = __src[37];
      goto LABEL_1144;
    }

    v352 = *(v957 + 32);
    v351 = *(v957 + 40);
    if (v352 >= v351)
    {
      v358 = *(v957 + 24);
      v359 = 0x8F5C28F5C28F5C29 * ((v352 - v358) >> 4) + 1;
      if (v359 > 0xA3D70A3D70A3D7)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v360 = 0x8F5C28F5C28F5C29 * ((v351 - v358) >> 4);
      if (2 * v360 > v359)
      {
        v359 = 2 * v360;
      }

      if (v360 >= 0x51EB851EB851EBLL)
      {
        v361 = 0xA3D70A3D70A3D7;
      }

      else
      {
        v361 = v359;
      }

      if (v361)
      {
        if (v361 <= 0xA3D70A3D70A3D7)
        {
          operator new();
        }

        goto LABEL_1238;
      }

      v558 = 16 * ((v352 - v358) >> 4);
      memcpy(v558, __src, 0x124uLL);
      __src[37] = 0;
      *(v558 + 296) = v350;
      v559 = *&__src[44];
      *(v558 + 336) = *&__src[42];
      *(v558 + 352) = v559;
      v560 = *&__src[48];
      *(v558 + 368) = *&__src[46];
      *(v558 + 384) = v560;
      v561 = *&__src[40];
      v357 = v558 + 400;
      v562 = v558 - (v352 - v358);
      *(v558 + 304) = *&__src[38];
      *(v558 + 320) = v561;
      if (v358 != v352)
      {
        v563 = v358;
        v564 = v558 - (v352 - v358);
        do
        {
          memcpy(v564, v563, 0x124uLL);
          v565 = v563[37];
          v563[37] = 0;
          *(v564 + 296) = v565;
          v566 = *(v563 + 21);
          v567 = *(v563 + 22);
          v568 = *(v563 + 24);
          *(v564 + 368) = *(v563 + 23);
          *(v564 + 384) = v568;
          *(v564 + 336) = v566;
          *(v564 + 352) = v567;
          v569 = *(v563 + 20);
          *(v564 + 304) = *(v563 + 19);
          *(v564 + 320) = v569;
          v563 += 50;
          v564 += 400;
        }

        while (v563 != v352);
        do
        {

          v358 += 50;
        }

        while (v358 != v352);
        v358 = *(v957 + 24);
      }

      *(v957 + 24) = v562;
      *(v957 + 32) = v357;
      *(v957 + 40) = 0;
      if (v358)
      {
        operator delete(v358);
      }
    }

    else
    {
      memcpy(*(v957 + 32), __src, 0x124uLL);
      __src[37] = 0;
      *(v352 + 296) = v350;
      v353 = *&__src[42];
      v354 = *&__src[44];
      v355 = *&__src[48];
      *(v352 + 368) = *&__src[46];
      *(v352 + 384) = v355;
      *(v352 + 336) = v353;
      *(v352 + 352) = v354;
      v356 = *&__src[40];
      *(v352 + 304) = *&__src[38];
      *(v352 + 320) = v356;
      v357 = v352 + 400;
    }

    *(v957 + 32) = v357;
    v307 = __src[37];
    goto LABEL_1144;
  }

  if (v33 == 1)
  {
    v34 = [a5 buffer];
    v35 = [a5 bufferOffset];
    v36 = [v34 gpuAddress];
    *(a3 + 32) = [v34 length];
    *(a3 + 40) = a7;
    *(a3 + 48) = a8;
    *(a3 + 56) = v35;
    *(a3 + 64) = 0;
    v37 = *(a3 + 80);
    if (v37 <= *(a3 + 96))
    {
      v37 = *(a3 + 96);
    }

    if (v37 <= *(a3 + 112))
    {
      v37 = *(a3 + 112);
    }

    if (v37 <= *(a3 + 128))
    {
      v37 = *(a3 + 128);
    }

    *(a3 + 16) = (v37 + 63) & 0xFFFFFFFFFFFFFFC0;
    *(a3 + 24) = v36;
    *a3 = 1;
    [objc_msgSend(a5 "buffer")];
    [a5 bufferOffset];
    [a5 size];
    v38 = *(a2 + 18) & 0xFE;
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getVersionToEncode(BOOL,BOOL,BOOL)::gen = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen();
    }

    v39 = v38 == 6;
    v40 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhVersions[AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getVersionToEncode(BOOL,BOOL,BOOL)::gen];
    if (v963)
    {
      v41 = 0x20000000;
    }

    else
    {
      v41 = 0;
    }

    {
      {
      }

      {
      }

      if (shouldDumpOrVerifyBVHs(void)::once != -1)
      {
        dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
      }

      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupBuildSmallBVH(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,unsigned int,unsigned long long,MTL4BufferRange,unsigned long long)::verify = 0;
    }

    v42 = [a5 buffer];
    v43 = [a5 bufferOffset];
    v44 = [v42 length];
    v45 = [v42 gpuAddress];
    [v42 length];
    memset(__src, 0, 24);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(__src, a1, 128, 1);
    v46 = __src[0];
    v47 = __src[1];
    *(__src[0] + 2) = 0;
    *(v46 + 9) = 0;
    *(v46 + 6) = v45 + v43;
    *(v46 + 7) = v44 - v43;
    v48 = *a4;
    if (*(a4 + 8) == 4)
    {
      v49 = *(v48 + 16);
    }

    else
    {
      v49 = 0;
    }

    v98 = *(a4 + 24) / 0x18u;
    *(v46 + 8) = v49 + *(*a4 + 16 * *(a4 + 12) + 24) + *(v48 + 8 * *(a4 + 12) + 56) + *(a4 + 16);
    *(v46 + 36) = v98;
    v99 = *(a4 + 32);
    if (*(a4 + 40) == 4)
    {
      v100 = *(v99 + 16);
    }

    else
    {
      v100 = 0;
    }

    v101 = *(a4 + 56) / 0x18u;
    *(v46 + 10) = v100 + *(v99 + 16 * *(a4 + 44) + 24) + *(v99 + 8 * *(a4 + 44) + 56) + *(a4 + 48);
    *(v46 + 44) = v101;
    v102 = *(a4 + 64);
    if (*(a4 + 72) == 4)
    {
      v103 = *(v102 + 16);
    }

    else
    {
      v103 = 0;
    }

    v104 = *(a4 + 88) >> 4;
    *(v46 + 12) = v103 + *(v102 + 16 * *(a4 + 76) + 24) + *(v102 + 8 * *(a4 + 76) + 56) + *(a4 + 80);
    *(v46 + 52) = v104;
    v105 = *(a4 + 128);
    v106 = *(a4 + 140);
    v107 = *(v105 + 16 * v106 + 24);
    if (*(a4 + 136) == 4)
    {
      v108 = *(v105 + 16);
    }

    else
    {
      v108 = 0;
    }

    v109 = 0;
    v110 = *(v105 + 8 * v106 + 56);
    v111 = v108 + v107;
    v112 = *(a4 + 152);
    *(v46 + 14) = v111 + v110 + *(a4 + 144);
    *(v46 + 15) = v112;
    *v46 = 0;
    *(v46 + 10) = 16;
    __src[0] = v958;
    __src[1] = 0;
    LODWORD(__src[2]) = v41 & 0xE0000000 | (v39 << 31) | v40 & 0x1FFFFFFF;
    HIDWORD(__src[8]) = 0;
    LOBYTE(__src[9]) = 0;
    LODWORD(__src[10]) = 0;
    HIDWORD(__src[9]) = 0;
    __src[14] = 0;
    LODWORD(__src[15]) = 0;
    __src[16] = 0;
    LODWORD(__src[17]) = 0;
    __src[18] = 0;
    *(&__src[2] + 4) = 0u;
    *(&__src[4] + 4) = 0u;
    WORD2(__src[6]) = 0;
    __src[7] = 0;
    *(&__src[7] + 7) = 0;
    memset(&__src[11], 0, 20);
    LOWORD(__src[19]) &= 0x8000u;
    HIDWORD(__src[21]) = 0;
    LOBYTE(__src[22]) = 0;
    *(&__src[19] + 4) = 0;
    *(&__src[20] + 2) = 0;
    *(&__src[22] + 4) = 0u;
    *(&__src[24] + 4) = 0u;
    *(&__src[26] + 4) = 0u;
    *(&__src[28] + 4) = 0;
    *&__src[30] = *(v46 + 3);
    __src[55] = 0;
    LODWORD(__src[56]) = 0;
    __src[76] = 0;
    LODWORD(__src[77]) = 0;
    __src[78] = 0;
    LODWORD(__src[79]) = 0;
    memset(&__src[32], 0, 26);
    memset(&__src[36], 0, 92);
    memset(&__src[48], 0, 52);
    memset(&__src[57], 0, 148);
    memset(&__src[80], 0, 28);
    v113 = *(a4 + 672);
    if (*(a4 + 680) == 4)
    {
      v109 = *(v113 + 16);
    }

    __src[84] = (v109 + *(v113 + 16 * *(a4 + 684) + 24) + *(v113 + 8 * *(a4 + 684) + 56) + *(a4 + 688));
    LOWORD(__src[85]) = 2;
    __src[86] = 0;
    LODWORD(__src[87]) = 0;
    LODWORD(__src[88]) = 0;
    __src[95] = 0;
    LODWORD(__src[96]) = 0;
    __src[97] = 0;
    LODWORD(__src[98]) = 0;
    __src[99] = 0;
    LODWORD(__src[100]) = 0;
    memset(&__src[89], 0, 44);
    __src[101] = v47;
    LOWORD(__src[102]) = 1;
    __src[103] = 0;
    LOWORD(__src[104]) = 0;
    __src[105] = 0;
    LODWORD(__src[106]) = 0;
    __src[107] = 0;
    LODWORD(__src[108]) = 0;
    __src[109] = 0;
    LODWORD(__src[110]) = 0;
    __src[111] = 0;
    LOWORD(__src[112]) = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setBottomUpBVHBuildParams(v1002, a1, a6, a2, &v993, &v991, __src, a4, v989);
    v114 = 0;
    *(v46 + 28) = __src[3];
    *(v46 + 12) = 0;
    *(v46 + 8) = WORD2(__src[2]);
    if (!*(a2 + 40) || *(a2 + 18))
    {
      v115 = 0;
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
    }

    else
    {
      v115 = 0;
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      if (*(a2 + 17) == 2)
      {
        v121 = *(a4 + 704);
        if (*(a4 + 712) == 4)
        {
          v122 = *(v121 + 16);
        }

        else
        {
          v122 = 0;
        }

        v168 = *(a4 + 716);
        v169 = *(a4 + 768);
        v170 = *(a4 + 780);
        if (*(a4 + 776) == 4)
        {
          v171 = *(v169 + 16);
        }

        else
        {
          v171 = 0;
        }

        v172 = v121 + 16 * v168;
        v173 = v121 + 8 * v168;
        v174 = v169 + 16 * v170;
        v175 = v169 + 8 * v170;
        v176 = *(a4 + 800);
        v177 = *(a4 + 812);
        if (*(a4 + 808) == 4)
        {
          v178 = *(v176 + 16);
        }

        else
        {
          v178 = 0;
        }

        v179 = *(v172 + 24);
        v180 = *(v173 + 56);
        v181 = *(v174 + 24);
        v182 = *(v175 + 56);
        v183 = *(v176 + 16 * v177 + 24);
        v184 = *(v176 + 8 * v177 + 56);
        v185 = *(a4 + 832);
        v186 = *(a4 + 844);
        v187 = *(v185 + 16 * v186 + 24);
        if (*(a4 + 840) == 4)
        {
          v188 = *(v185 + 16);
        }

        else
        {
          v188 = 0;
        }

        v189 = v122 + v179;
        v190 = v180 + *(a4 + 720);
        v191 = v171 + v181;
        v192 = v182 + *(a4 + 784);
        v193 = v178 + v183;
        v194 = *(v185 + 8 * v186 + 56) + *(a4 + 848);
        v195 = *(a4 + 864);
        if (*(a4 + 872) == 4)
        {
          v196 = *(v195 + 16);
        }

        else
        {
          v196 = 0;
        }

        v114 = v989[0];
        v115 = v189 + v190;
        v116 = v191 + v192;
        v117 = v193 + v184 + *(a4 + 816);
        v118 = v188 + v187 + v194;
        v119 = v196 + *(v195 + 16 * *(a4 + 876) + 24) + *(v195 + 8 * *(a4 + 876) + 56) + *(a4 + 880);
        v197 = *(a4 + 736);
        if (*(a4 + 744) == 4)
        {
          v198 = *(v197 + 16);
        }

        else
        {
          v198 = 0;
        }

        v120 = v198 + *(v197 + 16 * *(a4 + 748) + 24) + *(v197 + 8 * *(a4 + 748) + 56) + *(a4 + 752);
      }
    }

    v956 = v119;
    v961 = v118;
    v965 = v117;
    *v970 = v116;
    v1001 = 0uLL;
    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupBuildSmallBVH(MTLAccelerationStructureDescriptor *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::PLOCScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,unsigned int,unsigned long long,MTL4BufferRange,unsigned long long)::verify == 1)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v995, a1, 0x480188uLL, 1);
      v281 = *v995;
      v282 = *&v995[8];
      v1001 = *&v995[16];
      bzero(*&v995[8], 0x480188uLL);
      *(v282 + 8) = -1;
      v283 = **(a1 + 16);
      *v995 = MEMORY[0x29EDCA5F8];
      *&v995[8] = 3221225472;
      *&v995[16] = ___ZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE18setupBuildSmallBVHEP34MTLAccelerationStructureDescriptorRKNS_13BVHDescriptorEP44AGXG18PFamilyRayTracingAccelerationStructureRKNS6_13BuilderBufferESG_RKNS6_15PLOCScratchInfoESG_jy15MTL4BufferRangey_block_invoke;
      *&v995[24] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
      v996 = v282;
      [v283 addCompletedHandler:v995];
    }

    else
    {
      v282 = 0;
      v281 = 0;
    }

    v998 = 0;
    __dst = 0;
    v999 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&__dst, a1, 904, 1);
    v284 = __dst;
    v285 = v998;
    v286 = v999;
    memcpy(__dst, __src, 0x388uLL);
    v287 = *(a2 + 176);
    *&v981[256] = *(a2 + 160);
    *&v981[272] = v287;
    *&v981[288] = *(a2 + 192);
    v288 = *(a2 + 112);
    *&v981[192] = *(a2 + 96);
    *&v981[208] = v288;
    v289 = *(a2 + 144);
    *&v981[224] = *(a2 + 128);
    *&v981[240] = v289;
    v290 = *(a2 + 48);
    *&v981[128] = *(a2 + 32);
    *&v981[144] = v290;
    v291 = *(a2 + 80);
    *&v981[160] = *(a2 + 64);
    *&v981[176] = v291;
    v292 = *(a2 + 16);
    *&v981[96] = *a2;
    *&v981[112] = v292;
    v983 = v1002[0];
    v984 = v1002[1];
    *v981 = v285;
    *&v981[8] = v284;
    *&v981[16] = 904;
    *&v981[24] = v286;
    *&v981[32] = v114;
    *&v981[40] = v115;
    *&v981[48] = *v970;
    *&v981[56] = v965;
    *&v981[64] = v961;
    *&v981[72] = v956;
    *&v981[80] = v120;
    *&v981[88] = 0;
    v293 = a5;
    v982 = v293;
    *&v985 = v281;
    *(&v985 + 1) = v282;
    v986 = v1001;
    v987 = a7;
    v988 = a8;
    v294 = a1;
    if (*(a1 + 49) != 1)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(a1, v981, 1uLL, 4u);
      v307 = v982;
      goto LABEL_1144;
    }

    v295 = *&v981[136] >= 0x101u || *&v981[128] >= 0x800001u;
    v296 = 1;
    if (v295)
    {
      v296 = 2;
    }

    if (*&v981[136] >= 0x11u || *&v981[128] >= 0x801u)
    {
      v298 = v296;
    }

    else
    {
      v298 = 0;
    }

    v299 = v957 + 24 * v298;
    v301 = *(v299 + 56);
    v300 = *(v299 + 64);
    if (v301 < v300)
    {
      memcpy(*(v299 + 56), v981, 0x124uLL);
      v982 = 0;
      *(v301 + 296) = v293;
      v302 = v985;
      v303 = v986;
      v304 = v988;
      *(v301 + 368) = v987;
      *(v301 + 384) = v304;
      *(v301 + 336) = v302;
      *(v301 + 352) = v303;
      v305 = v984;
      *(v301 + 304) = v983;
      *(v301 + 320) = v305;
      v306 = v301 + 400;
LABEL_623:
      *(v299 + 56) = v306;
      v307 = v982;
      goto LABEL_1144;
    }

    v317 = *(v299 + 48);
    v318 = 0x8F5C28F5C28F5C29 * ((v301 - v317) >> 4) + 1;
    if (v318 > 0xA3D70A3D70A3D7)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v319 = 0x8F5C28F5C28F5C29 * ((v300 - v317) >> 4);
    if (2 * v319 > v318)
    {
      v318 = 2 * v319;
    }

    if (v319 >= 0x51EB851EB851EBLL)
    {
      v320 = 0xA3D70A3D70A3D7;
    }

    else
    {
      v320 = v318;
    }

    if (!v320)
    {
      v570 = 16 * ((v301 - v317) >> 4);
      memcpy(v570, v981, 0x124uLL);
      v982 = 0;
      *(v570 + 296) = v293;
      v571 = v986;
      *(v570 + 336) = v985;
      *(v570 + 352) = v571;
      v572 = v988;
      *(v570 + 368) = v987;
      *(v570 + 384) = v572;
      v573 = v984;
      v306 = v570 + 400;
      v574 = v570 - (v301 - v317);
      *(v570 + 304) = v983;
      *(v570 + 320) = v573;
      if (v317 != v301)
      {
        v575 = v317;
        v576 = v570 - (v301 - v317);
        do
        {
          memcpy(v576, v575, 0x124uLL);
          v577 = v575[37];
          v575[37] = 0;
          *(v576 + 296) = v577;
          v578 = *(v575 + 21);
          v579 = *(v575 + 22);
          v580 = *(v575 + 24);
          *(v576 + 368) = *(v575 + 23);
          *(v576 + 384) = v580;
          *(v576 + 336) = v578;
          *(v576 + 352) = v579;
          v581 = *(v575 + 20);
          *(v576 + 304) = *(v575 + 19);
          *(v576 + 320) = v581;
          v575 += 50;
          v576 += 400;
        }

        while (v575 != v301);
        do
        {

          v317 += 50;
        }

        while (v317 != v301);
        v317 = *(v299 + 48);
      }

      *(v299 + 48) = v574;
      *(v299 + 56) = v306;
      *(v299 + 64) = 0;
      if (v317)
      {
        operator delete(v317);
      }

      goto LABEL_623;
    }

    if (v320 <= 0xA3D70A3D70A3D7)
    {
      operator new();
    }

LABEL_1238:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v1000 = 0uLL;
  v79 = a1;
  {
    v79 = a1;
    if (v874)
    {
      {
      }

      {
      }

      if (shouldDumpOrVerifyBVHs(void)::once != -1)
      {
        dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
      }

      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildAndEncodeRiaBvh(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::ScratchAllocator *,void const*,unsigned long long,unsigned long long,AGXG18PFamilyRayTracingAccelerationStructure *,MTLAccelerationStructureDescriptor *,MTL4BufferRange,unsigned long)::verify = 0;
      v79 = a1;
    }
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildAndEncodeRiaBvh(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::ScratchAllocator *,void const*,unsigned long long,unsigned long long,AGXG18PFamilyRayTracingAccelerationStructure *,MTLAccelerationStructureDescriptor *,MTL4BufferRange,unsigned long)::verify == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(__src, v79, 0x480188uLL, 1);
    v953 = __src[0];
    v80 = __src[1];
    v1000 = *&__src[2];
    bzero(__src[1], 0x480188uLL);
    v955 = v80;
    *(v80 + 1) = -1;
    v81 = [objc_msgSend(a5 "buffer")];
    v82 = [a5 bufferOffset] + v81;
    v83 = *(a2 + 32);
    v84 = **(a1 + 16);
    v979[0] = MEMORY[0x29EDCA5F8];
    v979[1] = 3221225472;
    v979[2] = ___ZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE26encodeBuildAndEncodeRiaBvhERKNS_13BVHDescriptorEPNS6_16ScratchAllocatorEPKvyyP44AGXG18PFamilyRayTracingAccelerationStructureP34MTLAccelerationStructureDescriptor15MTL4BufferRangem_block_invoke;
    v979[3] = &__block_descriptor_52_e28_v16__0___MTLCommandBuffer__8l;
    v980 = v83;
    v979[4] = v82;
    v979[5] = v955;
    [v84 addCompletedHandler:v979];
  }

  else
  {
    v953 = 0;
    v955 = 0;
  }

  v85 = (v28 & 0xFE) != 6;
  v86 = [a5 buffer];
  v87 = [a5 bufferOffset];
  v88 = [v86 gpuAddress];
  *(a3 + 32) = [v86 length];
  *(a3 + 40) = a7;
  *(a3 + 48) = a8;
  *(a3 + 56) = v87;
  *(a3 + 64) = 0;
  v89 = *(a3 + 80);
  if (v89 <= *(a3 + 96))
  {
    v89 = *(a3 + 96);
  }

  if (v89 <= *(a3 + 112))
  {
    v89 = *(a3 + 112);
  }

  if (v89 <= *(a3 + 128))
  {
    v89 = *(a3 + 128);
  }

  *(a3 + 16) = (v89 + 63) & 0xFFFFFFFFFFFFFFC0;
  *(a3 + 24) = v88;
  *a3 = 1;
  if (*(a2 + 52))
  {
    v90 = v85;
  }

  else
  {
    v90 = 1;
  }

  if (v90)
  {
    v91 = 0;
    v92 = 0;
    v959 = 0;
  }

  else
  {
    v93 = *(a4 + 1256);
    v94 = *(a4 + 1268);
    v95 = v93 + 16 * v94;
    v96 = *(v95 + 24);
    v91 = *(v95 + 32);
    if (*(a4 + 1264) == 4)
    {
      v97 = *(v93 + 16);
    }

    else
    {
      v97 = 0;
    }

    v92 = (*(v93 + 8 * v94 + 56) + v97 + *(a4 + 1272));
    v959 = &v92[v96];
  }

  [objc_msgSend(a5 "buffer")];
  [a5 bufferOffset];
  [a5 size];
  v123 = *(a4 + 1944);
  v124 = *(a4 + 1956);
  if (*(a4 + 1952) == 4)
  {
    v125 = *(v123 + 16);
  }

  else
  {
    v125 = 0;
  }

  v126 = *(v123 + 16 * v124 + 24);
  v127 = *(v123 + 8 * v124 + 56);
  v128 = *(a4 + 1960);
  memset(__src, 0, 24);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(__src, a1, 4, 0);
  *__src[0] = 6;
  v129 = *(*(a1 + 32) + 24) + *(*(a1 + 32) + 4);
  *v129 = __src[1];
  *(v129 + 8) = v125 + v126 + v127 + v128;
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 130, 0);
  v131 = *(Pipeline + 456);
  *v981 = xmmword_29D2F1C70;
  *&v981[16] = 1;
  *v995 = v131;
  *&v995[8] = vdupq_n_s64(1uLL);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), *(a1 + 32), Pipeline, v981, v995);
  __src[0] = v959;
  __src[1] = v92;
  *&__src[2] = v91;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::newResourceBuffer(v978, a1, a2, a6, __src);
  v132 = v989;
  if (*(a2 + 18) == 7)
  {
    v132 = (a2 + 64);
  }

  v133 = *v132;
  memset(__src, 0, 24);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(__src, a1, 504, 1);
  v134 = __src[0];
  v948 = __src[1];
  v951 = __src[2];
  *(__src[0] + 62) = 0;
  v134[29] = 0u;
  v134[30] = 0u;
  v134[27] = 0u;
  v134[28] = 0u;
  v134[25] = 0u;
  v134[26] = 0u;
  v134[23] = 0u;
  v134[24] = 0u;
  v134[21] = 0u;
  v134[22] = 0u;
  v134[19] = 0u;
  v134[20] = 0u;
  v134[17] = 0u;
  v134[18] = 0u;
  v134[15] = 0u;
  v134[16] = 0u;
  v134[13] = 0u;
  v134[14] = 0u;
  v134[11] = 0u;
  v134[12] = 0u;
  v134[9] = 0u;
  v134[10] = 0u;
  v134[7] = 0u;
  v134[8] = 0u;
  v134[5] = 0u;
  v134[6] = 0u;
  v134[3] = 0u;
  v134[4] = 0u;
  v134[1] = 0u;
  v134[2] = 0u;
  *v134 = 0u;
  if (*(a2 + 4) | *(a2 + 18))
  {
    v135 = 0;
  }

  else
  {
    v135 = *(a2 + 12) == 3;
  }

  v136 = *(a2 + 40);
  v137 = !v135 || v136 == 0;
  v138 = !v137;
  v139 = *(a2 + 32);
  LODWORD(v140) = *(a2 + 32);
  if (!v137)
  {
    v140 = 0x3FFFFFFFLL;
    if ((*(a2 + 28) & 4) == 0)
    {
      v140 = 0xFFFFFFFLL;
    }

    v141 = *(a2 + 192) + -1.0;
    if (v141 < 0.0)
    {
      v141 = 0.0;
    }

    v142 = vcvtpd_u64_f64(v141 * v139) + v139;
    if (v140 >= v142)
    {
      LODWORD(v140) = v142;
    }
  }

  v143 = *(a2 + 15);
  if ((v143 & 2) != 0)
  {
    v144 = *(a2 + 160);
    if (v144 >= 2)
    {
      LODWORD(v140) = v140 * (v144 - 1);
    }
  }

  if (v140 <= 1)
  {
    v145 = 1;
  }

  else
  {
    v145 = v140;
  }

  LODWORD(v146) = *(a2 + 32);
  if (v138)
  {
    v146 = 0x3FFFFFFFLL;
    if ((*(a2 + 28) & 4) == 0)
    {
      v146 = 0xFFFFFFFLL;
    }

    v147 = *(a2 + 192) + -1.0;
    if (v147 < 0.0)
    {
      v147 = 0.0;
    }

    v148 = vcvtpd_u64_f64(v147 * v139) + v139;
    if (v146 >= v148)
    {
      LODWORD(v146) = v148;
    }
  }

  if ((v143 & 2) != 0)
  {
    v150 = *(a2 + 160);
    v151 = v150 - 1;
    if (v150 <= 1)
    {
      v151 = 1;
    }

    v152 = v151 * v146;
    if (v152 <= 1)
    {
      v149 = 1;
    }

    else
    {
      v149 = v152;
    }

    if (v150 > 1)
    {
      v149 <<= *(a2 + 13);
    }
  }

  else if (v146 <= 1)
  {
    v149 = 1;
  }

  else
  {
    v149 = v146;
  }

  v968 = AGX::BVHDescriptor::topDownLeafNodeCapacity(a2);
  if ((v143 & 0x400) != 0)
  {
    if (v138)
    {
      v154 = 0x3FFFFFFFLL;
      if ((*(a2 + 28) & 4) == 0)
      {
        v154 = 0xFFFFFFFLL;
      }

      v155 = *(a2 + 192) + -1.0;
      if (v155 < 0.0)
      {
        v155 = 0.0;
      }

      v156 = vcvtpd_u64_f64(v155 * v139) + v139;
      if (v154 >= v156)
      {
        LODWORD(v139) = v156;
      }

      else
      {
        LODWORD(v139) = v154;
      }
    }

    if ((v143 & 2) != 0)
    {
      v157 = *(a2 + 160);
      if (v157 >= 2)
      {
        LODWORD(v139) = v139 * (v157 - 1);
      }
    }

    if (v139 <= 1)
    {
      v158 = 1;
    }

    else
    {
      v158 = v139;
    }

    v153 = (*(a2 + 20) + v158 - 1) / *(a2 + 20) - 1;
  }

  else
  {
    v153 = AGX::BVHDescriptor::maxInnerNodeCount(a2);
  }

  v159 = AGX::BVHDescriptor::topDownLeafNodeCapacity(a2);
  if (v133)
  {
    *(v134 + 3) = v133;
    *(v134 + 8) = v136;
  }

  *(v134 + 5) = *&v978[0];
  *(v134 + 12) = v136;
  v160 = *(a4 + 960);
  if (*(a4 + 968) == 4)
  {
    v161 = *(v160 + 16);
  }

  else
  {
    v161 = 0;
  }

  v162 = *(a4 + 984) >> 2;
  *(v134 + 9) = v161 + *(v160 + 16 * *(a4 + 972) + 24) + *(v160 + 8 * *(a4 + 972) + 56) + *(a4 + 976);
  *(v134 + 20) = v162;
  v163 = *(a4 + 864);
  if (*(a4 + 872) == 4)
  {
    v164 = *(v163 + 16);
  }

  else
  {
    v164 = 0;
  }

  v165 = *(a4 + 888);
  *(v134 + 33) = v164 + *(v163 + 16 * *(a4 + 876) + 24) + *(v163 + 8 * *(a4 + 876) + 56) + *(a4 + 880);
  *(v134 + 34) = v165;
  if (*(a2 + 15))
  {
    v166 = *(a4 + 928);
    if (*(a4 + 936) == 4)
    {
      v167 = *(v166 + 16);
    }

    else
    {
      v167 = 0;
    }

    v308 = *(a4 + 952) / 0x3Cu;
    *(v134 + 43) = v167 + *(v166 + 16 * *(a4 + 940) + 24) + *(v166 + 8 * *(a4 + 940) + 56) + *(a4 + 944);
    *(v134 + 88) = v308;
  }

  v309 = *(a4 + 832);
  if (*(a4 + 840) == 4)
  {
    v310 = *(v309 + 16);
  }

  else
  {
    v310 = 0;
  }

  v311 = *(a4 + 856) >> 4;
  *(v134 + 57) = v310 + *(v309 + 16 * *(a4 + 844) + 24) + *(v309 + 8 * *(a4 + 844) + 56) + *(a4 + 848);
  *(v134 + 232) = v311;
  v312 = *(a4 + 896);
  if (*(a4 + 904) == 4)
  {
    v313 = *(v312 + 16);
  }

  else
  {
    v313 = 0;
  }

  v314 = *(a4 + 920);
  *(v134 + 59) = v313 + *(v312 + 16 * *(a4 + 908) + 24) + *(v312 + 8 * *(a4 + 908) + 56) + *(a4 + 912);
  *(v134 + 60) = v314;
  if (*(a2 + 14) >= 3u && (*(a2 + 15) & 0x400) == 0)
  {
    v315 = *(a4 + 992);
    if (*(a4 + 1000) == 4)
    {
      v316 = *(v315 + 16);
    }

    else
    {
      v316 = 0;
    }

    v362 = *(a4 + 1016);
    *(v134 + 61) = v316 + *(v315 + 16 * *(a4 + 1004) + 24) + *(v315 + 8 * *(a4 + 1004) + 56) + *(a4 + 1008);
    *(v134 + 62) = v362;
  }

  v363 = *(a4 + 96);
  if (*(a4 + 104) == 4)
  {
    v364 = *(v363 + 16);
  }

  else
  {
    v364 = 0;
  }

  *(v134 + 7) = v364 + *(v363 + 16 * *(a4 + 108) + 24) + *(v363 + 8 * *(a4 + 108) + 56) + *(a4 + 112);
  *(v134 + 16) = v145;
  v365 = *(a4 + 128);
  if (*(a4 + 136) == 4)
  {
    v366 = *(v365 + 16);
  }

  else
  {
    v366 = 0;
  }

  v367 = a1;
  *(v134 + 35) = v366 + *(v365 + 16 * *(a4 + 140) + 24) + *(v365 + 8 * *(a4 + 140) + 56) + *(a4 + 144);
  *(v134 + 72) = v159 + v153;
  v368 = *(a4 + 160);
  if (*(a4 + 168) == 4)
  {
    v369 = *(v368 + 16);
  }

  else
  {
    v369 = 0;
  }

  v370 = *(a4 + 184) >> 2;
  *(v134 + 11) = v369 + *(v368 + 16 * *(a4 + 172) + 24) + *(v368 + 8 * *(a4 + 172) + 56) + *(a4 + 176);
  *(v134 + 24) = v370;
  v371 = *(a4 + 192);
  if (*(a4 + 200) == 4)
  {
    v372 = *(v371 + 16);
  }

  else
  {
    v372 = 0;
  }

  *(v134 + 41) = v372 + *(v371 + 16 * *(a4 + 204) + 24) + *(v371 + 8 * *(a4 + 204) + 56) + *(a4 + 208);
  *(v134 + 84) = v149;
  v373 = *(a4 + 224);
  if (*(a4 + 232) == 4)
  {
    v374 = *(v373 + 16);
  }

  else
  {
    v374 = 0;
  }

  *(v134 + 51) = v374 + *(v373 + 16 * *(a4 + 236) + 24) + *(v373 + 8 * *(a4 + 236) + 56) + *(a4 + 240);
  v375 = *(a4 + 256);
  if (*(a4 + 264) == 4)
  {
    v376 = *(v375 + 16);
  }

  else
  {
    v376 = 0;
  }

  *(v134 + 52) = v376 + *(v375 + 16 * *(a4 + 268) + 24) + *(v375 + 8 * *(a4 + 268) + 56) + *(a4 + 272);
  v377 = *(a4 + 288);
  if (*(a4 + 296) == 4)
  {
    v378 = *(v377 + 16);
  }

  else
  {
    v378 = 0;
  }

  *(v134 + 37) = v378 + *(v377 + 16 * *(a4 + 300) + 24) + *(v377 + 8 * *(a4 + 300) + 56) + *(a4 + 304);
  *(v134 + 76) = 4;
  if (*(a2 + 15))
  {
    v379 = *(a4 + 320);
    if (*(a4 + 328) == 4)
    {
      v380 = *(v379 + 16);
    }

    else
    {
      v380 = 0;
    }

    *(v134 + 53) = v380 + *(v379 + 16 * *(a4 + 332) + 24) + *(v379 + 8 * *(a4 + 332) + 56) + *(a4 + 336);
    v381 = *(a4 + 352);
    if (*(a4 + 360) == 4)
    {
      v382 = *(v381 + 16);
    }

    else
    {
      v382 = 0;
    }

    *(v134 + 54) = v382 + *(v381 + 16 * *(a4 + 364) + 24) + *(v381 + 8 * *(a4 + 364) + 56) + *(a4 + 368);
    v383 = *(a4 + 384);
    if (*(a4 + 392) == 4)
    {
      v384 = *(v383 + 16);
    }

    else
    {
      v384 = 0;
    }

    *(v134 + 55) = v384 + *(v383 + 16 * *(a4 + 396) + 24) + *(v383 + 8 * *(a4 + 396) + 56) + *(a4 + 400);
    v385 = *(a4 + 416);
    if (*(a4 + 424) == 4)
    {
      v386 = *(v385 + 16);
    }

    else
    {
      v386 = 0;
    }

    *(v134 + 56) = v386 + *(v385 + 16 * *(a4 + 428) + 24) + *(v385 + 8 * *(a4 + 428) + 56) + *(a4 + 432);
  }

  v387 = *(a4 + 448);
  if (*(a4 + 456) == 4)
  {
    v388 = *(v387 + 16);
  }

  else
  {
    v388 = 0;
  }

  *(v134 + 39) = v388 + *(v387 + 16 * *(a4 + 460) + 24) + *(v387 + 8 * *(a4 + 460) + 56) + *(a4 + 464);
  *(v134 + 80) = (v145 + 1023) >> 10;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupTopDownBindings(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,unsigned long long,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::instanceBatchSize = 256;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupTopDownBindings(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,unsigned long long,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::primitiveBatchSize = 512;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupTopDownBindings(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,unsigned long long,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::batchingThreshold = 2048;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupTopDownBindings(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,unsigned long long,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::allowBatchingEV = 1;
  }

  v389 = 0;
  if (*(a2 + 32) < AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupTopDownBindings(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,unsigned long long,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::batchingThreshold)
  {
    v390 = 0;
  }

  else
  {
    v390 = 0;
    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupTopDownBindings(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,unsigned long long,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::allowBatchingEV)
    {
      if ((*(a2 + 18) & 0xFE) == 6)
      {
        v391 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupTopDownBindings(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,unsigned long long,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::instanceBatchSize;
      }

      else
      {
        v391 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupTopDownBindings(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,unsigned long long,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::primitiveBatchSize;
      }

      v392 = *v391;
      v393 = v149 - 1;
      v295 = __CFADD__(v393, v392);
      v394 = 2 * ((v393 + v392) / v392);
      if (v295)
      {
        v389 = 2;
      }

      else
      {
        v389 = v394;
      }

      v390 = (v149 + v392 - 1) / v392;
    }
  }

  v395 = *(a4 + 480);
  if (*(a4 + 488) == 4)
  {
    v396 = *(v395 + 16);
  }

  else
  {
    v396 = 0;
  }

  *(v134 + 13) = v396 + *(v395 + 16 * *(a4 + 492) + 24) + *(v395 + 8 * *(a4 + 492) + 56) + *(a4 + 496);
  *(v134 + 28) = v968;
  v397 = *(a4 + 512);
  if (*(a4 + 520) == 4)
  {
    v398 = *(v397 + 16);
  }

  else
  {
    v398 = 0;
  }

  *(v134 + 15) = v398 + *(v397 + 16 * *(a4 + 524) + 24) + *(v397 + 8 * *(a4 + 524) + 56) + *(a4 + 528);
  *(v134 + 32) = v390;
  v399 = *(a4 + 544);
  if (*(a4 + 552) == 4)
  {
    v400 = *(v399 + 16);
  }

  else
  {
    v400 = 0;
  }

  *(v134 + 17) = v400 + *(v399 + 16 * *(a4 + 556) + 24) + *(v399 + 8 * *(a4 + 556) + 56) + *(a4 + 560);
  *(v134 + 36) = v968;
  v401 = *(a4 + 576);
  if (*(a4 + 584) == 4)
  {
    v402 = *(v401 + 16);
  }

  else
  {
    v402 = 0;
  }

  *(v134 + 19) = v402 + *(v401 + 16 * *(a4 + 588) + 24) + *(v401 + 8 * *(a4 + 588) + 56) + *(a4 + 592);
  *(v134 + 40) = v390;
  if (AGX::BVHDescriptor::useSpatialSplits(a2) || (~*(a2 + 15) & 3) == 0 && *(a2 + 160) >= 2u)
  {
    v403 = *(a4 + 608);
    if (*(a4 + 616) == 4)
    {
      v404 = *(v403 + 16);
    }

    else
    {
      v404 = 0;
    }

    *(v134 + 29) = v404 + *(v403 + 16 * *(a4 + 620) + 24) + *(v403 + 8 * *(a4 + 620) + 56) + *(a4 + 624);
    *(v134 + 60) = v389;
  }

  v405 = *(a4 + 640);
  if (*(a4 + 648) == 4)
  {
    v406 = *(v405 + 16);
  }

  else
  {
    v406 = 0;
  }

  *(v134 + 21) = v406 + *(v405 + 16 * *(a4 + 652) + 24) + *(v405 + 8 * *(a4 + 652) + 56) + *(a4 + 656);
  *(v134 + 44) = v390;
  v407 = *(a4 + 672);
  if (*(a4 + 680) == 4)
  {
    v408 = *(v407 + 16);
  }

  else
  {
    v408 = 0;
  }

  *(v134 + 25) = v408 + *(v407 + 16 * *(a4 + 684) + 24) + *(v407 + 8 * *(a4 + 684) + 56) + *(a4 + 688);
  *(v134 + 52) = v389;
  if (*(a2 + 15))
  {
    v410 = *(a4 + 704);
    if (*(a4 + 712) == 4)
    {
      v411 = *(v410 + 16);
    }

    else
    {
      v411 = 0;
    }

    *(v134 + 23) = v411 + *(v410 + 16 * *(a4 + 716) + 24) + *(v410 + 8 * *(a4 + 716) + 56) + *(a4 + 720);
    *(v134 + 48) = v390;
    v409 = 136;
    if ((*(a2 + 15) & 1) == 0)
    {
      v409 = 72;
    }
  }

  else
  {
    v409 = 72;
  }

  v412 = v409 * v968;
  v413 = *(a4 + 736);
  if (*(a4 + 744) == 4)
  {
    v414 = *(v413 + 16);
  }

  else
  {
    v414 = 0;
  }

  *(v134 + 31) = v414 + *(v413 + 16 * *(a4 + 748) + 24) + *(v413 + 8 * *(a4 + 748) + 56) + *(a4 + 752);
  *(v134 + 32) = v412;
  v415 = *(a4 + 768);
  if (*(a4 + 776) == 4)
  {
    v416 = *(v415 + 16);
  }

  else
  {
    v416 = 0;
  }

  *(v134 + 2) = v416 + *(v415 + 16 * *(a4 + 780) + 24) + *(v415 + 8 * *(a4 + 780) + 56) + *(a4 + 784);
  v417 = *(a4 + 800);
  if (*(a4 + 808) == 4)
  {
    v418 = *(v417 + 16);
  }

  else
  {
    v418 = 0;
  }

  *(v134 + 45) = v418 + *(v417 + 16 * *(a4 + 812) + 24) + *(v417 + 8 * *(a4 + 812) + 56) + *(a4 + 816);
  *(v134 + 184) = 6;
  v419 = *(a4 + 1024);
  if (*(a4 + 1032) == 4)
  {
    v420 = *(v419 + 16);
  }

  else
  {
    v420 = 0;
  }

  v421 = *(a4 + 1048) >> 2;
  *(v134 + 47) = v420 + *(v419 + 16 * *(a4 + 1036) + 24) + *(v419 + 8 * *(a4 + 1036) + 56) + *(a4 + 1040);
  *(v134 + 96) = v421;
  v422 = *(a4 + 1056);
  if (*(a4 + 1064) == 4)
  {
    v423 = *(v422 + 16);
  }

  else
  {
    v423 = 0;
  }

  v424 = *(a4 + 1080) >> 2;
  *(v134 + 49) = v423 + *(v422 + 16 * *(a4 + 1068) + 24) + *(v422 + 8 * *(a4 + 1068) + 56) + *(a4 + 1072);
  *(v134 + 100) = v424;
  {
    {
    }

    {
    }

    if (shouldDumpOrVerifyBVHs(void)::once != -1)
    {
      dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupTopDownBindings(AGX::BVHDescriptor const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,unsigned long long,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::verify = 0;
    v367 = a1;
  }

  if ((*(a2 + 18) & 0xFE) == 6)
  {
    memset(__src, 0, 24);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(__src, v367, 64, 0);
    v425 = __src[0];
    v947 = __src[1];
    v971 = __src[2];
    v426 = v993;
    *__src[0] = *(a2 + 72);
    v425[1] = v426;
    v425[2] = v991;
    v425[3] = *(a2 + 88);
    v425[4] = v959;
    v427 = *(a2 + 64);
    if (!v427)
    {
      v428 = v425;
      v429 = *(a2 + 52);
      memset(__src, 0, 24);
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(__src, a1, 4, 0);
      v427 = __src[1];
      *__src[0] = v429;
      v425 = v428;
    }

    v425[5] = v427;
    *(v425 + 12) = *(a2 + 52);
    *(v425 + 13) = *(a2 + 80);
    *(v425 + 14) = *(a2 + 104);
    *(v425 + 60) = *(a2 + 120) == 1;
    v945 = 64;
    v946 = v425;
    v367 = a1;
  }

  else
  {
    v971 = 0;
    v945 = 0;
    v946 = 0;
    v947 = 0;
  }

  v976 = 0u;
  v977 = 0u;
  if ((*(a2 + 15) & 0x400) == 0)
  {
    v430 = [a5 accelerationStructureUniqueIdentifier];
    v431 = *(a2 + 18) == 7;
    if (*(a2 + 18) == 7)
    {
      v432 = 376;
    }

    else
    {
      v432 = 392;
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v976, a1, v432, 0);
    v433 = 0;
    v434 = 0;
    v435 = *(&v976 + 1);
    **(&v976 + 1) = 0u;
    *(v435 + 16) = 0u;
    *(v435 + 32) = 0u;
    *(v435 + 48) = 0u;
    *(v435 + 64) = 0u;
    *(v435 + 80) = 0u;
    *(v435 + 96) = 0u;
    *(v435 + 112) = 0u;
    *(v435 + 128) = 0u;
    *(v435 + 144) = 0u;
    *(v435 + 160) = 0u;
    *(v435 + 176) = 0u;
    *(v435 + 192) = 0u;
    *(v435 + 208) = 0;
    *(v435 + 216) = xmmword_29D2F2470;
    *(v435 + 232) = -1;
    *(v435 + 252) = 0u;
    *(v435 + 236) = 0u;
    *(v435 + 264) = 0u;
    *(v435 + 280) = -1;
    v436 = (v435 + 281);
    *(v435 + 281) = 0u;
    *(v435 + 297) = 0u;
    *(v435 + 313) = 0u;
    *(v435 + 329) = 0u;
    *(v435 + 345) = 0u;
    *(v435 + 354) = 0u;
    if (!v431)
    {
      v434 = (v435 + 376);
      *(v435 + 376) = 0;
      v437 = &v976;
      v438 = vld1q_dup_f64(v437);
      *(v435 + 256) = vaddq_s64(v438, xmmword_29D2F2480);
      v433 = (v435 + 384);
      *(v435 + 384) = 0;
    }

    {
      AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
    }

    {
      AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
    }

    if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit)
    {
      v439 = 0;
    }

    else if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable)
    {
      v439 = 1;
    }

    else
    {
      v439 = *(a2 + 28) & 1;
    }

    v944 = v430;
    *(v435 + 284) = v439;
    {
      AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
    }

    *(v435 + 293) = AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild | ((*(a2 + 28) & 2u) >> 1);
    *(v435 + 287) = 0;
    *(v435 + 240) = 0;
    *(v435 + 236) = 1;
    v464 = *(a2 + 18);
    v465 = v464 - 8;
    if (v464 - 8 <= 0xFFFFFFFD)
    {
      v466 = *(a2 + 40);
      if (!v466)
      {
        v470 = 0;
        goto LABEL_918;
      }

      *(v435 + 272) = v466;
      if (*(a2 + 136))
      {
        v467 = *(a2 + 144) == 0;
      }

      else
      {
        v467 = 1;
      }

      v468 = !v467;
      *(v435 + 232) = 1;
      v469 = *(a2 + 160);
      *(v435 + 192) = v469;
      v470 = v469 > 1;
      if (v469 >= 2)
      {
        *(v435 + 200) = *(a2 + 180);
        *(v435 + 208) = *(a2 + 172);
        *(v435 + 196) = 64;
      }

      *(v435 + 216) = 1;
      if (v464 <= 5)
      {
        if (((1 << v464) & 9) == 0)
        {
          if (((1 << v464) & 0x12) != 0)
          {
            if (v469 < 2)
            {
              *(v435 + 228) = 4;
              v471 = 32;
              v472 = 1;
              if (v468)
              {
                goto LABEL_775;
              }
            }

            else
            {
              *(v435 + 228) = 5;
              v471 = 60;
              v472 = 1;
              if (v468)
              {
                goto LABEL_775;
              }
            }

LABEL_801:
            v618 = *(a1 + 44);
            if (v618 > 4)
            {
              *(v435 + 224) = v471;
            }

            else if (v471)
            {
              if (v471 >= 0x1D)
              {
                if (v471 >= 0x2D)
                {
                  if (v471 >= 0x3D)
                  {
                    if (v471 <= 0x5C)
                    {
                      v660 = 96;
                    }

                    else
                    {
                      v660 = 128;
                    }

                    *(v435 + 224) = v660;
                  }

                  else
                  {
                    *(v435 + 224) = 64;
                  }
                }

                else
                {
                  *(v435 + 224) = 48;
                }
              }

              else
              {
                *(v435 + 224) = 32;
              }
            }

            else
            {
              *(v435 + 224) = 4;
            }

            goto LABEL_917;
          }

          if (v469 < 2)
          {
            *(v435 + 228) = 6;
            *(v435 + 287) = 1;
            {
              getCoarseCurveTestMode(AGX::BVHDescriptor const&)::evCoarseCurveTestMode = 1;
            }

            if (getCoarseCurveTestMode(AGX::BVHDescriptor const&)::evCoarseCurveTestMode != 1)
            {
              goto LABEL_770;
            }

            {
              AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
            }

            {
              AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
            }

            if ((AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) != 0 || (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) == 0 && (*(a2 + 28) & 1) == 0)
            {
              if (getCoarseCurveTestMode(AGX::BVHDescriptor const&)::evCoarseCurveTestMode)
              {
                v594 = 2;
              }

              else
              {
                v594 = 0;
              }
            }

            else
            {
LABEL_770:
              v594 = 0;
            }

            *(v435 + 290) = v594;
            v469 = *(a2 + 160);
            v471 = 16;
          }

          else
          {
            *(v435 + 228) = 7;
            v471 = 28;
          }

          v472 = 0;
          if (v469 <= 1)
          {
            v469 = 1;
          }

          *(v435 + 248) = 16 * *(a2 + 36) * v469;
          if (!v468)
          {
            goto LABEL_801;
          }

LABEL_775:
          if (v464 != 3 && v464)
          {
            v618 = *(a1 + 44);
            v622 = *(a2 + 160);
            if (v472)
            {
              v619 = v622 > 1;
              if (v618 > 4)
              {
                v620 = 40;
                v621 = 68;
              }

              else
              {
                v620 = 48;
                v621 = 96;
              }
            }

            else
            {
              v619 = v622 > 1;
              if (v618 > 4)
              {
                v620 = 24;
                v621 = 36;
              }

              else
              {
                v620 = 32;
                v621 = 48;
              }
            }
          }

          else
          {
            v618 = *(a1 + 44);
            if (*(a2 + 17) == 2)
            {
              v619 = *(a2 + 160) > 1u;
              if (v618 > 4)
              {
                v620 = 76;
                v621 = 124;
              }

              else
              {
                v620 = 96;
                v621 = 128;
              }
            }

            else
            {
              if (*(a2 + 17))
              {
LABEL_795:
                *(v435 + 240) = *(a2 + 136);
LABEL_917:
                *(v435 + 291) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(*(v435 + 228), a2, v618);
LABEL_918:
                v661 = *(a1 + 44);
                {
                  v876 = v661;
                  v661 = v876;
                  if (v877)
                  {
                    AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
                    v661 = v876;
                  }
                }

                v662 = AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild;
                v663 = *(a2 + 28);
                {
                  v878 = v661;
                  v661 = v878;
                  if (v879)
                  {
                    AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
                    v661 = v878;
                  }
                }

                v664 = v663 & 2;
                {
                  v880 = v661;
                  v661 = v880;
                  if (v881)
                  {
                    AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
                    v661 = v880;
                  }
                }

                if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit)
                {
                  v665 = 0;
                }

                else if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable)
                {
                  v665 = 1;
                }

                else
                {
                  v665 = *(a2 + 28) & 1;
                }

                *v436 = isQTBEnabled(v661, a2, (v662 | (v664 >> 1)) & 1, v665);
                {
                  LOBYTE(__src[0]) = 0;
                  findEnvVarNum<BOOL>("AGX_ALWAYS_ALLOW_PAIR_FALLBACK", __src);
                  if (__src[0])
                  {
                    v882 = 1;
                  }

                  else
                  {
                    LOBYTE(__src[0]) = 0;
                    findEnvVarNum<BOOL>("AGX_ALWAYS_ALLOW_VERT_MATCHING_ON_POS", __src);
                    v882 = __src[0];
                  }

                  isVertMatchingOnPositionRequestedAlwaysAllowed(void)::allow = v882 & 1;
                }

                if (isVertMatchingOnPositionRequestedAlwaysAllowed(void)::allow == 1)
                {
                  {
                    AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
                  }

                  {
                    AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
                  }

                  if (((AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) != 0 || (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) == 0 && (*(a2 + 28) & 1) == 0) && *(a2 + 18) - 6 <= 0xFFFFFFFC && ((*v436 & 1) != 0 || *(v435 + 291)))
                  {
                    *(v435 + 282) = 1;
                  }
                }

                *(v435 + 295) = (*(v435 + 192) < 3u) & *(v435 + 281);
                if (*(v435 + 284) == 1)
                {
                  *(v435 + 287) = 0;
                }

                v666 = *(a1 + 44);
                {
                }

                if (v666 <= 4)
                {
                  {
                    AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
                  }

                  {
                    AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
                  }

                  if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) == 0 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || (*(a2 + 28)))
                  {
                    goto LABEL_950;
                  }

                  {
                    AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
                  }

                  if (AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild)
                  {
LABEL_950:
                    LOBYTE(v667) = 1;
                  }

                  else
                  {
                    v667 = (*(a2 + 28) >> 1) & 1;
                  }
                }

                else
                {
                  LOBYTE(v667) = 0;
                }

                *(v435 + 283) = v667;
                *(v435 + 296) = 0;
                v668 = *(v435 + 284);
                v669 = v668 ^ 1;
                if (v465 >= 0xFFFFFFFE)
                {
                  v669 = 0;
                }

                *(v435 + 288) = v470 & v669;
                v670 = *(a4 + 1384);
                if (*(a4 + 1392) == 4)
                {
                  v671 = *(v670 + 16);
                }

                else
                {
                  v671 = 0;
                }

                *v435 = v671 + *(v670 + 16 * *(a4 + 1396) + 24) + *(v670 + 8 * *(a4 + 1396) + 56) + *(a4 + 1400);
                *(v435 + 324) = *(a4 + 1416);
                v672 = *(a4 + 1560);
                if (*(a4 + 1568) == 4)
                {
                  v673 = *(v672 + 16);
                }

                else
                {
                  v673 = 0;
                }

                *(v435 + 8) = v673 + *(v672 + 16 * *(a4 + 1572) + 24) + *(v672 + 8 * *(a4 + 1572) + 56) + *(a4 + 1576);
                v674 = *(a4 + 1424);
                if (*(a4 + 1432) == 4)
                {
                  v675 = *(v674 + 16);
                }

                else
                {
                  v675 = 0;
                }

                *(v435 + 80) = v675 + *(v674 + 16 * *(a4 + 1436) + 24) + *(v674 + 8 * *(a4 + 1436) + 56) + *(a4 + 1440);
                v676 = *(a4 + 1456);
                if (*(a4 + 1464) == 4)
                {
                  v677 = *(v676 + 16);
                }

                else
                {
                  v677 = 0;
                }

                *(v435 + 88) = v677 + *(v676 + 16 * *(a4 + 1468) + 24) + *(v676 + 8 * *(a4 + 1468) + 56) + *(a4 + 1472);
                if (v668)
                {
                  v678 = *(a4 + 1488);
                  if (*(a4 + 1496) == 4)
                  {
                    v679 = *(v678 + 16);
                  }

                  else
                  {
                    v679 = 0;
                  }

                  *(v435 + 16) = v679 + *(v678 + 16 * *(a4 + 1500) + 24) + *(v678 + 8 * *(a4 + 1500) + 56) + *(a4 + 1504);
                }

                v680 = *(a4 + 1944);
                if (*(a4 + 1952) == 4)
                {
                  v681 = *(v680 + 16);
                }

                else
                {
                  v681 = 0;
                }

                *(v435 + 96) = v681 + *(v680 + 16 * *(a4 + 1956) + 24) + *(v680 + 8 * *(a4 + 1956) + 56) + *(a4 + 1960);
                v682 = *(a2 + 15);
                if ((v682 & 0x400) != 0)
                {
                  v684 = *(a2 + 32);
                  if (!*(a2 + 4) && *(a2 + 40) && !*(a2 + 18) && *(a2 + 12) == 3)
                  {
                    v685 = 0x3FFFFFFFLL;
                    if ((*(a2 + 28) & 4) == 0)
                    {
                      v685 = 0xFFFFFFFLL;
                    }

                    v686 = *(a2 + 192) + -1.0;
                    if (v686 < 0.0)
                    {
                      v686 = 0.0;
                    }

                    v684 += vcvtpd_u64_f64(v686 * v684);
                    if (v685 < v684)
                    {
                      LODWORD(v684) = v685;
                    }
                  }

                  if ((v682 & 2) != 0)
                  {
                    v687 = *(a2 + 160);
                    if (v687 >= 2)
                    {
                      LODWORD(v684) = v684 * (v687 - 1);
                    }
                  }

                  if (v684 <= 1)
                  {
                    LODWORD(v684) = 1;
                  }

                  v683 = (*(a2 + 20) + v684 - 1) / *(a2 + 20) - 1;
                }

                else
                {
                  v683 = AGX::BVHDescriptor::maxInnerNodeCount(a2);
                }

                v688 = AGX::BVHDescriptor::topDownLeafNodeCapacity(a2) + v683;
                if (HIBYTE(v688))
                {
                  v689 = 4;
                }

                else
                {
                  v689 = 3;
                }

                if (v688 >= 0x10000)
                {
                  v690 = v689;
                }

                else
                {
                  v690 = 2;
                }

                *(v435 + 336) = v690;
                v691 = *(a4 + 864);
                if (*(a4 + 872) == 4)
                {
                  v692 = *(v691 + 16);
                }

                else
                {
                  v692 = 0;
                }

                *(v435 + 56) = v692 + *(v691 + 16 * *(a4 + 876) + 24) + *(v691 + 8 * *(a4 + 876) + 56) + *(a4 + 880);
                if (*(a2 + 14) >= 3u)
                {
                  v693 = *(a4 + 992);
                  if (*(a4 + 1000) == 4)
                  {
                    v694 = *(v693 + 16);
                  }

                  else
                  {
                    v694 = 0;
                  }

                  *(v435 + 64) = v694 + *(v693 + 16 * *(a4 + 1004) + 24) + *(v693 + 8 * *(a4 + 1004) + 56) + *(a4 + 1008);
                }

                v695 = *(a4 + 832);
                if (*(a4 + 840) == 4)
                {
                  v696 = *(v695 + 16);
                }

                else
                {
                  v696 = 0;
                }

                *(v435 + 72) = v696 + *(v695 + 16 * *(a4 + 844) + 24) + *(v695 + 8 * *(a4 + 844) + 56) + *(a4 + 848);
                v697 = *(a4 + 1088);
                if (*(a4 + 1096) == 4)
                {
                  v698 = *(v697 + 16);
                }

                else
                {
                  v698 = 0;
                }

                *(v435 + 24) = v698 + *(v697 + 16 * *(a4 + 1100) + 24) + *(v697 + 8 * *(a4 + 1100) + 56) + *(a4 + 1104);
                *(v435 + 328) = *(a4 + 1120);
                *(v435 + 332) = *(a4 + 1552);
                v699 = *(a4 + 1128);
                if (*(a4 + 1136) == 4)
                {
                  v700 = *(v699 + 16);
                }

                else
                {
                  v700 = 0;
                }

                *(v435 + 32) = v700 + *(v699 + 16 * *(a4 + 1140) + 24) + *(v699 + 8 * *(a4 + 1140) + 56) + *(a4 + 1144);
                v701 = *(a4 + 1160);
                if (*(a4 + 1168) == 4)
                {
                  v702 = *(v701 + 16);
                }

                else
                {
                  v702 = 0;
                }

                *(v435 + 40) = v702 + *(v701 + 16 * *(a4 + 1172) + 24) + *(v701 + 8 * *(a4 + 1172) + 56) + *(a4 + 1176);
                if (v668)
                {
                  v703 = *(a4 + 1520);
                  if (*(a4 + 1528) == 4)
                  {
                    v704 = *(v703 + 16);
                  }

                  else
                  {
                    v704 = 0;
                  }

                  *(v435 + 48) = v704 + *(v703 + 16 * *(a4 + 1532) + 24) + *(v703 + 8 * *(a4 + 1532) + 56) + *(a4 + 1536);
                }

                v705 = *(v435 + 228) & 0xFFFFFFFE;
                if (v705 == 2)
                {
                  v706 = *(a4 + 1288);
                  if (*(a4 + 1296) == 4)
                  {
                    v707 = *(v706 + 16);
                  }

                  else
                  {
                    v707 = 0;
                  }

                  *(v435 + 136) = v707 + *(v706 + 16 * *(a4 + 1300) + 24) + *(v706 + 8 * *(a4 + 1300) + 56) + *(a4 + 1304);
                  v708 = *(a4 + 1320);
                  if (*(a4 + 1328) == 4)
                  {
                    v709 = *(v708 + 16);
                  }

                  else
                  {
                    v709 = 0;
                  }

                  *(v435 + 144) = v709 + *(v708 + 16 * *(a4 + 1332) + 24) + *(v708 + 8 * *(a4 + 1332) + 56) + *(a4 + 1336);
                }

                v710 = *(a4 + 896);
                if (*(a4 + 904) == 4)
                {
                  v711 = *(v710 + 16);
                }

                else
                {
                  v711 = 0;
                }

                *(v435 + 104) = v711 + *(v710 + 16 * *(a4 + 908) + 24) + *(v710 + 8 * *(a4 + 908) + 56) + *(a4 + 912);
                v712 = *(a2 + 32);
                v713 = *(a2 + 40);
                if (v713 >= 0x101 || v712 >= 0x800001)
                {
                  v715 = 2;
                }

                else
                {
                  v715 = 1;
                }

                if (v713 >= 0x11 || v712 >= 0x801)
                {
                  v717 = v715;
                }

                else
                {
                  v717 = 0;
                }

                *(v435 + 340) = v717;
                if (*(a2 + 15))
                {
                  v718 = *(a4 + 928);
                  if (*(a4 + 936) == 4)
                  {
                    v719 = *(v718 + 16);
                  }

                  else
                  {
                    v719 = 0;
                  }

                  *(v435 + 112) = v719 + *(v718 + 16 * *(a4 + 940) + 24) + *(v718 + 8 * *(a4 + 940) + 56) + *(a4 + 944);
                }

                v720 = *(a4 + 960);
                if (*(a4 + 968) == 4)
                {
                  v721 = *(v720 + 16);
                }

                else
                {
                  v721 = 0;
                }

                *(v435 + 120) = v721 + *(v720 + 16 * *(a4 + 972) + 24) + *(v720 + 8 * *(a4 + 972) + 56) + *(a4 + 976);
                *(v435 + 344) = 4;
                *(v435 + 304) = v944;
                v722 = [objc_msgSend(a5 "buffer")];
                *(v435 + 312) = v722 - [a5 bufferOffset];
                {
                  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getVersionToEncode(BOOL,BOOL,BOOL)::gen = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen();
                }

                if (v470)
                {
                  v723 = 0x40000000;
                }

                else
                {
                  v723 = 0;
                }

                v724 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhVersions[AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getVersionToEncode(BOOL,BOOL,BOOL)::gen];
                *(v435 + 128) = *&v978[0];
                *(v435 + 320) = v723 & 0xE0000000 | ((v465 > 0xFFFFFFFD) << 31) | ((v705 == 2) << 29) | v724 & 0x1FFFFFFF;
                if (v465 > 0xFFFFFFFD)
                {
                  *(v435 + 160) = *(a2 + 72);
                  *(v435 + 348) = *(a2 + 80);
                  if ((*(a2 + 28) & 4) != 0)
                  {
                    v725 = -1;
                  }

                  else
                  {
                    v725 = 255;
                  }

                  *(v435 + 352) = v725;
                  *(v435 + 168) = v993;
                  *(v435 + 152) = v991;
                  *(v435 + 176) = *(a2 + 88);
                  *(v435 + 184) = v959;
                  *(v435 + 356) = *(a2 + 52);
                  *(v435 + 360) = *(a2 + 104);
                  *(v435 + 364) = *(a2 + 120) == 1;
                }

                else
                {
                  *(v435 + 276) = *(a2 + 32);
                  if (*(v435 + 281) == 1)
                  {
                    *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 80) = [*(a1 + 24) gpuAddress];
                  }
                }

                v726 = *(a4 + 1560);
                v727 = *(a4 + 1572);
                v728 = v726 + 16 * v727;
                v729 = *(v728 + 24);
                v656 = *(v728 + 32);
                if (*(a4 + 1568) == 4)
                {
                  v730 = *(v726 + 16);
                }

                else
                {
                  v730 = 0;
                }

                v937 = 0;
                v939 = 0;
                v941 = 0;
                v943 = 0;
                v962 = 0;
                v659 = 0;
                v440 = 0;
                v657 = *(v726 + 8 * v727 + 56) + v730 + *(a4 + 1576);
                v658 = v657 + v729;
                goto LABEL_1068;
              }

              v619 = *(a2 + 160) > 1u;
              if (v618 > 4)
              {
                v620 = 52;
                v621 = 92;
              }

              else
              {
                v620 = 64;
                v621 = 96;
              }
            }
          }

          if (v619)
          {
            v620 = v621;
          }

          *(v435 + 224) = v620;
          goto LABEL_795;
        }

        if (*(a2 + 17) == 2)
        {
          if (v469 >= 2)
          {
            v472 = 0;
            *(v435 + 228) = 3;
            v471 = 112;
            if (v468)
            {
              goto LABEL_775;
            }

            goto LABEL_801;
          }

          v942 = v468;
          *(v435 + 228) = 2;
          *(v435 + 287) = 1;
          v471 = 36;
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(2, a2, *(a1 + 44)) != 3)
          {
            PrimLeafEncodingMode = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(*(v435 + 228), a2, *(a1 + 44));
            v472 = 0;
            v616 = PrimLeafEncodingMode == 2;
            v617 = 60;
LABEL_797:
            if (v616)
            {
              v471 = 36;
            }

            else
            {
              v471 = v617;
            }

            if (!v942)
            {
              goto LABEL_801;
            }

            goto LABEL_775;
          }

LABEL_764:
          v472 = 0;
          if (v942)
          {
            goto LABEL_775;
          }

          goto LABEL_801;
        }

        if (!*(a2 + 17))
        {
          if (v469 >= 2)
          {
            v472 = 0;
            *(v435 + 228) = 1;
            v471 = 84;
            if (v468)
            {
              goto LABEL_775;
            }

            goto LABEL_801;
          }

          v942 = v468;
          *(v435 + 228) = 0;
          *(v435 + 287) = 1;
          v471 = 36;
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(0, a2, *(a1 + 44)) != 3)
          {
            v615 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(*(v435 + 228), a2, *(a1 + 44));
            v472 = 0;
            v616 = v615 == 2;
            v617 = 44;
            goto LABEL_797;
          }

          goto LABEL_764;
        }
      }

      v472 = 0;
      v471 = 0;
      if (v468)
      {
        goto LABEL_775;
      }

      goto LABEL_801;
    }

    v470 = 0;
    v473 = *(a2 + 112);
    if (v473 <= 4)
    {
      if (((1 << v473) & 0xB) != 0)
      {
        v474 = 8;
        v475 = 128;
      }

      else
      {
        if (*(a1 + 44) >= 5u)
        {
          v475 = 44;
        }

        else
        {
          v475 = 48;
        }

        v470 = 1;
        v474 = 9;
      }

      *(v435 + 224) = v475;
      *(v435 + 228) = v474;
    }

    *(v435 + 232) = 0;
    *(v435 + 192) = 1;
    *(v435 + 220) = *(a2 + 128);
    v582 = *(a1 + 44);
    {
      AGX::BVHDescriptor::isExtendedLimits(void)const::forceExtendedLimits = 0;
    }

    if (v470)
    {
      *(v435 + 289) = 1;
      if (*(a2 + 18) != 7)
      {
        *v433 = *(a2 + 52);
        v583 = *(a2 + 56);
LABEL_643:
        *v434 = v583;
LABEL_644:
        *(v435 + 294) = *(a2 + 120) == 1;
        goto LABEL_918;
      }
    }

    else
    {
      *(v435 + 289) = (v582 < 4) & (AGX::BVHDescriptor::isExtendedLimits(void)const::forceExtendedLimits | ((*(a2 + 28) & 4u) >> 2));
      if (*(a2 + 18) != 7)
      {
        v583 = *(a2 + 52);
        *v433 = v583;
        goto LABEL_643;
      }
    }

    v584 = *(a2 + 64);
    *(v435 + 264) = v584;
    if (*(a2 + 96))
    {
      v584 = *(a2 + 96);
    }

    *(v435 + 256) = v584;
    goto LABEL_644;
  }

  memset(__src, 0, 24);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(__src, v367, 632, 1);
  v440 = __src[0];
  v943 = __src[1];
  v962 = __src[2];
  bzero(__src[0], 0x278uLL);
  v441 = [objc_msgSend(a5 "buffer")];
  v442 = [a5 bufferOffset];
  v443 = [a5 size];
  *v440 = v442 + v441;
  *(v440 + 1) = v443;
  v445 = *(a1 + 24);
  if (v445)
  {
    v446 = *(a1 + 16);
    if (*(v445 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v447 = *(v445 + 312);
      IOGPUResourceListAddResource();
      v448 = *(v447 + 64);
      v449 = *(v447 + 72);
      while (v448 != v449)
      {
        if (*v448)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v448);
          IOGPUResourceListAddResource();
        }

        v448 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v446, v445, v444, 1, 1);
  }

  *(v440 + 2) = *(v134 + 57);
  v450 = *(a2 + 32);
  if (*(a2 + 4) | *(a2 + 18))
  {
    v451 = 0;
  }

  else
  {
    v451 = *(a2 + 12) == 3;
  }

  v452 = !v451 || *(a2 + 40) == 0;
  v453 = !v452;
  LODWORD(v454) = *(a2 + 32);
  if (!v452)
  {
    v455 = 0x3FFFFFFFLL;
    if ((*(a2 + 28) & 4) == 0)
    {
      v455 = 0xFFFFFFFLL;
    }

    v456 = *(a2 + 192) + -1.0;
    if (v456 < 0.0)
    {
      v456 = 0.0;
    }

    v454 = vcvtpd_u64_f64(v456 * v450) + v450;
    if (v455 < v454)
    {
      LODWORD(v454) = v455;
    }
  }

  v457 = *(a2 + 15);
  if ((v457 & 2) != 0)
  {
    v458 = *(a2 + 160);
    if (v458 >= 2)
    {
      LODWORD(v454) = v454 * (v458 - 1);
    }
  }

  v938 = v454;
  if (v454 <= 1)
  {
    v459 = 1;
  }

  else
  {
    v459 = v454;
  }

  v934 = v459;
  v933 = AGX::BVHDescriptor::maxInnerNodeCount(a2);
  v460 = v933;
  if ((v457 & 0x400) != 0)
  {
    if (v453)
    {
      v461 = 0x3FFFFFFFLL;
      if ((*(a2 + 28) & 4) == 0)
      {
        v461 = 0xFFFFFFFLL;
      }

      v462 = *(a2 + 192) + -1.0;
      if (v462 < 0.0)
      {
        v462 = 0.0;
      }

      v463 = vcvtpd_u64_f64(v462 * v450) + v450;
      if (v461 >= v463)
      {
        LODWORD(v461) = v463;
      }

      if ((v457 & 2) == 0)
      {
        goto LABEL_530;
      }
    }

    else
    {
      LODWORD(v461) = v450;
      if ((v457 & 2) == 0)
      {
LABEL_530:
        if (v461 <= 1)
        {
          LODWORD(v461) = 1;
        }

        v460 = (*(a2 + 20) + v461 - 1) / *(a2 + 20) - 1;
        goto LABEL_533;
      }
    }

    v476 = *(a2 + 160);
    if (v476 >= 2)
    {
      LODWORD(v461) = v461 * (v476 - 1);
    }

    goto LABEL_530;
  }

LABEL_533:
  v940 = v460;
  v477 = AGX::BVHDescriptor::topDownLeafNodeCapacity(a2);
  *(v440 + 24) = *(v134 + 264);
  v478 = *(v134 + 20);
  *(v440 + 5) = *(v134 + 9);
  *(v440 + 12) = v478;
  *(v440 + 56) = *(v134 + 472);
  if ((*(a2 + 18) & 0xFE) == 6)
  {
    v479 = (a2 + 52);
  }

  else
  {
    v479 = (a2 + 32);
  }

  *(v440 + 132) = *v479;
  v480 = *(a4 + 1592);
  v481 = *(a4 + 1604);
  v928 = *(v480 + 16 * v481 + 24);
  if (*(a4 + 1600) == 4)
  {
    v925 = *(v480 + 16);
  }

  else
  {
    v925 = 0;
  }

  v482 = *(v480 + 8 * v481 + 56);
  v483 = *(a4 + 1624);
  v484 = *(a4 + 1636);
  v921 = *(v483 + 16 * v484 + 24);
  if (*(a4 + 1632) == 4)
  {
    v919 = *(v483 + 16);
  }

  else
  {
    v919 = 0;
  }

  v485 = *(v483 + 8 * v484 + 56);
  v486 = *(a4 + 1656);
  v487 = *(a4 + 1668);
  v917 = *(v486 + 16 * v487 + 24);
  if (*(a4 + 1664) == 4)
  {
    v915 = *(v486 + 16);
  }

  else
  {
    v915 = 0;
  }

  v488 = *(v486 + 8 * v487 + 56);
  v489 = *(a4 + 1688);
  v490 = *(a4 + 1700);
  v913 = *(v489 + 16 * v490 + 24);
  if (*(a4 + 1696) == 4)
  {
    v491 = *(v489 + 16);
  }

  else
  {
    v491 = 0;
  }

  v492 = *(v489 + 8 * v490 + 56);
  v493 = *(a4 + 1720);
  v494 = *(a4 + 1732);
  v495 = *(v493 + 16 * v494 + 24);
  v911 = v450;
  if (*(a4 + 1728) == 4)
  {
    v496 = *(v493 + 16);
  }

  else
  {
    v496 = 0;
  }

  v497 = *(v493 + 8 * v494 + 56);
  v498 = *(a4 + 1752);
  v499 = *(a4 + 1764);
  v500 = *(v498 + 16 * v499 + 24);
  v936 = v477;
  if (*(a4 + 1760) == 4)
  {
    v501 = *(v498 + 16);
  }

  else
  {
    v501 = 0;
  }

  v502 = *(v498 + 8 * v499 + 56);
  v503 = *(a4 + 1816);
  v504 = *(a4 + 1828);
  if (*(a4 + 1824) == 4)
  {
    v505 = *(v503 + 16);
  }

  else
  {
    v505 = 0;
  }

  v506 = v496 + v495;
  v507 = *(a4 + 1848);
  v508 = *(a4 + 1860);
  if (*(a4 + 1856) == 4)
  {
    v509 = *(v507 + 16);
  }

  else
  {
    v509 = 0;
  }

  v510 = v488 + *(a4 + 1672);
  v511 = v492 + *(a4 + 1704);
  v512 = v506 + v497 + *(a4 + 1736);
  v513 = v505 + *(v503 + 16 * v504 + 24);
  v514 = *(v503 + 8 * v504 + 56) + *(a4 + 1832);
  v515 = v509 + *(v507 + 16 * v508 + 24);
  v516 = *(v507 + 8 * v508 + 56) + *(a4 + 1864);
  v517 = *(a4 + 1784);
  if (*(a4 + 1792) == 4)
  {
    v518 = *(v517 + 16);
  }

  else
  {
    v518 = 0;
  }

  v519 = v936 + v940;
  v520 = v925 + v928 + v482 + *(a4 + 1608);
  v521 = v919 + v921 + v485 + *(a4 + 1640);
  v522 = v915 + v917 + v510;
  v523 = v491 + v913 + v511;
  v524 = v501 + v500 + v502 + *(a4 + 1768);
  v525 = v518 + *(v517 + 16 * *(a4 + 1796) + 24) + *(v517 + 8 * *(a4 + 1796) + 56) + *(a4 + 1800);
  v526 = *(a4 + 1880);
  v527 = *(a4 + 1892);
  v528 = v526 + 16 * v527;
  v529 = *(v528 + 24);
  v941 = *(v528 + 32);
  v926 = v513 + v514;
  v929 = v515 + v516;
  v923 = v524;
  if (*(a4 + 1888) == 4)
  {
    v530 = *(v526 + 16);
  }

  else
  {
    v530 = 0;
  }

  v531 = v938;
  v939 = (*(v526 + 8 * v527 + 56) + v530 + *(a4 + 1896));
  v532 = &v939[v529];
  *(v440 + 9) = v520;
  *(v440 + 20) = 2 * v934;
  *(v440 + 11) = v521;
  *(v440 + 24) = v933;
  v533 = *(a2 + 40);
  v534 = v533 >= 0x101 || v531 >= 0x800001;
  v535 = 2;
  if (v534)
  {
    v535 = 3;
  }

  if (v533 >= 0x11 || v531 >= 0x801)
  {
    v537 = v535;
  }

  else
  {
    v537 = 1;
  }

  *(v440 + 13) = v522;
  *(v440 + 14) = v934 << v537;
  v538 = *(a4 + 1552) * v933;
  *(v440 + 15) = v523;
  *(v440 + 16) = v538;
  v539 = AGX::BVHDescriptor::topDownLeafNodeCapacity(a2);
  if (v539 >= v933)
  {
    v540 = v933;
  }

  else
  {
    v540 = v539;
  }

  v541 = (8 * v540 + 1023) >> 10;
  if (v541 <= 1)
  {
    LODWORD(v541) = 1;
  }

  *(v440 + 17) = v525;
  *(v440 + 36) = v541;
  if (v512)
  {
    v542 = v934;
  }

  else
  {
    v542 = 0;
  }

  *(v440 + 19) = v512;
  *(v440 + 40) = v542;
  *(v440 + 21) = v923;
  *(v440 + 44) = v933;
  *(v440 + 23) = v926;
  *(v440 + 48) = v519;
  v937 = v532;
  *(v440 + 46) = v532;
  *(v440 + 188) = 14;
  *(v440 + 25) = *&v978[0];
  v543 = *(v134 + 96);
  *(v440 + 40) = *(v134 + 47);
  *(v440 + 82) = v543;
  v544 = *(v134 + 100);
  *(v440 + 42) = *(v134 + 49);
  *(v440 + 86) = v544;
  *(v440 + 44) = v929;
  *(v440 + 90) = 32;
  *(v440 + 50) = 0;
  *(v440 + 51) = [a5 accelerationStructureUniqueIdentifier];
  *(v440 + 52) = *(a2 + 136);
  *(v440 + 424) = 0u;
  *(v440 + 440) = 0u;
  *(v440 + 57) = 0;
  v545 = *(a2 + 18);
  v546 = v545 & 0xFE;
  v547 = *(a2 + 15) & 1;
  v549 = (v545 - 8) < 0xFFFFFFFE && *(a2 + 17) == 2;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getVersionToEncode(BOOL,BOOL,BOOL)::gen = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen();
  }

  if (v549)
  {
    v550 = 0x20000000;
  }

  else
  {
    v550 = 0;
  }

  *(v440 + 122) = ((v546 == 6) << 31) | (v547 << 30) | v550 & 0xE0000000 | AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhVersions[AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getVersionToEncode(BOOL,BOOL,BOOL)::gen] & 0x1FFFFFFF;
  *(v440 + 123) = *(a4 + 1552);
  *(v440 + 532) = 0;
  v551 = *(a2 + 40);
  *(v440 + 135) = v551;
  *(v440 + 69) = 0x100000000;
  v552 = *(a2 + 18);
  v553 = a1;
  if ((v552 - 8) > 0xFFFFFFFD)
  {
    v440[596] = 0;
    v557 = *(a2 + 112);
    if (v557)
    {
      if (v557 == 3)
      {
        LODWORD(v557) = 1;
      }

      else
      {
        if (v557 != 1)
        {
          goto LABEL_647;
        }

        LODWORD(v557) = 2;
      }
    }

    *(v440 + 136) = 128;
    *(v440 + 138) = 8;
    *(v440 + 78) = v557;
LABEL_647:
    *(v440 + 139) = 0;
    *(v440 + 126) = 1;
    v587 = *(a1 + 44);
    v588 = *(a2 + 15);
    {
      AGX::BVHDescriptor::isExtendedLimits(void)const::forceExtendedLimits = 0;
    }

    if (v588)
    {
      v589 = 1;
    }

    else
    {
      v589 = (v587 < 4) & (AGX::BVHDescriptor::isExtendedLimits(void)const::forceExtendedLimits | ((*(a2 + 28) & 4u) >> 2));
    }

    v440[603] = v589;
    v440[597] = *(a2 + 120) == 1;
    {
      AGX::BVHDescriptor::isExtendedLimits(void)const::forceExtendedLimits = 0;
    }

    if ((AGX::BVHDescriptor::isExtendedLimits(void)const::forceExtendedLimits & 1) != 0 || (*(a2 + 28) & 4) != 0)
    {
      v590 = -1;
    }

    else
    {
      v590 = 255;
    }

    *(v440 + 73) = v590;
    *(v440 + 33) = *(a2 + 72);
    *(v440 + 72) = *(a2 + 80);
    v591 = *(a2 + 64);
    *(v440 + 37) = v591;
    if (!v591)
    {
      v592 = *(a2 + 52);
      memset(__src, 0, 24);
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(__src, a1, 4, 0);
      v591 = __src[1];
      *__src[0] = v592;
      v553 = a1;
    }

    *(v440 + 38) = v591;
    if ((*(a2 + 18) & 0xFE) != 6 || (*(a2 + 112) - 3) >= 2)
    {
      *(v440 + 26) = v591;
      *(v440 + 54) = 1;
    }

    v593 = v993;
    *(v440 + 34) = v991;
    *(v440 + 35) = v593;
    goto LABEL_815;
  }

  if (v551)
  {
    v554 = *(a2 + 160);
    *(v440 + 126) = v554;
    if (v554 >= 2)
    {
      *(v440 + 508) = *(a2 + 180);
      *(v440 + 516) = *(a2 + 172);
      *(v440 + 131) = 64;
    }

    LODWORD(v555) = 0;
    if (v552 > 2)
    {
      if (v552 == 4)
      {
        goto LABEL_662;
      }

      v556 = 0;
      if (v552 != 3)
      {
        goto LABEL_740;
      }
    }

    else if (v552)
    {
      v556 = 0;
      if (v552 != 1)
      {
        goto LABEL_740;
      }

LABEL_662:
      LODWORD(v555) = 4;
      *(v440 + 138) = 4;
      v556 = 32;
      goto LABEL_740;
    }

    v585 = *(a2 + 17);
    if (*(a2 + 17))
    {
      if (v585 != 2)
      {
        v556 = 0;
LABEL_687:
        if (*(a2 + 18) && *(a2 + 18) != 3)
        {
          v600 = v440[596];
        }

        else
        {
          v595 = *(a1 + 44);
          {
            v889 = v595;
            v595 = v889;
            if (v890)
            {
              AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
              v595 = v889;
            }
          }

          v596 = AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild;
          v597 = *(a2 + 28);
          {
            v931 = v595;
            v595 = v931;
            if (v891)
            {
              AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
              v595 = v931;
            }
          }

          v598 = v597 & 2;
          {
            v932 = v595;
            v595 = v932;
            if (v892)
            {
              AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
              v595 = v932;
            }
          }

          if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit)
          {
            v599 = 0;
          }

          else if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable)
          {
            v599 = 1;
          }

          else
          {
            v599 = *(a2 + 28) & 1;
          }

          v600 = isQTBEnabled(v595, a2, (v596 | (v598 >> 1)) & 1, v599);
          v440[596] = v600;
        }

        v440[599] = -1;
        v440[600] = v600;
        v601 = *(a1 + 44);
        {
        }

        if (v601 <= 4)
        {
          {
            AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
          }

          {
            AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
          }

          if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) == 0 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || (*(a2 + 28)))
          {
            goto LABEL_713;
          }

          {
            AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
          }

          if (AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild)
          {
LABEL_713:
            LOBYTE(v602) = 1;
          }

          else
          {
            v602 = (*(a2 + 28) >> 1) & 1;
          }
        }

        else
        {
          LOBYTE(v602) = 0;
        }

        v440[601] = v602;
        {
          LOBYTE(__src[0]) = 0;
          findEnvVarNum<BOOL>("AGX_ALWAYS_ALLOW_PAIR_FALLBACK", __src);
          if (__src[0])
          {
            v888 = 1;
          }

          else
          {
            LOBYTE(__src[0]) = 0;
            findEnvVarNum<BOOL>("AGX_ALWAYS_ALLOW_VERT_MATCHING_ON_POS", __src);
            v888 = __src[0];
          }

          isVertMatchingOnPositionRequestedAlwaysAllowed(void)::allow = v888 & 1;
          v553 = a1;
        }

        if (isVertMatchingOnPositionRequestedAlwaysAllowed(void)::allow == 1)
        {
          v603 = v911;
          {
            AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
          }

          {
            AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
          }

          v604 = ((AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) != 0 || (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) == 0 && (*(a2 + 28) & 1) == 0) && *(a2 + 18) - 6 < 0xFFFFFFFD;
        }

        else
        {
          v604 = 0;
          v603 = v911;
        }

        v440[602] = v604;
        v440[613] = 0;
        v605 = *(v134 + 8);
        *(v440 + 26) = *(v134 + 3);
        *(v440 + 54) = v605;
        v555 = *(v440 + 138);
        if ((v555 & 0xFFFFFFFE) == 2)
        {
          v606 = *(a4 + 1288);
          if (*(a4 + 1296) == 4)
          {
            v607 = *(v606 + 16);
          }

          else
          {
            v607 = 0;
          }

          *(v440 + 28) = v607 + *(v606 + 16 * *(a4 + 1300) + 24) + *(v606 + 8 * *(a4 + 1300) + 56) + *(a4 + 1304);
          *(v440 + 58) = v603;
          v608 = *(a4 + 1320);
          if (*(a4 + 1328) == 4)
          {
            v609 = *(v608 + 16);
          }

          else
          {
            v609 = 0;
          }

          v610 = *(a2 + 40);
          *(v440 + 30) = v609 + *(v608 + 16 * *(a4 + 1332) + 24) + *(v608 + 8 * *(a4 + 1332) + 56) + *(a4 + 1336);
          *(v440 + 62) = v610;
        }

        if (v440[596] == 1)
        {
          *(v440 + 32) = *(*(v553 + 24) + *MEMORY[0x29EDC5638] + 8);
          v611 = 0.0;
          if (v555 <= 3)
          {
            v611 = flt_29D2F27A0[v555];
          }

          v612 = v934 / v933;
          if (v612 < 1.0)
          {
            v612 = 1.0;
          }

          v613 = vcvtps_u32_f32(fminf(((v612 + v611) + -1.0) / v611, 4.0) * v933);
          if (v613 <= 1)
          {
            v613 = 1;
          }

          *(v440 + 137) = v613;
        }

LABEL_740:
        if (!*(a2 + 136))
        {
          if (*(v553 + 44) <= 4u)
          {
            if (v556)
            {
              if (v556 >= 0x2D)
              {
                v614 = 64;
              }

              else
              {
                v614 = 48;
              }
            }

            else
            {
              v614 = 4;
            }

            goto LABEL_813;
          }

          *(v440 + 136) = v556;
          goto LABEL_814;
        }

        if (v552 > 2)
        {
          if (v552 == 4)
          {
LABEL_754:
            if (*(v553 + 44) > 4u)
            {
              v614 = 40;
            }

            else
            {
              v614 = 48;
            }

LABEL_813:
            *(v440 + 136) = v614;
            goto LABEL_814;
          }

          if (v552 != 3)
          {
LABEL_814:
            *(v440 + 154) = 1;
            v440[608] = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(v555, a2, *(v553 + 44));
            goto LABEL_815;
          }
        }

        else if (v552)
        {
          if (v552 != 1)
          {
            goto LABEL_814;
          }

          goto LABEL_754;
        }

        if (*(a2 + 17) == 2)
        {
          if (*(v553 + 44) > 4u)
          {
            v614 = 76;
          }

          else
          {
            v614 = 96;
          }

          goto LABEL_813;
        }

        if (!*(a2 + 17))
        {
          if (*(v553 + 44) > 4u)
          {
            v614 = 52;
          }

          else
          {
            v614 = 64;
          }

          goto LABEL_813;
        }

        goto LABEL_814;
      }

      v586 = 60;
    }

    else
    {
      v586 = 44;
    }

    *(v440 + 138) = v585;
    v440[606] = 1;
    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(v585, a2, *(a1 + 44)) == 3)
    {
      v556 = 36;
    }

    else
    {
      v556 = v586;
    }

    goto LABEL_687;
  }

LABEL_815:
  v624 = *(a4 + 1912);
  if (*(a4 + 1920) == 4)
  {
    v625 = *(v624 + 16);
  }

  else
  {
    v625 = 0;
  }

  v626 = *(a4 + 1936) >> 2;
  *(v440 + 48) = v625 + *(v624 + 16 * *(a4 + 1924) + 24) + *(v624 + 8 * *(a4 + 1924) + 56) + *(a4 + 1928);
  *(v440 + 196) = v626;
  v627 = *(a2 + 32);
  v628 = *(a2 + 40);
  if (v628 >= 0x101 || v627 >= 0x800001)
  {
    v630 = 2;
  }

  else
  {
    v630 = 1;
  }

  if (v628 < 0x11 && v627 < 0x801)
  {
    v630 = 0;
  }

  *(v440 + 140) = v630;
  v632 = *(a2 + 15);
  if ((v632 & 0x400) != 0)
  {
    if (!*(a2 + 4) && v628 && !*(a2 + 18) && *(a2 + 12) == 3)
    {
      v634 = 0x3FFFFFFFLL;
      if ((*(a2 + 28) & 4) == 0)
      {
        v634 = 0xFFFFFFFLL;
      }

      v635 = *(a2 + 192) + -1.0;
      if (v635 < 0.0)
      {
        v635 = 0.0;
      }

      v627 += vcvtpd_u64_f64(v635 * v627);
      if (v634 < v627)
      {
        LODWORD(v627) = v634;
      }
    }

    if ((v632 & 2) != 0)
    {
      v636 = *(a2 + 160);
      if (v636 >= 2)
      {
        LODWORD(v627) = v627 * (v636 - 1);
      }
    }

    if (v627 <= 1)
    {
      LODWORD(v627) = 1;
    }

    v633 = (*(a2 + 20) + v627 - 1) / *(a2 + 20) - 1;
  }

  else
  {
    v633 = AGX::BVHDescriptor::maxInnerNodeCount(a2);
  }

  *(v440 + 144) = AGX::BVHDescriptor::topDownLeafNodeCapacity(a2) + v633;
  *(v440 + 145) = v933;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahPrimitiveLeafCost = 1090519040;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahInstanceLeafCost = 1065353216;
  }

  if (*(a2 + 18) != 3 && *(a2 + 18))
  {
    v637 = 8 * *(a2 + 22);
    v639 = v637 >= 8;
    v638 = 8;
  }

  else
  {
    if (*(v553 + 44) >= 5u)
    {
      v637 = 28;
    }

    else
    {
      v637 = 16;
    }

    v638 = 8 * *(a2 + 22);
    v639 = v637 >= v638;
  }

  if (v639)
  {
    v640 = v638;
  }

  else
  {
    v640 = v637;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::kWideBuildMaxDepth = 16;
  }

  if (v934 <= v640)
  {
    v641 = 1;
  }

  else
  {
    v641 = ((86 * (34 - __clz((v934 + v640 - 1) / v640 - 1))) >> 8) + 1;
  }

  if ((*(a2 + 18) & 0xFE) == 6)
  {
    v642 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahInstanceLeafCost;
  }

  else
  {
    v642 = &AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::sahPrimitiveLeafCost;
  }

  *(v440 + 146) = *v642;
  if (v641 <= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::kWideBuildMaxDepth)
  {
    v641 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::kWideBuildMaxDepth;
  }

  if (v641 >= 0x10)
  {
    v641 = 16;
  }

  *(v440 + 147) = v641;
  *(v440 + 297) = v640;
  *(v440 + 296) = *(a2 + 22);
  {
    AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
  }

  {
    AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
  }

  if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit)
  {
    v643 = 0;
  }

  else if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable)
  {
    v643 = 1;
  }

  else
  {
    v643 = *(a2 + 28) & 1;
  }

  v440[598] = v643;
  v440[604] = AGX::BVHDescriptor::useSpatialSplits(a2);
  {
    AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
  }

  v440[605] = AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild | ((*(a2 + 28) & 2u) >> 1);
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::multiThreadgroupSAHScoreNodeThreshold = 1024;
  }

  v644 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::multiThreadgroupSAHScoreNodeThreshold;
  v440[609] = *(v440 + 144) >= 2 * AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::multiThreadgroupSAHScoreNodeThreshold;
  *(v440 + 310) = v644;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::multiThreadgroupWideBuildNodeThreshold = 4096;
  }

  v440[573] = *(v440 + 145) >= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setupBuildSAHAwareBVH8Params(AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::TopDownScratchInfo const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::SharedBuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&)::multiThreadgroupWideBuildNodeThreshold;
  v440[610] = AGX::BVHDescriptor::requiresCompactionMetadata(a2, v440[608]);
  {
    getForcedMatchLeafHeaders(AGX::BVHDescriptor const&)::forceMatchLeafHeaders = 0;
  }

  v440[612] = getForcedMatchLeafHeaders(AGX::BVHDescriptor const&)::forceMatchLeafHeaders | ((*(a2 + 15) & 0x1000) >> 12);
  v645 = v440[596];
  {
    AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
  }

  v646 = AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild;
  v647 = *(a2 + 28);
  {
    AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
  }

  {
    AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
  }

  if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit)
  {
    v648 = 0;
  }

  else if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable)
  {
    v648 = 1;
  }

  else
  {
    v648 = *(a2 + 28) & 1;
  }

  v649 = v440[602];
  v650 = *(v553 + 44);
  if (v650 >= 5)
  {
    v651 = 2688;
  }

  else
  {
    v651 = 1536;
  }

  if (v440[608] - 1 <= 1)
  {
    __src[0] = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v650 < 5), 0x1FuLL)), 0x7E000000430, 0x4F0000008A0);
    if (v651 <= 4 * *(__src | (4 * v649)))
    {
      v651 = 4 * *(__src | (4 * v649));
    }
  }

  if (v645)
  {
    if ((v646 | ((v647 & 2) >> 1) | v648))
    {
      v652 = 64;
    }

    else
    {
      v653 = v650 >= 5 ? 5056 : 8064;
      v654 = v650 >= 5 ? 8832 : 4288;
      v655 = v649 ? v653 : v654;
      v652 = (v655 + 124) & 0x7FC0;
    }

    if (v652 > v651)
    {
      LOWORD(v651) = v652;
    }
  }

  v656 = 0;
  v657 = 0;
  v658 = 0;
  *(v440 + 311) = v651;
  v659 = 632;
LABEL_1068:
  *(&v930 + 1) = v657;
  if (v963)
  {
    v731 = *a4;
    if (*(a4 + 8) == 4)
    {
      v732 = *(v731 + 16);
    }

    else
    {
      v732 = 0;
    }

    v741 = *(a4 + 64);
    if (*(a4 + 72) == 4)
    {
      v742 = *(v741 + 16);
    }

    else
    {
      v742 = 0;
    }

    v743 = *(a4 + 12);
    v744 = *(a4 + 76);
    v745 = *(a4 + 1288);
    v746 = *(a4 + 1300);
    if (*(a4 + 1296) == 4)
    {
      v747 = *(v745 + 16);
    }

    else
    {
      v747 = 0;
    }

    v748 = v731 + 16 * v743;
    v749 = v731 + 8 * v743;
    v750 = v741 + 16 * v744;
    v751 = v741 + 8 * v744;
    v752 = v745 + 16 * v746;
    v753 = v745 + 8 * v746;
    v754 = *(a4 + 1320);
    v755 = *(a4 + 1332);
    if (*(a4 + 1328) == 4)
    {
      v756 = *(v754 + 16);
    }

    else
    {
      v756 = 0;
    }

    v757 = *(v750 + 24);
    v758 = *(v751 + 56);
    v759 = *(v752 + 24);
    v760 = *(v753 + 56);
    v761 = *(v754 + 16 * v755 + 24);
    v762 = *(v754 + 8 * v755 + 56);
    v763 = *(a4 + 1352);
    v764 = *(a4 + 1364);
    if (*(a4 + 1360) == 4)
    {
      v765 = *(v763 + 16);
    }

    else
    {
      v765 = 0;
    }

    v766 = v732 + *(v748 + 24);
    v767 = v742 + v757;
    v768 = v758 + *(a4 + 80);
    v769 = v747 + v759;
    v770 = v756 + v761;
    v771 = v765 + *(v763 + 16 * v764 + 24);
    v772 = *(v763 + 8 * v764 + 56) + *(a4 + 1368);
    v773 = *(a4 + 32);
    if (*(a4 + 40) == 4)
    {
      v774 = *(v773 + 16);
    }

    else
    {
      v774 = 0;
    }

    v733 = v989[0];
    v734 = (v766 + *(v749 + 56) + *(a4 + 16));
    v735 = (v767 + v768);
    v736 = (v769 + v760 + *(a4 + 1304));
    v737 = (v770 + v762 + *(a4 + 1336));
    v738 = (v771 + v772);
    v739 = (v774 + *(v773 + 16 * *(a4 + 44) + 24) + *(v773 + 8 * *(a4 + 44) + 56) + *(a4 + 48));
    v775 = *(a4 + 1944);
    if (*(a4 + 1952) == 4)
    {
      v776 = *(v775 + 16);
    }

    else
    {
      v776 = 0;
    }

    v740 = (v776 + *(v775 + 16 * *(a4 + 1956) + 24) + *(v775 + 8 * *(a4 + 1956) + 56) + *(a4 + 1960));
  }

  else
  {
    v733 = 0;
    v734 = 0;
    v735 = 0;
    v736 = 0;
    v737 = 0;
    v738 = 0;
    v739 = 0;
    v740 = 0;
  }

  v935 = v659;
  v927 = v733;
  *&v930 = v658;
  v922 = v735;
  v924 = v734;
  v918 = v737;
  v920 = v736;
  v914 = v739;
  v916 = v738;
  v912 = v740;
  v906 = v656;
  if ((*(a2 + 15) & 0x400) != 0)
  {
    v908 = 0;
    v910 = 0;
    v896 = 0;
    v897 = 0;
    v898 = 0;
    v899 = 0;
    v894 = 0;
    v895 = 0;
    v779 = 0;
    v966 = 0;
    v907 = 0;
    v780 = 0;
    v900 = 0;
    v902 = 0;
    v904 = 0;
    v905 = 0;
    v781 = 0;
    v782 = 0;
  }

  else
  {
    v777 = *(a4 + 1128);
    if (*(a4 + 1136) == 4)
    {
      v778 = *(v777 + 16);
    }

    else
    {
      v778 = 0;
    }

    v783 = *(a4 + 1140);
    v784 = *(a4 + 1160);
    v785 = *(a4 + 1172);
    if (*(a4 + 1168) == 4)
    {
      v786 = *(v784 + 16);
    }

    else
    {
      v786 = 0;
    }

    v787 = v777 + 8 * v783;
    v788 = *(a4 + 1192);
    v789 = *(a4 + 1204);
    if (*(a4 + 1200) == 4)
    {
      v790 = *(v788 + 16);
    }

    else
    {
      v790 = 0;
    }

    v791 = v777 + 16 * v783;
    v792 = *(v787 + 56);
    v793 = v778 + *(a4 + 1144);
    v794 = v784 + 16 * v785;
    v795 = *(v784 + 8 * v785 + 56);
    v796 = v786 + *(a4 + 1176);
    v797 = v788 + 16 * v789;
    v798 = *(v788 + 8 * v789 + 56);
    v799 = v790 + *(a4 + 1208);
    v800 = *(a4 + 1224);
    v801 = *(a4 + 1236);
    v802 = v800 + 16 * v801;
    if (*(a4 + 1232) == 4)
    {
      v803 = *(v800 + 16);
    }

    else
    {
      v803 = 0;
    }

    v782 = (v792 + v793);
    v781 = (v795 + v796);
    v780 = (v798 + v799);
    v804 = *(v791 + 24);
    v904 = *(v791 + 32);
    v805 = *(v794 + 24);
    v905 = *(v794 + 32);
    v806 = *(v797 + 24);
    v907 = *(v797 + 32);
    v807 = *(v802 + 24);
    v910 = *(v802 + 32);
    v808 = (*(v800 + 8 * v801 + 56) + v803 + *(a4 + 1240));
    v966 = v808;
    {
      v909 = (v798 + v799);
      v901 = v782;
      v903 = v781;
      v782 = v901;
      v781 = v903;
      v780 = v909;
      v808 = v966;
      if (v883)
      {
        AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
        v782 = v901;
        v781 = v903;
        v780 = v909;
        v808 = v966;
      }
    }

    v899 = &v782[v804];
    v900 = &v781[v805];
    v902 = &v780[v806];
    v809 = &v808[v807];
    {
      v884 = v780;
      v885 = v781;
      v886 = v782;
      v782 = v886;
      v781 = v885;
      v780 = v884;
      if (v887)
      {
        AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
        v782 = v886;
        v781 = v885;
        v780 = v884;
      }
    }

    v908 = v809;
    if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) == 0 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || (*(a2 + 28)))
    {
      v810 = *(a4 + 1520);
      v811 = *(a4 + 1532);
      v812 = v810 + 16 * v811;
      if (*(a4 + 1528) == 4)
      {
        v813 = *(v810 + 16);
      }

      else
      {
        v813 = 0;
      }

      v896 = (*(v810 + 8 * v811 + 56) + v813 + *(a4 + 1536));
      v897 = &v896[*(v812 + 24)];
      v898 = *(v812 + 32);
      v814 = *(a4 + 1488);
      v815 = *(a4 + 1500);
      v816 = v814 + 16 * v815;
      v817 = *(v816 + 24);
      v895 = *(v816 + 32);
      if (*(a4 + 1496) == 4)
      {
        v818 = *(v814 + 16);
      }

      else
      {
        v818 = 0;
      }

      v779 = (*(v814 + 8 * v815 + 56) + v818 + *(a4 + 1504));
      v894 = &v779[v817];
    }

    else
    {
      v896 = 0;
      v897 = 0;
      v898 = 0;
      v894 = 0;
      v895 = 0;
      v779 = 0;
    }
  }

  v819 = *(a4 + 800);
  v820 = *(a4 + 812);
  v821 = v782;
  v822 = v781;
  v823 = v780;
  if (*(a4 + 808) == 4)
  {
    v824 = *(v819 + 16);
  }

  else
  {
    v824 = 0;
  }

  v893 = *(v819 + 16 * v820 + 24);
  v825 = *(v819 + 8 * v820 + 56);
  v826 = *(a4 + 816);
  v827 = *(a2 + 176);
  *&__src[20] = *(a2 + 160);
  *&__src[22] = v827;
  __src[24] = *(a2 + 192);
  v828 = *(a2 + 112);
  *&__src[12] = *(a2 + 96);
  *&__src[14] = v828;
  v829 = *(a2 + 128);
  *&__src[18] = *(a2 + 144);
  *&__src[16] = v829;
  v830 = *(a2 + 48);
  *&__src[4] = *(a2 + 32);
  *&__src[6] = v830;
  v831 = *(a2 + 64);
  *&__src[10] = *(a2 + 80);
  *&__src[8] = v831;
  v832 = *a2;
  *&__src[2] = *(a2 + 16);
  *__src = v832;
  v833 = a5;
  __src[26] = v948;
  __src[27] = v134;
  __src[30] = v947;
  __src[31] = v946;
  __src[32] = v945;
  __src[33] = v971;
  *&__src[38] = v930;
  *&__src[40] = v906;
  __src[46] = v899;
  __src[47] = v821;
  *&__src[48] = v904;
  __src[50] = v900;
  __src[51] = v822;
  *&__src[52] = v905;
  __src[54] = v902;
  __src[55] = v823;
  __src[56] = v907;
  __src[57] = 0;
  __src[25] = v833;
  __src[28] = 504;
  __src[29] = v951;
  *&__src[34] = v976;
  *&__src[36] = v977;
  *&__src[44] = v978[1];
  *&__src[42] = v978[0];
  __src[58] = v908;
  __src[59] = v966;
  __src[60] = v910;
  __src[61] = 0;
  __src[62] = v897;
  __src[63] = v896;
  __src[64] = v898;
  __src[65] = 0;
  __src[66] = v894;
  __src[67] = v779;
  __src[68] = v895;
  __src[69] = 0;
  __src[70] = v943;
  __src[71] = v440;
  __src[72] = v935;
  __src[73] = v962;
  __src[74] = v937;
  __src[75] = v939;
  __src[76] = v941;
  __src[77] = 0;
  __src[78] = v953;
  __src[79] = v955;
  *&__src[80] = v1000;
  *&__src[82] = v893;
  __src[84] = (v825 + v824 + v826);
  __src[85] = v927;
  __src[86] = v924;
  __src[87] = v922;
  __src[88] = v920;
  __src[89] = v918;
  __src[90] = v916;
  __src[91] = v914;
  __src[92] = v912;
  __src[93] = a7;
  __src[94] = a8;
  __src[95] = 0;
  v294 = a1;
  if (*(a1 + 49) == 1)
  {
    v835 = *(v957 + 8);
    v834 = *(v957 + 16);
    if (v835 >= v834)
    {
      v847 = 0xAAAAAAAAAAAAAAABLL * ((v835 - *v957) >> 8);
      if (v847 + 1 > 0x55555555555555)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v848 = 0xAAAAAAAAAAAAAAABLL * ((v834 - *v957) >> 8);
      v849 = 2 * v848;
      if (2 * v848 <= v847 + 1)
      {
        v849 = v847 + 1;
      }

      if (v848 >= 0x2AAAAAAAAAAAAALL)
      {
        v850 = 0x55555555555555;
      }

      else
      {
        v850 = v849;
      }

      if (v850)
      {
        if (v850 <= 0x55555555555555)
        {
          operator new();
        }

        goto LABEL_1238;
      }

      v851 = *&__src[22];
      v852 = 768 * v847;
      *(v852 + 160) = *&__src[20];
      *(v852 + 176) = v851;
      v853 = *&__src[14];
      *(v852 + 96) = *&__src[12];
      *(v852 + 112) = v853;
      v854 = *&__src[18];
      *(v852 + 128) = *&__src[16];
      *(v852 + 144) = v854;
      v855 = *&__src[6];
      *(v852 + 32) = *&__src[4];
      *(v852 + 48) = v855;
      v856 = *&__src[10];
      *(v852 + 64) = *&__src[8];
      *(v852 + 80) = v856;
      v857 = *&__src[2];
      *v852 = *__src;
      *(v852 + 16) = v857;
      v858 = __src[25];
      __src[25] = 0;
      *(v852 + 192) = __src[24];
      *(v852 + 200) = v858;
      memcpy((768 * v847 + 208), &__src[26], 0x230uLL);
      v846 = 768 * v847 + 768;
      v859 = *v957;
      v860 = *(v957 + 8);
      v861 = 768 * v847 + *v957 - v860;
      if (*v957 != v860)
      {
        v862 = *v957;
        v863 = 768 * v847 + *v957 - v860;
        do
        {
          *v863 = *v862;
          v864 = *(v862 + 1);
          v865 = *(v862 + 2);
          v866 = *(v862 + 4);
          *(v863 + 48) = *(v862 + 3);
          *(v863 + 64) = v866;
          *(v863 + 16) = v864;
          *(v863 + 32) = v865;
          v867 = *(v862 + 5);
          v868 = *(v862 + 6);
          v869 = *(v862 + 8);
          *(v863 + 112) = *(v862 + 7);
          *(v863 + 128) = v869;
          *(v863 + 80) = v867;
          *(v863 + 96) = v868;
          v870 = *(v862 + 9);
          v871 = *(v862 + 10);
          v872 = *(v862 + 11);
          *(v863 + 192) = v862[24];
          *(v863 + 160) = v871;
          *(v863 + 176) = v872;
          *(v863 + 144) = v870;
          v873 = v862[25];
          v862[25] = 0;
          *(v863 + 200) = v873;
          memcpy((v863 + 208), v862 + 26, 0x230uLL);
          v862 += 96;
          v863 += 768;
        }

        while (v862 != v860);
        do
        {

          v859 += 96;
        }

        while (v859 != v860);
        v859 = *v957;
      }

      *v957 = v861;
      *(v957 + 8) = v846;
      *(v957 + 16) = 0;
      if (v859)
      {
        operator delete(v859);
      }
    }

    else
    {
      *v835 = *__src;
      v836 = *&__src[2];
      v837 = *&__src[4];
      v838 = *&__src[8];
      *(v835 + 48) = *&__src[6];
      *(v835 + 64) = v838;
      *(v835 + 16) = v836;
      *(v835 + 32) = v837;
      v839 = *&__src[10];
      v840 = *&__src[12];
      v841 = *&__src[16];
      *(v835 + 112) = *&__src[14];
      *(v835 + 128) = v841;
      *(v835 + 80) = v839;
      *(v835 + 96) = v840;
      v842 = *&__src[18];
      v843 = *&__src[20];
      v844 = *&__src[22];
      *(v835 + 192) = __src[24];
      *(v835 + 160) = v843;
      *(v835 + 176) = v844;
      *(v835 + 144) = v842;
      v845 = __src[25];
      __src[25] = 0;
      *(v835 + 200) = v845;
      memcpy((v835 + 208), &__src[26], 0x230uLL);
      v846 = v835 + 768;
    }

    *(v957 + 8) = v846;
  }

  else
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeTopDownBuilds(a1, __src, 1);
  }

  v307 = __src[25];
LABEL_1144:

  if ((*(v294 + 49) & 1) == 0)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::endVirtualSubstream(*(v294 + 16));
  }
}