uint64_t createDataFromStatistics(uint64_t a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v6 = *a3;
  if (*a3 < 0.0 || v6 > 4095.0)
  {
    createDataFromStatistics_cold_5(v140);
    return LODWORD(v140[0]);
  }

  v7 = *(a3 + 8);
  if (v7 < 0.0 || v7 > 4095.0)
  {
    createDataFromStatistics_cold_4(v140);
    return LODWORD(v140[0]);
  }

  v8 = *(a3 + 16);
  if (v8 < 0.0 || v8 > 4095.0)
  {
    createDataFromStatistics_cold_3(v140);
    return LODWORD(v140[0]);
  }

  if (v8 > v7)
  {
    createDataFromStatistics_cold_2(v140);
    return LODWORD(v140[0]);
  }

  if (v8 < v6)
  {
    createDataFromStatistics_cold_1(v140);
    return LODWORD(v140[0]);
  }

  v11 = a1 + 28672;
  if (a2)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  *(a1 + 148) = v12;
  v13 = a1 + 148;
  v14 = *(a3 + 100);
  *(a1 + 152) = v14;
  if (a5 == 1)
  {
    v15 = *(a3 + 24);
    v16 = *(a3 + 32);
    v17 = *(a3 + 40);
    v18 = *(a3 + 44);
    v19 = *(a3 + 48);
    v20 = *(a3 + 52);
    v21 = *(a3 + 60);
    v22 = *(a3 + 68);
    v23 = *(a3 + 76);
    v24 = *(a3 + 84);
    v25 = *(a3 + 92);
    v26 = *(a3 + 101);
    v27 = *(a3 + 103);
    v28 = *(a3 + 104);
    v29 = *(a3 + 105);
    v30 = *(a3 + 106);
    *(a1 + 36) = v6;
    *(a1 + 44) = v7;
    *(a1 + 52) = v8;
    *(a1 + 60) = v15;
    *(a1 + 68) = v16;
    *(a1 + 76) = v17;
    *(a1 + 80) = v18;
    *(a1 + 84) = v19;
    *(a1 + 88) = v20;
    *(a1 + 96) = v21;
    *(a1 + 104) = v22;
    *(a1 + 112) = v23;
    *(a1 + 120) = v24;
    *(a1 + 128) = v25;
    *(a1 + 136) = v14;
    *(a1 + 137) = v26;
    *(a1 + 139) = v27;
    *(a1 + 140) = v28;
    *(a1 + 141) = v29;
    *(a1 + 142) = v30;
    *(a1 + 152) = 0;
    *(a1 + 29276) = 0;
    *(a1 + 29268) = 0;
    if (v29)
    {
      v31 = vcvtad_u64_f64(v22);
      v32 = vcvtad_u64_f64(v23);
      *(a1 + 29414) = v31;
      *(a1 + 29418) = v32;
      *(a1 + 29416) = v20 - (v31 + vcvtad_u64_f64(v24));
      *(a1 + 29420) = v21 - (v32 + vcvtad_u64_f64(v25));
      *(a1 + 29272) = 1;
    }

    *(a1 + 29268) = 1;
    v33 = round(v6 * 4095.0);
    if (v33 <= 4095.0)
    {
      v34 = v33;
    }

    else
    {
      v34 = 4095.0;
    }

    v35 = v34;
    if (v33 < 0.0)
    {
      LOWORD(v35) = 0;
    }

    *(a1 + 29280) = v35;
    v36 = round(v7 * 4095.0);
    if (v36 <= 4095.0)
    {
      v37 = v36;
    }

    else
    {
      v37 = 4095.0;
    }

    v38 = v37;
    if (v36 < 0.0)
    {
      LOWORD(v38) = 0;
    }

    *(a1 + 29282) = v38;
    v39 = round(v8 * 4095.0);
    if (v39 <= 4095.0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 4095.0;
    }

    v41 = v40;
    if (v39 < 0.0)
    {
      LOWORD(v41) = 0;
    }

    *(a1 + 29284) = v41;
    if (!v14)
    {
      goto LABEL_119;
    }

    setStaticDMData(a1);
    if (v27)
    {
      *(v11 + 736) = v17;
      *(v11 + 732) = v18;
      *(v11 + 734) = v19;
      *(v11 + 598) = 1;
    }

    if (!v28)
    {
      goto LABEL_119;
    }

    v42 = round(v16 * 4095.0);
    if (v42 <= 4095.0)
    {
      v43 = v42;
    }

    else
    {
      v43 = 4095.0;
    }

    v44 = v43;
    if (v42 < 0.0)
    {
      LOWORD(v44) = 0;
    }

    v45 = round(v15 * 4095.0);
    if (v45 <= 4095.0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 4095.0;
    }

    *(v11 + 738) = v44;
    if (v45 >= 0.0)
    {
      LOWORD(v47) = v46;
    }

    else
    {
      LOWORD(v47) = 0;
    }
  }

  else
  {
    if (*(a1 + 32) | a4)
    {
      *(a1 + 32) = 0;
      v48 = *(a3 + 52);
      v49 = *(a3 + 60);
      v50 = *(a3 + 68);
      v51 = *(a3 + 76);
      v52 = *(a3 + 84);
      v53 = *(a3 + 92);
      v54 = *(a3 + 100);
      v136 = *(a3 + 101);
      v137 = *(a3 + 103);
      v55 = *(a3 + 104);
      v56 = *(a3 + 105);
      v57 = *(a3 + 106);
      v58 = *(a3 + 48);
      v60 = *(a3 + 16);
      v59 = *(a3 + 32);
      *(a1 + 36) = *a3;
      *(a1 + 52) = v60;
      *(a1 + 68) = v59;
      *(a1 + 84) = v58;
      *(a1 + 88) = v48;
      *(a1 + 96) = v49;
      *(a1 + 104) = v50;
      *(a1 + 112) = v51;
      *(a1 + 120) = v52;
      *(a1 + 128) = v53;
      *(a1 + 136) = v54;
      *(a1 + 139) = v137;
      *(a1 + 137) = v136;
      *(a1 + 140) = v55;
      *(a1 + 141) = v56;
      *(a1 + 142) = v57;
      *(a1 + 152) = 0;
      *(a1 + 29276) = 0;
      *(a1 + 29268) = 0;
      if (v56)
      {
        v61 = vcvtad_u64_f64(v50);
        v62 = vcvtad_u64_f64(v51);
        *(a1 + 29414) = v61;
        *(a1 + 29418) = v62;
        *(a1 + 29416) = v48 - (v61 + vcvtad_u64_f64(v52));
        *(a1 + 29420) = v49 - (v62 + vcvtad_u64_f64(v53));
        *(a1 + 29272) = 1;
      }

      v63 = *(a1 + 36);
      v64 = *(a1 + 44);
      v138 = v64;
      v65 = *(a1 + 52);
      v139 = v65;
      v140[0] = v63;
      legalizeAndSetLevel1Values(a1, v140, &v139, &v138);
      if (!v54)
      {
        goto LABEL_119;
      }

      setStaticDMData(a1);
      v66 = round(((v65 - v139) + 1.0) * 2048.0);
      if (v66 >= 0.0)
      {
        v67 = v66 <= 4095.0 ? v66 : 4095;
      }

      else
      {
        v67 = 0;
      }

      *(v11 + 736) = v67;
      v98 = round(((v63 - v140[0]) + 1.0) * 2048.0);
      if (v98 >= 0.0)
      {
        v99 = v98 <= 4095.0 ? v98 : 4095;
      }

      else
      {
        v99 = 0;
      }

      *(v11 + 732) = v99;
      v100 = round(((v64 - v138) + 1.0) * 2048.0);
      if (v100 >= 0.0)
      {
        if (v100 <= 4095.0)
        {
          v101 = v100;
        }

        else
        {
          LOWORD(v101) = 4095;
        }
      }

      else
      {
        LOWORD(v101) = 0;
      }

      *(v11 + 734) = v101;
      *(v11 + 598) = 1;
      if (!v55)
      {
        goto LABEL_119;
      }

      v106 = round(*(a1 + 68) * 4095.0);
      if (v106 >= 0.0)
      {
        if (v106 <= 4095.0)
        {
          v107 = v106;
        }

        else
        {
          LOWORD(v107) = 4095;
        }
      }

      else
      {
        LOWORD(v107) = 0;
      }

      *(v11 + 738) = v107;
      v108 = *(a1 + 60);
    }

    else
    {
      v125 = *(a3 + 24);
      v126 = *(a3 + 32);
      v131 = *(a3 + 60);
      v132 = *(a3 + 52);
      v129 = *(a3 + 76);
      v130 = *(a3 + 68);
      v127 = *(a3 + 92);
      v128 = *(a3 + 84);
      v68 = *(a3 + 104);
      v69 = *(a3 + 105);
      *(a1 + 152) = 0;
      *(a1 + 29268) = 0;
      *(a1 + 29276) = 0;
      v135 = *(a1 + 144);
      v70 = *(a1 + 36);
      v71 = *(a1 + 44);
      v72 = *(a1 + 52);
      v123 = *(a1 + 60);
      v124 = *(a1 + 68);
      v73 = v6 - v70;
      if (v6 - v70 <= 0.0)
      {
        v73 = -(v6 - v70);
      }

      v74 = v73;
      v75 = 1.0 / (expf((v74 + -0.5) * -8.0) + 1.0);
      v134 = v75;
      v76 = v8 - v72;
      if (v8 - v72 <= 0.0)
      {
        v76 = -(v8 - v72);
      }

      v77 = v76;
      v78 = 1.0 / (expf((v77 + -0.25) * -32.0) + 1.0);
      v133 = v78;
      v79 = v7 - v71;
      if (v7 - v71 <= 0.0)
      {
        v79 = -(v7 - v71);
      }

      v80 = v79;
      v81 = -0.8;
      if (v71 < v7)
      {
        v81 = -0.125;
      }

      v82 = 1.0 / (expf((v81 + v80) * -8.0) + 1.0);
      v84 = v6;
      v85 = 0.8;
      if (v135 > 0.0)
      {
        v85 = 24.0 / v135;
      }

      if (v85 <= 1.0)
      {
        v86 = v85;
      }

      else
      {
        v86 = 1.0;
      }

      v83 = v70;
      v87 = ((v86 * v134) * v84) + ((1.0 - (v86 * v134)) * v83);
      *(a1 + 36) = v87;
      v88 = v72;
      v89 = v8;
      v90 = ((v86 * v133) * v89) + ((1.0 - (v86 * v133)) * v88);
      *(a1 + 52) = v90;
      v91 = v71;
      v92 = v7;
      v93 = ((v86 * v82) * v92) + ((1.0 - (v86 * v82)) * v91);
      *(a1 + 44) = v93;
      v139 = v90;
      v140[0] = v87;
      v138 = v93;
      legalizeAndSetLevel1Values(a1, v140, &v139, &v138);
      if (v69)
      {
        v94 = vcvtad_u64_f64(v130);
        *(v11 + 742) = v94;
        v95 = vcvtad_u64_f64(v129);
        *(v11 + 746) = v95;
        *(v11 + 744) = v132 - (v94 + vcvtad_u64_f64(v128));
        *(v11 + 748) = v131 - (v95 + vcvtad_u64_f64(v127));
        *(v11 + 600) = 1;
        *(a1 + 88) = v132;
        *(a1 + 96) = v131;
        *(a1 + 104) = v130;
        *(a1 + 112) = v129;
        *(a1 + 120) = v128;
        *(a1 + 128) = v127;
        *(a1 + 141) = 1;
      }

      if (!v14)
      {
        goto LABEL_119;
      }

      setStaticDMData(a1);
      v96 = round(((v90 - v139) + 1.0) * 2048.0);
      if (v96 >= 0.0)
      {
        v97 = v96 <= 4095.0 ? v96 : 4095;
      }

      else
      {
        v97 = 0;
      }

      *(v11 + 736) = v97;
      v102 = round(((v87 - v140[0]) + 1.0) * 2048.0);
      if (v102 >= 0.0)
      {
        v103 = v102 <= 4095.0 ? v102 : 4095;
      }

      else
      {
        v103 = 0;
      }

      *(v11 + 732) = v103;
      v104 = round(((v93 - v138) + 1.0) * 2048.0);
      if (v104 >= 0.0)
      {
        if (v104 <= 4095.0)
        {
          v105 = v104;
        }

        else
        {
          LOWORD(v105) = 4095;
        }
      }

      else
      {
        LOWORD(v105) = 0;
      }

      *(v11 + 734) = v105;
      *(v11 + 598) = 1;
      if (!v68)
      {
        goto LABEL_119;
      }

      v109 = v126 - v126;
      if (v126 - v126 <= 0.0)
      {
        v109 = -(v126 - v126);
      }

      v110 = v109 * 8.0 + 0.100000001;
      if (v110 >= 1.0)
      {
        v110 = 1.0;
      }

      v111 = v110;
      v112 = v123;
      v113 = v125;
      v114 = v86 * v111;
      v115 = 1.0 - (v86 * v111);
      v108 = (((v86 * v111) * v113) + (v115 * v112));
      *(a1 + 60) = v108;
      v116 = v124;
      v117 = v126;
      v118 = ((v114 * v117) + (v115 * v116));
      *(a1 + 68) = v118;
      *(a1 + 140) = 1;
      v119 = round(v118 * 4095.0);
      if (v119 >= 0.0)
      {
        if (v119 <= 4095.0)
        {
          v120 = v119;
        }

        else
        {
          v120 = 4095;
        }
      }

      else
      {
        v120 = 0;
      }

      *(v11 + 738) = v120;
    }

    v121 = round(v108 * 4095.0);
    if (v121 >= 0.0)
    {
      if (v121 <= 4095.0)
      {
        v47 = v121;
      }

      else
      {
        LOWORD(v47) = 4095;
      }
    }

    else
    {
      LOWORD(v47) = 0;
    }
  }

  *(v11 + 740) = v47;
  *(v11 + 599) = 1;
LABEL_119:

  return MEMORY[0x1EEDBD4C0](v13, a6);
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v32 = 0u;
  v31 = 0u;
  if (*(a1 + 29765) || *(a1 + 29764))
  {
    VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_1(&v35);
    return v35;
  }

  if (*a4 < 0.0 || *a4 > 1.0)
  {
    VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_13(&v35);
    return v35;
  }

  v7 = *(a4 + 8);
  if (v7 < 0.0 || v7 > 1.0)
  {
    VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_12(&v35);
    return v35;
  }

  v9 = *(a4 + 16);
  if (v9 < 0.0 || v9 > 1.0)
  {
    VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_11(&v35);
    return v35;
  }

  v30[0] = *a4;
  *&v30[1] = v7;
  *&v30[2] = v9;
  BYTE14(v33[2]) = 1;
  BYTE12(v33[2]) = *(a4 + 100);
  if (*(a4 + 104))
  {
    v16 = *(a4 + 32);
    if (v16 < 0.0 || v16 > 1.0)
    {
      VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_3(&v35);
      return v35;
    }

    v17 = *(a4 + 24);
    if (v17 < 0.0 || v17 > 1.0)
    {
      VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_2(&v35);
      return v35;
    }

    LOBYTE(v34) = 1;
    *&v31 = v17;
    *(&v31 + 1) = v16;
  }

  if (*(a4 + 105))
  {
    v18 = *(a4 + 68);
    v19 = *(a4 + 76);
    if (v18 != 0.0 || v19 != 0.0 || *(a4 + 92) != 0.0 || *(a4 + 84) != 0.0)
    {
      v20 = *(a4 + 52);
      v21 = *(a4 + 60);
      v22 = *(a4 + 84);
      v23 = *(a4 + 92);
      v36 = CGRectStandardize(*&v18);
      x = v36.origin.x;
      y = v36.origin.y;
      width = v36.size.width;
      height = v36.size.height;
      *(v33 + 12) = v36;
      v36.origin.x = 0.0;
      v36.origin.y = 0.0;
      v36.size.width = v20;
      v36.size.height = v21;
      v38.origin.x = x;
      v38.origin.y = y;
      v38.size.width = width;
      v38.size.height = height;
      if (CGRectContainsRect(v36, v38))
      {
        if (width <= 0.0)
        {
          VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_10(&v35);
        }

        else if (height <= 0.0)
        {
          VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_9(&v35);
        }

        else if (width > 8191.0)
        {
          VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_8(&v35);
        }

        else if (height > 8191.0)
        {
          VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_7(&v35);
        }

        else if (x > 8191.0)
        {
          VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_6(&v35);
        }

        else
        {
          if (y <= 8191.0)
          {
            v39.origin.x = 0.0;
            v39.origin.y = 0.0;
            v37.origin.x = x;
            v37.origin.y = y;
            v37.size.width = width;
            v37.size.height = height;
            v39.size.width = v20;
            v39.size.height = v21;
            if (!CGRectEqualToRect(v37, v39))
            {
              BYTE1(v34) = 1;
            }

            goto LABEL_35;
          }

          VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_5(&v35);
        }
      }

      else
      {
        VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_4(&v35);
      }

      return v35;
    }
  }

LABEL_35:
  if (a5)
  {
    v28 = 1;
  }

  else
  {
    v28 = a3 == 0;
  }

  return createDataFromStatistics(a1, a2, v30, v28, a3 == 0, a6);
}

uint64_t VTHDRMetadataGenerationSessionInvalidate(uint64_t a1)
{
  if (a1 && !*(a1 + 16))
  {
    *(a1 + 16) = 1;
  }

  return 0;
}

uint64_t VTHDRMetadataGenerationSessionFinalize(uint64_t result)
{
  if (result)
  {
    if (!*(result + 16))
    {
      *(result + 16) = 1;
    }
  }

  return result;
}

__CFString *VTHDRMetadataGenerationSessionCopyDebugDesc(unsigned __int8 *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<VTHDRMetadataGenerationSession %p [%p]>{invalid:%d, }", a1, v4, a1[16]);
  return Mutable;
}

double setStaticDMData(uint64_t a1)
{
  *(a1 + 29274) = 257;
  *(a1 + 29432) = 0xA00000002;
  *(a1 + 29440) = -1;
  *(a1 + 29442) = 0x80008A00800099ALL;
  *(a1 + 29450) = 134219776;
  *(a1 + 29472) = 10;
  *(a1 + 29476) = 20;
  *(a1 + 29478) = 0x800076C08000800;
  *(a1 + 29486) = 134219776;
  *(a1 + 29616) = 0;
  *(a1 + 29276) = 1;
  *&result = 0x500000002;
  *(a1 + 29636) = 0x500000002;
  *(a1 + 29644) = -1;
  *(a1 + 29646) = 3696;
  *(a1 + 29674) = 2672;
  *(a1 + 29650) = 2;
  *(a1 + 29668) = 5;
  *(a1 + 29672) = 20;
  *(a1 + 29678) = 2;
  *(a1 + 29277) = 257;
  *(a1 + 29752) = 4;
  *(a1 + 29753) = 0;
  *(a1 + 29757) = 2;
  *(a1 + 152) = 1;
  return result;
}

uint64_t legalizeAndSetLevel1Values(uint64_t result, float *a2, float *a3, float *a4)
{
  *a2 = fminf(*a2, 0.0029304);
  *a3 = fmaxf(*a3, 0.2);
  v4 = fmaxf(*a4, 0.50808);
  *a4 = v4;
  v5 = v4 + -0.000244200244;
  if (v5 <= *a3)
  {
    v6 = v5;
    v7 = v6;
  }

  else
  {
    v7 = *a3;
  }

  *a3 = v7;
  *(result + 29268) = 1;
  v8 = round(*a2 * 4095.0);
  if (v8 >= 0.0)
  {
    if (v8 <= 4095.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 4095;
    }
  }

  else
  {
    v9 = 0;
  }

  *(result + 29280) = v9;
  v10 = round(*a4 * 4095.0);
  if (v10 >= 0.0)
  {
    if (v10 <= 4095.0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 4095;
    }
  }

  else
  {
    v11 = 0;
  }

  *(result + 29282) = v11;
  v12 = round(v7 * 4095.0);
  if (v12 >= 0.0)
  {
    if (v12 <= 4095.0)
    {
      v13 = v12;
    }

    else
    {
      LOWORD(v13) = 4095;
    }
  }

  else
  {
    LOWORD(v13) = 0;
  }

  *(result + 29284) = v13;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CMBlockBufferRef blockBufferOut)
{

  return CMBlockBufferCreateEmpty(v10, 0, 0, &blockBufferOut);
}

uint64_t vtRegisterVideoDecoderInternal(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (VTParavirtualizationIsRunningInGuest())
  {
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v11 = Mutable;
    CFDictionarySetValue(Mutable, @"CMClassID", @"com.apple.videotoolbox.videodecoder");
    CFDictionarySetValue(v11, @"CMClassImplementationName", a1);
    CFDictionarySetValue(v11, @"CMClassImplementationID", a2);
    FigCFDictionarySetInt64();
    CFDictionarySetValue(v11, @"CMMatchingInfo", a3);
    if (a4)
    {
      v12 = MEMORY[0x1E695E4C0];
    }

    else
    {
      if (!a5)
      {
LABEL_9:
        CFRelease(v11);
        return 0;
      }

      v12 = MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(v11, @"VTFactoryFunctionHasSpecificationArgument", *v12);
    FigRegistryAddItem();
    goto LABEL_9;
  }

  vtRegisterVideoDecoderInternal_cold_1(&v14);
  return v14;
}

uint64_t vtPopulateVideoDecoderRegistry()
{
  MEMORY[0x193AE3010](&sInitializeVideoDecoderRegistryOnce, vtInitializeVideoDecoderRegistry);
  FigSimpleMutexLock();
  if (_MergedGlobals_6 == 1)
  {
    vtLoadParavirtualizedVideoDecoders();
    _MergedGlobals_6 = 0;
  }

  return FigSimpleMutexUnlock();
}

void vtPrintRegisteredVideoDecoders()
{
  if (sVideoDecoderRegistry)
  {
    FigRegistryCopyItemList();
  }
}

CFMutableArrayRef VTCopyVideoDecoderRegistryMatchArrayForCodecType(unsigned int a1)
{
  v7 = 0;
  v8 = 0;
  *bytes = bswap32(a1);
  v1 = *MEMORY[0x1E695E480];
  v2 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, 4, 0x600u, 0);
  Mutable = CFArrayCreateMutable(v1, 0, MEMORY[0x1E695E9C0]);
  v4 = Mutable;
  if (v2)
  {
    if (!Mutable)
    {
      VTCopyVideoDecoderRegistryMatchArrayForCodecType_cold_1();
      goto LABEL_7;
    }

    vtPopulateVideoDecoderRegistry();
    v7 = v2;
    FigRegistryCopyFilteredItemList();
  }

  else
  {
    VTCopyVideoDecoderRegistryMatchArrayForCodecType_cold_2(&v9);
    if (v9 && v4)
    {
      CFRelease(v4);
      v4 = 0;
    }
  }

  if (v2)
  {
LABEL_7:
    CFRelease(v2);
  }

  return v4;
}

uint64_t VTCopyVideoDecoderList(uint64_t a1, const __CFArray **a2)
{
  v46 = 0;
  v47 = 0;
  v45 = 0uLL;
  v44 = 0;
  v42 = 0;
  bundle = 0;
  theDict = 0;
  MEMORY[0x193AE3010](&sCreateVideoDecoderRegistryOnce, vtCreateVideoDecoderRegistry);
  if (!sVideoDecoderRegistry)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  vtPopulateVideoDecoderRegistry();
  VTParavirtualizationIsRunningInGuest();
  v3 = FigRegistryCopyFilteredItemList();
  if (v3)
  {
    v34 = v3;
    Mutable = 0;
    goto LABEL_58;
  }

  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"EnableHardwareAcceleratedVideoDecoder", *MEMORY[0x1E695E4D0]);
  if (VTParavirtualizationIsRunningInGuest())
  {
    BYTE1(v46) = 1;
  }

  *(&v45 + 1) = Mutable;
  v6 = vtCopyExpandedDecoderListForWrappers(v47, &v45, &v44, 0);
  if (v6)
  {
    v34 = v6;
    goto LABEL_58;
  }

  v7 = v47;
  v35 = a2;
  v36 = Mutable;
  if (v44)
  {
    if (v47)
    {
      CFRelease(v47);
    }

    v7 = v44;
    v47 = v44;
    v44 = 0;
  }

  Count = CFArrayGetCount(v7);
  v10 = CFArrayCreateMutable(v4, Count, MEMORY[0x1E695E9C0]);
  v11 = v10;
  if (Count < 1)
  {
LABEL_57:
    v50.length = CFArrayGetCount(v11);
    v50.location = 0;
    CFArraySortValues(v11, v50, vtCompareCodecName, 0);
    v34 = 0;
    Mutable = v36;
    *v35 = v11;
    goto LABEL_58;
  }

  v12 = 0;
  theArray = v10;
  v37 = Count;
  while (1)
  {
    CFArrayGetValueAtIndex(v47, v12);
    valuePtr = 0;
    v13 = FigRegistryItemCopyDescription();
    if (v13)
    {
      break;
    }

    v13 = FigRegistryItemCopyMatchingInfo();
    if (v13)
    {
      break;
    }

    v13 = FigRegistryItemCopyBundle();
    if (v13)
    {
      break;
    }

    Value = CFDictionaryGetValue(theDict, @"VTCodecType");
    if (Value)
    {
      v15 = Value;
      v16 = CFGetTypeID(Value);
      if (v16 == CFArrayGetTypeID() || (v17 = CFGetTypeID(v15), v17 == CFStringGetTypeID()))
      {
        v18 = CFDictionaryGetValue(v42, @"CMClassImplementationID");
        if (v18)
        {
          v19 = v18;
          TypeID = CFStringGetTypeID();
          if (TypeID == CFGetTypeID(v19))
          {
            v21 = CFDictionaryGetValue(v42, @"CMClassImplementationName");
            if (bundle)
            {
              v38 = CFBundleCopyLocalizedString(bundle, v21, 0, 0);
            }

            else
            {
              v38 = 0;
            }

            v23 = CFGetTypeID(v15);
            if (v23 == CFStringGetTypeID())
            {
              v24 = 1;
LABEL_40:
              for (i = 0; i != v24; ++i)
              {
                v26 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                FigCFDictionarySetValue();
                v27 = CFGetTypeID(v15);
                if (v27 == CFStringGetTypeID())
                {
                  ValueAtIndex = v15;
                }

                else
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v15, i);
                }

                CFStringGetCString(ValueAtIndex, buffer, 5, 0x600u);
                valuePtr = bswap32(*buffer);
                v29 = CFNumberCreate(v4, kCFNumberSInt32Type, &valuePtr);
                FigCFDictionarySetValue();
                FigCFDictionarySetValue();
                FigCFDictionarySetValue();
                v30 = CFDictionaryGetValue(theDict, @"VTRating");
                if (v30)
                {
                  v31 = v30;
                  CFRetain(v30);
                  FigCFDictionarySetValue();
                  CFRelease(v31);
                }

                else
                {
                  FigCFDictionarySetValue();
                }

                v32 = CFDictionaryGetValue(theDict, @"VTIsHardwareAccelerated");
                if (v32)
                {
                  v33 = v32;
                  CFRetain(v32);
                  FigCFDictionarySetValue();
                  CFRelease(v33);
                }

                else
                {
                  FigCFDictionarySetValue();
                }

                v11 = theArray;
                CFArrayAppendValue(theArray, v26);
                if (v26)
                {
                  CFRelease(v26);
                }

                if (v29)
                {
                  CFRelease(v29);
                }
              }

              Count = v37;
            }

            else
            {
              v24 = CFArrayGetCount(v15);
              if (v24 >= 1)
              {
                goto LABEL_40;
              }
            }

            v22 = v38;
            goto LABEL_26;
          }
        }
      }
    }

    v22 = 0;
LABEL_26:
    if (theDict)
    {
      CFRelease(theDict);
      theDict = 0;
    }

    if (v42)
    {
      CFRelease(v42);
      v42 = 0;
    }

    if (bundle)
    {
      CFRelease(bundle);
      bundle = 0;
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (++v12 == Count)
    {
      goto LABEL_57;
    }
  }

  v34 = v13;
  Mutable = v36;
  if (v11)
  {
    CFRelease(v11);
  }

LABEL_58:
  if (v47)
  {
    CFRelease(v47);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (bundle)
  {
    CFRelease(bundle);
  }

  return v34;
}

uint64_t vtCodecTypeStringIsEligibleForParavirtualization(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 != CFStringGetTypeID())
  {
    return 0;
  }

  result = CFStringGetCString(a1, buffer, 5, 0x600u);
  if (!result)
  {
    return result;
  }

  v4 = buffer[0];
  v5 = buffer[1];
  v6 = buffer[2];
  v7 = buffer[3];
  return FigDebugIsInternalBuild() || (_os_feature_enabled_impl() & 1) != 0 || !FigCodecTypeIsProtected((v5 << 16) | (v4 << 24) | (v6 << 8) | v7);
}

void vtParavirtualizationAppendDecoderDescription(__CFArray *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, @"CMClassImplementationName", a4);
  CFDictionarySetValue(Mutable, @"CMClassImplementationID", a5);
  FigCFDictionarySetValue();
  FigCFDictionarySetBoolean();
  CFArrayAppendValue(a1, Mutable);

  CFRelease(Mutable);
}

uint64_t FigCodecTypeIsProtected(int a1)
{
  result = 1;
  if (a1 <= 1902207794)
  {
    if (a1 <= 1685220712)
    {
      if (a1 <= 1667524656)
      {
        if (a1 <= 1667326823)
        {
          if (a1 == 1633771875 || a1 == 1667312947)
          {
            return result;
          }

          v4 = 24931;
        }

        else if (a1 > 1667330146)
        {
          if (a1 == 1667330147)
          {
            return result;
          }

          v4 = 30307;
        }

        else
        {
          if (a1 == 1667326824)
          {
            return result;
          }

          v4 = 25456;
        }

        v5 = v4 | 0x63610000;
        goto LABEL_81;
      }

      if (a1 <= 1667656802)
      {
        if (a1 != 1667524657 && a1 != 1667574579)
        {
          v5 = 1667575091;
          goto LABEL_81;
        }

        return result;
      }

      if (a1 > 1668047202)
      {
        if (a1 == 1668047203)
        {
          return result;
        }

        v5 = 1668641633;
      }

      else
      {
        if (a1 == 1667656803)
        {
          return result;
        }

        v5 = 1667790435;
      }

      goto LABEL_81;
    }

    if (a1 <= 1885430578)
    {
      if (a1 <= 1701733237)
      {
        if (a1 != 1685220713 && a1 != 1700886115)
        {
          v5 = 1701733217;
          goto LABEL_81;
        }

        return result;
      }

      if (a1 > 1882599479)
      {
        if (a1 == 1882599480)
        {
          return result;
        }

        v5 = 1885430115;
      }

      else
      {
        if (a1 == 1701733238)
        {
          return result;
        }

        v5 = 1869117027;
      }

      goto LABEL_81;
    }

    if (a1 <= 1885547314)
    {
      v8 = a1 - 1885430579;
      if (v8 > 0x3D || ((1 << v8) & 0x2020000000000001) == 0)
      {
        return 0;
      }

      return result;
    }

    if (a1 <= 1886745440)
    {
      if (a1 == 1885547315)
      {
        return result;
      }

      v5 = 1885692723;
      goto LABEL_81;
    }

    if (a1 == 1886745441)
    {
      return result;
    }

    v6 = 24931;
LABEL_73:
    v5 = v6 | 0x71610000;
    goto LABEL_81;
  }

  if (a1 <= 1902667125)
  {
    if (a1 > 1902324530)
    {
      if (a1 <= 1902405732)
      {
        if (a1 == 1902324531 || a1 == 1902403958)
        {
          return result;
        }

        v7 = 26673;
      }

      else
      {
        if (a1 > 1902469938)
        {
          if (a1 == 1902469939)
          {
            return result;
          }

          v5 = 1902537827;
          goto LABEL_81;
        }

        if (a1 == 1902405733)
        {
          return result;
        }

        v7 = 28024;
      }

      v5 = v7 | 0x71640000;
      goto LABEL_81;
    }

    if ((a1 - 1902207795) <= 0x3D && ((1 << (a1 - 51)) & 0x2020000000000001) != 0 || (a1 - 1902212657) <= 0x34 && ((1 << (a1 - 49)) & 0x14000000000001) != 0)
    {
      return result;
    }

    v6 = 28771;
    goto LABEL_73;
  }

  if (a1 <= 2053202738)
  {
    if (a1 <= 1902998903)
    {
      if (a1 != 1902667126 && a1 != 1902671459)
      {
        v5 = 1902928227;
        goto LABEL_81;
      }

      return result;
    }

    if (a1 > 1903587384)
    {
      if (a1 == 1903587385)
      {
        return result;
      }

      v3 = 24931;
      goto LABEL_76;
    }

    if (a1 == 1902998904)
    {
      return result;
    }

    v5 = 1903522657;
LABEL_81:
    if (a1 == v5)
    {
      return result;
    }

    return 0;
  }

  if (a1 > 2053319474)
  {
    if (a1 > 2053923170)
    {
      if (a1 == 2053923171)
      {
        return result;
      }

      v5 = 2054517601;
    }

    else
    {
      if (a1 == 2053319475)
      {
        return result;
      }

      v5 = 2053464883;
    }

    goto LABEL_81;
  }

  if ((a1 - 2053202739) > 0x3D || ((1 << (a1 - 51)) & 0x2020000000000001) == 0)
  {
    v3 = 30307;
LABEL_76:
    v5 = v3 | 0x7A610000;
    goto LABEL_81;
  }

  return result;
}

void vtInitializeVideoDecoderRegistry()
{
  if (qword_1ED6D4068 != -1)
  {
    vtInitializeVideoDecoderRegistry_cold_1();
  }

  v0 = byte_1ED6D4061;
  sVideoDecoderRegistryMutex = FigSimpleMutexCreate();
  MEMORY[0x193AE3010](&sCreateVideoDecoderRegistryOnce, vtCreateVideoDecoderRegistry);
  if (FigIsHDRAllowedOnDevice())
  {
    vtRegisterVideoDecoderWithInfoKeysAndValues(0x64766831u, 0, @"DolbyVision (HEVC)", @"com.apple.videotoolbox.videodecoder.dolbyvision.hevc", 8, @"hvc1", DolbyVisionDecoder_CreateInstance, v1, 0);
    if ((_os_feature_enabled_impl() & 1) != 0 || VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults())
    {
      vtRegisterVideoDecoderWithInfoKeysAndValues(0x646D7578u, 0, @"DolbyVision (HEVC) with Muxed Alpha", @"com.apple.videotoolbox.videodecoder.dolbyvision.hevc-with-alpha", 8, @"muxa", DolbyVisionDecoder_CreateInstance, v2, 0);
    }

    vtRegisterVideoDecoderWithInfoKeysAndValues(0x64617631u, 0, @"DolbyVision (AV1)", @"com.apple.videotoolbox.videodecoder.dolbyvision.av1", 8, @"av01", DolbyVisionDecoder_CreateInstance, v2, 0);
    vtRegisterVideoDecoderWithInfoKeysAndValues(0x71646176u, 0, @"Protected DolbyVision (AV1 cbcs)", @"com.apple.videotoolbox.videodecoder.dolbyvision.qda1", 8, @"qav1", DolbyVisionDecoder_CreateInstance, v3, 0);
    vtRegisterVideoDecoderWithInfoKeysAndValues(0x71646831u, 0, @"Protected DolbyVision (HEVC cbcs)", @"com.apple.videotoolbox.videodecoder.dolbyvision.qdh1", 8, @"qhvc", DolbyVisionDecoder_CreateInstance, v4, 0);
    if (_os_feature_enabled_impl() && (_os_feature_enabled_impl() & 1) != 0 || VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults())
    {
      vtRegisterVideoDecoderWithInfoKeysAndValues(0x71646D78u, 0, @"Protected DolbyVision (HEVC cbcs) with Muxed Alpha", @"com.apple.videotoolbox.videodecoder.dolbyvision.qdmx", 8, @"qmux", DolbyVisionDecoder_CreateInstance, v5, 0);
    }

    vtRegisterVideoDecoderWithInfoKeysAndValues(0x63646831u, 0, @"Protected DolbyVision (HEVC)", @"com.apple.videotoolbox.videodecoder.dolbyvision.cdh1", 8, @"chvc", DolbyVisionDecoder_CreateInstance, v5, 0);
  }

  vtRegisterVideoDecoderWithInfoKeysAndValues(0x6A706567u, 4294967276, @"JPEG applejpeg", @"com.apple.videotoolbox.videodecoder.jpeg.applejpeg", 0, 0, AppleJPEGVideoDecoder_CreateInstance, v1, 0);
  vtRegisterVideoDecoderWithInfoKeysAndValues(0x6A706567u, 4294967266, @"JPEG", @"com.apple.videotoolbox.videodecoder.jpeg", 0, 0, JPEGVideoDecoder_CreateInstance, v6, 0);
  vtRegisterVideoDecoderWithInfoKeysAndValues(0x646D6231u, 4294967276, @"OpenDML JPEG applejpeg", @"com.apple.videotoolbox.videodecoder.dmb1.applejpeg", 0, 0, AppleJPEGVideoDecoder_CreateInstance, v7, 0);
  vtRegisterVideoDecoderWithInfoKeysAndValues(0x646D6231u, 4294967266, @"OpenDML JPEG", @"com.apple.videotoolbox.videodecoder.dmb1", 0, 0, JPEGVideoDecoder_CreateInstance, v8, 0);
  vtRegisterVideoDecoderWithInfoKeysAndValues(0x69706220u, 0, @"Test IPB", @"com.apple.videotoolbox.videodecoder.ipb", 0, 0, TestIPBVideoDecoder_CreateInstance, v9, 0);
  vtRegisterVideoDecoderWithInfoKeysAndValues(0x6D757861u, 0, @"Muxed Alpha", @"com.apple.videotoolbox.videodecoder.hevc-with-alpha", 8, @"hvc1", MuxedAlphaDecoder_CreateInstance, v10, 0);
  if ((_os_feature_enabled_impl() & 1) != 0 || VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults())
  {
    vtRegisterVideoDecoderWithInfoKeysAndValues(0x716D7578u, 0, @"Muxed Alpha (CBCS)", @"com.apple.videotoolbox.videodecoder.cbcs-hevc-with-alpha", 8, @"qhvc", MuxedAlphaDecoder_CreateInstance, v11, 0);
  }

  vtRegisterVideoDecoderWithInfoKeysAndValues(0x64697368u, 0, @"Disparity", @"com.apple.videotoolbox.videodecoder.disparity-hevc", 8, @"hvc1", DepthWrapperDecoder_CreateInstance, v11, 0);
  vtRegisterVideoDecoderWithInfoKeysAndValues(0x64657068u, 0, @"Depth", @"com.apple.videotoolbox.videodecoder.depth-hevc", 8, @"hvc1", DepthWrapperDecoder_CreateInstance, v12, 0);
  if (v0)
  {
    VTLoadVideoDecodersPreferringInternalBundles();
  }

  else
  {
    VTLoadVideoDecoders();
  }

  if (!VTAvoidHardwareDecoders())
  {

    vtLoadParavirtualizedVideoDecoders();
  }
}

uint64_t vtGetPreferInternalDecoders(_BYTE *a1)
{
  result = FigGetCFPreferenceNumberWithDefault();
  *a1 = result;
  return result;
}

void vtRegisterVideoDecoderWithInfoKeysAndValues(unsigned int a1, uint64_t a2, const void *a3, const void *a4, char a5, const void *a6, uint64_t a7, uint64_t a8, const void *a9)
{
  *bytes = bswap32(a1);
  v15 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, 4, 0x600u, 0);
  if (v15)
  {
    v16 = v15;
    vtRegisterVideoDecoderWithInfoKeysAndValuesInternal2(v15, a2, a3, a4, a5, a6, a7, 0, &a9);
    CFRelease(v16);
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }
}

uint64_t vtRegisterVideoDecoderWithInfoKeysAndValuesInternal2(uint64_t a1, uint64_t a2, const void *a3, const void *a4, char a5, const void *a6, uint64_t a7, uint64_t a8, const void **a9)
{
  v14 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v16 = Mutable;
    FigCFDictionarySetValue();
    FigCFDictionarySetInt32();
    v17 = MEMORY[0x1E695E4C0];
    if (a5)
    {
      CFDictionarySetValue(v16, @"VTAllowSandboxedDecode", *MEMORY[0x1E695E4C0]);
    }

    v18 = MEMORY[0x1E695E4D0];
    if ((a5 & 2) != 0)
    {
      v19 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v19 = v17;
    }

    CFDictionarySetValue(v16, @"VTIsHardwareAccelerated", *v19);
    if ((a5 & 8) != 0)
    {
      CFDictionarySetValue(v16, @"VTIsWrapperDecoder", *v18);
      if (a6)
      {
        CFDictionarySetValue(v16, @"VTWrapsCodecType", a6);
      }
    }

    if ((a5 & 0x10) != 0)
    {
      CFDictionarySetValue(v16, @"VTIsParavirtualized", *v18);
    }

    v20 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v20)
    {
      v21 = v20;
      v35 = a9 + 1;
      v23 = *a9;
      if (*a9)
      {
        do
        {
          v24 = v35;
          v36 = v35 + 1;
          v25 = *v24;
          if (*v24)
          {
            v26 = CFEqual(v23, @"VTHostDecoderID");
            v27 = v16;
            if (!v26)
            {
              v28 = CFEqual(v23, @"VTDecoderCapabilities");
              v27 = v16;
              if (!v28)
              {
                if (CFEqual(v23, @"IsPreferredInternalPlugin"))
                {
                  v27 = v16;
                }

                else
                {
                  v27 = v21;
                }
              }
            }

            CFDictionarySetValue(v27, v23, v25);
          }

          v29 = v36;
          v35 = v36 + 1;
          v23 = *v29;
        }

        while (*v29);
      }

      if (CFDictionaryGetCount(v21) >= 1)
      {
        CFDictionarySetValue(v16, @"VTRequiredSpecificationEntries", v21);
      }

      v30 = vtRegisterVideoDecoderInternal(a3, a4, v16, a7, a8);
      CFRelease(v16);
      v31 = v21;
    }

    else
    {
      fig_log_get_emitter();
      v30 = FigSignalErrorAtGM();
      v31 = v16;
    }

    CFRelease(v31);
    return v30;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

void __vtLoadParavirtualizedVideoDecoders_block_invoke()
{
  v0 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  stru_1ED6D4078 = CFUUIDGetUUIDBytes(v0);
  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t vtUnregisterParavirtualizedVideoDecoders()
{
  if (sVideoDecoderRegistry)
  {
    v0 = FigRegistryCopyFilteredItemList();
    if (v0)
    {
      return v0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

const __CFDictionary *vtCheckRequiredSpecificationKey(void *key, const void *a2, uint64_t a3)
{
  result = *a3;
  if (!*a3 || (result = CFDictionaryGetValue(result, key), !a2) || !result || (result = CFEqual(result, a2), !result))
  {
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_4(CFIndex range)
{
  v5.length = range;
  v4 = *v1;
  v5.location = 0;

  return CFArrayContainsValue(v2, v5, v4);
}

uint64_t OUTLINED_FUNCTION_8_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, char buffer)
{
  v18 = *v16;

  return CFStringGetCString(v18, &buffer, 5, 0x600u);
}

void OUTLINED_FUNCTION_9_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  vtParavirtualizationAppendDecoderDescription(v6, v4, a3, v5, v3);
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return FigCFDictionaryCreateMutableCopy();
}

uint64_t vtscr_Register()
{
  result = _CFRuntimeRegisterClass();
  _MergedGlobals_7 = result;
  return result;
}

uint64_t VTCompressionSessionRemote_Create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v14 = vtcsr_oneTimeInitialization();
  if (v14)
  {
    v22 = v14;
    v20 = 0;
    goto LABEL_21;
  }

  MEMORY[0x193AE3010](&VTCompressionSessionRemoteGetTypeID_sRegisterVTCompressionSessionRemoteOnce, vtscr_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VTCompressionSessionRemote_Create_cold_1(&v25);
    v20 = 0;
    v22 = v25;
    goto LABEL_21;
  }

  v16 = Instance;
  *(Instance + 96) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v16 + 32) = 0;
  *(v16 + 112) = a10;
  *(v16 + 184) = a11;
  *(v16 + 80) = dispatch_group_create();
  *(v16 + 88) = FigDispatchQueueCreateWithPriority();
  *(v16 + 72) = dispatch_queue_create("com.apple.coremedia.compressionsession.pendingframequeue", 0);
  *(v16 + 136) = FigSemaphoreCreate();
  *(v16 + 168) = FigSemaphoreCreate();
  *(v16 + 216) = 1;
  *(v16 + 48) = FigSemaphoreCreate();
  v17 = MEMORY[0x1E695E480];
  if (a6)
  {
    if (VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode())
    {
      if (CFDictionaryContainsKey(a6, @"CMSession"))
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*v17, 0, a6);
        if (!MutableCopy)
        {
          v22 = 0;
          v20 = 0;
          goto LABEL_23;
        }

        v19 = MutableCopy;
        CFDictionaryRemoveValue(MutableCopy, @"CMSession");
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (CFDataFromCFPropertyList)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v20 = 0;
  }

  if (a7 && (CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList(), CFDataFromCFPropertyList) || a9 && (CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList(), CFDataFromCFPropertyList) || (*(v16 + 240) = 0, CFDataFromCFPropertyList = weakReferenceTable_AddPointerAndGetKey(), CFDataFromCFPropertyList) || (CFDataFromCFPropertyList = FigRPCCreateServerConnectionForObject(), CFDataFromCFPropertyList) || (CFDataFromCFPropertyList = FigRPCGetServerConnectionInfo(), CFDataFromCFPropertyList))
  {
LABEL_22:
    v22 = CFDataFromCFPropertyList;
    goto LABEL_23;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v22 = 0;
  if (a12)
  {
    *a12 = v16;
LABEL_21:
    v23 = vtcsr_handleMachErrorsInternal(0, v22);
    goto LABEL_24;
  }

LABEL_23:
  v23 = vtcsr_handleMachErrorsInternal(v16, v22);
  CFRelease(v16);
LABEL_24:
  if (v20)
  {
    CFRelease(v20);
  }

  return v23;
}

uint64_t vtcsr_oneTimeInitialization()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __vtcsr_oneTimeInitialization_block_invoke;
  block[3] = &unk_1E72C8108;
  block[4] = &v3;
  if (vtcsr_oneTimeInitialization_once != -1)
  {
    dispatch_once(&vtcsr_oneTimeInitialization_once, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t weakReferenceTable_AddPointerAndGetKey()
{
  MEMORY[0x193AE3010](&gWeakReferenceTable_RemoteCompressionSessionClientThreadOnce, weakReferenceTable_OneTimeInitialization);
  if (gWeakReferenceTable_RemoteCompressionSessionClient)
  {

    return MEMORY[0x1EEDBC840]();
  }

  else
  {
    weakReferenceTable_AddPointerAndGetKey_cold_1(&v1);
    return v1;
  }
}

void vtcsr_handleDeadServerConnection(uint64_t a1, uint64_t a2)
{
  *(a2 + 28) = 1;
  dispatch_group_enter(*(a2 + 80));
  CFRetain(a2);
  v3 = *(a2 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __vtcsr_handleDeadServerConnection_block_invoke;
  block[3] = &__block_descriptor_tmp_29;
  block[4] = a2;
  dispatch_async(v3, block);
}

uint64_t vtcsr_handleMachErrorsInternal(uint64_t a1, uint64_t a2)
{
  if (a2 <= 268435458)
  {
    if (a2 != -308 && a2 != -303)
    {
      goto LABEL_13;
    }
  }

  else if ((a2 - 268435459) >= 2 && a2 != 268451843)
  {
LABEL_13:
    v4 = a2;
    goto LABEL_14;
  }

  if (a1)
  {
    v3 = FigCFWeakReferenceHolderCopyReferencedObject();
    *(a1 + 28) = 1;
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = 4294954384;
LABEL_14:
    if (!VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode())
    {
      goto LABEL_17;
    }

    return v4;
  }

  if (!VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode())
  {
    v4 = 4294954384;
LABEL_17:
    FigRPCKillServerOnTimeout();
    return v4;
  }

  return 4294954384;
}

void *VTCompressionSessionRemote_Invalidate(void *result)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*(result + 60))
  {
    return result;
  }

  *(result + 60) = 1;
  v2 = *(result + 6);
  if (v2 && *(v1 + 96))
  {
    if (*(v1 + 120))
    {
      if (VTCompressionSessionRemoteClient_CompleteTiles(v2))
      {
LABEL_8:
        if (*(v1 + 88))
        {
          vtcsr_dequeueAllPendingFramesAndCallbackClientForEach(v1, 1, 1);
        }

        FigSemaphoreWaitRelative();
        FigSemaphoreSignal();
        VTCompressionSessionRemoteClient_Destroy(*(v1 + 24));
        goto LABEL_11;
      }
    }

    else if (*(v1 + 32) == 2)
    {
      if (VTCompressionSessionRemoteClient_CompleteMotionEstimation(v2))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v8 = *MEMORY[0x1E6960C70];
      v9 = *(MEMORY[0x1E6960C70] + 16);
      if (VTCompressionSessionRemoteClient_CompleteFrames(v2, &v8))
      {
        goto LABEL_8;
      }
    }

    FigSemaphoreWaitRelative();
    goto LABEL_8;
  }

LABEL_11:
  if (*(v1 + 16))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    FigRPCDisposeServerConnection();
    *(v1 + 16) = 0;
  }

  v3 = *(v1 + 80);
  if (v3)
  {
    dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  }

  v4 = *(v1 + 64);
  if (v4)
  {
    CFRelease(v4);
    *(v1 + 64) = 0;
  }

  v5 = *(v1 + 104);
  if (v5)
  {
    CFRelease(v5);
    *(v1 + 104) = 0;
  }

  v6 = *(v1 + 200);
  if (v6)
  {
    CFRelease(v6);
    *(v1 + 200) = 0;
  }

  v7 = *(v1 + 208);
  if (v7)
  {
    CFRelease(v7);
    *(v1 + 208) = 0;
  }

  return weakReferenceTable_RemovePointer((v1 + 240));
}

uint64_t vtcsr_dequeueAllPendingFramesAndCallbackClientForEach(uint64_t a1, char a2, int a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __vtcsr_dequeueAllPendingFramesAndCallbackClientForEach_block_invoke;
  block[3] = &unk_1E72C8130;
  v10 = a2;
  block[4] = &v11;
  block[5] = a1;
  dispatch_group_async(v5, v6, block);
  if (a3)
  {
    dispatch_group_wait(*(a1 + 80), 0xFFFFFFFFFFFFFFFFLL);
  }

  v7 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v7;
}

void *weakReferenceTable_RemovePointer(void *result)
{
  if (*result)
  {
    v1 = result;
    MEMORY[0x193AE3010](&gWeakReferenceTable_RemoteCompressionSessionClientThreadOnce, weakReferenceTable_OneTimeInitialization);
    if (gWeakReferenceTable_RemoteCompressionSessionClient)
    {
      result = FigCFWeakReferenceTableRemoveValue();
      *v1 = 0;
    }

    else
    {
      return weakReferenceTable_RemovePointer_cold_1();
    }
  }

  return result;
}

uint64_t VTCompressionSessionRemote_CopySupportedPropertyDictionary(uint64_t a1)
{
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (*(a1 + 28) || *(a1 + 60))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  CFPropertyListFromData = VTCompressionSessionRemoteClient_CopySupportedPropertyDictionary(*(a1 + 24), &v7, &v6, &v8);
  if (CFPropertyListFromData)
  {
    goto LABEL_9;
  }

  v4 = v8;
  if (!v8)
  {
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
LABEL_9:
    v4 = CFPropertyListFromData;
  }

  v5 = vtcsr_handleMachErrorsInternal(a1, v4);
  if (v6)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v7);
  }

  return v5;
}

uint64_t VTCompressionSessionRemote_CopySerializableProperties(uint64_t a1)
{
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (*(a1 + 28) || *(a1 + 60))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  CFPropertyListFromData = VTCompressionSessionRemoteClient_CopySerializableProperties(*(a1 + 24), &v7, &v6, &v8);
  if (CFPropertyListFromData)
  {
    goto LABEL_9;
  }

  v4 = v8;
  if (!v8)
  {
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
LABEL_9:
    v4 = CFPropertyListFromData;
  }

  v5 = vtcsr_handleMachErrorsInternal(a1, v4);
  if (v6)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v7);
  }

  return v5;
}

uint64_t VTCompressionSessionRemote_CopyProperty(uint64_t a1)
{
  v9 = 0;
  v8 = 0;
  v7 = 0;
  if (*(a1 + 28) || *(a1 + 60))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  CFPropertyListFromData = VTCompressionSessionRemoteClient_CopyProperty(*(a1 + 24), CStringPtrAndBufferToFree, &v8, &v7, &v9);
  if (CFPropertyListFromData)
  {
    goto LABEL_9;
  }

  v5 = v9;
  if (!v9)
  {
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
LABEL_9:
    v5 = CFPropertyListFromData;
  }

  free(0);
  v6 = vtcsr_handleMachErrorsInternal(a1, v5);
  if (v7)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v8);
  }

  return v6;
}

uint64_t VTCompressionSessionRemote_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  v17 = 0;
  if (!*(a1 + 28) && !*(a1 + 60))
  {
    if (FigCFEqual())
    {
      v7 = *(a1 + 224);
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 224) = 0;
      }
    }

    if (CFEqual(@"MultiPassStorage", a2))
    {
      if (a3 && (v8 = *(a3 + 16)) != 0)
      {
        v9 = *(v8 + 24);
      }

      else
      {
        v9 = 0;
      }

      v10 = VTCompressionSessionRemoteClient_SetMultiPassStorage(*(a1 + 24), v9, &v17);
    }

    else
    {
      CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
      CFGetAllocator(a1);
      CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
      if (CFDataFromCFPropertyList)
      {
        v16 = CFDataFromCFPropertyList;
LABEL_20:
        free(0);
        return vtcsr_handleMachErrorsInternal(a1, v16);
      }

      v13 = *(a1 + 24);
      BytePtr = CFDataGetBytePtr(0);
      Length = CFDataGetLength(0);
      v10 = VTCompressionSessionRemoteClient_SetProperty(v13, CStringPtrAndBufferToFree, BytePtr, Length, &v17);
    }

    if (v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = v17;
    }

    goto LABEL_20;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t VTCompressionSessionRemote_SetProperties(uint64_t a1, CFDictionaryRef theDict)
{
  v19 = 0;
  if (*(a1 + 28) || *(a1 + 60))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  Value = CFDictionaryGetValue(theDict, @"MultiPassStorage");
  if (!Value)
  {
    v8 = 0;
    goto LABEL_16;
  }

  v6 = Value[2];
  if (v6)
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
  }

  v9 = VTCompressionSessionRemoteClient_SetMultiPassStorage(*(a1 + 24), v7, &v19);
  if (v9)
  {
    v10 = v9;
    goto LABEL_21;
  }

  v10 = v19;
  if (v19)
  {
LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  if (CFDictionaryGetCount(theDict) < 2)
  {
    v10 = 0;
    goto LABEL_21;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  if (MutableCopy)
  {
    v12 = MutableCopy;
    CFDictionaryRemoveValue(MutableCopy, @"MultiPassStorage");
    v8 = v12;
LABEL_16:
    CFGetAllocator(a1);
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (CFDataFromCFPropertyList)
    {
      v10 = CFDataFromCFPropertyList;
    }

    else
    {
      v14 = *(a1 + 24);
      BytePtr = CFDataGetBytePtr(0);
      Length = CFDataGetLength(0);
      v17 = VTCompressionSessionRemoteClient_SetProperties(v14, BytePtr, Length, &v19);
      if (v17)
      {
        v10 = v17;
      }

      else
      {
        v10 = v19;
      }
    }

    goto LABEL_22;
  }

  VTCompressionSessionRemote_SetProperties_cold_1(&v20);
  v8 = 0;
  v10 = v20;
LABEL_22:
  v18 = vtcsr_handleMachErrorsInternal(a1, v10);
  if (v8)
  {
    CFRelease(v8);
  }

  return v18;
}

uint64_t VTCompressionSessionRemote_GetPixelBufferPool(_BYTE *cf)
{
  v8[2] = *MEMORY[0x1E69E9840];
  if (cf[28])
  {
    VTCompressionSessionRemote_GetPixelBufferPool_cold_1(v8);
    goto LABEL_16;
  }

  if (cf[60])
  {
    VTCompressionSessionRemote_GetPixelBufferPool_cold_2(v8);
LABEL_16:
    if (LODWORD(v8[0]))
    {
      return 0;
    }

    return *(cf + 26);
  }

  CFGetAllocator(cf);
  v2 = *MEMORY[0x1E6966050];
  v8[0] = *MEMORY[0x1E69660F8];
  v8[1] = v2;
  v3 = VTCompressionSessionRemote_CopyProperty(cf);
  if (!v3)
  {
    if (FigCFEqual())
    {
LABEL_10:
      v6 = 0;
      goto LABEL_11;
    }

    v3 = VTCompressionSessionRemote_CopyProperty(cf);
    if (!v3)
    {
      v4 = *(cf + 26);
      if (v4)
      {
        CFRelease(v4);
        *(cf + 26) = 0;
      }

      v5 = *(cf + 25);
      *(cf + 25) = 0;
      if (v5)
      {
        CFRelease(v5);
      }

      goto LABEL_10;
    }
  }

  v6 = v3;
LABEL_11:
  if (vtcsr_handleMachErrorsInternal(cf, v6))
  {
    return 0;
  }

  return *(cf + 26);
}

uint64_t VTCompressionSessionRemote_PrepareToEncodeFrames(uint64_t a1)
{
  if (*(a1 + 28) || *(a1 + 60))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v3 = VTCompressionSessionRemoteClient_PrepareToEncodeFrames(*(a1 + 24));
    if (v3)
    {
      v4 = v3;
    }

    else if (FigSemaphoreWaitRelative())
    {
      VTCompressionSessionRemote_PrepareToEncodeFrames_cold_1(&v5);
      v4 = v5;
    }

    else
    {
      v4 = *(a1 + 148);
    }

    return vtcsr_handleMachErrorsInternal(a1, v4);
  }
}

uint64_t weakReferenceTable_CopyPointerFromKey()
{
  MEMORY[0x193AE3010](&gWeakReferenceTable_RemoteCompressionSessionClientThreadOnce, weakReferenceTable_OneTimeInitialization);
  if (gWeakReferenceTable_RemoteCompressionSessionClient)
  {

    return MEMORY[0x1EEDBC858]();
  }

  else
  {
    weakReferenceTable_CopyPointerFromKey_cold_1();
    return 0;
  }
}

uint64_t VTCompressionSessionRemote_EncodeFrame(uint64_t a1, uint64_t a2, OpaqueCMTaggedBufferGroup *a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v11 = *a4;
  v12 = *(a4 + 16);
  v9 = *a5;
  v10 = *(a5 + 2);
  return vtCompressionSessionRemote_EncodeFrameCommon(a1, a2, a3, &v11, &v9, a6, a7, a8, 0);
}

uint64_t vtCompressionSessionRemote_EncodeFrameCommon(uint64_t a1, uint64_t a2, CMTaggedBufferGroupRef group, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, const void *a9)
{
  v123 = *MEMORY[0x1E69E9840];
  v105 = 0;
  v103 = 0;
  v104 = 0;
  theData = 0;
  v122 = 0;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  if (*(a1 + 28) || *(a1 + 60))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  v16 = MEMORY[0x1E69E9A60];
  if (!a2)
  {
    v93 = a7;
    v95 = a4;
    v96 = a5;
    v92 = a8;
    if (group)
    {
      Count = CMTaggedBufferGroupGetCount(group);
      if (Count >= 6)
      {
        vtCompressionSessionRemote_EncodeFrameCommon_cold_4(&v108);
      }

      else
      {
        v22 = Count;
        if (Count < 1)
        {
          vtCompressionSessionRemote_EncodeFrameCommon_cold_3(&v108);
        }

        else
        {
          v23 = 0;
          v98 = *MEMORY[0x1E695E480];
          v24 = &v110;
          while (1)
          {
            TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(group, v23);
            v26 = MEMORY[0x193AE2F00](TagCollectionAtIndex, v98);
            v19 = v26;
            if (!v26)
            {
              vtCompressionSessionRemote_EncodeFrameCommon_cold_2(&v108);
              goto LABEL_60;
            }

            Length = CFDataGetLength(v26);
            v28 = vm_allocate(*v16, v24 + 3, Length, 1543503873);
            if (v28)
            {
              v18 = v28;
              goto LABEL_39;
            }

            v125.location = 0;
            v125.length = Length;
            CFDataGetBytes(v19, v125, *(v24 + 3));
            *(v24 + 8) = Length;
            CFRelease(v19);
            if (!FigTaggedBufferGroupGetCVPixelBufferAtIndex())
            {
              break;
            }

            *&v108 = 0;
            SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForPixelBuffer();
            *(v24 + 4) = 0;
            if (SerializedAtomDataForPixelBuffer)
            {
              goto LABEL_8;
            }

            *(a1 + 192) = (*MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
            ++v23;
            v24 = (v24 + 40);
            if (v22 == v23)
            {
              goto LABEL_20;
            }
          }

          vtCompressionSessionRemote_EncodeFrameCommon_cold_1(&v108);
        }
      }

      v19 = 0;
LABEL_60:
      v18 = v108;
      goto LABEL_39;
    }

LABEL_20:
    if (a6)
    {
      CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
      if (CFDataFromCFPropertyList)
      {
        v18 = CFDataFromCFPropertyList;
        goto LABEL_38;
      }
    }

    v30 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A00404814DC14uLL);
    v31 = *(a1 + 216);
    *(a1 + 216) = v31 + 1;
    *v30 = v31;
    v30[1] = v93;
    v30[4] = _Block_copy(a9);
    v32 = *(a1 + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __vtCompressionSessionRemote_EncodeFrameCommon_block_invoke;
    block[3] = &__block_descriptor_tmp_26;
    block[4] = a1;
    block[5] = v30;
    dispatch_sync(v32, block);
    v33 = *(a1 + 24);
    v34 = v105;
    v35 = v104;
    v36 = v103;
    v37 = v110;
    v38 = *(&v110 + 1);
    v39 = v111;
    v40 = *(&v111 + 1);
    v41 = v112;
    v42 = DWORD2(v112);
    v43 = v113;
    v44 = DWORD2(v113);
    v45 = v114;
    v46 = DWORD2(v114);
    v47 = v115;
    v48 = *(&v115 + 1);
    v49 = v116;
    v50 = *(&v116 + 1);
    v51 = v117;
    v52 = DWORD2(v117);
    v53 = v118;
    v54 = DWORD2(v118);
    v99 = v119;
    aBlock = DWORD2(v119);
    v94 = v120;
    v91 = *(&v120 + 1);
    v90 = v121;
    v89 = *(&v121 + 1);
    v88 = v122;
    v55 = theData;
    if (theData)
    {
      v73 = v118;
      v74 = DWORD2(v117);
      v75 = v117;
      v76 = *(&v116 + 1);
      v77 = v116;
      v78 = *(&v115 + 1);
      v79 = v115;
      v80 = DWORD2(v114);
      v81 = v114;
      v82 = DWORD2(v113);
      v83 = v113;
      v84 = DWORD2(v112);
      v85 = v112;
      v86 = *(&v111 + 1);
      v87 = v111;
      v56 = v30;
      v57 = *(&v110 + 1);
      v58 = v110;
      v59 = v103;
      v60 = v104;
      v61 = v105;
      v62 = *(a1 + 24);
      BytePtr = CFDataGetBytePtr(theData);
      v55 = theData;
      if (theData)
      {
        v55 = CFDataGetLength(theData);
      }

      v33 = v62;
      v34 = v61;
      v35 = v60;
      v36 = v59;
      v37 = v58;
      v38 = v57;
      v30 = v56;
      v39 = v87;
      v40 = v86;
      v41 = v85;
      v42 = v84;
      v43 = v83;
      v44 = v82;
      v45 = v81;
      v47 = v79;
      v46 = v80;
      v48 = v78;
      v49 = v77;
      v50 = v76;
      v52 = v74;
      v51 = v75;
      v53 = v73;
    }

    else
    {
      BytePtr = 0;
    }

    v64 = *v30;
    v108 = *v95;
    v109 = *(v95 + 2);
    v106 = *v96;
    v107 = *(v96 + 16);
    v65 = VTCompressionSessionRemoteClient_EncodeFrame(v33, v34, v35, v36, v37, v38, v39, v40, __SPAIR64__(v42, v41), v43, v44, v45, v46, v47, v48, v49, v50, __SPAIR64__(v52, v51), v53, v54, v99, __SPAIR64__(v94, aBlock), v91, v90, v89, v88, &v108, &v106, BytePtr, v55, v64);
    if (v65)
    {
      v18 = v65;
      goto LABEL_36;
    }

    FigSemaphoreWaitRelative();
    v18 = *(a1 + 148);
    v66 = *(a1 + 152);
    if (!v18)
    {
      v67 = *(a1 + 144);
      if (v67)
      {
        if (!v92)
        {
          v18 = 0;
          if (*(a1 + 152))
          {
            goto LABEL_38;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v68 = vtcsr_dequeueAllPendingFramesAndCallbackClientForEach(a1, 0, 1);
        v18 = v68;
        if (!v92 || v68)
        {
          goto LABEL_35;
        }
      }

      v18 = 0;
      *v92 = v67;
    }

LABEL_35:
    if (v66)
    {
LABEL_38:
      v19 = 0;
      goto LABEL_39;
    }

LABEL_36:
    v69 = *(a1 + 72);
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 0x40000000;
    v100[2] = __vtCompressionSessionRemote_EncodeFrameCommon_block_invoke_2;
    v100[3] = &__block_descriptor_tmp_27;
    v100[4] = a1;
    v100[5] = v30;
    dispatch_sync(v69, v100);
    goto LABEL_38;
  }

  SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForPixelBuffer();
  if (!SerializedAtomDataForPixelBuffer)
  {
    v93 = a7;
    v95 = a4;
    v96 = a5;
    v92 = a8;
    *(a1 + 192) = (v103 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
    goto LABEL_20;
  }

LABEL_8:
  v18 = SerializedAtomDataForPixelBuffer;
  v19 = 0;
  *(a1 + 192) = 0;
LABEL_39:
  v70 = vtcsr_handleMachErrorsInternal(a1, v18);
  if (v105)
  {
    FigMachPortReleaseSendRight_();
  }

  if (v103)
  {
    MEMORY[0x193AE4440](*v16, v104);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  v71 = &v111;
  v72 = 5;
  do
  {
    if (*(v71 - 4))
    {
      FigMachPortReleaseSendRight_();
    }

    if (*v71)
    {
      MEMORY[0x193AE4440](*v16, *(v71 - 1));
    }

    if (*(v71 + 4))
    {
      MEMORY[0x193AE4440](*v16, *(v71 + 1));
    }

    v71 = (v71 + 40);
    --v72;
  }

  while (v72);
  if (v19)
  {
    CFRelease(v19);
  }

  return v70;
}

uint64_t VTCompressionSessionRemote_EncodeFrameWithOutputHandler(uint64_t a1, uint64_t a2, OpaqueCMTaggedBufferGroup *a3, uint64_t a4, __int128 *a5, uint64_t a6, _DWORD *a7, const void *a8)
{
  v11 = *a4;
  v12 = *(a4 + 16);
  v9 = *a5;
  v10 = *(a5 + 2);
  return vtCompressionSessionRemote_EncodeFrameCommon(a1, a2, a3, &v11, &v9, a6, 0, a7, a8);
}

uint64_t VTCompressionSessionRemote_CompleteFrames(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28) || *(a1 + 60))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    VTCompressionSessionRemote_CompleteFrames_cold_1(a1, a2, &v3);
    return v3;
  }
}

uint64_t VTCompressionSessionRemote_BeginPass(uint64_t a1, int a2, _DWORD *a3)
{
  v8 = 0;
  if (*(a1 + 28) || *(a1 + 60))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v6 = VTCompressionSessionRemoteClient_BeginPass(*(a1 + 24), a2, &v8, &v8 + 1);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = HIDWORD(v8);
      if (a3 && !HIDWORD(v8))
      {
        *a3 = v8;
      }
    }

    return vtcsr_handleMachErrorsInternal(a1, v7);
  }
}

uint64_t VTCompressionSessionRemote_EndPass(uint64_t a1, BOOL *a2, _DWORD *a3)
{
  v10 = 0;
  v9 = 0;
  if (*(a1 + 28) || *(a1 + 60))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v7 = VTCompressionSessionRemoteClient_EndPass(*(a1 + 24), &v10, &v9, &v10 + 1);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = HIDWORD(v10);
      if (!HIDWORD(v10))
      {
        if (a2)
        {
          *a2 = v10 != 0;
        }

        v8 = 0;
        if (a3)
        {
          *a3 = v9;
        }
      }
    }

    return vtcsr_handleMachErrorsInternal(a1, v8);
  }
}

uint64_t VTCompressionSessionRemote_GetTimeRangesForNextPass(uint64_t a1, uint64_t *a2, void *a3)
{
  v14 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  if (*(a1 + 28) || *(a1 + 60))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  TimeRangesForNextPass = VTCompressionSessionRemoteClient_GetTimeRangesForNextPass(*(a1 + 24), &v13, &v12, &v11, &v14);
  if (TimeRangesForNextPass)
  {
    v8 = TimeRangesForNextPass;
    goto LABEL_22;
  }

  v8 = v14;
  if (!v14)
  {
    v9 = 0;
    if (!v11 || v13 < 1)
    {
      goto LABEL_15;
    }

    if (48 * v13 > v11)
    {
      goto LABEL_21;
    }

    if ((v13 - 0x555555555555556) >= 0xFAAAAAAAAAAAAAABLL)
    {
      v10 = malloc_type_malloc(48 * v13, 0x1000040EED21634uLL);
      if (v10)
      {
        v9 = v10;
        memcpy(v10, v12, 48 * v13);
LABEL_15:
        if (a2)
        {
          *a2 = v13;
        }

        if (a3)
        {
          v8 = 0;
          *a3 = v9;
          goto LABEL_22;
        }

        if (v9)
        {
          free(v9);
        }

LABEL_21:
        v8 = 0;
        goto LABEL_22;
      }
    }

    v8 = 4294954392;
  }

LABEL_22:
  if (v11)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v12);
  }

  return vtcsr_handleMachErrorsInternal(a1, v8);
}

uint64_t VTMultiPassStorageRemote_Create(uint64_t a1, uint64_t a2, const __CFURL *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = vtcsr_oneTimeInitialization();
  if (v9)
  {
    v22 = v9;
    a3 = 0;
    v17 = 0;
    goto LABEL_19;
  }

  MEMORY[0x193AE3010](&VTCompressionSessionRemoteGetTypeID_sRegisterVTCompressionSessionRemoteOnce, vtscr_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VTMultiPassStorageRemote_Create_cold_1(buffer);
    a3 = 0;
    v17 = 0;
    v22 = *buffer;
    goto LABEL_19;
  }

  v11 = Instance;
  *(Instance + 80) = dispatch_group_create();
  v11[11] = dispatch_queue_create("com.apple.coremedia.compressionsession.clientcallback", 0);
  if (a5)
  {
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (CFDataFromCFPropertyList)
    {
      v22 = CFDataFromCFPropertyList;
      a3 = 0;
      v17 = 0;
      goto LABEL_22;
    }
  }

  if (a3)
  {
    v13 = CFURLCopyAbsoluteURL(a3);
    a3 = v13;
    if (v13)
    {
      v14 = CFURLGetString(v13);
      if (v14)
      {
        v15 = v14;
        MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(v14);
        if (MaximumSizeOfFileSystemRepresentation >= 1024)
        {
          v19 = MaximumSizeOfFileSystemRepresentation + 1;
          v20 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation + 1, 0x100004077774924uLL);
          if (!v20)
          {
            v17 = 0;
            goto LABEL_20;
          }

          v18 = v20;
          v17 = v20;
        }

        else
        {
          v17 = 0;
          v18 = buffer;
          v19 = 1024;
        }

        if (CFStringGetFileSystemRepresentation(v15, v18, v19))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_20:
    fig_log_get_emitter();
    Key = FigSignalErrorAtGM();
LABEL_21:
    v22 = Key;
    goto LABEL_22;
  }

  v17 = 0;
LABEL_14:
  v11[30] = 0;
  Key = weakReferenceTable_AddPointerAndGetKey();
  if (Key)
  {
    goto LABEL_21;
  }

  Key = FigRPCCreateServerConnectionForObject();
  if (Key)
  {
    goto LABEL_21;
  }

  Key = FigRPCGetServerConnectionInfo();
  if (Key)
  {
    goto LABEL_21;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v22 = 0;
  if (a6)
  {
    *a6 = v11;
LABEL_19:
    v23 = vtcsr_handleMachErrorsInternal(0, v22);
    goto LABEL_23;
  }

LABEL_22:
  v23 = vtcsr_handleMachErrorsInternal(v11, v22);
  CFRelease(v11);
LABEL_23:
  if (v17)
  {
    free(v17);
  }

  if (a3)
  {
    CFRelease(a3);
  }

  return v23;
}

void *VTMultiPassStorageRemote_Invalidate(void *result)
{
  if (result)
  {
    v1 = result;
    if (!*(result + 60))
    {
      *(result + 60) = 1;
      v2 = *(result + 6);
      if (v2 && !*(v1 + 28))
      {
        v3 = VTCompressionSessionRemoteClient_MultiPassStorageDestroy(v2);
        vtcsr_handleMachErrorsInternal(v1, v3);
      }

      if (*(v1 + 16))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        FigRPCDisposeServerConnection();
        *(v1 + 16) = 0;
      }

      return weakReferenceTable_RemovePointer((v1 + 240));
    }
  }

  return result;
}

uint64_t VTMultiPassStorageRemote_SetIdentifier(uint64_t a1)
{
  v6 = 0;
  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  v3 = VTCompressionSessionRemoteClient_MultiPassStorageSetIdentifier(*(a1 + 24), CStringPtrAndBufferToFree, &v6);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v6;
  }

  free(0);
  return vtcsr_handleMachErrorsInternal(a1, v4);
}

uint64_t VTMultiPassStorageRemote_SetDataAtTimeStamp(uint64_t a1, uint64_t a2, int a3, CFDataRef theData)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
  }

  else
  {
    BytePtr = 0;
    Length = 0;
  }

  v10 = *(a1 + 24);
  v15 = *a2;
  v16 = *(a2 + 16);
  v11 = VTCompressionSessionRemoteClient_MultiPassStorageSetDataAtTimeStamp(v10, &v15, a3, BytePtr, Length, &v14);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v14;
  }

  return vtcsr_handleMachErrorsInternal(a1, v12);
}

uint64_t VTMultiPassStorageRemote_GetTimeStamp(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = 0;
  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  v8 = *(a1 + 24);
  v13 = *a2;
  v14 = *(a2 + 2);
  TimeStamp = VTCompressionSessionRemoteClient_MultiPassStorageGetTimeStamp(v8, &v13, CStringPtrAndBufferToFree, a4, &v12);
  if (TimeStamp)
  {
    v10 = TimeStamp;
  }

  else
  {
    v10 = v12;
  }

  free(0);
  return vtcsr_handleMachErrorsInternal(a1, v10);
}

uint64_t VTMultiPassStorageRemote_GetTimeStampAndDuration(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a4;
  v12 = 0;
  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  v8 = *(a1 + 24);
  v15 = *a2;
  v16 = *(a2 + 2);
  TimeStampAndDuration = VTCompressionSessionRemoteClient_MultiPassStorageGetTimeStampAndDuration(v8, &v15, CStringPtrAndBufferToFree, &v14, &v13, &v12);
  if (TimeStampAndDuration)
  {
    v10 = TimeStampAndDuration;
  }

  else
  {
    v10 = v12;
  }

  free(0);
  return vtcsr_handleMachErrorsInternal(a1, v10);
}

uint64_t VTMultiPassStorageRemote_CopyDataAtTimeStamp(uint64_t a1, __int128 *a2, int a3, __CFData **a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  *&length[1] = 0;
  length[0] = 0;
  v6 = *(a1 + 24);
  v14 = *a2;
  v15 = *(a2 + 2);
  v7 = VTCompressionSessionRemoteClient_MultiPassStorageCopyDataAtTimeStamp(v6, &v14, a3, &length[1], length, &v13);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v13;
    if (v13)
    {
      goto LABEL_10;
    }

    if (!length[0])
    {
      if (!a4)
      {
        v8 = 0;
        return vtcsr_handleMachErrorsInternal(a1, v8);
      }

      v10 = 0;
LABEL_9:
      v8 = 0;
      *a4 = v10;
      goto LABEL_10;
    }

    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
    if (Mutable)
    {
      v10 = Mutable;
      CFDataAppendBytes(Mutable, *&length[1], length[0]);
      if (!a4)
      {
        CFRelease(v10);
        v8 = 0;
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = 4294954392;
  }

LABEL_10:
  if (length[0])
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], *&length[1]);
  }

  return vtcsr_handleMachErrorsInternal(a1, v8);
}

uint64_t VTTileCompressionSessionRemote_Create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v13 = vtcsr_oneTimeInitialization();
  if (v13)
  {
    v21 = v13;
    v19 = 0;
    goto LABEL_19;
  }

  MEMORY[0x193AE3010](&VTCompressionSessionRemoteGetTypeID_sRegisterVTCompressionSessionRemoteOnce, vtscr_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VTTileCompressionSessionRemote_Create_cold_1(&v24);
    v19 = 0;
    v21 = v24;
    goto LABEL_19;
  }

  v15 = Instance;
  *(Instance + 96) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v15 + 32) = 1;
  *(v15 + 120) = a8;
  *(v15 + 184) = a9;
  *(v15 + 80) = dispatch_group_create();
  *(v15 + 88) = FigDispatchQueueCreateWithPriority();
  *(v15 + 72) = dispatch_queue_create("com.apple.coremedia.compressionsession.pendingframequeue", 0);
  *(v15 + 136) = FigSemaphoreCreate();
  *(v15 + 168) = FigSemaphoreCreate();
  *(v15 + 216) = 1;
  *(v15 + 48) = FigSemaphoreCreate();
  v16 = MEMORY[0x1E695E480];
  if (a5)
  {
    if (VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode())
    {
      if (CFDictionaryContainsKey(a5, @"CMSession"))
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*v16, 0, a5);
        if (!MutableCopy)
        {
          v21 = 0;
          v19 = 0;
          goto LABEL_21;
        }

        v18 = MutableCopy;
        CFDictionaryRemoveValue(MutableCopy, @"CMSession");
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (CFDataFromCFPropertyList)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v19 = 0;
  }

  if (a6 && (CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList(), CFDataFromCFPropertyList) || (*(v15 + 240) = 0, CFDataFromCFPropertyList = weakReferenceTable_AddPointerAndGetKey(), CFDataFromCFPropertyList) || (CFDataFromCFPropertyList = FigRPCCreateServerConnectionForObject(), CFDataFromCFPropertyList) || (CFDataFromCFPropertyList = FigRPCGetServerConnectionInfo(), CFDataFromCFPropertyList))
  {
LABEL_20:
    v21 = CFDataFromCFPropertyList;
    goto LABEL_21;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v21 = 0;
  if (a10)
  {
    *a10 = v15;
LABEL_19:
    v22 = vtcsr_handleMachErrorsInternal(0, v21);
    goto LABEL_22;
  }

LABEL_21:
  v22 = vtcsr_handleMachErrorsInternal(v15, v21);
  CFRelease(v15);
LABEL_22:
  if (v19)
  {
    CFRelease(v19);
  }

  return v22;
}

uint64_t VTTileCompressionSessionRemote_PrepareToEncodeTiles(uint64_t a1, int a2, void *a3)
{
  if (*(a1 + 28) || *(a1 + 60))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v6 = VTCompressionSessionRemoteClient_PrepareToEncodeTiles(*(a1 + 24), a2);
    if (v6)
    {
      v7 = v6;
    }

    else if (FigSemaphoreWaitRelative())
    {
      VTTileCompressionSessionRemote_PrepareToEncodeTiles_cold_1(&v8);
      v7 = v8;
    }

    else
    {
      v7 = *(a1 + 148);
      if (a3)
      {
        *a3 = *(a1 + 156);
      }
    }

    return vtcsr_handleMachErrorsInternal(a1, v7);
  }
}

uint64_t VTTileCompressionSessionRemote_EncodeTile(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v38 = 0;
  v36 = 0;
  v37 = 0;
  theData = 0;
  if (*(a1 + 28) || *(a1 + 60))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  if (!FigCFEqual())
  {
    SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForPixelBuffer();
    if (SerializedAtomDataForPixelBuffer)
    {
      v26 = SerializedAtomDataForPixelBuffer;
      *(a1 + 192) = 0;
      goto LABEL_28;
    }

    *(a1 + 192) = (v36 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
    v32 = *(a1 + 224);
    *(a1 + 224) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v32)
    {
      CFRelease(v32);
    }
  }

  if (a5)
  {
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (CFDataFromCFPropertyList)
    {
      v26 = CFDataFromCFPropertyList;
      goto LABEL_28;
    }
  }

  v16 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A00404814DC14uLL);
  v17 = *(a1 + 216);
  *(a1 + 216) = v17 + 1;
  *v16 = v17;
  v16[1] = a6;
  v18 = *(a1 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __VTTileCompressionSessionRemote_EncodeTile_block_invoke;
  block[3] = &__block_descriptor_tmp_10_1;
  block[4] = a1;
  block[5] = v16;
  dispatch_sync(v18, block);
  v19 = *(a1 + 24);
  v20 = v38;
  v21 = v37;
  v22 = v36;
  if (!theData)
  {
    BytePtr = 0;
    goto LABEL_15;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (!theData)
  {
LABEL_15:
    Length = 0;
    goto LABEL_16;
  }

  Length = CFDataGetLength(theData);
LABEL_16:
  v27 = VTCompressionSessionRemoteClient_EncodeTile(v19, v20, v21, v22, a3, a4, BytePtr, Length, *v16);
  if (v27)
  {
    v26 = v27;
  }

  else
  {
    FigSemaphoreWaitRelative();
    v26 = *(a1 + 148);
    if (v26)
    {
      v28 = 1;
    }

    else
    {
      v28 = *(a1 + 152) == 0;
    }

    v29 = !v28;
    if (a7 && !v26)
    {
      *a7 = *(a1 + 144);
    }

    if (v29)
    {
      goto LABEL_28;
    }
  }

  v30 = *(a1 + 72);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 0x40000000;
  v33[2] = __VTTileCompressionSessionRemote_EncodeTile_block_invoke_2;
  v33[3] = &__block_descriptor_tmp_11_0;
  v33[4] = a1;
  v33[5] = v16;
  dispatch_sync(v30, v33);
LABEL_28:
  v31 = vtcsr_handleMachErrorsInternal(a1, v26);
  FigMachPortReleaseSendRight_();
  if (v36)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v37);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  return v31;
}

uint64_t VTTileCompressionSessionRemote_CompleteTiles(uint64_t a1)
{
  if (*(a1 + 28) || *(a1 + 60))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    VTTileCompressionSessionRemote_CompleteTiles_cold_1();
    return v2;
  }
}

uint64_t VTMotionEstimationSessionRemote_Create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v8 = vtcsr_oneTimeInitialization();
  if (v8)
  {
    v12 = v8;
    return vtcsr_handleMachErrorsInternal(0, v12);
  }

  MEMORY[0x193AE3010](&VTCompressionSessionRemoteGetTypeID_sRegisterVTCompressionSessionRemoteOnce, vtscr_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VTMotionEstimationSessionRemote_Create_cold_1(&v15);
    v12 = v15;
    return vtcsr_handleMachErrorsInternal(0, v12);
  }

  v10 = Instance;
  *(Instance + 96) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v10 + 32) = 2;
  *(v10 + 120) = 0;
  *(v10 + 184) = 0;
  *(v10 + 80) = dispatch_group_create();
  *(v10 + 88) = FigDispatchQueueCreateWithPriority();
  *(v10 + 72) = dispatch_queue_create("com.apple.coremedia.compressionsession.pendingframequeue", 0);
  *(v10 + 136) = FigSemaphoreCreate();
  *(v10 + 168) = FigSemaphoreCreate();
  *(v10 + 216) = 1;
  *(v10 + 48) = FigSemaphoreCreate();
  if (a5 && (CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList(), CFDataFromCFPropertyList) || (*(v10 + 240) = 0, CFDataFromCFPropertyList = weakReferenceTable_AddPointerAndGetKey(), CFDataFromCFPropertyList) || (CFDataFromCFPropertyList = FigRPCCreateServerConnectionForObject(), CFDataFromCFPropertyList) || (CFDataFromCFPropertyList = FigRPCGetServerConnectionInfo(), CFDataFromCFPropertyList))
  {
    v12 = CFDataFromCFPropertyList;
    goto LABEL_12;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v12 = 0;
  if (!a6)
  {
LABEL_12:
    v13 = vtcsr_handleMachErrorsInternal(v10, v12);
    CFRelease(v10);
    return v13;
  }

  *a6 = v10;
  return vtcsr_handleMachErrorsInternal(0, v12);
}

uint64_t VTCompressionSessionRemote_CopySourcePixelBufferAttributes(uint64_t a1)
{
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (*(a1 + 28) || *(a1 + 60))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  CFPropertyListFromData = VTCompressionSessionRemoteClient_MotionEstimationCopySourcePixelBufferAttributes(*(a1 + 24), &v7, &v6, &v8);
  if (CFPropertyListFromData)
  {
    goto LABEL_9;
  }

  v4 = v8;
  if (!v8)
  {
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
LABEL_9:
    v4 = CFPropertyListFromData;
  }

  v5 = vtcsr_handleMachErrorsInternal(a1, v4);
  if (v6)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v7);
  }

  return v5;
}

uint64_t VTCompressionSessionRemote_EstimateMotionVectors(uint64_t a1, const void *a2, CFTypeRef cf, int a4, uint64_t a5, const void *a6)
{
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  if (*(a1 + 28) || *(a1 + 60))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  v11 = a2;
  if ((a4 & 1) == 0)
  {
    v12 = *(a1 + 232);
    if (v12)
    {
      CFRelease(v12);
      v13 = 0;
      *(a1 + 232) = 0;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_18;
  }

  if (a2 && !FigCFEqual())
  {
    v13 = 0;
    v14 = *(a1 + 232);
    if (!v14)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14 = *(a1 + 232);
  v13 = 1;
  v11 = v14;
  if (v14)
  {
LABEL_12:
    CFRelease(v14);
    *(a1 + 232) = 0;
  }

LABEL_13:
  if (cf)
  {
    v15 = CFRetain(cf);
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 232) = v15;
LABEL_18:
  if (v11 && (v13 & 1) == 0)
  {
    SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForPixelBuffer();
    if (SerializedAtomDataForPixelBuffer)
    {
LABEL_24:
      v17 = SerializedAtomDataForPixelBuffer;
      *(a1 + 192) = 0;
      goto LABEL_32;
    }

    *(a1 + 192) = (v29 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  }

  if (cf)
  {
    SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForPixelBuffer();
    if (SerializedAtomDataForPixelBuffer)
    {
      goto LABEL_24;
    }

    *(a1 + 192) = (v28 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  }

  v18 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A00404814DC14uLL);
  v19 = *(a1 + 216);
  *(a1 + 216) = v19 + 1;
  *v18 = v19;
  v18[1] = 0;
  v18[4] = 0;
  v18[5] = _Block_copy(a6);
  v20 = *(a1 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __VTCompressionSessionRemote_EstimateMotionVectors_block_invoke;
  block[3] = &__block_descriptor_tmp_14_0;
  block[4] = a1;
  block[5] = v18;
  dispatch_sync(v20, block);
  v21 = VTCompressionSessionRemoteClient_EstimateMotion(*(a1 + 24), SHIDWORD(v32), v31, v29, v32, v30, v28, a4, *v18);
  if (v21)
  {
    v17 = v21;
  }

  else
  {
    FigSemaphoreWaitRelative();
    v17 = *(a1 + 148);
    v22 = *(a1 + 152);
    if (!v17 && (*(a1 + 144) & 1) == 0)
    {
      v17 = vtcsr_dequeueAllPendingFramesAndCallbackClientForEach(a1, 0, 1);
    }

    if (v22)
    {
      goto LABEL_32;
    }
  }

  v23 = *(a1 + 72);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 0x40000000;
  v26[2] = __VTCompressionSessionRemote_EstimateMotionVectors_block_invoke_2;
  v26[3] = &__block_descriptor_tmp_15_0;
  v26[4] = a1;
  v26[5] = v18;
  dispatch_sync(v23, v26);
LABEL_32:
  v24 = vtcsr_handleMachErrorsInternal(a1, v17);
  if (HIDWORD(v32))
  {
    FigMachPortReleaseSendRight_();
  }

  v25 = MEMORY[0x1E69E9A60];
  if (v29)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v31);
  }

  if (v32)
  {
    FigMachPortReleaseSendRight_();
  }

  if (v28)
  {
    MEMORY[0x193AE4440](*v25, v30);
  }

  return v24;
}

uint64_t VTCompressionSessionRemote_CompleteMotionVectors(uint64_t a1)
{
  if (*(a1 + 28) || *(a1 + 60))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    VTCompressionSessionRemote_CompleteMotionVectors_cold_1();
    return v2;
  }
}

uint64_t VTTemporalFilterSessionRemote_ProcessFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 28) && !*(a1 + 60))
  {
    if (!a4 || (CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList(), !CFDataFromCFPropertyList))
    {
      if (a2)
      {
        SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForPixelBuffer();
        if (SerializedAtomDataForPixelBuffer)
        {
          v10 = SerializedAtomDataForPixelBuffer;
          *(a1 + 192) = 0;
          return vtcsr_handleMachErrorsInternal(a1, v10);
        }

        LODWORD(a2) = 0;
        *(a1 + 192) = (*MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      }

      v11 = *(a1 + 24);
      v12 = *a3;
      v13 = *(a3 + 16);
      CFDataFromCFPropertyList = VTCompressionSessionRemoteClient_TemporalProcessFrame(v11, 0, 0, a2, &v12, 0, 0, 0);
      if (!CFDataFromCFPropertyList)
      {
        FigSemaphoreWaitRelative();
        v10 = *(a1 + 148);
        return vtcsr_handleMachErrorsInternal(a1, v10);
      }
    }

    v10 = CFDataFromCFPropertyList;
    return vtcsr_handleMachErrorsInternal(a1, v10);
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t VTTemporalFilterSessionRemote_CompleteFrames(uint64_t a1)
{
  if (*(a1 + 28) || *(a1 + 60))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    VTTemporalFilterSessionRemote_CompleteFrames_cold_1();
    return v2;
  }
}

double vtcsr_Init(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void vtcsr_Finalize(void *a1)
{
  VTCompressionSessionRemote_Invalidate(a1);
  v2 = a1[10];
  if (v2)
  {
    dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
    v3 = a1[10];
    if (v3)
    {
      dispatch_release(v3);
      a1[10] = 0;
    }
  }

  v4 = a1[11];
  if (v4)
  {
    dispatch_release(v4);
    a1[11] = 0;
  }

  v5 = a1[9];
  if (v5)
  {
    dispatch_release(v5);
    a1[9] = 0;
  }

  FigSemaphoreDestroy();
  FigSemaphoreDestroy();
  FigSemaphoreDestroy();
  v6 = a1[12];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[28];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[29];
  if (v8)
  {

    CFRelease(v8);
  }
}

uint64_t __vtcsr_oneTimeInitialization_block_invoke(uint64_t a1)
{
  VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode();
  result = FigRPCCreateRemoteClient();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __vtcsr_dequeueAllPendingFramesAndCallbackClientForEach_block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 40) + 60) || *(a1 + 48))
  {
    v2 = 0;
    while (1)
    {
      v3 = *(a1 + 40);
      v54 = 0;
      v55 = 0;
      v50 = 0;
      v51 = &v50;
      v52 = 0x2000000000;
      v53 = 0;
      v44 = 0;
      v45 = &v44;
      v46 = 0x3002000000;
      v47 = __Block_byref_object_copy__0;
      v48 = __Block_byref_object_dispose__0;
      v49 = 0;
      v38 = 0;
      v39 = &v38;
      v40 = 0x3002000000;
      v41 = __Block_byref_object_copy__0;
      v42 = __Block_byref_object_dispose__0;
      v43 = 0;
      v34 = 0;
      v35 = &v34;
      v36 = 0x2000000000;
      v37 = 0;
      v30 = 0;
      v31 = &v30;
      v32 = 0x2000000000;
      v33 = 0;
      v29 = 0;
      v25 = 0;
      v26 = &v25;
      v27 = 0x2000000000;
      v28 = 0;
      cf = 0;
      v24 = 0;
      v56 = 0uLL;
      v57 = 0;
      v22 = 0;
      v21 = 0;
      v20 = 0;
      v19 = 0;
      v18 = 0;
      v17 = 0;
      v4 = VTCompressionSessionRemoteClient_DequeueNextPendingEncodedFrame(*(v3 + 24), &v54, &v53, &v24 + 1, &v24, &v21, &v20, &v19, &v55, &v54 + 1, &v18, &v17, &v56, &v55 + 1);
      if (v4)
      {
        CFPropertyListFromData = v4;
        goto LABEL_28;
      }

      CFPropertyListFromData = HIDWORD(v55);
      if (!HIDWORD(v55))
      {
        break;
      }

LABEL_28:
      v13 = vtcsr_handleMachErrorsInternal(v3, CFPropertyListFromData);
      if (v21)
      {
        FigMachPortReleaseSendRight_();
      }

      if (v19)
      {
        MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v20);
      }

      _Block_release(v45[5]);
      _Block_release(v39[5]);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      _Block_object_dispose(&v25, 8);
      _Block_object_dispose(&v30, 8);
      _Block_object_dispose(&v34, 8);
      _Block_object_dispose(&v38, 8);
      _Block_object_dispose(&v44, 8);
      _Block_object_dispose(&v50, 8);
      *(*(*(a1 + 32) + 8) + 24) = v13;
      if (!v2 || *(*(*(a1 + 32) + 8) + 24))
      {
        return;
      }
    }

    if (!v54)
    {
      CFPropertyListFromData = 0;
LABEL_27:
      v2 = v55;
      goto LABEL_28;
    }

    if (HIDWORD(v54))
    {
      if (!v19)
      {
        goto LABEL_14;
      }

      FigRemote_CreateSampleBufferFromSerializedAtomData();
    }

    else
    {
      if (!(v21 | v19))
      {
        goto LABEL_14;
      }

      FigRemote_CreatePixelBufferFromSerializedAtomData();
    }

    v19 = 0;
LABEL_14:
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
    v6 = *(v3 + 128);
    if (v6)
    {
      v7 = *(v3 + 184);
      v15 = v56;
      v16 = v57;
      v6(v7, HIDWORD(v24), v24, &v15, v22);
    }

    else
    {
      v8 = *(v3 + 72);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __vtcsr_dequeueNextPendingFrameAndCallbackClient_block_invoke;
      block[3] = &unk_1E72C8158;
      block[4] = &v50;
      block[5] = &v44;
      block[6] = &v38;
      block[7] = &v34;
      block[8] = &v30;
      block[9] = &v25;
      block[10] = v3;
      dispatch_sync(v8, block);
      if (!*(v26 + 24))
      {
        CFPropertyListFromData = 4294954384;
        goto LABEL_28;
      }

      v9 = *(v3 + 112);
      if (v9)
      {
        v9(*(v3 + 184), v51[3], HIDWORD(v24), v24, cf);
      }

      else
      {
        v10 = *(v3 + 120);
        if (v10)
        {
          v10(*(v3 + 184), v51[3], v35[3], v31[3], HIDWORD(v24), v24, cf);
        }

        else
        {
          v11 = v45[5];
          if (v11)
          {
            (*(v11 + 16))(v11, HIDWORD(v24), v24, cf);
          }

          else
          {
            v12 = v39[5];
            if (v12)
            {
              (*(v12 + 16))(v12, HIDWORD(v24), v24, v29, v22);
            }
          }
        }
      }

      if (!FigAtomicDecrement32())
      {
        FigSemaphoreSignal();
      }
    }

    goto LABEL_27;
  }

  fig_log_get_emitter();
  *(*(*(a1 + 32) + 8) + 24) = FigSignalErrorAtGM();
}

void __vtcsr_dequeueNextPendingFrameAndCallbackClient_block_invoke(void *a1)
{
  v2 = *(a1[10] + 40);
  if (v2)
  {
    v3 = *(a1[4] + 8);
    while (*v2 != *(v3 + 24))
    {
      v2 = v2[6];
      if (!v2)
      {
        return;
      }
    }

    *(v3 + 24) = v2[1];
    *(*(a1[5] + 8) + 40) = v2[4];
    *(*(a1[6] + 8) + 40) = v2[5];
    *(*(a1[7] + 8) + 24) = v2[2];
    *(*(a1[8] + 8) + 24) = v2[3];
    v4 = a1[10];
    v7 = *(v4 + 40);
    v6 = (v4 + 40);
    v5 = v7;
    if (v7 != v2)
    {
      do
      {
        v8 = v5;
        v5 = v5[6];
      }

      while (v5 != v2);
      v6 = v8 + 6;
    }

    *v6 = v5[6];
    free(v2);
    *(*(a1[9] + 8) + 24) = 1;
  }
}

void __vtcsr_handleDeadServerConnection_block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __vtcsr_handleDeadServerConnection_block_invoke_2;
  block[3] = &unk_1E72C81C0;
  block[5] = &v16;
  block[6] = v2;
  block[4] = &v20;
  dispatch_sync(v3, block);
  while (1)
  {
    v4 = v17 + 3;
    v5 = v17[3];
    if (!v5)
    {
      break;
    }

    v6 = v21;
    v21[3] = v5;
    *v4 = *(*v4 + 48);
    v7 = *(a1 + 32);
    v8 = v7[14];
    if (v8)
    {
      v8(v7[23], *(v6[3] + 8), 4294954384, 2, 0);
    }

    else
    {
      v9 = v7[15];
      if (v9)
      {
        v9(v7[23], *(v6[3] + 8), *(v6[3] + 16), *(v6[3] + 24), 4294954384, 2, 0);
      }

      else
      {
        v10 = v6[3];
        v11 = *(v10 + 40);
        if (v11)
        {
          (*(v11 + 16))(v11, 4294954384, 2, 0, 0);
        }

        else
        {
          v12 = *(v10 + 32);
          if (v12)
          {
            (*(v12 + 16))(v12, 4294954384, 2, 0);
          }
        }
      }
    }

    _Block_release(*(v21[3] + 32));
    free(v21[3]);
    if (!FigAtomicDecrement32())
    {
      FigSemaphoreSignal();
    }
  }

  v13 = *(a1 + 32);
  if (*(v13 + 136))
  {
    *(v13 + 152) = 0;
    *(v13 + 144) = 0;
    FigSemaphoreSignal();
    v13 = *(a1 + 32);
  }

  if (*(v13 + 168))
  {
    *(v13 + 176) = 0;
    FigSemaphoreSignal();
    v13 = *(a1 + 32);
  }

  dispatch_group_leave(*(v13 + 80));
  v14 = *(a1 + 32);
  if (v14)
  {
    CFRelease(v14);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
}

void *__vtcsr_handleDeadServerConnection_block_invoke_2(void *result)
{
  *(*(result[4] + 8) + 24) = *(result[6] + 40);
  *(*(result[5] + 8) + 24) = *(*(result[4] + 8) + 24);
  *(result[6] + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_4()
{

  return FigSemaphoreWaitRelative();
}

uint64_t OUTLINED_FUNCTION_3_5(uint64_t a1, char a2)
{

  return vtcsr_dequeueAllPendingFramesAndCallbackClientForEach(v2, a2, 1);
}

uint64_t OUTLINED_FUNCTION_4_5(uint64_t a1, uint64_t a2)
{

  return vtcsr_handleMachErrorsInternal(v2, a2);
}

uint64_t OUTLINED_FUNCTION_5_4()
{

  return FigSemaphoreWaitRelative();
}

uint64_t DepthWrapperEncoder_CreateInstance()
{
  VTVideoEncoderGetClassID();
  v0 = CMDerivedObjectCreate();
  if (v0)
  {
    return v0;
  }

  DepthWrapperEncoder_CreateInstance_cold_3(&v3);
  return v3;
}

uint64_t DepthWrapperEncoder_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    *DerivedStorage = 1;
    v1 = *(DerivedStorage + 72);
    if (v1)
    {
      VTCompressionSessionInvalidate(v1);
    }
  }

  return 0;
}

void DepthWrapperEncoder_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[1] = 0;
  v1 = DerivedStorage[4];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[4] = 0;
  }

  v2 = DerivedStorage[6];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[6] = 0;
  }

  v3 = DerivedStorage[7];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[7] = 0;
  }

  v4 = DerivedStorage[8];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[8] = 0;
  }

  v5 = DerivedStorage[9];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[9] = 0;
  }

  v6 = DerivedStorage[10];
  if (v6)
  {
    dispatch_release(v6);
    DerivedStorage[10] = 0;
  }

  v7 = DerivedStorage[12];
  if (v7)
  {
    DerivedStorage[12] = 0;

    free(v7);
  }
}

__CFString *DepthWrapperEncoder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<DepthWrapperVideoEncoder %p>", a1);
  return Mutable;
}

uint64_t DepthWrapperEncoder_EncodeFrame(uint64_t a1, uint64_t a2, __CVBuffer *a3, CMTime *a4, CMTime *a5, const __CFDictionary *a6, _DWORD *a7)
{
  VTVideoEncoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = DerivedStorage;
  if (*a7)
  {
    *a7 = 0;
  }

  pixelBufferOut = 0;
  dispatch_group_enter(*(DerivedStorage + 80));
  ++*(v15 + 88);
  v16 = *MEMORY[0x1E695E480];
  PixelBufferPool = VTCompressionSessionGetPixelBufferPool(*(v15 + 72));
  v18 = CVPixelBufferPoolCreatePixelBuffer(v16, PixelBufferPool, &pixelBufferOut);
  if (v18)
  {
    v47 = v18;
    depthencoder_emitEncodedFrame(a1, a2, v18, 0, 0);
  }

  else
  {
    v49 = a4;
    v50 = a2;
    v51 = a5;
    v52 = a6;
    if (!*(v15 + 104))
    {
      v19 = *(v15 + 96);
      v20 = *(v15 + 40);
      v21 = (*(v15 + 44) - v20) + 1.0;
      v22 = powf(v21, 0.00097752);
      v23 = powf(v21, -0.00048876);
      v24 = 0;
      v25 = 0.0;
      for (i = 0; i != 1024; ++i)
      {
        v27 = v25;
        v23 = v22 * v23;
        _S0 = v20 + (v23 + -1.0);
        __asm { FCVT            H0, S0 }

        v25 = _S0;
        LODWORD(__pattern4.value) = v24;
        v33 = LOBYTE(_S0) - LOBYTE(v27);
        memset_pattern4((v19 + 2 * LOWORD(v27)), &__pattern4, (2 * (LODWORD(_S0) - LODWORD(v27))) & 0x1FFFC);
        if (v33)
        {
          *(v19 - 2 + 2 * LODWORD(v25)) = i << 6;
        }

        v24 += 4194368;
      }

      LODWORD(__pattern4.value) = -4128832;
      memset_pattern4((v19 + 2 * LODWORD(v25)), &__pattern4, (2 * (-32768 - LODWORD(v25))) & 0x1FFFC);
      if ((-32768 - LODWORD(v25)))
      {
        *(v19 + 65534) = -64;
      }

      bzero((v19 + 0x10000), 0x10000uLL);
      *(v15 + 104) = 1;
      v34 = *(v15 + 48);
      if (v34)
      {
        CFRelease(v34);
        *(v15 + 48) = 0;
      }
    }

    v35 = pixelBufferOut;
    VTVideoEncoderGetCMBaseObject(a1);
    v36 = CMBaseObjectGetDerivedStorage();
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    CVPixelBufferLockBaseAddress(v35, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    v41 = CVPixelBufferGetBaseAddress(v35);
    v42 = CVPixelBufferGetBytesPerRow(v35);
    if (Height)
    {
      v43 = 0;
      v44 = *(v36 + 96);
      do
      {
        if (Width)
        {
          for (j = 0; j != Width; ++j)
          {
            *&v41[2 * j] = *(v44 + 2 * BaseAddress[j]);
          }
        }

        BaseAddress = (BaseAddress + BytesPerRow);
        v41 += v42;
        ++v43;
      }

      while (v43 != Height);
    }

    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    CVPixelBufferUnlockBaseAddress(v35, 0);
    v46 = *(v15 + 72);
    outputHandler[0] = MEMORY[0x1E69E9820];
    outputHandler[1] = 0x40000000;
    outputHandler[2] = __DepthWrapperEncoder_EncodeFrame_block_invoke;
    outputHandler[3] = &__block_descriptor_tmp_6;
    outputHandler[4] = v15;
    outputHandler[5] = a1;
    outputHandler[6] = v50;
    __pattern4 = *v49;
    duration = *v51;
    v47 = VTCompressionSessionEncodeFrameWithOutputHandler(v46, pixelBufferOut, &__pattern4, &duration, v52, 0, outputHandler);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v47;
}

uint64_t DepthWrapperEncoder_CompleteFrames(uint64_t a1, CMTime *a2)
{
  VTVideoEncoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 72);
  v10 = *a2;
  v5 = VTCompressionSessionCompleteFrames(v4, &v10);
  if (*(DerivedStorage + 80))
  {
    v6 = 2;
    do
    {
      v7 = *(DerivedStorage + 80);
      v8 = dispatch_time(0, 1000000000 * v6);
      v6 *= 2;
    }

    while (dispatch_group_wait(v7, v8));
  }

  return v5;
}

uint64_t depthencoder_createPixelBufferAttributesDictionary(uint64_t a1, uint64_t a2, uint64_t a3, CFMutableDictionaryRef *a4)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    v7 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (v7)
    {
      v8 = v7;
      appended = FigCFArrayAppendInt32();
      if (appended)
      {
        CFRelease(v6);
      }

      else
      {
        CFDictionarySetValue(v6, *MEMORY[0x1E6966130], v8);
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        *a4 = v6;
      }

      CFRelease(v8);
    }

    else
    {
      depthencoder_createPixelBufferAttributesDictionary_cold_1(v6, &v11);
      return v11;
    }
  }

  else
  {
    depthencoder_createPixelBufferAttributesDictionary_cold_2(&v12);
    return v12;
  }

  return appended;
}

void depthencoder_emitEncodedFrame(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, opaqueCMSampleBuffer *a5)
{
  VTVideoEncoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  VTEncoderSessionEmitEncodedFrame(*(DerivedStorage + 8), a2, a3, a4, a5);
  --*(DerivedStorage + 88);
  v10 = *(DerivedStorage + 80);

  dispatch_group_leave(v10);
}

uint64_t vtParavirtualizationHostEncoderSession_RegisterType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke(uint64_t a1)
{
  v242 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 20));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  if (v3)
  {
    goto LABEL_384;
  }

  v4 = *(a1 + 72);
  if (v4 > 1701672299)
  {
    if (v4 > 1702061427)
    {
      if (v4 > 1702065266)
      {
        if (v4 != 1702065267)
        {
          if (v4 != 1702065520)
          {
            if (v4 == 1702127980)
            {
              v5 = *(a1 + 32);
              v6 = *(a1 + 40);
              v7 = *(a1 + 48);
              v8 = *(a1 + 64);
              LODWORD(v223) = 0;
              v225.version = 0;
              *type = 0;
              v219[0] = 0;
              pixelBufferOut[0] = 0;
              *v211 = 0;
              *v229 = 0;
              *v230 = 0;
              pixelBuffer = 0;
              v228 = 0;
              LODWORD(cf) = 0;
              theArray = 0;
              MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(v6, 0, &v223, 0);
              if (MessageTypeAndFlagsAndGuestUUID || (MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationCreateReplyAndByteStream(v6, 4, &v225, type)) != 0 || (MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetSInt64()) != 0)
              {
                version = MessageTypeAndFlagsAndGuestUUID;
                v182 = 0;
                v10 = 0;
                goto LABEL_290;
              }

              v10 = v219[0];
              if (!v7 || v8 != 1 || !*v7)
              {
                __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_2(&valueCallBacks);
                v182 = 0;
                version = valueCallBacks.version;
                if (!LODWORD(valueCallBacks.version))
                {
                  goto LABEL_329;
                }

                goto LABEL_290;
              }

              v11 = *MEMORY[0x1E695E480];
              v12 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], *v7, 0, pixelBufferOut);
              if (v12 || (VTParavirtualizationMessageGetVTInt32Point(), v12) || (VTParavirtualizationMessageGetVTInt32Size(), v12) || (v12 = VTParavirtualizationMessageCopyCFDictionary(v6, 745826672, &v228)) != 0 || (v12 = VTParavirtualizationMessageCopyCFUUID()) != 0)
              {
                version = v12;
LABEL_394:
                v182 = 0;
LABEL_290:
                v202 = FigCFCopyCompactDescription();
                LODWORD(v216) = 0;
                v215[0] = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v204 = v216;
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v215[0]))
                {
                  v205 = v204;
                }

                else
                {
                  v205 = v204 & 0xFFFFFFFE;
                }

                if (v205)
                {
                  v206 = *(v5 + 24);
                  *v231 = 136317698;
                  *&v231[4] = "vtParavirtualizationHostEncoderSession_HandleEncoderEncodeTile";
                  *&v231[12] = 1024;
                  *&v231[14] = version;
                  *&v231[18] = 2048;
                  *&v231[20] = v5;
                  *&v231[28] = 2048;
                  *&v231[30] = v206;
                  *&v231[38] = 2048;
                  *&v231[40] = v10;
                  *&v231[48] = 1024;
                  *&v231[50] = *v230;
                  *v232 = 1024;
                  *&v232[2] = *&v230[4];
                  v233 = 1024;
                  v234 = *v229;
                  v235 = 1024;
                  v236 = *&v229[4];
                  v237 = 2114;
                  v238 = v202;
                  v239 = 1024;
                  v240 = cf;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                if (v202)
                {
                  CFRelease(v202);
                }

LABEL_329:
                if (v225.version)
                {
                  CFRelease(v225.version);
                }

                if (*type)
                {
                  CFRelease(*type);
                }

                if (v228)
                {
                  CFRelease(v228);
                }

                if (pixelBufferOut[0])
                {
                  CFRelease(pixelBufferOut[0]);
                }

                if (*v211)
                {
                  CFRelease(*v211);
                }

                v207 = pixelBuffer;
                if (pixelBuffer)
                {
LABEL_340:
                  CFRelease(v207);
                }

LABEL_341:
                if (v182)
                {
                  v186 = v182;
                  goto LABEL_383;
                }

                goto LABEL_384;
              }

              v13 = pixelBufferOut[0];
              v14 = *v211;
              SInt64 = FigCFNumberCreateSInt64();
              FigSimpleMutexLock();
              v16 = *(v5 + 176);
              if (v16 || (valueCallBacks.version = 0, valueCallBacks.retain = vtClonePendingTileSurfaceStuff, valueCallBacks.copyDescription = 0, valueCallBacks.equal = 0, valueCallBacks.release = vtFreePendingTileSurfaceStuff, v16 = CFDictionaryCreateMutable(v11, 0, 0, &valueCallBacks), (*(v5 + 176) = v16) != 0))
              {
                if (!CFDictionaryGetValue(v16, v10))
                {
                  dispatch_group_enter(*(v5 + 184));
                  CFDictionarySetValue(*(v5 + 176), v10, 0);
                  Value = CFDictionaryGetValue(*(v5 + 176), v10);
                  CFArrayAppendValue(*Value, v13);
                  CFArrayAppendValue(Value[1], v14);
                  FigCFArrayAppendInt64();
                  *(Value + 12) = 0;
                }

                Mutable = *(v5 + 192);
                if (!Mutable)
                {
                  Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  *(v5 + 192) = Mutable;
                }

                if (CFDictionaryGetValue(Mutable, SInt64))
                {
                  FigCFArrayAppendInt64();
                }

                else
                {
                  v192 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
                  FigCFArrayAppendInt64();
                  CFDictionarySetValue(*(v5 + 192), SInt64, v192);
                  if (v192)
                  {
                    CFRelease(v192);
                  }
                }

                FigSimpleMutexUnlock();
                version = 0;
                if (SInt64)
                {
                  goto LABEL_281;
                }
              }

              else
              {
                version = FigSignalErrorAtGM();
                if (SInt64)
                {
LABEL_281:
                  CFRelease(SInt64);
                }
              }

              if (!version)
              {
                v194 = *(v5 + 24);
                v195 = pixelBufferOut[0];
                v196 = v228;
                v197 = *v229;
                v198 = *v230;
                v199 = *(CMBaseObjectGetVTable() + 16);
                if (*v199 >= 3uLL && (v200 = v199[19]) != 0)
                {
                  version = v200(v194, v10, v195, v198, v197, v196, &cf);
                }

                else
                {
                  version = -12782;
                }

                appended = VTParavirtualizationMessageAppendSInt32();
                if (appended || (appended = VTParavirtualizationMessageAppendUInt32()) != 0)
                {
                  v182 = 0;
                  version = appended;
                }

                else
                {
                  vtParavirtualizationHostEncoderSession_sendMessageToGuest(v5, v225.version);
                  vtParavirtualizationHostEncoderSession_lookupRetainAndForgetPendingTilePixelBuffersAndUUIDsAndMappingIDs(v5, v10, version != 0, 1, 0, &pixelBuffer, &theArray);
                  v182 = theArray;
                  vtParavirtualizationHostEncoderSessionCleanUpAfterEncode(v5, theArray);
                  if (!version)
                  {
                    goto LABEL_329;
                  }
                }

                goto LABEL_290;
              }

              goto LABEL_394;
            }

LABEL_179:
            LODWORD(v225.version) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v164 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            FigSignalErrorAtGM();
            goto LABEL_384;
          }

          v115 = *(a1 + 32);
          v114 = *(a1 + 40);
          v225.version = 0;
          *type = 0;
          v219[0] = 0;
          if (VTParavirtualizationCreateReplyAndByteStream(v114, 4, type, v219))
          {
            goto LABEL_220;
          }

          v116 = *(v115 + 24);
          v117 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          v118 = v117 ? v117(v116, &v225) : -12782;
          if (VTParavirtualizationMessageAppendSInt32() || v225.version && VTParavirtualizationMessageAppendCFPropertyList())
          {
            goto LABEL_220;
          }

          vtParavirtualizationHostEncoderSession_sendMessageToGuest(v115, *type);
          if (v118)
          {
            goto LABEL_220;
          }

          goto LABEL_256;
        }

        v146 = *(a1 + 32);
        v147 = *(a1 + 40);
        v225.version = 0;
        *type = 0;
        v219[0] = 0;
        pixelBufferOut[0] = 0;
        if (VTParavirtualizationCreateReplyAndByteStream(v147, 4, v219, pixelBufferOut))
        {
          goto LABEL_208;
        }

        if (VTParavirtualizationMessageCopyCFDictionary(v147, 744846192, &v225))
        {
          goto LABEL_208;
        }

        VTParavirtualizationMessageGetVTInt32Size();
        if (v148)
        {
          goto LABEL_208;
        }

        if (*type < 1)
        {
          v209 = 1446;
        }

        else
        {
          if (*&type[4] >= 1)
          {
            v149 = *(v146 + 24);
            v150 = v225.version;
            v151 = *type;
            v152 = *(CMBaseObjectGetVTable() + 16);
            if (*v152 >= 3uLL && (v153 = v152[17]) != 0)
            {
              v154 = v153(v149, v146 + 80, v150, v151, *MEMORY[0x1E695E480]);
            }

            else
            {
              v154 = -12782;
            }

            if (VTParavirtualizationMessageAppendSInt32())
            {
              goto LABEL_208;
            }

            vtParavirtualizationHostEncoderSession_sendMessageToGuest(v146, v219[0]);
            if (v154)
            {
              goto LABEL_208;
            }

            goto LABEL_374;
          }

          v209 = 1447;
        }

        if ((__VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_3(pixelBufferOut, v219, v146, v209, &valueCallBacks) & 1) == 0)
        {
LABEL_208:
          *v211 = 0;
          v230[0] = OS_LOG_TYPE_DEFAULT;
          v170 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v170, v230[0]);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

LABEL_374:
        if (v219[0])
        {
          CFRelease(v219[0]);
        }

        if (pixelBufferOut[0])
        {
          CFRelease(pixelBufferOut[0]);
        }

        v186 = v225.version;
        if (v225.version)
        {
          goto LABEL_383;
        }

        goto LABEL_384;
      }

      if (v4 != 1702061428)
      {
        if (v4 != 1702065249)
        {
          goto LABEL_179;
        }

        v83 = *(a1 + 32);
        v84 = *(a1 + 40);
        v225.version = 0;
        *type = 0;
        v219[0] = 0;
        if (VTParavirtualizationCreateReplyAndByteStream(v84, 4, type, v219))
        {
          goto LABEL_230;
        }

        VTParavirtualizationMessageGetCMVideoDimensions();
        if (v85)
        {
          goto LABEL_230;
        }

        if (SLODWORD(v225.version) < 1)
        {
          v208 = 734;
        }

        else
        {
          if (SHIDWORD(v225.version) >= 1)
          {
            v86 = *(v83 + 24);
            v87 = v225.version;
            v88 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v88)
            {
              v89 = v88(v86, v83 + 32, v87, *MEMORY[0x1E695E480]);
            }

            else
            {
              v89 = -12782;
            }

            if (VTParavirtualizationMessageAppendSInt32())
            {
              goto LABEL_230;
            }

            vtParavirtualizationHostEncoderSession_sendMessageToGuest(v83, *type);
            if (v89)
            {
              goto LABEL_230;
            }

LABEL_380:
            if (*type)
            {
              CFRelease(*type);
            }

            v186 = v219[0];
            if (v219[0])
            {
              goto LABEL_383;
            }

            goto LABEL_384;
          }

          v208 = 735;
        }

        if (__VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_3(v219, type, v83, v208, &valueCallBacks))
        {
          goto LABEL_380;
        }

LABEL_230:
        LODWORD(pixelBufferOut[0]) = 0;
        v211[0] = OS_LOG_TYPE_DEFAULT;
        v175 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_380;
      }

      v155 = *(a1 + 32);
      v156 = *(a1 + 40);
      v225.version = 0;
      *type = 0;
      v219[0] = 0;
      pixelBufferOut[0] = 0;
      *v211 = 0;
      ReplyAndByteStream = VTParavirtualizationCreateReplyAndByteStream(v156, 4, pixelBufferOut, v211);
      if (ReplyAndByteStream)
      {
        goto LABEL_391;
      }

      ReplyAndByteStream = VTParavirtualizationMessageCopyCFPropertyList(v156, 745235833, &v225);
      if (ReplyAndByteStream)
      {
        goto LABEL_391;
      }

      if (v225.version && (v158 = CFGetTypeID(v225.version), v158 == CFStringGetTypeID()))
      {
        if (!vtParavirtualizationHostEncoderSession_isPropertyInDenyList(v225.version))
        {
          ReplyAndByteStream = VTParavirtualizationMessageCopyCFPropertyList(v156, 745955692, type);
          if (!ReplyAndByteStream)
          {
            ReplyAndByteStream = vtParavirtualizationHostEncoderSession_handleAnySpecialCaseSetPropertyAndCopyReplacementValue(v155, v225.version, *type, v219);
            if (!ReplyAndByteStream)
            {
              v159 = v225.version;
              v160 = v219[0];
              CMBaseObject = VTVideoEncoderGetCMBaseObject(*(v155 + 24));
              v162 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              v163 = v162 ? v162(CMBaseObject, v159, v160) : -12782;
              ReplyAndByteStream = VTParavirtualizationMessageAppendSInt32();
              if (!ReplyAndByteStream)
              {
                vtParavirtualizationHostEncoderSession_sendMessageToGuest(v155, pixelBufferOut[0]);
                if (!v163)
                {
                  goto LABEL_345;
                }

                goto LABEL_244;
              }
            }
          }

LABEL_391:
          v163 = ReplyAndByteStream;
LABEL_244:
          v177 = FigCFCopyCompactDescription();
          *v230 = 0;
          v229[0] = OS_LOG_TYPE_DEFAULT;
          v178 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v179 = *v230;
          if (os_log_type_enabled(v178, v229[0]))
          {
            v180 = v179;
          }

          else
          {
            v180 = v179 & 0xFFFFFFFE;
          }

          if (v180)
          {
            v181 = *(v155 + 24);
            *v231 = 136316418;
            *&v231[4] = "vtParavirtualizationHostEncoderSession_HandleEncoderSetProperty";
            *&v231[12] = 2048;
            *&v231[14] = v155;
            *&v231[22] = 2048;
            *&v231[24] = v181;
            *&v231[32] = 2114;
            *&v231[34] = v225.version;
            *&v231[42] = 2114;
            *&v231[44] = v177;
            *&v231[52] = 1024;
            *v232 = v163;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          if (v177)
          {
            CFRelease(v177);
          }

LABEL_345:
          if (v225.version)
          {
            CFRelease(v225.version);
          }

          if (*type)
          {
            CFRelease(*type);
          }

          if (v219[0])
          {
            CFRelease(v219[0]);
          }

          if (pixelBufferOut[0])
          {
            CFRelease(pixelBufferOut[0]);
          }

          v186 = *v211;
          if (*v211)
          {
            goto LABEL_383;
          }

          goto LABEL_384;
        }

        __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_12(&valueCallBacks);
      }

      else
      {
        __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_13(&valueCallBacks);
      }

      v163 = valueCallBacks.version;
      if (!LODWORD(valueCallBacks.version))
      {
        goto LABEL_345;
      }

      goto LABEL_244;
    }

    if (v4 <= 1701868648)
    {
      if (v4 != 1701672300)
      {
        if (v4 != 1701865074)
        {
          goto LABEL_179;
        }

        v25 = *(a1 + 32);
        v24 = *(a1 + 40);
        v225.version = 0;
        *type = 0;
        if (VTParavirtualizationCreateReplyAndByteStream(v24, 4, &v225, type))
        {
          goto LABEL_262;
        }

        v26 = *(v25 + 24);
        v27 = *(CMBaseObjectGetVTable() + 16);
        if (*v27 >= 2uLL && (v28 = v27[7]) != 0)
        {
          v29 = v28(v26);
        }

        else
        {
          v29 = -12782;
        }

        if (VTParavirtualizationMessageAppendSInt32())
        {
          goto LABEL_262;
        }

        vtParavirtualizationHostEncoderSession_sendMessageToGuest(v25, v225.version);
        if (v29)
        {
          goto LABEL_262;
        }

LABEL_264:
        if (v225.version)
        {
          CFRelease(v225.version);
        }

        v186 = *type;
        if (*type)
        {
          goto LABEL_383;
        }

        goto LABEL_384;
      }

      v91 = *(a1 + 32);
      v90 = *(a1 + 40);
      v225.version = 0;
      *type = 0;
      v219[0] = 0;
      if (VTParavirtualizationCreateReplyAndByteStream(v90, 4, type, v219) || VTParavirtualizationMessageCopyCFDictionary(v90, 745566831, &v225))
      {
        MutableCopy = 0;
        v94 = 0;
        v98 = 0;
      }

      else
      {
        v92 = *MEMORY[0x1E695E480];
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        v94 = FigCFDictionaryCopyArrayOfKeys();
        v95 = 0;
        if (v94)
        {
          goto LABEL_121;
        }

LABEL_122:
        for (i = 0; v95 < i; i = CFArrayGetCount(v94))
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v94, v95);
          if (vtParavirtualizationHostEncoderSession_isPropertyInDenyList(ValueAtIndex))
          {
            CFDictionaryRemoveValue(MutableCopy, ValueAtIndex);
          }

          ++v95;
          if (!v94)
          {
            goto LABEL_122;
          }

LABEL_121:
          ;
        }

        if (FigCFDictionaryGetCount() < 1)
        {
          __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_1(&valueCallBacks);
          v98 = 0;
          if (!LODWORD(valueCallBacks.version))
          {
            goto LABEL_357;
          }
        }

        else
        {
          v98 = CFDictionaryCreateMutable(v92, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v99 = FigCFDictionaryCopyArrayOfKeys();
          Count = FigCFDictionaryGetCount();
          if (Count < 1)
          {
            v102 = 0;
          }

          else
          {
            v101 = Count;
            v102 = 0;
            for (j = 0; j != v101; ++j)
            {
              v104 = CFArrayGetValueAtIndex(v99, j);
              v105 = CFDictionaryGetValue(MutableCopy, v104);
              valueCallBacks.version = 0;
              v106 = vtParavirtualizationHostEncoderSession_handleAnySpecialCaseSetPropertyAndCopyReplacementValue(v91, v104, v105, &valueCallBacks);
              if (!v102)
              {
                v102 = v106;
              }

              if (!v106)
              {
                FigCFDictionarySetValue();
              }

              if (valueCallBacks.version)
              {
                CFRelease(valueCallBacks.version);
              }
            }
          }

          if (v99)
          {
            CFRelease(v99);
          }

          if (!v102)
          {
            v187 = *(v91 + 24);
            v188 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            v189 = v188 ? v188(v187, v98) : -12782;
            if (!VTParavirtualizationMessageAppendSInt32())
            {
              vtParavirtualizationHostEncoderSession_sendMessageToGuest(v91, *type);
              if (!v189)
              {
LABEL_357:
                if (v94)
                {
                  CFRelease(v94);
                }

                if (MutableCopy)
                {
                  CFRelease(MutableCopy);
                }

                if (v225.version)
                {
                  CFRelease(v225.version);
                }

                if (v98)
                {
                  v184 = v98;
                  goto LABEL_365;
                }

                goto LABEL_380;
              }
            }
          }
        }
      }

      v190 = FigCFCopyCompactDescription();
      LODWORD(pixelBufferOut[0]) = 0;
      v211[0] = OS_LOG_TYPE_DEFAULT;
      v191 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (v190)
      {
        CFRelease(v190);
      }

      goto LABEL_357;
    }

    if (v4 != 1701868649)
    {
      if (v4 != 1702060406)
      {
        goto LABEL_179;
      }

      v47 = *(a1 + 32);
      v46 = *(a1 + 40);
      v225.version = 0;
      *type = 0;
      v219[0] = 0;
      if (VTParavirtualizationCreateReplyAndByteStream(v46, 4, type, v219) || ((v48 = *(v47 + 24), (v49 = *(*(CMBaseObjectGetVTable() + 16) + 48)) == 0) ? (v50 = -12782) : (v50 = v49(v48, *MEMORY[0x1E695E480], &v225)), VTParavirtualizationMessageAppendSInt32() || v225.version && VTParavirtualizationMessageAppendCFDictionary(v219[0], 745566831, v225.version) || (vtParavirtualizationHostEncoderSession_sendMessageToGuest(v47, *type), v50)))
      {
LABEL_220:
        v173 = FigCFCopyCompactDescription();
        LODWORD(pixelBufferOut[0]) = 0;
        v211[0] = OS_LOG_TYPE_DEFAULT;
        v174 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (v173)
        {
          CFRelease(v173);
        }
      }

LABEL_256:
      v184 = v225.version;
      if (!v225.version)
      {
        goto LABEL_380;
      }

LABEL_365:
      CFRelease(v184);
      goto LABEL_380;
    }

    v107 = *(a1 + 32);
    v108 = *(a1 + 40);
    LODWORD(v219[0]) = 0;
    v225.version = 0;
    *type = 0;
    if (!VTParavirtualizationCreateReplyAndByteStream(v108, 4, &v225, type))
    {
      VTParavirtualizationMessageGetSInt32();
      if (!v109)
      {
        v110 = *(v107 + 24);
        v111 = *(CMBaseObjectGetVTable() + 16);
        if (*v111 >= 3uLL && (v112 = v111[18]) != 0)
        {
          v113 = v112(v110, SLODWORD(v219[0]) > 0);
        }

        else
        {
          v113 = -12782;
        }

        if (!VTParavirtualizationMessageAppendSInt32())
        {
          vtParavirtualizationHostEncoderSession_sendMessageToGuest(v107, v225.version);
          if (!v113)
          {
            goto LABEL_264;
          }
        }
      }
    }

LABEL_200:
    LODWORD(pixelBufferOut[0]) = 0;
    v211[0] = OS_LOG_TYPE_DEFAULT;
    v169 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT);
LABEL_263:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_264;
  }

  if (v4 <= 1701146738)
  {
    if (v4 <= 1701015407)
    {
      if (v4 != 1700950131)
      {
        if (v4 != 1701013106)
        {
          goto LABEL_179;
        }

        v19 = *(a1 + 32);
        v20 = *(a1 + 40);
        *type = 0;
        v219[0] = 0;
        *&v225.version = *MEMORY[0x1E6960C70];
        v225.release = *(MEMORY[0x1E6960C70] + 16);
        if (VTParavirtualizationCreateReplyAndByteStream(v20, 4, type, v219) || VTParavirtualizationMessageGetCMTime(v20, 745567347, &v225))
        {
          goto LABEL_230;
        }

        v21 = *(v19 + 24);
        *v231 = *&v225.version;
        *&v231[16] = v225.release;
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v22)
        {
          *&valueCallBacks.version = *v231;
          valueCallBacks.release = *&v231[16];
          v23 = v22(v21, &valueCallBacks);
        }

        else
        {
          v23 = -12782;
        }

        if (VTParavirtualizationMessageAppendSInt32())
        {
          goto LABEL_230;
        }

        vtParavirtualizationHostEncoderSession_sendMessageToGuest(v19, *type);
        if (v23)
        {
          goto LABEL_230;
        }

        goto LABEL_380;
      }

      v119 = *(a1 + 32);
      v120 = *(a1 + 40);
      v225.version = 0;
      *type = 0;
      LODWORD(v219[0]) = 0;
      if (!VTParavirtualizationCreateReplyAndByteStream(v120, 4, &v225, type))
      {
        VTParavirtualizationMessageGetUInt32();
        if (!v121)
        {
          v122 = *(v119 + 24);
          v123 = *(CMBaseObjectGetVTable() + 16);
          if (*v123 >= 2uLL && (v124 = v123[8]) != 0)
          {
            v125 = v124(v122, LODWORD(v219[0]), 0);
          }

          else
          {
            v125 = -12782;
          }

          if (!VTParavirtualizationMessageAppendSInt32())
          {
            vtParavirtualizationHostEncoderSession_sendMessageToGuest(v119, v225.version);
            if (!v125)
            {
              goto LABEL_264;
            }
          }
        }
      }

      goto LABEL_200;
    }

    if (v4 != 1701015408)
    {
      if (v4 != 1701016681)
      {
        goto LABEL_179;
      }

      v52 = *(a1 + 32);
      v51 = *(a1 + 40);
      v225.version = 0;
      *type = 0;
      if (!VTParavirtualizationCreateReplyAndByteStream(v51, 4, &v225, type))
      {
        v53 = *(v52 + 24);
        v54 = *(CMBaseObjectGetVTable() + 16);
        if (*v54 >= 3uLL && (v55 = v54[20]) != 0)
        {
          v56 = v55(v53);
        }

        else
        {
          v56 = -12782;
        }

        if (!VTParavirtualizationMessageAppendSInt32())
        {
          vtParavirtualizationHostEncoderSession_sendMessageToGuest(v52, v225.version);
          if (!v56)
          {
            goto LABEL_264;
          }
        }
      }

LABEL_262:
      LODWORD(v219[0]) = 0;
      LOBYTE(pixelBufferOut[0]) = 0;
      v185 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT);
      goto LABEL_263;
    }

    v133 = *(a1 + 32);
    v134 = *(a1 + 40);
    v225.version = 0;
    *type = 0;
    v219[0] = 0;
    pixelBufferOut[0] = 0;
    if (VTParavirtualizationCreateReplyAndByteStream(v134, 4, v219, pixelBufferOut) || VTParavirtualizationMessageCopyCFPropertyList(v134, 745235833, &v225))
    {
      goto LABEL_236;
    }

    if (v225.version && (v135 = CFGetTypeID(v225.version), v135 == CFStringGetTypeID()))
    {
      v136 = v225.version;
      v137 = VTVideoEncoderGetCMBaseObject(*(v133 + 24));
      v138 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v138)
      {
        v139 = v138(v137, v136, *MEMORY[0x1E695E480], type);
      }

      else
      {
        v139 = -12782;
      }

      if (VTParavirtualizationMessageAppendSInt32() || *type && VTParavirtualizationMessageAppendCFPropertyList())
      {
        goto LABEL_236;
      }

      vtParavirtualizationHostEncoderSession_sendMessageToGuest(v133, v219[0]);
      if (v139)
      {
        goto LABEL_236;
      }
    }

    else
    {
      __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_14(&valueCallBacks);
      if (LODWORD(valueCallBacks.version))
      {
LABEL_236:
        *v211 = 0;
        v230[0] = OS_LOG_TYPE_DEFAULT;
        v176 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v176, v230[0]);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    if (v225.version)
    {
      CFRelease(v225.version);
    }

    if (*type)
    {
      CFRelease(*type);
    }

    if (v219[0])
    {
      CFRelease(v219[0]);
    }

    v186 = pixelBufferOut[0];
    if (pixelBufferOut[0])
    {
      goto LABEL_383;
    }

    goto LABEL_384;
  }

  if (v4 <= 1701408373)
  {
    if (v4 == 1701146739)
    {
      v127 = *(a1 + 32);
      v126 = *(a1 + 40);
      v225.version = 0;
      *type = 0;
      LOBYTE(pixelBufferOut[0]) = 0;
      v128 = VTParavirtualizationCreateReplyAndByteStream(v126, 4, &v225, type);
      if (v128 || ((v129 = *(v127 + 24), v130 = *(CMBaseObjectGetVTable() + 16), *v130 < 2uLL) || (v131 = v130[9]) == 0 ? (v132 = -12782) : (v132 = v131(v129, pixelBufferOut, 0)), (v128 = VTParavirtualizationMessageAppendSInt32()) != 0 || (v128 = VTParavirtualizationMessageAppendSInt32()) != 0))
      {
        v132 = v128;
      }

      else
      {
        vtParavirtualizationHostEncoderSession_sendMessageToGuest(v127, v225.version);
        if (!v132)
        {
          goto LABEL_264;
        }
      }

      LODWORD(v219[0]) = 0;
      v211[0] = OS_LOG_TYPE_DEFAULT;
      v165 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v166 = v219[0];
      if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
      {
        v167 = v166;
      }

      else
      {
        v167 = v166 & 0xFFFFFFFE;
      }

      if (v167)
      {
        v168 = *(v127 + 24);
        *v231 = 136316162;
        *&v231[4] = "vtParavirtualizationHostEncoderSession_HandleEncoderEndPass";
        *&v231[12] = 2048;
        *&v231[14] = v127;
        *&v231[22] = 2048;
        *&v231[24] = v168;
        *&v231[32] = 1024;
        *&v231[34] = LOBYTE(pixelBufferOut[0]);
        *&v231[38] = 1024;
        *&v231[40] = v132;
        _os_log_send_and_compose_impl();
      }

      goto LABEL_263;
    }

    if (v4 != 1701212781)
    {
      goto LABEL_179;
    }

    v30 = *(a1 + 32);
    v31 = *(a1 + 40);
    v32 = *(a1 + 48);
    v33 = *(a1 + 64);
    *v215 = 0;
    *v229 = 0;
    *v230 = 0;
    pixelBuffer = 0;
    v228 = 0;
    theArray = 0;
    *type = *MEMORY[0x1E6960C70];
    v222 = *(MEMORY[0x1E6960C70] + 16);
    *v219 = *type;
    v220 = v222;
    v223 = 0;
    v224 = 0;
    cf = 0;
    v216 = 0;
    if (VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(v31, 0, v215, 0) || VTParavirtualizationCreateReplyAndByteStream(v31, 4, v230, v229) || VTParavirtualizationMessageGetSInt64())
    {
      v182 = 0;
    }

    else
    {
      v34 = v228;
      if (v32 && v33 == 1 && (v35 = *v32) != 0)
      {
        v36 = *MEMORY[0x1E695E480];
        if (CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v35, 0, &pixelBuffer) || VTParavirtualizationMessageGetCMTime(v31, 745567347, type) || VTParavirtualizationMessageGetCMTime(v31, 744781170, v219) || VTParavirtualizationMessageCopyCFDictionary(v31, 744910962, &v223) || VTParavirtualizationMessageCopyCFUUID() || VTParavirtualizationMessageSetAttachmentsOnPixelBufferAndIOSurfaceIfPresent(v31, pixelBuffer))
        {
          v182 = 0;
        }

        else
        {
          v37 = theArray;
          v38 = pixelBuffer;
          FigSimpleMutexLock();
          v39 = *(v30 + 152);
          if (v39 || (v225.version = 0, v225.retain = vtClonePendingFrameSurfaceStuff, v225.copyDescription = 0, v225.equal = 0, v225.release = vtFreePendingFrameSurfaceStuff, v39 = CFDictionaryCreateMutable(v36, 0, 0, &v225), (*(v30 + 152) = v39) != 0))
          {
            if (!CFDictionaryGetValue(v39, v34))
            {
              dispatch_group_enter(*(v30 + 160));
              CFDictionarySetValue(*(v30 + 152), v34, 0);
              v40 = CFDictionaryGetValue(*(v30 + 152), v34);
              CFArrayAppendValue(*v40, v38);
              CFArrayAppendValue(v40[1], v37);
              FigCFArrayAppendInt64();
              *(v40 + 12) = 0;
            }

            FigSimpleMutexUnlock();
LABEL_62:
            v41 = *(v30 + 24);
            v42 = pixelBuffer;
            v43 = v223;
            *pixelBufferOut = *type;
            v214 = v222;
            *v211 = *v219;
            v212 = v220;
            v44 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (v44)
            {
              *&valueCallBacks.version = *pixelBufferOut;
              valueCallBacks.release = v214;
              *v231 = *v211;
              *&v231[16] = v212;
              v45 = v44(v41, v34, v42, &valueCallBacks, v231, v43, &v224);
            }

            else
            {
              v45 = -12782;
            }

            if (VTParavirtualizationMessageAppendSInt32() || VTParavirtualizationMessageAppendUInt32())
            {
              v182 = 0;
            }

            else
            {
              vtParavirtualizationHostEncoderSession_sendMessageToGuest(v30, *v230);
              vtParavirtualizationHostEncoderSession_lookupRetainAndForgetPendingFramePixelBuffersAndUUIDsAndMappingIDs(v30, v34, v45 != 0, 1, 0, &cf, &v216);
              v182 = v216;
              vtParavirtualizationHostEncoderSessionCleanUpAfterEncode(v30, v216);
              if (!v45)
              {
                goto LABEL_315;
              }
            }

            goto LABEL_253;
          }

          if (__VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_9(&v225, v30 + 144, &valueCallBacks))
          {
            goto LABEL_62;
          }

          v182 = 0;
        }
      }

      else
      {
        __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_10(&valueCallBacks);
        v182 = 0;
        if (!LODWORD(valueCallBacks.version))
        {
LABEL_315:
          if (*v230)
          {
            CFRelease(*v230);
          }

          if (*v229)
          {
            CFRelease(*v229);
          }

          if (v223)
          {
            CFRelease(v223);
          }

          if (pixelBuffer)
          {
            CFRelease(pixelBuffer);
          }

          if (theArray)
          {
            CFRelease(theArray);
          }

          v207 = cf;
          if (cf)
          {
            goto LABEL_340;
          }

          goto LABEL_341;
        }
      }
    }

LABEL_253:
    LODWORD(pixelBufferOut[0]) = 0;
    v211[0] = OS_LOG_TYPE_DEFAULT;
    v183 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_315;
  }

  if (v4 == 1701408374)
  {
    v141 = *(a1 + 32);
    v140 = *(a1 + 40);
    v225.version = 0;
    *type = 0;
    if (!VTParavirtualizationCreateReplyAndByteStream(v140, 4, &v225, type))
    {
      v142 = VTVideoEncoderGetCMBaseObject(*(v141 + 24));
      if (v142)
      {
        v143 = v142;
        v144 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        v145 = v144 ? v144(v143) : -12782;
      }

      else
      {
        v145 = -12780;
      }

      if (!VTParavirtualizationMessageAppendSInt32())
      {
        vtParavirtualizationHostEncoderSession_sendMessageToGuest(v141, v225.version);
        if (!v145)
        {
          goto LABEL_264;
        }
      }
    }

    goto LABEL_262;
  }

  if (v4 != 1701669222)
  {
    goto LABEL_179;
  }

  v57 = *(a1 + 32);
  v58 = *(a1 + 40);
  v59 = *(a1 + 48);
  v60 = *(a1 + 56);
  v61 = *(a1 + 64);
  v224 = 0;
  *v229 = 0;
  *v230 = 0;
  v228 = 0;
  v62 = *MEMORY[0x1E695E480];
  v63 = MEMORY[0x1E695E9C0];
  v64 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v65 = CFArrayCreateMutable(v62, 0, v63);
  v66 = v65;
  theArray = 0;
  pixelBuffer = 0;
  v223 = 0;
  *type = *MEMORY[0x1E6960C70];
  v222 = *(MEMORY[0x1E6960C70] + 16);
  *v219 = *type;
  v220 = v222;
  cf = 0;
  v217 = 0;
  *v215 = 0;
  v216 = 0;
  if (!v64)
  {
    __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_8(&valueCallBacks);
LABEL_419:
    v171 = 0;
LABEL_437:
    v82 = valueCallBacks.version;
    goto LABEL_213;
  }

  if (!v65)
  {
    __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_7(&valueCallBacks);
    goto LABEL_419;
  }

  if (VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(v58, 0, &v224, 0) || VTParavirtualizationCreateReplyAndByteStream(v58, 4, v230, v229))
  {
    v171 = 0;
    goto LABEL_214;
  }

  v210 = v57;
  if (VTParavirtualizationMessageGetSInt64())
  {
    v171 = 0;
    goto LABEL_214;
  }

  v67 = v228;
  if (v61)
  {
    while (1)
    {
      v68 = *v59;
      if (!*v59)
      {
        break;
      }

      valueCallBacks.version = 0;
      if (!CVPixelBufferCreateWithIOSurface(v62, v68, 0, &valueCallBacks))
      {
        CFArrayAppendValue(v66, valueCallBacks.version);
        FigCFArrayAppendInt64();
      }

      if (valueCallBacks.version)
      {
        CFRelease(valueCallBacks.version);
      }

      v60 += 8;
      ++v59;
      if (!--v61)
      {
        goto LABEL_89;
      }
    }

    __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_4(&valueCallBacks);
    v171 = 0;
    v82 = valueCallBacks.version;
LABEL_213:
    if (!v82)
    {
      goto LABEL_295;
    }

    goto LABEL_214;
  }

LABEL_89:
  if (VTParavirtualizationMessageCopyFigTagCollectionArray(v58, 745825067, &theArray))
  {
    v171 = 0;
    goto LABEL_214;
  }

  v69 = CFArrayGetCount(v66);
  v70 = theArray;
  if (theArray)
  {
    v70 = CFArrayGetCount(theArray);
  }

  if (v69 != v70)
  {
    __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_5(&valueCallBacks);
    v171 = 0;
    goto LABEL_437;
  }

  if (MEMORY[0x193AE2F70](v62, theArray, v66, &v223) || VTParavirtualizationMessageGetCMTime(v58, 745567347, type) || VTParavirtualizationMessageGetCMTime(v58, 744781170, v219) || VTParavirtualizationMessageCopyCFDictionary(v58, 744910962, &cf) || VTParavirtualizationMessageCopyCFUUIDArray())
  {
    v171 = 0;
  }

  else
  {
    v71 = pixelBuffer;
    FigSimpleMutexLock();
    v72 = *(v210 + 152);
    if (v72 || (v225.version = 0, v225.retain = vtClonePendingFrameSurfaceStuff, v225.copyDescription = 0, v225.equal = 0, v225.release = vtFreePendingFrameSurfaceStuff, v72 = CFDictionaryCreateMutable(v62, 0, 0, &v225), (*(v210 + 152) = v72) != 0))
    {
      if (!CFDictionaryGetValue(v72, v67))
      {
        CFDictionarySetValue(*(v210 + 152), v67, 0);
        v73 = CFDictionaryGetValue(*(v210 + 152), v67);
        v74 = *v73;
        v243.length = CFArrayGetCount(v66);
        v243.location = 0;
        CFArrayAppendArray(v74, v66, v243);
        v75 = v73[1];
        v244.length = CFArrayGetCount(v71);
        v244.location = 0;
        CFArrayAppendArray(v75, v71, v244);
        v76 = v73[2];
        v245.length = CFArrayGetCount(v64);
        v245.location = 0;
        CFArrayAppendArray(v76, v64, v245);
        *(v73 + 12) = 0;
      }

      FigSimpleMutexUnlock();
    }

    else if (!__VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_6(&v225, v210 + 144, &valueCallBacks))
    {
      v171 = 0;
      goto LABEL_214;
    }

    dispatch_group_enter(*(v210 + 160));
    v77 = *(v210 + 24);
    v78 = v223;
    v79 = cf;
    *pixelBufferOut = *type;
    v214 = v222;
    *v211 = *v219;
    v212 = v220;
    v80 = *(CMBaseObjectGetVTable() + 16);
    if (*v80 >= 4uLL && (v81 = v80[21]) != 0)
    {
      *&valueCallBacks.version = *pixelBufferOut;
      valueCallBacks.release = v214;
      *v231 = *v211;
      *&v231[16] = v212;
      v82 = v81(v77, v67, v78, &valueCallBacks, v231, v79, &v217);
    }

    else
    {
      v82 = -12782;
    }

    if (!VTParavirtualizationMessageAppendSInt32() && !VTParavirtualizationMessageAppendUInt32())
    {
      vtParavirtualizationHostEncoderSession_sendMessageToGuest(v210, *v230);
      vtParavirtualizationHostEncoderSession_lookupRetainAndForgetPendingFramePixelBuffersAndUUIDsAndMappingIDs(v210, v67, v82 != 0, 1, 0, &v216, v215);
      v171 = *v215;
      vtParavirtualizationHostEncoderSessionCleanUpAfterEncode(v210, *v215);
      goto LABEL_213;
    }

    v171 = 0;
  }

LABEL_214:
  LODWORD(pixelBufferOut[0]) = 0;
  v211[0] = OS_LOG_TYPE_DEFAULT;
  v172 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_295:
  if (*v230)
  {
    CFRelease(*v230);
  }

  if (*v229)
  {
    CFRelease(*v229);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v223)
  {
    CFRelease(v223);
  }

  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (v216)
  {
    CFRelease(v216);
  }

  if (v171)
  {
    v186 = v171;
LABEL_383:
    CFRelease(v186);
  }

LABEL_384:
  free(*(a1 + 48));
  free(*(a1 + 56));
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
}

uint64_t VTParavirtualizationHostEncoderSessionSetPixelBufferAttributes(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v11 = 0;
  cf = 0;
  v9 = 0;
  v10 = 0;
  appended = VTParavirtualizationCopyFilteredPixelBufferAttributes(a2, &v10);
  if (appended)
  {
    goto LABEL_22;
  }

  v4 = *(a1 + 136);
  appended = VTParavirtualizationCreateMessageAndByteStream(1164993121, 2 * (v4 > 2), a1 + 120, 0, &cf, &v11);
  if (appended)
  {
    goto LABEL_22;
  }

  appended = VTParavirtualizationMessageAppendCFPropertyList();
  if (appended)
  {
    goto LABEL_22;
  }

  if (v4 < 3)
  {
    v5 = vtParavirtualizationHostEncoderSession_sendMessageToGuest(a1, cf);
    if (!v5)
    {
      goto LABEL_13;
    }

LABEL_12:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_13;
  }

  appended = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v9);
  if (appended)
  {
LABEL_22:
    v5 = appended;
    goto LABEL_12;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v6)
  {
    v5 = v6;
  }

  else
  {
    v5 = v13;
  }

  if (v5)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v5;
}

uint64_t VTParavirtualizationHostEncoderSessionCreateVideoFormatDescription(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v15 = 0;
  cf = 0;
  v14 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1164338291, 2, a1 + 120, 0, &cf, &v15);
  if (appended || (appended = VTParavirtualizationMessageAppendSInt32(), appended) || (appended = VTParavirtualizationMessageAppendSInt32(), appended) || (appended = VTParavirtualizationMessageAppendSInt32(), appended) || a5 && (appended = VTParavirtualizationMessageAppendCFDictionary(v15, 744847476, a5), appended) || (appended = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v14), appended) || (VTParavirtualizationMessageGetSInt32(), appended))
  {
    v10 = appended;
LABEL_14:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_15;
  }

  v10 = v17;
  if (v17)
  {
    goto LABEL_14;
  }

  v11 = VTParavirtualizationMessageCopyCMFormatDescription();
  v10 = v11;
  if (a6 && !v11)
  {
    *a6 = 0;
    goto LABEL_15;
  }

  if (v11)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v10;
}

uint64_t VTParavirtualizationHostEncoderSessionEmitEncodedFrame(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, opaqueCMSampleBuffer *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0;
  cf = 0;
  v19 = 0;
  v20 = 0;
  theArray = 0;
  v18 = 0;
  v16 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1164275060, 2, a1 + 120, 0, &cf, &v21);
  if (appended || (appended = VTParavirtualizationMessageAppendSInt64(), appended) || (appended = VTParavirtualizationMessageAppendSInt32(), appended) || (appended = VTParavirtualizationMessageAppendUInt32(), appended))
  {
    v13 = appended;
    vtParavirtualizationHostEncoderSession_lookupRetainAndForgetPendingFramePixelBuffersAndUUIDsAndMappingIDs(a1, a2, 0, 0, 1, &theArray, &v16);
    goto LABEL_42;
  }

  vtParavirtualizationHostEncoderSession_lookupRetainAndForgetPendingFramePixelBuffersAndUUIDsAndMappingIDs(a1, a2, 0, 0, 1, &theArray, &v16);
  v9 = theArray;
  if (theArray)
  {
    if (CFArrayGetCount(theArray) == 1)
    {
      CFArrayGetValueAtIndex(v9, 0);
      v10 = VTParavirtualizationMessageAppendCFUUID();
      if (v10)
      {
        goto LABEL_41;
      }
    }

    else if (CFArrayGetCount(v9) >= 2)
    {
      v10 = VTParavirtualizationMessageAppendCFUUIDArray(v21, 745892139, v9);
      if (v10)
      {
        goto LABEL_41;
      }
    }
  }

  if (!a5)
  {
LABEL_25:
    vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationCodecOperationReplyTimeout, &v20);
    v12 = v16;
    vtParavirtualizationHostEncoderSessionCleanUpAfterEncode(a1, v16);
    v13 = 0;
    goto LABEL_26;
  }

  v10 = VTParavirtualizationMessageAppendCMSampleBufferWithLimitAndCopyRemainingData(v21, 745759334, *(a1 + 136), 0x4000uLL, a5, (a1 + 200), &v19);
  if (!v10)
  {
    if (v19)
    {
      while (1)
      {
        v10 = VTParavirtualizationMessageChangeMessageFlags(cf, 16, 18);
        if (v10)
        {
          goto LABEL_41;
        }

        v10 = vtParavirtualizationHostEncoderSession_sendMessageToGuest(a1, cf);
        if (v10)
        {
          goto LABEL_41;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v21)
        {
          CFRelease(v21);
          v21 = 0;
        }

        v10 = VTParavirtualizationCreateMessageAndByteStream(1164275060, 2, a1 + 120, 0, &cf, &v21);
        if (v10)
        {
          goto LABEL_41;
        }

        v10 = VTParavirtualizationMessageAppendCMSampleBufferRemainderDataWithLimitAndCopyRemainingData(v21, 745759334, 0x4000uLL, v19, &v18);
        if (v10)
        {
          goto LABEL_41;
        }

        if (v19)
        {
          CFRelease(v19);
        }

        v11 = v18;
        v18 = 0;
        v19 = v11;
        if (!v11)
        {
          goto LABEL_25;
        }
      }
    }

    goto LABEL_25;
  }

LABEL_41:
  v13 = v10;
LABEL_42:
  v12 = v16;
  vtParavirtualizationHostEncoderSessionCleanUpAfterEncode(a1, v16);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v13;
}

uint64_t vtParavirtualizationHostEncoderSession_lookupRetainAndForgetPendingFramePixelBuffersAndUUIDsAndMappingIDs(uint64_t a1, const void *a2, int a3, int a4, int a5, CFArrayRef *a6, void *a7)
{
  FigSimpleMutexLock();
  v14 = *(a1 + 152);
  if (v14)
  {
    Value = CFDictionaryGetValue(v14, a2);
    if (Value)
    {
      if (a4)
      {
        if (!Value[24])
        {
          Value[24] = 1;
        }
      }

      else if (a5 && !Value[25])
      {
        Value[25] = 1;
      }

      if (Value[24])
      {
        if (Value[25] | a3)
        {
LABEL_11:
          *a7 = *(Value + 2);
          *(Value + 2) = 0;
          *a6 = *(Value + 1);
          *(Value + 1) = 0;
          CFDictionaryRemoveValue(*(a1 + 152), a2);
          dispatch_group_leave(*(a1 + 160));
          goto LABEL_17;
        }
      }

      else if (a3)
      {
        goto LABEL_11;
      }

      v16 = *(Value + 1);
      if (v16)
      {
        Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v16);
      }

      else
      {
        Copy = 0;
      }

      *a6 = Copy;
    }
  }

LABEL_17:

  return FigSimpleMutexUnlock();
}

uint64_t VTParavirtualizationHostEncoderSessionSetTileAttributes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v12 = 0;
  cf = 0;
  v10 = 0;
  v11 = 0;
  appended = VTParavirtualizationCopyFilteredPixelBufferAttributes(a3, &v11);
  if (appended)
  {
    goto LABEL_21;
  }

  v5 = *(a1 + 136);
  appended = VTParavirtualizationCreateMessageAndByteStream(1413837665, 2 * (v5 > 2), a1 + 120, 0, &cf, &v12);
  if (appended)
  {
    goto LABEL_21;
  }

  appended = VTParavirtualizationMessageAppendVTInt32Size();
  if (appended)
  {
    goto LABEL_21;
  }

  appended = VTParavirtualizationMessageAppendCFPropertyList();
  if (appended)
  {
    goto LABEL_21;
  }

  if (v5 < 3)
  {
    v6 = vtParavirtualizationHostEncoderSession_sendMessageToGuest(a1, cf);
    if (!v6)
    {
      goto LABEL_14;
    }

LABEL_13:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_14;
  }

  appended = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v10);
  if (appended)
  {
LABEL_21:
    v6 = appended;
    goto LABEL_13;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = v14;
  }

  if (v6)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v6;
}

uint64_t VTParavirtualizationHostEncoderSessionCreateTileVideoFormatDescription(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v15 = 0;
  cf = 0;
  v14 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1413833572, 2, a1 + 120, 0, &cf, &v15);
  if (appended || (appended = VTParavirtualizationMessageAppendSInt32(), appended) || (appended = VTParavirtualizationMessageAppendSInt32(), appended) || (appended = VTParavirtualizationMessageAppendSInt32(), appended) || a5 && (appended = VTParavirtualizationMessageAppendCFDictionary(v15, 744847476, a5), appended) || (appended = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v14), appended) || (VTParavirtualizationMessageGetSInt32(), appended))
  {
    v10 = appended;
LABEL_14:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_15;
  }

  v10 = v17;
  if (v17)
  {
    goto LABEL_14;
  }

  v11 = VTParavirtualizationMessageCopyCMFormatDescription();
  v10 = v11;
  if (a6 && !v11)
  {
    *a6 = 0;
    goto LABEL_15;
  }

  if (v11)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v10;
}

uint64_t VTParavirtualizationHostEncoderSessionEmitEncodedTile(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, opaqueCMSampleBuffer *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0;
  cf = 0;
  v18 = 0;
  v19 = 0;
  theArray = 0;
  v17 = 0;
  v15 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1413834093, 2, a1 + 120, 0, &cf, &v20);
  if (appended)
  {
    goto LABEL_38;
  }

  appended = VTParavirtualizationMessageAppendSInt64();
  if (appended)
  {
    goto LABEL_38;
  }

  appended = VTParavirtualizationMessageAppendSInt32();
  if (appended)
  {
    goto LABEL_38;
  }

  appended = VTParavirtualizationMessageAppendUInt32();
  if (appended)
  {
    goto LABEL_38;
  }

  if (!a5)
  {
    goto LABEL_19;
  }

  appended = VTParavirtualizationMessageAppendCMSampleBufferWithLimitAndCopyRemainingData(v20, 745759334, *(a1 + 136), 0x3FDCuLL, a5, (a1 + 200), &v18);
  if (appended)
  {
LABEL_38:
    v11 = appended;
    vtParavirtualizationHostEncoderSession_lookupRetainAndForgetPendingTilePixelBuffersAndUUIDsAndMappingIDs(a1, a2, 0, 0, 1, &theArray, &v15);
    goto LABEL_39;
  }

  if (v18)
  {
    do
    {
      appended = VTParavirtualizationMessageChangeMessageFlags(cf, 16, 18);
      if (appended)
      {
        goto LABEL_38;
      }

      appended = vtParavirtualizationHostEncoderSession_sendMessageToGuest(a1, cf);
      if (appended)
      {
        goto LABEL_38;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v20)
      {
        CFRelease(v20);
        v20 = 0;
      }

      appended = VTParavirtualizationCreateMessageAndByteStream(1413834093, 2, a1 + 120, 0, &cf, &v20);
      if (appended)
      {
        goto LABEL_38;
      }

      appended = VTParavirtualizationMessageAppendCMSampleBufferRemainderDataWithLimitAndCopyRemainingData(v20, 745759334, 0x3FDCuLL, v18, &v17);
      if (appended)
      {
        goto LABEL_38;
      }

      if (v18)
      {
        CFRelease(v18);
      }

      v9 = v17;
      v17 = 0;
      v18 = v9;
    }

    while (v9);
  }

LABEL_19:
  vtParavirtualizationHostEncoderSession_lookupRetainAndForgetPendingTilePixelBuffersAndUUIDsAndMappingIDs(a1, a2, 0, 0, 1, &theArray, &v15);
  v10 = theArray;
  if (!theArray || CFArrayGetCount(theArray) < 1 || (CFArrayGetValueAtIndex(v10, 0), v11 = VTParavirtualizationMessageAppendCFUUID(), !v11))
  {
    vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationCodecOperationReplyTimeout, &v19);
    v12 = v15;
    vtParavirtualizationHostEncoderSessionCleanUpAfterEncode(a1, v15);
    v11 = 0;
    goto LABEL_23;
  }

LABEL_39:
  v12 = v15;
  vtParavirtualizationHostEncoderSessionCleanUpAfterEncode(a1, v15);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v11;
}

uint64_t vtParavirtualizationHostEncoderSession_lookupRetainAndForgetPendingTilePixelBuffersAndUUIDsAndMappingIDs(uint64_t a1, const void *a2, int a3, int a4, int a5, CFArrayRef *a6, CFMutableArrayRef *a7)
{
  FigSimpleMutexLock();
  v14 = *(a1 + 176);
  if (!v14)
  {
    return FigSimpleMutexUnlock();
  }

  Value = CFDictionaryGetValue(v14, a2);
  if (!Value)
  {
    return FigSimpleMutexUnlock();
  }

  v16 = Value;
  if (a4)
  {
    if (!Value[24])
    {
      Value[24] = 1;
    }
  }

  else if (a5 && !Value[25])
  {
    Value[25] = 1;
  }

  if (Value[24])
  {
    if (Value[25] | a3)
    {
      goto LABEL_11;
    }

LABEL_28:
    v27 = *(Value + 1);
    if (v27)
    {
      Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v27);
    }

    else
    {
      Copy = 0;
    }

    *a6 = Copy;
    return FigSimpleMutexUnlock();
  }

  if (!a3)
  {
    goto LABEL_28;
  }

LABEL_11:
  v30 = a7;
  v31 = a6;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  for (i = 0; ; ++i)
  {
    Count = *(v16 + 2);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    FigCFArrayGetInt64AtIndex();
    SInt64 = FigCFNumberCreateSInt64();
    v21 = CFDictionaryGetValue(*(a1 + 192), SInt64);
    if (!v21)
    {
      goto LABEL_22;
    }

    v22 = v21;
    v23 = CFArrayGetCount(v21);
    if (v23 >= 1)
    {
      v24 = v23;
      v25 = FigCFNumberCreateSInt64();
      v32.location = 0;
      v32.length = v24;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v22, v32, v25);
      if (FirstIndexOfValue != -1)
      {
        CFArrayRemoveValueAtIndex(v22, FirstIndexOfValue);
      }

      if (v25)
      {
        CFRelease(v25);
      }
    }

    if (!CFArrayGetCount(v22))
    {
LABEL_22:
      CFDictionaryRemoveValue(*(a1 + 192), SInt64);
      FigCFArrayAppendInt64();
    }

    if (SInt64)
    {
      CFRelease(SInt64);
    }
  }

  *v30 = Mutable;
  *v31 = *(v16 + 1);
  *(v16 + 1) = 0;
  CFDictionaryRemoveValue(*(a1 + 176), a2);
  dispatch_group_leave(*(a1 + 184));
  return FigSimpleMutexUnlock();
}

uint64_t VTParavirtualizationHostEncoderSessionSetTileEncodeRequirements(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf[22] = *MEMORY[0x1E69E9840];
  v10 = 0;
  cf[0] = 0;
  v9 = 0;
  appended = VTParavirtualizationCopyFilteredPixelBufferAttributes(a2, &v9);
  if (appended || (appended = VTParavirtualizationCreateMessageAndByteStream(1413837682, 0, a1 + 120, 0, cf, &v10), appended) || v9 && (appended = VTParavirtualizationMessageAppendCFPropertyList(), appended) || a3 && (appended = VTParavirtualizationMessageAppendCFPropertyList(), appended))
  {
    v6 = appended;
  }

  else
  {
    v6 = vtParavirtualizationHostEncoderSession_sendMessageToGuest(a1, cf[0]);
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_9:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

void VTParavirtualizationHostEncoderSessionInvalidate(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 20));
  *(a1 + 16) = 1;
  os_unfair_lock_unlock((a1 + 20));
  v2 = *(a1 + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __VTParavirtualizationHostEncoderSessionInvalidate_block_invoke;
  block[3] = &__block_descriptor_tmp_6_0;
  block[4] = a1;
  dispatch_sync(v2, block);
}

uint64_t __VTParavirtualizationHostEncoderSessionInvalidate_block_invoke(uint64_t a1)
{
  result = VTVideoEncoderGetCMBaseObject(*(*(a1 + 32) + 24));
  if (result)
  {
    v2 = result;
    VTable = CMBaseObjectGetVTable();
    v4 = *(VTable + 8);
    result = VTable + 8;
    v5 = *(v4 + 24);
    if (v5)
    {

      return v5(v2);
    }
  }

  return result;
}

intptr_t VTParavirtualizationHostEncoderSessionCompleteInvalidate(intptr_t result)
{
  if (*(result + 160))
  {
    v1 = result;
    v2 = 2;
    do
    {
      v3 = *(v1 + 160);
      v4 = dispatch_time(0, 1000000000 * v2);
      v2 *= 2;
    }

    while (dispatch_group_wait(v3, v4));
    v5 = 2;
    do
    {
      v6 = *(v1 + 184);
      v7 = dispatch_time(0, 1000000000 * v5);
      result = dispatch_group_wait(v6, v7);
      v5 *= 2;
    }

    while (result);
  }

  return result;
}

uint64_t VTParavirtualizationHostEncoderSessionSetTimeRangesForNextPass(uint64_t a1, uint64_t a2, const UInt8 *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v13 = 0;
  cf = 0;
  v12 = 0;
  v5 = 48 * a2;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 48 * a2);
  appended = VTParavirtualizationCreateMessageAndByteStream(1165193331, 2, a1 + 120, 0, &cf, &v13);
  if (appended || (CFDataAppendBytes(Mutable, a3, v5), appended = VTParavirtualizationMessageAppendCFData(), appended) || (appended = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v12), appended))
  {
    v9 = appended;
LABEL_8:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v15;
  }

  if (v9)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v9;
}

uint64_t VTParavirtualizationHostEncoderSessionMultipassStorageSetIdentifier(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v8 = 0;
  cf = 0;
  v7 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1836086121, 2, a1 + 120, 0, &cf, &v8);
  if (appended || (appended = VTParavirtualizationMessageAppendCFPropertyList(), appended) || (appended = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v7), appended))
  {
    v4 = appended;
LABEL_8:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v10;
  }

  if (v4)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4;
}

CFTypeRef VTParavirtualizationHostEncoderSessionMultipassStorageCopyIdentifier(uint64_t a1)
{
  cf[24] = *MEMORY[0x1E69E9840];
  v6 = 0;
  cf[0] = 0;
  v4 = 0;
  v5 = 0;
  if (VTParavirtualizationCreateMessageAndByteStream(1836083556, 2, a1 + 120, 0, cf, &v6) || vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf[0], &kVTParavirtualizationDefaultReplyTimeout, &v5) || VTParavirtualizationMessageCopyCFPropertyList(v5, 745957732, &v4))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v4;
}

uint64_t VTParavirtualizationHostEncoderSessionMultipassStorageGetTimeStamp(uint64_t a1, CMTime *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v15 = 0;
  cf = 0;
  v14 = 0;
  v12 = *MEMORY[0x1E6960CC0];
  v13 = *(MEMORY[0x1E6960CC0] + 16);
  appended = VTParavirtualizationCreateMessageAndByteStream(1836086132, 2, a1 + 120, 0, &cf, &v15);
  if (appended || (time = *a2, appended = VTParavirtualizationMessageAppendCMTime(), appended) || (appended = VTParavirtualizationMessageAppendCFPropertyList(), appended) || (appended = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v14), appended) || (VTParavirtualizationMessageGetSInt32(), appended))
  {
    v8 = appended;
LABEL_11:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_12;
  }

  v8 = v17;
  if (v17)
  {
    goto LABEL_11;
  }

  CMTime = VTParavirtualizationMessageGetCMTime(v14, 745829232, &v12);
  v8 = CMTime;
  if (a4 && !CMTime)
  {
    *a4 = v12;
    *(a4 + 16) = v13;
    goto LABEL_12;
  }

  if (CMTime)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v8;
}

uint64_t VTParavirtualizationHostEncoderSessionMultipassStorageGetTimeStampAndDuration(uint64_t a1, CMTime *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v19 = 0;
  cf = 0;
  v18 = 0;
  v16 = *MEMORY[0x1E6960CC0];
  v17 = *(MEMORY[0x1E6960CC0] + 16);
  v14 = v16;
  v15 = v17;
  appended = VTParavirtualizationCreateMessageAndByteStream(1836082292, 2, a1 + 120, 0, &cf, &v19);
  if (appended)
  {
    goto LABEL_22;
  }

  time = *a2;
  appended = VTParavirtualizationMessageAppendCMTime();
  if (appended)
  {
    goto LABEL_22;
  }

  appended = VTParavirtualizationMessageAppendCFPropertyList();
  if (appended)
  {
    goto LABEL_22;
  }

  appended = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v18);
  if (appended)
  {
    goto LABEL_22;
  }

  VTParavirtualizationMessageGetSInt32();
  if (appended)
  {
    goto LABEL_22;
  }

  v10 = v21;
  if (v21)
  {
LABEL_14:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_15;
  }

  appended = VTParavirtualizationMessageGetCMTime(v18, 745829232, &v16);
  if (appended)
  {
LABEL_22:
    v10 = appended;
    goto LABEL_14;
  }

  if (a4)
  {
    *a4 = v16;
    *(a4 + 16) = v17;
  }

  CMTime = VTParavirtualizationMessageGetCMTime(v18, 744781170, &v14);
  v10 = CMTime;
  if (a5 && !CMTime)
  {
    *a5 = v14;
    *(a5 + 16) = v15;
    goto LABEL_15;
  }

  if (CMTime)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v10;
}

uint64_t VTParavirtualizationHostEncoderSessionMultipassStorageCopyDataAtTimeStamp(uint64_t a1, CMTime *a2, uint64_t a3, CFMutableDataRef *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v14 = 0;
  cf = 0;
  theData = 0;
  v13 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1836082020, 2, a1 + 120, 0, &cf, &v14);
  if (appended || (time = *a2, appended = VTParavirtualizationMessageAppendCMTime(), appended) || (appended = VTParavirtualizationMessageAppendSInt32(), appended) || (appended = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v13), appended) || (VTParavirtualizationMessageGetSInt32(), appended))
  {
    v8 = appended;
LABEL_11:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_12;
  }

  v8 = v16;
  if (v16)
  {
    goto LABEL_11;
  }

  v9 = VTParavirtualizationMessageCopyCFData(v13, 745369700, &theData);
  v8 = v9;
  if (a4 && !v9)
  {
    *a4 = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, theData);
    goto LABEL_12;
  }

  if (v9)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  return v8;
}

uint64_t VTParavirtualizationHostEncoderSessionMultipassStorageSetDataAtTimeStamp(uint64_t a1, CMTime *a2, uint64_t a3, const __CFData *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v14 = 0;
  cf = 0;
  v13 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1836086116, 2, a1 + 120, 0, &cf, &v14);
  if (appended)
  {
    goto LABEL_17;
  }

  time = *a2;
  appended = VTParavirtualizationMessageAppendCMTime();
  if (appended)
  {
    goto LABEL_17;
  }

  appended = VTParavirtualizationMessageAppendSInt32();
  if (appended)
  {
    goto LABEL_17;
  }

  if (a4)
  {
    LOBYTE(v17) = 0;
    appended = VTParavirtualizationMessageCFDataRequiresFragmentation(v14, 0x4000uLL, a4, &v17);
    if (appended)
    {
      goto LABEL_17;
    }

    if (v17)
    {
      time.value = 0;
      do
      {
        appended = VTParavirtualizationMessageAppendCFDataWithLimitFromOffset(v14, 745369700, 0x4000uLL, a4, &time.value);
        if (appended)
        {
          break;
        }

        value = time.value;
        if (value >= CFDataGetLength(a4))
        {
          goto LABEL_19;
        }

        appended = VTParavirtualizationMessageChangeMessageFlags(cf, 16, 18);
        if (appended)
        {
          break;
        }

        appended = vtParavirtualizationHostEncoderSession_sendMessageToGuest(a1, cf);
        if (appended)
        {
          break;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v14)
        {
          CFRelease(v14);
          v14 = 0;
        }

        appended = VTParavirtualizationCreateMessageAndByteStream(1836086116, 2, a1 + 120, 0, &cf, &v14);
      }

      while (!appended);
      goto LABEL_17;
    }

    appended = VTParavirtualizationMessageAppendCFData();
    if (appended)
    {
LABEL_17:
      v9 = appended;
LABEL_24:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_25;
    }
  }

LABEL_19:
  appended = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v13);
  if (appended)
  {
    goto LABEL_17;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v10)
  {
    v9 = v10;
  }

  else
  {
    v9 = v16;
  }

  if (v9)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v9;
}

uint64_t VTParavirtualizationHostEncoderSessionMultipassStorageInvalidate(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v8 = 0;
  cf = 0;
  v7 = 0;
  v2 = VTParavirtualizationCreateMessageAndByteStream(1836083566, 2, a1 + 120, 0, &cf, &v8);
  if (v2 || (v2 = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v7), v2))
  {
    v4 = v2;
LABEL_7:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_8;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v10;
  }

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4;
}

double vtParavirtualizationHostEncoderSession_Init(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void vtParavirtualizationHostEncoderSession_Finalize(uint64_t a1)
{
  if (dword_1EAD321C0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }

  VTEncoderSessionTeardown(a1 + 32);
  v4 = *(a1 + 96);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 96) = 0;
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 104) = 0;
  }

  _Block_release(*(a1 + 112));
  *(a1 + 112) = 0;
  v6 = *(a1 + 152);
  if (v6)
  {
    CFDictionaryRemoveAllValues(v6);
    v7 = *(a1 + 152);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 152) = 0;
    }
  }

  v8 = *(a1 + 176);
  if (v8)
  {
    CFDictionaryRemoveAllValues(v8);
    v9 = *(a1 + 176);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 176) = 0;
    }
  }

  FigSimpleMutexDestroy();
  *(a1 + 144) = 0;
  FigSimpleMutexDestroy();
  *(a1 + 168) = 0;
  v10 = *(a1 + 160);
  if (v10)
  {
    dispatch_release(v10);
    *(a1 + 160) = 0;
  }

  v11 = *(a1 + 184);
  if (v11)
  {
    dispatch_release(v11);
    *(a1 + 184) = 0;
  }

  v12 = *(a1 + 192);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 192) = 0;
  }

  v13 = *(a1 + 200);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 200) = 0;
  }

  v14 = *(a1 + 208);
  if (v14)
  {
    v14[3] = 0;
    CFRelease(v14);
    *(a1 + 208) = 0;
  }

  v15 = *(a1 + 216);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 216) = 0;
  }
}

__CFString *vtParavirtualizationHostEncoderSession_CopyDebugDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"VTParavirtualizationHostEncoderSession %p RC: %d encoder %p", a1, v4, a1[3]);
  return Mutable;
}

uint64_t vtParavirtualizationHostEncoderSession_isPropertyInDenyList(void *value)
{
  if (vtParavirtualizationHostEncoderSession_isPropertyInDenyList_onceToken != -1)
  {
    vtParavirtualizationHostEncoderSession_isPropertyInDenyList_cold_1();
  }

  v2 = vtParavirtualizationHostEncoderSession_isPropertyInDenyList_denyList;

  return CFSetContainsValue(v2, value);
}

uint64_t vtParavirtualizationHostEncoderSession_handleAnySpecialCaseSetPropertyAndCopyReplacementValue(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  if (vtParavirtualizationHostEncoderSession_getSpecialCaseHandlersForSettingProperties_sCreateDictionaryOnce != -1)
  {
    vtParavirtualizationHostEncoderSession_handleAnySpecialCaseSetPropertyAndCopyReplacementValue_cold_1();
  }

  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v8 = *(Value + 8);

    return v8(a1, a3, a4);
  }

  else
  {
    if (a3)
    {
      v10 = CFRetain(a3);
    }

    else
    {
      v10 = 0;
    }

    *a4 = v10;
    return 0;
  }
}

CFSetRef __vtParavirtualizationHostEncoderSession_isPropertyInDenyList_block_invoke()
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = @"Paravirtualized";
  result = CFSetCreate(*MEMORY[0x1E695E480], v1, 1, MEMORY[0x1E695E9F8]);
  vtParavirtualizationHostEncoderSession_isPropertyInDenyList_denyList = result;
  return result;
}

CFDictionaryRef __vtParavirtualizationHostEncoderSession_getSpecialCaseHandlersForSettingProperties_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  values = &_block_invoke_specialCasePropertyAndHandlerPairs;
  keys[0] = @"MultiPassStorage";
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], 0);
  vtParavirtualizationHostEncoderSession_getSpecialCaseHandlersForSettingProperties_sSpecialCaseHandlersForSettingProperties = result;
  return result;
}

uint64_t vtParavirtualizationHostEncoderSession_handleMultiPassStorageSetPropertyAndCopyReplacementValue(uint64_t a1, uint64_t a2, void *a3)
{
  if (*MEMORY[0x1E695E4D0] == a2)
  {
    v7 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    v9 = *(MEMORY[0x1E6960C98] + 16);
    *&v12.start.value = *MEMORY[0x1E6960C98];
    *&v12.start.epoch = v9;
    *&v12.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
    v6 = VTMultiPassStorageCreate(v7, 0, &v12, Mutable, (a1 + 208));
    if (!v6)
    {
      v10 = *(a1 + 208);
      if (v10)
      {
        v10 = CFRetain(v10);
      }

      *a3 = v10;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v5 = *(a1 + 208);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 208) = 0;
    }

    v6 = 0;
    *a3 = *MEMORY[0x1E695E738];
  }

  return v6;
}

CFMutableArrayRef *vtClonePendingFrameSurfaceStuff(uint64_t a1)
{
  v1 = MEMORY[0x193AE0CD0](a1, 32, 0x1020040D1034F40, 0);
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9C0];
  *v1 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v1[1] = CFArrayCreateMutable(v2, 0, v3);
  v1[2] = CFArrayCreateMutable(v2, 0, v3);
  return v1;
}

void vtFreePendingFrameSurfaceStuff(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
    *ptr = 0;
  }

  v4 = ptr[1];
  if (v4)
  {
    CFRelease(v4);
    ptr[1] = 0;
  }

  v5 = ptr[2];
  if (v5)
  {
    CFRelease(v5);
    ptr[2] = 0;
  }

  CFAllocatorDeallocate(allocator, ptr);
}

CFMutableArrayRef *vtClonePendingTileSurfaceStuff(uint64_t a1)
{
  v1 = MEMORY[0x193AE0CD0](a1, 32, 0x1020040D1034F40, 0);
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9C0];
  *v1 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v1[1] = CFArrayCreateMutable(v2, 0, v3);
  v1[2] = CFArrayCreateMutable(v2, 0, v3);
  return v1;
}

void vtFreePendingTileSurfaceStuff(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
    *ptr = 0;
  }

  v4 = ptr[1];
  if (v4)
  {
    CFRelease(v4);
    ptr[1] = 0;
  }

  v5 = ptr[2];
  if (v5)
  {
    CFRelease(v5);
    ptr[2] = 0;
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t vtParavirtualizationHostEncoderSession_callMessageToGuestHandler(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  os_unfair_lock_lock((a1 + 20));
  if (*(a1 + 16))
  {
    v6 = 1061109567;
    VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v6, 0, 0);
    v4 = 4294948198;
  }

  else
  {
    (*(*(a1 + 112) + 16))();
    v4 = 0;
  }

  os_unfair_lock_unlock((a1 + 20));
  return v4;
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return VTParavirtualizationMessageAppendSInt32();
}

uint64_t VTRegisterVideoEncoderWithInfo(unsigned int a1, const __CFDictionary *a2, uint64_t a3)
{
  valuePtr = 0;
  MEMORY[0x193AE3010](&sCreateVideoEncoderRegistryOnce, vtCreateVideoEncoderRegistry);
  v6 = *MEMORY[0x1E695E480];
  if (a2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
    if (MutableCopy)
    {
      v8 = MutableCopy;
      Value = CFDictionaryGetValue(MutableCopy, @"CMClassImplementationID");
      goto LABEL_6;
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v8 = Mutable;
      Value = 0;
LABEL_6:
      *bytes = bswap32(a1);
      v11 = CFStringCreateWithBytes(v6, bytes, 4, 0x600u, 0);
      if (v11)
      {
        v12 = v11;
        CFDictionarySetValue(v8, @"VTCodecType", v11);
        v13 = CFStringCreateWithFormat(v6, 0, @"Dynamically Registered %@ Video Encoder", v12);
        v14 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
        if (v14)
        {
          CFDictionaryAddValue(v8, @"VTRating", v14);
          CFDictionarySetValue(v8, @"VTAllowSandboxedEncode", *MEMORY[0x1E695E4C0]);
          v15 = vtRegisterVideoEncoderInternal(v12, v13, Value, v8, a3, 0);
        }

        else
        {
          fig_log_get_emitter();
          v15 = FigSignalErrorAtGM();
        }

        v16 = v15;
        CFRelease(v8);
        CFRelease(v12);
        if (v13)
        {
          CFRelease(v13);
        }

        if (!v14)
        {
          return v16;
        }

        v17 = v14;
      }

      else
      {
        fig_log_get_emitter();
        v16 = FigSignalErrorAtGM();
        v17 = v8;
      }

      CFRelease(v17);
      return v16;
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtPopulateVideoEncoderRegistry()
{
  MEMORY[0x193AE3010](&sInitializeVideoEncoderRegistryOnce, vtInitializeVideoEncoderRegistry);
  FigSimpleMutexLock();
  if (_MergedGlobals_9 == 1)
  {
    vtLoadParavirtualizedVideoEncoders();
    _MergedGlobals_9 = 0;
  }

  return FigSimpleMutexUnlock();
}

uint64_t VTSelectAndCreateVideoEncoderInstanceInternal(unsigned int a1, uint64_t a2, int a3, CFTypeRef cf, CFIndex a5, void *a6, _BYTE *a7, CFIndex *a8, void *a9)
{
  v67 = 0;
  v68 = 0;
  v65 = 0;
  theDict = 0;
  if (cf)
  {
    v12 = CFRetain(cf);
    v13 = v12;
    if (v12)
    {
      Value = CFDictionaryGetValue(v12, @"EncoderID");
      v15 = *MEMORY[0x1E695E4D0];
      if (v15 != CFDictionaryGetValue(v13, @"RequiredLowLatency"))
      {
        CFDictionaryGetValue(v13, @"EnableLowLatencyRateControl");
      }

      LODWORD(v16) = 1;
      goto LABEL_9;
    }

    LODWORD(v16) = 0;
  }

  else
  {
    LODWORD(v16) = 0;
    v13 = 0;
  }

  Value = 0;
LABEL_9:
  vtPopulateVideoEncoderRegistry();
  v57 = v16;
  if (!sVideoEncoderRegistry)
  {
    fig_log_get_emitter();
    v21 = FigSignalErrorAtGM();
    v18 = 0;
    goto LABEL_35;
  }

  v62 = 0;
  v63 = 0;
  v64 = 0;
  if (v16)
  {
    v16 = *MEMORY[0x1E695E4D0];
    LOBYTE(v16) = v16 == CFDictionaryGetValue(v13, @"RequireHardwareAcceleratedVideoEncoder");
  }

  *bytes = bswap32(a1);
  allocator = *MEMORY[0x1E695E480];
  v17 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, 4, 0x600u, 0);
  v18 = v17;
  if (!v17)
  {
    VTSelectAndCreateVideoEncoderInstanceInternal_cold_1(v70);
    v21 = LODWORD(v70[0]);
    goto LABEL_79;
  }

  v62 = v17;
  v63 = v13;
  LOBYTE(v64) = v16;
  BYTE1(v64) = 1;
  v19 = FigRegistryCopyFilteredItemList();
  if (v19)
  {
    goto LABEL_14;
  }

  BYTE1(v64) = 0;
  v40 = vtCopyExpandedEncoderListForWrappers(v68, &v62, &v67);
  if (v40)
  {
    v21 = v40;
    goto LABEL_79;
  }

  v20 = v67;
  if (!v67)
  {
LABEL_14:
    v20 = v68;
  }

  else
  {
    if (v68)
    {
      CFRelease(v68);
      v20 = v67;
    }

    v67 = 0;
    v68 = v20;
  }

  v21 = 4294954388;
  if (!v20)
  {
    goto LABEL_35;
  }

  Count = CFArrayGetCount(v20);
  v21 = Count ? v19 : 4294954388;
  if (!Count || v19)
  {
    goto LABEL_35;
  }

  if (!Value)
  {
    goto LABEL_120;
  }

  v52 = v18;
  v23 = v68;
  v69 = 0;
  v70[0] = 0;
  v24 = CFArrayGetCount(v68);
  key = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (v24 < 1)
  {
LABEL_108:
    v21 = 0;
    v67 = key;
    v41 = 0;
    goto LABEL_109;
  }

  v25 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v23, v25);
    if (!ValueAtIndex)
    {
      goto LABEL_32;
    }

    v27 = ValueAtIndex;
    v28 = FigRegistryItemCopyDescription();
    if (v28)
    {
      break;
    }

    v28 = FigRegistryItemCopyMatchingInfo();
    if (v28)
    {
      break;
    }

    CFDictionaryGetValue(v70[0], @"CMClassImplementationID");
    if (FigCFEqual())
    {
      CFArrayAppendValue(key, v27);
      goto LABEL_108;
    }

    if (v70[0])
    {
      CFRelease(v70[0]);
      v70[0] = 0;
    }

    if (v69)
    {
      CFRelease(v69);
      v69 = 0;
    }

LABEL_32:
    if (v24 == ++v25)
    {
      goto LABEL_108;
    }
  }

  v21 = v28;
  v41 = key;
LABEL_109:
  v18 = v52;
  if (v70[0])
  {
    CFRelease(v70[0]);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v21)
  {
    goto LABEL_79;
  }

  if (v68)
  {
    CFRelease(v68);
  }

  v42 = v67;
  v67 = 0;
  v68 = v42;
  if (v42 && CFArrayGetCount(v42))
  {
LABEL_120:
    v43 = CFArrayGetCount(v68);
    MutableCopy = CFArrayCreateMutableCopy(allocator, v43, v68);
    if (MutableCopy)
    {
      v45 = MutableCopy;
      v71.length = CFArrayGetCount(MutableCopy);
      v71.location = 0;
      CFArraySortValues(v45, v71, vtSortRegistryItemsByVideoEncoderRating, v13);
      CFRelease(v68);
      v21 = 0;
      v68 = v45;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 4294954388;
  }

LABEL_35:
  if (a7)
  {
    *a7 = 0;
  }

  if (!a6)
  {
LABEL_79:
    Mutable = 0;
    goto LABEL_80;
  }

  v55 = a8;
  if (v68)
  {
    v29 = CFArrayGetCount(v68);
  }

  else
  {
    v29 = 0;
  }

  if (v29 <= a5)
  {
    v30 = -12908;
  }

  else
  {
    v30 = v21;
  }

  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v29 == 0;
  }

  if (v31)
  {
    v21 = 4294954388;
  }

  else
  {
    v21 = v30;
  }

  if (v21)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    goto LABEL_79;
  }

  if (v29 <= a5)
  {
    Mutable = 0;
    goto LABEL_94;
  }

  Mutable = 0;
  v33 = *MEMORY[0x1E695E4D0];
  v53 = *MEMORY[0x1E695E480];
  while (2)
  {
    v62 = 0;
    v70[0] = 0;
    CFArrayGetValueAtIndex(v68, a5);
    FigRegistryItemCopyMatchingInfo();
    FigRegistryItemCopyDescription();
    if (!theDict)
    {
      v34 = 0;
LABEL_63:
      if (!FigRegistryItemGetFactory())
      {
        goto LABEL_65;
      }

      v62 = 0;
      goto LABEL_67;
    }

    v34 = CFDictionaryGetValue(theDict, @"CMClassImplementationID");
    if (!theDict || v33 != CFDictionaryGetValue(theDict, @"VTFactoryFunctionHasSpecificationArgument"))
    {
      goto LABEL_63;
    }

    if (FigRegistryItemGetFactory())
    {
      v70[0] = 0;
    }

    if (v65)
    {
      v35 = CFDictionaryGetValue(v65, @"VTHostEncoderID");
      if (v35)
      {
        v36 = v35;
        Mutable = CFDictionaryCreateMutable(v53, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"VTHostEncoderID", v36);
      }
    }

LABEL_65:
    if (v62)
    {
      v37 = v62(a1, a2, a6);
      goto LABEL_70;
    }

LABEL_67:
    if (v70[0])
    {
      v37 = (v70[0])(a1, v34, Mutable, a2, a6);
    }

    else
    {
      fig_log_get_emitter();
      v37 = FigSignalErrorAtGM();
    }

LABEL_70:
    v21 = v37;
    if (v37 || !*a6 && (fig_log_get_emitter(), v21 = FigSignalErrorAtGM(), v21))
    {
      if (theDict)
      {
        CFRelease(theDict);
        theDict = 0;
      }

      if (v65)
      {
        CFRelease(v65);
        v65 = 0;
      }

      if (v29 == ++a5)
      {
        goto LABEL_80;
      }

      continue;
    }

    break;
  }

  if (v55)
  {
    *v55 = a5;
  }

  if (a9 && theDict)
  {
    CFDictionaryGetValue(theDict, @"CMClassImplementationName");
    if (v34)
    {
      v39 = CFRetain(v34);
    }

    else
    {
      v39 = 0;
    }

    *a9 = v39;
  }

  if (!v65)
  {
    goto LABEL_94;
  }

  v46 = v57 ^ 1;
  if (!*a6)
  {
    v46 = 1;
  }

  if ((v46 & 1) == 0 && CFDictionaryGetValue(v65, @"VTWrappedEncoderID"))
  {
    v47 = FigCFDictionaryCreateMutableCopy();
    if (v47)
    {
      v48 = v47;
      CFDictionaryRemoveValue(v47, @"EncoderID");
      v49 = CFDictionaryGetValue(v65, @"VTWrappedEncoderID");
      if (v49)
      {
        CFDictionarySetValue(v48, @"EncoderID", v49);
        CMBaseObject = VTVideoEncoderGetCMBaseObject(*a6);
        v51 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v51)
        {
          v51(CMBaseObject, @"SublayerEncoderSpecification", v48);
        }

        CFRelease(v48);
        goto LABEL_94;
      }

      VTSelectAndCreateVideoEncoderInstanceInternal_cold_2(&v69);
    }

    else
    {
      VTSelectAndCreateVideoEncoderInstanceInternal_cold_3(&v69);
    }

    v21 = v69;
  }

  else
  {
LABEL_94:
    v21 = 0;
  }

LABEL_80:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v21;
}

uint64_t VTCreateVideoEncoderInstanceFromEncoderID(const void *a1, uint64_t a2, CFTypeRef *a3)
{
  listOfVideoEncodersOut = 0;
  v17 = 0;
  cf = 0;
  if (!a1)
  {
    VTCreateVideoEncoderInstanceFromEncoderID_cold_1(&v19);
    v14 = v19;
    goto LABEL_16;
  }

  v5 = VTCopyVideoEncoderList(0, &listOfVideoEncodersOut);
  v6 = listOfVideoEncodersOut;
  if (!v5)
  {
    if (CFArrayGetCount(listOfVideoEncodersOut) >= 1)
    {
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
        Value = CFDictionaryGetValue(ValueAtIndex, @"EncoderID");
        if (Value && CFEqual(Value, a1) && FigCFDictionaryGetInt32IfPresent())
        {
          break;
        }

        ++v7;
      }

      while (v7 < CFArrayGetCount(v6));
    }

    v10 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"EncoderID", a1);
    v13 = VTSelectAndCreateVideoEncoderInstanceInternal(v17, v10, v12, Mutable, 0, &cf, 0, 0, 0);
    v14 = v13;
    if (a3 && !v13)
    {
      *a3 = cf;
      cf = 0;
    }

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v14 = v5;
  Mutable = 0;
  if (listOfVideoEncodersOut)
  {
LABEL_13:
    CFRelease(v6);
  }

LABEL_14:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

OSStatus VTCopyVideoEncoderList(CFDictionaryRef options, CFArrayRef *listOfVideoEncodersOut)
{
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  vtPopulateVideoEncoderRegistry();
  if (!sVideoEncoderRegistry)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  v4 = FigRegistryCopyFilteredItemList();
  if (v4)
  {
    v49 = v4;
    Mutable = 0;
LABEL_107:
    v13 = 0;
    v14 = 0;
    goto LABEL_86;
  }

  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  value = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, @"EnableHardwareAcceleratedVideoEncoder", *MEMORY[0x1E695E4D0]);
  if (VTParavirtualizationIsRunningInGuest())
  {
    BYTE2(v67) = 1;
  }

  v66 = Mutable;
  v7 = vtCopyExpandedEncoderListForWrappers(v68, &v65, &v64);
  if (v7)
  {
    v49 = v7;
    goto LABEL_107;
  }

  v8 = v68;
  v55 = listOfVideoEncodersOut;
  v56 = Mutable;
  if (v64)
  {
    if (v68)
    {
      CFRelease(v68);
    }

    v8 = v64;
    v68 = v64;
    v64 = 0;
  }

  Count = CFArrayGetCount(v8);
  theArray = CFArrayCreateMutable(v5, Count, MEMORY[0x1E695E9C0]);
  v11 = MEMORY[0x1E695E9F8];
  cf = CFSetCreateMutable(v5, Count, MEMORY[0x1E695E9F8]);
  v59 = CFSetCreateMutable(v5, Count, v11);
  if (Count < 1)
  {
LABEL_85:
    v71.length = CFArrayGetCount(theArray);
    v71.location = 0;
    CFArraySortValues(theArray, v71, vtCompareCodecNameThenEncoderName, 0);
    v49 = 0;
    *v55 = theArray;
    Mutable = v56;
    v13 = cf;
    v14 = v59;
    goto LABEL_86;
  }

  v12 = 0;
  v13 = cf;
  v14 = v59;
  do
  {
    CFArrayGetValueAtIndex(v68, v12);
    v15 = FigRegistryItemCopyMatchingInfo();
    if (v15)
    {
      v49 = v15;
      Mutable = v56;
      goto LABEL_103;
    }

    if (!vtShouldSkipEncoder(options, v62))
    {
      v16 = CFDictionaryGetValue(v62, @"VTCodecType");
      if (v16)
      {
        v17 = v16;
        TypeID = CFStringGetTypeID();
        if (TypeID == CFGetTypeID(v17))
        {
          if (CFSetContainsValue(cf, v17))
          {
            v19 = v59;
          }

          else
          {
            v19 = cf;
          }

          CFSetAddValue(v19, v17);
        }
      }
    }

    ++v12;
  }

  while (Count != v12);
  v20 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(v68, v20);
    valuePtr = 0;
    v21 = FigRegistryItemCopyDescription();
    if (v21)
    {
      break;
    }

    v21 = FigRegistryItemCopyMatchingInfo();
    if (v21)
    {
      break;
    }

    v21 = FigRegistryItemCopyBundle();
    if (v21)
    {
      break;
    }

    if (!vtShouldSkipEncoder(options, v62))
    {
      v25 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v26 = CFDictionaryGetValue(v62, @"VTCodecType");
      if (!v26 || (v27 = v26, v28 = CFStringGetTypeID(), v28 != CFGetTypeID(v27)))
      {
        v24 = 0;
        goto LABEL_41;
      }

      CFStringGetCString(v27, buffer, 5, 0x600u);
      valuePtr = bswap32(*buffer);
      v24 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(v25, @"CodecType", v24);
      v22 = CFDictionaryGetValue(v63, @"CMClassImplementationID");
      if (v22)
      {
        v29 = CFStringGetTypeID();
        if (v29 != CFGetTypeID(v22))
        {
          goto LABEL_41;
        }

        CFDictionarySetValue(v25, @"EncoderID", v22);
        v22 = CFDictionaryGetValue(v63, @"VTCodecName");
        if (v22)
        {
          v30 = CFStringGetTypeID();
          if (v30 == CFGetTypeID(v22))
          {
            if (v61)
            {
              v31 = CFBundleCopyLocalizedString(v61, v22, 0, 0);
              v23 = v31;
              if (v31)
              {
                v22 = v31;
              }
            }

            else
            {
              v23 = 0;
            }

            if (FigCFEqual())
            {
              v22 = @"H.265";
            }

            CFDictionarySetValue(v25, @"CodecName", v22);
            v32 = CFDictionaryGetValue(v63, @"VTEncoderName");
            if (v32)
            {
              v50 = v22;
              v51 = v32;
              v53 = CFStringGetTypeID();
              if (v53 == CFGetTypeID(v51))
              {
                v33 = v51;
                if (v61)
                {
                  v34 = CFBundleCopyLocalizedString(v61, v51, 0, 0);
                  v33 = v51;
                  v22 = v34;
                  if (v34)
                  {
                    v33 = v34;
                  }
                }

                else
                {
                  v22 = 0;
                }

                v52 = v33;
                CFDictionarySetValue(v25, @"EncoderName", v33);
                if (CFSetContainsValue(v59, v27))
                {
                  v35 = v25;
                  v36 = v52;
                }

                else
                {
                  v35 = v25;
                  v36 = v50;
                }

                CFDictionarySetValue(v35, @"DisplayName", v36);
                matched = copyObjectForKeyFromMatchInfoOrIORegistry(v62, @"VTRating");
                if (matched)
                {
                  v38 = matched;
                  CFDictionarySetValue(v25, @"PerformanceRating", matched);
                  CFRelease(v38);
                }

                v39 = copyObjectForKeyFromMatchInfoOrIORegistry(v62, @"VTQualityRating");
                if (v39)
                {
                  v40 = v39;
                  CFDictionarySetValue(v25, @"QualityRating", v39);
                  CFRelease(v40);
                }

                v41 = copyObjectForKeyFromMatchInfoOrIORegistry(v62, @"VTInstanceLimit");
                if (v41)
                {
                  v42 = v41;
                  CFDictionarySetValue(v25, @"InstanceLimit", value);
                  CFRelease(v42);
                }

                v43 = copyObjectForKeyFromMatchInfoOrIORegistry(v62, @"VTIsHardwareAccelerated");
                if (v43)
                {
                  v44 = v43;
                  CFDictionarySetValue(v25, @"IsHardwareAccelerated", v43);
                  CFRelease(v44);
                }

                InferredPropertiesForCodec = createInferredPropertiesForCodec(v62);
                if (InferredPropertiesForCodec)
                {
                  v46 = InferredPropertiesForCodec;
                  CFDictionarySetValue(v25, @"SupportedSelectionProperties", InferredPropertiesForCodec);
                  CFRelease(v46);
                }

                v47 = copyObjectForKeyFromMatchInfoOrIORegistry(v62, @"VTSupportsMultiPass");
                if (v47)
                {
                  v48 = v47;
                  CFDictionarySetValue(v25, @"SupportsMultiPass", value);
                  CFRelease(v48);
                }

                CFArrayAppendValue(theArray, v25);
                goto LABEL_43;
              }
            }

LABEL_42:
            v22 = 0;
LABEL_43:
            if (v25)
            {
              CFRelease(v25);
            }

            goto LABEL_45;
          }

LABEL_41:
          v23 = 0;
          goto LABEL_42;
        }
      }

      v23 = 0;
      goto LABEL_43;
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
LABEL_45:
    if (v62)
    {
      CFRelease(v62);
      v62 = 0;
    }

    if (v24)
    {
      CFRelease(v24);
    }

    if (v63)
    {
      CFRelease(v63);
      v63 = 0;
    }

    if (v61)
    {
      CFRelease(v61);
      v61 = 0;
    }

    if (v23)
    {
      CFRelease(v23);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (Count == ++v20)
    {
      goto LABEL_85;
    }
  }

  v49 = v21;
  Mutable = v56;
  v13 = cf;
  v14 = v59;
LABEL_103:
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_86:
  if (v68)
  {
    CFRelease(v68);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  return v49;
}

BOOL vtShouldSkipEncoder(const __CFDictionary *a1, CFDictionaryRef theDict)
{
  v4 = *MEMORY[0x1E695E4D0];
  if (v4 == CFDictionaryGetValue(theDict, @"Hide"))
  {
    if (a1 && v4 == CFDictionaryGetValue(a1, @"RevealHiddenEncoders"))
    {
      return 0;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (v4 == CFDictionaryGetValue(theDict, @"DVFamily"))
  {
    return !a1 || v4 != CFDictionaryGetValue(a1, @"IncludeStandardDefinitionDVEncoders");
  }

  return v5;
}

const void *copyObjectForKeyFromMatchInfoOrIORegistry(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v3;
}

CFComparisonResult vtCompareCodecNameThenEncoderName(const __CFDictionary *a1, const __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(a1, @"CodecName");
  v5 = CFDictionaryGetValue(a2, @"CodecName");
  result = CFStringCompare(Value, v5, 0);
  if (result == kCFCompareEqualTo)
  {
    v7 = CFDictionaryGetValue(a1, @"EncoderName");
    v8 = CFDictionaryGetValue(a2, @"EncoderName");

    return CFStringCompare(v7, v8, 0);
  }

  return result;
}

void vtInitializeVideoEncoderRegistry()
{
  if (qword_1ED6D40D0 != -1)
  {
    vtInitializeVideoEncoderRegistry_cold_1();
  }

  v0 = byte_1ED6D40C9;
  sVideoEncoderRegistryMutex = FigSimpleMutexCreate();
  MEMORY[0x193AE3010](&sCreateVideoEncoderRegistryOnce, vtCreateVideoEncoderRegistry);
  vtRegisterVideoEncoderWithInfoKeysAndValues(0x6D757861u, v1, @"Muxed Alpha", @"Apple Muxed Alpha", @"com.apple.videotoolbox.videoencoder.hevc-with-alpha", 48, @"hvc1", MuxedAlphaEncoder_CreateInstance, 0);
  vtRegisterVideoEncoderWithInfoKeysAndValues(0x64697368u, v2, @"Disparity", @"Apple Disparity (HEVC)", @"com.apple.videotoolbox.videoencoder.disparity-hevc", 16, @"hvc1", DepthWrapperEncoder_CreateInstance, 0);
  vtRegisterVideoEncoderWithInfoKeysAndValues(0x64657068u, v3, @"Depth", @"Apple Depth (HEVC)", @"com.apple.videotoolbox.videoencoder.depth-hevc", 16, @"hvc1", DepthWrapperEncoder_CreateInstance, 0);
  if (os_variant_has_internal_content())
  {
    vtRegisterVideoEncoderWithInfoKeysAndValues(0x69706220u, v4, @"Test IPB", @"Apple Test IPB", @"com.apple.videotoolbox.videoencoder.testipb", 4, 0, TestIPBVideoEncoder_CreateInstance, 0);
  }

  if (v0)
  {
    VTLoadVideoEncodersPreferringInternalBundles();
  }

  else
  {
    VTLoadVideoEncoders();
  }

  vtLoadParavirtualizedVideoEncoders();
}

uint64_t vtGetPreferInternalEncoders(_BYTE *a1)
{
  result = FigGetCFPreferenceNumberWithDefault();
  *a1 = result;
  return result;
}

uint64_t vtRegisterVideoEncoderWithInfoKeysAndValuesInternal(unsigned int *a1, int a2, const void *a3, const void *a4, const void *a5, __int16 a6, const void *a7, uint64_t a8, uint64_t a9, const void **a10)
{
  valuePtr = a2;
  v16 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v18 = Mutable;
    *bytes = bswap32(*a1);
    v19 = CFStringCreateWithBytes(v16, bytes, 4, 0x600u, 0);
    if (!v19)
    {
      v20 = 0;
      goto LABEL_27;
    }

    v33 = a5;
    CFDictionarySetValue(v18, @"VTCodecType", v19);
    v20 = CFNumberCreate(v16, kCFNumberSInt32Type, &valuePtr);
    if (!v20)
    {
LABEL_27:
      fig_log_get_emitter();
      v24 = FigSignalErrorAtGM();
LABEL_28:
      CFRelease(v18);
      if (v19)
      {
        CFRelease(v19);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      return v24;
    }

    CFDictionarySetValue(v18, @"VTRating", v20);
    if ((a6 & 2) != 0)
    {
      CFDictionarySetValue(v18, @"VTIsHardwareAccelerated", *MEMORY[0x1E695E4D0]);
      if ((a6 & 4) == 0)
      {
LABEL_6:
        if ((a6 & 0x80) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    else if ((a6 & 4) == 0)
    {
      goto LABEL_6;
    }

    CFDictionarySetValue(v18, @"Hide", *MEMORY[0x1E695E4D0]);
    if ((a6 & 0x80) == 0)
    {
LABEL_8:
      v32 = a8;
      if ((a6 & 8) != 0)
      {
        CFDictionarySetValue(v18, @"VTAllowSandboxedEncode", *MEMORY[0x1E695E4C0]);
      }

      if ((a6 & 0x10) != 0)
      {
        v21 = *MEMORY[0x1E695E4D0];
        CFDictionarySetValue(v18, @"VTIsWrapperEncoder", *MEMORY[0x1E695E4D0]);
        if (a7)
        {
          CFDictionarySetValue(v18, @"VTWrapsCodecType", a7);
        }

        if ((a6 & 0x20) != 0)
        {
          FigCFDictionarySetInt32();
        }

        if ((a6 & 0x100) != 0)
        {
          CFDictionarySetValue(v18, @"VTWrapsSoftwareCodecOnly", v21);
        }
      }

      if ((a6 & 0x40) != 0)
      {
        CFDictionarySetValue(v18, @"VTSupportsMultiPass", *MEMORY[0x1E695E4D0]);
      }

      if ((a6 & 0x200) != 0)
      {
        CFDictionarySetValue(v18, @"VTIsParavirtualized", *MEMORY[0x1E695E4D0]);
      }

      v22 = CFDictionaryCreateMutable(v16, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v22)
      {
        v25 = v22;
        v38 = a10 + 1;
        v27 = *a10;
        if (*a10)
        {
          do
          {
            v28 = v38;
            v39 = v38 + 1;
            v29 = *v28;
            if (!*v28)
            {
              break;
            }

            v30 = CFEqual(v27, @"VTHostEncoderID") ? v18 : v25;
            CFDictionarySetValue(v30, v27, v29);
            v31 = v39;
            v38 = v39 + 1;
            v27 = *v31;
          }

          while (*v31);
        }

        if (CFDictionaryGetCount(v25) >= 1)
        {
          CFDictionarySetValue(v18, @"VTRequiredSpecificationEntries", v25);
        }

        v24 = vtRegisterVideoEncoderInternal(a3, a4, v33, v18, v32, a9);
        CFRelease(v18);
        v18 = v25;
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_7:
    CFDictionarySetValue(v18, @"DVFamily", *MEMORY[0x1E695E4D0]);
    goto LABEL_8;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void __vtLoadParavirtualizedVideoEncoders_block_invoke()
{
  v0 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  xmmword_1ED6D40E0 = CFUUIDGetUUIDBytes(v0);
  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t vtUnregisterParavirtualizedVideoEncoders()
{
  if (sVideoEncoderRegistry)
  {
    v0 = FigRegistryCopyFilteredItemList();
    if (v0)
    {
      return v0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t vtCheckRequiredVideoEncoderSpecificationKey(const void *a1, const void *a2, uint64_t a3)
{
  result = FigCFEqual();
  if (!result)
  {
    result = *a3;
    if (!*a3 || (result = CFDictionaryGetValue(result, a1), !a2) || !result || (result = CFEqual(result, a2), !result))
    {
      *(a3 + 8) = 0;
    }
  }

  return result;
}

void *vtCreateDecoderCapabilitiesDictionary(int a1, char a2)
{
  v82 = *MEMORY[0x1E69E9840];
  matched = VTCopyVideoDecoderRegistryMatchArrayForCodecType(a1);
  IsHardwareCodecAvailable = vtIsHardwareCodecAvailable(a1, matched);
  if (a2)
  {
    goto LABEL_57;
  }

  v6 = IsHardwareCodecAvailable;
  IsRunningInGuest = VTParavirtualizationIsRunningInGuest();
  if (!v6 || !IsRunningInGuest)
  {
    goto LABEL_57;
  }

  v8 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  *&v68.byte0 = 0;
  *&v68.byte8 = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  cf = 0;
  v64 = 0;
  if (v8)
  {
    v9 = v8;
    v68 = CFUUIDGetUUIDBytes(v8);
    appended = VTParavirtualizationGuestInstallHandlerForUUID(&v68, &__block_literal_global_21, 0);
    if (appended || (appended = VTParavirtualizationCreateMessageAndByteStream(1684234608, 1, &v68, 0, &v66, &v65)) != 0 || (appended = VTParavirtualizationMessageAppendUInt32()) != 0 || (appended = VTParavirtualizationMessageAppendSInt32()) != 0 || (*value = kVTParavirtualizationDefaultReplyTimeout, v81 = 0, (appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(v66, value, &v64)) != 0) || (appended = VTParavirtualizationMessageCopyCFPropertyList(v64, 744776545, &cf)) != 0)
    {
      v13 = appended;
      Mutable = 0;
    }

    else
    {
      if (cf)
      {
        v11 = CFGetTypeID(cf);
        if (v11 != CFDictionaryGetTypeID())
        {
          vtCreateDecoderCapabilitiesDictionary_cold_1(value);
          Mutable = 0;
          v13 = value[0];
          goto LABEL_16;
        }
      }

      else
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      Mutable = cf;
      cf = 0;
      VTParavirtualizationMessageGetUInt32();
      v13 = v15;
    }

LABEL_16:
    VTParavirtualizationGuestRemoveHandlerForUUID(&v68);
    CFRelease(v9);
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_18;
  }

  vtCreateDecoderCapabilitiesDictionary_cold_2(&v68, value);
  Mutable = 0;
  v13 = value[0];
LABEL_18:
  if (v66)
  {
    CFRelease(v66);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (!v13)
  {
    goto LABEL_104;
  }

  *&v68.byte0 = 0;
  LOBYTE(v66) = 0;
  v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v17 = *&v68.byte0;
  if (os_log_type_enabled(v16, v66))
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 & 0xFFFFFFFE;
  }

  if (v18)
  {
    if (a1 < 0)
    {
      v19 = __maskrune(HIBYTE(a1), 0x40000uLL);
    }

    else
    {
      v19 = *(MEMORY[0x1E69E9830] + 4 * HIBYTE(a1) + 60) & 0x40000;
    }

    if (v19)
    {
      v20 = HIBYTE(a1);
    }

    else
    {
      v20 = 46;
    }

    theDict = v20;
    if (BYTE2(a1) > 0x7Fu)
    {
      v21 = __maskrune(BYTE2(a1), 0x40000uLL);
    }

    else
    {
      v21 = *(MEMORY[0x1E69E9830] + 4 * BYTE2(a1) + 60) & 0x40000;
    }

    if (v21)
    {
      v22 = BYTE2(a1);
    }

    else
    {
      v22 = 46;
    }

    if (BYTE1(a1) > 0x7Fu)
    {
      v23 = __maskrune(BYTE1(a1), 0x40000uLL);
    }

    else
    {
      v23 = *(MEMORY[0x1E69E9830] + 4 * BYTE1(a1) + 60) & 0x40000;
    }

    if (v23)
    {
      v24 = BYTE1(a1);
    }

    else
    {
      v24 = 46;
    }

    if (a1 > 0x7Fu)
    {
      v25 = __maskrune(a1, 0x40000uLL);
    }

    else
    {
      v25 = *(MEMORY[0x1E69E9830] + 4 * a1 + 60) & 0x40000;
    }

    *&v69[4] = "vtCreateDecoderCapabilitiesDictionary";
    *v69 = 136316418;
    if (v25)
    {
      v26 = a1;
    }

    else
    {
      v26 = 46;
    }

    v70 = 1024;
    v71 = theDict;
    v72 = 1024;
    v73 = v22;
    v74 = 1024;
    v75 = v24;
    v76 = 1024;
    v77 = v26;
    v78 = 1024;
    v79 = v13;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_57:
  Mutable = 0;
  if (a1 > 1634759271)
  {
    if (a1 <= 1635135536)
    {
      if (a1 == 1634759272)
      {
        goto LABEL_86;
      }

      v27 = 29294;
      goto LABEL_85;
    }

    if (a1 > 1685481520)
    {
      if (a1 == 1987063865)
      {
        value[0] = 0;
        *v69 = 0;
        if (!VTIsHardwareDecodeSupported(0x76703039u))
        {
          goto LABEL_103;
        }

        v28 = *MEMORY[0x1E695E480];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v29 = CFDictionaryCreateMutable(v28, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v29)
          {
            CFDictionarySetValue(Mutable, @"VTPerProfileSupport", v29);
            v30 = CFArrayCreateMutable(v28, 0, MEMORY[0x1E695E9C0]);
            if (v30)
            {
              FigCFArrayAppendInt();
              FigCFArrayAppendInt();
              CFDictionarySetValue(Mutable, @"VTSupportedProfiles", v30);
              ProfileSupportEntryDictionaryForVP9Embedded = vtCreateProfileSupportEntryDictionaryForVP9Embedded(value);
              if (ProfileSupportEntryDictionaryForVP9Embedded)
              {
                v32 = ProfileSupportEntryDictionaryForVP9Embedded;
              }

              else
              {
                v32 = vtCreateProfileSupportEntryDictionaryForVP9Embedded(v69);
                if (!v32)
                {
                  CFDictionarySetValue(v29, @"0", value[0]);
                  CFDictionarySetValue(v29, @"2", *v69);
                }
              }
            }

            else
            {
              v32 = 0;
            }

LABEL_72:
            if (value[0])
            {
              CFRelease(value[0]);
            }

            if (*v69)
            {
              CFRelease(*v69);
            }

            if (v29)
            {
              CFRelease(v29);
            }

            if (v30)
            {
              CFRelease(v30);
            }

            if (Mutable && v32)
            {
              goto LABEL_102;
            }

            goto LABEL_104;
          }

          vtCreateDecoderCapabilitiesDictionary_cold_4(&v68);
          v30 = 0;
        }

        else
        {
          vtCreateDecoderCapabilitiesDictionary_cold_5(&v68);
          v30 = 0;
          v29 = 0;
        }

        v32 = *&v68.byte0;
        goto LABEL_72;
      }

      if (a1 == 1685481521)
      {
        v59 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!v59)
        {
          vtCreateDecoderCapabilitiesDictionary_cold_8();
          goto LABEL_103;
        }

        vtCreateDecoderCapabilitiesDictionary_cold_7(v59, value);
        Mutable = value[0];
        goto LABEL_104;
      }

      if (a1 != 1752589105)
      {
        goto LABEL_104;
      }

      v49 = @"hvc1";
      v50 = 1752589105;
LABEL_127:
      Mutable = vtCreateH264OrHEVCDecoderCapabilitiesDictionaryInternal(v50, v49);
      goto LABEL_104;
    }

    if (a1 != 1635135537)
    {
      if (a1 != 1635148593)
      {
        goto LABEL_104;
      }

      v49 = @"avc1";
      v50 = 1635148593;
      goto LABEL_127;
    }

    v45 = VTCopyVideoDecoderRegistryMatchArrayForCodecType(0x61763031u);
    value[0] = 0;
    *v69 = 0;
    v46 = vtIsHardwareCodecAvailable(1635135537, v45);
    if (!v46)
    {
      if (!v45)
      {
        Mutable = 0;
LABEL_118:
        if (value[0])
        {
          CFRelease(value[0]);
        }

        if (*v69)
        {
          CFRelease(*v69);
        }

        goto LABEL_104;
      }

      if (CFArrayGetCount(v45) < 1)
      {
        Mutable = 0;
        v47 = 0;
        MutableCopy = 0;
LABEL_112:
        CFRelease(v45);
LABEL_113:
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        if (v47)
        {
          CFRelease(v47);
        }

        goto LABEL_118;
      }
    }

    v51 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      if (vtCopyCodecProfilesArrayAndDictionaryForEmbedded(@"av01", v69, value))
      {
        MutableCopy = CFArrayCreateMutableCopy(v51, 0, *v69);
        if (MutableCopy)
        {
          CFDictionarySetValue(Mutable, @"VTSupportedProfiles", MutableCopy);
          theDicta = CFDictionaryGetValue(value[0], @"PerProfileConstraints");
          v52 = CFDictionaryCreateMutable(v51, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v52)
          {
            v47 = v52;
            if (CFArrayGetCount(MutableCopy) >= 1)
            {
              v53 = 0;
              v54 = MEMORY[0x1E695E4D0];
              if (!v46)
              {
                v54 = MEMORY[0x1E695E4C0];
              }

              v60 = *v54;
              do
              {
                *&v68.byte0 = 0;
                FigCFArrayGetIntAtIndex();
                v55 = CFStringCreateWithFormat(v51, 0, @"%d", *&v68.byte0);
                v56 = CFDictionaryGetValue(theDicta, v55);
                v57 = CFDictionaryCreateMutableCopy(v51, 0, v56);
                CFDictionaryAddValue(v57, @"VTIsHardwareAccelerated", v60);
                v58 = CFDictionaryGetValue(v56, @"MaxLevel");
                CFDictionaryAddValue(v57, @"VTMaxPlaybackLevel", v58);
                CFDictionaryRemoveValue(v57, @"MaxLevel");
                CFDictionaryAddValue(v47, v55, v57);
                if (v57)
                {
                  CFRelease(v57);
                }

                if (v55)
                {
                  CFRelease(v55);
                }

                ++v53;
              }

              while (CFArrayGetCount(MutableCopy) > v53);
            }

            CFDictionarySetValue(Mutable, @"VTPerProfileSupport", v47);
LABEL_142:
            if (!v45)
            {
              goto LABEL_113;
            }

            goto LABEL_112;
          }
        }

        fig_log_get_emitter();
        if (FigSignalErrorAtGM())
        {
          CFRelease(Mutable);
          v47 = 0;
          Mutable = 0;
          goto LABEL_142;
        }

LABEL_162:
        v47 = 0;
        goto LABEL_142;
      }
    }

    else
    {
      vtCreateDecoderCapabilitiesDictionary_cold_3();
    }

    MutableCopy = 0;
    goto LABEL_162;
  }

  if ((a1 - 1634755432) <= 0xB && ((1 << (a1 - 104)) & 0x8C1) != 0 || a1 == 1634743400)
  {
    goto LABEL_86;
  }

  v27 = 13432;
LABEL_85:
  if (a1 != (v27 | 0x61700000))
  {
    goto LABEL_104;
  }

LABEL_86:
  v33 = VTCopyVideoDecoderRegistryMatchArrayForCodecType(a1);
  v34 = vtIsHardwareCodecAvailable(a1, v33);
  if (v34)
  {
    goto LABEL_89;
  }

  if (!v33)
  {
LABEL_103:
    Mutable = 0;
    goto LABEL_104;
  }

  if (CFArrayGetCount(v33) < 1)
  {
    Mutable = 0;
    v43 = 0;
    goto LABEL_99;
  }

LABEL_89:
  v35 = *MEMORY[0x1E695E480];
  ModelSpecificPropertyList = FigCreateModelSpecificPropertyList();
  if (!ModelSpecificPropertyList)
  {
    v43 = 0;
    Mutable = 0;
    if (!v33)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  v37 = ModelSpecificPropertyList;
  v38 = CFDictionaryGetValue(ModelSpecificPropertyList, @"vide");
  StringFromCodecType = vtCreateStringFromCodecType(a1);
  v83.length = CFArrayGetCount(v38);
  v83.location = 0;
  v40 = CFArrayContainsValue(v38, v83, StringFromCodecType);
  if (StringFromCodecType)
  {
    CFRelease(StringFromCodecType);
  }

  if (v40 != 1)
  {
    Mutable = 0;
LABEL_97:
    v43 = 0;
    goto LABEL_98;
  }

  v41 = CFDictionaryCreateMutable(v35, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Mutable = v41;
  if (v41)
  {
    v42 = MEMORY[0x1E695E4C0];
    if (v34)
    {
      v42 = MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(v41, @"VTIsHardwareAccelerated", *v42);
    goto LABEL_97;
  }

  vtCreateDecoderCapabilitiesDictionary_cold_6(value);
  v43 = LOBYTE(value[0]);
LABEL_98:
  CFRelease(v37);
  if (v33)
  {
LABEL_99:
    CFRelease(v33);
  }

LABEL_100:
  if (v43 && Mutable)
  {
LABEL_102:
    CFRelease(Mutable);
    goto LABEL_103;
  }

LABEL_104:
  if (matched)
  {
    CFRelease(matched);
  }

  return Mutable;
}