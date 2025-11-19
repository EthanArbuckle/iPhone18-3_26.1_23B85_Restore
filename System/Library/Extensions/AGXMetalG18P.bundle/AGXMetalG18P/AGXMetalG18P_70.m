void sub_29CE02CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, void **a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, void **a21, void **a22, void **a23, void **a24, void **a25, void **a26, void **a27, void **a28, void **a29, uint64_t a30, void **a31, void **a32, uint64_t a33, void **a34, uint64_t a35, uint64_t a36, void **a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  CompileStatistics::~CompileStatistics(a20);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a37);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v41 + 1560));
  v44 = *a31;
  if (*a31)
  {
    *(v41 + 1544) = v44;
    operator delete(v44);
  }

  v45 = *a32;
  if (*a32)
  {
    *(v41 + 1520) = v45;
    operator delete(v45);
  }

  if (*a9 < 0)
  {
    operator delete(*a10);
    if ((*(v41 + 919) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v41 + 919) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v41 + 887) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  operator delete(*a26);
  if (*(v41 + 887) < 0)
  {
LABEL_8:
    operator delete(*a27);
    if ((*(v41 + 863) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((*(v41 + 863) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v41 + 839) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_27:
  operator delete(*a28);
  if ((*(v41 + 839) & 0x80000000) == 0)
  {
LABEL_11:
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a34);
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::GlobalBindingTableInfo::~GlobalBindingTableInfo(a11);
    v46 = *a21;
    if (*a21)
    {
      *(v41 + 336) = v46;
      operator delete(v46);
    }

    v47 = *a23;
    if (*a23)
    {
      *(v41 + 312) = v47;
      operator delete(v47);
    }

    v48 = *a22;
    if (*a22)
    {
      *(v41 + 288) = v48;
      operator delete(v48);
    }

    v49 = *a24;
    if (*a24)
    {
      *(v41 + 264) = v49;
      operator delete(v49);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v41 + 168);
    v50 = *a25;
    if (*a25)
    {
      *(v41 + 152) = v50;
      operator delete(v50);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(a35);
    if (*(v42 - 233) < 0)
    {
      operator delete(*(v42 - 256));
    }

    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(*a29);
  goto LABEL_11;
}

void AGX::BlitVertexFastClearProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::BlitVertexFastClearProgramVariant(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v8 = 0;
  v468 = *MEMORY[0x29EDCA608];
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  *a1 = &unk_2A23F7EA0;
  *(a1 + 8) = a2;
  *(a1 + 56) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 233) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 489) = 0u;
  v456 = (a1 + 544);
  *(a1 + 536) = a1 + 544;
  *(a1 + 560) = 0xFFFFFFFF00000001;
  *(a1 + 568) = 1610612736;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 672) = -1;
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *(a1 + 640) = v9;
  *(a1 + 656) = v9;
  *(a1 + 608) = 0u;
  *(a1 + 624) = v9;
  *(a1 + 680) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 808) = atomic_fetch_add((a2 + 17008), 1uLL);
  *(a1 + 896) = 0;
  v446 = (a1 + 896);
  *(a1 + 904) = 0u;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1376) = 0;
  *(a1 + 1360) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1392) = 0;
  *(a1 + 1396) = 0;
  v10 = (a1 + 1423);
  *(a1 + 1400) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  v449 = (a1 + 816);
  *(a1 + 873) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0;
  *(a1 + 1468) = 0u;
  *(a1 + 1439) = 0u;
  *(a1 + 1455) = 0u;
  *(a1 + 1423) = 0u;
  *(a1 + 1504) = 0;
  *(a1 + 1488) = 0u;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1560) = 0u;
  v453 = a1 + 1512;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = *(a4 + 465);
  *(a1 + 1586) = 0;
  *(a1 + 1600) = 0u;
  v459 = (a1 + 1600);
  *(a1 + 1592) = a1 + 1600;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1728) = 0u;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0;
  if (a3[28])
  {
    v11 = a3[29] == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = 28;
  if (v11)
  {
    v12 = 98;
    v13 = a3 + 98;
  }

  else
  {
    v13 = a3 + 28;
  }

  v14 = a3[v12];
  if (v14 && v13[1])
  {
    v8 = (v14 + *v14);
  }

  v15 = (v8 - *v8);
  if (*v15 >= 5u && (v16 = v15[2]) != 0)
  {
    v17 = (v8 + v16 + *(v8 + v16));
  }

  else
  {
    v17 = 0;
  }

  v18 = 0;
  v19 = a3 + 128;
  if (a3[58])
  {
    v20 = a3[59] == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = 58;
  if (v20)
  {
    v21 = 128;
  }

  else
  {
    v19 = a3 + 58;
  }

  v22 = a3[v21];
  if (v22 && v19[1])
  {
    v18 = (v22 + *v22);
  }

  v23 = (v18 - *v18);
  if (*v23 < 5u)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23[2];
    if (v24)
    {
      v24 = (v24 + v18 + *(v24 + v18));
    }
  }

  v25 = *v24;
  v26 = -v25;
  v458 = v24;
  v27 = (v24 - v25);
  v28 = *v27;
  if (v28 < 0x25)
  {
    LOBYTE(v29) = 0;
  }

  else
  {
    v29 = v27[18];
    if (v27[18])
    {
      LOBYTE(v29) = *(v458 + v29) != 0;
    }
  }

  *(a1 + 1585) = v29;
  v30 = (v17 - *v17);
  if (*v30 < 0x55u || (v31 = v30[42]) == 0 || !*(v17 + v31))
  {
LABEL_63:
    if (v28 < 7)
    {
      LODWORD(v45) = 0;
    }

    else
    {
      v45 = *(v458 + v26 + 6);
      if (*(v458 + v26 + 6))
      {
        LODWORD(v45) = *(v458 + v45);
      }
    }

    v443 = (a1 + 304);
    v444 = (a1 + 256);
    v441 = (a1 + 328);
    v442 = (a1 + 280);
    *(a1 + 800) = v45;
    v46 = (v458 - *v458);
    v460 = v17;
    v439 = a1 + 928;
    if (*v46 >= 0x13u && (v47 = v46[9]) != 0)
    {
      v48 = v458 + v47 + *(v458 + v47) + 4;
    }

    else
    {
      v48 = "";
    }

    v447 = (a1 + 864);
    v448 = (a1 + 840);
    v49 = (a1 + 1400);
    v452 = a1 + 1536;
    v440 = (a1 + 1616);
    v457 = (a1 + 56);
    v445 = (a1 + 144);
    MEMORY[0x29ED51E00](v449, v48);
    v50 = (v458 - *v458);
    if (*v50 >= 9u && (v51 = v50[4]) != 0)
    {
      v52 = v458 + v51 + *(v458 + v51) + 4;
    }

    else
    {
      v52 = "";
    }

    MEMORY[0x29ED51E00](v448, v52);
    v53 = (v458 - *v458);
    if (*v53 < 0x29u)
    {
      LOBYTE(v54) = 0;
    }

    else
    {
      v54 = v53[20];
      if (v54)
      {
        LOBYTE(v54) = *(v458 + v54) != 0;
      }
    }

    *(a1 + 888) = v54;
    std::string::operator=(v447, &__str);
    v55 = (v458 - *v458);
    if (*v55 >= 0x51u && (v56 = v55[40]) != 0)
    {
      v57 = v458 + v56 + *(v458 + v56) + 4;
    }

    else
    {
      v57 = "";
    }

    MEMORY[0x29ED51E00](v446, v57);
    v58 = (v458 - *v458);
    v455 = v6;
    if (*v58 >= 5u && v58[2] && *(v6 + 16608) == 1)
    {
      v59 = a3[1];
      if (v59 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_700;
      }

      v60 = *a3;
      if (v59 >= 0x17)
      {
        operator new();
      }

      __dst[23] = a3[1];
      if (v59)
      {
        memmove(__dst, v60, v59);
      }

      __dst[v59] = 0;
      if (*v10 < 0)
      {
        operator delete(*v49);
      }

      *v49 = *__dst;
      *(a1 + 1416) = *&__dst[16];
      v61 = a3[3];
      if (a3[4])
      {
        v62 = v61 == 0;
      }

      else
      {
        v62 = 1;
      }

      if (v62)
      {
        v61 = a3[73];
      }

      *(a1 + 1424) = v61 - *a3;
    }

    v63 = a3 + 113;
    if (a3[43])
    {
      v64 = a3[44] == 0;
    }

    else
    {
      v64 = 1;
    }

    v65 = 43;
    if (v64)
    {
      v65 = 113;
    }

    else
    {
      v63 = a3 + 43;
    }

    v454 = a3;
    v66 = a3[v65];
    if (!v66 || !v63[1])
    {
LABEL_126:
      v79 = v454 + 138;
      if (v454[68])
      {
        v80 = v454[69] == 0;
      }

      else
      {
        v80 = 1;
      }

      v81 = 68;
      if (v80)
      {
        v81 = 138;
      }

      else
      {
        v79 = v454 + 68;
      }

      v82 = v454[v81];
      v83 = v79[1];
      if (v82)
      {
        v84 = v83 == 0;
      }

      else
      {
        v84 = 1;
      }

      if (v84)
      {
        v85 = 0;
        v86 = v460;
      }

      else
      {
        v87 = (v82 + *v82);
        v88 = (v87 - *v87);
        v86 = v460;
        if (*v88 >= 5u && (v89 = v88[2]) != 0)
        {
          v85 = *(v87 + v89);
        }

        else
        {
          v85 = 0;
        }
      }

      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
      }

      *(a1 + 1624) = (v85 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0) / 1000000.0;
      v90 = (v86 - *v86);
      if (*v90 < 5u)
      {
        LODWORD(v91) = 0;
      }

      else
      {
        v91 = v90[2];
        if (v91)
        {
          LODWORD(v91) = *(v86 + v91);
        }
      }

      *v440 = v91;
      v92 = (v86 - *v86);
      if (*v92 < 0x2Du)
      {
        LODWORD(v93) = 0;
      }

      else
      {
        v93 = v92[22];
        if (v93)
        {
          LODWORD(v93) = *(v86 + v93);
        }
      }

      *(a1 + 1620) = v93;
      v94 = (v86 - *v86);
      if (*v94 < 0x35u)
      {
        LODWORD(v95) = 0;
      }

      else
      {
        v95 = v94[26];
        if (v95)
        {
          LODWORD(v95) = *(v86 + v95);
        }
      }

      *(a1 + 1660) = v95;
      v96 = (v86 - *v86);
      if (*v96 < 0x43u)
      {
        LODWORD(v97) = 0;
      }

      else
      {
        v97 = v96[33];
        if (v97)
        {
          LODWORD(v97) = *(v86 + v97);
        }
      }

      *(a1 + 1696) = v97;
      v98 = v454 + 108;
      if (v454[38])
      {
        v99 = v454[39] == 0;
      }

      else
      {
        v99 = 1;
      }

      v100 = 38;
      if (v99)
      {
        v100 = 108;
      }

      else
      {
        v98 = v454 + 38;
      }

      v101 = v454[v100];
      if (v101 && v98[1])
      {
        v102 = (v101 + *v101);
        v103 = (v102 - *v102);
        if (*v103 < 0xDu)
        {
          LODWORD(v104) = 0;
        }

        else
        {
          v104 = v103[6];
          if (v104)
          {
            LODWORD(v104) = *(v102 + v104);
          }
        }

        *(a1 + 1620) = v104;
        v105 = (v102 - *v102);
        if (*v105 < 0xBu)
        {
          LODWORD(v106) = 0;
        }

        else
        {
          v106 = v105[5];
          if (v106)
          {
            LODWORD(v106) = *(v102 + v106);
          }
        }

        *(a1 + 1628) = v106;
        v107 = (v102 - *v102);
        if (*v107 < 0x11u)
        {
          LODWORD(v108) = 0;
        }

        else
        {
          v108 = v107[8];
          if (v108)
          {
            LODWORD(v108) = *(v102 + v108);
          }
        }

        *(a1 + 1632) = v108;
        v109 = (v102 - *v102);
        if (*v109 < 0x13u)
        {
          LODWORD(v110) = 0;
        }

        else
        {
          v110 = v109[9];
          if (v110)
          {
            LODWORD(v110) = *(v102 + v110);
          }
        }

        *(a1 + 1636) = v110;
        v111 = (v102 - *v102);
        if (*v111 < 0x17u)
        {
          LODWORD(v112) = 0;
        }

        else
        {
          v112 = v111[11];
          if (v112)
          {
            LODWORD(v112) = *(v102 + v112);
          }
        }

        *(a1 + 1640) = v112;
        v113 = (v102 - *v102);
        if (*v113 < 0x1Bu)
        {
          LODWORD(v114) = 0;
        }

        else
        {
          v114 = v113[13];
          if (v114)
          {
            LODWORD(v114) = *(v102 + v114);
          }
        }

        *(a1 + 1644) = v114;
        v115 = (v102 - *v102);
        if (*v115 < 0x15u)
        {
          LODWORD(v116) = 0;
        }

        else
        {
          v116 = v115[10];
          if (v116)
          {
            LODWORD(v116) = *(v102 + v116);
          }
        }

        *(a1 + 1648) = v116;
        v117 = (v102 - *v102);
        if (*v117 < 0x19u)
        {
          LODWORD(v118) = 0;
        }

        else
        {
          v118 = v117[12];
          if (v118)
          {
            LODWORD(v118) = *(v102 + v118);
          }
        }

        *(a1 + 1652) = v118;
        v119 = (v102 - *v102);
        if (*v119 < 0x1Du)
        {
          LODWORD(v120) = 0;
        }

        else
        {
          v120 = v119[14];
          if (v120)
          {
            LODWORD(v120) = *(v102 + v120);
          }
        }

        *(a1 + 1656) = v120;
        v121 = (v102 - *v102);
        if (*v121 < 0xFu)
        {
          LODWORD(v122) = 0;
        }

        else
        {
          v122 = v121[7];
          if (v122)
          {
            LODWORD(v122) = *(v102 + v122);
          }
        }

        *(a1 + 1660) = v122;
        v123 = (v102 - *v102);
        if (*v123 < 0x1Fu)
        {
          LODWORD(v124) = 0;
        }

        else
        {
          v124 = v123[15];
          if (v124)
          {
            LODWORD(v124) = *(v102 + v124);
          }
        }

        *(a1 + 1664) = v124;
        v125 = (v102 - *v102);
        if (*v125 < 0x21u)
        {
          LODWORD(v126) = 0;
        }

        else
        {
          v126 = v125[16];
          if (v126)
          {
            LODWORD(v126) = *(v102 + v126);
          }
        }

        *(a1 + 1668) = v126;
        v127 = (v102 - *v102);
        if (*v127 < 0x23u)
        {
          LODWORD(v128) = 0;
        }

        else
        {
          v128 = v127[17];
          if (v128)
          {
            LODWORD(v128) = *(v102 + v128);
          }
        }

        *(a1 + 1672) = v128;
        v129 = (v102 - *v102);
        if (*v129 < 0x25u)
        {
          LODWORD(v130) = 0;
        }

        else
        {
          v130 = v129[18];
          if (v130)
          {
            LODWORD(v130) = *(v102 + v130);
          }
        }

        *(a1 + 1676) = v130;
        v131 = (v102 - *v102);
        if (*v131 < 0x27u)
        {
          LODWORD(v132) = 0;
        }

        else
        {
          v132 = v131[19];
          if (v132)
          {
            LODWORD(v132) = *(v102 + v132);
          }
        }

        *(a1 + 1680) = v132;
        v133 = (v102 - *v102);
        if (*v133 < 0x29u)
        {
          LODWORD(v134) = 0;
        }

        else
        {
          v134 = v133[20];
          if (v134)
          {
            LODWORD(v134) = *(v102 + v134);
          }
        }

        *(a1 + 1684) = v134;
        v135 = (v102 - *v102);
        if (*v135 < 0x2Bu)
        {
          LODWORD(v136) = 0;
        }

        else
        {
          v136 = v135[21];
          if (v136)
          {
            LODWORD(v136) = *(v102 + v136);
          }
        }

        *(a1 + 1688) = v136;
        v137 = (v102 - *v102);
        if (*v137 < 7u)
        {
          LODWORD(v138) = 0;
        }

        else
        {
          v138 = v137[3];
          if (v138)
          {
            LODWORD(v138) = *(v102 + v138);
          }
        }

        *(a1 + 1692) = v138;
        v139 = (v102 - *v102);
        if (*v139 >= 5u && (v140 = v139[2]) != 0)
        {
          v141 = *(v102 + v140);
        }

        else
        {
          v141 = 0;
        }

        *(a1 + 1700) = v141;
      }

      if (v454[53])
      {
        v142 = v454[54];
        if (v142)
        {
          v143 = v454[53];
        }

        else
        {
          v143 = v454[123];
        }

        if (v142)
        {
          v144 = v454 + 53;
        }

        else
        {
          v144 = v454 + 123;
        }
      }

      else
      {
        v144 = v454 + 123;
        v143 = v454[123];
      }

      MEMORY[0x29ED51E10](a1 + 1760, v143, v144[1]);
      v145 = v458;
      std::string::push_back((a1 + 1760), 0);
      v146 = *v86;
      v147 = v86 - v146;
      v148 = *(v86 - v146);
      if (v148 < 0x39)
      {
        goto LABEL_271;
      }

      v149 = -v146;
      v150 = *(v147 + 28);
      if (v150)
      {
        v151 = (v86 + v150 + *(v86 + v150));
        if (*v151)
        {
          *(a1 + 1504) = 1;
          v152 = (v151 + v151[1] + 4);
          v153 = (v152 - *v152);
          if (*v153 >= 9u && (v154 = v153[4]) != 0)
          {
            v155 = *(v152 + v154);
          }

          else
          {
            v155 = 0;
          }

          *(a1 + 1704) = v155;
          *(a1 + 1708) = 1;
          v156 = *v86;
          v149 = -v156;
          v148 = *(v86 - v156);
        }
      }

      if (v148 < 0x3B)
      {
        goto LABEL_271;
      }

      v157 = v86 + v149;
      if (*(v157 + 29))
      {
        v158 = (v86 + *(v157 + 29) + *(v86 + *(v157 + 29)));
        v159 = *v158;
        if (v159)
        {
          v160 = v158 + 1;
          do
          {
            v162 = *v160++;
            v161 = v162;
            if (!(v162 >> 20))
            {
              *(a1 + 1488 + 8 * (v161 > 0x3F)) |= 1 << v161;
            }

            --v159;
          }

          while (v159);
        }
      }

      if (v148 < 0x57)
      {
LABEL_271:
        LODWORD(v163) = 0;
      }

      else
      {
        v163 = *(v157 + 43);
        if (*(v157 + 43))
        {
          LODWORD(v163) = *(v86 + v163);
        }
      }

      *(a1 + 692) = v163;
      v164 = (v86 - *v86);
      if (*v164 >= 0x21u && (v165 = v164[16]) != 0)
      {
        v166 = *(v86 + v165);
      }

      else
      {
        v166 = 0;
      }

      {
        getAdditionalSpillBufferBytes(void)::extra = 0;
      }

      *(a1 + 696) = getAdditionalSpillBufferBytes(void)::extra + v166;
      v167 = (v86 - *v86);
      if (*v167 < 0x59u)
      {
        LODWORD(v168) = 0;
      }

      else
      {
        v168 = v167[44];
        if (v168)
        {
          LODWORD(v168) = *(v86 + v168);
        }
      }

      *(a1 + 720) = v168;
      v169 = (v86 - *v86);
      if (*v169 < 0x51u)
      {
        LODWORD(v170) = 0;
      }

      else
      {
        v170 = v169[40];
        if (v170)
        {
          LODWORD(v170) = *(v86 + v170);
        }
      }

      *(a1 + 724) = v170;
      v171 = (v86 - *v86);
      if (*v171 < 0x4Bu)
      {
        LODWORD(v172) = 0;
      }

      else
      {
        v172 = v171[37];
        if (v172)
        {
          LODWORD(v172) = *(v86 + v172);
        }
      }

      *(a1 + 732) = v172;
      v173 = (v86 - *v86);
      v174 = *v173;
      if (v174 >= 0x25)
      {
        if (v173[18] && *(v86 + v173[18]))
        {
          if (v174 < 0x27)
          {
            LOBYTE(v175) = 0;
            v176 = 1;
            goto LABEL_300;
          }

          v175 = v173[19];
          goto LABEL_294;
        }

        if (v174 >= 0x27)
        {
          v175 = v173[19];
          if (v173[19] && *(v86 + v173[19]))
          {
            v176 = 1;
            LOBYTE(v175) = 1;
            goto LABEL_300;
          }

          if (v174 < 0x29)
          {
            goto LABEL_696;
          }

          if (v173[20] && *(v86 + v173[20]))
          {
LABEL_294:
            v176 = 1;
            goto LABEL_697;
          }

          if (v174 >= 0x71 && (v431 = v173[56]) != 0)
          {
            v176 = *(v86 + v431) != 0;
          }

          else
          {
LABEL_696:
            v176 = 0;
          }

LABEL_697:
          if (v175)
          {
            LOBYTE(v175) = *(v86 + v175) != 0;
          }

LABEL_300:
          *(a1 + 742) = v175;
          v177 = (v458 - *v458);
          v178 = *v177;
          if (v178 < 0x21)
          {
            v180 = 0;
            LODWORD(v179) = 0;
          }

          else
          {
            v179 = v177[16];
            if (v177[16])
            {
              LODWORD(v179) = *(v458 + v179);
            }

            if (v178 < 0x4D)
            {
              v180 = 0;
            }

            else
            {
              v180 = v177[38];
              if (v177[38])
              {
                v180 = *(v458 + v180);
              }

              if (v178 >= 0x4F)
              {
                v181 = v177[39];
                if (v181)
                {
                  v181 = *(v458 + v181);
                }

LABEL_312:
                *(a1 + 784) = v179 | (v180 << 32);
                *(a1 + 792) = v181;
                *(a1 + 746) = (v176 | v175) & 1;
                v182 = *v86;
                v183 = (v86 - v182);
                v184 = *(v86 - v182);
                if (v184 < 0x37)
                {
                  LOBYTE(v185) = 0;
                }

                else
                {
                  v185 = v183[27];
                  if (v183[27])
                  {
                    LOBYTE(v185) = *(v86 + v185) != 0;
                  }
                }

                *(a1 + 741) = v185;
                v186 = (v458 - *v458);
                v187 = *v186;
                if (v187 < 0x33)
                {
                  LOBYTE(v188) = 0;
                }

                else
                {
                  v188 = v186[25];
                  if (v186[25])
                  {
                    LOBYTE(v188) = *(v458 + v188) != 0;
                  }
                }

                *(a1 + 747) = v188;
                if (v184 < 0x3F)
                {
                  LOBYTE(v189) = 0;
                }

                else
                {
                  v189 = v183[31];
                  if (v183[31])
                  {
                    v190 = (v86 + v189 + *(v86 + v189));
                    v189 = *v190;
                    if (v189)
                    {
                      v191 = v190 + 1;
                      while (1)
                      {
                        v193 = *v191++;
                        v192 = v193;
                        if (v193 < 0x36 && ((0x3F000000000777uLL >> v192) & 1) != 0)
                        {
                          break;
                        }

                        if (!--v189)
                        {
                          goto LABEL_329;
                        }
                      }

                      LOBYTE(v189) = 1;
                    }
                  }
                }

LABEL_329:
                *(a1 + 749) = v189;
                if (v187 <= 0x14)
                {
                  LOBYTE(v195) = 0;
                  *(a1 + 743) = 0;
                }

                else
                {
                  v194 = v186[10];
                  if (v186[10])
                  {
                    LOBYTE(v194) = *(v458 + v194) != 0;
                  }

                  *(a1 + 743) = v194;
                  if (v187 < 0x25)
                  {
                    LOBYTE(v195) = 0;
                  }

                  else
                  {
                    v195 = v186[18];
                    if (v186[18])
                    {
                      LOBYTE(v195) = *(v458 + v195) != 0;
                    }
                  }
                }

                v196 = -v182;
                *(a1 + 1585) = v195;
                if (v184 < 0x5D)
                {
                  LOBYTE(v197) = 0;
                }

                else
                {
                  v197 = v183[46];
                  if (v197)
                  {
                    LOBYTE(v197) = *(v86 + v197) != 0;
                  }
                }

                v450 = v176;
                *(a1 + 748) = v197;
                if (v187 >= 0x23 && (v198 = v186[17]) != 0)
                {
                  *(a1 + 1587) = 1;
                  v199 = (v458 + v198 + *(v458 + v198));
                  v200 = *v199;
                  if (v200)
                  {
                    v201 = &v199[v200];
                    while (1)
                    {
                      v202 = v199[1];
                      v203 = (++v199 + v202);
                      v204 = (v203 - *v203);
                      v205 = *v204;
                      if (v205 < 7)
                      {
                        v206 = 0;
                        v208 = 0;
                        if (v205 < 5)
                        {
                          goto LABEL_353;
                        }

                        v207 = v204[2];
                        if (v207)
                        {
                          goto LABEL_352;
                        }
                      }

                      else if (v204[3])
                      {
                        v206 = *(v203 + v204[3]);
                        v207 = v204[2];
                        if (v207)
                        {
                          goto LABEL_352;
                        }
                      }

                      else
                      {
                        v206 = 0;
                        v207 = v204[2];
                        if (v207)
                        {
LABEL_352:
                          v208 = *(v203 + v207);
                          goto LABEL_353;
                        }
                      }

                      v208 = 0;
LABEL_353:
                      v209 = v459;
LABEL_354:
                      v210 = *v209;
                      if (!*v209)
                      {
LABEL_358:
                        operator new();
                      }

                      while (1)
                      {
                        v209 = v210;
                        v211 = *(v210 + 28);
                        if (v208 < v211)
                        {
                          goto LABEL_354;
                        }

                        if (v211 >= v208)
                        {
                          break;
                        }

                        v210 = v209[1];
                        if (!v210)
                        {
                          goto LABEL_358;
                        }
                      }

                      v86 = v460;
                      *(v209 + 8) = v206;
                      if (v199 == v201)
                      {
                        v214 = *v460;
                        v196 = -v214;
                        v6 = v455;
                        v145 = v458;
                        if (*(v460 - v214) < 0x21u)
                        {
LABEL_367:
                          v213 = 0;
                          v212 = v454;
                          goto LABEL_369;
                        }

LABEL_364:
                        v212 = v454;
                        if (*(v86 + v196 + 32))
                        {
                          v213 = *(v86 + *(v86 + v196 + 32));
                        }

                        else
                        {
                          v213 = 0;
                        }

LABEL_369:
                        {
                          getAdditionalSpillBufferBytes(void)::extra = 0;
                        }

                        v215 = getAdditionalSpillBufferBytes(void)::extra + v213;
                        *(a1 + 688) = getAdditionalSpillBufferBytes(void)::extra + v213;
                        v216 = (v86 - *v86);
                        if (*v216 < 0x43u)
                        {
                          LODWORD(v217) = 0;
                        }

                        else
                        {
                          v217 = v216[33];
                          if (v217)
                          {
                            LODWORD(v217) = *(v86 + v217);
                          }
                        }

                        *(a1 + 700) = v217;
                        v218 = (v86 - *v86);
                        if (*v218 < 5u)
                        {
                          LODWORD(v219) = 0;
                        }

                        else
                        {
                          v219 = v218[2];
                          if (v219)
                          {
                            LODWORD(v219) = *(v86 + v219);
                          }
                        }

                        *(a1 + 684) = v219;
                        v220 = (v86 - *v86);
                        if (*v220 < 0x51u)
                        {
                          LODWORD(v221) = 0;
                        }

                        else
                        {
                          v221 = v220[40];
                          if (v221)
                          {
                            LODWORD(v221) = *(v86 + v221);
                          }
                        }

                        *(a1 + 716) = v221;
                        v222 = (v86 - *v86);
                        if (*v222 < 0x4Fu)
                        {
                          LODWORD(v223) = 0;
                        }

                        else
                        {
                          v223 = v222[39];
                          if (v223)
                          {
                            LODWORD(v223) = *(v86 + v223);
                          }
                        }

                        *(a1 + 728) = v223;
                        *(a1 + 736) = *(a4 + 468);
                        v224 = (v86 - *v86);
                        if ((*(v86 + v224[6] + *(v86 + v224[6])) | v215) != 0 || v450)
                        {
                          LOBYTE(v225) = 1;
                          goto LABEL_401;
                        }

                        v226 = *v224;
                        if (v226 < 0x21)
                        {
                          v227 = 0;
                        }

                        else if (v224[16])
                        {
                          v227 = *(v86 + v224[16]);
                          if (v226 >= 0x43)
                          {
LABEL_669:
                            if (v224[33])
                            {
                              v228 = *(v86 + v224[33]);
LABEL_394:
                              {
                                getAdditionalSpillBufferBytes(void)::extra = 0;
                              }

                              if (v228 + v227 + getAdditionalSpillBufferBytes(void)::extra)
                              {
                                LOBYTE(v225) = 1;
                                v145 = v458;
                              }

                              else
                              {
                                v229 = (v86 - *v86);
                                v145 = v458;
                                if (*v229 < 0x5Fu)
                                {
                                  LOBYTE(v225) = 0;
                                }

                                else
                                {
                                  v225 = v229[47];
                                  if (v225)
                                  {
                                    LOBYTE(v225) = *(v86 + v225) != 0;
                                  }
                                }
                              }

LABEL_401:
                              *(a1 + 740) = v225;
                              v230 = (v145 - *v145);
                              if (*v230 < 0x11u)
                              {
                                LODWORD(v231) = 0;
                              }

                              else
                              {
                                v231 = v230[8];
                                if (v231)
                                {
                                  LODWORD(v231) = *(v145 + v231);
                                }
                              }

                              v232 = (a1 + 1200);
                              *(a1 + 1392) = v231;
                              {
                              }

                              v233 = (v212 + 3);
                              if (v212[4])
                              {
                                v234 = v212[3] == 0;
                              }

                              else
                              {
                                v234 = 1;
                              }

                              v235 = v212;
                              v236 = (v212 + 73);
                              if (v234)
                              {
                                v237 = v233 + 70;
                              }

                              else
                              {
                                v237 = v233;
                              }

                              AGX::Heap<true>::allocateImpl(__dst, v6 + 6496, v237[1], (a1 + 1448));
                              *(a1 + 1480) += *&__dst[16];
                              v238 = *&__dst[16];
                              *v232 = *__dst;
                              *(a1 + 1216) = v238;
                              *(a1 + 1225) = *&__dst[25];
                              *(a1 + 920) = *(a1 + 1200);
                              *(a1 + 952) = v6 + 6496;
                              v239 = *(a1 + 1216);
                              *(a1 + 960) = *v232;
                              *(a1 + 976) = v239;
                              *(a1 + 985) = *(a1 + 1225);
                              if (*v233)
                              {
                                v240 = v235[4];
                                if (v240)
                                {
                                  v241 = *v233;
                                }

                                else
                                {
                                  v241 = v235[73];
                                }

                                if (v240)
                                {
                                  v236 = v233;
                                }
                              }

                              else
                              {
                                v241 = *v236;
                              }

                              v242 = v457;
                              memcpy(*(a1 + 1208), v241, v236[1]);
                              v243 = *(a1 + 1208);
                              v244 = *(a1 + 1216);
                              *(a1 + 928) = *(a1 + 920);
                              *(a1 + 936) = v243;
                              *(a1 + 944) = v244;
                              v245 = (v235 + 8);
                              v246 = v460;
                              if (v235[8])
                              {
                                if (v235[9])
                                {
                                  v247 = v235 + 8;
                                }

                                else
                                {
                                  v247 = v235 + 78;
                                }

                                v248 = v247[1];
                                v249 = v445;
                                if (!v248)
                                {
                                  goto LABEL_436;
                                }
                              }

                              else
                              {
                                v248 = v235[79];
                                v249 = v445;
                                if (!v248)
                                {
                                  goto LABEL_436;
                                }
                              }

                              AGX::Heap<true>::allocateImpl(__dst, v6 + 6328, v248, (a1 + 1456));
                              *(a1 + 1480) += *&__dst[16];
                              v250 = *&__dst[16];
                              *(a1 + 1248) = *__dst;
                              *(a1 + 1264) = v250;
                              *(a1 + 1273) = *&__dst[25];
                              v251 = *(a1 + 1264);
                              *(a1 + 1008) = *(a1 + 1248);
                              *(a1 + 1024) = v251;
                              *(a1 + 1033) = *(a1 + 1273);
                              if (*v245)
                              {
                                v252 = v454[9];
                                if (v252)
                                {
                                  v253 = *v245;
                                }

                                else
                                {
                                  v253 = v454[78];
                                }

                                if (v252)
                                {
                                  v254 = v235 + 8;
                                }

                                else
                                {
                                  v254 = v454 + 78;
                                }
                              }

                              else
                              {
                                v254 = v454 + 78;
                                v253 = v454[78];
                              }

                              memcpy(*(a1 + 1256), v253, v254[1]);
LABEL_436:
                              v255 = (v454 + 13);
                              if (v454[13])
                              {
                                if (v454[14])
                                {
                                  v256 = v454 + 13;
                                }

                                else
                                {
                                  v256 = v454 + 83;
                                }

                                v257 = v256[1];
                                if (!v257)
                                {
                                  goto LABEL_452;
                                }
                              }

                              else
                              {
                                v257 = v454[84];
                                if (!v257)
                                {
                                  goto LABEL_452;
                                }
                              }

                              AGX::Heap<true>::allocateImpl(__dst, v6 + 6328, v257, (a1 + 1464));
                              *(a1 + 1480) += *&__dst[16];
                              v258 = *&__dst[16];
                              *(a1 + 1296) = *__dst;
                              *(a1 + 1312) = v258;
                              *(a1 + 1321) = *&__dst[25];
                              v259 = *(a1 + 1312);
                              *(a1 + 1056) = *(a1 + 1296);
                              *(a1 + 1072) = v259;
                              *(a1 + 1081) = *(a1 + 1321);
                              if (*v255)
                              {
                                v260 = v454[14];
                                if (v260)
                                {
                                  v261 = *v255;
                                }

                                else
                                {
                                  v261 = v454[83];
                                }

                                if (v260)
                                {
                                  v262 = v454 + 13;
                                }

                                else
                                {
                                  v262 = v454 + 83;
                                }
                              }

                              else
                              {
                                v262 = v454 + 83;
                                v261 = v454[83];
                              }

                              memcpy(*(a1 + 1304), v261, v262[1]);
                              v263 = *(a1 + 1312);
                              *(a1 + 1152) = *(a1 + 1296);
                              *(a1 + 1168) = v263;
LABEL_452:
                              v264 = v454 + 23;
                              if (v454[23])
                              {
                                if (!v454[24])
                                {
                                  v264 = v454 + 93;
                                }

                                v265 = v264[1];
                                if (v265)
                                {
LABEL_456:
                                  AGX::Heap<true>::allocateImpl(__dst, v6 + 6328, v265, (a1 + 1472));
                                  *(a1 + 1480) += *&__dst[16];
                                  v266 = *&__dst[16];
                                  *(a1 + 1344) = *__dst;
                                  *(a1 + 1360) = v266;
                                  *(a1 + 1369) = *&__dst[25];
                                  v267 = *(a1 + 1360);
                                  *(a1 + 1104) = *(a1 + 1344);
                                  *(a1 + 1120) = v267;
                                  *(a1 + 1129) = *(a1 + 1369);
                                  v268 = *(a1 + 1360);
                                  *(a1 + 1176) = *(a1 + 1344);
                                  *(a1 + 1192) = v268;
                                }
                              }

                              else
                              {
                                v265 = v454[94];
                                if (v265)
                                {
                                  goto LABEL_456;
                                }
                              }

                              if ((*(a1 + 888) & 1) != 0 || *(*(a1 + 8) + 16945) == 1)
                              {
                                {
                                  {
                                    v270 = v449;
                                    if (*(a1 + 839) < 0)
                                    {
                                      v270 = *v449;
                                    }

                                    v271 = v447;
                                    if (*(a1 + 887) < 0)
                                    {
                                      v271 = v447->__r_.__value_.__r.__words[0];
                                    }

                                    v272 = v448;
                                    if (*(a1 + 863) < 0)
                                    {
                                      v272 = *v448;
                                    }

                                    v273 = *(a1 + 800);
                                    v274 = *(a1 + 808);
                                    v275 = v446;
                                    if (*(a1 + 919) < 0)
                                    {
                                      v275 = *v446;
                                    }

                                    v276 = *(a1 + 920);
                                    v277 = *(a1 + 1216);
                                    *__dst = 136448002;
                                    *&__dst[4] = v270;
                                    *&__dst[12] = 2082;
                                    *&__dst[14] = v271;
                                    *&__dst[22] = 2082;
                                    *&__dst[24] = v272;
                                    *&__dst[32] = 1026;
                                    *&__dst[34] = v273;
                                    *&__dst[38] = 2050;
                                    *&__dst[40] = v274;
                                    *v465 = 2082;
                                    *&v465[2] = v275;
                                    *&v465[10] = 2050;
                                    *&v465[12] = v276;
                                    v466 = 2050;
                                    v467 = v277;
                                    _os_signpost_emit_with_name_impl(&dword_29CA13000, v269, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Type=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Addr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}zu", __dst, 0x4Eu);
                                  }
                                }

                                v278 = *(a1 + 8);
                                v279 = v449;
                                if (*(a1 + 839) < 0)
                                {
                                  v279 = *v449;
                                }

                                v280 = v447;
                                if (*(a1 + 887) < 0)
                                {
                                  v280 = v447->__r_.__value_.__r.__words[0];
                                }

                                v281 = v448;
                                if (*(a1 + 863) < 0)
                                {
                                  v281 = *v448;
                                }

                                v282 = v446;
                                if (*(a1 + 919) < 0)
                                {
                                  v282 = *v446;
                                }

                                v283 = *(a1 + 800);
                                v284 = *(a1 + 808);
                                v285 = *(a1 + 920);
                                v286 = *(a1 + 1216);
                                v287 = *(a1 + 888);
                                *__dst = v279;
                                *&__dst[8] = v280;
                                *&__dst[16] = v281;
                                *&__dst[24] = v282;
                                *&__dst[32] = v283;
                                *&__dst[40] = v284;
                                *v465 = v285;
                                *&v465[8] = v286;
                                v465[16] = v287;
                                AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(v278, a1, __dst);
                              }

                              v288 = *(a4 + 208);
                              v290 = *(a4 + 144);
                              v289 = *(a4 + 148);
                              if (v288)
                              {
                                v291 = *(a4 + 144);
                              }

                              else
                              {
                                v291 = 0;
                              }

                              v292 = *(a4 + 176);
                              if (*(a4 + 176) == 0)
                              {
                                v290 = 0;
                              }

                              v293 = (*(a4 + 132) + *(a4 + 124) + *(a4 + 140) - (*(a4 + 128) + *(a4 + 120) + *(a4 + 136)));
                              *(a1 + 48) = v291 + v289 + v290 + *(a4 + 152) + ((v293 + 3) & 0xFFFFFFFC);
                              v294 = *(a1 + 56);
                              v295 = (*(a1 + 64) - v294) >> 2;
                              if (v293 <= v295)
                              {
                                if (v293 < v295)
                                {
                                  *(a1 + 64) = v294 + 4 * v293;
                                }
                              }

                              else
                              {
                                std::vector<unsigned int>::__append(v457, v293 - v295);
                                v292 = *(a4 + 176);
                                v289 = *(a4 + 148);
                                v288 = *(a4 + 208);
                              }

                              if (v288)
                              {
                                v296 = *(a4 + 144);
                              }

                              else
                              {
                                v296 = 0;
                              }

                              if (v292 | *(a4 + 184))
                              {
                                v297 = *(a4 + 144);
                              }

                              else
                              {
                                v297 = 0;
                              }

                              v298 = (v289 + v296 + v297);
                              v299 = *(a1 + 144);
                              v300 = (*(a1 + 152) - v299) >> 2;
                              if (v298 <= v300)
                              {
                                if (v298 < v300)
                                {
                                  *(a1 + 152) = v299 + 4 * v298;
                                }
                              }

                              else
                              {
                                std::vector<unsigned int>::__append(v249, v298 - v300);
                              }

                              v301 = *v460;
                              v302 = *(v460 - v301 + 16);
                              v303 = *(v460 + v302);
                              v304 = *(v460 + v302 + v303);
                              if (v304)
                              {
                                v305 = 4 * v304;
                                v306 = v302 + v303;
                                while (1)
                                {
                                  v308 = *(v460 + v306 + 4);
                                  v309 = v460 + v306 + v308;
                                  v310 = v308 - *(v309 + 1);
                                  v311 = v460 + v306 + v310;
                                  v312 = *(v311 + 2);
                                  if (v312 < 7)
                                  {
                                    goto LABEL_510;
                                  }

                                  v313 = *(v311 + 5);
                                  if (!v313 || (*(v460 + v306 + v308 + v313 + 4) & 0x80000000) == 0)
                                  {
                                    break;
                                  }

LABEL_503:
                                  v306 += 4;
                                  v305 -= 4;
                                  if (!v305)
                                  {
                                    v301 = *v460;
                                    goto LABEL_517;
                                  }
                                }

                                if (v312 < 9)
                                {
LABEL_510:
                                  LODWORD(v314) = 0;
                                }

                                else
                                {
                                  v314 = *(v460 + v306 + v310 + 12);
                                  if (v314)
                                  {
                                    LODWORD(v314) = 4 * *(v460 + v306 + v308 + v314 + 4);
                                  }
                                }

                                v315 = v314 - *(a4 + 120);
                                v457->__begin_[v315] = 1610612735;
                                v457->__begin_[v315 + 1] = 0x40000000;
                                v457->__begin_[v315 + 2] = 1073741825;
                                v457->__begin_[v315 + 3] = 1073741826;
                                v316 = v308 - *(v309 + 1);
                                if (*(v460 + v306 + v316 + 4) >= 0xBu && *(v460 + v306 + v316 + 14) && *(v460 + v306 + v308 + *(v460 + v306 + v316 + 14) + 4))
                                {
                                  v317 = *(v460 + v306 + v316 + 10);
                                  if (v317)
                                  {
                                    v307 = *(v460 + v306 + v308 + v317 + 4) & 0xFFFFF;
                                  }

                                  else
                                  {
                                    v307 = 0;
                                  }

                                  *(a1 + 768 + 8 * (v307 > 0x3F)) |= 1 << v307;
                                }

                                goto LABEL_503;
                              }

LABEL_517:
                              v318 = -v301;
                              v319 = v460 + v318;
                              if (*(a1 + 742))
                              {
                                v320 = *(v319 + 12);
                                v321 = *(v460 + v320);
                                v322 = (v460 + v320 + v321);
                                v323 = *v322;
                                if (v323)
                                {
                                  v324 = 0;
                                  v325 = 4 * v323;
                                  v326 = v460 + v320 + v321;
                                  while (1)
                                  {
                                    v327 = v322[v324 / 4 + 1];
                                    v328 = v327 - *(&v322[v324 / 4 + 1] + v327);
                                    v329 = &v326[v324 + v328];
                                    v330 = *(v329 + 2);
                                    if (v330 >= 5)
                                    {
                                      v331 = *(v329 + 4);
                                      if (v331)
                                      {
                                        if (v326[v324 + 4 + v327 + v331] == 93)
                                        {
                                          if (v330 < 7)
                                          {
                                            break;
                                          }

                                          v332 = *&v326[v324 + 10 + v328];
                                          if (!v332)
                                          {
                                            break;
                                          }

                                          v333 = *&v326[v324 + 4 + v327 + v332];
                                          if ((v333 & 0x80000000) == 0 && (v333 & 0xFFF00000) != 0x400000)
                                          {
                                            break;
                                          }
                                        }
                                      }
                                    }

                                    v324 += 4;
                                    if (v325 == v324)
                                    {
                                      goto LABEL_529;
                                    }
                                  }

                                  *(a1 + 768) = vorrq_s8(*(a1 + 768), *(a1 + 784));
                                }
                              }

LABEL_529:
                              v334 = *(v319 + 10);
                              v335 = *(v460 + v334);
                              v336 = *(v460 + v334 + v335);
                              if (!v336)
                              {
                                goto LABEL_545;
                              }

                              v337 = 4 * v336;
                              v338 = v334 + v335;
                              while (2)
                              {
                                v339 = *(v460 + v338 + 4);
                                v340 = v339 - *(v460 + v338 + v339 + 4);
                                v341 = v460 + v338 + v340;
                                v342 = *(v341 + 2);
                                if (v342 < 7)
                                {
                                  goto LABEL_538;
                                }

                                v343 = *(v341 + 5);
                                if (v343 && *(v460 + v338 + v339 + v343 + 4) < 0)
                                {
                                  goto LABEL_531;
                                }

                                if (v342 < 9 || (v344 = *(v460 + v338 + v340 + 12)) == 0)
                                {
LABEL_538:
                                  v345 = 0;
                                  goto LABEL_539;
                                }

                                v345 = *(v460 + v338 + v339 + v344 + 4);
LABEL_539:
                                if (*(a1 + 1584))
                                {
                                  v346 = 3;
                                }

                                else
                                {
                                  v346 = 1;
                                }

                                v347 = *(a4 + 124) + v346 * v345 - (*(a4 + 120) + *(a4 + 128));
                                *(*(a1 + 56) + 4 * v347) = 0x7FFFFFFF;
                                if (*(a1 + 1584) == 1)
                                {
                                  v457->__begin_[v347 + 1] = 0x7FFFFFFF;
                                  v457->__begin_[v347 + 2] = 1610612736;
                                }

LABEL_531:
                                v338 += 4;
                                v337 -= 4;
                                if (v337)
                                {
                                  continue;
                                }

                                break;
                              }

                              v318 = -*v460;
LABEL_545:
                              v451 = a1 + 752;
                              v348 = (v460 + *(v460 + v318 + 12));
                              v349 = (v348 + *v348);
                              v350 = *v349;
                              if (v350)
                              {
                                v351 = &v349[v350];
                                while (1)
                                {
                                  v352 = v349[1];
                                  v353 = (++v349 + v352);
                                  v354 = (v353 - *v353);
                                  v355 = *v354;
                                  if (v355 < 7)
                                  {
                                    break;
                                  }

                                  if (!v354[3] || (*(v353 + v354[3]) & 0x80000000) == 0)
                                  {
                                    if (v355 < 9)
                                    {
                                      LODWORD(v356) = 0;
                                      goto LABEL_556;
                                    }

                                    v356 = v354[4];
                                    if (v354[4])
                                    {
                                      LODWORD(v356) = (*(v353 + v356) >> 1) & 0x1FFFFFFF;
LABEL_556:
                                      v357 = v354[3];
                                      if (v357)
                                      {
                                        LODWORD(v357) = *(v353 + v357) & 0xFFFFF;
                                      }

                                      goto LABEL_560;
                                    }

LABEL_555:
                                    if (v355 >= 7)
                                    {
                                      goto LABEL_556;
                                    }

                                    LODWORD(v357) = 0;
LABEL_560:
                                    v358 = *(a4 + 124) + v356 + *(a4 + 132) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136));
                                    *(*v242 + 4 * v358) = v357 | 0x20000000;
                                    v359 = (v353 - *v353);
                                    if (*v359 >= 0xBu)
                                    {
                                      v360 = v359[5];
                                      if (v360)
                                      {
                                        if (*(v353 + v360))
                                        {
                                          *(v451 + 8 * (v357 > 0x3F)) |= 1 << v357;
                                        }
                                      }
                                    }

                                    if (*(a1 + 1587) == 1)
                                    {
                                      v361 = *v459;
                                      if (!*v459)
                                      {
LABEL_699:
                                        abort();
                                      }

                                      v362 = 2 * v358;
                                      v363 = (2 * v358) | 1;
                                      while (1)
                                      {
                                        while (1)
                                        {
                                          v364 = *(v361 + 7);
                                          if (v357 >= v364)
                                          {
                                            break;
                                          }

                                          v361 = *v361;
                                          if (!v361)
                                          {
                                            goto LABEL_699;
                                          }
                                        }

                                        if (v364 >= v357)
                                        {
                                          break;
                                        }

                                        v361 = v361[1];
                                        if (!v361)
                                        {
                                          goto LABEL_699;
                                        }
                                      }

                                      v365 = v456;
LABEL_573:
                                      v366 = *v365;
                                      if (!*v365)
                                      {
LABEL_577:
                                        operator new();
                                      }

                                      while (1)
                                      {
                                        v365 = v366;
                                        v367 = *(v366 + 28);
                                        if (v363 < v367)
                                        {
                                          goto LABEL_573;
                                        }

                                        if (v367 > v362)
                                        {
                                          break;
                                        }

                                        v366 = v365[1];
                                        if (!v366)
                                        {
                                          goto LABEL_577;
                                        }
                                      }

                                      v368 = v365;
                                      v242 = v457;
                                      v246 = v460;
                                      *(v368 + 8) = *(v361 + 8);
                                    }
                                  }

                                  if (v349 == v351)
                                  {
                                    goto LABEL_579;
                                  }
                                }

                                LODWORD(v356) = 0;
                                goto LABEL_555;
                              }

LABEL_579:
                              AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather(v242);
                              v371 = *(a4 + 120);
                              v370 = *(a4 + 124);
                              v372 = *(a4 + 128);
                              v373 = *(a4 + 132);
                              v374 = *(a4 + 136);
                              v375 = *(a4 + 140);
                              v376 = (v370 + v373 + v375 - (v371 + v372 + v374) + 3) & 0xFFFFFFFC;
                              v377 = *(a4 + 160);
                              v378 = *(a4 + 168);
                              if (*(a4 + 160) == 0)
                              {
                                goto LABEL_597;
                              }

                              v379 = 0;
                              v380 = *(a4 + 144);
                              if (*(a4 + 208) != 1 || !v380)
                              {
                                goto LABEL_591;
                              }

                              v381 = 0;
                              *__dst = *(a4 + 160);
                              *&v462 = v378;
                              v382 = v377;
                              while (2)
                              {
                                if (v382)
                                {
                                  v383 = __dst;
LABEL_584:
                                  *v383 = v382 & (v382 - 1);
                                  *&v445->__begin_[v381] = xmmword_29D2F21F0;
                                  v381 += 4;
                                  v382 = *__dst;
                                  continue;
                                }

                                break;
                              }

                              v382 = v462;
                              if (v462)
                              {
                                v383 = &v462;
                                goto LABEL_584;
                              }

                              v374 = *(a4 + 136);
                              v375 = *(a4 + 140);
                              v372 = *(a4 + 128);
                              v373 = *(a4 + 132);
                              v371 = *(a4 + 120);
                              v370 = *(a4 + 124);
                              v380 = *(a4 + 144);
                              v379 = v380;
LABEL_591:
                              v384 = *(a4 + 176);
                              if (*&v384 != 0 && v380 != 0)
                              {
                                v395 = v379 - v376 + ((v375 + v373 - (v374 + v372 + v371) + v370 + 3) & 0xFFFFFFFC);
                                *__dst = v377;
                                *&v462 = v378;
                                while (1)
                                {
                                  if (v377)
                                  {
                                    v396 = __dst;
                                  }

                                  else
                                  {
                                    v377 = v462;
                                    if (!v462)
                                    {
                                      break;
                                    }

                                    v396 = &v462;
                                  }

                                  *v396 = v377 & (v377 - 1);
                                  begin = v445->__begin_;
                                  v445->__begin_[v395] = -1;
                                  begin[v395 + 1] = 0;
                                  begin[v395 + 2] = 1;
                                  begin[v395 + 3] = 2;
                                  v395 += 4;
                                  v377 = *__dst;
                                }
                              }

                              v369 = vorrq_s8(*(a1 + 768), v384);
                              *(a1 + 768) = v369;
LABEL_597:
                              if (*(a4 + 148))
                              {
                                v386 = *(a4 + 144);
                                if (*(a4 + 208))
                                {
                                  v387 = *(a4 + 144);
                                }

                                else
                                {
                                  v387 = 0;
                                }

                                if (*(a4 + 176) == 0)
                                {
                                  v386 = 0;
                                }

                                v388 = ((*(a4 + 124) + *(a4 + 132) + *(a4 + 140) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136)) + 3) & 0xFFFFFFFC) - v376 + v387 + v386;
                                v390 = *(a4 + 192);
                                v389 = *(a4 + 200);
                                *__dst = v390;
                                *&v462 = v389;
                                while (1)
                                {
                                  if (v390)
                                  {
                                    v391 = __dst;
                                  }

                                  else
                                  {
                                    v390 = v462;
                                    if (!v462)
                                    {
                                      break;
                                    }

                                    v391 = &v462;
                                  }

                                  *v391 = v390 & (v390 - 1);
                                  v392 = *(a1 + 144);
                                  *(v392 + 4 * v388) = -1;
                                  if (*(a1 + 1584) == 1)
                                  {
                                    *(v392 + 4 * (v388 + 1)) = -1;
                                    *(v392 + 4 * (v388 + 2)) = 0;
                                  }

                                  v388 += 4;
                                  v390 = *__dst;
                                }
                              }

                              if (*(a4 + 467) == 1)
                              {
                                v393 = (v246 - *v246);
                                if (*v393 < 0x17u)
                                {
                                  LODWORD(v394) = 0;
                                }

                                else
                                {
                                  v394 = v393[11];
                                  if (v394)
                                  {
                                    v394 = (*(v246 + v394) + 3) >> 2;
                                  }
                                }

                                *(a1 + 408) = v394;
                                *(a1 + 412) = 0;
                              }

                              v398 = (v246 - *v246);
                              if (*v398 >= 0x17u && (v399 = v398[11]) != 0)
                              {
                                v400 = *(v246 + v399) + 3;
                                v401 = (a1 + 176);
                                v402 = *(a1 + 176);
                                v403 = v400 >> 2;
                                *(a1 + 52) = v403;
                                v404 = *(a1 + 168);
                                v405 = (v402 - v404) >> 2;
                                if (v403 > v405)
                                {
                                  std::vector<unsigned int>::__append((a1 + 168), v403 - v405);
                                  goto LABEL_629;
                                }
                              }

                              else
                              {
                                v403 = 0;
                                v401 = (a1 + 176);
                                v406 = *(a1 + 176);
                                *(a1 + 52) = 0;
                                v404 = *(a1 + 168);
                                v405 = (v406 - v404) >> 2;
                              }

                              if (v405 > v403)
                              {
                                *v401 = v404 + 4 * v403;
                              }

LABEL_629:
                              if (v444 != (a4 + 216))
                              {
                                std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v444, *(a4 + 216), *(a4 + 224), (*(a4 + 224) - *(a4 + 216)) >> 2);
                              }

                              if (v443 != (a4 + 240))
                              {
                                std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v443, *(a4 + 240), *(a4 + 248), (*(a4 + 248) - *(a4 + 240)) >> 2);
                              }

                              if (v442 != (a4 + 320))
                              {
                                std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v442, *(a4 + 320), *(a4 + 328), (*(a4 + 328) - *(a4 + 320)) >> 1);
                              }

                              if (v441 != (a4 + 368))
                              {
                                std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v441, *(a4 + 368), *(a4 + 376), (*(a4 + 376) - *(a4 + 368)) >> 1);
                              }

                              *(a1 + 352) = *(a4 + 416);
                              *(a1 + 744) = *(a4 + 160) != 0;
                              *(a1 + 745) = *(a4 + 148) != 0;
                              v407 = *(v246 - *v246 + 24);
                              v408 = *(v246 + v407);
                              v409 = (v246 + v407 + v408);
                              v410 = *v409;
                              if (v410)
                              {
                                v411 = 0;
                                v412 = 4 * v410;
                                v413 = v246 + v407 + v408;
                                do
                                {
                                  v414 = v409[v411 / 4 + 1];
                                  v415 = v414 - *(&v409[v411 / 4 + 1] + v414);
                                  v416 = &v413[v411 + v415];
                                  v417 = *(v416 + 2);
                                  if (v417 >= 5)
                                  {
                                    v418 = *(v416 + 4);
                                    if (v418)
                                    {
                                      if (v417 >= 7 && v413[v411 + 4 + v414 + v418] == 139)
                                      {
                                        if (*&v413[v411 + 10 + v415])
                                        {
                                          v419 = *&v413[v411 + 4 + v414 + *&v413[v411 + 10 + v415]] & 0xFFFFF;
                                          if (v417 >= 0xB)
                                          {
                                            goto LABEL_648;
                                          }
                                        }

                                        else
                                        {
                                          v419 = 0;
                                          if (v417 >= 0xB)
                                          {
LABEL_648:
                                            v420 = *&v413[v411 + 14 + v415];
                                            if (v420 && v413[v411 + 4 + v414 + v420])
                                            {
                                              *(v451 + 8 * (v419 > 0x3F)) |= 1 << v419;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }

                                  v411 += 4;
                                }

                                while (v412 != v411);
                              }

                              v421 = (v458 - *v458);
                              if (*v421 >= 0xDu)
                              {
                                v422 = v421[6];
                                if (v421[6])
                                {
                                  v423 = v458 + v422;
                                  v424 = *(v458 + v422);
                                  if (*(v458 + v422 + v424) > ((*(a1 + 1528) - *(a1 + 1512)) >> 4))
                                  {
                                    operator new();
                                  }

                                  v425 = (v458 - *v458);
                                  if (*v425 >= 0x41u && (v426 = v425[32]) != 0)
                                  {
                                    v427 = v458 + v426 + *(v458 + v426);
                                    if (!*&v423[v424])
                                    {
                                      goto LABEL_679;
                                    }

LABEL_660:
                                    if (v427)
                                    {
                                      v428 = 0;
                                      v429 = v458 + v422 + v424 + 4;
                                      do
                                      {
                                        if (*v427)
                                        {
                                          v430 = *(v427 + 8 * v428 + 4);
                                        }

                                        else
                                        {
                                          v430 = 0;
                                        }

                                        *__dst = *(v429 + 8 * v428);
                                        *&__dst[8] = v430;
                                        std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v453, __dst);
                                        ++v428;
                                      }

                                      while (v428 < *&v423[v424]);
                                    }

                                    else
                                    {
                                      v432 = v458 + v422 + v424 + 4;
                                      do
                                      {
                                        *__dst = *(v432 + 8 * v427);
                                        std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v453, __dst);
                                        ++v427;
                                      }

                                      while (v427 < *&v423[v424]);
                                    }
                                  }

                                  else
                                  {
                                    v427 = 0;
                                    if (*&v423[v424])
                                    {
                                      goto LABEL_660;
                                    }
                                  }
                                }
                              }

LABEL_679:
                              v433 = (v458 - *v458);
                              if (*v433 >= 0xBu)
                              {
                                v434 = v433[5];
                                if (v434)
                                {
                                  v435 = (v458 + v434 + *(v458 + v434));
                                  if (*v435 > ((*(a1 + 1576) - *(a1 + 1560)) >> 4))
                                  {
                                    operator new();
                                  }

                                  if (*v435 > ((*(a1 + 1552) - *(a1 + 1536)) >> 3))
                                  {
                                    operator new();
                                  }

                                  if (*v435)
                                  {
                                    v436 = 0;
                                    v437 = v435 + 1;
                                    do
                                    {
                                      AGX::SamplerDescriptor::SamplerDescriptor(__dst, (v437 + *v437), *v369.i32);
                                      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateBindlessConstantSampler(&v462, v455, __dst);
                                      std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](a1 + 1560, &v462);
                                      v461 = *(v462 + 96);
                                      std::vector<unsigned long long>::push_back[abi:nn200100](v452, &v461);
                                      v438 = *(&v462 + 1);
                                      if (*(&v462 + 1) && !atomic_fetch_add((*(&v462 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                                      {
                                        (v438->__on_zero_shared)(v438);
                                        std::__shared_weak_count::__release_weak(v438);
                                      }

                                      if (SBYTE1(v467) < 0)
                                      {
                                        operator delete(*v465);
                                      }

                                      ++v436;
                                      ++v437;
                                    }

                                    while (v436 < *v435);
                                  }
                                }
                              }

                              *(a1 + 1396) = 0;
                              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(__str.__r_.__value_.__l.__data_);
                              }

                              *a1 = &unk_2A23F77B0;
                              *__dst = *v439;
                              *&__dst[16] = *(v439 + 16);
                              AGX::BlitVertexFastClearProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::BlitVertexFastClearProgramVariantESLState(a1 + 1784, v455, v454, a4, __dst);
                            }
                          }
                        }

                        else
                        {
                          v227 = 0;
                          if (v226 >= 0x43)
                          {
                            goto LABEL_669;
                          }
                        }

                        v228 = 0;
                        goto LABEL_394;
                      }
                    }
                  }
                }

                else
                {
                  *(a1 + 1587) = 0;
                }

                if (v184 < 0x21)
                {
                  goto LABEL_367;
                }

                goto LABEL_364;
              }
            }
          }

          v181 = 0;
          goto LABEL_312;
        }
      }

      v176 = 0;
      LOBYTE(v175) = 0;
      goto LABEL_300;
    }

    v67 = (v66 + *v66);
    v68 = (v67 - *v67);
    v69 = *v68;
    if (v68[2])
    {
      v70 = (v67 + v68[2] + *(v67 + v68[2]));
      if (v69 < 7)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v70 = 0;
      if (v69 < 7)
      {
        goto LABEL_115;
      }
    }

    v71 = v68[3];
    if (v71)
    {
      v72 = v67 + v71 + *(v67 + v71);
      if (!*v70)
      {
        goto LABEL_126;
      }

      goto LABEL_116;
    }

LABEL_115:
    v72 = 0;
    if (!*v70)
    {
      goto LABEL_126;
    }

LABEL_116:
    v73 = 0;
    v74 = v72 + 4;
    v75 = (v70 + 2);
    while (1)
    {
      v76 = *(v75 - 1);
      v77 = strlen(&v75[v76]);
      if (v77 > 0x7FFFFFFFFFFFFFF7)
      {
        break;
      }

      v78 = v77;
      if (v77 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v77;
      if (v77)
      {
        memmove(__dst, &v75[v76], v77);
      }

      __dst[v78] = 0;
      std::vector<std::string>::push_back[abi:nn200100](a1 + 1712, __dst);
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      *__dst = *&v74[4 * v73];
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 1736, __dst);
      ++v73;
      v75 += 4;
      if (v73 >= *v70)
      {
        goto LABEL_126;
      }
    }

LABEL_700:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v28 < 0x45)
  {
    if (v28 < 0x3D)
    {
      LOWORD(v33) = 0;
      if (v28 < 0x3B)
      {
        LODWORD(v35) = 0;
        v36 = 0;
        LOWORD(v32) = 0;
        v34 = 0;
LABEL_56:
        *(a1 + 560) = v35;
        v37 = v33 + v35 - 1;
        v38 = -v35;
        v39 = *(a1 + 568);
        v40 = (v32 | ((v38 & v37) << 32) | (v34 << 48)) + v36 + (v39 & 0xFF000000);
        *(a1 + 568) = v40;
        if (v40 != v39)
        {
          *(a1 + 592) = 0uLL;
          *(a1 + 608) = 0uLL;
          *(a1 + 576) = 0uLL;
          *&v41 = -1;
          *(&v41 + 1) = -1;
          *(a1 + 624) = v41;
          *(a1 + 640) = v41;
          *(a1 + 656) = v41;
          *(a1 + 672) = -1;
        }

        v42 = (v458 - *v458);
        if (*v42 < 0x57u)
        {
          LODWORD(v43) = 0;
        }

        else
        {
          v43 = v42[43];
          if (v43)
          {
            LODWORD(v43) = *(v458 + v43);
          }
        }

        *(a1 + 680) = v43;
        v44 = *v458;
        v26 = -v44;
        v28 = *(v458 - v44);
        goto LABEL_63;
      }

      LOWORD(v32) = 0;
      v34 = v27[29];
      if (!v27[29])
      {
LABEL_41:
        if (v28 < 0x3F)
        {
          LODWORD(v35) = 0;
          v36 = 0;
        }

        else
        {
          v35 = v27[31];
          if (v27[31])
          {
            v35 = *(v458 + v35);
          }

          if (v28 < 0x4B)
          {
            v36 = 0;
          }

          else
          {
            v36 = v27[37];
            if (v27[37])
            {
              v36 = *(v458 + v36) << 16;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_40:
      v34 = *(v458 + v34);
      goto LABEL_41;
    }

    LOWORD(v32) = 0;
    v33 = v27[30];
    if (v27[30])
    {
      goto LABEL_38;
    }
  }

  else
  {
    v32 = v27[34];
    if (v27[34])
    {
      LODWORD(v32) = *(v458 + v32);
    }

    v33 = v27[30];
    if (v27[30])
    {
LABEL_38:
      LODWORD(v33) = *(v458 + v33);
    }
  }

  v34 = v27[29];
  if (!v27[29])
  {
    goto LABEL_41;
  }

  goto LABEL_40;
}

void sub_29CE05EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, char *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, void **a18, void **a19, void **a20, void **a21, uint64_t a22, void **a23, void **a24, void **a25, void **a26, void **a27, uint64_t a28, void **a29, void **a30, uint64_t a31, uint64_t a32, void **a33, uint64_t a34, uint64_t a35, void **a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  CompileStatistics::~CompileStatistics(a17);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a36);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v46 + 1560));
  v48 = *a29;
  if (*a29)
  {
    *(v46 + 1544) = v48;
    operator delete(v48);
  }

  v49 = *a30;
  if (*a30)
  {
    *(v46 + 1520) = v49;
    operator delete(v49);
  }

  if (*a10 < 0)
  {
    operator delete(*a9);
    if ((*(v46 + 919) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v46 + 919) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v46 + 887) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  operator delete(*a24);
  if (*(v46 + 887) < 0)
  {
LABEL_8:
    operator delete(*a25);
    if ((*(v46 + 863) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((*(v46 + 863) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v46 + 839) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_27:
  operator delete(*a26);
  if ((*(v46 + 839) & 0x80000000) == 0)
  {
LABEL_11:
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a33);
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::GlobalBindingTableInfo::~GlobalBindingTableInfo(a11);
    v50 = *a18;
    if (*a18)
    {
      *(v46 + 336) = v50;
      operator delete(v50);
    }

    v51 = *a20;
    if (*a20)
    {
      *(v46 + 312) = v51;
      operator delete(v51);
    }

    v52 = *a19;
    if (*a19)
    {
      *(v46 + 288) = v52;
      operator delete(v52);
    }

    v53 = *a21;
    if (*a21)
    {
      *(v46 + 264) = v53;
      operator delete(v53);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v46 + 168);
    v54 = *a23;
    if (*a23)
    {
      *(v46 + 152) = v54;
      operator delete(v54);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(a34);
    if (a46 < 0)
    {
      operator delete(__p);
    }

    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(*a27);
  goto LABEL_11;
}

void AGX::HAL300::BlitComputeProgramVariant::~BlitComputeProgramVariant(AGX::HAL300::BlitComputeProgramVariant *this)
{
  *this = &unk_2A23F7A10;
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(this + 223);
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitComputeArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(this);

  JUMPOUT(0x29ED520D0);
}

{
  *this = &unk_2A23F7A10;
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(this + 223);

  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitComputeArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(this);
}

unint64_t AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitComputeArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F7A30;
  if (*(a1 + 984))
  {
    v2 = *(a1 + 992);
    v3 = *(v2 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v2;
    v52 = a1 + 960;
    dispatch_sync(v3, &v47);
    *(a1 + 985) = 0u;
    *(a1 + 960) = 0u;
    *(a1 + 976) = 0u;
  }

  if (*(a1 + 1032))
  {
    v4 = *(a1 + 1040);
    v5 = *(v4 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v4;
    v52 = a1 + 1008;
    dispatch_sync(v5, &v47);
    *(a1 + 1033) = 0u;
    *(a1 + 1008) = 0u;
    *(a1 + 1024) = 0u;
  }

  if (*(a1 + 1080))
  {
    v6 = *(a1 + 1088);
    v7 = *(v6 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v6;
    v52 = a1 + 1056;
    dispatch_sync(v7, &v47);
    *(a1 + 1081) = 0u;
    *(a1 + 1072) = 0u;
    *(a1 + 1056) = 0u;
  }

  if (*(a1 + 1128))
  {
    v8 = *(a1 + 1136);
    v9 = *(v8 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v8;
    v52 = a1 + 1104;
    dispatch_sync(v9, &v47);
    *(a1 + 1129) = 0u;
    *(a1 + 1120) = 0u;
    *(a1 + 1104) = 0u;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::unregisterVariantEventInfo(v10, a1);
  }

  if (*(a1 + 1783) < 0)
  {
    operator delete(*(a1 + 1760));
  }

  v11 = *(a1 + 1736);
  if (v11)
  {
    *(a1 + 1744) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 1712);
  if (v12)
  {
    v13 = *(a1 + 1720);
    v14 = *(a1 + 1712);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = *(a1 + 1712);
    }

    *(a1 + 1720) = v12;
    operator delete(v14);
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 1600));
  v16 = *(a1 + 1560);
  if (v16)
  {
    v17 = *(a1 + 1568);
    v18 = *(a1 + 1560);
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 8);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *(a1 + 1560);
    }

    *(a1 + 1568) = v16;
    operator delete(v18);
  }

  v20 = *(a1 + 1536);
  if (v20)
  {
    *(a1 + 1544) = v20;
    operator delete(v20);
  }

  v21 = *(a1 + 1512);
  if (v21)
  {
    *(a1 + 1520) = v21;
    operator delete(v21);
  }

  if (*(a1 + 1423) < 0)
  {
    operator delete(*(a1 + 1400));
    if ((*(a1 + 919) & 0x80000000) == 0)
    {
LABEL_38:
      if ((*(a1 + 887) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_92;
    }
  }

  else if ((*(a1 + 919) & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  operator delete(*(a1 + 896));
  if ((*(a1 + 887) & 0x80000000) == 0)
  {
LABEL_39:
    if ((*(a1 + 863) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

LABEL_93:
    operator delete(*(a1 + 840));
    if ((*(a1 + 839) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_94;
  }

LABEL_92:
  operator delete(*(a1 + 864));
  if (*(a1 + 863) < 0)
  {
    goto LABEL_93;
  }

LABEL_40:
  if ((*(a1 + 839) & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

LABEL_94:
  operator delete(*(a1 + 816));
LABEL_41:
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 544));
  v22 = *(a1 + 512);
  if (v22)
  {
    *(a1 + 520) = v22;
    operator delete(v22);
  }

  v23 = *(a1 + 472);
  if (v23)
  {
    *(a1 + 480) = v23;
    operator delete(v23);
  }

  v24 = *(a1 + 448);
  if (v24)
  {
    v25 = *(a1 + 456);
    v26 = *(a1 + 448);
    if (v25 != v24)
    {
      do
      {
        v27 = *(v25 - 24);
        if (v27)
        {
          *(v25 - 16) = v27;
          operator delete(v27);
        }

        v25 -= 32;
      }

      while (v25 != v24);
      v26 = *(a1 + 448);
    }

    *(a1 + 456) = v24;
    operator delete(v26);
  }

  v28 = *(a1 + 424);
  if (v28)
  {
    *(a1 + 432) = v28;
    operator delete(v28);
  }

  v29 = *(a1 + 328);
  if (v29)
  {
    *(a1 + 336) = v29;
    operator delete(v29);
  }

  v30 = *(a1 + 304);
  if (v30)
  {
    *(a1 + 312) = v30;
    operator delete(v30);
  }

  v31 = *(a1 + 280);
  if (v31)
  {
    *(a1 + 288) = v31;
    operator delete(v31);
  }

  v32 = *(a1 + 256);
  if (v32)
  {
    *(a1 + 264) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 216);
  if (v33)
  {
    *(a1 + 224) = v33;
    operator delete(v33);
  }

  v34 = *(a1 + 192);
  if (v34)
  {
    v35 = *(a1 + 200);
    v36 = *(a1 + 192);
    if (v35 != v34)
    {
      do
      {
        v37 = *(v35 - 24);
        if (v37)
        {
          *(v35 - 16) = v37;
          operator delete(v37);
        }

        v35 -= 32;
      }

      while (v35 != v34);
      v36 = *(a1 + 192);
    }

    *(a1 + 200) = v34;
    operator delete(v36);
  }

  v38 = *(a1 + 168);
  if (v38)
  {
    *(a1 + 176) = v38;
    operator delete(v38);
  }

  v39 = *(a1 + 144);
  if (v39)
  {
    *(a1 + 152) = v39;
    operator delete(v39);
  }

  v40 = *(a1 + 104);
  if (v40)
  {
    *(a1 + 112) = v40;
    operator delete(v40);
  }

  v41 = *(a1 + 80);
  if (v41)
  {
    v42 = *(a1 + 88);
    v43 = *(a1 + 80);
    if (v42 != v41)
    {
      do
      {
        v44 = *(v42 - 24);
        if (v44)
        {
          *(v42 - 16) = v44;
          operator delete(v44);
        }

        v42 -= 32;
      }

      while (v42 != v41);
      v43 = *(a1 + 80);
    }

    *(a1 + 88) = v41;
    operator delete(v43);
  }

  v45 = *(a1 + 56);
  if (v45)
  {
    *(a1 + 64) = v45;
    operator delete(v45);
  }

  return a1;
}

void AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitComputeArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(unint64_t a1)
{
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitComputeArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

void AGX::BlitComputeProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~BlitComputeProgramVariant(void *a1)
{
  *a1 = &unk_2A23F7A10;
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(a1 + 223);
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitComputeArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

unint64_t AGX::BlitComputeProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~BlitComputeProgramVariant(void *a1)
{
  *a1 = &unk_2A23F7A10;
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(a1 + 223);

  return AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitComputeArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);
}

unint64_t AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitComputeArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::ProgramVariant(unint64_t a1, uint64_t a2, void *a3, const std::string *a4, uint64_t a5)
{
  v9 = 0;
  v475 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A23F7A30;
  *(a1 + 8) = a2;
  *(a1 + 56) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 233) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 489) = 0u;
  v465 = a1 + 544;
  *(a1 + 536) = a1 + 544;
  *(a1 + 560) = 0xFFFFFFFF00000001;
  *(a1 + 568) = 1610612736;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 672) = -1;
  *&v10 = -1;
  *(&v10 + 1) = -1;
  *(a1 + 640) = v10;
  *(a1 + 656) = v10;
  *(a1 + 608) = 0u;
  *(a1 + 624) = v10;
  *(a1 + 680) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 808) = atomic_fetch_add((a2 + 17008), 1uLL);
  *(a1 + 896) = 0;
  v456 = (a1 + 896);
  *(a1 + 904) = 0u;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1376) = 0;
  *(a1 + 1360) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1392) = 0;
  *(a1 + 1396) = 0;
  v11 = (a1 + 1423);
  *(a1 + 1400) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  v459 = (a1 + 816);
  *(a1 + 873) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0;
  *(a1 + 1468) = 0u;
  *(a1 + 1439) = 0u;
  *(a1 + 1455) = 0u;
  *(a1 + 1423) = 0u;
  *(a1 + 1504) = 0;
  *(a1 + 1488) = 0u;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1560) = 0u;
  v449 = a1 + 1512;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = *(a5 + 465);
  *(a1 + 1586) = 0;
  *(a1 + 1600) = 0u;
  v468 = (a1 + 1600);
  *(a1 + 1592) = a1 + 1600;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1728) = 0u;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0;
  if (a3[28])
  {
    v12 = a3[29] == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = 98;
  if (!v12)
  {
    v13 = 28;
  }

  v14 = a3 + 98;
  if (!v12)
  {
    v14 = a3 + 28;
  }

  v15 = a3[v13];
  if (v15 && v14[1])
  {
    v9 = (v15 + *v15);
  }

  v16 = (v9 - *v9);
  if (*v16 >= 5u && (v17 = v16[2]) != 0)
  {
    v18 = (v9 + v17 + *(v9 + v17));
  }

  else
  {
    v18 = 0;
  }

  v19 = 0;
  v20 = a3 + 128;
  if (a3[58])
  {
    v21 = a3[59] == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = 58;
  if (v21)
  {
    v22 = 128;
  }

  else
  {
    v20 = a3 + 58;
  }

  v23 = a3[v22];
  if (v23 && v20[1])
  {
    v19 = (v23 + *v23);
  }

  v24 = (v19 - *v19);
  if (*v24 >= 5u && (v25 = v24[2]) != 0)
  {
    v26 = (v19 + v25 + *(v19 + v25));
  }

  else
  {
    v26 = 0;
  }

  v27 = *v26;
  v28 = -v27;
  v29 = (v26 - v27);
  v30 = *(v26 - v27);
  if (v30 < 0x25)
  {
    LOBYTE(v31) = 0;
  }

  else
  {
    v31 = v29[18];
    if (v29[18])
    {
      LOBYTE(v31) = *(v26 + v31) != 0;
    }
  }

  *(a1 + 1585) = v31;
  v32 = (v18 - *v18);
  if (*v32 >= 0x55u)
  {
    v33 = v32[42];
    if (v33)
    {
      if (*(v18 + v33))
      {
        if (v30 < 0x45)
        {
          if (v30 < 0x3D)
          {
            LOWORD(v35) = 0;
            if (v30 < 0x3B)
            {
              LODWORD(v37) = 0;
              v38 = 0;
              LOWORD(v34) = 0;
              v36 = 0;
LABEL_57:
              *(a1 + 560) = v37;
              v39 = v35 + v37 - 1;
              v40 = -v37;
              v41 = *(a1 + 568);
              v42 = (v34 | ((v40 & v39) << 32) | (v36 << 48)) + v38 + (v41 & 0xFF000000);
              *(a1 + 568) = v42;
              if (v42 != v41)
              {
                *(a1 + 592) = 0uLL;
                *(a1 + 608) = 0uLL;
                *(a1 + 576) = 0uLL;
                *&v43 = -1;
                *(&v43 + 1) = -1;
                *(a1 + 624) = v43;
                *(a1 + 640) = v43;
                *(a1 + 656) = v43;
                *(a1 + 672) = -1;
              }

              v44 = (v26 - *v26);
              if (*v44 < 0x57u)
              {
                LODWORD(v45) = 0;
              }

              else
              {
                v45 = v44[43];
                if (v45)
                {
                  LODWORD(v45) = *(v26 + v45);
                }
              }

              *(a1 + 680) = v45;
              v46 = *v26;
              v28 = -v46;
              v30 = *(v26 - v46);
              goto LABEL_64;
            }

            LOWORD(v34) = 0;
            v36 = v29[29];
            if (!v29[29])
            {
LABEL_42:
              if (v30 < 0x3F)
              {
                LODWORD(v37) = 0;
                v38 = 0;
              }

              else
              {
                v37 = v29[31];
                if (v29[31])
                {
                  v37 = *(v26 + v37);
                }

                if (v30 < 0x4B)
                {
                  v38 = 0;
                }

                else
                {
                  v38 = v29[37];
                  if (v29[37])
                  {
                    v38 = *(v26 + v38) << 16;
                  }
                }
              }

              goto LABEL_57;
            }

LABEL_41:
            v36 = *(v26 + v36);
            goto LABEL_42;
          }

          LOWORD(v34) = 0;
          v35 = v29[30];
          if (v29[30])
          {
            goto LABEL_39;
          }
        }

        else
        {
          v34 = v29[34];
          if (v29[34])
          {
            LODWORD(v34) = *(v26 + v34);
          }

          v35 = v29[30];
          if (v29[30])
          {
LABEL_39:
            LODWORD(v35) = *(v26 + v35);
          }
        }

        v36 = v29[29];
        if (!v29[29])
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }
  }

LABEL_64:
  if (v30 < 7)
  {
    LODWORD(v47) = 0;
  }

  else
  {
    v47 = *(v26 + v28 + 6);
    if (*(v26 + v28 + 6))
    {
      LODWORD(v47) = *(v26 + v47);
    }
  }

  v454 = (a1 + 304);
  v455 = (a1 + 256);
  v452 = (a1 + 328);
  v453 = (a1 + 280);
  *(a1 + 800) = v47;
  v48 = (v26 - *v26);
  if (*v48 >= 0x13u && (v49 = v48[9]) != 0)
  {
    v50 = v26 + v49 + *(v26 + v49) + 4;
  }

  else
  {
    v50 = "";
  }

  v457 = (a1 + 864);
  v458 = (a1 + 840);
  v51 = (a1 + 1400);
  v448 = a1 + 1536;
  v451 = (a1 + 1616);
  v466 = (a1 + 56);
  v460 = (a1 + 144);
  MEMORY[0x29ED51E00](v459, v50);
  v52 = (v26 - *v26);
  if (*v52 >= 9u && (v53 = v52[4]) != 0)
  {
    v54 = v26 + v53 + *(v26 + v53) + 4;
  }

  else
  {
    v54 = "";
  }

  MEMORY[0x29ED51E00](v458, v54);
  v55 = (v26 - *v26);
  if (*v55 < 0x29u)
  {
    LOBYTE(v56) = 0;
  }

  else
  {
    v56 = v55[20];
    if (v56)
    {
      LOBYTE(v56) = *(v26 + v56) != 0;
    }
  }

  *(a1 + 888) = v56;
  std::string::operator=(v457, a4);
  v57 = (v26 - *v26);
  if (*v57 >= 0x51u && (v58 = v57[40]) != 0)
  {
    v59 = v26 + v58 + *(v26 + v58) + 4;
  }

  else
  {
    v59 = "";
  }

  MEMORY[0x29ED51E00](v456, v59);
  v60 = (v26 - *v26);
  v467 = v18;
  if (*v60 >= 5u && v60[2] && *(a2 + 16608) == 1)
  {
    v61 = a3[1];
    if (v61 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_718;
    }

    v62 = *a3;
    if (v61 >= 0x17)
    {
      operator new();
    }

    __dst[23] = a3[1];
    if (v61)
    {
      memmove(__dst, v62, v61);
    }

    __dst[v61] = 0;
    if (*v11 < 0)
    {
      operator delete(*v51);
    }

    *v51 = *__dst;
    *(a1 + 1416) = *&__dst[16];
    v63 = a3[3];
    if (a3[4])
    {
      v64 = v63 == 0;
    }

    else
    {
      v64 = 1;
    }

    if (v64)
    {
      v63 = a3[73];
    }

    *(a1 + 1424) = v63 - *a3;
  }

  v462 = a3;
  v464 = v26;
  v65 = a3 + 113;
  if (a3[43])
  {
    v66 = a3[44] == 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = 43;
  if (v66)
  {
    v67 = 113;
  }

  else
  {
    v65 = a3 + 43;
  }

  v68 = a3[v67];
  if (!v68 || !v65[1])
  {
    goto LABEL_127;
  }

  v69 = (v68 + *v68);
  v70 = (v69 - *v69);
  v71 = *v70;
  if (v70[2])
  {
    v72 = (v69 + v70[2] + *(v69 + v70[2]));
    if (v71 < 7)
    {
      goto LABEL_116;
    }
  }

  else
  {
    v72 = 0;
    if (v71 < 7)
    {
      goto LABEL_116;
    }
  }

  v73 = v70[3];
  if (v73)
  {
    v74 = v69 + v73 + *(v69 + v73);
    if (!*v72)
    {
      goto LABEL_127;
    }

    goto LABEL_117;
  }

LABEL_116:
  v74 = 0;
  if (*v72)
  {
LABEL_117:
    v75 = 0;
    v76 = v74 + 4;
    v77 = (v72 + 2);
    while (1)
    {
      v78 = *(v77 - 1);
      v79 = strlen(&v77[v78]);
      if (v79 > 0x7FFFFFFFFFFFFFF7)
      {
        break;
      }

      v80 = v79;
      if (v79 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v79;
      if (v79)
      {
        memmove(__dst, &v77[v78], v79);
      }

      __dst[v80] = 0;
      std::vector<std::string>::push_back[abi:nn200100](a1 + 1712, __dst);
      v18 = v467;
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      *__dst = *&v76[4 * v75];
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 1736, __dst);
      ++v75;
      v77 += 4;
      if (v75 >= *v72)
      {
        goto LABEL_127;
      }
    }

LABEL_718:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_127:
  v81 = v462;
  v82 = v462 + 138;
  if (v462[68])
  {
    v83 = v462[69] == 0;
  }

  else
  {
    v83 = 1;
  }

  v84 = 68;
  if (v83)
  {
    v84 = 138;
  }

  else
  {
    v82 = v462 + 68;
  }

  v85 = v462[v84];
  v86 = v82[1];
  if (v85)
  {
    v87 = v86 == 0;
  }

  else
  {
    v87 = 1;
  }

  if (v87 || (v88 = (v85 + *v85), v89 = (v88 - *v88), *v89 < 5u) || (v90 = v89[2]) == 0)
  {
    v91 = 0;
  }

  else
  {
    v91 = *(v88 + v90);
  }

  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  v92 = v464;
  *(a1 + 1624) = (v91 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0) / 1000000.0;
  v93 = (v18 - *v18);
  if (*v93 < 5u)
  {
    LODWORD(v94) = 0;
  }

  else
  {
    v94 = v93[2];
    if (v94)
    {
      LODWORD(v94) = *(v18 + v94);
    }
  }

  *v451 = v94;
  v95 = (v18 - *v18);
  if (*v95 < 0x2Du)
  {
    LODWORD(v96) = 0;
  }

  else
  {
    v96 = v95[22];
    if (v96)
    {
      LODWORD(v96) = *(v18 + v96);
    }
  }

  *(a1 + 1620) = v96;
  v97 = (v18 - *v18);
  if (*v97 < 0x35u)
  {
    LODWORD(v98) = 0;
  }

  else
  {
    v98 = v97[26];
    if (v98)
    {
      LODWORD(v98) = *(v18 + v98);
    }
  }

  *(a1 + 1660) = v98;
  v99 = (v18 - *v18);
  if (*v99 < 0x43u)
  {
    LODWORD(v100) = 0;
  }

  else
  {
    v100 = v99[33];
    if (v100)
    {
      LODWORD(v100) = *(v18 + v100);
    }
  }

  *(a1 + 1696) = v100;
  v101 = v462 + 108;
  if (v462[38])
  {
    v102 = v462[39] == 0;
  }

  else
  {
    v102 = 1;
  }

  v103 = 38;
  if (v102)
  {
    v103 = 108;
  }

  else
  {
    v101 = v462 + 38;
  }

  v104 = v462[v103];
  if (v104 && v101[1])
  {
    v105 = (v104 + *v104);
    v106 = (v105 - *v105);
    if (*v106 < 0xDu)
    {
      LODWORD(v107) = 0;
    }

    else
    {
      v107 = v106[6];
      if (v107)
      {
        LODWORD(v107) = *(v105 + v107);
      }
    }

    *(a1 + 1620) = v107;
    v108 = (v105 - *v105);
    if (*v108 < 0xBu)
    {
      LODWORD(v109) = 0;
    }

    else
    {
      v109 = v108[5];
      if (v109)
      {
        LODWORD(v109) = *(v105 + v109);
      }
    }

    *(a1 + 1628) = v109;
    v110 = (v105 - *v105);
    if (*v110 < 0x11u)
    {
      LODWORD(v111) = 0;
    }

    else
    {
      v111 = v110[8];
      if (v111)
      {
        LODWORD(v111) = *(v105 + v111);
      }
    }

    *(a1 + 1632) = v111;
    v112 = (v105 - *v105);
    if (*v112 < 0x13u)
    {
      LODWORD(v113) = 0;
    }

    else
    {
      v113 = v112[9];
      if (v113)
      {
        LODWORD(v113) = *(v105 + v113);
      }
    }

    *(a1 + 1636) = v113;
    v114 = (v105 - *v105);
    if (*v114 < 0x17u)
    {
      LODWORD(v115) = 0;
    }

    else
    {
      v115 = v114[11];
      if (v115)
      {
        LODWORD(v115) = *(v105 + v115);
      }
    }

    *(a1 + 1640) = v115;
    v116 = (v105 - *v105);
    if (*v116 < 0x1Bu)
    {
      LODWORD(v117) = 0;
    }

    else
    {
      v117 = v116[13];
      if (v117)
      {
        LODWORD(v117) = *(v105 + v117);
      }
    }

    *(a1 + 1644) = v117;
    v118 = (v105 - *v105);
    if (*v118 < 0x15u)
    {
      LODWORD(v119) = 0;
    }

    else
    {
      v119 = v118[10];
      if (v119)
      {
        LODWORD(v119) = *(v105 + v119);
      }
    }

    *(a1 + 1648) = v119;
    v120 = (v105 - *v105);
    if (*v120 < 0x19u)
    {
      LODWORD(v121) = 0;
    }

    else
    {
      v121 = v120[12];
      if (v121)
      {
        LODWORD(v121) = *(v105 + v121);
      }
    }

    *(a1 + 1652) = v121;
    v122 = (v105 - *v105);
    if (*v122 < 0x1Du)
    {
      LODWORD(v123) = 0;
    }

    else
    {
      v123 = v122[14];
      if (v123)
      {
        LODWORD(v123) = *(v105 + v123);
      }
    }

    *(a1 + 1656) = v123;
    v124 = (v105 - *v105);
    if (*v124 < 0xFu)
    {
      LODWORD(v125) = 0;
    }

    else
    {
      v125 = v124[7];
      if (v125)
      {
        LODWORD(v125) = *(v105 + v125);
      }
    }

    *(a1 + 1660) = v125;
    v126 = (v105 - *v105);
    if (*v126 < 0x1Fu)
    {
      LODWORD(v127) = 0;
    }

    else
    {
      v127 = v126[15];
      if (v127)
      {
        LODWORD(v127) = *(v105 + v127);
      }
    }

    *(a1 + 1664) = v127;
    v128 = (v105 - *v105);
    if (*v128 < 0x21u)
    {
      LODWORD(v129) = 0;
    }

    else
    {
      v129 = v128[16];
      if (v129)
      {
        LODWORD(v129) = *(v105 + v129);
      }
    }

    *(a1 + 1668) = v129;
    v130 = (v105 - *v105);
    if (*v130 < 0x23u)
    {
      LODWORD(v131) = 0;
    }

    else
    {
      v131 = v130[17];
      if (v131)
      {
        LODWORD(v131) = *(v105 + v131);
      }
    }

    *(a1 + 1672) = v131;
    v132 = (v105 - *v105);
    if (*v132 < 0x25u)
    {
      LODWORD(v133) = 0;
    }

    else
    {
      v133 = v132[18];
      if (v133)
      {
        LODWORD(v133) = *(v105 + v133);
      }
    }

    *(a1 + 1676) = v133;
    v134 = (v105 - *v105);
    if (*v134 < 0x27u)
    {
      LODWORD(v135) = 0;
    }

    else
    {
      v135 = v134[19];
      if (v135)
      {
        LODWORD(v135) = *(v105 + v135);
      }
    }

    *(a1 + 1680) = v135;
    v136 = (v105 - *v105);
    if (*v136 < 0x29u)
    {
      LODWORD(v137) = 0;
    }

    else
    {
      v137 = v136[20];
      if (v137)
      {
        LODWORD(v137) = *(v105 + v137);
      }
    }

    *(a1 + 1684) = v137;
    v138 = (v105 - *v105);
    if (*v138 < 0x2Bu)
    {
      LODWORD(v139) = 0;
    }

    else
    {
      v139 = v138[21];
      if (v139)
      {
        LODWORD(v139) = *(v105 + v139);
      }
    }

    *(a1 + 1688) = v139;
    v140 = (v105 - *v105);
    if (*v140 < 7u)
    {
      LODWORD(v141) = 0;
    }

    else
    {
      v141 = v140[3];
      if (v141)
      {
        LODWORD(v141) = *(v105 + v141);
      }
    }

    *(a1 + 1692) = v141;
    v142 = (v105 - *v105);
    if (*v142 >= 5u && (v143 = v142[2]) != 0)
    {
      v144 = *(v105 + v143);
    }

    else
    {
      v144 = 0;
    }

    *(a1 + 1700) = v144;
  }

  if (v462[53])
  {
    v145 = v462[54];
    if (v145)
    {
      v146 = v462[53];
    }

    else
    {
      v146 = v462[123];
    }

    if (v145)
    {
      v147 = v462 + 53;
    }

    else
    {
      v147 = v462 + 123;
    }
  }

  else
  {
    v147 = v462 + 123;
    v146 = v462[123];
  }

  MEMORY[0x29ED51E10](a1 + 1760, v146, v147[1]);
  std::string::push_back((a1 + 1760), 0);
  v148 = *v18;
  v149 = v18 - v148;
  v150 = *(v18 - v148);
  if (v150 < 0x39)
  {
    goto LABEL_270;
  }

  v151 = -v148;
  v152 = *(v149 + 28);
  if (v152)
  {
    v153 = (v18 + v152 + *(v18 + v152));
    if (*v153)
    {
      *(a1 + 1504) = 1;
      v154 = (v153 + v153[1] + 4);
      v155 = (v154 - *v154);
      if (*v155 >= 9u && (v156 = v155[4]) != 0)
      {
        v157 = *(v154 + v156);
      }

      else
      {
        v157 = 0;
      }

      *(a1 + 1704) = v157;
      *(a1 + 1708) = 1;
      v158 = *v18;
      v151 = -v158;
      v150 = *(v18 - v158);
    }
  }

  if (v150 < 0x3B)
  {
    goto LABEL_270;
  }

  v159 = v18 + v151;
  if (*(v159 + 29))
  {
    v160 = (v18 + *(v159 + 29) + *(v18 + *(v159 + 29)));
    v161 = *v160;
    if (v161)
    {
      v162 = v160 + 1;
      do
      {
        v164 = *v162++;
        v163 = v164;
        if (!(v164 >> 20))
        {
          *(a1 + 1488 + 8 * (v163 > 0x3F)) |= 1 << v163;
        }

        --v161;
      }

      while (v161);
    }
  }

  if (v150 < 0x57)
  {
LABEL_270:
    LODWORD(v165) = 0;
  }

  else
  {
    v165 = *(v159 + 43);
    if (*(v159 + 43))
    {
      LODWORD(v165) = *(v18 + v165);
    }
  }

  *(a1 + 692) = v165;
  v166 = (v18 - *v18);
  if (*v166 >= 0x21u && (v167 = v166[16]) != 0)
  {
    v168 = *(v18 + v167);
  }

  else
  {
    v168 = 0;
  }

  {
    getAdditionalSpillBufferBytes(void)::extra = 0;
  }

  *(a1 + 696) = getAdditionalSpillBufferBytes(void)::extra + v168;
  v169 = (v18 - *v18);
  if (*v169 < 0x59u)
  {
    LODWORD(v170) = 0;
  }

  else
  {
    v170 = v169[44];
    if (v170)
    {
      LODWORD(v170) = *(v18 + v170);
    }
  }

  *(a1 + 720) = v170;
  v171 = (v18 - *v18);
  if (*v171 < 0x51u)
  {
    LODWORD(v172) = 0;
  }

  else
  {
    v172 = v171[40];
    if (v172)
    {
      LODWORD(v172) = *(v18 + v172);
    }
  }

  *(a1 + 724) = v172;
  v173 = (v18 - *v18);
  if (*v173 < 0x4Bu)
  {
    LODWORD(v174) = 0;
  }

  else
  {
    v174 = v173[37];
    if (v174)
    {
      LODWORD(v174) = *(v18 + v174);
    }
  }

  *(a1 + 732) = v174;
  v175 = (v18 - *v18);
  v176 = *v175;
  if (v176 < 0x25)
  {
    goto LABEL_298;
  }

  if (v175[18] && *(v18 + v175[18]))
  {
    if (v176 < 0x27)
    {
      LOBYTE(v177) = 0;
      v178 = 1;
      goto LABEL_299;
    }

    v177 = v175[19];
    goto LABEL_293;
  }

  if (v176 < 0x27)
  {
LABEL_298:
    v178 = 0;
    LOBYTE(v177) = 0;
    goto LABEL_299;
  }

  v177 = v175[19];
  if (v175[19] && *(v18 + v175[19]))
  {
    v178 = 1;
    LOBYTE(v177) = 1;
    goto LABEL_299;
  }

  if (v176 < 0x29)
  {
    goto LABEL_714;
  }

  if (v175[20] && *(v18 + v175[20]))
  {
LABEL_293:
    v178 = 1;
    goto LABEL_715;
  }

  if (v176 >= 0x71 && (v439 = v175[56]) != 0)
  {
    v178 = *(v18 + v439) != 0;
  }

  else
  {
LABEL_714:
    v178 = 0;
  }

LABEL_715:
  if (v177)
  {
    LOBYTE(v177) = *(v18 + v177) != 0;
  }

LABEL_299:
  *(a1 + 742) = v177;
  v179 = (v464 - *v464);
  v180 = *v179;
  if (v180 < 0x21)
  {
    v182 = 0;
    LODWORD(v181) = 0;
LABEL_310:
    v183 = 0;
    goto LABEL_311;
  }

  v181 = v179[16];
  if (v179[16])
  {
    LODWORD(v181) = *(v464 + v181);
  }

  if (v180 < 0x4D)
  {
    v182 = 0;
    goto LABEL_310;
  }

  v182 = v179[38];
  if (v179[38])
  {
    v182 = *(v464 + v182);
  }

  if (v180 < 0x4F)
  {
    goto LABEL_310;
  }

  v183 = v179[39];
  if (v183)
  {
    v183 = *(v464 + v183);
  }

LABEL_311:
  *(a1 + 784) = v181 | (v182 << 32);
  *(a1 + 792) = v183;
  *(a1 + 746) = (v178 | v177) & 1;
  v184 = *v18;
  v185 = (v18 - v184);
  v186 = *(v18 - v184);
  if (v186 < 0x37)
  {
    LOBYTE(v187) = 0;
  }

  else
  {
    v187 = v185[27];
    if (v185[27])
    {
      LOBYTE(v187) = *(v18 + v187) != 0;
    }
  }

  *(a1 + 741) = v187;
  v188 = (v464 - *v464);
  v189 = *v188;
  if (v189 < 0x33)
  {
    LOBYTE(v190) = 0;
  }

  else
  {
    v190 = v188[25];
    if (v188[25])
    {
      LOBYTE(v190) = *(v464 + v190) != 0;
    }
  }

  *(a1 + 747) = v190;
  if (v186 < 0x3F)
  {
    LOBYTE(v191) = 0;
  }

  else
  {
    v191 = v185[31];
    if (v185[31])
    {
      v192 = (v18 + v191 + *(v18 + v191));
      v191 = *v192;
      if (v191)
      {
        v193 = v192 + 1;
        while (1)
        {
          v195 = *v193++;
          v194 = v195;
          if (v195 < 0x36 && ((0x3F000000000777uLL >> v194) & 1) != 0)
          {
            break;
          }

          if (!--v191)
          {
            goto LABEL_328;
          }
        }

        LOBYTE(v191) = 1;
      }
    }
  }

LABEL_328:
  *(a1 + 749) = v191;
  if (v189 <= 0x14)
  {
    LOBYTE(v197) = 0;
    *(a1 + 743) = 0;
  }

  else
  {
    v196 = v188[10];
    if (v188[10])
    {
      LOBYTE(v196) = *(v464 + v196) != 0;
    }

    *(a1 + 743) = v196;
    if (v189 < 0x25)
    {
      LOBYTE(v197) = 0;
    }

    else
    {
      v197 = v188[18];
      if (v188[18])
      {
        LOBYTE(v197) = *(v464 + v197) != 0;
      }
    }
  }

  v198 = -v184;
  *(a1 + 1585) = v197;
  if (v186 < 0x5D)
  {
    LOBYTE(v199) = 0;
  }

  else
  {
    v199 = v185[46];
    if (v199)
    {
      LOBYTE(v199) = *(v18 + v199) != 0;
    }
  }

  v450 = v178;
  *(a1 + 748) = v199;
  if (v189 >= 0x23 && (v200 = v188[17]) != 0)
  {
    *(a1 + 1587) = 1;
    v201 = (v464 + v200 + *(v464 + v200));
    v202 = *v201;
    if (v202)
    {
      v203 = &v201[v202];
      while (1)
      {
        v204 = v201[1];
        v205 = (++v201 + v204);
        v206 = (v205 - *v205);
        v207 = *v206;
        if (v207 < 7)
        {
          v208 = 0;
          v210 = 0;
          if (v207 < 5)
          {
            goto LABEL_352;
          }

          v209 = v206[2];
          if (v209)
          {
            goto LABEL_351;
          }
        }

        else if (v206[3])
        {
          v208 = *(v205 + v206[3]);
          v209 = v206[2];
          if (v209)
          {
            goto LABEL_351;
          }
        }

        else
        {
          v208 = 0;
          v209 = v206[2];
          if (v209)
          {
LABEL_351:
            v210 = *(v205 + v209);
            goto LABEL_352;
          }
        }

        v210 = 0;
LABEL_352:
        v211 = v468;
LABEL_353:
        v212 = *v211;
        if (!*v211)
        {
LABEL_357:
          operator new();
        }

        while (1)
        {
          v211 = v212;
          v213 = *(v212 + 28);
          if (v210 < v213)
          {
            goto LABEL_353;
          }

          if (v213 >= v210)
          {
            break;
          }

          v212 = v211[1];
          if (!v212)
          {
            goto LABEL_357;
          }
        }

        v214 = v211;
        v81 = v462;
        v92 = v464;
        *(v214 + 8) = v208;
        if (v201 == v203)
        {
          v18 = v467;
          v215 = *v467;
          v198 = -v215;
          v186 = *(v467 - v215);
          break;
        }
      }
    }
  }

  else
  {
    *(a1 + 1587) = 0;
  }

  if (v186 >= 0x21 && *(v18 + v198 + 32))
  {
    v216 = *(v18 + *(v18 + v198 + 32));
  }

  else
  {
    v216 = 0;
  }

  {
    getAdditionalSpillBufferBytes(void)::extra = 0;
  }

  v217 = getAdditionalSpillBufferBytes(void)::extra + v216;
  *(a1 + 688) = getAdditionalSpillBufferBytes(void)::extra + v216;
  v218 = (v18 - *v18);
  if (*v218 < 0x43u)
  {
    LODWORD(v219) = 0;
  }

  else
  {
    v219 = v218[33];
    if (v219)
    {
      LODWORD(v219) = *(v18 + v219);
    }
  }

  *(a1 + 700) = v219;
  v220 = (v18 - *v18);
  if (*v220 < 5u)
  {
    LODWORD(v221) = 0;
  }

  else
  {
    v221 = v220[2];
    if (v221)
    {
      LODWORD(v221) = *(v18 + v221);
    }
  }

  *(a1 + 684) = v221;
  v222 = (v18 - *v18);
  if (*v222 < 0x51u)
  {
    LODWORD(v223) = 0;
  }

  else
  {
    v223 = v222[40];
    if (v223)
    {
      LODWORD(v223) = *(v18 + v223);
    }
  }

  *(a1 + 716) = v223;
  v224 = (v18 - *v18);
  if (*v224 < 0x4Fu)
  {
    LODWORD(v225) = 0;
  }

  else
  {
    v225 = v224[39];
    if (v225)
    {
      LODWORD(v225) = *(v18 + v225);
    }
  }

  *(a1 + 728) = v225;
  *(a1 + 736) = *(a5 + 468);
  v226 = (v18 - *v18);
  if ((*(v18 + v226[6] + *(v18 + v226[6])) | v217) != 0 || v450)
  {
    goto LABEL_396;
  }

  v227 = *v226;
  if (v227 < 0x21)
  {
    v228 = 0;
    goto LABEL_390;
  }

  if (v226[16])
  {
    v228 = *(v18 + v226[16]);
    if (v227 < 0x43)
    {
      goto LABEL_390;
    }
  }

  else
  {
    v228 = 0;
    if (v227 < 0x43)
    {
      goto LABEL_390;
    }
  }

  if (v226[33])
  {
    v229 = *(v18 + v226[33]);
    goto LABEL_391;
  }

LABEL_390:
  v229 = 0;
LABEL_391:
  {
    getAdditionalSpillBufferBytes(void)::extra = 0;
  }

  if (v229 + v228 + getAdditionalSpillBufferBytes(void)::extra)
  {
LABEL_396:
    LOBYTE(v231) = 1;
    goto LABEL_397;
  }

  v230 = (v18 - *v18);
  if (*v230 < 0x5Fu)
  {
    LOBYTE(v231) = 0;
  }

  else
  {
    v231 = v230[47];
    if (v231)
    {
      LOBYTE(v231) = *(v18 + v231) != 0;
    }
  }

LABEL_397:
  *(a1 + 740) = v231;
  v232 = (v92 - *v92);
  if (*v232 < 0x11u)
  {
    LODWORD(v233) = 0;
  }

  else
  {
    v233 = v232[8];
    if (v233)
    {
      LODWORD(v233) = *(v92 + v233);
    }
  }

  v234 = (a1 + 1200);
  *(a1 + 1392) = v233;
  {
  }

  v235 = v81 + 3;
  if (v81[4])
  {
    v236 = v81[3] == 0;
  }

  else
  {
    v236 = 1;
  }

  v237 = v81 + 73;
  if (v236)
  {
    v238 = v81 + 73;
  }

  else
  {
    v238 = v81 + 3;
  }

  AGX::Heap<true>::allocateImpl(__dst, a2 + 6496, v238[1], (a1 + 1448));
  *(a1 + 1480) += *&__dst[16];
  v239 = *&__dst[16];
  *v234 = *__dst;
  *(a1 + 1216) = v239;
  *(a1 + 1225) = *&__dst[25];
  *(a1 + 920) = *(a1 + 1200);
  *(a1 + 952) = a2 + 6496;
  v240 = *(a1 + 1216);
  *(a1 + 960) = *v234;
  *(a1 + 976) = v240;
  *(a1 + 985) = *(a1 + 1225);
  if (*v235)
  {
    v241 = v81[4];
    if (v241)
    {
      v242 = *v235;
    }

    else
    {
      v242 = v81[73];
    }

    if (v241)
    {
      v237 = v81 + 3;
    }
  }

  else
  {
    v242 = *v237;
  }

  v243 = v466;
  v244 = v460;
  memcpy(*(a1 + 1208), v242, v237[1]);
  v245 = *(a1 + 1208);
  v246 = *(a1 + 1216);
  *(a1 + 928) = *(a1 + 920);
  *(a1 + 936) = v245;
  *(a1 + 944) = v246;
  v247 = v81 + 8;
  if (v81[8])
  {
    if (v81[9])
    {
      v248 = v81 + 8;
    }

    else
    {
      v248 = v81 + 78;
    }

    v249 = v248[1];
    if (!v249)
    {
      goto LABEL_432;
    }
  }

  else
  {
    v249 = v81[79];
    if (!v249)
    {
      goto LABEL_432;
    }
  }

  AGX::Heap<true>::allocateImpl(__dst, a2 + 6328, v249, (a1 + 1456));
  *(a1 + 1480) += *&__dst[16];
  v250 = *&__dst[16];
  *(a1 + 1248) = *__dst;
  *(a1 + 1264) = v250;
  *(a1 + 1273) = *&__dst[25];
  v251 = *(a1 + 1264);
  *(a1 + 1008) = *(a1 + 1248);
  *(a1 + 1024) = v251;
  *(a1 + 1033) = *(a1 + 1273);
  if (*v247)
  {
    v252 = v81[9];
    if (v252)
    {
      v253 = *v247;
    }

    else
    {
      v253 = v81[78];
    }

    if (v252)
    {
      v254 = v81 + 8;
    }

    else
    {
      v254 = v81 + 78;
    }
  }

  else
  {
    v254 = v81 + 78;
    v253 = v81[78];
  }

  v244 = v460;
  memcpy(*(a1 + 1256), v253, v254[1]);
LABEL_432:
  v255 = v81 + 13;
  if (v81[13])
  {
    if (v81[14])
    {
      v256 = v81 + 13;
    }

    else
    {
      v256 = v81 + 83;
    }

    v257 = v256[1];
    if (!v257)
    {
      goto LABEL_448;
    }
  }

  else
  {
    v257 = v81[84];
    if (!v257)
    {
      goto LABEL_448;
    }
  }

  AGX::Heap<true>::allocateImpl(__dst, a2 + 6328, v257, (a1 + 1464));
  *(a1 + 1480) += *&__dst[16];
  v258 = *&__dst[16];
  *(a1 + 1296) = *__dst;
  *(a1 + 1312) = v258;
  *(a1 + 1321) = *&__dst[25];
  v259 = *(a1 + 1312);
  *(a1 + 1056) = *(a1 + 1296);
  *(a1 + 1072) = v259;
  *(a1 + 1081) = *(a1 + 1321);
  if (*v255)
  {
    v260 = v81[14];
    if (v260)
    {
      v261 = *v255;
    }

    else
    {
      v261 = v81[83];
    }

    if (v260)
    {
      v262 = v81 + 13;
    }

    else
    {
      v262 = v81 + 83;
    }
  }

  else
  {
    v262 = v81 + 83;
    v261 = v81[83];
  }

  v244 = v460;
  memcpy(*(a1 + 1304), v261, v262[1]);
  v263 = *(a1 + 1312);
  *(a1 + 1152) = *(a1 + 1296);
  *(a1 + 1168) = v263;
LABEL_448:
  v264 = v81 + 23;
  if (v81[23])
  {
    if (!v81[24])
    {
      v264 = v81 + 93;
    }

    v265 = v264[1];
    if (!v265)
    {
      goto LABEL_453;
    }

    goto LABEL_452;
  }

  v265 = v81[94];
  if (v265)
  {
LABEL_452:
    AGX::Heap<true>::allocateImpl(__dst, a2 + 6328, v265, (a1 + 1472));
    *(a1 + 1480) += *&__dst[16];
    v266 = *&__dst[16];
    *(a1 + 1344) = *__dst;
    *(a1 + 1360) = v266;
    *(a1 + 1369) = *&__dst[25];
    v267 = *(a1 + 1360);
    *(a1 + 1104) = *(a1 + 1344);
    *(a1 + 1120) = v267;
    *(a1 + 1129) = *(a1 + 1369);
    v268 = *(a1 + 1360);
    *(a1 + 1176) = *(a1 + 1344);
    *(a1 + 1192) = v268;
    v244 = v460;
  }

LABEL_453:
  if ((*(a1 + 888) & 1) != 0 || *(*(a1 + 8) + 16945) == 1)
  {
    {
      {
        v270 = v459;
        if (*(a1 + 839) < 0)
        {
          v270 = *v459;
        }

        v271 = v457;
        if (*(a1 + 887) < 0)
        {
          v271 = v457->__r_.__value_.__r.__words[0];
        }

        v272 = v458;
        if (*(a1 + 863) < 0)
        {
          v272 = *v458;
        }

        v273 = *(a1 + 800);
        v274 = *(a1 + 808);
        v275 = v456;
        if (*(a1 + 919) < 0)
        {
          v275 = *v456;
        }

        v276 = *(a1 + 920);
        v277 = *(a1 + 1216);
        *__dst = 136448002;
        *&__dst[4] = v270;
        *&__dst[12] = 2082;
        *&__dst[14] = v271;
        *&__dst[22] = 2082;
        *&__dst[24] = v272;
        *&__dst[32] = 1026;
        *&__dst[34] = v273;
        *&__dst[38] = 2050;
        *&__dst[40] = v274;
        *v472 = 2082;
        *&v472[2] = v275;
        *&v472[10] = 2050;
        *&v472[12] = v276;
        v473 = 2050;
        v474 = v277;
        _os_signpost_emit_with_name_impl(&dword_29CA13000, v269, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Type=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Addr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}zu", __dst, 0x4Eu);
      }
    }

    v278 = *(a1 + 8);
    v279 = v459;
    if (*(a1 + 839) < 0)
    {
      v279 = *v459;
    }

    v280 = v457;
    if (*(a1 + 887) < 0)
    {
      v280 = v457->__r_.__value_.__r.__words[0];
    }

    v281 = v458;
    if (*(a1 + 863) < 0)
    {
      v281 = *v458;
    }

    v282 = v456;
    if (*(a1 + 919) < 0)
    {
      v282 = *v456;
    }

    v283 = *(a1 + 800);
    v284 = *(a1 + 808);
    v285 = *(a1 + 920);
    v286 = *(a1 + 1216);
    v287 = *(a1 + 888);
    *__dst = v279;
    *&__dst[8] = v280;
    *&__dst[16] = v281;
    *&__dst[24] = v282;
    *&__dst[32] = v283;
    *&__dst[40] = v284;
    *v472 = v285;
    *&v472[8] = v286;
    v472[16] = v287;
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(v278, a1, __dst);
  }

  v288 = *(a5 + 208);
  v290 = *(a5 + 144);
  v289 = *(a5 + 148);
  if (v288)
  {
    v291 = *(a5 + 144);
  }

  else
  {
    v291 = 0;
  }

  v292 = *(a5 + 176);
  if (*(a5 + 176) == 0)
  {
    v290 = 0;
  }

  v293 = (*(a5 + 132) + *(a5 + 124) + *(a5 + 140) - (*(a5 + 128) + *(a5 + 120) + *(a5 + 136)));
  *(a1 + 48) = v291 + v289 + v290 + *(a5 + 152) + ((v293 + 3) & 0xFFFFFFFC);
  v294 = *(a1 + 56);
  v295 = (*(a1 + 64) - v294) >> 2;
  if (v293 <= v295)
  {
    if (v293 < v295)
    {
      *(a1 + 64) = v294 + 4 * v293;
    }
  }

  else
  {
    std::vector<unsigned int>::__append(v466, v293 - v295);
    v292 = *(a5 + 176);
    v289 = *(a5 + 148);
    v288 = *(a5 + 208);
  }

  if (v288)
  {
    v296 = *(a5 + 144);
  }

  else
  {
    v296 = 0;
  }

  if (v292 | *(a5 + 184))
  {
    v297 = *(a5 + 144);
  }

  else
  {
    v297 = 0;
  }

  v298 = (v289 + v296 + v297);
  v299 = *(a1 + 144);
  v300 = (*(a1 + 152) - v299) >> 2;
  if (v298 <= v300)
  {
    if (v298 < v300)
    {
      *(a1 + 152) = v299 + 4 * v298;
    }
  }

  else
  {
    std::vector<unsigned int>::__append(v244, v298 - v300);
  }

  v301 = *v18;
  v302 = *(v18 - v301 + 16);
  v303 = *(v18 + v302);
  v304 = *(v18 + v302 + v303);
  if (v304)
  {
    v305 = 4 * v304;
    v306 = v302 + v303;
    while (1)
    {
      v308 = *(v18 + v306 + 4);
      v309 = v18 + v306 + v308;
      v310 = v308 - *(v309 + 1);
      v311 = v18 + v306 + v310;
      v312 = *(v311 + 2);
      if (v312 < 7)
      {
        v315 = -*(a5 + 120);
        if (v312 >= 5)
        {
          goto LABEL_511;
        }

        goto LABEL_523;
      }

      v313 = *(v311 + 5);
      if (!v313 || (*(v18 + v306 + v308 + v313 + 4) & 0x80000000) == 0)
      {
        break;
      }

LABEL_499:
      v306 += 4;
      v305 -= 4;
      if (!v305)
      {
        v301 = *v18;
        goto LABEL_530;
      }
    }

    if (v312 <= 8)
    {
      v315 = -*(a5 + 120);
    }

    else
    {
      if (*(v18 + v306 + v310 + 12))
      {
        v314 = 4 * *(v18 + v306 + v308 + *(v18 + v306 + v310 + 12) + 4);
      }

      else
      {
        v314 = 0;
      }

      v315 = v314 - *(a5 + 120);
    }

LABEL_511:
    if (*(v18 + v306 + v310 + 8))
    {
      v316 = *(v18 + v306 + v308 + *(v18 + v306 + v310 + 8) + 4) == 6;
      if (v312 < 7)
      {
LABEL_521:
        if (v316)
        {
          goto LABEL_522;
        }

LABEL_523:
        v318 = 0x40000000;
LABEL_524:
        v466->__begin_[v315] = v318;
        v466->__begin_[v315 + 1] = v318 | 0x40000001;
        v466->__begin_[v315 + 2] = v318 | 0x40000002;
        v466->__begin_[v315 + 3] = v318 | 0x40000003;
        v319 = v308 - *(v309 + 1);
        v320 = v18 + v306 + v319;
        if (*(v320 + 2) >= 0xBu)
        {
          v321 = *(v320 + 7);
          if (v321)
          {
            if (*(v18 + v306 + v308 + v321 + 4))
            {
              v322 = *(v18 + v306 + v319 + 10);
              if (v322)
              {
                v307 = *(v18 + v306 + v308 + v322 + 4) & 0xFFFFF;
              }

              else
              {
                v307 = 0;
              }

              *(a1 + 768 + 8 * (v307 > 0x3F)) |= 1 << v307;
            }
          }
        }

        goto LABEL_499;
      }
    }

    else
    {
      v316 = 0;
      if (v312 < 7)
      {
        goto LABEL_521;
      }
    }

    v317 = *(v18 + v306 + v310 + 10);
    if (!v317)
    {
      goto LABEL_521;
    }

    if ((*(v18 + v306 + v308 + v317 + 4) & 0xFFFFF) != 0)
    {
      v318 = 1073741832;
    }

    else
    {
      v318 = 0x40000000;
    }

    if (v316)
    {
LABEL_522:
      v318 = 1073741828;
    }

    goto LABEL_524;
  }

LABEL_530:
  v323 = -v301;
  v324 = v18 + v323;
  if (*(a1 + 742))
  {
    v325 = *(v324 + 12);
    v326 = *(v18 + v325);
    v327 = (v18 + v325 + v326);
    v328 = *v327;
    if (v328)
    {
      v329 = 0;
      v330 = 4 * v328;
      v331 = v18 + v325 + v326;
      while (1)
      {
        v332 = v327[v329 / 4 + 1];
        v333 = v332 - *(&v327[v329 / 4 + 1] + v332);
        v334 = &v331[v329 + v333];
        v335 = *(v334 + 2);
        if (v335 >= 5)
        {
          v336 = *(v334 + 4);
          if (v336)
          {
            if (v331[v329 + 4 + v332 + v336] == 93)
            {
              if (v335 < 7)
              {
                break;
              }

              v337 = *&v331[v329 + 10 + v333];
              if (!v337)
              {
                break;
              }

              v338 = *&v331[v329 + 4 + v332 + v337];
              if ((v338 & 0x80000000) == 0 && (v338 & 0xFFF00000) != 0x400000)
              {
                break;
              }
            }
          }
        }

        v329 += 4;
        if (v330 == v329)
        {
          goto LABEL_542;
        }
      }

      *(a1 + 768) = vorrq_s8(*(a1 + 768), *(a1 + 784));
    }
  }

LABEL_542:
  v339 = *(v324 + 10);
  v340 = *(v18 + v339);
  v341 = *(v18 + v339 + v340);
  if (!v341)
  {
    goto LABEL_558;
  }

  v342 = 4 * v341;
  v343 = v339 + v340;
  do
  {
    v344 = *(v18 + v343 + 4);
    v345 = v344 - *(v18 + v343 + v344 + 4);
    v346 = v18 + v343 + v345;
    v347 = *(v346 + 2);
    if (v347 < 7)
    {
      goto LABEL_551;
    }

    v348 = *(v346 + 5);
    if (v348 && *(v18 + v343 + v344 + v348 + 4) < 0)
    {
      goto LABEL_544;
    }

    if (v347 >= 9 && (v349 = *(v18 + v343 + v345 + 12)) != 0)
    {
      v350 = *(v18 + v343 + v344 + v349 + 4);
    }

    else
    {
LABEL_551:
      v350 = 0;
    }

    if (*(a1 + 1584))
    {
      v351 = 3;
    }

    else
    {
      v351 = 1;
    }

    v352 = *(a5 + 124) + v351 * v350 - (*(a5 + 120) + *(a5 + 128));
    *(*(a1 + 56) + 4 * v352) = 1610612748;
    if (*(a1 + 1584) == 1)
    {
      v466->__begin_[v352 + 1] = 0x7FFFFFFF;
      v466->__begin_[v352 + 2] = 1610612736;
    }

LABEL_544:
    v343 += 4;
    v342 -= 4;
  }

  while (v342);
  v323 = -*v18;
LABEL_558:
  v463 = a1 + 752;
  v353 = (v18 + *(v18 + v323 + 12));
  v354 = (v353 + *v353);
  v355 = *v354;
  if (v355)
  {
    v356 = &v354[v355];
    while (1)
    {
      v357 = v354[1];
      v358 = (++v354 + v357);
      v359 = (v358 - *v358);
      v360 = *v359;
      if (v360 < 7)
      {
        LODWORD(v361) = 0;
        goto LABEL_568;
      }

      if (!v359[3] || (*(v358 + v359[3]) & 0x80000000) == 0)
      {
        break;
      }

LABEL_560:
      if (v354 == v356)
      {
        goto LABEL_598;
      }
    }

    if (v360 < 9)
    {
      LODWORD(v361) = 0;
      goto LABEL_569;
    }

    v361 = v359[4];
    if (v359[4])
    {
      LODWORD(v361) = (*(v358 + v361) >> 1) & 0x1FFFFFFF;
      goto LABEL_569;
    }

LABEL_568:
    if (v360 < 7)
    {
      LODWORD(v362) = 0;
    }

    else
    {
LABEL_569:
      v362 = v359[3];
      if (v362)
      {
        LODWORD(v362) = *(v358 + v362) & 0xFFFFF;
        switch(v362)
        {
          case ',':
            v363 = 536870932;
            goto LABEL_577;
          case '0':
            v363 = 536870934;
            goto LABEL_577;
          case '-':
            v363 = 536870933;
LABEL_577:
            v364 = *(a5 + 124) + v361 + *(a5 + 132) - (*(a5 + 120) + *(a5 + 128) + *(a5 + 136));
            *(*v243 + 4 * v364) = v363;
            v365 = (v358 - *v358);
            if (*v365 >= 0xBu)
            {
              v366 = v365[5];
              if (v366)
              {
                if (*(v358 + v366))
                {
                  *(v463 + 8 * (v362 > 0x3F)) |= 1 << v362;
                }
              }
            }

            if (*(a1 + 1587) == 1)
            {
              v367 = *v468;
              if (!*v468)
              {
LABEL_717:
                abort();
              }

              v368 = 2 * v364;
              v369 = (2 * v364) | 1;
              while (1)
              {
                while (1)
                {
                  v370 = *(v367 + 7);
                  if (v362 >= v370)
                  {
                    break;
                  }

                  v367 = *v367;
                  if (!v367)
                  {
                    goto LABEL_717;
                  }
                }

                if (v370 >= v362)
                {
                  break;
                }

                v367 = v367[1];
                if (!v367)
                {
                  goto LABEL_717;
                }
              }

              v371 = v465;
LABEL_590:
              v372 = *v371;
              if (!*v371)
              {
LABEL_594:
                operator new();
              }

              while (1)
              {
                v371 = v372;
                v373 = *(v372 + 28);
                if (v369 < v373)
                {
                  goto LABEL_590;
                }

                if (v373 > v368)
                {
                  break;
                }

                v372 = *(v371 + 8);
                if (!v372)
                {
                  goto LABEL_594;
                }
              }

              v243 = v466;
              *(v371 + 32) = *(v367 + 8);
            }

            goto LABEL_560;
        }
      }
    }

    v363 = v362 + 536870928;
    goto LABEL_577;
  }

LABEL_598:
  AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather(v243);
  v376 = *(a5 + 120);
  v375 = *(a5 + 124);
  v377 = *(a5 + 128);
  v378 = *(a5 + 132);
  v379 = *(a5 + 136);
  v380 = *(a5 + 140);
  v381 = (v375 + v378 + v380 - (v376 + v377 + v379) + 3) & 0xFFFFFFFC;
  v382 = *(a5 + 160);
  v383 = *(a5 + 168);
  if (*(a5 + 160) == 0)
  {
    goto LABEL_616;
  }

  v384 = 0;
  v385 = *(a5 + 144);
  if (*(a5 + 208) != 1 || !v385)
  {
    goto LABEL_610;
  }

  v386 = 0;
  *__dst = *(a5 + 160);
  *&v470 = v383;
  v387 = v382;
  while (2)
  {
    if (v387)
    {
      v388 = __clz(__rbit64(v387));
      v389 = 8 * (v388 != 0);
      v390 = __dst;
LABEL_603:
      *v390 = v387 & ~(1 << v388);
      v391 = &v460->__begin_[v386];
      *v391 = v389;
      *(v391 + 4) = vorr_s8(vdup_n_s32(v389), 0x200000001);
      *(v391 + 12) = v389 | 3;
      v386 += 4;
      v387 = *__dst;
      continue;
    }

    break;
  }

  v387 = v470;
  if (v470)
  {
    LOBYTE(v388) = __clz(__rbit64(v470));
    v389 = 8;
    v390 = &v470;
    goto LABEL_603;
  }

  v379 = *(a5 + 136);
  v380 = *(a5 + 140);
  v377 = *(a5 + 128);
  v378 = *(a5 + 132);
  v376 = *(a5 + 120);
  v375 = *(a5 + 124);
  v385 = *(a5 + 144);
  v384 = v385;
LABEL_610:
  v392 = *(a5 + 176);
  if (*&v392 != 0 && v385 != 0)
  {
    v403 = v384 - v381 + ((v380 + v378 - (v379 + v377 + v376) + v375 + 3) & 0xFFFFFFFC);
    *__dst = v382;
    *&v470 = v383;
    while (1)
    {
      if (v382)
      {
        v404 = __dst;
      }

      else
      {
        v382 = v470;
        if (!v470)
        {
          break;
        }

        v404 = &v470;
      }

      *v404 = v382 & (v382 - 1);
      begin = v460->__begin_;
      v460->__begin_[v403] = 4;
      begin[v403 + 1] = 5;
      begin[v403 + 2] = 6;
      begin[v403 + 3] = 7;
      v403 += 4;
      v382 = *__dst;
    }
  }

  v374 = vorrq_s8(*(a1 + 768), v392);
  *(a1 + 768) = v374;
LABEL_616:
  if (*(a5 + 148))
  {
    v394 = *(a5 + 144);
    if (*(a5 + 208))
    {
      v395 = *(a5 + 144);
    }

    else
    {
      v395 = 0;
    }

    if (*(a5 + 176) == 0)
    {
      v394 = 0;
    }

    v396 = ((*(a5 + 124) + *(a5 + 132) + *(a5 + 140) - (*(a5 + 120) + *(a5 + 128) + *(a5 + 136)) + 3) & 0xFFFFFFFC) - v381 + v395 + v394;
    v398 = *(a5 + 192);
    v397 = *(a5 + 200);
    *__dst = v398;
    *&v470 = v397;
    while (1)
    {
      if (v398)
      {
        v399 = __dst;
      }

      else
      {
        v398 = v470;
        if (!v470)
        {
          break;
        }

        v399 = &v470;
      }

      *v399 = v398 & (v398 - 1);
      v400 = *(a1 + 144);
      *(v400 + 4 * v396) = 12;
      if (*(a1 + 1584) == 1)
      {
        *(v400 + 4 * (v396 + 1)) = -1;
        *(v400 + 4 * (v396 + 2)) = 0;
      }

      v396 += 4;
      v398 = *__dst;
    }
  }

  if (*(a5 + 467) == 1)
  {
    v401 = (v467 - *v467);
    if (*v401 < 0x17u)
    {
      LODWORD(v402) = 0;
    }

    else
    {
      v402 = v401[11];
      if (v402)
      {
        v402 = (*(v467 + v402) + 3) >> 2;
      }
    }

    *(a1 + 408) = v402;
    *(a1 + 412) = 32;
  }

  v406 = (v467 - *v467);
  if (*v406 >= 0x17u && (v407 = v406[11]) != 0)
  {
    v408 = *(v467 + v407) + 3;
    v409 = (a1 + 176);
    v410 = *(a1 + 176);
    v411 = v408 >> 2;
    *(a1 + 52) = v411;
    v412 = *(a1 + 168);
    v413 = (v410 - v412) >> 2;
    if (v411 > v413)
    {
      std::vector<unsigned int>::__append((a1 + 168), v411 - v413);
      goto LABEL_648;
    }
  }

  else
  {
    v411 = 0;
    v409 = (a1 + 176);
    v414 = *(a1 + 176);
    *(a1 + 52) = 0;
    v412 = *(a1 + 168);
    v413 = (v414 - v412) >> 2;
  }

  if (v413 > v411)
  {
    *v409 = v412 + 4 * v411;
  }

LABEL_648:
  if (v455 != (a5 + 216))
  {
    std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v455, *(a5 + 216), *(a5 + 224), (*(a5 + 224) - *(a5 + 216)) >> 2);
  }

  if (v454 != (a5 + 240))
  {
    std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v454, *(a5 + 240), *(a5 + 248), (*(a5 + 248) - *(a5 + 240)) >> 2);
  }

  if (v453 != (a5 + 320))
  {
    std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v453, *(a5 + 320), *(a5 + 328), (*(a5 + 328) - *(a5 + 320)) >> 1);
  }

  if (v452 != (a5 + 368))
  {
    std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v452, *(a5 + 368), *(a5 + 376), (*(a5 + 376) - *(a5 + 368)) >> 1);
  }

  *(a1 + 352) = *(a5 + 416);
  *(a1 + 744) = *(a5 + 160) != 0;
  *(a1 + 745) = *(a5 + 148) != 0;
  v415 = *(v467 - *v467 + 24);
  v416 = *(v467 + v415);
  v417 = (v467 + v415 + v416);
  v418 = *v417;
  if (v418)
  {
    v419 = 0;
    v420 = 4 * v418;
    v421 = v467 + v415 + v416;
    do
    {
      v422 = v417[v419 / 4 + 1];
      v423 = v422 - *(&v417[v419 / 4 + 1] + v422);
      v424 = &v421[v419 + v423];
      v425 = *(v424 + 2);
      if (v425 >= 5)
      {
        v426 = *(v424 + 4);
        if (v426)
        {
          if (v425 >= 7 && v421[v419 + 4 + v422 + v426] == 139)
          {
            if (*&v421[v419 + 10 + v423])
            {
              v427 = *&v421[v419 + 4 + v422 + *&v421[v419 + 10 + v423]] & 0xFFFFF;
              if (v425 >= 0xB)
              {
                goto LABEL_667;
              }
            }

            else
            {
              v427 = 0;
              if (v425 >= 0xB)
              {
LABEL_667:
                v428 = *&v421[v419 + 14 + v423];
                if (v428 && v421[v419 + 4 + v422 + v428])
                {
                  *(v463 + 8 * (v427 > 0x3F)) |= 1 << v427;
                }
              }
            }
          }
        }
      }

      v419 += 4;
    }

    while (v420 != v419);
  }

  v429 = (v464 - *v464);
  if (*v429 >= 0xDu)
  {
    v430 = v429[6];
    if (v429[6])
    {
      v431 = v464 + v430;
      v432 = *(v464 + v430);
      if (*(v464 + v430 + v432) > ((*(a1 + 1528) - *(a1 + 1512)) >> 4))
      {
        operator new();
      }

      v433 = (v464 - *v464);
      if (*v433 >= 0x41u && (v434 = v433[32]) != 0)
      {
        v435 = v464 + v434 + *(v464 + v434);
        if (!*&v431[v432])
        {
          goto LABEL_699;
        }

LABEL_679:
        if (v435)
        {
          v436 = 0;
          v437 = v464 + v430 + v432 + 4;
          do
          {
            if (*v435)
            {
              v438 = *(v435 + 8 * v436 + 4);
            }

            else
            {
              v438 = 0;
            }

            *__dst = *(v437 + 8 * v436);
            *&__dst[8] = v438;
            std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v449, __dst);
            ++v436;
          }

          while (v436 < *&v431[v432]);
        }

        else
        {
          v440 = v464 + v430 + v432 + 4;
          do
          {
            *__dst = *(v440 + 8 * v435);
            std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v449, __dst);
            ++v435;
          }

          while (v435 < *&v431[v432]);
        }
      }

      else
      {
        v435 = 0;
        if (*&v431[v432])
        {
          goto LABEL_679;
        }
      }
    }
  }

LABEL_699:
  v441 = (v464 - *v464);
  if (*v441 >= 0xBu)
  {
    v442 = v441[5];
    if (v442)
    {
      v443 = (v464 + v442 + *(v464 + v442));
      if (*v443 > ((*(a1 + 1576) - *(a1 + 1560)) >> 4))
      {
        operator new();
      }

      if (*v443 > ((*(a1 + 1552) - *(a1 + 1536)) >> 3))
      {
        operator new();
      }

      if (*v443)
      {
        v444 = 0;
        v445 = v443 + 1;
        do
        {
          AGX::SamplerDescriptor::SamplerDescriptor(__dst, (v445 + *v445), *v374.i32);
          AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateBindlessConstantSampler(&v470, a2, __dst);
          std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](a1 + 1560, &v470);
          v469 = *(v470 + 96);
          std::vector<unsigned long long>::push_back[abi:nn200100](v448, &v469);
          v446 = *(&v470 + 1);
          if (*(&v470 + 1) && !atomic_fetch_add((*(&v470 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v446->__on_zero_shared)(v446);
            std::__shared_weak_count::__release_weak(v446);
          }

          if (SBYTE1(v474) < 0)
          {
            operator delete(*v472);
          }

          ++v444;
          ++v445;
        }

        while (v444 < *v443);
      }
    }
  }

  *(a1 + 1396) = 0;
  return a1;
}

void sub_29CE092C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, char *a11, void **a12, void **a13, uint64_t a14, void **a15, void **a16, void **a17, void **a18, void **a19, void **a20, void **a21, void **a22, void **a23, void **a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28, uint64_t a29, uint64_t a30, void **a31, uint64_t a32, char a33)
{
  CompileStatistics::~CompileStatistics(a15);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a31);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v33 + 1560));
  v35 = *a12;
  if (*a12)
  {
    *(v33 + 1544) = v35;
    operator delete(v35);
  }

  v36 = *a13;
  if (*a13)
  {
    *(v33 + 1520) = v36;
    operator delete(v36);
  }

  if (*a11 < 0)
  {
    operator delete(*a10);
    if ((*(v33 + 919) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v33 + 919) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v33 + 887) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  operator delete(*a20);
  if (*(v33 + 887) < 0)
  {
LABEL_8:
    operator delete(*a21);
    if ((*(v33 + 863) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((*(v33 + 863) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v33 + 839) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_25:
  operator delete(*a22);
  if ((*(v33 + 839) & 0x80000000) == 0)
  {
LABEL_11:
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a28);
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::GlobalBindingTableInfo::~GlobalBindingTableInfo((v33 + 408));
    v37 = *a16;
    if (*a16)
    {
      *(v33 + 336) = v37;
      operator delete(v37);
    }

    v38 = *a18;
    if (*a18)
    {
      *(v33 + 312) = v38;
      operator delete(v38);
    }

    v39 = *a17;
    if (*a17)
    {
      *(v33 + 288) = v39;
      operator delete(v39);
    }

    v40 = *a19;
    if (*a19)
    {
      *(v33 + 264) = v40;
      operator delete(v40);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v33 + 168);
    v41 = *a24;
    if (*a24)
    {
      *(v33 + 152) = v41;
      operator delete(v41);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(a29);
    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(*a23);
  goto LABEL_11;
}

uint64_t *AGX::BlitComputeProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::initCommon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2 + 224;
  v7 = a2 + 784;
  if (*(a2 + 224))
  {
    v8 = *(a2 + 232) == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = 224;
  if (v8)
  {
    v9 = 784;
    v10 = a2 + 784;
  }

  else
  {
    v10 = a2 + 224;
  }

  v11 = *(a2 + v9);
  v12 = *(v10 + 8);
  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = (v11 + *v11);
  }

  v15 = (v14 - *v14);
  if (*v15 >= 5u && (v16 = v15[2]) != 0)
  {
    v17 = (v14 + v16 + *(v14 + v16));
  }

  else
  {
    v17 = 0;
  }

  v18 = (v17 - *v17);
  if (*v18 < 0x41u)
  {
    LOBYTE(v19) = 0;
  }

  else
  {
    v19 = v18[32];
    if (v18[32])
    {
      LOBYTE(v19) = *(v17 + v19) != 0;
    }
  }

  *(a1 + 3208) = v19;
  v20 = v18[12];
  v21 = *(v17 + v20);
  if (*(v17 + v20 + v21))
  {
    v22 = 0;
    while (1)
    {
      v23 = &v17[v22] + v20 + v21;
      v24 = (v23 + 4 + *(v23 + 4));
      v25 = (v24 - *v24);
      v26 = *v25;
      if (v26 >= 9)
      {
        break;
      }

      if (v26 >= 5)
      {
        v28 = *(a1 + 168);
        v29 = v25[2];
        if (v29)
        {
          goto LABEL_32;
        }
      }

LABEL_24:
      ++v22;
      v20 = *(v17 - *v17 + 24);
      v21 = *(v17 + v20);
      if (v22 >= *(v17 + v20 + v21))
      {
        goto LABEL_52;
      }
    }

    v27 = v25[4];
    if (v25[4])
    {
      v27 = *(v24 + v27);
    }

    v28 = (*(a1 + 168) + 4 * v27);
    v29 = v25[2];
    if (!v29)
    {
      goto LABEL_24;
    }

LABEL_32:
    switch(*(v24 + v29))
    {
      case 0xD:
        *v28 = 28;
        break;
      case 0x23:
        *v28 = 3;
        break;
      case 0x24:
        *v28 = 4;
        break;
      case 0x25:
        *v28 = 5;
        break;
      case 0x2B:
        *v28 = 30;
        break;
      case 0x33:
        *v28 = 0x1900000018;
        break;
      case 0x34:
        *v28 = 0x1B0000001ALL;
        break;
      case 0x43:
        *v28 = 15;
        break;
      case 0x45:
        *v28 = 10;
        break;
      case 0x47:
        *v28 = 17;
        break;
      case 0x4D:
        *v28 = 16;
        break;
      case 0x56:
        *v28 = 11;
        break;
      case 0x57:
        *v28 = 18;
        break;
      case 0x58:
        *v28 = 12;
        break;
      case 0x59:
        *v28 = 19;
        break;
      case 0x5A:
        *v28 = 20;
        break;
      case 0x5B:
        *v28 = 21;
        break;
      case 0x65:
        *v28 = 14;
        break;
      case 0x66:
        *v28 = 13;
        break;
      case 0x6F:
        *v28 = 29;
        break;
      default:
        goto LABEL_24;
    }

    goto LABEL_24;
  }

LABEL_52:
  result = AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather((a1 + 168));
  v31 = *(a1 + 52);
  v32 = *(a1 + 520);
  v33 = *(a1 + 512);
  if (v32 == v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = *(a1 + 408) & 1;
  }

  v35 = 0;
  v36 = (*(a1 + 264) - *(a1 + 256)) >> 2;
  v37 = (*(a3 + 124) + *(a3 + 132) + *(a3 + 140) - (*(a3 + 120) + *(a3 + 128) + *(a3 + 136)) + 3) & 0xFFFFFFFC;
  *(a1 + 16) = ((*(a1 + 312) - *(a1 + 304) + 4 * (*(a1 + 416) + v31 + *(a1 + 420) + v34 + (((v32 - v33) >> 1) & 0x3FFFFFFE))) & 0xFFFFFFFC) + 8 * (v36 + *(a1 + 48));
  *(a1 + 20) = 8 * v37;
  v38 = *(a3 + 208);
  v39 = *(a3 + 144);
  if (!*(a3 + 208))
  {
    v39 = 0;
  }

  v40 = *(a1 + 128);
  *(a1 + 24) = 8 * (v39 + v37);
  *(a1 + 28) = 8 * v40;
  v41 = 8 * (v36 + v40);
  *(a1 + 32) = v41;
  *(a1 + 36) = v41 + 4 * v31;
  v42 = *(a3 + 144);
  if (v38)
  {
    v43 = *(a3 + 144);
  }

  else
  {
    v43 = 0;
  }

  v44 = *(a3 + 176);
  if (*(a3 + 176) == 0)
  {
    v42 = 0;
  }

  *(a1 + 40) = 8 * (v43 + v42 + v37);
  if (v44 | *(a3 + 184))
  {
    v45 = *(a3 + 144);
  }

  else
  {
    v45 = 0;
  }

  v46 = v38 == 0;
  if (v38)
  {
    v47 = *(a3 + 144);
  }

  else
  {
    v47 = 0;
  }

  v48 = *(a3 + 148);
  *(a1 + 44) = 8 * (v47 + v48 + v45 + v37);
  if (v46)
  {
    v49 = 0;
  }

  else
  {
    v49 = *(a3 + 144);
  }

  if (v44 | *(a3 + 184))
  {
    v50 = *(a3 + 144);
  }

  else
  {
    v50 = 0;
  }

  *(a1 + 704) = v50 + v49;
  *(a1 + 708) = v48;
  *(a1 + 3196) = 1024;
  if (*(a2 + 224))
  {
    v51 = *(a2 + 232) == 0;
  }

  else
  {
    v51 = 1;
  }

  v52 = 224;
  if (v51)
  {
    v52 = 784;
    v53 = v7;
  }

  else
  {
    v53 = v6;
  }

  v54 = *(a2 + v52);
  if (v54 && *(v53 + 8))
  {
    v35 = (v54 + *v54);
  }

  v55 = (v35 - *v35);
  if (*v55 >= 0xBu && (v56 = v55[5]) != 0)
  {
    v57 = (v35 + v56 + *(v35 + v56));
  }

  else
  {
    v57 = 0;
  }

  *(a1 + 3200) = 3072;
  v58 = (v17 - *v17);
  if (*v58 < 0x3Du)
  {
    LODWORD(v59) = 0;
  }

  else
  {
    v59 = v58[30];
    if (v59)
    {
      LODWORD(v59) = (*(v17 + v59) + 15) & 0xFFFFFFF0;
    }
  }

  *(a1 + 3204) = v59;
  v60 = (v57 - *v57);
  if (*v60 >= 9u && (v61 = v60[4]) != 0)
  {
    v62 = (*(v57 + v61) + 3) & 0xFFFFFFFC;
  }

  else
  {
    v62 = 0;
  }

  *(a1 + 3192) = v62;
  return result;
}

unint64_t AGX::EndOfTileProgramVariantBase<AGX::HAL300::Encoders,AGX::HAL300::Classes>::EndOfTileProgramVariantBase(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v8 = 0;
  v228 = *MEMORY[0x29EDCA608];
  *(a1 + 8) = 0u;
  v9 = (a1 + 8);
  *(a1 + 96) = 0u;
  *a1 = a2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 188) = a5;
  *(a1 + 248) = atomic_fetch_add((a2 + 17008), 1uLL);
  v10 = (a1 + 344);
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 592) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 581) = 0;
  *(a1 + 660) = 0u;
  *(a1 + 631) = 0u;
  *(a1 + 647) = 0u;
  *(a1 + 615) = 0u;
  if (a3[28])
  {
    v11 = a3[29] == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = 98;
  if (!v11)
  {
    v12 = 28;
  }

  v13 = a3 + 98;
  if (!v11)
  {
    v13 = a3 + 28;
  }

  v14 = a3[v12];
  if (v14 && v13[1])
  {
    v8 = (v14 + *v14);
  }

  v15 = (v8 - *v8);
  if (*v15 >= 5u && (v16 = v15[2]) != 0)
  {
    v17 = (v8 + v16 + *(v8 + v16));
  }

  else
  {
    v17 = 0;
  }

  v18 = 0;
  v19 = a3 + 128;
  if (a3[58])
  {
    v20 = a3[59] == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = 58;
  if (v20)
  {
    v21 = 128;
  }

  else
  {
    v19 = a3 + 58;
  }

  v22 = a3[v21];
  if (v22 && v19[1])
  {
    v18 = (v22 + *v22);
  }

  v23 = (v18 - *v18);
  if (*v23 >= 5u && (v24 = v23[2]) != 0)
  {
    v25 = (v18 + v24 + *(v18 + v24));
  }

  else
  {
    v25 = 0;
  }

  v26 = (v25 - *v25);
  if (*v26 < 7u)
  {
    LODWORD(v27) = 0;
  }

  else
  {
    v27 = v26[3];
    if (v27)
    {
      LODWORD(v27) = *(v25 + v27);
    }
  }

  *(a1 + 240) = v27;
  v28 = (v25 - *v25);
  v218 = (a1 + 392);
  if (*v28 >= 0x13u && (v29 = v28[9]) != 0)
  {
    v30 = v25 + v29 + *(v25 + v29) + 4;
  }

  else
  {
    v30 = "";
  }

  v220 = (a1 + 96);
  v221 = (a1 + 280);
  v219 = (a1 + 304);
  MEMORY[0x29ED51E00](a1 + 256, v30);
  v31 = (v25 - *v25);
  if (*v31 >= 9u && (v32 = v31[4]) != 0)
  {
    v33 = v25 + v32 + *(v25 + v32) + 4;
  }

  else
  {
    v33 = "";
  }

  MEMORY[0x29ED51E00](a1 + 280, v33);
  v34 = (v25 - *v25);
  v35 = "";
  if (*v34 >= 0x51u)
  {
    v36 = v34[40];
    if (v36)
    {
      v35 = v25 + v36 + *(v25 + v36) + 4;
    }
  }

  MEMORY[0x29ED51E00](a1 + 304, v35);
  v37 = (a1 + 488);
  v38 = (v25 - *v25);
  if (*v38 < 0x11u)
  {
    LODWORD(v39) = 0;
  }

  else
  {
    v39 = v38[8];
    if (v39)
    {
      LODWORD(v39) = *(v25 + v39);
    }
  }

  *(a1 + 584) = v39;
  v40 = (a3 + 3);
  if (a3[4])
  {
    v41 = a3[3] == 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = (a3 + 73);
  if (v41)
  {
    v43 = a3 + 73;
  }

  else
  {
    v43 = a3 + 3;
  }

  AGX::Heap<true>::allocateImpl(buf, a2 + 6496, v43[1], (a1 + 640));
  *(a1 + 672) += *&buf[16];
  v44 = *&buf[16];
  *v37 = *buf;
  *(a1 + 504) = v44;
  *(a1 + 513) = *&buf[25];
  v45 = *(a1 + 496);
  *(a1 + 328) = *(a1 + 488);
  *(a1 + 336) = a2 + 6496;
  v46 = *(a1 + 504);
  *v10 = *v37;
  v10[1] = v46;
  *(v10 + 25) = *(a1 + 513);
  if (*v40)
  {
    v47 = a3[4];
    if (v47)
    {
      v48 = *v40;
    }

    else
    {
      v48 = a3[73];
    }

    if (v47)
    {
      v42 = (a3 + 3);
    }
  }

  else
  {
    v48 = *v42;
  }

  memcpy(v45, v48, v42[1]);
  v49 = *(a1 + 496);
  v50 = *(a1 + 504);
  *(a1 + 440) = *(a1 + 328);
  *(a1 + 448) = v49;
  *(a1 + 456) = v50;
  v51 = (a3 + 8);
  if (a3[8])
  {
    if (a3[9])
    {
      v52 = a3 + 8;
    }

    else
    {
      v52 = a3 + 78;
    }

    v53 = v52[1];
    v55 = (a1 + 256);
    v54 = v220;
    if (!v53)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v53 = a3[79];
    v55 = (a1 + 256);
    v54 = v220;
    if (!v53)
    {
      goto LABEL_77;
    }
  }

  AGX::Heap<true>::allocateImpl(buf, a2 + 6328, v53, (a1 + 648));
  *(a1 + 672) += *&buf[16];
  v56 = *&buf[16];
  *(a1 + 536) = *buf;
  *(a1 + 552) = v56;
  *(a1 + 561) = *&buf[25];
  v57 = *(a1 + 552);
  *v218 = *(a1 + 536);
  v218[1] = v57;
  *(v218 + 25) = *(a1 + 561);
  if (*v51)
  {
    v58 = a3[9];
    if (v58)
    {
      v59 = *v51;
    }

    else
    {
      v59 = a3[78];
    }

    if (v58)
    {
      v60 = a3 + 8;
    }

    else
    {
      v60 = a3 + 78;
    }
  }

  else
  {
    v60 = a3 + 78;
    v59 = a3[78];
  }

  memcpy(*(a1 + 544), v59, v60[1]);
LABEL_77:
  v61 = *a1;
  v62 = v221;
  if (*(*a1 + 16945) == 1)
  {
    {
      {
        v64 = *a1;
        v61 = v64;
        v62 = v221;
        if (v65)
        {
          v66 = v55;
          if (*(a1 + 279) < 0)
          {
            v66 = *v55;
          }

          v67 = v221;
          if (*(a1 + 303) < 0)
          {
            v67 = *v221;
          }

          v68 = *(a1 + 240);
          v69 = *(a1 + 248);
          v70 = v219;
          if (*(a1 + 327) < 0)
          {
            v70 = *v219;
          }

          v71 = *(a1 + 328);
          v72 = *(a1 + 504);
          *buf = 136448002;
          *&buf[4] = v66;
          *&buf[12] = 2082;
          *&buf[14] = "";
          *&buf[22] = 2082;
          *&buf[24] = v67;
          *&buf[32] = 1026;
          *&buf[34] = v68;
          *&buf[38] = 2050;
          *&buf[40] = v69;
          *v225 = 2082;
          *&v225[2] = v70;
          *&v225[10] = 2050;
          *&v225[12] = v71;
          v226 = 2050;
          v227 = v72;
          _os_signpost_emit_with_name_impl(&dword_29CA13000, v63, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Type=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Addr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}zu", buf, 0x4Eu);
          v61 = *a1;
        }
      }
    }

    v73 = v55;
    if (*(a1 + 279) < 0)
    {
      v73 = *v55;
    }

    v74 = v62;
    if (*(a1 + 303) < 0)
    {
      v74 = *v62;
    }

    v75 = v219;
    if (*(a1 + 327) < 0)
    {
      v75 = *v219;
    }

    v76 = *(a1 + 240);
    v77 = *(a1 + 248);
    v78 = *(a1 + 328);
    v79 = *(a1 + 504);
    *buf = v73;
    *&buf[8] = "";
    *&buf[16] = v74;
    *&buf[24] = v75;
    *&buf[32] = v76;
    *&buf[40] = v77;
    *v225 = v78;
    *&v225[8] = v79;
    v225[16] = 0;
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(v61, a1, buf);
  }

  v80 = (v17 - *v17);
  if (*v80 < 0x17u || (v81 = v80[11]) == 0)
  {
    v82 = 0;
    v83 = (a1 + 104);
    v84 = *(a1 + 96);
    v85 = (*(a1 + 104) - v84) >> 2;
LABEL_100:
    if (v85 > v82)
    {
      *v83 = v84 + 4 * v82;
    }

    goto LABEL_102;
  }

  v82 = (*(v17 + v81) + 3) >> 2;
  v83 = (a1 + 104);
  v84 = *(a1 + 96);
  v85 = (*(a1 + 104) - v84) >> 2;
  if (v82 <= v85)
  {
    goto LABEL_100;
  }

  std::vector<unsigned int>::__append(v54, v82 - v85);
LABEL_102:
  if (*(a4 + 208))
  {
    v86 = *(a4 + 144);
  }

  else
  {
    v86 = 0;
  }

  if (*(a4 + 176) == 0)
  {
    v87 = 0;
  }

  else
  {
    v87 = *(a4 + 144);
  }

  v88 = v86 + *(a4 + 148) + v87 + *(a4 + 152) + ((*(a4 + 124) + *(a4 + 132) + *(a4 + 140) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136)) + 3) & 0xFFFFFFFC);
  v89 = *(a1 + 8);
  v90 = (*(a1 + 16) - v89) >> 2;
  if (v88 <= v90)
  {
    if (v88 < v90)
    {
      *(a1 + 16) = v89 + 4 * v88;
    }
  }

  else
  {
    std::vector<unsigned int>::__append(v9, v88 - v90);
  }

  v91 = *(v17 - *v17 + 12);
  v92 = *(v17 + v91);
  v93 = (v17 + v91 + v92);
  v94 = *v93;
  if (v94)
  {
    v95 = 0;
    v96 = 4 * v94;
    v97 = v17 + v91 + v92;
    do
    {
      v105 = v93[v95 / 4 + 1];
      v106 = v105 - *(&v93[v95 / 4 + 1] + v105);
      v107 = &v97[v95 + v106];
      v108 = *(v107 + 2);
      if (v108 < 7)
      {
        LODWORD(v98) = 0;
        v100 = *(a4 + 120);
        v99 = *(a4 + 124);
        v102 = *(a4 + 128);
        v101 = *(a4 + 132);
        v103 = *(a4 + 136);
      }

      else
      {
        v109 = *(v107 + 5);
        if (*(v107 + 5) && (*&v97[v95 + 4 + v105 + v109] & 0x80000000) != 0)
        {
          goto LABEL_117;
        }

        if (v108 < 9)
        {
          LODWORD(v98) = 0;
        }

        else
        {
          v98 = *&v97[v95 + 12 + v106];
          if (v98)
          {
            LODWORD(v98) = (*&v97[v95 + 4 + v105 + v98] >> 1) & 0x1FFFFFFF;
          }
        }

        v100 = *(a4 + 120);
        v99 = *(a4 + 124);
        v102 = *(a4 + 128);
        v101 = *(a4 + 132);
        v103 = *(a4 + 136);
        if (v109)
        {
          v110 = *&v97[v95 + 4 + v105 + v109] & 0xFFFFF;
          switch(v110)
          {
            case '5':
              v104 = 56;
              goto LABEL_116;
            case '2':
              v104 = 54;
              goto LABEL_116;
            case '1':
              v104 = 55;
              goto LABEL_116;
          }
        }
      }

      v104 = 0;
LABEL_116:
      v9->__begin_[(v99 + v98 + v101 - (v100 + v102 + v103))] = v104;
LABEL_117:
      v95 += 4;
    }

    while (v96 != v95);
  }

  v111 = *(a4 + 144);
  if (*(a4 + 208) != 1 || !v111)
  {
    goto LABEL_141;
  }

  v112 = *(a4 + 160);
  v223 = *(a4 + 168);
  *buf = v112;
  for (i = (*(a4 + 124) + *(a4 + 132) + *(a4 + 140) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136)) + 3) & 0xFFFFFFFC; ; i += 4)
  {
    if (v112)
    {
      v114 = __clz(__rbit64(v112));
      v115 = buf;
      v116 = v114;
      goto LABEL_136;
    }

    v112 = v223;
    if (!v223)
    {
      break;
    }

    v114 = __clz(__rbit64(v223));
    v116 = v114 | 0x40;
    v115 = &v223;
LABEL_136:
    *v115 = v112 & ~(1 << v114);
    v117 = (32 * v116 + 1128) >> 3;
    v9->__begin_[i] = v117;
    v9->__begin_[i + 1] = v117 + 1;
    v9->__begin_[i + 2] = v117 | 2;
    v9->__begin_[i + 3] = v117 + 3;
    v112 = *buf;
  }

  v111 = *(a4 + 144);
LABEL_141:
  if (*(a4 + 176) != 0 && v111 != 0)
  {
    v126 = *(a4 + 160);
    v223 = *(a4 + 168);
    *buf = v126;
    if (!*(a4 + 208))
    {
      v111 = 0;
    }

    for (j = v111 + ((*(a4 + 124) + *(a4 + 132) + *(a4 + 140) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136)) + 3) & 0xFFFFFFFC); ; j += 4)
    {
      if (v126)
      {
        v128 = __clz(__rbit64(v126));
        v129 = buf;
        v130 = v128;
      }

      else
      {
        v126 = v223;
        if (!v223)
        {
          break;
        }

        v128 = __clz(__rbit64(v223));
        v130 = v128 | 0x40;
        v129 = &v223;
      }

      *v129 = v126 & ~(1 << v128);
      v131 = (32 * v130 + 1640) >> 3;
      v9->__begin_[j] = v131;
      v9->__begin_[j + 1] = v131 + 1;
      v9->__begin_[j + 2] = v131 | 2;
      v9->__begin_[j + 3] = v131 + 3;
      v126 = *buf;
    }
  }

  if (*(a4 + 148))
  {
    v119 = *(a4 + 144);
    if (*(a4 + 208))
    {
      v120 = *(a4 + 144);
    }

    else
    {
      v120 = 0;
    }

    if (*(a4 + 176) == 0)
    {
      v119 = 0;
    }

    v9->__begin_[v120 + v119 + ((*(a4 + 124) + *(a4 + 132) + *(a4 + 140) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136)) + 3) & 0xFFFFFFFC)] = 140;
  }

  v121 = *v17;
  v122 = *(v17 - v121 + 24);
  v123 = *(v17 + v122);
  if (!*(v17 + v122 + v123))
  {
    v132 = -v121;
    goto LABEL_249;
  }

  v124 = 0;
  v125 = 0;
  while (2)
  {
    v136 = v122;
    v137 = v122 + v123;
    v138 = *(&v17[v124 + 1] + v137);
    v139 = v137 + v138;
    v140 = *(&v17[v124 + 1] + v139);
    v141 = &v17[v124] + v139 - v140;
    v142 = *(v141 + 2);
    if (v142 < 9)
    {
      if (v142 >= 5)
      {
        begin = v54->__begin_;
        goto LABEL_174;
      }
    }

    else
    {
      v143 = *(v141 + 6);
      if (v143)
      {
        v143 = *(v17 + v136 + v123 + v138 + v124 * 4 + v143 + 4);
      }

      begin = &v54->__begin_[v143];
LABEL_174:
      v145 = v136 + v123 + v138;
      if (*(&v17[v124 + 2] + v145 - v140))
      {
        switch(*(v17 + v145 + v124 * 4 + *(&v17[v124 + 2] + v145 - v140) + 4))
        {
          case 1:
            if (v142 >= 7)
            {
              v146 = v136 + v123 + v138;
              v147 = *(&v17[v124 + 2] + v146 - v140 + 2);
              if (v147)
              {
                v133 = *(v17 + v146 + v124 * 4 + v147 + 4) + 130;
                goto LABEL_165;
              }
            }

            v134 = 130;
            break;
          case 2:
            if (v142 >= 7 && (v164 = v136 + v123 + v138, (v165 = *(&v17[v124 + 2] + v164 - v140 + 2)) != 0))
            {
              v166 = (24 * *(v17 + v164 + v124 * 4 + v165 + 4) + 2152) >> 2;
            }

            else
            {
              v166 = 538;
            }

            *begin = v166 & 0x1FFFFFFF;
            *(begin + 4) = *&vaddq_s32(vdupq_n_s32(v166), xmmword_29D2F2150) & __PAIR128__(0x9FFFFFFF9FFFFFFFLL, 0x9FFFFFFF9FFFFFFFLL);
            *(begin + 20) = (v166 + 5) & 0x1FFFFFFF;
            goto LABEL_167;
          case 3:
            if (v142 >= 7 && (v155 = v136 + v123 + v138, (v156 = *(&v17[v124 + 2] + v155 - v140 + 2)) != 0))
            {
              v157 = (32 * *(v17 + v155 + v124 * 4 + v156 + 4) + 1640) >> 2;
            }

            else
            {
              v157 = 410;
            }

            *begin = v157 & 0x1FFFFFFF;
            v180 = vdupq_n_s32(v157);
            *(begin + 4) = *&vaddq_s32(v180, xmmword_29D2F2150) & __PAIR128__(0x9FFFFFFF9FFFFFFFLL, 0x9FFFFFFF9FFFFFFFLL);
            *(begin + 20) = *&vadd_s32(*v180.i8, 0x600000005) & 0x9FFFFFFF9FFFFFFFLL;
            *(begin + 28) = (v157 + 7) & 0x1FFFFFFF;
            goto LABEL_167;
          case 5:
            if (v142 >= 7)
            {
              v162 = v136 + v123 + v138;
              v163 = *(&v17[v124 + 2] + v162 - v140 + 2);
              if (v163)
              {
                v133 = *(v17 + v162 + v124 * 4 + v163 + 4) + 114;
                goto LABEL_165;
              }
            }

            v134 = 114;
            break;
          case 0x3F:
            v133 = *(a1 + 188);
            goto LABEL_165;
          case 0x40:
            *begin = 0x300000002;
            goto LABEL_167;
          case 0x63:
            if (v142 >= 7)
            {
              v169 = v136 + v123 + v138;
              v170 = *(&v17[v124 + 2] + v169 - v140 + 2);
              if (v170)
              {
                v152 = 8 * *(v17 + v169 + v124 * 4 + v170 + 4) + 152;
                goto LABEL_216;
              }
            }

            v173 = 38;
            goto LABEL_244;
          case 0x64:
            if (v142 >= 7)
            {
              v171 = v136 + v123 + v138;
              v172 = *(&v17[v124 + 2] + v171 - v140 + 2);
              if (v172)
              {
                v152 = 8 * *(v17 + v171 + v124 * 4 + v172 + 4) + 280;
                goto LABEL_216;
              }
            }

            v173 = 70;
            goto LABEL_244;
          case 0x69:
            *begin = 0x6700000066;
            goto LABEL_167;
          case 0x6A:
            v134 = 104;
            break;
          case 0x6B:
            v134 = 105;
            break;
          case 0x7A:
            *begin = xmmword_29D2F2290;
            *(begin + 16) = xmmword_29D2F22A0;
            v153 = xmmword_29D2F22B0;
            v154 = xmmword_29D2F22C0;
            goto LABEL_218;
          case 0x7E:
            *begin = xmmword_29D2F2350;
            *(begin + 16) = xmmword_29D2F2360;
            v153 = xmmword_29D2F2370;
            v154 = xmmword_29D2F2380;
            goto LABEL_218;
          case 0x7F:
            *begin = xmmword_29D2F22D0;
            *(begin + 16) = xmmword_29D2F22E0;
            v153 = xmmword_29D2F22F0;
            v154 = xmmword_29D2F2300;
            goto LABEL_218;
          case 0x80:
            *begin = xmmword_29D2F2310;
            *(begin + 16) = xmmword_29D2F2320;
            v153 = xmmword_29D2F2330;
            v154 = xmmword_29D2F2340;
            goto LABEL_218;
          case 0x81:
            *begin = xmmword_29D2F2240;
            *(begin + 16) = xmmword_29D2F2250;
            *(begin + 32) = xmmword_29D2F2260;
            *(begin + 48) = xmmword_29D2F2270;
            *(begin + 64) = xmmword_29D2F2280;
            goto LABEL_167;
          case 0x84:
            if (v142 >= 7)
            {
              v176 = v136 + v123 + v138;
              v177 = *(&v17[v124 + 2] + v176 - v140 + 2);
              if (v177)
              {
                v133 = *(v17 + v176 + v124 * 4 + v177 + 4) + 194;
                goto LABEL_165;
              }
            }

            v134 = 194;
            break;
          case 0x85:
            if (v142 >= 7)
            {
              v174 = v136 + v123 + v138;
              v175 = *(&v17[v124 + 2] + v174 - v140 + 2);
              if (v175)
              {
                v133 = *(v17 + v174 + v124 * 4 + v175 + 4) + 146;
                goto LABEL_165;
              }
            }

            v134 = 146;
            break;
          case 0x86:
            if (v142 >= 7)
            {
              v148 = v136 + v123 + v138;
              v149 = *(&v17[v124 + 2] + v148 - v140 + 2);
              if (v149)
              {
                v133 = *(v17 + v148 + v124 * 4 + v149 + 4) + 162;
                goto LABEL_165;
              }
            }

            v134 = 162;
            break;
          case 0x87:
            if (v142 >= 7)
            {
              v160 = v136 + v123 + v138;
              v161 = *(&v17[v124 + 2] + v160 - v140 + 2);
              if (v161)
              {
                v133 = *(v17 + v160 + v124 * 4 + v161 + 4) + 210;
                goto LABEL_165;
              }
            }

            v134 = 210;
            break;
          case 0x88:
            if (v142 >= 7)
            {
              v178 = v136 + v123 + v138;
              v179 = *(&v17[v124 + 2] + v178 - v140 + 2);
              if (v179)
              {
                v133 = *(v17 + v178 + v124 * 4 + v179 + 4) + 226;
                goto LABEL_165;
              }
            }

            v134 = 226;
            break;
          case 0x89:
            if (v142 >= 7 && (v150 = v136 + v123 + v138, (v151 = *(&v17[v124 + 2] + v150 - v140 + 2)) != 0))
            {
              v152 = 8 * *(v17 + v150 + v124 * 4 + v151 + 4) + 24;
LABEL_216:
              v173 = (v152 >> 2) & 0x1FFFFFFE;
            }

            else
            {
              v173 = 6;
            }

LABEL_244:
            *begin = v173;
            *(begin + 4) = v173 | 1;
            goto LABEL_167;
          case 0x8A:
            if (v142 >= 7)
            {
              v158 = v136 + v123 + v138;
              v159 = *(&v17[v124 + 2] + v158 - v140 + 2);
              if (v159)
              {
                v133 = *(v17 + v158 + v124 * 4 + v159 + 4) + 178;
                goto LABEL_165;
              }
            }

            v134 = 178;
            break;
          case 0x8C:
            v134 = 106;
            break;
          case 0x8D:
            if (v142 >= 7 && (v167 = v136 + v123 + v138, (v168 = *(&v17[v124 + 2] + v167 - v140 + 2)) != 0))
            {
              v133 = *(v17 + v167 + v124 * 4 + v168 + 4) + 242;
LABEL_165:
              v134 = v133 & 0x1FFFFFFF;
            }

            else
            {
              v134 = 242;
            }

            break;
          case 0x8E:
            *begin = xmmword_29D2F2200;
            *(begin + 16) = xmmword_29D2F2210;
            v153 = xmmword_29D2F2220;
            v154 = xmmword_29D2F2230;
LABEL_218:
            *(begin + 32) = v153;
            *(begin + 48) = v154;
            goto LABEL_167;
          default:
            goto LABEL_167;
        }

        *begin = v134;
      }
    }

LABEL_167:
    ++v125;
    v135 = *v17;
    v122 = *(v17 - v135 + 24);
    v123 = *(v17 + v122);
    ++v124;
    if (v125 < *(v17 + v122 + v123))
    {
      continue;
    }

    break;
  }

  v132 = -v135;
  LODWORD(v121) = *v17;
LABEL_249:
  v181 = *(v17 + v132 + 16);
  v182 = *(v17 + v181);
  v183 = *(v17 + v181 + v182);
  if (v183)
  {
    v184 = 4 * v183;
    v185 = v181 + v182;
    while (1)
    {
      v187 = *(v17 + v185 + 4);
      v188 = v187 - *(v17 + v185 + v187 + 4);
      v189 = v17 + v185 + v188;
      v190 = *(v189 + 2);
      if (v190 < 9)
      {
        v192 = -*(a4 + 120);
        if (v190 < 7)
        {
          goto LABEL_251;
        }
      }

      else
      {
        v191 = *(v189 + 6);
        if (v191)
        {
          LODWORD(v191) = 4 * *(v17 + v185 + v187 + v191 + 4);
        }

        v192 = v191 - *(a4 + 120);
      }

      v193 = *(v17 + v185 + v188 + 10);
      if (v193)
      {
        v186 = (32 * *(v17 + v185 + v187 + v193 + 4) + 1640) >> 3;
        goto LABEL_252;
      }

LABEL_251:
      v186 = 205;
LABEL_252:
      v9->__begin_[v192] = v186;
      v9->__begin_[v192 + 1] = (v186 + 1) & 0x1FFFFFFF;
      v9->__begin_[v192 + 2] = (v186 + 2) & 0x1FFFFFFF;
      v9->__begin_[v192 + 3] = (v186 + 3) & 0x1FFFFFFF;
      v185 += 4;
      v184 -= 4;
      if (!v184)
      {
        LODWORD(v121) = *v17;
        break;
      }
    }
  }

  v194 = (v17 - v121);
  if (*v194 >= 0x21u && (v195 = v194[16]) != 0)
  {
    v196 = *(v17 + v195);
  }

  else
  {
    v196 = 0;
  }

  {
    getAdditionalSpillBufferBytes(void)::extra = 0;
  }

  *(a1 + 192) = getAdditionalSpillBufferBytes(void)::extra + v196;
  v197 = (v17 - *v17);
  if (*v197 < 0x57u)
  {
    LODWORD(v198) = 0;
  }

  else
  {
    v198 = v197[43];
    if (v198)
    {
      LODWORD(v198) = *(v17 + v198);
    }
  }

  *(a1 + 196) = v198;
  v199 = (v17 - *v17);
  if (*v199 < 0x43u)
  {
    LODWORD(v200) = 0;
  }

  else
  {
    v200 = v199[33];
    if (v200)
    {
      LODWORD(v200) = *(v17 + v200);
    }
  }

  *(a1 + 200) = v200;
  v201 = (v17 - *v17);
  if (*v201 < 0x51u)
  {
    LODWORD(v202) = 0;
  }

  else
  {
    v202 = v201[40];
    if (v202)
    {
      LODWORD(v202) = *(v17 + v202);
    }
  }

  *(a1 + 204) = v202;
  v203 = (v17 - *v17);
  if (*v203 < 0x4Fu)
  {
    LODWORD(v204) = 0;
  }

  else
  {
    v204 = v203[39];
    if (v204)
    {
      LODWORD(v204) = *(v17 + v204);
    }
  }

  *(a1 + 212) = v204;
  v205 = (v17 - *v17);
  if (*v205 < 0x59u)
  {
    LODWORD(v206) = 0;
  }

  else
  {
    v206 = v205[44];
    if (v206)
    {
      LODWORD(v206) = *(v17 + v206);
    }
  }

  *(a1 + 208) = v206;
  v207 = (v17 - *v17);
  if (*v207 < 5u)
  {
    LODWORD(v208) = 0;
  }

  else
  {
    v208 = v207[2];
    if (v208)
    {
      LODWORD(v208) = *(v17 + v208);
    }
  }

  *(a1 + 216) = v208;
  *(a1 + 184) = *(a4 + 160) != 0;
  *(a1 + 185) = *(a4 + 192) != 0;
  *(a1 + 88) = 1;
  v209 = *(a1 + 16) - *(a1 + 8);
  v210 = v209 >> 2;
  *(a1 + 80) = v209 >> 2;
  *(a1 + 176) = 1;
  v211 = *(a1 + 104) - *(a1 + 96);
  *(a1 + 168) = v211 >> 2;
  *(a1 + 232) = v211 + 2 * v209;
  v212 = *(a4 + 208);
  if (*(a4 + 208))
  {
    v213 = *(a4 + 144);
  }

  else
  {
    v213 = 0;
  }

  v214 = (*(a4 + 124) + *(a4 + 132) + *(a4 + 140) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136)) + 3) & 0xFFFFFFFC;
  *(a1 + 220) = 8 * (v213 + v214);
  *(a1 + 224) = 8 * v214;
  v215 = *(a4 + 144);
  if (v212)
  {
    v216 = *(a4 + 144);
  }

  else
  {
    v216 = 0;
  }

  if (*(a4 + 176) == 0)
  {
    v215 = 0;
  }

  *(a1 + 228) = 8 * (v216 + v215 + v214);
  *(a1 + 236) = 8 * v210;
  return a1;
}

void sub_29CE0B140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void **a14)
{
  if (*a9 < 0)
  {
    operator delete(*(v14 + 592));
    if ((*(v14 + 327) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v14 + 327) & 0x80000000) == 0)
  {
LABEL_3:
    if (*(v14 + 303) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  operator delete(*a11);
  if (*(v14 + 303) < 0)
  {
LABEL_4:
    operator delete(*a14);
    if ((*(v14 + 279) & 0x80000000) == 0)
    {
LABEL_10:
      AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(a13);
      AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v15);
      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(*v16);
    goto LABEL_10;
  }

LABEL_8:
  if ((*(v14 + 279) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

unint64_t AGX::EndOfTileProgramVariantBase<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~EndOfTileProgramVariantBase(unint64_t a1)
{
  if (*(a1 + 368))
  {
    v2 = (a1 + 344);
    v3 = *(a1 + 376);
    v4 = *(v3 + 16);
    v20 = MEMORY[0x29EDCA5F8];
    v21 = 3221225472;
    v22 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v23 = &__block_descriptor_48_e5_v8__0l;
    v24 = v3;
    v25 = a1 + 344;
    dispatch_sync(v4, &v20);
    *(a1 + 369) = 0u;
    *v2 = 0u;
    *(a1 + 360) = 0u;
  }

  if (*(a1 + 416))
  {
    v5 = *(a1 + 424);
    v6 = *(v5 + 16);
    v20 = MEMORY[0x29EDCA5F8];
    v21 = 3221225472;
    v22 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v23 = &__block_descriptor_48_e5_v8__0l;
    v24 = v5;
    v25 = a1 + 392;
    dispatch_sync(v6, &v20);
    *(a1 + 417) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 408) = 0u;
  }

  if (*(*a1 + 16945) == 1)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::unregisterVariantEventInfo(*a1, a1);
    if ((*(a1 + 615) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(a1 + 327) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  else if ((*(a1 + 615) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(a1 + 592));
  if ((*(a1 + 327) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(a1 + 303) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(*(a1 + 304));
  if ((*(a1 + 303) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(a1 + 279) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(*(a1 + 280));
  if ((*(a1 + 279) & 0x80000000) == 0)
  {
LABEL_10:
    v7 = *(a1 + 144);
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_22:
  operator delete(*(a1 + 256));
  v7 = *(a1 + 144);
  if (v7)
  {
LABEL_11:
    *(a1 + 152) = v7;
    operator delete(v7);
  }

LABEL_12:
  v8 = *(a1 + 120);
  if (v8)
  {
    v9 = *(a1 + 128);
    v10 = *(a1 + 120);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 24);
        if (v11)
        {
          *(v9 - 16) = v11;
          operator delete(v11);
        }

        v9 -= 32;
      }

      while (v9 != v8);
      v10 = *(a1 + 120);
    }

    *(a1 + 128) = v8;
    operator delete(v10);
  }

  v12 = *(a1 + 96);
  if (v12)
  {
    *(a1 + 104) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    *(a1 + 64) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 32);
    if (v15 != v14)
    {
      do
      {
        v17 = *(v15 - 24);
        if (v17)
        {
          *(v15 - 16) = v17;
          operator delete(v17);
        }

        v15 -= 32;
      }

      while (v15 != v14);
      v16 = *(a1 + 32);
    }

    *(a1 + 40) = v14;
    operator delete(v16);
  }

  v18 = *(a1 + 8);
  if (v18)
  {
    *(a1 + 16) = v18;
    operator delete(v18);
  }

  return a1;
}

void AGX::ClearVisibilityVertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::ClearVisibilityVertexProgramVariant(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = 0;
  v466 = *MEMORY[0x29EDCA608];
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  *a1 = &unk_2A23F7EC0;
  *(a1 + 8) = a2;
  *(a1 + 56) = 0u;
  v455 = (a1 + 56);
  *(a1 + 144) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 233) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 489) = 0u;
  v454 = a1 + 544;
  *(a1 + 536) = a1 + 544;
  *(a1 + 560) = 0xFFFFFFFF00000001;
  *(a1 + 568) = 1610612736;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 672) = -1;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *(a1 + 640) = v8;
  *(a1 + 656) = v8;
  *(a1 + 608) = 0u;
  *(a1 + 624) = v8;
  *(a1 + 680) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 808) = atomic_fetch_add((a2 + 17008), 1uLL);
  *(a1 + 896) = 0;
  v444 = (a1 + 896);
  *(a1 + 904) = 0u;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1376) = 0;
  *(a1 + 1360) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1392) = 0;
  *(a1 + 1396) = 0;
  v9 = (a1 + 1423);
  *(a1 + 1400) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  v447 = (a1 + 816);
  *(a1 + 873) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0;
  *(a1 + 1468) = 0u;
  *(a1 + 1439) = 0u;
  *(a1 + 1455) = 0u;
  *(a1 + 1423) = 0u;
  *(a1 + 1504) = 0;
  *(a1 + 1488) = 0u;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1560) = 0u;
  v452 = a1 + 1512;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = *(a4 + 465);
  *(a1 + 1586) = 0;
  *(a1 + 1600) = 0u;
  v458 = (a1 + 1600);
  *(a1 + 1592) = a1 + 1600;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1728) = 0u;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0;
  if (a3[28])
  {
    v10 = a3[29] == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = 28;
  if (v10)
  {
    v11 = 98;
    v12 = a3 + 98;
  }

  else
  {
    v12 = a3 + 28;
  }

  v13 = a3[v11];
  if (v13 && v12[1])
  {
    v7 = (v13 + *v13);
  }

  v14 = (v7 - *v7);
  if (*v14 >= 5u && (v15 = v14[2]) != 0)
  {
    v457 = (v7 + v15 + *(v7 + v15));
  }

  else
  {
    v457 = 0;
  }

  v16 = 0;
  v17 = a3 + 128;
  if (a3[58])
  {
    v18 = a3[59] == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = 58;
  if (v18)
  {
    v19 = 128;
  }

  else
  {
    v17 = a3 + 58;
  }

  v20 = a3[v19];
  if (v20 && v17[1])
  {
    v16 = (v20 + *v20);
  }

  v21 = (v16 - *v16);
  if (*v21 >= 5u && (v22 = v21[2]) != 0)
  {
    v23 = (v16 + v22 + *(v16 + v22));
  }

  else
  {
    v23 = 0;
  }

  v24 = *v23;
  v25 = -v24;
  v26 = (v23 - v24);
  v27 = *(v23 - v24);
  if (v27 < 0x25)
  {
    LOBYTE(v28) = 0;
  }

  else
  {
    v28 = v26[18];
    if (v26[18])
    {
      LOBYTE(v28) = *(v23 + v28) != 0;
    }
  }

  *(a1 + 1585) = v28;
  v29 = (v457 - *v457);
  if (*v29 < 0x55u || (v30 = v29[42]) == 0 || !*(v457 + v30))
  {
LABEL_63:
    if (v27 < 7)
    {
      LODWORD(v44) = 0;
    }

    else
    {
      v44 = *(v23 + v25 + 6);
      if (*(v23 + v25 + 6))
      {
        LODWORD(v44) = *(v23 + v44);
      }
    }

    v441 = (a1 + 304);
    v442 = (a1 + 256);
    v439 = (a1 + 328);
    v440 = (a1 + 280);
    *(a1 + 800) = v44;
    v45 = (v23 - *v23);
    v437 = a1 + 928;
    if (*v45 >= 0x13u && (v46 = v45[9]) != 0)
    {
      v47 = v23 + v46 + *(v23 + v46) + 4;
    }

    else
    {
      v47 = "";
    }

    v445 = (a1 + 864);
    v446 = (a1 + 840);
    v48 = (a1 + 1400);
    v451 = a1 + 1536;
    v438 = (a1 + 1616);
    v443 = (a1 + 144);
    MEMORY[0x29ED51E00](v447, v47);
    v49 = (v23 - *v23);
    if (*v49 >= 9u && (v50 = v49[4]) != 0)
    {
      v51 = v23 + v50 + *(v23 + v50) + 4;
    }

    else
    {
      v51 = "";
    }

    MEMORY[0x29ED51E00](v446, v51);
    v52 = (v23 - *v23);
    if (*v52 < 0x29u)
    {
      LOBYTE(v53) = 0;
    }

    else
    {
      v53 = v52[20];
      if (v53)
      {
        LOBYTE(v53) = *(v23 + v53) != 0;
      }
    }

    *(a1 + 888) = v53;
    std::string::operator=(v445, &__str);
    v54 = (v23 - *v23);
    if (*v54 >= 0x51u && (v55 = v54[40]) != 0)
    {
      v56 = v23 + v55 + *(v23 + v55) + 4;
    }

    else
    {
      v56 = "";
    }

    MEMORY[0x29ED51E00](v444, v56);
    v57 = (v23 - *v23);
    v453 = v23;
    if (*v57 >= 5u && v57[2] && *(a2 + 16608) == 1)
    {
      v58 = a3[1];
      if (v58 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_699;
      }

      v59 = *a3;
      if (v58 >= 0x17)
      {
        operator new();
      }

      __dst[23] = a3[1];
      if (v58)
      {
        memmove(__dst, v59, v58);
      }

      __dst[v58] = 0;
      if (*v9 < 0)
      {
        operator delete(*v48);
      }

      *v48 = *__dst;
      *(a1 + 1416) = *&__dst[16];
      v60 = a3[3];
      if (a3[4])
      {
        v61 = v60 == 0;
      }

      else
      {
        v61 = 1;
      }

      if (v61)
      {
        v60 = a3[73];
      }

      *(a1 + 1424) = v60 - *a3;
    }

    v62 = a3 + 113;
    if (a3[43])
    {
      v63 = a3[44] == 0;
    }

    else
    {
      v63 = 1;
    }

    v64 = 43;
    if (v63)
    {
      v64 = 113;
    }

    else
    {
      v62 = a3 + 43;
    }

    v448 = a3;
    v65 = a3[v64];
    if (!v65 || !v62[1])
    {
LABEL_126:
      v78 = v448 + 138;
      if (v448[68])
      {
        v79 = v448[69] == 0;
      }

      else
      {
        v79 = 1;
      }

      v80 = 68;
      if (v79)
      {
        v80 = 138;
      }

      else
      {
        v78 = v448 + 68;
      }

      v81 = v448[v80];
      v82 = v78[1];
      if (v81)
      {
        v83 = v82 == 0;
      }

      else
      {
        v83 = 1;
      }

      if (v83)
      {
        v84 = 0;
        v85 = v457;
      }

      else
      {
        v86 = (v81 + *v81);
        v87 = (v86 - *v86);
        v85 = v457;
        if (*v87 >= 5u && (v88 = v87[2]) != 0)
        {
          v84 = *(v86 + v88);
        }

        else
        {
          v84 = 0;
        }
      }

      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
      }

      *(a1 + 1624) = (v84 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0) / 1000000.0;
      v89 = (v85 - *v85);
      if (*v89 < 5u)
      {
        LODWORD(v90) = 0;
      }

      else
      {
        v90 = v89[2];
        if (v90)
        {
          LODWORD(v90) = *(v85 + v90);
        }
      }

      *v438 = v90;
      v91 = (v85 - *v85);
      if (*v91 < 0x2Du)
      {
        LODWORD(v92) = 0;
      }

      else
      {
        v92 = v91[22];
        if (v92)
        {
          LODWORD(v92) = *(v85 + v92);
        }
      }

      *(a1 + 1620) = v92;
      v93 = (v85 - *v85);
      if (*v93 < 0x35u)
      {
        LODWORD(v94) = 0;
      }

      else
      {
        v94 = v93[26];
        if (v94)
        {
          LODWORD(v94) = *(v85 + v94);
        }
      }

      *(a1 + 1660) = v94;
      v95 = (v85 - *v85);
      if (*v95 < 0x43u)
      {
        LODWORD(v96) = 0;
      }

      else
      {
        v96 = v95[33];
        if (v96)
        {
          LODWORD(v96) = *(v85 + v96);
        }
      }

      *(a1 + 1696) = v96;
      v97 = v448 + 108;
      if (v448[38])
      {
        v98 = v448[39] == 0;
      }

      else
      {
        v98 = 1;
      }

      v99 = 38;
      if (v98)
      {
        v99 = 108;
      }

      else
      {
        v97 = v448 + 38;
      }

      v100 = v448[v99];
      if (v100 && v97[1])
      {
        v101 = (v100 + *v100);
        v102 = (v101 - *v101);
        if (*v102 < 0xDu)
        {
          LODWORD(v103) = 0;
        }

        else
        {
          v103 = v102[6];
          if (v103)
          {
            LODWORD(v103) = *(v101 + v103);
          }
        }

        *(a1 + 1620) = v103;
        v104 = (v101 - *v101);
        if (*v104 < 0xBu)
        {
          LODWORD(v105) = 0;
        }

        else
        {
          v105 = v104[5];
          if (v105)
          {
            LODWORD(v105) = *(v101 + v105);
          }
        }

        *(a1 + 1628) = v105;
        v106 = (v101 - *v101);
        if (*v106 < 0x11u)
        {
          LODWORD(v107) = 0;
        }

        else
        {
          v107 = v106[8];
          if (v107)
          {
            LODWORD(v107) = *(v101 + v107);
          }
        }

        *(a1 + 1632) = v107;
        v108 = (v101 - *v101);
        if (*v108 < 0x13u)
        {
          LODWORD(v109) = 0;
        }

        else
        {
          v109 = v108[9];
          if (v109)
          {
            LODWORD(v109) = *(v101 + v109);
          }
        }

        *(a1 + 1636) = v109;
        v110 = (v101 - *v101);
        if (*v110 < 0x17u)
        {
          LODWORD(v111) = 0;
        }

        else
        {
          v111 = v110[11];
          if (v111)
          {
            LODWORD(v111) = *(v101 + v111);
          }
        }

        *(a1 + 1640) = v111;
        v112 = (v101 - *v101);
        if (*v112 < 0x1Bu)
        {
          LODWORD(v113) = 0;
        }

        else
        {
          v113 = v112[13];
          if (v113)
          {
            LODWORD(v113) = *(v101 + v113);
          }
        }

        *(a1 + 1644) = v113;
        v114 = (v101 - *v101);
        if (*v114 < 0x15u)
        {
          LODWORD(v115) = 0;
        }

        else
        {
          v115 = v114[10];
          if (v115)
          {
            LODWORD(v115) = *(v101 + v115);
          }
        }

        *(a1 + 1648) = v115;
        v116 = (v101 - *v101);
        if (*v116 < 0x19u)
        {
          LODWORD(v117) = 0;
        }

        else
        {
          v117 = v116[12];
          if (v117)
          {
            LODWORD(v117) = *(v101 + v117);
          }
        }

        *(a1 + 1652) = v117;
        v118 = (v101 - *v101);
        if (*v118 < 0x1Du)
        {
          LODWORD(v119) = 0;
        }

        else
        {
          v119 = v118[14];
          if (v119)
          {
            LODWORD(v119) = *(v101 + v119);
          }
        }

        *(a1 + 1656) = v119;
        v120 = (v101 - *v101);
        if (*v120 < 0xFu)
        {
          LODWORD(v121) = 0;
        }

        else
        {
          v121 = v120[7];
          if (v121)
          {
            LODWORD(v121) = *(v101 + v121);
          }
        }

        *(a1 + 1660) = v121;
        v122 = (v101 - *v101);
        if (*v122 < 0x1Fu)
        {
          LODWORD(v123) = 0;
        }

        else
        {
          v123 = v122[15];
          if (v123)
          {
            LODWORD(v123) = *(v101 + v123);
          }
        }

        *(a1 + 1664) = v123;
        v124 = (v101 - *v101);
        if (*v124 < 0x21u)
        {
          LODWORD(v125) = 0;
        }

        else
        {
          v125 = v124[16];
          if (v125)
          {
            LODWORD(v125) = *(v101 + v125);
          }
        }

        *(a1 + 1668) = v125;
        v126 = (v101 - *v101);
        if (*v126 < 0x23u)
        {
          LODWORD(v127) = 0;
        }

        else
        {
          v127 = v126[17];
          if (v127)
          {
            LODWORD(v127) = *(v101 + v127);
          }
        }

        *(a1 + 1672) = v127;
        v128 = (v101 - *v101);
        if (*v128 < 0x25u)
        {
          LODWORD(v129) = 0;
        }

        else
        {
          v129 = v128[18];
          if (v129)
          {
            LODWORD(v129) = *(v101 + v129);
          }
        }

        *(a1 + 1676) = v129;
        v130 = (v101 - *v101);
        if (*v130 < 0x27u)
        {
          LODWORD(v131) = 0;
        }

        else
        {
          v131 = v130[19];
          if (v131)
          {
            LODWORD(v131) = *(v101 + v131);
          }
        }

        *(a1 + 1680) = v131;
        v132 = (v101 - *v101);
        if (*v132 < 0x29u)
        {
          LODWORD(v133) = 0;
        }

        else
        {
          v133 = v132[20];
          if (v133)
          {
            LODWORD(v133) = *(v101 + v133);
          }
        }

        *(a1 + 1684) = v133;
        v134 = (v101 - *v101);
        if (*v134 < 0x2Bu)
        {
          LODWORD(v135) = 0;
        }

        else
        {
          v135 = v134[21];
          if (v135)
          {
            LODWORD(v135) = *(v101 + v135);
          }
        }

        *(a1 + 1688) = v135;
        v136 = (v101 - *v101);
        if (*v136 < 7u)
        {
          LODWORD(v137) = 0;
        }

        else
        {
          v137 = v136[3];
          if (v137)
          {
            LODWORD(v137) = *(v101 + v137);
          }
        }

        *(a1 + 1692) = v137;
        v138 = (v101 - *v101);
        if (*v138 >= 5u && (v139 = v138[2]) != 0)
        {
          v140 = *(v101 + v139);
        }

        else
        {
          v140 = 0;
        }

        *(a1 + 1700) = v140;
      }

      if (v448[53])
      {
        v141 = v448[54];
        if (v141)
        {
          v142 = v448[53];
        }

        else
        {
          v142 = v448[123];
        }

        if (v141)
        {
          v143 = v448 + 53;
        }

        else
        {
          v143 = v448 + 123;
        }
      }

      else
      {
        v143 = v448 + 123;
        v142 = v448[123];
      }

      MEMORY[0x29ED51E10](a1 + 1760, v142, v143[1]);
      std::string::push_back((a1 + 1760), 0);
      v144 = *v85;
      v145 = v85 - v144;
      v146 = *(v85 - v144);
      if (v146 < 0x39)
      {
        goto LABEL_271;
      }

      v147 = -v144;
      v148 = *(v145 + 28);
      if (v148)
      {
        v149 = (v85 + v148 + *(v85 + v148));
        if (*v149)
        {
          *(a1 + 1504) = 1;
          v150 = (v149 + v149[1] + 4);
          v151 = (v150 - *v150);
          if (*v151 >= 9u && (v152 = v151[4]) != 0)
          {
            v153 = *(v150 + v152);
          }

          else
          {
            v153 = 0;
          }

          *(a1 + 1704) = v153;
          *(a1 + 1708) = 1;
          v154 = *v85;
          v147 = -v154;
          v146 = *(v85 - v154);
        }
      }

      if (v146 < 0x3B)
      {
        goto LABEL_271;
      }

      v155 = v85 + v147;
      if (*(v155 + 29))
      {
        v156 = (v85 + *(v155 + 29) + *(v85 + *(v155 + 29)));
        v157 = *v156;
        if (v157)
        {
          v158 = v156 + 1;
          do
          {
            v160 = *v158++;
            v159 = v160;
            if (!(v160 >> 20))
            {
              *(a1 + 1488 + 8 * (v159 > 0x3F)) |= 1 << v159;
            }

            --v157;
          }

          while (v157);
        }
      }

      if (v146 < 0x57)
      {
LABEL_271:
        LODWORD(v161) = 0;
      }

      else
      {
        v161 = *(v155 + 43);
        if (*(v155 + 43))
        {
          LODWORD(v161) = *(v85 + v161);
        }
      }

      *(a1 + 692) = v161;
      v162 = (v85 - *v85);
      if (*v162 >= 0x21u && (v163 = v162[16]) != 0)
      {
        v164 = *(v85 + v163);
      }

      else
      {
        v164 = 0;
      }

      v165 = &qword_2A17A1000;
      {
        getAdditionalSpillBufferBytes(void)::extra = 0;
      }

      *(a1 + 696) = getAdditionalSpillBufferBytes(void)::extra + v164;
      v166 = (v85 - *v85);
      if (*v166 < 0x59u)
      {
        LODWORD(v167) = 0;
      }

      else
      {
        v167 = v166[44];
        if (v167)
        {
          LODWORD(v167) = *(v85 + v167);
        }
      }

      *(a1 + 720) = v167;
      v168 = (v85 - *v85);
      if (*v168 < 0x51u)
      {
        LODWORD(v169) = 0;
      }

      else
      {
        v169 = v168[40];
        if (v169)
        {
          LODWORD(v169) = *(v85 + v169);
        }
      }

      *(a1 + 724) = v169;
      v170 = (v85 - *v85);
      if (*v170 < 0x4Bu)
      {
        LODWORD(v171) = 0;
      }

      else
      {
        v171 = v170[37];
        if (v171)
        {
          LODWORD(v171) = *(v85 + v171);
        }
      }

      *(a1 + 732) = v171;
      v172 = (v85 - *v85);
      v173 = *v172;
      if (v173 >= 0x25)
      {
        if (v172[18] && *(v85 + v172[18]))
        {
          if (v173 < 0x27)
          {
            LOBYTE(v174) = 0;
            v175 = 1;
            goto LABEL_300;
          }

          v174 = v172[19];
          goto LABEL_294;
        }

        if (v173 >= 0x27)
        {
          v174 = v172[19];
          if (v172[19] && *(v85 + v172[19]))
          {
            v175 = 1;
            LOBYTE(v174) = 1;
            goto LABEL_300;
          }

          if (v173 < 0x29)
          {
            goto LABEL_695;
          }

          if (v172[20] && *(v85 + v172[20]))
          {
LABEL_294:
            v175 = 1;
            goto LABEL_696;
          }

          if (v173 >= 0x71 && (v429 = v172[56]) != 0)
          {
            v175 = *(v85 + v429) != 0;
          }

          else
          {
LABEL_695:
            v175 = 0;
          }

LABEL_696:
          if (v174)
          {
            LOBYTE(v174) = *(v85 + v174) != 0;
          }

LABEL_300:
          *(a1 + 742) = v174;
          v176 = (v23 - *v23);
          v177 = *v176;
          if (v177 < 0x21)
          {
            v179 = 0;
            LODWORD(v178) = 0;
          }

          else
          {
            v178 = v176[16];
            if (v176[16])
            {
              LODWORD(v178) = *(v23 + v178);
            }

            if (v177 < 0x4D)
            {
              v179 = 0;
            }

            else
            {
              v179 = v176[38];
              if (v176[38])
              {
                v179 = *(v23 + v179);
              }

              if (v177 >= 0x4F)
              {
                v180 = v176[39];
                if (v180)
                {
                  v180 = *(v23 + v180);
                }

LABEL_312:
                *(a1 + 784) = v178 | (v179 << 32);
                *(a1 + 792) = v180;
                *(a1 + 746) = (v175 | v174) & 1;
                v181 = *v85;
                v182 = (v85 - v181);
                v183 = *(v85 - v181);
                if (v183 < 0x37)
                {
                  LOBYTE(v184) = 0;
                }

                else
                {
                  v184 = v182[27];
                  if (v182[27])
                  {
                    LOBYTE(v184) = *(v85 + v184) != 0;
                  }
                }

                *(a1 + 741) = v184;
                v185 = (v23 - *v23);
                v186 = *v185;
                if (v186 < 0x33)
                {
                  LOBYTE(v187) = 0;
                }

                else
                {
                  v187 = v185[25];
                  if (v185[25])
                  {
                    LOBYTE(v187) = *(v23 + v187) != 0;
                  }
                }

                *(a1 + 747) = v187;
                if (v183 < 0x3F)
                {
                  LOBYTE(v188) = 0;
                }

                else
                {
                  v188 = v182[31];
                  if (v182[31])
                  {
                    v189 = (v85 + v188 + *(v85 + v188));
                    v188 = *v189;
                    if (v188)
                    {
                      v190 = v189 + 1;
                      while (1)
                      {
                        v192 = *v190++;
                        v191 = v192;
                        if (v192 < 0x36 && ((0x3F000000000777uLL >> v191) & 1) != 0)
                        {
                          break;
                        }

                        if (!--v188)
                        {
                          goto LABEL_329;
                        }
                      }

                      LOBYTE(v188) = 1;
                    }
                  }
                }

LABEL_329:
                *(a1 + 749) = v188;
                if (v186 <= 0x14)
                {
                  LOBYTE(v194) = 0;
                  *(a1 + 743) = 0;
                }

                else
                {
                  v193 = v185[10];
                  if (v185[10])
                  {
                    LOBYTE(v193) = *(v23 + v193) != 0;
                  }

                  *(a1 + 743) = v193;
                  if (v186 < 0x25)
                  {
                    LOBYTE(v194) = 0;
                  }

                  else
                  {
                    v194 = v185[18];
                    if (v185[18])
                    {
                      LOBYTE(v194) = *(v23 + v194) != 0;
                    }
                  }
                }

                v195 = -v181;
                *(a1 + 1585) = v194;
                if (v183 < 0x5D)
                {
                  LOBYTE(v196) = 0;
                }

                else
                {
                  v196 = v182[46];
                  if (v196)
                  {
                    LOBYTE(v196) = *(v85 + v196) != 0;
                  }
                }

                v449 = v175;
                *(a1 + 748) = v196;
                if (v186 >= 0x23 && (v197 = v185[17]) != 0)
                {
                  *(a1 + 1587) = 1;
                  v198 = (v23 + v197 + *(v23 + v197));
                  v199 = *v198;
                  if (v199)
                  {
                    v200 = &v198[v199];
                    while (1)
                    {
                      v201 = v198[1];
                      v202 = (++v198 + v201);
                      v203 = (v202 - *v202);
                      v204 = *v203;
                      if (v204 < 7)
                      {
                        v205 = 0;
                        v207 = 0;
                        if (v204 < 5)
                        {
                          goto LABEL_353;
                        }

                        v206 = v203[2];
                        if (v206)
                        {
                          goto LABEL_352;
                        }
                      }

                      else if (v203[3])
                      {
                        v205 = *(v202 + v203[3]);
                        v206 = v203[2];
                        if (v206)
                        {
                          goto LABEL_352;
                        }
                      }

                      else
                      {
                        v205 = 0;
                        v206 = v203[2];
                        if (v206)
                        {
LABEL_352:
                          v207 = *(v202 + v206);
                          goto LABEL_353;
                        }
                      }

                      v207 = 0;
LABEL_353:
                      v208 = v458;
LABEL_354:
                      v209 = *v208;
                      if (!*v208)
                      {
LABEL_358:
                        operator new();
                      }

                      while (1)
                      {
                        v208 = v209;
                        v210 = *(v209 + 28);
                        if (v207 < v210)
                        {
                          goto LABEL_354;
                        }

                        if (v210 >= v207)
                        {
                          break;
                        }

                        v209 = v208[1];
                        if (!v209)
                        {
                          goto LABEL_358;
                        }
                      }

                      *(v208 + 8) = v205;
                      if (v198 == v200)
                      {
                        v213 = *v457;
                        v195 = -v213;
                        v23 = v453;
                        v165 = &qword_2A17A1000;
                        if (*(v457 - v213) < 0x21u)
                        {
LABEL_367:
                          v212 = 0;
                          v211 = v448;
                          goto LABEL_369;
                        }

LABEL_364:
                        v211 = v448;
                        if (*(v457 + v195 + 32))
                        {
                          v212 = *(v457 + *(v457 + v195 + 32));
                        }

                        else
                        {
                          v212 = 0;
                        }

LABEL_369:
                        {
                          *(v165 + 402) = 0;
                        }

                        v214 = *(v165 + 402) + v212;
                        *(a1 + 688) = v214;
                        v215 = (v457 - *v457);
                        if (*v215 < 0x43u)
                        {
                          LODWORD(v216) = 0;
                        }

                        else
                        {
                          v216 = v215[33];
                          if (v216)
                          {
                            LODWORD(v216) = *(v457 + v216);
                          }
                        }

                        *(a1 + 700) = v216;
                        v217 = (v457 - *v457);
                        if (*v217 < 5u)
                        {
                          LODWORD(v218) = 0;
                        }

                        else
                        {
                          v218 = v217[2];
                          if (v218)
                          {
                            LODWORD(v218) = *(v457 + v218);
                          }
                        }

                        *(a1 + 684) = v218;
                        v219 = (v457 - *v457);
                        if (*v219 < 0x51u)
                        {
                          LODWORD(v220) = 0;
                        }

                        else
                        {
                          v220 = v219[40];
                          if (v220)
                          {
                            LODWORD(v220) = *(v457 + v220);
                          }
                        }

                        *(a1 + 716) = v220;
                        v221 = (v457 - *v457);
                        if (*v221 < 0x4Fu)
                        {
                          LODWORD(v222) = 0;
                        }

                        else
                        {
                          v222 = v221[39];
                          if (v222)
                          {
                            LODWORD(v222) = *(v457 + v222);
                          }
                        }

                        *(a1 + 728) = v222;
                        *(a1 + 736) = *(a4 + 468);
                        v223 = (v457 - *v457);
                        if ((*(v457 + v223[6] + *(v457 + v223[6])) | v214) != 0 || v449)
                        {
                          goto LABEL_402;
                        }

                        v224 = *v223;
                        if (v224 < 0x21)
                        {
                          v226 = v165;
                          v225 = 0;
                        }

                        else
                        {
                          if (v223[16])
                          {
                            v225 = *(v457 + v223[16]);
                          }

                          else
                          {
                            v225 = 0;
                          }

                          v226 = v165;
                          if (v224 >= 0x43 && v223[33])
                          {
                            v227 = *(v457 + v223[33]);
LABEL_397:
                            {
                              *(v226 + 402) = 0;
                            }

                            if (!(v227 + v225 + *(v226 + 402)))
                            {
                              v228 = (v457 - *v457);
                              if (*v228 < 0x5Fu)
                              {
                                LOBYTE(v229) = 0;
                              }

                              else
                              {
                                v229 = v228[47];
                                if (v229)
                                {
                                  LOBYTE(v229) = *(v457 + v229) != 0;
                                }
                              }

LABEL_403:
                              *(a1 + 740) = v229;
                              v230 = (v23 - *v23);
                              if (*v230 < 0x11u)
                              {
                                LODWORD(v231) = 0;
                              }

                              else
                              {
                                v231 = v230[8];
                                if (v231)
                                {
                                  LODWORD(v231) = *(v23 + v231);
                                }
                              }

                              v232 = (a1 + 1200);
                              *(a1 + 1392) = v231;
                              {
                              }

                              v233 = (v211 + 3);
                              if (v211[4])
                              {
                                v234 = v211[3] == 0;
                              }

                              else
                              {
                                v234 = 1;
                              }

                              v235 = v211;
                              v236 = (v211 + 73);
                              if (v234)
                              {
                                v237 = v233 + 70;
                              }

                              else
                              {
                                v237 = v233;
                              }

                              AGX::Heap<true>::allocateImpl(__dst, a2 + 6496, v237[1], (a1 + 1448));
                              *(a1 + 1480) += *&__dst[16];
                              v238 = *&__dst[16];
                              *v232 = *__dst;
                              *(a1 + 1216) = v238;
                              *(a1 + 1225) = *&__dst[25];
                              *(a1 + 920) = *(a1 + 1200);
                              *(a1 + 952) = a2 + 6496;
                              v239 = *(a1 + 1216);
                              *(a1 + 960) = *v232;
                              *(a1 + 976) = v239;
                              *(a1 + 985) = *(a1 + 1225);
                              if (*v233)
                              {
                                v240 = v235[4];
                                if (v240)
                                {
                                  v241 = *v233;
                                }

                                else
                                {
                                  v241 = v235[73];
                                }

                                if (v240)
                                {
                                  v236 = v233;
                                }
                              }

                              else
                              {
                                v241 = *v236;
                              }

                              memcpy(*(a1 + 1208), v241, v236[1]);
                              v242 = *(a1 + 1208);
                              v243 = *(a1 + 1216);
                              *(a1 + 928) = *(a1 + 920);
                              *(a1 + 936) = v242;
                              *(a1 + 944) = v243;
                              v244 = (v235 + 8);
                              if (v235[8])
                              {
                                if (v235[9])
                                {
                                  v245 = v235 + 8;
                                }

                                else
                                {
                                  v245 = v235 + 78;
                                }

                                v246 = v245[1];
                                v247 = v443;
                                if (!v246)
                                {
                                  goto LABEL_438;
                                }
                              }

                              else
                              {
                                v246 = v235[79];
                                v247 = v443;
                                if (!v246)
                                {
                                  goto LABEL_438;
                                }
                              }

                              AGX::Heap<true>::allocateImpl(__dst, a2 + 6328, v246, (a1 + 1456));
                              *(a1 + 1480) += *&__dst[16];
                              v248 = *&__dst[16];
                              *(a1 + 1248) = *__dst;
                              *(a1 + 1264) = v248;
                              *(a1 + 1273) = *&__dst[25];
                              v249 = *(a1 + 1264);
                              *(a1 + 1008) = *(a1 + 1248);
                              *(a1 + 1024) = v249;
                              *(a1 + 1033) = *(a1 + 1273);
                              if (*v244)
                              {
                                v250 = v235[9];
                                if (v250)
                                {
                                  v251 = *v244;
                                }

                                else
                                {
                                  v251 = v235[78];
                                }

                                if (v250)
                                {
                                  v252 = v235 + 8;
                                }

                                else
                                {
                                  v252 = v235 + 78;
                                }
                              }

                              else
                              {
                                v252 = v235 + 78;
                                v251 = v235[78];
                              }

                              memcpy(*(a1 + 1256), v251, v252[1]);
LABEL_438:
                              v253 = (v235 + 13);
                              if (v235[13])
                              {
                                if (v235[14])
                                {
                                  v254 = v235 + 13;
                                }

                                else
                                {
                                  v254 = v235 + 83;
                                }

                                v255 = v254[1];
                                if (!v255)
                                {
                                  goto LABEL_454;
                                }
                              }

                              else
                              {
                                v255 = v235[84];
                                if (!v255)
                                {
                                  goto LABEL_454;
                                }
                              }

                              AGX::Heap<true>::allocateImpl(__dst, a2 + 6328, v255, (a1 + 1464));
                              *(a1 + 1480) += *&__dst[16];
                              v256 = *&__dst[16];
                              *(a1 + 1296) = *__dst;
                              *(a1 + 1312) = v256;
                              *(a1 + 1321) = *&__dst[25];
                              v257 = *(a1 + 1312);
                              *(a1 + 1056) = *(a1 + 1296);
                              *(a1 + 1072) = v257;
                              *(a1 + 1081) = *(a1 + 1321);
                              if (*v253)
                              {
                                v258 = v235[14];
                                if (v258)
                                {
                                  v259 = *v253;
                                }

                                else
                                {
                                  v259 = v235[83];
                                }

                                if (v258)
                                {
                                  v260 = v235 + 13;
                                }

                                else
                                {
                                  v260 = v235 + 83;
                                }
                              }

                              else
                              {
                                v260 = v235 + 83;
                                v259 = v235[83];
                              }

                              memcpy(*(a1 + 1304), v259, v260[1]);
                              v261 = *(a1 + 1312);
                              *(a1 + 1152) = *(a1 + 1296);
                              *(a1 + 1168) = v261;
LABEL_454:
                              v262 = v235 + 23;
                              if (v235[23])
                              {
                                if (!v235[24])
                                {
                                  v262 = v235 + 93;
                                }

                                v263 = v262[1];
                              }

                              else
                              {
                                v263 = v235[94];
                              }

                              v264 = v455;
                              if (v263)
                              {
                                AGX::Heap<true>::allocateImpl(__dst, a2 + 6328, v263, (a1 + 1472));
                                *(a1 + 1480) += *&__dst[16];
                                v265 = *&__dst[16];
                                *(a1 + 1344) = *__dst;
                                *(a1 + 1360) = v265;
                                *(a1 + 1369) = *&__dst[25];
                                v266 = *(a1 + 1360);
                                *(a1 + 1104) = *(a1 + 1344);
                                *(a1 + 1120) = v266;
                                *(a1 + 1129) = *(a1 + 1369);
                                v267 = *(a1 + 1360);
                                *(a1 + 1176) = *(a1 + 1344);
                                *(a1 + 1192) = v267;
                                v264 = v455;
                              }

                              if ((*(a1 + 888) & 1) != 0 || *(*(a1 + 8) + 16945) == 1)
                              {
                                {
                                  {
                                    v269 = v447;
                                    if (*(a1 + 839) < 0)
                                    {
                                      v269 = *v447;
                                    }

                                    v270 = v445;
                                    if (*(a1 + 887) < 0)
                                    {
                                      v270 = v445->__r_.__value_.__r.__words[0];
                                    }

                                    v271 = v446;
                                    if (*(a1 + 863) < 0)
                                    {
                                      v271 = *v446;
                                    }

                                    v272 = *(a1 + 800);
                                    v273 = *(a1 + 808);
                                    v274 = v444;
                                    if (*(a1 + 919) < 0)
                                    {
                                      v274 = *v444;
                                    }

                                    v275 = *(a1 + 920);
                                    v276 = *(a1 + 1216);
                                    *__dst = 136448002;
                                    *&__dst[4] = v269;
                                    *&__dst[12] = 2082;
                                    *&__dst[14] = v270;
                                    *&__dst[22] = 2082;
                                    *&__dst[24] = v271;
                                    *&__dst[32] = 1026;
                                    *&__dst[34] = v272;
                                    *&__dst[38] = 2050;
                                    *&__dst[40] = v273;
                                    *v463 = 2082;
                                    *&v463[2] = v274;
                                    *&v463[10] = 2050;
                                    *&v463[12] = v275;
                                    v464 = 2050;
                                    v465 = v276;
                                    _os_signpost_emit_with_name_impl(&dword_29CA13000, v268, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Type=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Addr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}zu", __dst, 0x4Eu);
                                  }
                                }

                                v277 = *(a1 + 8);
                                v278 = v447;
                                if (*(a1 + 839) < 0)
                                {
                                  v278 = *v447;
                                }

                                v279 = v445;
                                if (*(a1 + 887) < 0)
                                {
                                  v279 = v445->__r_.__value_.__r.__words[0];
                                }

                                v280 = v446;
                                if (*(a1 + 863) < 0)
                                {
                                  v280 = *v446;
                                }

                                v281 = v444;
                                if (*(a1 + 919) < 0)
                                {
                                  v281 = *v444;
                                }

                                v282 = *(a1 + 800);
                                v283 = *(a1 + 808);
                                v284 = *(a1 + 920);
                                v285 = *(a1 + 1216);
                                v286 = *(a1 + 888);
                                *__dst = v278;
                                *&__dst[8] = v279;
                                *&__dst[16] = v280;
                                *&__dst[24] = v281;
                                *&__dst[32] = v282;
                                *&__dst[40] = v283;
                                *v463 = v284;
                                *&v463[8] = v285;
                                v463[16] = v286;
                                AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(v277, a1, __dst);
                              }

                              v287 = *(a4 + 208);
                              v289 = *(a4 + 144);
                              v288 = *(a4 + 148);
                              if (v287)
                              {
                                v290 = *(a4 + 144);
                              }

                              else
                              {
                                v290 = 0;
                              }

                              v291 = *(a4 + 176);
                              if (*(a4 + 176) == 0)
                              {
                                v289 = 0;
                              }

                              v292 = (*(a4 + 132) + *(a4 + 124) + *(a4 + 140) - (*(a4 + 128) + *(a4 + 120) + *(a4 + 136)));
                              *(a1 + 48) = v290 + v288 + v289 + *(a4 + 152) + ((v292 + 3) & 0xFFFFFFFC);
                              v293 = *(a1 + 56);
                              v294 = (*(a1 + 64) - v293) >> 2;
                              if (v292 <= v294)
                              {
                                if (v292 < v294)
                                {
                                  *(a1 + 64) = v293 + 4 * v292;
                                }
                              }

                              else
                              {
                                std::vector<unsigned int>::__append(v264, v292 - v294);
                                v291 = *(a4 + 176);
                                v288 = *(a4 + 148);
                                v287 = *(a4 + 208);
                              }

                              if (v287)
                              {
                                v295 = *(a4 + 144);
                              }

                              else
                              {
                                v295 = 0;
                              }

                              if (v291 | *(a4 + 184))
                              {
                                v296 = *(a4 + 144);
                              }

                              else
                              {
                                v296 = 0;
                              }

                              v297 = (v288 + v295 + v296);
                              v298 = *(a1 + 144);
                              v299 = (*(a1 + 152) - v298) >> 2;
                              if (v297 <= v299)
                              {
                                if (v297 < v299)
                                {
                                  *(a1 + 152) = v298 + 4 * v297;
                                }
                              }

                              else
                              {
                                std::vector<unsigned int>::__append(v247, v297 - v299);
                              }

                              v300 = *v457;
                              v301 = *(v457 - v300 + 16);
                              v302 = *(v457 + v301);
                              v303 = *(v457 + v301 + v302);
                              if (v303)
                              {
                                v304 = 4 * v303;
                                v305 = v301 + v302;
                                while (1)
                                {
                                  v307 = *(v457 + v305 + 4);
                                  v308 = v457 + v305 + v307;
                                  v309 = v307 - *(v308 + 1);
                                  v310 = v457 + v305 + v309;
                                  v311 = *(v310 + 2);
                                  if (v311 < 7)
                                  {
                                    goto LABEL_514;
                                  }

                                  v312 = *(v310 + 5);
                                  if (!v312 || (*(v457 + v305 + v307 + v312 + 4) & 0x80000000) == 0)
                                  {
                                    break;
                                  }

LABEL_507:
                                  v305 += 4;
                                  v304 -= 4;
                                  if (!v304)
                                  {
                                    v300 = *v457;
                                    goto LABEL_521;
                                  }
                                }

                                if (v311 < 9)
                                {
LABEL_514:
                                  LODWORD(v313) = 0;
                                }

                                else
                                {
                                  v313 = *(v457 + v305 + v309 + 12);
                                  if (v313)
                                  {
                                    LODWORD(v313) = 4 * *(v457 + v305 + v307 + v313 + 4);
                                  }
                                }

                                v314 = v313 - *(a4 + 120);
                                v264->__begin_[v314] = 1610612735;
                                v264->__begin_[v314 + 1] = 0x40000000;
                                v264->__begin_[v314 + 2] = 1073741825;
                                v264->__begin_[v314 + 3] = 1073741826;
                                v315 = v307 - *(v308 + 1);
                                if (*(v457 + v305 + v315 + 4) >= 0xBu && *(v457 + v305 + v315 + 14) && *(v457 + v305 + v307 + *(v457 + v305 + v315 + 14) + 4))
                                {
                                  v316 = *(v457 + v305 + v315 + 10);
                                  if (v316)
                                  {
                                    v306 = *(v457 + v305 + v307 + v316 + 4) & 0xFFFFF;
                                  }

                                  else
                                  {
                                    v306 = 0;
                                  }

                                  *(a1 + 768 + 8 * (v306 > 0x3F)) |= 1 << v306;
                                }

                                goto LABEL_507;
                              }

LABEL_521:
                              v317 = -v300;
                              v318 = v457 + v317;
                              if (*(a1 + 742))
                              {
                                v319 = *(v318 + 12);
                                v320 = *(v457 + v319);
                                v321 = (v457 + v319 + v320);
                                v322 = *v321;
                                if (v322)
                                {
                                  v323 = 0;
                                  v324 = 4 * v322;
                                  v325 = v457 + v319 + v320;
                                  while (1)
                                  {
                                    v326 = v321[v323 / 4 + 1];
                                    v327 = v326 - *(&v321[v323 / 4 + 1] + v326);
                                    v328 = &v325[v323 + v327];
                                    v329 = *(v328 + 2);
                                    if (v329 >= 5)
                                    {
                                      v330 = *(v328 + 4);
                                      if (v330)
                                      {
                                        if (v325[v323 + 4 + v326 + v330] == 93)
                                        {
                                          if (v329 < 7)
                                          {
                                            break;
                                          }

                                          v331 = *&v325[v323 + 10 + v327];
                                          if (!v331)
                                          {
                                            break;
                                          }

                                          v332 = *&v325[v323 + 4 + v326 + v331];
                                          if ((v332 & 0x80000000) == 0 && (v332 & 0xFFF00000) != 0x400000)
                                          {
                                            break;
                                          }
                                        }
                                      }
                                    }

                                    v323 += 4;
                                    if (v324 == v323)
                                    {
                                      goto LABEL_533;
                                    }
                                  }

                                  *(a1 + 768) = vorrq_s8(*(a1 + 768), *(a1 + 784));
                                }
                              }

LABEL_533:
                              v333 = *(v318 + 10);
                              v334 = *(v457 + v333);
                              v335 = *(v457 + v333 + v334);
                              if (!v335)
                              {
                                goto LABEL_549;
                              }

                              v336 = 4 * v335;
                              v337 = v333 + v334;
                              while (2)
                              {
                                v338 = *(v457 + v337 + 4);
                                v339 = v338 - *(v457 + v337 + v338 + 4);
                                v340 = v457 + v337 + v339;
                                v341 = *(v340 + 2);
                                if (v341 < 7)
                                {
                                  goto LABEL_542;
                                }

                                v342 = *(v340 + 5);
                                if (v342 && *(v457 + v337 + v338 + v342 + 4) < 0)
                                {
                                  goto LABEL_535;
                                }

                                if (v341 < 9 || (v343 = *(v457 + v337 + v339 + 12)) == 0)
                                {
LABEL_542:
                                  v344 = 0;
                                  goto LABEL_543;
                                }

                                v344 = *(v457 + v337 + v338 + v343 + 4);
LABEL_543:
                                if (*(a1 + 1584))
                                {
                                  v345 = 3;
                                }

                                else
                                {
                                  v345 = 1;
                                }

                                v346 = *(a4 + 124) + v345 * v344 - (*(a4 + 120) + *(a4 + 128));
                                *(*(a1 + 56) + 4 * v346) = 0x7FFFFFFF;
                                if (*(a1 + 1584) == 1)
                                {
                                  v264->__begin_[v346 + 1] = 0x7FFFFFFF;
                                  v264->__begin_[v346 + 2] = 1610612736;
                                }

LABEL_535:
                                v337 += 4;
                                v336 -= 4;
                                if (v336)
                                {
                                  continue;
                                }

                                break;
                              }

                              v317 = -*v457;
LABEL_549:
                              v450 = a1 + 752;
                              v347 = (v457 + *(v457 + v317 + 12));
                              v348 = (v347 + *v347);
                              v349 = *v348;
                              if (v349)
                              {
                                v350 = &v348[v349];
                                while (1)
                                {
                                  v351 = v348[1];
                                  v352 = (++v348 + v351);
                                  v353 = (v352 - *v352);
                                  v354 = *v353;
                                  if (v354 < 7)
                                  {
                                    break;
                                  }

                                  if (!v353[3] || (*(v352 + v353[3]) & 0x80000000) == 0)
                                  {
                                    if (v354 < 9)
                                    {
                                      LODWORD(v355) = 0;
                                      goto LABEL_560;
                                    }

                                    v355 = v353[4];
                                    if (v353[4])
                                    {
                                      LODWORD(v355) = (*(v352 + v355) >> 1) & 0x1FFFFFFF;
LABEL_560:
                                      v356 = v353[3];
                                      if (v356)
                                      {
                                        LODWORD(v356) = *(v352 + v356) & 0xFFFFF;
                                      }

                                      goto LABEL_564;
                                    }

LABEL_559:
                                    if (v354 >= 7)
                                    {
                                      goto LABEL_560;
                                    }

                                    LODWORD(v356) = 0;
LABEL_564:
                                    v357 = *(a4 + 124) + v355 + *(a4 + 132) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136));
                                    v264->__begin_[v357] = 0;
                                    v358 = (v352 - *v352);
                                    if (*v358 >= 0xBu)
                                    {
                                      v359 = v358[5];
                                      if (v359)
                                      {
                                        if (*(v352 + v359))
                                        {
                                          *(v450 + 8 * (v356 > 0x3F)) |= 1 << v356;
                                        }
                                      }
                                    }

                                    if (*(a1 + 1587) == 1)
                                    {
                                      v360 = *v458;
                                      if (!*v458)
                                      {
LABEL_698:
                                        abort();
                                      }

                                      v361 = 2 * v357;
                                      v362 = (2 * v357) | 1;
                                      while (1)
                                      {
                                        while (1)
                                        {
                                          v363 = *(v360 + 7);
                                          if (v356 >= v363)
                                          {
                                            break;
                                          }

                                          v360 = *v360;
                                          if (!v360)
                                          {
                                            goto LABEL_698;
                                          }
                                        }

                                        if (v363 >= v356)
                                        {
                                          break;
                                        }

                                        v360 = v360[1];
                                        if (!v360)
                                        {
                                          goto LABEL_698;
                                        }
                                      }

                                      v364 = v454;
LABEL_577:
                                      v365 = *v364;
                                      if (!*v364)
                                      {
LABEL_581:
                                        operator new();
                                      }

                                      while (1)
                                      {
                                        v364 = v365;
                                        v366 = *(v365 + 28);
                                        if (v362 < v366)
                                        {
                                          goto LABEL_577;
                                        }

                                        if (v366 > v361)
                                        {
                                          break;
                                        }

                                        v365 = *(v364 + 8);
                                        if (!v365)
                                        {
                                          goto LABEL_581;
                                        }
                                      }

                                      *(v364 + 32) = *(v360 + 8);
                                      v264 = v455;
                                    }
                                  }

                                  if (v348 == v350)
                                  {
                                    goto LABEL_583;
                                  }
                                }

                                LODWORD(v355) = 0;
                                goto LABEL_559;
                              }

LABEL_583:
                              AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather(v264);
                              v369 = *(a4 + 120);
                              v368 = *(a4 + 124);
                              v370 = *(a4 + 128);
                              v371 = *(a4 + 132);
                              v372 = *(a4 + 136);
                              v373 = *(a4 + 140);
                              v374 = (v368 + v371 + v373 - (v369 + v370 + v372) + 3) & 0xFFFFFFFC;
                              v375 = *(a4 + 160);
                              v376 = *(a4 + 168);
                              if (*(a4 + 160) == 0)
                              {
                                goto LABEL_599;
                              }

                              v377 = 0;
                              v378 = *(a4 + 144);
                              if (*(a4 + 208) != 1 || !v378)
                              {
                                goto LABEL_593;
                              }

                              v379 = 0;
                              *__dst = *(a4 + 160);
                              *&v461 = v376;
                              v380 = v375;
                              while (2)
                              {
                                if (v380)
                                {
                                  v381 = __dst;
LABEL_588:
                                  *v381 = v380 & (v380 - 1);
                                  *&v443->__begin_[v379] = xmmword_29D2F21F0;
                                  v379 += 4;
                                  v380 = *__dst;
                                  continue;
                                }

                                break;
                              }

                              v380 = v461;
                              if (v461)
                              {
                                v381 = &v461;
                                goto LABEL_588;
                              }

                              v372 = *(a4 + 136);
                              v373 = *(a4 + 140);
                              v370 = *(a4 + 128);
                              v371 = *(a4 + 132);
                              v369 = *(a4 + 120);
                              v368 = *(a4 + 124);
                              v378 = *(a4 + 144);
                              v377 = v378;
LABEL_593:
                              v382 = *(a4 + 176);
                              if (*&v382 != 0 && v378 != 0)
                              {
                                v393 = v377 - v374 + ((v373 + v371 - (v372 + v370 + v369) + v368 + 3) & 0xFFFFFFFC);
                                *__dst = v375;
                                *&v461 = v376;
                                while (1)
                                {
                                  if (v375)
                                  {
                                    v394 = __dst;
                                  }

                                  else
                                  {
                                    v375 = v461;
                                    if (!v461)
                                    {
                                      break;
                                    }

                                    v394 = &v461;
                                  }

                                  *v394 = v375 & (v375 - 1);
                                  begin = v443->__begin_;
                                  v443->__begin_[v393] = -1;
                                  begin[v393 + 1] = 0;
                                  begin[v393 + 2] = 1;
                                  begin[v393 + 3] = 2;
                                  v393 += 4;
                                  v375 = *__dst;
                                }
                              }

                              v367 = vorrq_s8(*(a1 + 768), v382);
                              *(a1 + 768) = v367;
LABEL_599:
                              if (*(a4 + 148))
                              {
                                v384 = *(a4 + 144);
                                if (*(a4 + 208))
                                {
                                  v385 = *(a4 + 144);
                                }

                                else
                                {
                                  v385 = 0;
                                }

                                if (*(a4 + 176) == 0)
                                {
                                  v384 = 0;
                                }

                                v386 = ((*(a4 + 124) + *(a4 + 132) + *(a4 + 140) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136)) + 3) & 0xFFFFFFFC) - v374 + v385 + v384;
                                v388 = *(a4 + 192);
                                v387 = *(a4 + 200);
                                *__dst = v388;
                                *&v461 = v387;
                                while (1)
                                {
                                  if (v388)
                                  {
                                    v389 = __dst;
                                  }

                                  else
                                  {
                                    v388 = v461;
                                    if (!v461)
                                    {
                                      break;
                                    }

                                    v389 = &v461;
                                  }

                                  *v389 = v388 & (v388 - 1);
                                  v390 = *(a1 + 144);
                                  *(v390 + 4 * v386) = -1;
                                  if (*(a1 + 1584) == 1)
                                  {
                                    *(v390 + 4 * (v386 + 1)) = -1;
                                    *(v390 + 4 * (v386 + 2)) = 0;
                                  }

                                  v386 += 4;
                                  v388 = *__dst;
                                }
                              }

                              if (*(a4 + 467) == 1)
                              {
                                v391 = (v457 - *v457);
                                if (*v391 < 0x17u)
                                {
                                  LODWORD(v392) = 0;
                                }

                                else
                                {
                                  v392 = v391[11];
                                  if (v392)
                                  {
                                    v392 = (*(v457 + v392) + 3) >> 2;
                                  }
                                }

                                *(a1 + 408) = v392;
                                *(a1 + 412) = 0;
                              }

                              v396 = (v457 - *v457);
                              if (*v396 >= 0x17u && (v397 = v396[11]) != 0)
                              {
                                v398 = *(v457 + v397) + 3;
                                v399 = (a1 + 176);
                                v400 = *(a1 + 176);
                                v401 = v398 >> 2;
                                *(a1 + 52) = v401;
                                v402 = *(a1 + 168);
                                v403 = (v400 - v402) >> 2;
                                if (v401 > v403)
                                {
                                  std::vector<unsigned int>::__append((a1 + 168), v401 - v403);
                                  goto LABEL_631;
                                }
                              }

                              else
                              {
                                v401 = 0;
                                v399 = (a1 + 176);
                                v404 = *(a1 + 176);
                                *(a1 + 52) = 0;
                                v402 = *(a1 + 168);
                                v403 = (v404 - v402) >> 2;
                              }

                              if (v403 > v401)
                              {
                                *v399 = v402 + 4 * v401;
                              }

LABEL_631:
                              if (v442 != (a4 + 216))
                              {
                                std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v442, *(a4 + 216), *(a4 + 224), (*(a4 + 224) - *(a4 + 216)) >> 2);
                              }

                              if (v441 != (a4 + 240))
                              {
                                std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v441, *(a4 + 240), *(a4 + 248), (*(a4 + 248) - *(a4 + 240)) >> 2);
                              }

                              if (v440 != (a4 + 320))
                              {
                                std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v440, *(a4 + 320), *(a4 + 328), (*(a4 + 328) - *(a4 + 320)) >> 1);
                              }

                              if (v439 != (a4 + 368))
                              {
                                std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v439, *(a4 + 368), *(a4 + 376), (*(a4 + 376) - *(a4 + 368)) >> 1);
                              }

                              *(a1 + 352) = *(a4 + 416);
                              *(a1 + 744) = *(a4 + 160) != 0;
                              *(a1 + 745) = *(a4 + 148) != 0;
                              v405 = *(v457 - *v457 + 24);
                              v406 = *(v457 + v405);
                              v407 = (v457 + v405 + v406);
                              v408 = *v407;
                              if (v408)
                              {
                                v409 = 0;
                                v410 = 4 * v408;
                                v411 = v457 + v405 + v406;
                                do
                                {
                                  v412 = v407[v409 / 4 + 1];
                                  v413 = v412 - *(&v407[v409 / 4 + 1] + v412);
                                  v414 = &v411[v409 + v413];
                                  v415 = *(v414 + 2);
                                  if (v415 >= 5)
                                  {
                                    v416 = *(v414 + 4);
                                    if (v416)
                                    {
                                      if (v415 >= 7 && v411[v409 + 4 + v412 + v416] == 139)
                                      {
                                        if (*&v411[v409 + 10 + v413])
                                        {
                                          v417 = *&v411[v409 + 4 + v412 + *&v411[v409 + 10 + v413]] & 0xFFFFF;
                                          if (v415 >= 0xB)
                                          {
                                            goto LABEL_650;
                                          }
                                        }

                                        else
                                        {
                                          v417 = 0;
                                          if (v415 >= 0xB)
                                          {
LABEL_650:
                                            v418 = *&v411[v409 + 14 + v413];
                                            if (v418 && v411[v409 + 4 + v412 + v418])
                                            {
                                              *(v450 + 8 * (v417 > 0x3F)) |= 1 << v417;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }

                                  v409 += 4;
                                }

                                while (v410 != v409);
                              }

                              v419 = (v453 - *v453);
                              if (*v419 >= 0xDu)
                              {
                                v420 = v419[6];
                                if (v419[6])
                                {
                                  v421 = v453 + v420;
                                  v422 = *(v453 + v420);
                                  if (*(v453 + v420 + v422) > ((*(a1 + 1528) - *(a1 + 1512)) >> 4))
                                  {
                                    operator new();
                                  }

                                  v423 = (v453 - *v453);
                                  if (*v423 >= 0x41u && (v424 = v423[32]) != 0)
                                  {
                                    v425 = v453 + v424 + *(v453 + v424);
                                    if (!*&v421[v422])
                                    {
                                      goto LABEL_678;
                                    }

LABEL_662:
                                    if (v425)
                                    {
                                      v426 = 0;
                                      v427 = v453 + v420 + v422 + 4;
                                      do
                                      {
                                        if (*v425)
                                        {
                                          v428 = *(v425 + 8 * v426 + 4);
                                        }

                                        else
                                        {
                                          v428 = 0;
                                        }

                                        *__dst = *(v427 + 8 * v426);
                                        *&__dst[8] = v428;
                                        std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v452, __dst);
                                        ++v426;
                                      }

                                      while (v426 < *&v421[v422]);
                                    }

                                    else
                                    {
                                      v430 = v453 + v420 + v422 + 4;
                                      do
                                      {
                                        *__dst = *(v430 + 8 * v425);
                                        std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v452, __dst);
                                        ++v425;
                                      }

                                      while (v425 < *&v421[v422]);
                                    }
                                  }

                                  else
                                  {
                                    v425 = 0;
                                    if (*&v421[v422])
                                    {
                                      goto LABEL_662;
                                    }
                                  }
                                }
                              }

LABEL_678:
                              v431 = (v453 - *v453);
                              if (*v431 >= 0xBu)
                              {
                                v432 = v431[5];
                                if (v432)
                                {
                                  v433 = (v453 + v432 + *(v453 + v432));
                                  if (*v433 > ((*(a1 + 1576) - *(a1 + 1560)) >> 4))
                                  {
                                    operator new();
                                  }

                                  if (*v433 > ((*(a1 + 1552) - *(a1 + 1536)) >> 3))
                                  {
                                    operator new();
                                  }

                                  if (*v433)
                                  {
                                    v434 = 0;
                                    v435 = v433 + 1;
                                    do
                                    {
                                      AGX::SamplerDescriptor::SamplerDescriptor(__dst, (v435 + *v435), *v367.i32);
                                      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateBindlessConstantSampler(&v461, a2, __dst);
                                      std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](a1 + 1560, &v461);
                                      v460 = *(v461 + 96);
                                      std::vector<unsigned long long>::push_back[abi:nn200100](v451, &v460);
                                      v436 = *(&v461 + 1);
                                      if (*(&v461 + 1) && !atomic_fetch_add((*(&v461 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                                      {
                                        (v436->__on_zero_shared)(v436);
                                        std::__shared_weak_count::__release_weak(v436);
                                      }

                                      if (SBYTE1(v465) < 0)
                                      {
                                        operator delete(*v463);
                                      }

                                      ++v434;
                                      ++v435;
                                    }

                                    while (v434 < *v433);
                                  }
                                }
                              }

                              *(a1 + 1396) = 0;
                              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(__str.__r_.__value_.__l.__data_);
                              }

                              *a1 = &unk_2A23F77F0;
                              *__dst = *v437;
                              *&__dst[16] = *(v437 + 16);
                              AGX::ClearVisibilityVertexProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::ClearVisibilityVertexProgramVariantESLState(a1 + 1784, a2, v448, a4, __dst);
                            }

LABEL_402:
                            LOBYTE(v229) = 1;
                            goto LABEL_403;
                          }
                        }

                        v227 = 0;
                        goto LABEL_397;
                      }
                    }
                  }
                }

                else
                {
                  *(a1 + 1587) = 0;
                }

                if (v183 < 0x21)
                {
                  goto LABEL_367;
                }

                goto LABEL_364;
              }
            }
          }

          v180 = 0;
          goto LABEL_312;
        }
      }

      v175 = 0;
      LOBYTE(v174) = 0;
      goto LABEL_300;
    }

    v66 = (v65 + *v65);
    v67 = (v66 - *v66);
    v68 = *v67;
    if (v67[2])
    {
      v69 = (v66 + v67[2] + *(v66 + v67[2]));
      if (v68 < 7)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v69 = 0;
      if (v68 < 7)
      {
        goto LABEL_115;
      }
    }

    v70 = v67[3];
    if (v70)
    {
      v71 = v66 + v70 + *(v66 + v70);
      if (!*v69)
      {
        goto LABEL_126;
      }

      goto LABEL_116;
    }

LABEL_115:
    v71 = 0;
    if (!*v69)
    {
      goto LABEL_126;
    }

LABEL_116:
    v72 = 0;
    v73 = v71 + 4;
    v74 = (v69 + 2);
    while (1)
    {
      v75 = *(v74 - 1);
      v76 = strlen(&v74[v75]);
      if (v76 > 0x7FFFFFFFFFFFFFF7)
      {
        break;
      }

      v77 = v76;
      if (v76 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v76;
      if (v76)
      {
        memmove(__dst, &v74[v75], v76);
      }

      __dst[v77] = 0;
      std::vector<std::string>::push_back[abi:nn200100](a1 + 1712, __dst);
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      *__dst = *&v73[4 * v72];
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 1736, __dst);
      ++v72;
      v74 += 4;
      if (v72 >= *v69)
      {
        goto LABEL_126;
      }
    }

LABEL_699:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v27 < 0x45)
  {
    if (v27 < 0x3D)
    {
      LOWORD(v32) = 0;
      if (v27 < 0x3B)
      {
        LODWORD(v34) = 0;
        v35 = 0;
        LOWORD(v31) = 0;
        v33 = 0;
LABEL_56:
        *(a1 + 560) = v34;
        v36 = v32 + v34 - 1;
        v37 = -v34;
        v38 = *(a1 + 568);
        v39 = (v31 | ((v37 & v36) << 32) | (v33 << 48)) + v35 + (v38 & 0xFF000000);
        *(a1 + 568) = v39;
        if (v39 != v38)
        {
          *(a1 + 592) = 0uLL;
          *(a1 + 608) = 0uLL;
          *(a1 + 576) = 0uLL;
          *&v40 = -1;
          *(&v40 + 1) = -1;
          *(a1 + 624) = v40;
          *(a1 + 640) = v40;
          *(a1 + 656) = v40;
          *(a1 + 672) = -1;
        }

        v41 = (v23 - *v23);
        if (*v41 < 0x57u)
        {
          LODWORD(v42) = 0;
        }

        else
        {
          v42 = v41[43];
          if (v42)
          {
            LODWORD(v42) = *(v23 + v42);
          }
        }

        *(a1 + 680) = v42;
        v43 = *v23;
        v25 = -v43;
        v27 = *(v23 - v43);
        goto LABEL_63;
      }

      LOWORD(v31) = 0;
      v33 = v26[29];
      if (!v26[29])
      {
LABEL_41:
        if (v27 < 0x3F)
        {
          LODWORD(v34) = 0;
          v35 = 0;
        }

        else
        {
          v34 = v26[31];
          if (v26[31])
          {
            v34 = *(v23 + v34);
          }

          if (v27 < 0x4B)
          {
            v35 = 0;
          }

          else
          {
            v35 = v26[37];
            if (v26[37])
            {
              v35 = *(v23 + v35) << 16;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_40:
      v33 = *(v23 + v33);
      goto LABEL_41;
    }

    LOWORD(v31) = 0;
    v32 = v26[30];
    if (v26[30])
    {
      goto LABEL_38;
    }
  }

  else
  {
    v31 = v26[34];
    if (v26[34])
    {
      LODWORD(v31) = *(v23 + v31);
    }

    v32 = v26[30];
    if (v26[30])
    {
LABEL_38:
      LODWORD(v32) = *(v23 + v32);
    }
  }

  v33 = v26[29];
  if (!v26[29])
  {
    goto LABEL_41;
  }

  goto LABEL_40;
}