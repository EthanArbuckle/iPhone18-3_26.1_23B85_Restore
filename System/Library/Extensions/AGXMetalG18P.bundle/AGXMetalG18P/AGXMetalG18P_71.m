void sub_29CE0E4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, char *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, void **a19, void **a20, void **a21, void **a22, uint64_t a23, void **a24, void **a25, void **a26, void **a27, void **a28, uint64_t a29, uint64_t a30, void **a31, void **a32, uint64_t a33, void **a34, uint64_t a35, uint64_t a36, uint64_t a37, void **a38)
{
  CompileStatistics::~CompileStatistics(a18);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a38);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v38 + 1560));
  v41 = *a31;
  if (*a31)
  {
    *(v38 + 1544) = v41;
    operator delete(v41);
  }

  v42 = *a32;
  if (*a32)
  {
    *(v38 + 1520) = v42;
    operator delete(v42);
  }

  if (*a11 < 0)
  {
    operator delete(*a10);
    if ((*(v38 + 919) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v38 + 919) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v38 + 887) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  operator delete(*a25);
  if (*(v38 + 887) < 0)
  {
LABEL_8:
    operator delete(*a26);
    if ((*(v38 + 863) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((*(v38 + 863) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v38 + 839) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_27:
  operator delete(*a27);
  if ((*(v38 + 839) & 0x80000000) == 0)
  {
LABEL_11:
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a34);
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::GlobalBindingTableInfo::~GlobalBindingTableInfo(a12);
    v43 = *a19;
    if (*a19)
    {
      *(v38 + 336) = v43;
      operator delete(v43);
    }

    v44 = *a21;
    if (*a21)
    {
      *(v38 + 312) = v44;
      operator delete(v44);
    }

    v45 = *a20;
    if (*a20)
    {
      *(v38 + 288) = v45;
      operator delete(v45);
    }

    v46 = *a22;
    if (*a22)
    {
      *(v38 + 264) = v46;
      operator delete(v46);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v38 + 168);
    v47 = *a24;
    if (*a24)
    {
      *(v38 + 152) = v47;
      operator delete(v47);
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(a35);
    if (*(v39 - 201) < 0)
    {
      operator delete(*(v39 - 224));
    }

    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(*a28);
  goto LABEL_11;
}

void AGX::TileDispatchVertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::TileDispatchVertexProgramVariant(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = 0;
  v464 = *MEMORY[0x29EDCA608];
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  *a1 = &unk_2A23F7EE0;
  *(a1 + 8) = a2;
  *(a1 + 56) = 0u;
  v454 = (a1 + 56);
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
  v452 = a1 + 544;
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
  v442 = (a1 + 896);
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
  v445 = (a1 + 816);
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
  v451 = a1 + 1512;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = *(a4 + 465);
  *(a1 + 1586) = 0;
  *(a1 + 1600) = 0u;
  v456 = (a1 + 1600);
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
    v449 = (v8 + v16 + *(v8 + v16));
  }

  else
  {
    v449 = 0;
  }

  v17 = 0;
  v18 = a3 + 128;
  if (a3[58])
  {
    v19 = a3[59] == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = 58;
  if (v19)
  {
    v20 = 128;
  }

  else
  {
    v18 = a3 + 58;
  }

  v21 = a3[v20];
  if (v21 && v18[1])
  {
    v17 = (v21 + *v21);
  }

  v22 = (v17 - *v17);
  if (*v22 < 5u)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22[2];
    if (v23)
    {
      v23 = (v23 + v17 + *(v23 + v17));
    }
  }

  v24 = *v23;
  v25 = -v24;
  v455 = v23;
  v26 = (v23 - v24);
  v27 = *v26;
  if (v27 < 0x25)
  {
    LOBYTE(v28) = 0;
  }

  else
  {
    v28 = v26[18];
    if (v26[18])
    {
      LOBYTE(v28) = *(v455 + v28) != 0;
    }
  }

  *(a1 + 1585) = v28;
  v29 = (v449 - *v449);
  if (*v29 < 0x55u || (v30 = v29[42]) == 0 || !*(v449 + v30))
  {
LABEL_63:
    if (v27 < 7)
    {
      LODWORD(v44) = 0;
    }

    else
    {
      v44 = *(v455 + v25 + 6);
      if (*(v455 + v25 + 6))
      {
        LODWORD(v44) = *(v455 + v44);
      }
    }

    v439 = (a1 + 304);
    v440 = (a1 + 256);
    v437 = (a1 + 328);
    v438 = (a1 + 280);
    *(a1 + 800) = v44;
    v45 = (v455 - *v455);
    v435 = a1 + 928;
    if (*v45 >= 0x13u && (v46 = v45[9]) != 0)
    {
      v47 = v455 + v46 + *(v455 + v46) + 4;
    }

    else
    {
      v47 = "";
    }

    v443 = (a1 + 864);
    v444 = (a1 + 840);
    v434 = a1 + 1400;
    v450 = a1 + 1536;
    v436 = (a1 + 1616);
    v441 = (a1 + 144);
    MEMORY[0x29ED51E00](v445, v47);
    v48 = (v455 - *v455);
    if (*v48 >= 9u && (v49 = v48[4]) != 0)
    {
      v50 = v455 + v49 + *(v455 + v49) + 4;
    }

    else
    {
      v50 = "";
    }

    MEMORY[0x29ED51E00](v444, v50);
    v51 = (v455 - *v455);
    if (*v51 < 0x29u)
    {
      LOBYTE(v52) = 0;
    }

    else
    {
      v52 = v51[20];
      if (v52)
      {
        LOBYTE(v52) = *(v455 + v52) != 0;
      }
    }

    *(a1 + 888) = v52;
    std::string::operator=(v443, &__str);
    v53 = (v455 - *v455);
    if (*v53 >= 0x51u && (v54 = v53[40]) != 0)
    {
      v55 = v455 + v54 + *(v455 + v54) + 4;
    }

    else
    {
      v55 = "";
    }

    MEMORY[0x29ED51E00](v442, v55);
    v56 = (v455 - *v455);
    if (*v56 >= 5u && v56[2] && *(a2 + 16608) == 1)
    {
      v57 = a3[1];
      if (v57 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_698;
      }

      v58 = *a3;
      if (v57 >= 0x17)
      {
        operator new();
      }

      __dst[23] = a3[1];
      if (v57)
      {
        memmove(__dst, v58, v57);
      }

      __dst[v57] = 0;
      if (*v10 < 0)
      {
        operator delete(*v434);
      }

      *v434 = *__dst;
      *(v434 + 16) = *&__dst[16];
      v59 = a3[3];
      if (a3[4])
      {
        v60 = v59 == 0;
      }

      else
      {
        v60 = 1;
      }

      if (v60)
      {
        v59 = a3[73];
      }

      *(a1 + 1424) = v59 - *a3;
    }

    v453 = a2;
    v61 = a3 + 113;
    if (a3[43])
    {
      v62 = a3[44] == 0;
    }

    else
    {
      v62 = 1;
    }

    v63 = 43;
    if (v62)
    {
      v63 = 113;
    }

    else
    {
      v61 = a3 + 43;
    }

    v446 = a3;
    v64 = a3[v63];
    if (!v64 || !v61[1])
    {
LABEL_126:
      v77 = v446;
      v78 = v446 + 138;
      if (v446[68])
      {
        v79 = v446[69] == 0;
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
        v78 = v446 + 68;
      }

      v81 = v446[v80];
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
        v85 = v455;
        v86 = v449;
      }

      else
      {
        v87 = (v81 + *v81);
        v88 = (v87 - *v87);
        v85 = v455;
        v86 = v449;
        if (*v88 >= 5u && (v89 = v88[2]) != 0)
        {
          v84 = *(v87 + v89);
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

      *v436 = v91;
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
      v98 = v446 + 108;
      if (v446[38])
      {
        v99 = v446[39] == 0;
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
        v98 = v446 + 38;
      }

      v101 = v446[v100];
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

      if (v446[53])
      {
        v142 = v446[54];
        if (v142)
        {
          v143 = v446[53];
        }

        else
        {
          v143 = v446[123];
        }

        if (v142)
        {
          v144 = v446 + 53;
        }

        else
        {
          v144 = v446 + 123;
        }
      }

      else
      {
        v144 = v446 + 123;
        v143 = v446[123];
      }

      MEMORY[0x29ED51E10](a1 + 1760, v143, v144[1]);
      std::string::push_back((a1 + 1760), 0);
      v145 = *v86;
      v146 = v86 - v145;
      v147 = *(v86 - v145);
      if (v147 < 0x39)
      {
        goto LABEL_271;
      }

      v148 = -v145;
      v149 = *(v146 + 28);
      if (v149)
      {
        v150 = (v86 + v149 + *(v86 + v149));
        if (*v150)
        {
          *(a1 + 1504) = 1;
          v151 = (v150 + v150[1] + 4);
          v152 = (v151 - *v151);
          if (*v152 >= 9u && (v153 = v152[4]) != 0)
          {
            v154 = *(v151 + v153);
          }

          else
          {
            v154 = 0;
          }

          *(a1 + 1704) = v154;
          *(a1 + 1708) = 1;
          v155 = *v86;
          v148 = -v155;
          v147 = *(v86 - v155);
        }
      }

      if (v147 < 0x3B)
      {
        goto LABEL_271;
      }

      v156 = v86 + v148;
      if (*(v156 + 29))
      {
        v157 = (v86 + *(v156 + 29) + *(v86 + *(v156 + 29)));
        v158 = *v157;
        if (v158)
        {
          v159 = v157 + 1;
          do
          {
            v161 = *v159++;
            v160 = v161;
            if (!(v161 >> 20))
            {
              *(a1 + 1488 + 8 * (v160 > 0x3F)) |= 1 << v160;
            }

            --v158;
          }

          while (v158);
        }
      }

      if (v147 < 0x57)
      {
LABEL_271:
        LODWORD(v162) = 0;
      }

      else
      {
        v162 = *(v156 + 43);
        if (*(v156 + 43))
        {
          LODWORD(v162) = *(v86 + v162);
        }
      }

      *(a1 + 692) = v162;
      v163 = (v86 - *v86);
      if (*v163 >= 0x21u && (v164 = v163[16]) != 0)
      {
        v165 = *(v86 + v164);
      }

      else
      {
        v165 = 0;
      }

      {
        getAdditionalSpillBufferBytes(void)::extra = 0;
      }

      *(a1 + 696) = getAdditionalSpillBufferBytes(void)::extra + v165;
      v166 = (v86 - *v86);
      if (*v166 < 0x59u)
      {
        LODWORD(v167) = 0;
      }

      else
      {
        v167 = v166[44];
        if (v167)
        {
          LODWORD(v167) = *(v86 + v167);
        }
      }

      *(a1 + 720) = v167;
      v168 = (v86 - *v86);
      if (*v168 < 0x51u)
      {
        LODWORD(v169) = 0;
      }

      else
      {
        v169 = v168[40];
        if (v169)
        {
          LODWORD(v169) = *(v86 + v169);
        }
      }

      *(a1 + 724) = v169;
      v170 = (v86 - *v86);
      if (*v170 < 0x4Bu)
      {
        LODWORD(v171) = 0;
      }

      else
      {
        v171 = v170[37];
        if (v171)
        {
          LODWORD(v171) = *(v86 + v171);
        }
      }

      *(a1 + 732) = v171;
      v172 = (v86 - *v86);
      v173 = *v172;
      if (v173 >= 0x25)
      {
        if (v172[18] && *(v86 + v172[18]))
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
          if (v172[19] && *(v86 + v172[19]))
          {
            v175 = 1;
            LOBYTE(v174) = 1;
            goto LABEL_300;
          }

          if (v173 < 0x29)
          {
            goto LABEL_694;
          }

          if (v172[20] && *(v86 + v172[20]))
          {
LABEL_294:
            v175 = 1;
            goto LABEL_695;
          }

          if (v173 >= 0x71 && (v426 = v172[56]) != 0)
          {
            v175 = *(v86 + v426) != 0;
          }

          else
          {
LABEL_694:
            v175 = 0;
          }

LABEL_695:
          if (v174)
          {
            LOBYTE(v174) = *(v86 + v174) != 0;
          }

LABEL_300:
          *(a1 + 742) = v174;
          v176 = (v85 - *v85);
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
              LODWORD(v178) = *(v85 + v178);
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
                v179 = *(v85 + v179);
              }

              if (v177 >= 0x4F)
              {
                v180 = v176[39];
                if (v180)
                {
                  v180 = *(v85 + v180);
                }

LABEL_312:
                *(a1 + 784) = v178 | (v179 << 32);
                *(a1 + 792) = v180;
                *(a1 + 746) = (v175 | v174) & 1;
                v181 = *v86;
                v182 = (v86 - v181);
                v183 = *(v86 - v181);
                if (v183 < 0x37)
                {
                  LOBYTE(v184) = 0;
                }

                else
                {
                  v184 = v182[27];
                  if (v182[27])
                  {
                    LOBYTE(v184) = *(v86 + v184) != 0;
                  }
                }

                *(a1 + 741) = v184;
                v185 = (v85 - *v85);
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
                    LOBYTE(v187) = *(v85 + v187) != 0;
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
                    v189 = (v86 + v188 + *(v86 + v188));
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
                    LOBYTE(v193) = *(v85 + v193) != 0;
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
                      LOBYTE(v194) = *(v85 + v194) != 0;
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
                    LOBYTE(v196) = *(v86 + v196) != 0;
                  }
                }

                v447 = v175;
                *(a1 + 748) = v196;
                if (v186 >= 0x23 && (v197 = v185[17]) != 0)
                {
                  *(a1 + 1587) = 1;
                  v198 = (v85 + v197 + *(v85 + v197));
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
                      v208 = v456;
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
                        v86 = v449;
                        v211 = *v449;
                        v195 = -v211;
                        v183 = *(v449 - v211);
                        v77 = v446;
                        v85 = v455;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  *(a1 + 1587) = 0;
                }

                if (v183 >= 0x21 && *(v86 + v195 + 32))
                {
                  v212 = *(v86 + *(v86 + v195 + 32));
                }

                else
                {
                  v212 = 0;
                }

                {
                  getAdditionalSpillBufferBytes(void)::extra = 0;
                }

                v213 = getAdditionalSpillBufferBytes(void)::extra + v212;
                *(a1 + 688) = getAdditionalSpillBufferBytes(void)::extra + v212;
                v214 = (v86 - *v86);
                if (*v214 < 0x43u)
                {
                  LODWORD(v215) = 0;
                }

                else
                {
                  v215 = v214[33];
                  if (v215)
                  {
                    LODWORD(v215) = *(v86 + v215);
                  }
                }

                *(a1 + 700) = v215;
                v216 = (v86 - *v86);
                if (*v216 < 5u)
                {
                  LODWORD(v217) = 0;
                }

                else
                {
                  v217 = v216[2];
                  if (v217)
                  {
                    LODWORD(v217) = *(v86 + v217);
                  }
                }

                *(a1 + 684) = v217;
                v218 = (v86 - *v86);
                if (*v218 < 0x51u)
                {
                  LODWORD(v219) = 0;
                }

                else
                {
                  v219 = v218[40];
                  if (v219)
                  {
                    LODWORD(v219) = *(v86 + v219);
                  }
                }

                *(a1 + 716) = v219;
                v220 = (v86 - *v86);
                if (*v220 < 0x4Fu)
                {
                  LODWORD(v221) = 0;
                }

                else
                {
                  v221 = v220[39];
                  if (v221)
                  {
                    LODWORD(v221) = *(v86 + v221);
                  }
                }

                *(a1 + 728) = v221;
                *(a1 + 736) = *(a4 + 468);
                v222 = (v86 - *v86);
                if ((*(v86 + v222[6] + *(v86 + v222[6])) | v213) != 0 || v447)
                {
                  goto LABEL_401;
                }

                v223 = *v222;
                if (v223 < 0x21)
                {
                  v224 = 0;
                }

                else
                {
                  if (v222[16])
                  {
                    v224 = *(v86 + v222[16]);
                  }

                  else
                  {
                    v224 = 0;
                  }

                  if (v223 >= 0x43 && v222[33])
                  {
                    v225 = *(v86 + v222[33]);
LABEL_396:
                    {
                      getAdditionalSpillBufferBytes(void)::extra = 0;
                    }

                    if (!(v225 + v224 + getAdditionalSpillBufferBytes(void)::extra))
                    {
                      v226 = (v86 - *v86);
                      if (*v226 < 0x5Fu)
                      {
                        LOBYTE(v227) = 0;
                      }

                      else
                      {
                        v227 = v226[47];
                        if (v227)
                        {
                          LOBYTE(v227) = *(v86 + v227) != 0;
                        }
                      }

LABEL_402:
                      *(a1 + 740) = v227;
                      v228 = (v85 - *v85);
                      if (*v228 < 0x11u)
                      {
                        LODWORD(v229) = 0;
                      }

                      else
                      {
                        v229 = v228[8];
                        if (v229)
                        {
                          LODWORD(v229) = *(v85 + v229);
                        }
                      }

                      v230 = (a1 + 1200);
                      *(a1 + 1392) = v229;
                      {
                      }

                      v231 = v77 + 3;
                      if (v77[4])
                      {
                        v232 = v77[3] == 0;
                      }

                      else
                      {
                        v232 = 1;
                      }

                      v233 = v77 + 73;
                      if (v232)
                      {
                        v234 = v77 + 73;
                      }

                      else
                      {
                        v234 = v77 + 3;
                      }

                      AGX::Heap<true>::allocateImpl(__dst, v453 + 6496, v234[1], (a1 + 1448));
                      *(a1 + 1480) += *&__dst[16];
                      v235 = *&__dst[16];
                      *v230 = *__dst;
                      *(a1 + 1216) = v235;
                      *(a1 + 1225) = *&__dst[25];
                      *(a1 + 920) = *(a1 + 1200);
                      *(a1 + 952) = v453 + 6496;
                      v236 = *(a1 + 1216);
                      *(a1 + 960) = *v230;
                      *(a1 + 976) = v236;
                      *(a1 + 985) = *(a1 + 1225);
                      if (*v231)
                      {
                        v237 = v77[4];
                        if (v237)
                        {
                          v238 = *v231;
                        }

                        else
                        {
                          v238 = v77[73];
                        }

                        if (v237)
                        {
                          v233 = v77 + 3;
                        }
                      }

                      else
                      {
                        v238 = *v233;
                      }

                      memcpy(*(a1 + 1208), v238, v233[1]);
                      v239 = *(a1 + 1208);
                      v240 = *(a1 + 1216);
                      *(a1 + 928) = *(a1 + 920);
                      *(a1 + 936) = v239;
                      *(a1 + 944) = v240;
                      v241 = v77 + 8;
                      if (v77[8])
                      {
                        if (v77[9])
                        {
                          v242 = v77 + 8;
                        }

                        else
                        {
                          v242 = v77 + 78;
                        }

                        v243 = v242[1];
                      }

                      else
                      {
                        v243 = v77[79];
                      }

                      if (v243)
                      {
                        AGX::Heap<true>::allocateImpl(__dst, v453 + 6328, v243, (a1 + 1456));
                        *(a1 + 1480) += *&__dst[16];
                        v244 = *&__dst[16];
                        *(a1 + 1248) = *__dst;
                        *(a1 + 1264) = v244;
                        *(a1 + 1273) = *&__dst[25];
                        v245 = *(a1 + 1264);
                        *(a1 + 1008) = *(a1 + 1248);
                        *(a1 + 1024) = v245;
                        *(a1 + 1033) = *(a1 + 1273);
                        if (*v241)
                        {
                          v246 = v77[9];
                          if (v246)
                          {
                            v247 = *v241;
                          }

                          else
                          {
                            v247 = v77[78];
                          }

                          if (v246)
                          {
                            v248 = v77 + 8;
                          }

                          else
                          {
                            v248 = v77 + 78;
                          }
                        }

                        else
                        {
                          v248 = v77 + 78;
                          v247 = v77[78];
                        }

                        memcpy(*(a1 + 1256), v247, v248[1]);
                      }

                      v249 = v77 + 13;
                      if (v77[13])
                      {
                        if (v77[14])
                        {
                          v250 = v77 + 13;
                        }

                        else
                        {
                          v250 = v77 + 83;
                        }

                        v251 = v250[1];
                        if (!v251)
                        {
                          goto LABEL_453;
                        }
                      }

                      else
                      {
                        v251 = v77[84];
                        if (!v251)
                        {
                          goto LABEL_453;
                        }
                      }

                      AGX::Heap<true>::allocateImpl(__dst, v453 + 6328, v251, (a1 + 1464));
                      *(a1 + 1480) += *&__dst[16];
                      v252 = *&__dst[16];
                      *(a1 + 1296) = *__dst;
                      *(a1 + 1312) = v252;
                      *(a1 + 1321) = *&__dst[25];
                      v253 = *(a1 + 1312);
                      *(a1 + 1056) = *(a1 + 1296);
                      *(a1 + 1072) = v253;
                      *(a1 + 1081) = *(a1 + 1321);
                      if (*v249)
                      {
                        v254 = v77[14];
                        if (v254)
                        {
                          v255 = *v249;
                        }

                        else
                        {
                          v255 = v77[83];
                        }

                        if (v254)
                        {
                          v256 = v77 + 13;
                        }

                        else
                        {
                          v256 = v77 + 83;
                        }
                      }

                      else
                      {
                        v256 = v77 + 83;
                        v255 = v77[83];
                      }

                      memcpy(*(a1 + 1304), v255, v256[1]);
                      v257 = *(a1 + 1312);
                      *(a1 + 1152) = *(a1 + 1296);
                      *(a1 + 1168) = v257;
LABEL_453:
                      v258 = v77 + 23;
                      if (v77[23])
                      {
                        if (!v77[24])
                        {
                          v258 = v77 + 93;
                        }

                        v259 = v258[1];
                        v260 = v449;
                        if (!v259)
                        {
                          goto LABEL_458;
                        }
                      }

                      else
                      {
                        v259 = v77[94];
                        v260 = v449;
                        if (!v259)
                        {
LABEL_458:
                          v264 = v454;
                          if ((*(a1 + 888) & 1) != 0 || *(*(a1 + 8) + 16945) == 1)
                          {
                            {
                              {
                                v266 = v445;
                                if (*(a1 + 839) < 0)
                                {
                                  v266 = *v445;
                                }

                                v267 = v443;
                                if (*(a1 + 887) < 0)
                                {
                                  v267 = v443->__r_.__value_.__r.__words[0];
                                }

                                v268 = v444;
                                if (*(a1 + 863) < 0)
                                {
                                  v268 = *v444;
                                }

                                v269 = *(a1 + 800);
                                v270 = *(a1 + 808);
                                v271 = v442;
                                if (*(a1 + 919) < 0)
                                {
                                  v271 = *v442;
                                }

                                v272 = *(a1 + 920);
                                v273 = *(a1 + 1216);
                                *__dst = 136448002;
                                *&__dst[4] = v266;
                                *&__dst[12] = 2082;
                                *&__dst[14] = v267;
                                *&__dst[22] = 2082;
                                *&__dst[24] = v268;
                                *&__dst[32] = 1026;
                                *&__dst[34] = v269;
                                *&__dst[38] = 2050;
                                *&__dst[40] = v270;
                                *v461 = 2082;
                                *&v461[2] = v271;
                                *&v461[10] = 2050;
                                *&v461[12] = v272;
                                v462 = 2050;
                                v463 = v273;
                                _os_signpost_emit_with_name_impl(&dword_29CA13000, v265, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Type=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Addr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}zu", __dst, 0x4Eu);
                              }
                            }

                            v274 = *(a1 + 8);
                            v275 = v445;
                            if (*(a1 + 839) < 0)
                            {
                              v275 = *v445;
                            }

                            v276 = v443;
                            if (*(a1 + 887) < 0)
                            {
                              v276 = v443->__r_.__value_.__r.__words[0];
                            }

                            v277 = v444;
                            if (*(a1 + 863) < 0)
                            {
                              v277 = *v444;
                            }

                            v278 = v442;
                            if (*(a1 + 919) < 0)
                            {
                              v278 = *v442;
                            }

                            v279 = *(a1 + 800);
                            v280 = *(a1 + 808);
                            v281 = *(a1 + 920);
                            v282 = *(a1 + 1216);
                            v283 = *(a1 + 888);
                            *__dst = v275;
                            *&__dst[8] = v276;
                            *&__dst[16] = v277;
                            *&__dst[24] = v278;
                            *&__dst[32] = v279;
                            *&__dst[40] = v280;
                            *v461 = v281;
                            *&v461[8] = v282;
                            v461[16] = v283;
                            AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(v274, a1, __dst);
                          }

                          v284 = *(a4 + 208);
                          v286 = *(a4 + 144);
                          v285 = *(a4 + 148);
                          if (v284)
                          {
                            v287 = *(a4 + 144);
                          }

                          else
                          {
                            v287 = 0;
                          }

                          v288 = *(a4 + 176);
                          if (*(a4 + 176) == 0)
                          {
                            v286 = 0;
                          }

                          v289 = (*(a4 + 132) + *(a4 + 124) + *(a4 + 140) - (*(a4 + 128) + *(a4 + 120) + *(a4 + 136)));
                          *(a1 + 48) = v287 + v285 + v286 + *(a4 + 152) + ((v289 + 3) & 0xFFFFFFFC);
                          v290 = *(a1 + 56);
                          v291 = (*(a1 + 64) - v290) >> 2;
                          if (v289 <= v291)
                          {
                            if (v289 < v291)
                            {
                              *(a1 + 64) = v290 + 4 * v289;
                            }
                          }

                          else
                          {
                            std::vector<unsigned int>::__append(v454, v289 - v291);
                            v288 = *(a4 + 176);
                            v285 = *(a4 + 148);
                            v284 = *(a4 + 208);
                          }

                          if (v284)
                          {
                            v292 = *(a4 + 144);
                          }

                          else
                          {
                            v292 = 0;
                          }

                          if (v288 | *(a4 + 184))
                          {
                            v293 = *(a4 + 144);
                          }

                          else
                          {
                            v293 = 0;
                          }

                          v294 = (v285 + v292 + v293);
                          v295 = *(a1 + 144);
                          v296 = (*(a1 + 152) - v295) >> 2;
                          if (v294 <= v296)
                          {
                            if (v294 < v296)
                            {
                              *(a1 + 152) = v295 + 4 * v294;
                            }
                          }

                          else
                          {
                            std::vector<unsigned int>::__append(v441, v294 - v296);
                          }

                          v297 = *v260;
                          v298 = *(v260 - v297 + 16);
                          v299 = *(v260 + v298);
                          v300 = *(v260 + v298 + v299);
                          if (v300)
                          {
                            v301 = 4 * v300;
                            v302 = v298 + v299;
                            while (1)
                            {
                              v304 = *(v260 + v302 + 4);
                              v305 = v260 + v302 + v304;
                              v306 = v304 - *(v305 + 1);
                              v307 = v260 + v302 + v306;
                              v308 = *(v307 + 2);
                              if (v308 < 7)
                              {
                                goto LABEL_511;
                              }

                              v309 = *(v307 + 5);
                              if (!v309 || (*(v260 + v302 + v304 + v309 + 4) & 0x80000000) == 0)
                              {
                                break;
                              }

LABEL_504:
                              v302 += 4;
                              v301 -= 4;
                              if (!v301)
                              {
                                v297 = *v260;
                                goto LABEL_518;
                              }
                            }

                            if (v308 < 9)
                            {
LABEL_511:
                              LODWORD(v310) = 0;
                            }

                            else
                            {
                              v310 = *(v260 + v302 + v306 + 12);
                              if (v310)
                              {
                                LODWORD(v310) = 4 * *(v260 + v302 + v304 + v310 + 4);
                              }
                            }

                            v311 = v310 - *(a4 + 120);
                            v454->__begin_[v311] = 1610612735;
                            v454->__begin_[v311 + 1] = 0x40000000;
                            v454->__begin_[v311 + 2] = 1073741825;
                            v454->__begin_[v311 + 3] = 1073741826;
                            v312 = v304 - *(v305 + 1);
                            if (*(v260 + v302 + v312 + 4) >= 0xBu && *(v260 + v302 + v312 + 14) && *(v260 + v302 + v304 + *(v260 + v302 + v312 + 14) + 4))
                            {
                              v313 = *(v260 + v302 + v312 + 10);
                              if (v313)
                              {
                                v303 = *(v260 + v302 + v304 + v313 + 4) & 0xFFFFF;
                              }

                              else
                              {
                                v303 = 0;
                              }

                              *(a1 + 768 + 8 * (v303 > 0x3F)) |= 1 << v303;
                            }

                            goto LABEL_504;
                          }

LABEL_518:
                          v314 = -v297;
                          v315 = v260 + v314;
                          if (*(a1 + 742))
                          {
                            v316 = *(v315 + 12);
                            v317 = *(v260 + v316);
                            v318 = (v260 + v316 + v317);
                            v319 = *v318;
                            if (v319)
                            {
                              v320 = 0;
                              v321 = 4 * v319;
                              v322 = v260 + v316 + v317;
                              while (1)
                              {
                                v323 = v318[v320 / 4 + 1];
                                v324 = v323 - *(&v318[v320 / 4 + 1] + v323);
                                v325 = &v322[v320 + v324];
                                v326 = *(v325 + 2);
                                if (v326 >= 5)
                                {
                                  v327 = *(v325 + 4);
                                  if (v327)
                                  {
                                    if (v322[v320 + 4 + v323 + v327] == 93)
                                    {
                                      if (v326 < 7)
                                      {
                                        break;
                                      }

                                      v328 = *&v322[v320 + 10 + v324];
                                      if (!v328)
                                      {
                                        break;
                                      }

                                      v329 = *&v322[v320 + 4 + v323 + v328];
                                      if ((v329 & 0x80000000) == 0 && (v329 & 0xFFF00000) != 0x400000)
                                      {
                                        break;
                                      }
                                    }
                                  }
                                }

                                v320 += 4;
                                if (v321 == v320)
                                {
                                  goto LABEL_530;
                                }
                              }

                              *(a1 + 768) = vorrq_s8(*(a1 + 768), *(a1 + 784));
                            }
                          }

LABEL_530:
                          v330 = *(v315 + 10);
                          v331 = *(v260 + v330);
                          v332 = *(v260 + v330 + v331);
                          if (!v332)
                          {
                            goto LABEL_546;
                          }

                          v333 = 4 * v332;
                          v334 = v330 + v331;
                          while (1)
                          {
                            v335 = *(v260 + v334 + 4);
                            v336 = v335 - *(v260 + v334 + v335 + 4);
                            v337 = v260 + v334 + v336;
                            v338 = *(v337 + 2);
                            if (v338 < 7)
                            {
                              goto LABEL_539;
                            }

                            v339 = *(v337 + 5);
                            if (!v339 || (*(v260 + v334 + v335 + v339 + 4) & 0x80000000) == 0)
                            {
                              break;
                            }

LABEL_532:
                            v334 += 4;
                            v333 -= 4;
                            if (!v333)
                            {
                              v314 = -*v260;
LABEL_546:
                              v448 = a1 + 752;
                              v344 = (v260 + *(v260 + v314 + 12));
                              v345 = (v344 + *v344);
                              v346 = *v345;
                              if (v346)
                              {
                                v347 = &v345[v346];
                                while (1)
                                {
                                  v348 = v345[1];
                                  v349 = (++v345 + v348);
                                  v350 = (v349 - *v349);
                                  v351 = *v350;
                                  if (v351 < 7)
                                  {
                                    break;
                                  }

                                  if (!v350[3] || (*(v349 + v350[3]) & 0x80000000) == 0)
                                  {
                                    if (v351 < 9)
                                    {
                                      LODWORD(v352) = 0;
                                      goto LABEL_557;
                                    }

                                    v352 = v350[4];
                                    if (v350[4])
                                    {
                                      LODWORD(v352) = (*(v349 + v352) >> 1) & 0x1FFFFFFF;
LABEL_557:
                                      v353 = v350[3];
                                      if (v353)
                                      {
                                        LODWORD(v353) = *(v349 + v353) & 0xFFFFF;
                                      }

                                      goto LABEL_561;
                                    }

LABEL_556:
                                    if (v351 >= 7)
                                    {
                                      goto LABEL_557;
                                    }

                                    LODWORD(v353) = 0;
LABEL_561:
                                    v354 = *(a4 + 124) + v352 + *(a4 + 132) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136));
                                    *(*v264 + 4 * v354) = 0x1FFFFFFF;
                                    v355 = (v349 - *v349);
                                    if (*v355 >= 0xBu)
                                    {
                                      v356 = v355[5];
                                      if (v356)
                                      {
                                        if (*(v349 + v356))
                                        {
                                          *(v448 + 8 * (v353 > 0x3F)) |= 1 << v353;
                                        }
                                      }
                                    }

                                    if (*(a1 + 1587) == 1)
                                    {
                                      v357 = *v456;
                                      if (!*v456)
                                      {
LABEL_697:
                                        abort();
                                      }

                                      v358 = 2 * v354;
                                      v359 = (2 * v354) | 1;
                                      while (1)
                                      {
                                        while (1)
                                        {
                                          v360 = *(v357 + 7);
                                          if (v353 >= v360)
                                          {
                                            break;
                                          }

                                          v357 = *v357;
                                          if (!v357)
                                          {
                                            goto LABEL_697;
                                          }
                                        }

                                        if (v360 >= v353)
                                        {
                                          break;
                                        }

                                        v357 = v357[1];
                                        if (!v357)
                                        {
                                          goto LABEL_697;
                                        }
                                      }

                                      v361 = v452;
LABEL_574:
                                      v362 = *v361;
                                      if (!*v361)
                                      {
LABEL_578:
                                        operator new();
                                      }

                                      while (1)
                                      {
                                        v361 = v362;
                                        v363 = *(v362 + 28);
                                        if (v359 < v363)
                                        {
                                          goto LABEL_574;
                                        }

                                        if (v363 > v358)
                                        {
                                          break;
                                        }

                                        v362 = *(v361 + 8);
                                        if (!v362)
                                        {
                                          goto LABEL_578;
                                        }
                                      }

                                      v264 = v454;
                                      *(v361 + 32) = *(v357 + 8);
                                    }
                                  }

                                  if (v345 == v347)
                                  {
                                    goto LABEL_580;
                                  }
                                }

                                LODWORD(v352) = 0;
                                goto LABEL_556;
                              }

LABEL_580:
                              AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather(v264);
                              v366 = *(a4 + 120);
                              v365 = *(a4 + 124);
                              v367 = *(a4 + 128);
                              v368 = *(a4 + 132);
                              v369 = *(a4 + 136);
                              v370 = *(a4 + 140);
                              v371 = (v365 + v368 + v370 - (v366 + v367 + v369) + 3) & 0xFFFFFFFC;
                              v372 = *(a4 + 160);
                              v373 = *(a4 + 168);
                              if (*(a4 + 160) == 0)
                              {
                                goto LABEL_598;
                              }

                              v374 = 0;
                              v375 = *(a4 + 144);
                              if (*(a4 + 208) != 1 || !v375)
                              {
                                goto LABEL_592;
                              }

                              v376 = 0;
                              *__dst = *(a4 + 160);
                              *&v458 = v373;
                              v377 = v372;
                              while (2)
                              {
                                if (v377)
                                {
                                  v378 = __dst;
LABEL_585:
                                  *v378 = v377 & (v377 - 1);
                                  *&v441->__begin_[v376] = xmmword_29D2F21F0;
                                  v376 += 4;
                                  v377 = *__dst;
                                  continue;
                                }

                                break;
                              }

                              v377 = v458;
                              if (v458)
                              {
                                v378 = &v458;
                                goto LABEL_585;
                              }

                              v369 = *(a4 + 136);
                              v370 = *(a4 + 140);
                              v367 = *(a4 + 128);
                              v368 = *(a4 + 132);
                              v366 = *(a4 + 120);
                              v365 = *(a4 + 124);
                              v375 = *(a4 + 144);
                              v374 = v375;
LABEL_592:
                              v379 = *(a4 + 176);
                              if (*&v379 != 0 && v375 != 0)
                              {
                                v390 = v374 - v371 + ((v370 + v368 - (v369 + v367 + v366) + v365 + 3) & 0xFFFFFFFC);
                                *__dst = v372;
                                *&v458 = v373;
                                while (1)
                                {
                                  if (v372)
                                  {
                                    v391 = __dst;
                                  }

                                  else
                                  {
                                    v372 = v458;
                                    if (!v458)
                                    {
                                      break;
                                    }

                                    v391 = &v458;
                                  }

                                  *v391 = v372 & (v372 - 1);
                                  begin = v441->__begin_;
                                  v441->__begin_[v390] = -1;
                                  begin[v390 + 1] = 0;
                                  begin[v390 + 2] = 1;
                                  begin[v390 + 3] = 2;
                                  v390 += 4;
                                  v372 = *__dst;
                                }
                              }

                              v364 = vorrq_s8(*(a1 + 768), v379);
                              *(a1 + 768) = v364;
LABEL_598:
                              if (*(a4 + 148))
                              {
                                v381 = *(a4 + 144);
                                if (*(a4 + 208))
                                {
                                  v382 = *(a4 + 144);
                                }

                                else
                                {
                                  v382 = 0;
                                }

                                if (*(a4 + 176) == 0)
                                {
                                  v381 = 0;
                                }

                                v383 = ((*(a4 + 124) + *(a4 + 132) + *(a4 + 140) - (*(a4 + 120) + *(a4 + 128) + *(a4 + 136)) + 3) & 0xFFFFFFFC) - v371 + v382 + v381;
                                v385 = *(a4 + 192);
                                v384 = *(a4 + 200);
                                *__dst = v385;
                                *&v458 = v384;
                                while (1)
                                {
                                  if (v385)
                                  {
                                    v386 = __dst;
                                  }

                                  else
                                  {
                                    v385 = v458;
                                    if (!v458)
                                    {
                                      break;
                                    }

                                    v386 = &v458;
                                  }

                                  *v386 = v385 & (v385 - 1);
                                  v387 = *(a1 + 144);
                                  *(v387 + 4 * v383) = -1;
                                  if (*(a1 + 1584) == 1)
                                  {
                                    *(v387 + 4 * (v383 + 1)) = -1;
                                    *(v387 + 4 * (v383 + 2)) = 0;
                                  }

                                  v383 += 4;
                                  v385 = *__dst;
                                }
                              }

                              if (*(a4 + 467) == 1)
                              {
                                v388 = (v449 - *v449);
                                if (*v388 < 0x17u)
                                {
                                  LODWORD(v389) = 0;
                                }

                                else
                                {
                                  v389 = v388[11];
                                  if (v389)
                                  {
                                    v389 = (*(v449 + v389) + 3) >> 2;
                                  }
                                }

                                *(a1 + 408) = v389;
                                *(a1 + 412) = 1073741822;
                              }

                              v393 = (v449 - *v449);
                              if (*v393 >= 0x17u && (v394 = v393[11]) != 0)
                              {
                                v395 = *(v449 + v394) + 3;
                                v396 = (a1 + 176);
                                v397 = *(a1 + 176);
                                v398 = v395 >> 2;
                                *(a1 + 52) = v398;
                                v399 = *(a1 + 168);
                                v400 = (v397 - v399) >> 2;
                                if (v398 > v400)
                                {
                                  std::vector<unsigned int>::__append((a1 + 168), v398 - v400);
                                  goto LABEL_630;
                                }
                              }

                              else
                              {
                                v398 = 0;
                                v396 = (a1 + 176);
                                v401 = *(a1 + 176);
                                *(a1 + 52) = 0;
                                v399 = *(a1 + 168);
                                v400 = (v401 - v399) >> 2;
                              }

                              if (v400 > v398)
                              {
                                *v396 = v399 + 4 * v398;
                              }

LABEL_630:
                              if (v440 != (a4 + 216))
                              {
                                std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v440, *(a4 + 216), *(a4 + 224), (*(a4 + 224) - *(a4 + 216)) >> 2);
                              }

                              if (v439 != (a4 + 240))
                              {
                                std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(v439, *(a4 + 240), *(a4 + 248), (*(a4 + 248) - *(a4 + 240)) >> 2);
                              }

                              if (v438 != (a4 + 320))
                              {
                                std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v438, *(a4 + 320), *(a4 + 328), (*(a4 + 328) - *(a4 + 320)) >> 1);
                              }

                              if (v437 != (a4 + 368))
                              {
                                std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v437, *(a4 + 368), *(a4 + 376), (*(a4 + 376) - *(a4 + 368)) >> 1);
                              }

                              *(a1 + 352) = *(a4 + 416);
                              *(a1 + 744) = *(a4 + 160) != 0;
                              *(a1 + 745) = *(a4 + 148) != 0;
                              v402 = *(v449 - *v449 + 24);
                              v403 = *(v449 + v402);
                              v404 = (v449 + v402 + v403);
                              v405 = *v404;
                              if (v405)
                              {
                                v406 = 0;
                                v407 = 4 * v405;
                                v408 = v449 + v402 + v403;
                                do
                                {
                                  v409 = v404[v406 / 4 + 1];
                                  v410 = v409 - *(&v404[v406 / 4 + 1] + v409);
                                  v411 = &v408[v406 + v410];
                                  v412 = *(v411 + 2);
                                  if (v412 >= 5)
                                  {
                                    v413 = *(v411 + 4);
                                    if (v413)
                                    {
                                      if (v412 >= 7 && v408[v406 + 4 + v409 + v413] == 139)
                                      {
                                        if (*&v408[v406 + 10 + v410])
                                        {
                                          v414 = *&v408[v406 + 4 + v409 + *&v408[v406 + 10 + v410]] & 0xFFFFF;
                                          if (v412 >= 0xB)
                                          {
                                            goto LABEL_649;
                                          }
                                        }

                                        else
                                        {
                                          v414 = 0;
                                          if (v412 >= 0xB)
                                          {
LABEL_649:
                                            v415 = *&v408[v406 + 14 + v410];
                                            if (v415 && v408[v406 + 4 + v409 + v415])
                                            {
                                              *(v448 + 8 * (v414 > 0x3F)) |= 1 << v414;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }

                                  v406 += 4;
                                }

                                while (v407 != v406);
                              }

                              v416 = (v455 - *v455);
                              if (*v416 >= 0xDu)
                              {
                                v417 = v416[6];
                                if (v416[6])
                                {
                                  v418 = v455 + v417;
                                  v419 = *(v455 + v417);
                                  if (*(v455 + v417 + v419) > ((*(a1 + 1528) - *(a1 + 1512)) >> 4))
                                  {
                                    operator new();
                                  }

                                  v420 = (v455 - *v455);
                                  if (*v420 >= 0x41u && (v421 = v420[32]) != 0)
                                  {
                                    v422 = v455 + v421 + *(v455 + v421);
                                    if (!*&v418[v419])
                                    {
                                      goto LABEL_677;
                                    }

LABEL_661:
                                    if (v422)
                                    {
                                      v423 = 0;
                                      v424 = v455 + v417 + v419 + 4;
                                      do
                                      {
                                        if (*v422)
                                        {
                                          v425 = *(v422 + 8 * v423 + 4);
                                        }

                                        else
                                        {
                                          v425 = 0;
                                        }

                                        *__dst = *(v424 + 8 * v423);
                                        *&__dst[8] = v425;
                                        std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v451, __dst);
                                        ++v423;
                                      }

                                      while (v423 < *&v418[v419]);
                                    }

                                    else
                                    {
                                      v427 = v455 + v417 + v419 + 4;
                                      do
                                      {
                                        *__dst = *(v427 + 8 * v422);
                                        std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](v451, __dst);
                                        ++v422;
                                      }

                                      while (v422 < *&v418[v419]);
                                    }
                                  }

                                  else
                                  {
                                    v422 = 0;
                                    if (*&v418[v419])
                                    {
                                      goto LABEL_661;
                                    }
                                  }
                                }
                              }

LABEL_677:
                              v428 = (v455 - *v455);
                              if (*v428 >= 0xBu)
                              {
                                v429 = v428[5];
                                if (v429)
                                {
                                  v430 = (v455 + v429 + *(v455 + v429));
                                  if (*v430 > ((*(a1 + 1576) - *(a1 + 1560)) >> 4))
                                  {
                                    operator new();
                                  }

                                  if (*v430 > ((*(a1 + 1552) - *(a1 + 1536)) >> 3))
                                  {
                                    operator new();
                                  }

                                  if (*v430)
                                  {
                                    v431 = 0;
                                    v432 = v430 + 1;
                                    do
                                    {
                                      AGX::SamplerDescriptor::SamplerDescriptor(__dst, (v432 + *v432), *v364.i32);
                                      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateBindlessConstantSampler(&v458, v453, __dst);
                                      std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](a1 + 1560, &v458);
                                      v457 = *(v458 + 96);
                                      std::vector<unsigned long long>::push_back[abi:nn200100](v450, &v457);
                                      v433 = *(&v458 + 1);
                                      if (*(&v458 + 1) && !atomic_fetch_add((*(&v458 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                                      {
                                        (v433->__on_zero_shared)(v433);
                                        std::__shared_weak_count::__release_weak(v433);
                                      }

                                      if (SBYTE1(v463) < 0)
                                      {
                                        operator delete(*v461);
                                      }

                                      ++v431;
                                      ++v432;
                                    }

                                    while (v431 < *v430);
                                  }
                                }
                              }

                              *(a1 + 1396) = 0;
                              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(__str.__r_.__value_.__l.__data_);
                              }

                              *a1 = &unk_2A23F7810;
                              *__dst = *v435;
                              *&__dst[16] = *(v435 + 16);
                              AGX::TileDispatchVertexProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::TileDispatchVertexProgramVariantESLState(a1 + 1784, v453, v446, a4, __dst);
                            }
                          }

                          if (v338 >= 9 && (v340 = *(v260 + v334 + v336 + 12)) != 0)
                          {
                            v341 = *(v260 + v334 + v335 + v340 + 4);
                          }

                          else
                          {
LABEL_539:
                            v341 = 0;
                          }

                          if (*(a1 + 1584))
                          {
                            v342 = 3;
                          }

                          else
                          {
                            v342 = 1;
                          }

                          v343 = *(a4 + 124) + v342 * v341 - (*(a4 + 120) + *(a4 + 128));
                          *(*(a1 + 56) + 4 * v343) = 0x7FFFFFFF;
                          if (*(a1 + 1584) == 1)
                          {
                            v454->__begin_[v343 + 1] = 0x7FFFFFFF;
                            v454->__begin_[v343 + 2] = 1610612736;
                          }

                          goto LABEL_532;
                        }
                      }

                      AGX::Heap<true>::allocateImpl(__dst, v453 + 6328, v259, (a1 + 1472));
                      *(a1 + 1480) += *&__dst[16];
                      v261 = *&__dst[16];
                      *(a1 + 1344) = *__dst;
                      *(a1 + 1360) = v261;
                      *(a1 + 1369) = *&__dst[25];
                      v262 = *(a1 + 1360);
                      *(a1 + 1104) = *(a1 + 1344);
                      *(a1 + 1120) = v262;
                      *(a1 + 1129) = *(a1 + 1369);
                      v263 = *(a1 + 1360);
                      *(a1 + 1176) = *(a1 + 1344);
                      *(a1 + 1192) = v263;
                      goto LABEL_458;
                    }

LABEL_401:
                    LOBYTE(v227) = 1;
                    goto LABEL_402;
                  }
                }

                v225 = 0;
                goto LABEL_396;
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

    v65 = (v64 + *v64);
    v66 = (v65 - *v65);
    v67 = *v66;
    if (v66[2])
    {
      v68 = (v65 + v66[2] + *(v65 + v66[2]));
      if (v67 < 7)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v68 = 0;
      if (v67 < 7)
      {
        goto LABEL_115;
      }
    }

    v69 = v66[3];
    if (v69)
    {
      v70 = v65 + v69 + *(v65 + v69);
      if (!*v68)
      {
        goto LABEL_126;
      }

      goto LABEL_116;
    }

LABEL_115:
    v70 = 0;
    if (!*v68)
    {
      goto LABEL_126;
    }

LABEL_116:
    v71 = 0;
    v72 = v70 + 4;
    v73 = (v68 + 2);
    while (1)
    {
      v74 = *(v73 - 1);
      v75 = strlen(&v73[v74]);
      if (v75 > 0x7FFFFFFFFFFFFFF7)
      {
        break;
      }

      v76 = v75;
      if (v75 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v75;
      if (v75)
      {
        memmove(__dst, &v73[v74], v75);
      }

      __dst[v76] = 0;
      std::vector<std::string>::push_back[abi:nn200100](a1 + 1712, __dst);
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      *__dst = *&v72[4 * v71];
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 1736, __dst);
      ++v71;
      v73 += 4;
      if (v71 >= *v68)
      {
        goto LABEL_126;
      }
    }

LABEL_698:
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

        v41 = (v455 - *v455);
        if (*v41 < 0x57u)
        {
          LODWORD(v42) = 0;
        }

        else
        {
          v42 = v41[43];
          if (v42)
          {
            LODWORD(v42) = *(v455 + v42);
          }
        }

        *(a1 + 680) = v42;
        v43 = *v455;
        v25 = -v43;
        v27 = *(v455 - v43);
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
            v34 = *(v455 + v34);
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
              v35 = *(v455 + v35) << 16;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_40:
      v33 = *(v455 + v33);
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
      LODWORD(v31) = *(v455 + v31);
    }

    v32 = v26[30];
    if (v26[30])
    {
LABEL_38:
      LODWORD(v32) = *(v455 + v32);
    }
  }

  v33 = v26[29];
  if (!v26[29])
  {
    goto LABEL_41;
  }

  goto LABEL_40;
}

void sub_29CE1173C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, void **a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, void **a19, void **a20, void **a21, void **a22, void **a23, void **a24, void **a25, void **a26, void **a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31, void **a32, void **a33, uint64_t a34, uint64_t a35, uint64_t a36, void **a37, uint64_t a38, char a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  CompileStatistics::~CompileStatistics(a18);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a37);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v46 + 1560));
  v48 = *a31;
  if (*a31)
  {
    *(v46 + 1544) = v48;
    operator delete(v48);
  }

  v49 = *a32;
  if (*a32)
  {
    *(v46 + 1520) = v49;
    operator delete(v49);
  }

  if (*a9 < 0)
  {
    operator delete(*a10);
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
    v50 = *a19;
    if (*a19)
    {
      *(v46 + 336) = v50;
      operator delete(v50);
    }

    v51 = *a21;
    if (*a21)
    {
      *(v46 + 312) = v51;
      operator delete(v51);
    }

    v52 = *a20;
    if (*a20)
    {
      *(v46 + 288) = v52;
      operator delete(v52);
    }

    v53 = *a22;
    if (*a22)
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

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(a35);
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

void AGX::IntersectionProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::IntersectionProgramVariant(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v7 = 0;
  v315 = *MEMORY[0x29EDCA608];
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 48) = -1;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0xFFFFFFFF00000001;
  *(a1 + 104) = 1610612736;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *(a1 + 144) = 0u;
  *(a1 + 160) = v8;
  *(a1 + 176) = v8;
  *(a1 + 192) = v8;
  *(a1 + 208) = -1;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 272) = 1065353216;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 1065353216;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 1065353216;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 437) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 528) = 1;
  *(a1 + 576) = 0u;
  *(a1 + 548) = 0u;
  *(a1 + 564) = 0u;
  *(a1 + 532) = 0u;
  *a1 = &unk_2A23F7A50;
  *(a1 + 592) = a2;
  *(a1 + 944) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 1096) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 817) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 1073) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 1120) = a1 + 1128;
  *(a1 + 1144) = 0xFFFFFFFF00000001;
  *(a1 + 1152) = 1610612736;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1256) = -1;
  *(a1 + 1224) = v8;
  *(a1 + 1240) = v8;
  *(a1 + 1208) = v8;
  *(a1 + 1264) = 0;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1392) = atomic_fetch_add((a2 + 17008), 1uLL);
  *(a1 + 1480) = 0;
  *(a1 + 1488) = 0u;
  *(a1 + 1512) = 0;
  *(a1 + 1520) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1560) = 0u;
  v296 = (a1 + 1544);
  *(a1 + 1576) = 0;
  *(a1 + 1592) = 0u;
  *(a1 + 1608) = 0u;
  v292 = (a1 + 1592);
  *(a1 + 1624) = 0;
  *(a1 + 1640) = 0u;
  *(a1 + 1656) = 0u;
  v293 = (a1 + 1640);
  *(a1 + 1672) = 0;
  *(a1 + 1720) = 0;
  *(a1 + 1688) = 0u;
  *(a1 + 1704) = 0u;
  v295 = (a1 + 1688);
  *(a1 + 1960) = 0;
  *(a1 + 1928) = 0u;
  *(a1 + 1944) = 0u;
  v294 = (a1 + 1928);
  *(a1 + 1976) = 0;
  *(a1 + 1980) = 0;
  *(a1 + 1984) = 0;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 0u;
  v302 = (a1 + 1400);
  *(a1 + 1457) = 0u;
  *(a1 + 1736) = 0u;
  *(a1 + 1752) = 0u;
  *(a1 + 1768) = 0u;
  *(a1 + 1784) = 0u;
  *(a1 + 1800) = 0u;
  *(a1 + 1816) = 0u;
  *(a1 + 1832) = 0u;
  *(a1 + 1848) = 0u;
  *(a1 + 1864) = 0u;
  *(a1 + 1880) = 0u;
  *(a1 + 1896) = 0u;
  *(a1 + 1912) = 0;
  *(a1 + 2052) = 0u;
  *(a1 + 2023) = 0u;
  *(a1 + 2039) = 0u;
  v290 = (a1 + 2007);
  *(a1 + 2007) = 0u;
  *(a1 + 2088) = 0;
  v297 = a1 + 2072;
  *(a1 + 2072) = 0u;
  *(a1 + 2096) = 0u;
  *(a1 + 2112) = 0u;
  *(a1 + 2128) = 0u;
  *(a1 + 2144) = 0u;
  *(a1 + 2160) = 0;
  *(a1 + 2168) = *(a4 + 465);
  *(a1 + 2170) = 0;
  *(a1 + 2184) = 0u;
  v306 = (a1 + 2184);
  *(a1 + 2176) = a1 + 2184;
  *(a1 + 2200) = 0u;
  *(a1 + 2216) = 0u;
  *(a1 + 2232) = 0u;
  *(a1 + 2248) = 0u;
  *(a1 + 2264) = 0u;
  *(a1 + 2280) = 0u;
  *(a1 + 2296) = 0u;
  *(a1 + 2312) = 0u;
  *(a1 + 2328) = 0u;
  *(a1 + 2344) = 0u;
  v298 = (a1 + 2200);
  *(a1 + 2360) = 0;
  if (a3[28])
  {
    v9 = a3[29] == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = 98;
  if (!v9)
  {
    v10 = 28;
  }

  v11 = a3 + 98;
  if (!v9)
  {
    v11 = a3 + 28;
  }

  v12 = a3[v10];
  if (v12 && v11[1])
  {
    v7 = (v12 + *v12);
  }

  v13 = (v7 - *v7);
  if (*v13 >= 5u && (v14 = v13[2]) != 0)
  {
    v305 = (v7 + v14 + *(v7 + v14));
  }

  else
  {
    v305 = 0;
  }

  v15 = 0;
  if (a3[58])
  {
    v16 = a3[59] == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = 58;
  if (v16)
  {
    v17 = 128;
    v18 = a3 + 128;
  }

  else
  {
    v18 = a3 + 58;
  }

  v19 = a3[v17];
  if (v19 && v18[1])
  {
    v15 = (v19 + *v19);
  }

  v20 = (v15 - *v15);
  if (*v20 >= 5u && (v21 = v20[2]) != 0)
  {
    v22 = (v15 + v21 + *(v15 + v21));
  }

  else
  {
    v22 = 0;
  }

  v23 = *v22;
  v24 = -v23;
  v25 = (v22 - v23);
  v26 = *(v22 - v23);
  if (v26 < 0x25)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v25[18];
    if (v25[18])
    {
      LOBYTE(v27) = *(v22 + v27) != 0;
    }
  }

  *(a1 + 2169) = v27;
  v28 = (v305 - *v305);
  if (*v28 < 0x55u || (v29 = v28[42]) == 0 || !*(v305 + v29))
  {
LABEL_64:
    if (v26 < 7)
    {
      LODWORD(v43) = 0;
    }

    else
    {
      v43 = *(v22 + v24 + 6);
      if (*(v22 + v24 + 6))
      {
        LODWORD(v43) = *(v22 + v43);
      }
    }

    *(a1 + 1384) = v43;
    v44 = (v22 - *v22);
    if (*v44 >= 0x13u && (v45 = v44[9]) != 0)
    {
      v46 = v22 + v45 + *(v22 + v45) + 4;
    }

    else
    {
      v46 = "";
    }

    v300 = (a1 + 1448);
    v301 = (a1 + 1424);
    v299 = (a1 + 1480);
    v291 = a1 + 1984;
    MEMORY[0x29ED51E00](v302, v46);
    v47 = (v22 - *v22);
    if (*v47 >= 9u && (v48 = v47[4]) != 0)
    {
      v49 = v22 + v48 + *(v22 + v48) + 4;
    }

    else
    {
      v49 = "";
    }

    MEMORY[0x29ED51E00](v301, v49);
    v50 = (v22 - *v22);
    if (*v50 < 0x29u)
    {
      LOBYTE(v51) = 0;
    }

    else
    {
      v51 = v50[20];
      if (v51)
      {
        LOBYTE(v51) = *(v22 + v51) != 0;
      }
    }

    *(a1 + 1472) = v51;
    std::string::operator=(v300, &__str);
    v52 = (v22 - *v22);
    if (*v52 >= 0x51u && (v53 = v52[40]) != 0)
    {
      v54 = v22 + v53 + *(v22 + v53) + 4;
    }

    else
    {
      v54 = "";
    }

    MEMORY[0x29ED51E00](v299, v54);
    v55 = (v22 - *v22);
    v308 = v22;
    if (*v55 >= 5u && v55[2] && *(a2 + 16608) == 1)
    {
      v56 = a3[1];
      if (v56 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_503;
      }

      v57 = *a3;
      if (v56 >= 0x17)
      {
        operator new();
      }

      __dst[23] = a3[1];
      if (v56)
      {
        memmove(__dst, v57, v56);
      }

      __dst[v56] = 0;
      if (*v290 < 0)
      {
        operator delete(*v291);
      }

      *v291 = *__dst;
      *(v291 + 16) = *&__dst[16];
      v58 = a3[3];
      if (a3[4])
      {
        v59 = v58 == 0;
      }

      else
      {
        v59 = 1;
      }

      if (v59)
      {
        v58 = a3[73];
      }

      *(a1 + 2008) = v58 - *a3;
    }

    v60 = a3 + 113;
    if (a3[43])
    {
      v61 = a3[44] == 0;
    }

    else
    {
      v61 = 1;
    }

    v62 = 43;
    if (v61)
    {
      v62 = 113;
    }

    else
    {
      v60 = a3 + 43;
    }

    v307 = a3;
    v63 = a3[v62];
    if (!v63 || !v60[1])
    {
LABEL_127:
      v76 = v307;
      v77 = v307 + 138;
      if (v307[68])
      {
        v78 = v307[69] == 0;
      }

      else
      {
        v78 = 1;
      }

      v79 = 68;
      if (v78)
      {
        v79 = 138;
      }

      else
      {
        v77 = v307 + 68;
      }

      v80 = v307[v79];
      v81 = v77[1];
      if (v80)
      {
        v82 = v81 == 0;
      }

      else
      {
        v82 = 1;
      }

      if (v82)
      {
        v83 = 0;
        v84 = v297;
      }

      else
      {
        v85 = (v80 + *v80);
        v86 = (v85 - *v85);
        v84 = v297;
        if (*v86 >= 5u && (v87 = v86[2]) != 0)
        {
          v83 = *(v85 + v87);
        }

        else
        {
          v83 = 0;
        }
      }

      if (getTimebaseInfo(void)::once != -1)
      {
        dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
      }

      *(a1 + 2208) = (v83 * getTimebaseInfo(void)::sTimebaseInfo / unk_2A17A17F0) / 1000000.0;
      v88 = (v305 - *v305);
      if (*v88 < 5u)
      {
        LODWORD(v89) = 0;
      }

      else
      {
        v89 = v88[2];
        if (v89)
        {
          LODWORD(v89) = *(v305 + v89);
        }
      }

      *v298 = v89;
      v90 = (v305 - *v305);
      if (*v90 < 0x2Du)
      {
        LODWORD(v91) = 0;
      }

      else
      {
        v91 = v90[22];
        if (v91)
        {
          LODWORD(v91) = *(v305 + v91);
        }
      }

      *(a1 + 2204) = v91;
      v92 = (v305 - *v305);
      if (*v92 < 0x35u)
      {
        LODWORD(v93) = 0;
      }

      else
      {
        v93 = v92[26];
        if (v93)
        {
          LODWORD(v93) = *(v305 + v93);
        }
      }

      *(a1 + 2244) = v93;
      v94 = (v305 - *v305);
      if (*v94 < 0x43u)
      {
        LODWORD(v95) = 0;
      }

      else
      {
        v95 = v94[33];
        if (v95)
        {
          LODWORD(v95) = *(v305 + v95);
        }
      }

      *(a1 + 2280) = v95;
      v96 = v307 + 108;
      if (v307[38])
      {
        v97 = v307[39] == 0;
      }

      else
      {
        v97 = 1;
      }

      v98 = 38;
      if (v97)
      {
        v98 = 108;
      }

      else
      {
        v96 = v307 + 38;
      }

      v99 = v307[v98];
      if (v99 && v96[1])
      {
        v100 = (v99 + *v99);
        v101 = (v100 - *v100);
        if (*v101 < 0xDu)
        {
          LODWORD(v102) = 0;
        }

        else
        {
          v102 = v101[6];
          if (v102)
          {
            LODWORD(v102) = *(v100 + v102);
          }
        }

        *(a1 + 2204) = v102;
        v103 = (v100 - *v100);
        if (*v103 < 0xBu)
        {
          LODWORD(v104) = 0;
        }

        else
        {
          v104 = v103[5];
          if (v104)
          {
            LODWORD(v104) = *(v100 + v104);
          }
        }

        *(a1 + 2212) = v104;
        v105 = (v100 - *v100);
        if (*v105 < 0x11u)
        {
          LODWORD(v106) = 0;
        }

        else
        {
          v106 = v105[8];
          if (v106)
          {
            LODWORD(v106) = *(v100 + v106);
          }
        }

        *(a1 + 2216) = v106;
        v107 = (v100 - *v100);
        if (*v107 < 0x13u)
        {
          LODWORD(v108) = 0;
        }

        else
        {
          v108 = v107[9];
          if (v108)
          {
            LODWORD(v108) = *(v100 + v108);
          }
        }

        *(a1 + 2220) = v108;
        v109 = (v100 - *v100);
        if (*v109 < 0x17u)
        {
          LODWORD(v110) = 0;
        }

        else
        {
          v110 = v109[11];
          if (v110)
          {
            LODWORD(v110) = *(v100 + v110);
          }
        }

        *(a1 + 2224) = v110;
        v111 = (v100 - *v100);
        if (*v111 < 0x1Bu)
        {
          LODWORD(v112) = 0;
        }

        else
        {
          v112 = v111[13];
          if (v112)
          {
            LODWORD(v112) = *(v100 + v112);
          }
        }

        *(a1 + 2228) = v112;
        v113 = (v100 - *v100);
        if (*v113 < 0x15u)
        {
          LODWORD(v114) = 0;
        }

        else
        {
          v114 = v113[10];
          if (v114)
          {
            LODWORD(v114) = *(v100 + v114);
          }
        }

        *(a1 + 2232) = v114;
        v115 = (v100 - *v100);
        if (*v115 < 0x19u)
        {
          LODWORD(v116) = 0;
        }

        else
        {
          v116 = v115[12];
          if (v116)
          {
            LODWORD(v116) = *(v100 + v116);
          }
        }

        *(a1 + 2236) = v116;
        v117 = (v100 - *v100);
        if (*v117 < 0x1Du)
        {
          LODWORD(v118) = 0;
        }

        else
        {
          v118 = v117[14];
          if (v118)
          {
            LODWORD(v118) = *(v100 + v118);
          }
        }

        *(a1 + 2240) = v118;
        v119 = (v100 - *v100);
        if (*v119 < 0xFu)
        {
          LODWORD(v120) = 0;
        }

        else
        {
          v120 = v119[7];
          if (v120)
          {
            LODWORD(v120) = *(v100 + v120);
          }
        }

        *(a1 + 2244) = v120;
        v121 = (v100 - *v100);
        if (*v121 < 0x1Fu)
        {
          LODWORD(v122) = 0;
        }

        else
        {
          v122 = v121[15];
          if (v122)
          {
            LODWORD(v122) = *(v100 + v122);
          }
        }

        *(a1 + 2248) = v122;
        v123 = (v100 - *v100);
        if (*v123 < 0x21u)
        {
          LODWORD(v124) = 0;
        }

        else
        {
          v124 = v123[16];
          if (v124)
          {
            LODWORD(v124) = *(v100 + v124);
          }
        }

        *(a1 + 2252) = v124;
        v125 = (v100 - *v100);
        if (*v125 < 0x23u)
        {
          LODWORD(v126) = 0;
        }

        else
        {
          v126 = v125[17];
          if (v126)
          {
            LODWORD(v126) = *(v100 + v126);
          }
        }

        *(a1 + 2256) = v126;
        v127 = (v100 - *v100);
        if (*v127 < 0x25u)
        {
          LODWORD(v128) = 0;
        }

        else
        {
          v128 = v127[18];
          if (v128)
          {
            LODWORD(v128) = *(v100 + v128);
          }
        }

        *(a1 + 2260) = v128;
        v129 = (v100 - *v100);
        if (*v129 < 0x27u)
        {
          LODWORD(v130) = 0;
        }

        else
        {
          v130 = v129[19];
          if (v130)
          {
            LODWORD(v130) = *(v100 + v130);
          }
        }

        *(a1 + 2264) = v130;
        v131 = (v100 - *v100);
        if (*v131 < 0x29u)
        {
          LODWORD(v132) = 0;
        }

        else
        {
          v132 = v131[20];
          if (v132)
          {
            LODWORD(v132) = *(v100 + v132);
          }
        }

        *(a1 + 2268) = v132;
        v133 = (v100 - *v100);
        if (*v133 < 0x2Bu)
        {
          LODWORD(v134) = 0;
        }

        else
        {
          v134 = v133[21];
          if (v134)
          {
            LODWORD(v134) = *(v100 + v134);
          }
        }

        *(a1 + 2272) = v134;
        v135 = (v100 - *v100);
        if (*v135 < 7u)
        {
          LODWORD(v136) = 0;
        }

        else
        {
          v136 = v135[3];
          if (v136)
          {
            LODWORD(v136) = *(v100 + v136);
          }
        }

        *(a1 + 2276) = v136;
        v137 = (v100 - *v100);
        if (*v137 >= 5u && (v138 = v137[2]) != 0)
        {
          v139 = *(v100 + v138);
        }

        else
        {
          v139 = 0;
        }

        *(a1 + 2284) = v139;
      }

      if (v307[53])
      {
        v140 = v307[54];
        if (v140)
        {
          v141 = v307[53];
        }

        else
        {
          v141 = v307[123];
        }

        if (v140)
        {
          v142 = v307 + 53;
        }

        else
        {
          v142 = v307 + 123;
        }
      }

      else
      {
        v142 = v307 + 123;
        v141 = v307[123];
      }

      MEMORY[0x29ED51E10](a1 + 2344, v141, v142[1]);
      std::string::push_back((a1 + 2344), 0);
      v143 = *v305;
      v144 = v305 - v143;
      v145 = *(v305 - v143);
      if (v145 < 0x39)
      {
        goto LABEL_272;
      }

      v146 = -v143;
      v147 = *(v144 + 28);
      if (v147)
      {
        v148 = (v305 + v147 + *(v305 + v147));
        if (*v148)
        {
          *(a1 + 2088) = 1;
          v149 = (v148 + v148[1] + 4);
          v150 = (v149 - *v149);
          if (*v150 >= 9u && (v151 = v150[4]) != 0)
          {
            v152 = *(v149 + v151);
          }

          else
          {
            v152 = 0;
          }

          *(a1 + 2288) = v152;
          *(a1 + 2292) = 1;
          v153 = *v305;
          v146 = -v153;
          v145 = *(v305 - v153);
        }
      }

      if (v145 < 0x3B)
      {
        goto LABEL_272;
      }

      v154 = v305 + v146;
      if (*(v154 + 29))
      {
        v155 = (v305 + *(v154 + 29) + *(v305 + *(v154 + 29)));
        v156 = *v155;
        if (v156)
        {
          v157 = v155 + 1;
          do
          {
            v159 = *v157++;
            v158 = v159;
            if (!(v159 >> 20))
            {
              *(v84 + 8 * (v158 > 0x3F)) |= 1 << v158;
            }

            --v156;
          }

          while (v156);
        }
      }

      if (v145 < 0x57)
      {
LABEL_272:
        LODWORD(v160) = 0;
      }

      else
      {
        v160 = *(v154 + 43);
        if (*(v154 + 43))
        {
          LODWORD(v160) = *(v305 + v160);
        }
      }

      *(a1 + 1276) = v160;
      v161 = (v305 - *v305);
      if (*v161 >= 0x21u && (v162 = v161[16]) != 0)
      {
        v163 = *(v305 + v162);
      }

      else
      {
        v163 = 0;
      }

      v164 = &qword_2A17A1000;
      {
        getAdditionalSpillBufferBytes(void)::extra = 0;
      }

      *(a1 + 1280) = getAdditionalSpillBufferBytes(void)::extra + v163;
      v165 = v305;
      v166 = (v305 - *v305);
      if (*v166 < 0x59u)
      {
        LODWORD(v167) = 0;
      }

      else
      {
        v167 = v166[44];
        if (v167)
        {
          LODWORD(v167) = *(v305 + v167);
        }
      }

      *(a1 + 1304) = v167;
      v168 = (v305 - *v305);
      if (*v168 < 0x51u)
      {
        LODWORD(v169) = 0;
      }

      else
      {
        v169 = v168[40];
        if (v169)
        {
          LODWORD(v169) = *(v305 + v169);
        }
      }

      *(a1 + 1308) = v169;
      v170 = (v305 - *v305);
      if (*v170 < 0x4Bu)
      {
        LODWORD(v171) = 0;
      }

      else
      {
        v171 = v170[37];
        if (v171)
        {
          LODWORD(v171) = *(v305 + v171);
        }
      }

      *(a1 + 1316) = v171;
      v172 = (v305 - *v305);
      v173 = *v172;
      if (v173 >= 0x25)
      {
        if (v172[18] && *(v305 + v172[18]))
        {
          if (v173 < 0x27)
          {
            LOBYTE(v174) = 0;
            v175 = 1;
            goto LABEL_301;
          }

          v174 = v172[19];
          goto LABEL_295;
        }

        if (v173 >= 0x27)
        {
          v174 = v172[19];
          if (v172[19] && *(v305 + v172[19]))
          {
            v175 = 1;
            LOBYTE(v174) = 1;
            goto LABEL_301;
          }

          if (v173 < 0x29)
          {
            goto LABEL_500;
          }

          if (v172[20] && *(v305 + v172[20]))
          {
LABEL_295:
            v175 = 1;
            goto LABEL_501;
          }

          if (v173 >= 0x71 && (v289 = v172[56]) != 0)
          {
            v175 = *(v305 + v289) != 0;
          }

          else
          {
LABEL_500:
            v175 = 0;
          }

LABEL_501:
          if (v174)
          {
            LOBYTE(v174) = *(v305 + v174) != 0;
          }

LABEL_301:
          *(a1 + 1326) = v174;
          v176 = (v22 - *v22);
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
              LODWORD(v178) = *(v22 + v178);
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
                v179 = *(v22 + v179);
              }

              if (v177 >= 0x4F)
              {
                v180 = v176[39];
                if (v180)
                {
                  v180 = *(v22 + v180);
                }

LABEL_313:
                *(a1 + 1368) = v178 | (v179 << 32);
                *(a1 + 1376) = v180;
                *(a1 + 1330) = (v175 | v174) & 1;
                v181 = *v305;
                v182 = (v305 - v181);
                v183 = *(v305 - v181);
                if (v183 < 0x37)
                {
                  LOBYTE(v184) = 0;
                }

                else
                {
                  v184 = v182[27];
                  if (v182[27])
                  {
                    LOBYTE(v184) = *(v305 + v184) != 0;
                  }
                }

                *(a1 + 1325) = v184;
                v185 = (v22 - *v22);
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
                    LOBYTE(v187) = *(v22 + v187) != 0;
                  }
                }

                *(a1 + 1331) = v187;
                if (v183 < 0x3F)
                {
                  LOBYTE(v188) = 0;
                }

                else
                {
                  v188 = v182[31];
                  if (v182[31])
                  {
                    v189 = (v305 + v188 + *(v305 + v188));
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
                          goto LABEL_330;
                        }
                      }

                      LOBYTE(v188) = 1;
                    }
                  }
                }

LABEL_330:
                *(a1 + 1333) = v188;
                if (v186 <= 0x14)
                {
                  LOBYTE(v194) = 0;
                  *(a1 + 1327) = 0;
                }

                else
                {
                  v193 = v185[10];
                  if (v185[10])
                  {
                    LOBYTE(v193) = *(v22 + v193) != 0;
                  }

                  *(a1 + 1327) = v193;
                  if (v186 < 0x25)
                  {
                    LOBYTE(v194) = 0;
                  }

                  else
                  {
                    v194 = v185[18];
                    if (v185[18])
                    {
                      LOBYTE(v194) = *(v22 + v194) != 0;
                    }
                  }
                }

                v195 = -v181;
                *(a1 + 2169) = v194;
                if (v183 < 0x5D)
                {
                  LOBYTE(v196) = 0;
                }

                else
                {
                  v196 = v182[46];
                  if (v196)
                  {
                    LOBYTE(v196) = *(v305 + v196) != 0;
                  }
                }

                *(a1 + 1332) = v196;
                if (v186 >= 0x23 && (v197 = v185[17]) != 0)
                {
                  *(a1 + 2171) = 1;
                  v198 = (v22 + v197 + *(v22 + v197));
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
                          goto LABEL_354;
                        }

                        v206 = v203[2];
                        if (v206)
                        {
                          goto LABEL_353;
                        }
                      }

                      else if (v203[3])
                      {
                        v205 = *(v202 + v203[3]);
                        v206 = v203[2];
                        if (v206)
                        {
                          goto LABEL_353;
                        }
                      }

                      else
                      {
                        v205 = 0;
                        v206 = v203[2];
                        if (v206)
                        {
LABEL_353:
                          v207 = *(v202 + v206);
                          goto LABEL_354;
                        }
                      }

                      v207 = 0;
LABEL_354:
                      v208 = v306;
LABEL_355:
                      v209 = *v208;
                      if (!*v208)
                      {
LABEL_359:
                        operator new();
                      }

                      while (1)
                      {
                        v208 = v209;
                        v210 = *(v209 + 28);
                        if (v207 < v210)
                        {
                          goto LABEL_355;
                        }

                        if (v210 >= v207)
                        {
                          break;
                        }

                        v209 = v208[1];
                        if (!v209)
                        {
                          goto LABEL_359;
                        }
                      }

                      v211 = v208;
                      v76 = v307;
                      *(v211 + 8) = v205;
                      if (v198 == v200)
                      {
                        v165 = v305;
                        v214 = *v305;
                        v195 = -v214;
                        v164 = &qword_2A17A1000;
                        if (*(v305 - v214) < 0x21u)
                        {
LABEL_369:
                          v213 = 0;
                          v212 = v308;
                          {
                            goto LABEL_506;
                          }

                          goto LABEL_372;
                        }

LABEL_365:
                        v212 = v308;
                        if (*(v165 + v195 + 32))
                        {
                          v213 = *(v165 + *(v165 + v195 + 32));
                          {
                            goto LABEL_372;
                          }
                        }

                        else
                        {
                          v213 = 0;
                          {
                            goto LABEL_372;
                          }
                        }

LABEL_506:
                        {
                          *(v164 + 402) = 0;
                        }

LABEL_372:
                        v215 = *(v164 + 402) + v213;
                        *(a1 + 1272) = v215;
                        v216 = (v305 - *v305);
                        if (*v216 < 0x43u)
                        {
                          LODWORD(v217) = 0;
                        }

                        else
                        {
                          v217 = v216[33];
                          if (v217)
                          {
                            LODWORD(v217) = *(v305 + v217);
                          }
                        }

                        *(a1 + 1284) = v217;
                        v218 = (v305 - *v305);
                        if (*v218 < 5u)
                        {
                          LODWORD(v219) = 0;
                        }

                        else
                        {
                          v219 = v218[2];
                          if (v219)
                          {
                            LODWORD(v219) = *(v305 + v219);
                          }
                        }

                        *(a1 + 1268) = v219;
                        v220 = (v305 - *v305);
                        if (*v220 < 0x51u)
                        {
                          LODWORD(v221) = 0;
                        }

                        else
                        {
                          v221 = v220[40];
                          if (v221)
                          {
                            LODWORD(v221) = *(v305 + v221);
                          }
                        }

                        *(a1 + 1300) = v221;
                        v222 = (v305 - *v305);
                        if (*v222 < 0x4Fu)
                        {
                          LODWORD(v223) = 0;
                        }

                        else
                        {
                          v223 = v222[39];
                          if (v223)
                          {
                            LODWORD(v223) = *(v305 + v223);
                          }
                        }

                        *(a1 + 1312) = v223;
                        *(a1 + 1320) = *(a4 + 468);
                        v224 = (v305 - *v305);
                        if ((*(v305 + v224[6] + *(v305 + v224[6])) | v215) != 0 || v175)
                        {
                          goto LABEL_399;
                        }

                        v225 = *v224;
                        if (v225 < 0x21)
                        {
                          v226 = 0;
                        }

                        else if (v224[16])
                        {
                          v226 = *(v305 + v224[16]);
                          if (v225 >= 0x43)
                          {
LABEL_490:
                            if (v224[33])
                            {
                              v227 = *(v305 + v224[33]);
                              {
                                goto LABEL_492;
                              }

                              goto LABEL_395;
                            }
                          }
                        }

                        else
                        {
                          v226 = 0;
                          if (v225 >= 0x43)
                          {
                            goto LABEL_490;
                          }
                        }

                        v227 = 0;
                        {
LABEL_492:
                          {
                            *(v164 + 402) = 0;
                          }
                        }

LABEL_395:
                        if (v227 + v226 + *(v164 + 402))
                        {
LABEL_399:
                          LOBYTE(v229) = 1;
                        }

                        else
                        {
                          v228 = (v305 - *v305);
                          if (*v228 < 0x5Fu)
                          {
                            LOBYTE(v229) = 0;
                          }

                          else
                          {
                            v229 = v228[47];
                            if (v229)
                            {
                              LOBYTE(v229) = *(v305 + v229) != 0;
                            }
                          }
                        }

                        *(a1 + 1324) = v229;
                        v230 = (v212 - *v212);
                        if (*v230 < 0x11u)
                        {
                          LODWORD(v231) = 0;
                        }

                        else
                        {
                          v231 = v230[8];
                          if (v231)
                          {
                            LODWORD(v231) = *(v212 + v231);
                          }
                        }

                        v232 = a2 + 6328;
                        v233 = (a1 + 1784);
                        *(a1 + 1976) = v231;
                        {
                        }

                        v234 = v76 + 3;
                        if (v76[4])
                        {
                          v235 = v76[3] == 0;
                        }

                        else
                        {
                          v235 = 1;
                        }

                        v236 = v76 + 73;
                        if (v235)
                        {
                          v237 = v76 + 73;
                        }

                        else
                        {
                          v237 = v76 + 3;
                        }

                        v238 = v237[1];
                        v239 = 168;
                        if (a5)
                        {
                          v239 = 504;
                        }

                        v240 = v232 + v239;
                        if (a5)
                        {
                          v241 = 0x1000000000;
                        }

                        else
                        {
                          v241 = 0;
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v240, v238, (a1 + 2032));
                        *(a1 + 2064) += *&__dst[16];
                        v242 = *&__dst[16];
                        *v233 = *__dst;
                        *(a1 + 1800) = v242;
                        *(a1 + 1809) = *&__dst[25];
                        *(a1 + 1504) = *(a1 + 1784) + v241;
                        *(a1 + 1536) = v240;
                        v243 = *(a1 + 1800);
                        *v296 = *v233;
                        v296[1] = v243;
                        *(v296 + 25) = *(a1 + 1809);
                        if (*v234)
                        {
                          v244 = v76[4];
                          if (v244)
                          {
                            v245 = *v234;
                          }

                          else
                          {
                            v245 = v76[73];
                          }

                          if (v244)
                          {
                            v236 = v76 + 3;
                          }
                        }

                        else
                        {
                          v245 = *v236;
                        }

                        memcpy(*(a1 + 1792), v245, v236[1]);
                        v246 = *(a1 + 1792);
                        v247 = *(a1 + 1800);
                        *(a1 + 1512) = *(a1 + 1504);
                        *(a1 + 1520) = v246;
                        *(a1 + 1528) = v247;
                        v248 = v76 + 8;
                        if (v76[8])
                        {
                          if (v76[9])
                          {
                            v249 = v76 + 8;
                          }

                          else
                          {
                            v249 = v76 + 78;
                          }

                          v250 = v249[1];
                          if (!v250)
                          {
                            goto LABEL_440;
                          }
                        }

                        else
                        {
                          v250 = v76[79];
                          if (!v250)
                          {
                            goto LABEL_440;
                          }
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v232, v250, (a1 + 2040));
                        *(a1 + 2064) += *&__dst[16];
                        v251 = *&__dst[16];
                        *(a1 + 1832) = *__dst;
                        *(a1 + 1848) = v251;
                        *(a1 + 1857) = *&__dst[25];
                        v252 = *(a1 + 1848);
                        *v292 = *(a1 + 1832);
                        v292[1] = v252;
                        *(v292 + 25) = *(a1 + 1857);
                        if (*v248)
                        {
                          v253 = v76[9];
                          if (v253)
                          {
                            v254 = *v248;
                          }

                          else
                          {
                            v254 = v76[78];
                          }

                          if (v253)
                          {
                            v255 = v76 + 8;
                          }

                          else
                          {
                            v255 = v76 + 78;
                          }
                        }

                        else
                        {
                          v255 = v76 + 78;
                          v254 = v76[78];
                        }

                        memcpy(*(a1 + 1840), v254, v255[1]);
LABEL_440:
                        v256 = v76 + 13;
                        if (v76[13])
                        {
                          if (v76[14])
                          {
                            v257 = v76 + 13;
                          }

                          else
                          {
                            v257 = v76 + 83;
                          }

                          v258 = v257[1];
                          if (!v258)
                          {
                            goto LABEL_456;
                          }
                        }

                        else
                        {
                          v258 = v76[84];
                          if (!v258)
                          {
                            goto LABEL_456;
                          }
                        }

                        AGX::Heap<true>::allocateImpl(__dst, v232, v258, (a1 + 2048));
                        *(a1 + 2064) += *&__dst[16];
                        v259 = *&__dst[16];
                        *(a1 + 1880) = *__dst;
                        *(a1 + 1896) = v259;
                        *(a1 + 1905) = *&__dst[25];
                        v260 = *(a1 + 1896);
                        *v293 = *(a1 + 1880);
                        v293[1] = v260;
                        *(v293 + 25) = *(a1 + 1905);
                        if (*v256)
                        {
                          v261 = v76[14];
                          if (v261)
                          {
                            v262 = *v256;
                          }

                          else
                          {
                            v262 = v76[83];
                          }

                          if (v261)
                          {
                            v263 = v76 + 13;
                          }

                          else
                          {
                            v263 = v76 + 83;
                          }
                        }

                        else
                        {
                          v263 = v76 + 83;
                          v262 = v76[83];
                        }

                        memcpy(*(a1 + 1888), v262, v263[1]);
                        v264 = *(a1 + 1896);
                        *(a1 + 1736) = *(a1 + 1880);
                        *(a1 + 1752) = v264;
LABEL_456:
                        v265 = v76 + 23;
                        if (v76[23])
                        {
                          if (!v76[24])
                          {
                            v265 = v76 + 93;
                          }

                          v266 = v265[1];
                          if (v266)
                          {
LABEL_460:
                            AGX::Heap<true>::allocateImpl(__dst, v232, v266, (a1 + 2056));
                            *(a1 + 2064) += *&__dst[16];
                            v267 = *&__dst[16];
                            *v294 = *__dst;
                            v294[1] = v267;
                            *(v294 + 25) = *&__dst[25];
                            v268 = v294[1];
                            *v295 = *v294;
                            v295[1] = v268;
                            *(v295 + 25) = *(v294 + 25);
                            v269 = *(a1 + 1944);
                            *(a1 + 1760) = *(a1 + 1928);
                            *(a1 + 1776) = v269;
                          }
                        }

                        else
                        {
                          v266 = v76[94];
                          if (v266)
                          {
                            goto LABEL_460;
                          }
                        }

                        if ((*(a1 + 1472) & 1) != 0 || *(*(a1 + 592) + 16945) == 1)
                        {
                          {
                            {
                              v271 = v302;
                              if (*(a1 + 1423) < 0)
                              {
                                v271 = *v302;
                              }

                              v272 = v300;
                              if (*(a1 + 1471) < 0)
                              {
                                v272 = v300->__r_.__value_.__r.__words[0];
                              }

                              v273 = v301;
                              if (*(a1 + 1447) < 0)
                              {
                                v273 = *v301;
                              }

                              v274 = *(a1 + 1384);
                              v275 = *(a1 + 1392);
                              v276 = v299;
                              if (*(a1 + 1503) < 0)
                              {
                                v276 = *v299;
                              }

                              v277 = *(a1 + 1504);
                              v278 = *(a1 + 1800);
                              *__dst = 136448002;
                              *&__dst[4] = v271;
                              *&__dst[12] = 2082;
                              *&__dst[14] = v272;
                              *&__dst[22] = 2082;
                              *&__dst[24] = v273;
                              *&__dst[32] = 1026;
                              *&__dst[34] = v274;
                              *&__dst[38] = 2050;
                              *&__dst[40] = v275;
                              *v312 = 2082;
                              *&v312[2] = v276;
                              *&v312[10] = 2050;
                              *&v312[12] = v277;
                              v313 = 2050;
                              v314 = v278;
                              _os_signpost_emit_with_name_impl(&dword_29CA13000, v270, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Type=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Addr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}zu", __dst, 0x4Eu);
                            }
                          }

                          v279 = *(a1 + 592);
                          v280 = v302;
                          if (*(a1 + 1423) < 0)
                          {
                            v280 = *v302;
                          }

                          v281 = v300;
                          if (*(a1 + 1471) < 0)
                          {
                            v281 = v300->__r_.__value_.__r.__words[0];
                          }

                          v282 = v301;
                          if (*(a1 + 1447) < 0)
                          {
                            v282 = *v301;
                          }

                          v283 = v299;
                          if (*(a1 + 1503) < 0)
                          {
                            v283 = *v299;
                          }

                          v284 = *(a1 + 1384);
                          v285 = *(a1 + 1392);
                          v286 = *(a1 + 1504);
                          v287 = *(a1 + 1800);
                          v288 = *(a1 + 1472);
                          *__dst = v280;
                          *&__dst[8] = v281;
                          *&__dst[16] = v282;
                          *&__dst[24] = v283;
                          *&__dst[32] = v284;
                          *&__dst[40] = v285;
                          *v312 = v286;
                          *&v312[8] = v287;
                          v312[16] = v288;
                          AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerVariantEventInfo(v279, a1, __dst);
                        }

                        operator new();
                      }
                    }
                  }
                }

                else
                {
                  *(a1 + 2171) = 0;
                }

                if (v183 < 0x21)
                {
                  goto LABEL_369;
                }

                goto LABEL_365;
              }
            }
          }

          v180 = 0;
          goto LABEL_313;
        }
      }

      v175 = 0;
      LOBYTE(v174) = 0;
      goto LABEL_301;
    }

    v64 = (v63 + *v63);
    v65 = (v64 - *v64);
    v66 = *v65;
    if (v65[2])
    {
      v67 = (v64 + v65[2] + *(v64 + v65[2]));
      if (v66 < 7)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v67 = 0;
      if (v66 < 7)
      {
        goto LABEL_116;
      }
    }

    v68 = v65[3];
    if (v68)
    {
      v69 = v64 + v68 + *(v64 + v68);
      if (!*v67)
      {
        goto LABEL_127;
      }

      goto LABEL_117;
    }

LABEL_116:
    v69 = 0;
    if (!*v67)
    {
      goto LABEL_127;
    }

LABEL_117:
    v70 = 0;
    v71 = v69 + 4;
    v72 = (v67 + 2);
    while (1)
    {
      v73 = *(v72 - 1);
      v74 = strlen(&v72[v73]);
      if (v74 > 0x7FFFFFFFFFFFFFF7)
      {
        break;
      }

      v75 = v74;
      if (v74 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v74;
      if (v74)
      {
        memmove(__dst, &v72[v73], v74);
      }

      __dst[v75] = 0;
      std::vector<std::string>::push_back[abi:nn200100](a1 + 2296, __dst);
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      *__dst = *&v71[4 * v70];
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 2320, __dst);
      ++v70;
      v72 += 4;
      if (v70 >= *v67)
      {
        goto LABEL_127;
      }
    }

LABEL_503:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v26 < 0x45)
  {
    if (v26 < 0x3D)
    {
      LOWORD(v31) = 0;
      if (v26 < 0x3B)
      {
        LODWORD(v33) = 0;
        v34 = 0;
        LOWORD(v30) = 0;
        v32 = 0;
LABEL_57:
        *(a1 + 1144) = v33;
        v35 = v31 + v33 - 1;
        v36 = -v33;
        v37 = *(a1 + 1152);
        v38 = (v30 | ((v36 & v35) << 32) | (v32 << 48)) + v34 + (v37 & 0xFF000000);
        *(a1 + 1152) = v38;
        if (v38 != v37)
        {
          *(a1 + 1176) = 0uLL;
          *(a1 + 1192) = 0uLL;
          *(a1 + 1160) = 0uLL;
          *&v39 = -1;
          *(&v39 + 1) = -1;
          *(a1 + 1208) = v39;
          *(a1 + 1224) = v39;
          *(a1 + 1240) = v39;
          *(a1 + 1256) = -1;
        }

        v40 = (v22 - *v22);
        if (*v40 < 0x57u)
        {
          LODWORD(v41) = 0;
        }

        else
        {
          v41 = v40[43];
          if (v41)
          {
            LODWORD(v41) = *(v22 + v41);
          }
        }

        *(a1 + 1264) = v41;
        v42 = *v22;
        v24 = -v42;
        v26 = *(v22 - v42);
        goto LABEL_64;
      }

      LOWORD(v30) = 0;
      v32 = v25[29];
      if (!v25[29])
      {
LABEL_42:
        if (v26 < 0x3F)
        {
          LODWORD(v33) = 0;
          v34 = 0;
        }

        else
        {
          v33 = v25[31];
          if (v25[31])
          {
            v33 = *(v22 + v33);
          }

          if (v26 < 0x4B)
          {
            v34 = 0;
          }

          else
          {
            v34 = v25[37];
            if (v25[37])
            {
              v34 = *(v22 + v34) << 16;
            }
          }
        }

        goto LABEL_57;
      }

LABEL_41:
      v32 = *(v22 + v32);
      goto LABEL_42;
    }

    LOWORD(v30) = 0;
    v31 = v25[30];
    if (v25[30])
    {
      goto LABEL_39;
    }
  }

  else
  {
    v30 = v25[34];
    if (v25[34])
    {
      LODWORD(v30) = *(v22 + v30);
    }

    v31 = v25[30];
    if (v25[30])
    {
LABEL_39:
      LODWORD(v31) = *(v22 + v31);
    }
  }

  v32 = v25[29];
  if (!v25[29])
  {
    goto LABEL_42;
  }

  goto LABEL_41;
}

void sub_29CE13E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, char *a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27, void **a28, void **a29, void **a30, void **a31, uint64_t a32, uint64_t a33, uint64_t a34, void **a35, void **a36, void **a37)
{
  CompileStatistics::~CompileStatistics(a27);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a37);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v37 + 2144));
  v40 = *a35;
  if (*a35)
  {
    *(v37 + 2128) = v40;
    operator delete(v40);
  }

  v41 = *a36;
  if (*a36)
  {
    *(v37 + 2104) = v41;
    operator delete(v41);
  }

  if (*a11 < 0)
  {
    operator delete(*a12);
    if ((*(v37 + 1503) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v37 + 1503) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v37 + 1471) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  operator delete(*a28);
  if (*(v37 + 1471) < 0)
  {
LABEL_8:
    operator delete(*a29);
    if ((*(v37 + 1447) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((*(v37 + 1447) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v37 + 1423) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_25:
  operator delete(*a30);
  if ((*(v37 + 1423) & 0x80000000) == 0)
  {
LABEL_11:
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(v37 + 1128));
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,true,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>>::GlobalBindingTableInfo::~GlobalBindingTableInfo((v37 + 992));
    v42 = *(v37 + 912);
    if (v42)
    {
      *(v37 + 920) = v42;
      operator delete(v42);
      v43 = *(v37 + 888);
      if (!v43)
      {
LABEL_13:
        v44 = *(v37 + 864);
        if (!v44)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v43 = *(v37 + 888);
      if (!v43)
      {
        goto LABEL_13;
      }
    }

    *(v37 + 896) = v43;
    operator delete(v43);
    v44 = *(v37 + 864);
    if (!v44)
    {
LABEL_15:
      v45 = *a9;
      if (*a9)
      {
        *(v37 + 848) = v45;
        operator delete(v45);
      }

      AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v37 + 752);
      v46 = *a10;
      if (*a10)
      {
        *(v37 + 736) = v46;
        operator delete(v46);
      }

      AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(v37 + 640);
      AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::~LinkInfo(a26);
      if (*(v38 - 193) < 0)
      {
        operator delete(*(v38 - 216));
      }

      _Unwind_Resume(a1);
    }

LABEL_14:
    *(v37 + 872) = v44;
    operator delete(v44);
    goto LABEL_15;
  }

LABEL_10:
  operator delete(*a31);
  goto LABEL_11;
}

uint64_t AGX::IntersectionProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(uint64_t result)
{
  v1 = *(result + 584);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 576);
    v4 = *(v1 + 208);
    v6 = *(v1 + 144);
    v5 = *(v1 + 148);
    if (v4)
    {
      v7 = *(v1 + 144);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v1 + 176);
    if (*(v1 + 176) == 0)
    {
      v6 = 0;
    }

    v9 = (*(v1 + 132) + *(v1 + 124) + *(v1 + 140) - (*(v1 + 128) + *(v1 + 120) + *(v1 + 136)));
    *(result + 632) = v7 + v5 + v6 + *(v1 + 152) + ((v9 + 3) & 0xFFFFFFFC);
    v10 = (result + 640);
    v11 = *(result + 640);
    v12 = (*(result + 648) - v11) >> 2;
    if (v9 <= v12)
    {
      if (v9 < v12)
      {
        *(result + 648) = v11 + 4 * v9;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((result + 640), v9 - v12);
      v8 = *(v1 + 176);
      v5 = *(v1 + 148);
      v4 = *(v1 + 208);
    }

    if (v4)
    {
      v13 = *(v1 + 144);
    }

    else
    {
      v13 = 0;
    }

    if (v8 | *(v1 + 184))
    {
      v14 = *(v1 + 144);
    }

    else
    {
      v14 = 0;
    }

    v15 = (v5 + v13 + v14);
    v16 = *(v2 + 728);
    v17 = (*(v2 + 736) - v16) >> 2;
    if (v15 <= v17)
    {
      if (v15 < v17)
      {
        *(v2 + 736) = v16 + 4 * v15;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((v2 + 728), v15 - v17);
    }

    v18 = *v3;
    v19 = v3[1];
    if (*v3 != v19)
    {
      do
      {
        v20 = *v18;
        if ((*(*v18 + 4) & 0x80000000) == 0)
        {
          v21 = 4 * *(v20 + 8) - *(v1 + 120);
          *(*v10 + 4 * v21) = 1610612735;
          *(*v10 + 4 * (v21 + 1)) = 0x40000000;
          *(*v10 + 4 * (v21 + 2)) = 1073741825;
          *(*v10 + 4 * (v21 + 3)) = 1073741826;
          if (*(v20 + 12) == 1)
          {
            *(v2 + 1352 + 8 * ((*(v20 + 4) & 0xFFFC0) != 0)) |= 1 << *(v20 + 4);
          }
        }

        ++v18;
      }

      while (v18 != v19);
    }

    if (*(v2 + 1326))
    {
      for (i = v3[9]; i != v3[10]; ++i)
      {
        if (**i == 93)
        {
          v23 = *(*i + 4);
          if ((v23 & 0x80000000) == 0 && (v23 & 0xFFF00000) != 0x400000)
          {
            *(v2 + 1352) = vorrq_s8(*(v2 + 1352), *(v2 + 1368));
            break;
          }
        }
      }
    }

    v24 = v3[3];
    for (j = v3[4]; v24 != j; ++v24)
    {
      if ((*(*v24 + 4) & 0x80000000) == 0)
      {
        v26 = *(v2 + 2168) ? 3 : 1;
        v27 = *(v1 + 124) + v26 * *(*v24 + 8) - (*(v1 + 120) + *(v1 + 128));
        *(*(v2 + 640) + 4 * v27) = 0x7FFFFFFF;
        if (*(v2 + 2168) == 1)
        {
          *(*v10 + 4 * (v27 + 1)) = 0x7FFFFFFF;
          *(*v10 + 4 * (v27 + 2)) = 1610612736;
        }
      }
    }

    v28 = v3[6];
    for (k = v3[7]; v28 != k; ++v28)
    {
      v30 = *v28;
      v31 = *(*v28 + 4);
      if ((v31 & 0x80000000) == 0)
      {
        v32 = ((*(v30 + 8) >> 1) & 0x1FFFFFFF) + *(v1 + 124) + *(v1 + 132) - (*(v1 + 120) + *(v1 + 128) + *(v1 + 136));
        v33 = v31 & 0xFFFFF;
        *(*v10 + 4 * v32) = (v31 & 0xFFFFF) + 536870963;
        if (*(v30 + 12) == 1)
        {
          *(v2 + 1336 + 8 * (v33 > 0x3F)) |= 1 << v31;
        }

        if (*(v2 + 2171) == 1)
        {
          v34 = *(v2 + 2184);
          if (!v34)
          {
LABEL_147:
            abort();
          }

          v35 = 2 * v32;
          v36 = (2 * v32) | 1;
          while (1)
          {
            while (1)
            {
              v37 = *(v34 + 7);
              if (v33 >= v37)
              {
                break;
              }

              v34 = *v34;
              if (!v34)
              {
                goto LABEL_147;
              }
            }

            if (v37 >= v33)
            {
              break;
            }

            v34 = v34[1];
            if (!v34)
            {
              goto LABEL_147;
            }
          }

          v38 = v2 + 1128;
LABEL_60:
          v39 = *v38;
          if (!*v38)
          {
LABEL_64:
            operator new();
          }

          while (1)
          {
            v38 = v39;
            v40 = *(v39 + 28);
            if (v36 < v40)
            {
              goto LABEL_60;
            }

            if (v40 > v35)
            {
              break;
            }

            v39 = *(v38 + 8);
            if (!v39)
            {
              goto LABEL_64;
            }
          }

          *(v38 + 32) = *(v34 + 8);
        }
      }
    }

    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather((v2 + 640));
    v42 = *(v1 + 120);
    v41 = *(v1 + 124);
    v43 = *(v1 + 128);
    v44 = *(v1 + 132);
    v45 = *(v1 + 136);
    v46 = *(v1 + 140);
    v47 = (v41 + v44 + v46 - (v42 + v43 + v45) + 3) & 0xFFFFFFFC;
    v48 = *(v1 + 160);
    v49 = *(v1 + 168);
    if (*(v1 + 160) != 0)
    {
      v50 = 0;
      v51 = *(v1 + 144);
      if (*(v1 + 208) == 1)
      {
        v52 = (v2 + 728);
        if (!v51)
        {
          goto LABEL_76;
        }

        v53 = 0;
        v99 = *(v1 + 168);
        n = v48;
        for (m = v48; ; m = n)
        {
          if (m)
          {
            v55 = &n;
          }

          else
          {
            m = v99;
            if (!v99)
            {
              v45 = *(v1 + 136);
              v46 = *(v1 + 140);
              v43 = *(v1 + 128);
              v44 = *(v1 + 132);
              v42 = *(v1 + 120);
              v41 = *(v1 + 124);
              v51 = *(v1 + 144);
              v50 = v51;
              goto LABEL_76;
            }

            v55 = &v99;
          }

          *v55 = m & (m - 1);
          *(*(v2 + 728) + 4 * v53) = xmmword_29D2F21F0;
          v53 += 4;
        }
      }

      v52 = (v2 + 728);
LABEL_76:
      v56 = *(v1 + 176);
      if (*&v56 != 0 && v51 != 0)
      {
        v96 = v50 - v47 + ((v46 + v44 - (v45 + v43 + v42) + v41 + 3) & 0xFFFFFFFC);
        v99 = v49;
        for (n = v48; ; v48 = n)
        {
          if (v48)
          {
            p_n = &n;
          }

          else
          {
            v48 = v99;
            if (!v99)
            {
              break;
            }

            p_n = &v99;
          }

          v98 = *v52;
          *(*v52 + 4 * v96) = -1;
          *(v98 + 4 * (v96 + 1)) = 0;
          *(v98 + 4 * (v96 + 2)) = 1;
          *p_n = v48 & (v48 - 1);
          *(v98 + 4 * (v96 + 3)) = 2;
          v96 += 4;
        }
      }

      *(v2 + 1352) = vorrq_s8(*(v2 + 1352), v56);
    }

    if (*(v1 + 148))
    {
      v58 = *(v1 + 144);
      if (*(v1 + 208))
      {
        v59 = *(v1 + 144);
      }

      else
      {
        v59 = 0;
      }

      if (*(v1 + 176) == 0)
      {
        v58 = 0;
      }

      v60 = ((*(v1 + 124) + *(v1 + 132) + *(v1 + 140) - (*(v1 + 120) + *(v1 + 128) + *(v1 + 136)) + 3) & 0xFFFFFFFC) - v47 + v59 + v58;
      v61 = *(v1 + 192);
      v99 = *(v1 + 200);
      for (n = v61; ; v61 = n)
      {
        if (v61)
        {
          v62 = &n;
        }

        else
        {
          v61 = v99;
          if (!v99)
          {
            break;
          }

          v62 = &v99;
        }

        *v62 = v61 & (v61 - 1);
        v63 = *(v2 + 728);
        *(v63 + 4 * v60) = -1;
        if (*(v2 + 2168) == 1)
        {
          *(v63 + 4 * (v60 + 1)) = -1;
          *(v63 + 4 * (v60 + 2)) = 0;
        }

        v60 += 4;
      }
    }

    v64 = (*(v3 + 24) + 3) >> 2;
    if (*(v1 + 467) == 1)
    {
      *(v2 + 992) = v64;
      *(v2 + 996) = 102;
    }

    *(v2 + 636) = v64;
    v65 = *(v2 + 752);
    v66 = (*(v2 + 760) - v65) >> 2;
    if (v64 <= v66)
    {
      if (v64 < v66)
      {
        *(v2 + 760) = v65 + 4 * v64;
      }
    }

    else
    {
      std::vector<unsigned int>::__append((v2 + 752), v64 - v66);
    }

    if (v2 + 840 != v1 + 216)
    {
      std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v2 + 840), *(v1 + 216), *(v1 + 224), (*(v1 + 224) - *(v1 + 216)) >> 2);
    }

    if (v2 + 888 != v1 + 240)
    {
      std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v2 + 888), *(v1 + 240), *(v1 + 248), (*(v1 + 248) - *(v1 + 240)) >> 2);
    }

    if (v2 + 864 != v1 + 320)
    {
      std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>((v2 + 864), *(v1 + 320), *(v1 + 328), (*(v1 + 328) - *(v1 + 320)) >> 1);
    }

    if (v2 + 912 != v1 + 368)
    {
      std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>((v2 + 912), *(v1 + 368), *(v1 + 376), (*(v1 + 376) - *(v1 + 368)) >> 1);
    }

    *(v2 + 936) = *(v1 + 416);
    *(v2 + 1328) = *(v1 + 160) != 0;
    *(v2 + 1329) = *(v1 + 148) != 0;
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::IntersectionArgumentTable,true,false,AGX::NoCombinedUserDriverArgumentTable>::finalizeGatherSizes(v2, v1);
    if ((*(v2 + 3679) & 1) == 0)
    {
      v67 = *(v2 + 2368);
      v68 = *(v2 + 2988);
      v69 = *(v2 + 3000);
      v70 = ((*(v2 + 2984) + 3) >> 2);
      *(v67 + 140) = *(v67 + 140) & 0xFFFFF00000000000 | (v70 << 16) & 0xFFFFF001FFFFFFFFLL | (((((((*(v2 + 2996) + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | v70;
      *(v67 + 320) = (v68 + 3) >> 2;
      *(v67 + 324) = (((v69 + 3) >> 2) + 1) & 0x7FFFFFFE;
      if (*(v67 + 222) == 1)
      {
        AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit((v67 + 48), *(v67 + 312), *v67 + *(v67 + 316));
      }
    }

    v71 = *(v2 + 3680);
    if (v71 != -1)
    {
      AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::setConstantCalculationProgramInfo(*(v2 + 2368), v71, *(v2 + 3684), *(v2 + 3032), *(v2 + 3040), *(v2 + 3048), *(v2 + 3692));
    }

    v72 = *(v2 + 3248);
    if (v72)
    {
      v73 = *(v2 + 2988);
      v74 = *(v2 + 3000);
      v75 = ((*(v2 + 2984) + 3) >> 2);
      *(v72 + 140) = *(v72 + 140) & 0xFFFFF00000000000 | (v75 << 16) & 0xFFFFF001FFFFFFFFLL | (((((((*(v2 + 2996) + 3) >> 2) + 1) & 0xFFE) >> 1) & 0x7FF) << 33) | v75;
      *(v72 + 320) = (v73 + 3) >> 2;
      *(v72 + 324) = (((v74 + 3) >> 2) + 1) & 0x7FFFFFFE;
      if (*(v72 + 222) == 1)
      {
        AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit((v72 + 48), *(v72 + 312), *v72 + *(v72 + 316));
      }

      v76 = *(v2 + 3248);
      v77 = *(v2 + 3200);
      memcpy(v77, *v76, *(v76 + 8) - *v76);
      if (*(v76 + 272) == 1)
      {
        *&v77[*(v76 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v77[*(v76 + 276)], vshlq_u8(vqtbl1q_s8(0, xmmword_29D2F17A0), xmmword_29D2F17B0));
      }

      v78 = *(v2 + 3248);
      v80 = *(v78 + 64);
      v79 = *(v78 + 80);
      *(v2 + 3256) = *(v78 + 48);
      *(v2 + 3272) = v80;
      *(v2 + 3288) = v79;
      v81 = *(v78 + 144);
      v83 = *(v78 + 96);
      v82 = *(v78 + 112);
      *(v2 + 3336) = *(v78 + 128);
      *(v2 + 3352) = v81;
      *(v2 + 3304) = v83;
      *(v2 + 3320) = v82;
      v85 = *(v78 + 176);
      v84 = *(v78 + 192);
      v86 = *(v78 + 160);
      *(v2 + 3416) = *(v78 + 208);
      *(v2 + 3384) = v85;
      *(v2 + 3400) = v84;
      *(v2 + 3368) = v86;
    }

    AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::finish(*(v2 + 2368));
    AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::buildUniqueResourceMask(v2 + 2368);
    v87 = *(v2 + 576);
    v88 = *(v87 + 72);
    v89 = *(v87 + 80);
    if (v88 != v89)
    {
      while (1)
      {
        v90 = *v88;
        v91 = **v88;
        v92 = (v91 - 11);
        if (v92 > 0x35)
        {
          break;
        }

        if (((1 << (v91 - 11)) & 0x8000000000067) != 0)
        {
          goto LABEL_133;
        }

        if (v92 != 53)
        {
          break;
        }

LABEL_124:
        *(*(v2 + 752) + 4 * v90[2]) = 0x100000000;
LABEL_125:
        if (++v88 == v89)
        {
          goto LABEL_136;
        }
      }

      if ((v91 - 93) > 0x14 || ((1 << (v91 - 93)) & 0x100031) == 0)
      {
        goto LABEL_125;
      }

LABEL_133:
      if (v91 != 64 || v90[1] < 0)
      {
        goto LABEL_125;
      }

      goto LABEL_124;
    }

LABEL_136:
    AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::finalizeForOptimizedGather((v2 + 752));
    AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::IntersectionArgumentTable,true,false,AGX::NoCombinedUserDriverArgumentTable>::finalizeGatherSizes(v2, v1);
    v94 = *(v2 + 584);
    if (v94)
    {
      v95 = AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(v94);
      MEMORY[0x29ED520D0](v95, 0x1030C40704B4075);
    }

    *(v2 + 584) = 0;
    result = *(v2 + 576);
    if (result)
    {
      ProgramBindingsAndDMAList::~ProgramBindingsAndDMAList(result);
      result = MEMORY[0x29ED520D0]();
    }

    *(v2 + 576) = 0;
  }

  return result;
}

uint64_t AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::IntersectionArgumentTable,true,false,AGX::NoCombinedUserDriverArgumentTable>::finalizeGatherSizes(uint64_t result, uint64_t a2)
{
  v2 = *(result + 636);
  v3 = *(result + 1104);
  v4 = *(result + 1096);
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(result + 992) & 1;
  }

  v6 = (*(result + 848) - *(result + 840)) >> 2;
  *(result + 600) = ((*(result + 896) - *(result + 888) + 4 * (*(result + 1000) + v2 + *(result + 1004) + v5 + (((v3 - v4) >> 1) & 0x3FFFFFFE))) & 0xFFFFFFFC) + 8 * (v6 + *(result + 632));
  v7 = (*(a2 + 124) + *(a2 + 132) + *(a2 + 140) - (*(a2 + 120) + *(a2 + 128) + *(a2 + 136)) + 3) & 0xFFFFFFFC;
  *(result + 604) = 8 * v7;
  v8 = *(a2 + 208);
  v9 = *(a2 + 144);
  if (!*(a2 + 208))
  {
    v9 = 0;
  }

  *(result + 608) = 8 * (v9 + v7);
  v10 = *(result + 712);
  *(result + 612) = 8 * v10;
  v11 = 8 * (v6 + v10);
  *(result + 616) = v11;
  *(result + 620) = v11 + 4 * v2;
  v12 = *(a2 + 144);
  if (v8)
  {
    v13 = *(a2 + 144);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a2 + 176);
  if (*(a2 + 176) == 0)
  {
    v12 = 0;
  }

  *(result + 624) = 8 * (v13 + v12 + v7);
  if (v14 | *(a2 + 184))
  {
    v15 = *(a2 + 144);
  }

  else
  {
    v15 = 0;
  }

  v16 = v8 == 0;
  if (v8)
  {
    v17 = *(a2 + 144);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a2 + 148);
  *(result + 628) = 8 * (v17 + v18 + v15 + v7);
  if (v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(a2 + 144);
  }

  if (v14 | *(a2 + 184))
  {
    v20 = *(a2 + 144);
  }

  else
  {
    v20 = 0;
  }

  *(result + 1288) = v20 + v19;
  *(result + 1292) = v18;
  return result;
}

void AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry::signalPending(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_unfair_lock_s *a9, unint64_t *a10, void *a11)
{
  v11 = MEMORY[0x2A1C7C4A8]();
  v15 = v14;
  v17 = v16;
  v18 = v11;
  v62 = *MEMORY[0x29EDCA608];
  v19 = v12 & 0x330003;
  if ((v12 & 0x330003) != 0)
  {
    v20 = v13;
    v21 = v12;
    v22 = *v11;
    os_unfair_lock_lock(*v11 + 274);
    v57[0] = a10;
    v23 = std::__tree<std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>,std::__map_value_compare<ReflectionKey,std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>,std::less<ReflectionKey>,true>,std::allocator<std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>>>::__emplace_unique_key_args<ReflectionKey,std::piecewise_construct_t const&,std::tuple<ReflectionKey const&>,std::tuple<>>(v22, a10);
    v24 = v23;
    if (v20)
    {
      if ((v19 & ~v23[9]) != 0)
      {
        v25 = v23[10];
        if (v25)
        {
          dispatch_release(v25);
        }

        dispatch_retain(v20);
        v24[9] = v19;
        v24[10] = v20;
      }

      if ((v22[268]._os_unfair_lock_opaque & 1) == 0)
      {
        v48 = v18;
        v46 = [objc_alloc(MEMORY[0x29EDBB5B8]) initWithDevice:a11 reflectionData:v20 functionType:6 options:v21 | 0x8000];
        v47 = v17;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v26 = [v46 arguments];
        v27 = [v26 countByEnumeratingWithState:&v49 objects:v57 count:16];
        if (v27)
        {
          v28 = *v50;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v50 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v30 = *(*(&v49 + 1) + 8 * i);
              if (![v30 type] && (objc_msgSend(objc_msgSend(v30, "dataTypeDescription"), "elementIsIndirectArgumentBuffer") & 1) != 0)
              {
                v31 = [a11 newIndirectArgumentBufferLayoutWithStructType:{objc_msgSend(v30, "bufferStructType")}];
                v32 = v31[2];
                v31[2] = 0;
                *&v22[2 * [v30 index] + 12]._os_unfair_lock_opaque = v32;
              }
            }

            v27 = [v26 countByEnumeratingWithState:&v49 objects:v57 count:16];
          }

          while (v27);
        }

        v17 = v47;
        LOBYTE(v22[268]._os_unfair_lock_opaque) = 1;
        v18 = v48;
      }
    }

    else
    {
      v23[8] = v23[9];
    }

    os_unfair_lock_unlock(v22 + 274);
  }

  if ((atomic_exchange(v18 + 40, 1u) & 1) == 0)
  {
    v18[2] = v15;
    v33 = v18[3];
    if (v33 != a9)
    {

      v18[3] = a9;
      v15 = v18[2];
    }

    if (v17 && !v15 && *(v17 + 32) != *(v17 + 24))
    {
      AGCDeserializedReply::AGCDeserializedReply(v57);
      v34 = *(v17 + 24);
      if (*(v17 + 32) == v34 || !AGCDeserializedReply::deserialize(v57, *v34, *(v34 + 8)))
      {
        v18[2] = 2;
        v35 = v18[3];
        if (v35 != @"Internal error during function compilation.")
        {

          v18[3] = @"Internal error during function compilation.";
        }
      }

      v36 = 0;
      v37 = v58;
      if (v58 == 0 || v59 == 0)
      {
        v37 = v60;
      }

      if (v37 && (v58 != 0 && v59 != 0 || v61 != 0))
      {
        v36 = (v37 + *v37);
      }

      v38 = (v36 - *v36);
      if (*v38 >= 0x13u && v38[9])
      {
        v54 = 0;
        __p = 0;
        v55 = 0;
        AGCDeserializedReply::AGCDeserializedReply(&v49);
        v39 = *(v17 + 24);
        if ((*(v17 + 32) - v39) >> 4 && AGCDeserializedReply::deserialize(&v49, *v39, *(v39 + 8)))
        {
          AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::ProgramBindingRemap(v56, &v49, 6, 0, 0, &(*v18)[12], 0, 0, 2, 0);
          operator new();
        }

        v18[2] = 2;
        v41 = v18[3];
        if (v41 != @"Internal error during function compilation.")
        {

          v18[3] = @"Internal error during function compilation.";
        }

        AGCDeserializedReply::~AGCDeserializedReply(&v49);
        if (!v18[2])
        {
          operator new();
        }

        v42 = __p;
        if (__p)
        {
          v43 = v54;
          v44 = __p;
          if (v54 != __p)
          {
            do
            {
              v45 = *(v43 - 1);
              if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v45->__on_zero_shared)(v45);
                std::__shared_weak_count::__release_weak(v45);
              }

              v43 -= 16;
            }

            while (v43 != v42);
            v44 = __p;
          }

          v54 = v42;
          operator delete(v44);
        }
      }

      else
      {
        v18[2] = 2;
        v40 = v18[3];
        if (v40 != @"Internal error during function compilation.")
        {

          v18[3] = @"Internal error during function compilation.";
        }
      }

      AGCDeserializedReply::~AGCDeserializedReply(v57);
    }
  }

  dispatch_group_leave(v18[4]);
}

void sub_29CE15740(_Unwind_Exception *a1)
{
  MEMORY[0x29ED520D0](v1, 0x1022C4093E17AA9);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100](&STACK[0x848]);
  AGCDeserializedReply::~AGCDeserializedReply(&STACK[0xAC8]);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>,std::__map_value_compare<ReflectionKey,std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>,std::less<ReflectionKey>,true>,std::allocator<std::__value_type<ReflectionKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ReflectionEntry>>>::__emplace_unique_key_args<ReflectionKey,std::piecewise_construct_t const&,std::tuple<ReflectionKey const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_24:
    operator new();
  }

  v3 = bswap64(*a2);
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = bswap64(v2[4]);
      if (v3 == v5)
      {
        break;
      }

      v6 = v3;
LABEL_10:
      if (v6 < v5)
      {
        v7 = -1;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_24;
      }
    }

    v6 = bswap64(a2[1]);
    v5 = bswap64(v4[5]);
    if (v6 != v5)
    {
      goto LABEL_10;
    }

    v6 = bswap64(a2[2]);
    v5 = bswap64(v4[6]);
    if (v6 != v5)
    {
      goto LABEL_10;
    }

    v6 = bswap64(a2[3]);
    v5 = bswap64(v4[7]);
    if (v6 != v5)
    {
      goto LABEL_10;
    }

LABEL_14:
    v8 = bswap64(v4[4]);
    v9 = bswap64(*a2);
    if (v8 == v9 && (v8 = bswap64(v4[5]), v9 = bswap64(a2[1]), v8 == v9) && (v8 = bswap64(v4[6]), v9 = bswap64(a2[2]), v8 == v9) && (v8 = bswap64(v4[7]), v9 = bswap64(a2[3]), v8 == v9))
    {
      v10 = 0;
    }

    else
    {
      v10 = v8 < v9 ? -1 : 1;
    }

    if ((v10 & 0x80000000) == 0)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_24;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<AGX::UserIntersectionProgramKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<AGX::UserIntersectionProgramKey,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<AGX::UserIntersectionProgramKey const,AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VariantSetEntry>,0>(v1 + 32);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getOrCreatePipelineSet(void *a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 1096));
  v4 = *(a2 + 1080);
  if (v4)
  {
    v5 = *(a2 + 1088);
    *a1 = v4;
    a1[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = *(a2 + 24);
    if (v6 != a2 + 32 && *(v6 + 152))
    {
      operator new();
    }

    *a1 = 0;
    a1[1] = 0;
  }

  os_unfair_lock_unlock((a2 + 1096));
}

void sub_29CE15BB8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  os_unfair_lock_unlock(v1 + 274);
  _Unwind_Resume(a1);
}

uint64_t AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::IntersectionPipelineSet(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char a6)
{
  v16 = a5;
  v17 = a4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = a6;
  *(a1 + 32) = 0;
  v8 = a1 + 32;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = a3;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v16;
  v15[3] = a3;
  v9 = *(a2 + 40);
  if (v9 == -1)
  {
    v12 = std::__throw_bad_variant_access[abi:nn200100]();
    v13 = v7;
    v14 = v12;
    MEMORY[0x29ED520D0](v13, 0x10B0C40F8EBD84CLL);
    std::unique_ptr<AGX::IntersectionEslData<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>>::~unique_ptr[abi:nn200100]((v6 + 80));
    AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::RangeAllocation::~RangeAllocation(v8);
    std::vector<AGX::HAL300::IntersectionPipeline>::~vector[abi:nn200100](v6);
    _Unwind_Resume(v14);
  }

  v18 = v15;
  (off_2A23F7A60[v9])(&v18);
  if (*(a1 + 25) == 1 && !*(a1 + 80))
  {
    operator new();
  }

  return a1;
}

uint64_t AGX::IntersectionEslData<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::IntersectionEslData(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  v245 = *MEMORY[0x29EDCA608];
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  v182 = (a1 + 48);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (!((0x82FA0BE82FA0BE83 * ((v4 - *a2) >> 3)) >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  bzero(v214, 0x328uLL);
  v213 = 0;
  v6 = v2[7];
  v5 = v2[8];
  v216 = v214;
  v215 = v5;
  v217 = &v213;
  v219 = v6;
  v211 = 0;
  v212 = 0;
  v189 = *(v2 + 26);
  v7 = 168;
  if (*(v2 + 26))
  {
    v7 = 504;
  }

  AGX::Heap<true>::allocateImpl(&v223, v2[11] + 6328 + v7, 0, 0);
  v8 = *v224;
  *v3 = v223;
  *(v3 + 16) = v8;
  *(v3 + 25) = *&v224[9];
  v9 = 0x82FA0BE82FA0BE83 * ((v2[1] - *v2) >> 3);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v3 + 64) - *(v3 + 48)) >> 3) < v9)
  {
    if (v9 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_192:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v10 = *v2;
  if (v2[1] != *v2)
  {
    v11 = 0;
    do
    {
      v12 = (v10 + 344 * v11);
      v201 = *(v3 + 8);
      v199 = *(4 * v11);
      v13 = *v3 + v199;
      v198 = *(*v12 + 2368);
      if (v189)
      {
        v13 += 0x1000000000;
      }

      v200 = v13;
      if (v189)
      {
        v14 = *v3 + v199 + 0x1000000000;
      }

      else
      {
        v14 = *v3 + v199;
      }

      *&v223 = v12[4];
      v15 = v12[5];
      *(&v223 + 1) = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      *v224 = v12[6];
      v16 = v12[7];
      *&v224[8] = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v197 = v11;
      *&v224[16] = v12[8];
      v17 = v12[9];
      *&v224[24] = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      v18 = *(v12 + 6);
      v225 = *(v12 + 5);
      v226 = v18;
      v19 = *(v12 + 7);
      v20 = *(v12 + 8);
      v21 = *(v12 + 10);
      v229 = *(v12 + 9);
      v230 = v21;
      v227 = v19;
      v228 = v20;
      v22 = *(v12 + 11);
      v23 = *(v12 + 12);
      v24 = *(v12 + 14);
      v233 = *(v12 + 13);
      v234 = v24;
      v231 = v22;
      v232 = v23;
      v25 = *(v12 + 15);
      v26 = *(v12 + 16);
      v27 = *(v12 + 17);
      *(&v237[1] + 5) = *(v12 + 285);
      v236 = v26;
      *v237 = v27;
      v235 = v25;
      *&v237[3] = *(v12 + 37);
      v237[5] = v12[39];
      v237[6] = v12[40];
      v238 = *(v12 + 41);
      v28 = v226;
      v29 = DWORD2(v227) + DWORD1(v225);
      v30 = *(v3 + 104);
      v31 = *(v3 + 112);
      if (v30 >= v31)
      {
        v33 = *(v3 + 96);
        v34 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v33) >> 2) + 1;
        if (v34 > 0x1555555555555555)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v35 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v33) >> 2);
        if (2 * v35 > v34)
        {
          v34 = 2 * v35;
        }

        if (v35 >= 0xAAAAAAAAAAAAAAALL)
        {
          v36 = 0x1555555555555555;
        }

        else
        {
          v36 = v34;
        }

        if (v36)
        {
          if (v36 <= 0x1555555555555555)
          {
            operator new();
          }

          goto LABEL_190;
        }

        v3 = a1;
        v37 = (4 * ((v30 - v33) >> 2));
        *v37 = v225;
        v37[1] = v29;
        v37[2] = v28;
        v32 = v37 + 3;
        v38 = v37 - (v30 - v33);
        memcpy(v38, v33, v30 - v33);
        *(a1 + 96) = v38;
        *(a1 + 104) = v32;
        *(a1 + 112) = 0;
        if (v33)
        {
          operator delete(v33);
        }
      }

      else
      {
        *v30 = v225;
        *(v30 + 1) = v29;
        v32 = v30 + 12;
        *(v30 + 2) = v28;
      }

      *(v3 + 104) = v32;
      v39 = *(v32 - 1);
      v196 = *(v32 - 2);
      v40 = *v12;
      v41 = *(*v12 + 1104);
      v42 = *(*v12 + 1096);
      v44 = v41 - v42;
      v43 = v41 == v42;
      v45 = *(*v12 + 992) & 1;
      if (v43)
      {
        v45 = 0;
      }

      v46 = v14;
      if (!*(*v12 + 600))
      {
        goto LABEL_116;
      }

      v191 = v44;
      v187 = v45;
      v188 = *(*v12 + 992);
      v47 = *(v40 + 632);
      v48 = *(v40 + 712);
      v49 = *(v40 + 636);
      v50 = *(v40 + 1329);
      if (*(v40 + 1329))
      {
        v218 = v14 + *(v40 + 624);
      }

      v51 = 0;
      v52 = v201 + v199;
      v53 = *(v40 + 1296);
      v185 = *(v40 + 840);
      v186 = *(v40 + 848);
      v192 = *(v40 + 1004);
      v193 = *(v40 + 1000);
      v194 = v49;
      v195 = v47;
      if (v47 != v53)
      {
        v183 = *(v40 + 1328);
        v184 = v48;
        v221 = v214;
        v220 = &v213;
        v54 = &unk_2A23F75E0;
        v239 = &unk_2A23F75E0;
        v240 = &v220;
        v241 = &v221;
        v242 = &v239;
        v55 = *(v40 + 664);
        v56 = *(v40 + 672);
        if (v55 == v56)
        {
          v3 = a1;
          goto LABEL_55;
        }

        v57 = v39;
        v58 = 0;
        while (1)
        {
          v222 = *v55;
          if (!v242)
          {
            break;
          }

          v60 = (*(*v242 + 6))(v242, &v222);
          v61 = *(v55 + 1);
          v62 = *(v55 + 2);
          if (v61 == v62)
          {
            v59 = v58;
          }

          else
          {
            do
            {
              v63 = *v61++;
              v59 = (v58 + 1);
              *(v52 + 8 * v58) = *(v60 + 8 * v63);
              LODWORD(v58) = v58 + 1;
            }

            while (v61 != v62);
          }

          v55 += 8;
          v58 = v59;
          if (v55 == v56)
          {
            if (v242 != &v239)
            {
              v3 = a1;
              v39 = v57;
              v46 = v14;
              if (v242)
              {
                (*(*v242 + 5))();
              }

LABEL_56:
              v49 = v194;
              v47 = v195;
              if (*(v40 + 1136))
              {
                v64 = *(v40 + 1120);
                if (v64 != (v40 + 1128))
                {
                  do
                  {
                    *(v52 + 4 * *(v64 + 7)) |= *(v64 + 8);
                    v73 = v64[1];
                    if (v73)
                    {
                      do
                      {
                        v74 = v73;
                        v73 = *v73;
                      }

                      while (v73);
                    }

                    else
                    {
                      do
                      {
                        v74 = v64[2];
                        v43 = *v74 == v64;
                        v64 = v74;
                      }

                      while (!v43);
                    }

                    v64 = v74;
                  }

                  while (v74 != (v40 + 1128));
                }
              }

              v65 = (v184 + 3) & 0xFFFFFFFC;
              if (v183)
              {
                v66 = *(v40 + 1288);
                if (v66 >= 4)
                {
                  v67 = v66 >> 2;
                  v68 = *(v40 + 728);
                  v69 = (v52 + 8 * v65);
                  do
                  {
                    v70 = *v68;
                    v68 += 4;
                    v71 = &v214[v70];
                    v72 = v71[1];
                    *v69 = *v71;
                    v69[1] = v72;
                    v69 += 2;
                    --v67;
                  }

                  while (v67);
                }

                v65 += v66;
                if (!v50)
                {
LABEL_76:
                  v51 = 8 * (v195 - v53);
                  goto LABEL_77;
                }
              }

              else
              {
                v66 = 0;
                if (!v50)
                {
                  goto LABEL_76;
                }
              }

              v75 = *(v40 + 1292);
              v76 = (v52 + 8 * v65);
              if (*(v40 + 2168) == 1)
              {
                if (v75)
                {
                  v160 = (*(v40 + 728) + 4 * v66);
                  do
                  {
                    v161 = *v160++;
                    *v76++ = v214[v161];
                    --v75;
                  }

                  while (v75);
                }
              }

              else if (v75 >= 4)
              {
                v77 = v75 >> 2;
                v78 = (*(v40 + 728) + 4 * v66);
                do
                {
                  v79 = *v78;
                  v78 += 4;
                  *v76 = v214[v79];
                  v76 += 4;
                  --v77;
                }

                while (v77);
              }

              goto LABEL_76;
            }

            v54 = *v242;
            v3 = a1;
            v39 = v57;
            v46 = v14;
LABEL_55:
            v54[4]();
            goto LABEL_56;
          }
        }

LABEL_189:
        std::__throw_bad_function_call[abi:nn200100]();
LABEL_190:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

LABEL_77:
      if (v53)
      {
        if (v53 >= 4)
        {
          v80 = *(v40 + 2896);
          v81 = v53 >> 2;
          v82 = (v52 + v51);
          do
          {
            v83 = *v80;
            v80 += 4;
            *v82 = v83;
            v82 += 4;
            --v81;
          }

          while (v81);
        }

        v51 += 8 * v53;
      }

      if (!v49)
      {
        v94 = v192;
        v93 = v193;
        goto LABEL_98;
      }

      v213 = v46 + v51 + 8;
      v221 = v214;
      v220 = &v213;
      v84 = &unk_2A23F7628;
      v239 = &unk_2A23F7628;
      v240 = &v220;
      v241 = &v221;
      v242 = &v239;
      v85 = *(v40 + 776);
      v86 = *(v40 + 784);
      if (v85 != v86)
      {
        v87 = 0;
        do
        {
          v222 = *v85;
          if (!v242)
          {
            goto LABEL_189;
          }

          v89 = (*(*v242 + 6))(v242, &v222);
          v90 = *(v85 + 1);
          v91 = *(v85 + 2);
          if (v90 == v91)
          {
            v88 = v87;
          }

          else
          {
            do
            {
              v92 = *v90++;
              v88 = (v87 + 1);
              *(v52 + v51 + 4 * v87) = *(v89 + 4 * v92);
              LODWORD(v87) = v87 + 1;
            }

            while (v90 != v91);
          }

          v85 += 8;
          v87 = v88;
        }

        while (v85 != v86);
        v3 = a1;
        if (v242 != &v239)
        {
          v46 = v14;
          v94 = v192;
          v93 = v193;
          if (v242)
          {
            (*(*v242 + 5))();
          }

          goto LABEL_97;
        }

        v84 = *v242;
        v46 = v14;
      }

      v94 = v192;
      v93 = v193;
      v84[4]();
LABEL_97:
      v47 = v195;
      v51 += 4 * v194;
LABEL_98:
      if ((v191 >> 2))
      {
        v95 = v47 + ((v186 - v185) >> 2);
        v96 = 4 * (v187 + v188);
        v97 = (v52 + (v96 + 8 * v95));
        v98 = *(v40 + 1096);
        v99 = v191 >> 2;
        do
        {
          v100 = *v98++;
          *v97++ = v214[v100];
          LODWORD(v99) = v99 - 1;
        }

        while (v99);
        v51 = v96 + 8 * (v95 + (v191 >> 2));
      }

      if (v94 != -v93)
      {
        v101 = (v52 + v51);
        v102 = 4 * *(v40 + 1000);
        memcpy(v101, v214 + 4 * *(v40 + 996), v102);
        v221 = v214;
        v220 = &v213;
        v103 = &unk_2A23F7628;
        v239 = &unk_2A23F7628;
        v240 = &v220;
        v241 = &v221;
        v242 = &v239;
        v104 = *(v40 + 1032);
        v105 = *(v40 + 1040);
        if (v104 == v105)
        {
          goto LABEL_115;
        }

        v106 = 0;
        do
        {
          v222 = *v104;
          if (!v242)
          {
            goto LABEL_189;
          }

          v108 = (*(*v242 + 6))(v242, &v222);
          v109 = *(v104 + 1);
          v110 = *(v104 + 2);
          if (v109 == v110)
          {
            v107 = v106;
          }

          else
          {
            do
            {
              v111 = *v109++;
              v107 = (v106 + 1);
              *&v101[4 * v106 + v102] = *(v108 + 4 * v111);
              LODWORD(v106) = v106 + 1;
            }

            while (v109 != v110);
          }

          v104 += 8;
          v106 = v107;
        }

        while (v104 != v105);
        if (v242 == &v239)
        {
          v103 = *v242;
          v3 = a1;
          v46 = v14;
LABEL_115:
          v103[4]();
          goto LABEL_116;
        }

        v3 = a1;
        v46 = v14;
        if (v242)
        {
          (*(*v242 + 5))();
        }
      }

LABEL_116:
      v112 = v201 + v199;
      v113 = *(v40 + 2368);
      memcpy((v201 + v199), *v113, *(v113 + 8) - *v113);
      if (*(v113 + 272) == 1)
      {
        v114.i64[0] = v46;
        v114.i64[1] = v46 >> 5;
        *(v112 + *(v113 + 276)) = vbslq_s8(xmmword_29D2F17C0, *(v112 + *(v113 + 276)), vshlq_u8(vqtbl1q_s8(v114, xmmword_29D2F17A0), xmmword_29D2F17B0));
      }

      v115 = *(v113 + 224);
      for (i = *(v113 + 232); v115 != i; v115 += 3)
      {
        v117.i64[0] = v214[v115[1]] + *v115;
        v117.i64[1] = v117.i64[0] >> 5;
        *(v112 + v115[2]) = vbslq_s8(xmmword_29D2F17C0, *(v112 + v115[2]), vshlq_u8(vqtbl1q_s8(v117, xmmword_29D2F17A0), xmmword_29D2F17B0));
      }

      v118 = *(v113 + 248);
      v119 = *(v113 + 256);
      if (v118 != v119)
      {
        v120 = v213;
        do
        {
          v121.i64[0] = v120 + *v118;
          v121.i64[1] = v121.i64[0] >> 5;
          *(v112 + v118[2]) = vbslq_s8(xmmword_29D2F17C0, *(v112 + v118[2]), vshlq_u8(vqtbl1q_s8(v121, xmmword_29D2F17A0), xmmword_29D2F17B0));
          v118 += 3;
        }

        while (v118 != v119);
      }

      if (*(v113 + 312))
      {
        v122 = v211;
        if (!v211)
        {
          goto LABEL_137;
        }

LABEL_131:
        v127 = *v113;
        v128 = *(v113 + 8);
        v129 = *(v40 + 2776);
        LODWORD(v130) = *(v122 + 2);
        v131 = v130 + 1;
        if (*(v122 + 3) >= (v130 + 1))
        {
          v134 = *v122;
        }

        else
        {
          v132 = -__clz(v130);
          v133 = malloc_type_malloc(40 << (v132 & 0x1F), 0x10800400D7C94D2uLL);
          v134 = v133;
          v130 = *(v122 + 2);
          if (v130)
          {
            memcpy(v133, *v122, 40 * v130);
            free(*v122);
            LODWORD(v130) = *(v122 + 2);
          }

          *(v122 + 3) = 1 << v132;
          *v122 = v134;
        }

        v135 = &v134[40 * v130];
        *v135 = 12;
        *(v135 + 1) = v200;
        *(v135 + 2) = v112;
        *(v135 + 3) = (v128 - v127);
        *(v135 + 8) = v129;
        *(v122 + 2) = v131;
        v3 = a1;
        goto LABEL_137;
      }

      v123 = v112 + *(v113 + 316);
      v124 = (((v39 + 3) >> 2) + 1) & 0x7FFFFFFE;
      AGXIotoInstruction_SPECTPR_0::AGXIotoInstruction_SPECTPR_0(&v239, (v123 + 18));
      v125 = v243;
      v126 = v244 & 0xFFF;
      if (v243 <= (v196 + 3) >> 2)
      {
        v125 = (v196 + 3) >> 2;
      }

      if (v126 <= v124)
      {
        v126 = v124;
      }

      *(v123 + 18) = *(v123 + 18) & 0x1F | (32 * ((v126 >> 1) & 0x7FF));
      *(v123 + 24) = v125;
      v122 = v211;
      if (v211)
      {
        goto LABEL_131;
      }

LABEL_137:
      v136 = *(*(*v12 + 2368) + 8) - **(*v12 + 2368);
      v137 = *(v3 + 56);
      v138 = *(v3 + 64);
      if (v137 >= v138)
      {
        v140 = *v182;
        v141 = 0xAAAAAAAAAAAAAAABLL * ((v137 - *v182) >> 3);
        v142 = v141 + 1;
        if (v141 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_192;
        }

        v143 = 0xAAAAAAAAAAAAAAABLL * ((v138 - v140) >> 3);
        if (2 * v143 > v142)
        {
          v142 = 2 * v143;
        }

        if (v143 >= 0x555555555555555)
        {
          v144 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v144 = v142;
        }

        if (v144)
        {
          if (v144 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          goto LABEL_190;
        }

        v145 = (8 * ((v137 - *v182) >> 3));
        *v145 = v200;
        v145[1] = v112;
        v145[2] = v136;
        v139 = 24 * v141 + 24;
        v146 = (24 * v141 - (v137 - v140));
        memcpy(v146, v140, v137 - v140);
        *(v3 + 48) = v146;
        *(v3 + 56) = v139;
        *(v3 + 64) = 0;
        if (v140)
        {
          operator delete(v140);
        }
      }

      else
      {
        *v137 = v200;
        *(v137 + 1) = v112;
        *(v137 + 2) = v136;
        v139 = (v137 + 24);
      }

      *(v3 + 56) = v139;
      v147 = v112 + *(v198 + 316);
      v149 = *(v3 + 80);
      v148 = *(v3 + 88);
      if (v149 >= v148)
      {
        v151 = *(v3 + 72);
        v152 = v149 - v151;
        v153 = (v149 - v151) >> 3;
        v154 = v153 + 1;
        if ((v153 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v155 = v148 - v151;
        if (v155 >> 2 > v154)
        {
          v154 = v155 >> 2;
        }

        if (v155 >= 0x7FFFFFFFFFFFFFF8)
        {
          v156 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v156 = v154;
        }

        if (v156)
        {
          if (!(v156 >> 61))
          {
            operator new();
          }

          goto LABEL_190;
        }

        *(8 * v153) = v147;
        v150 = 8 * v153 + 8;
        memcpy(0, v151, v152);
        *(v3 + 72) = 0;
        *(v3 + 80) = v150;
        *(v3 + 88) = 0;
        if (v151)
        {
          operator delete(v151);
        }
      }

      else
      {
        *v149 = v147;
        v150 = (v149 + 8);
      }

      *(v3 + 80) = v150;
      v157 = *&v224[24];
      if (*&v224[24] && !atomic_fetch_add((*&v224[24] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v157->__on_zero_shared)(v157);
        std::__shared_weak_count::__release_weak(v157);
        v158 = *&v224[8];
        if (*&v224[8])
        {
LABEL_166:
          if (!atomic_fetch_add(&v158->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v158->__on_zero_shared)(v158);
            std::__shared_weak_count::__release_weak(v158);
          }
        }
      }

      else
      {
        v158 = *&v224[8];
        if (*&v224[8])
        {
          goto LABEL_166;
        }
      }

      v159 = *(&v223 + 1);
      if (*(&v223 + 1) && !atomic_fetch_add((*(&v223 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v159->__on_zero_shared)(v159);
        std::__shared_weak_count::__release_weak(v159);
      }

      v11 = v197 + 1;
      v2 = a2;
      v10 = *a2;
    }

    while (v197 + 1 < 0x82FA0BE82FA0BE83 * ((a2[1] - *a2) >> 3));
  }

  if (*(v2 + 8))
  {
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v162 = *(v3 + 48);
    v163 = *(v3 + 56) - v162;
    if (v163)
    {
      v164 = 0xAAAAAAAAAAAAAAABLL * (v163 >> 3);
      if (v164 <= 1)
      {
        v164 = 1;
      }

      v165 = &v203 + 1;
      do
      {
        v166 = *v162;
        v162 += 3;
        v167 = *(*v10 + 2368);
        v168 = *(v167 + 320);
        v169 = v166 & 0xFFFFFFFFFFC0 | (v168 << 48);
        v170 = ((4 * (*(v167 + 324) & 0xFFF)) | WORD1(v168) & 3) & 0xFFFFFFC0FFFFFFFFLL | ((*(*v10 + 3712) & 7) << 32) & 0xFFFFFFC7FFFFFFFFLL | ((*(*v10 + 3704) & 7) << 35) | ((*(*v10 + 3704) > 0) << 38);
        if (*(*v10 + 3724) == 1)
        {
          v171 = 0x8000030000000000;
        }

        else
        {
          v171 = 0x8000010000000000;
        }

        *(v165 - 1) = v169;
        *v165 = v170 | v171 | 0x8000000000;
        v165 += 2;
        v10 += 344;
        --v164;
      }

      while (v164);
    }

    v172 = v2[5];
    os_unfair_lock_lock(v172 + 188);
    v173 = v2[5];
    v174 = *(v2 + 8);
    os_unfair_lock_assert_owner(v173 + 188);
    v175 = (*(*&v173[6 * v173[170]._os_unfair_lock_opaque + 4]._os_unfair_lock_opaque + *MEMORY[0x29EDC5638] + 24) + (v174 << 7));
    v176 = v208;
    v175[4] = v207;
    v175[5] = v176;
    v177 = v210;
    v175[6] = v209;
    v175[7] = v177;
    v178 = v204;
    *v175 = v203;
    v175[1] = v178;
    v179 = v206;
    v175[2] = v205;
    v175[3] = v179;
    os_unfair_lock_unlock(v172 + 188);
  }

  v180 = v211;
  if (v211)
  {
    free(*v211);
    MEMORY[0x29ED520D0](v180, 0x1020C4014030ADELL);
  }

  return v3;
}

void sub_29CE17254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void **a55)
{
  AGX::CommonUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~CommonUSCStateLoader(&a55);
  if (v56)
  {
    operator delete(v56);
    v58 = __p;
    if (!__p)
    {
LABEL_3:
      v59 = v55[12];
      if (!v59)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v58 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v58);
  v59 = v55[12];
  if (!v59)
  {
LABEL_4:
    v60 = v55[9];
    if (!v60)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v55[13] = v59;
  operator delete(v59);
  v60 = v55[9];
  if (!v60)
  {
LABEL_6:
    v61 = *a10;
    if (*a10)
    {
      v55[7] = v61;
      operator delete(v61);
    }

    _Unwind_Resume(a1);
  }

LABEL_5:
  v55[10] = v60;
  operator delete(v60);
  goto LABEL_6;
}

uint64_t AGX::IntersectionEslData<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~IntersectionEslData(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v8[3] = &__block_descriptor_48_e5_v8__0l;
    v8[4] = v2;
    v8[5] = a1;
    dispatch_sync(v3, v8);
    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    *(a1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    *(a1 + 56) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t *std::unique_ptr<AGX::IntersectionEslData<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = AGX::IntersectionEslData<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~IntersectionEslData(v2);
    MEMORY[0x29ED520D0](v4, 0x10B0C40F8EBD84CLL);
    return v3;
  }

  return v1;
}

void **std::vector<AGX::HAL300::IntersectionPipeline>::~vector[abi:nn200100](void **a1)
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
        v3 = AGX::IntersectionPipeline<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~IntersectionPipeline(v3 - 43);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *AGX::IntersectionPipeline<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~IntersectionPipeline(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::deallocateCodeHeap(v2);
  }

  v3 = a1[9];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[7];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[5];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a1[3];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1[1];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IONS1_9__variant15__value_visitorIZN3AGX23IntersectionPipelineSetINS8_6HAL3008EncodersENSA_7ClassesENSA_10ObjClassesEEC1ERKNS8_29IntersectionProgramVariantSetISB_SC_SD_EERNSA_6DeviceEjjbEUlOT_E_EEJRKNS0_6__baseILNS0_6_TraitE1EJNSG_8VariantsENSG_15EmulationDylibsEEEEEEEDcSL_DpT0_(uint64_t **a1, std::__shared_weak_count ***a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *a2;
  v5 = a2[1];
  v6 = (v5 - *a2) >> 4;
  if (0x82FA0BE82FA0BE83 * ((*(v3 + 16) - *v3) >> 3) < v6)
  {
    if (v6 <= 0xBE82FA0BE82FA0)
    {
      v25 = **a1;
      operator new();
    }

LABEL_27:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v4 != v5)
  {
    v7 = *(v3 + 8);
    do
    {
      v8 = *v4;
      *(v3 + 25) = WORD1((*v4)[155].__vftable);
      v9 = v2[1];
      v10 = *(v3 + 16);
      if (v7 < v10)
      {
        std::allocator<AGX::HAL300::IntersectionPipeline>::construct[abi:nn200100]<AGX::HAL300::IntersectionPipeline,std::shared_ptr<AGX::HAL300::IntersectionProgramVariant> const&,decltype(nullptr),unsigned int &>(v7, v8, v4[1], v9);
        v7 += 344;
        *(v3 + 8) = v7;
      }

      else
      {
        v11 = 0x82FA0BE82FA0BE83 * ((v7 - *v3) >> 3);
        v12 = v11 + 1;
        if (v11 + 1 > 0xBE82FA0BE82FA0)
        {
          goto LABEL_27;
        }

        v13 = 0x82FA0BE82FA0BE83 * ((v10 - *v3) >> 3);
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x5F417D05F417D0)
        {
          v14 = 0xBE82FA0BE82FA0;
        }

        else
        {
          v14 = v12;
        }

        v25 = v3;
        if (v14)
        {
          if (v14 <= 0xBE82FA0BE82FA0)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        __p = 0;
        v22 = 344 * v11;
        v23 = 344 * v11;
        v24 = 0;
        std::allocator<AGX::HAL300::IntersectionPipeline>::construct[abi:nn200100]<AGX::HAL300::IntersectionPipeline,std::shared_ptr<AGX::HAL300::IntersectionProgramVariant> const&,decltype(nullptr),unsigned int &>(344 * v11, v8, v4[1], v9);
        v23 += 344;
        std::vector<AGX::HAL300::IntersectionPipeline>::__swap_out_circular_buffer(v3, &__p);
        v7 = *(v3 + 8);
        v16 = v22;
          ;
        }

        if (__p)
        {
          operator delete(__p);
        }
      }

      *(v3 + 8) = v7;
      v4 += 2;
    }

    while (v4 != v5);
  }

  v17 = *v2[2];
  if (v17 != -1)
  {
    AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::RangeAllocation::RangeAllocation(&__p, (v2[3] + 14136), 1u, v17);
    v18 = *(v3 + 32);
    *(v3 + 32) = __p;
    __p = v18;
    v19 = *(v3 + 40);
    *(v3 + 40) = v22;
    v22 = v19;
    v20 = *(v3 + 48);
    *(v3 + 48) = v23;
    LOBYTE(v23) = v20;
    if (v18)
    {
      if ((v20 & 1) == 0)
      {
        os_unfair_lock_lock(v19 + 188);
        AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(v22 + 696, __p, __p + HIDWORD(__p) - 1);
        os_unfair_lock_unlock(v19 + 188);
      }
    }
  }
}

void sub_29CE17950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<AGX::HAL300::IntersectionPipeline>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<AGX::HAL300::IntersectionPipeline>::construct[abi:nn200100]<AGX::HAL300::IntersectionPipeline,std::shared_ptr<AGX::HAL300::IntersectionProgramVariant> const&,decltype(nullptr),unsigned int &>(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, int *a4)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *a4;
    *a1 = a2;
    *(a1 + 8) = a3;
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v6 = *a4;
    *a1 = a2;
    *(a1 + 8) = 0;
  }

  *(a1 + 132) = 0xFFFFFFFF00000001;
  v7 = a1 + 132;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 140) = 1610612736;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0u;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *(a1 + 180) = 0u;
  *(a1 + 196) = v8;
  *(a1 + 212) = v8;
  *(a1 + 228) = v8;
  *(a1 + 260) = 0;
  *(a1 + 244) = -1;
  *(a1 + 252) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 1024;
  *(a1 + 292) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 80) = *(a2 + 1268);
  v9 = *(a2 + 1276);
  *(a1 + 88) = v9;
  v10 = *(a2 + 1304);
  *(a1 + 100) = v10;
  *(a1 + 104) = v6;
  *(a1 + 272) = *(a2 + 2768);
  v11 = *(a2 + 1280) - v9;
  *(a1 + 108) = v11;
  *(a1 + 84) = v9 + v11 * v6;
  v12 = *(a2 + 1308);
  *(a1 + 116) = v12 - v10;
  *(a1 + 96) = v10 + v12 * v6;
  v13 = AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((a1 + 132), (a2 + 1144));
  *(v7 + 120) = *(a2 + 1264);
  *(v7 + 124) = *(a2 + 1330);
  *(v7 + 125) = *(a2 + 1332);
  *(v7 + 128) = *(a2 + 1326);
  *(v7 + 164) = *(a2 + 1320);
  if (a3 && !atomic_fetch_add(&a3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a3->__on_zero_shared)(a3, v13);

    std::__shared_weak_count::__release_weak(a3);
  }
}

char *std::vector<AGX::HAL300::IntersectionPipeline>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9 = 0uLL;
      *(v9 + 1) = 0uLL;
      v22 = *(v8 + 5);
      *(v9 + 4) = *(v8 + 4);
      *(v9 + 5) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v23 = *(v8 + 7);
      *(v9 + 6) = *(v8 + 6);
      *(v9 + 7) = v23;
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      v24 = *(v8 + 9);
      *(v9 + 8) = *(v8 + 8);
      *(v9 + 9) = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = *(v8 + 6);
      *(v9 + 5) = *(v8 + 5);
      *(v9 + 6) = v10;
      v11 = *(v8 + 7);
      v12 = *(v8 + 8);
      v13 = *(v8 + 10);
      *(v9 + 9) = *(v8 + 9);
      *(v9 + 10) = v13;
      *(v9 + 7) = v11;
      *(v9 + 8) = v12;
      v14 = *(v8 + 11);
      v15 = *(v8 + 12);
      v16 = *(v8 + 14);
      *(v9 + 13) = *(v8 + 13);
      *(v9 + 14) = v16;
      *(v9 + 11) = v14;
      *(v9 + 12) = v15;
      v17 = *(v8 + 15);
      v18 = *(v8 + 16);
      v19 = *(v8 + 17);
      *(v9 + 285) = *(v8 + 285);
      *(v9 + 16) = v18;
      *(v9 + 17) = v19;
      *(v9 + 15) = v17;
      *(v9 + 296) = *(v8 + 296);
      *(v9 + 39) = *(v8 + 39);
      *(v9 + 40) = *(v8 + 40);
      *(v9 + 328) = *(v8 + 328);
      v20 = *v9;
      *v9 = *v8;
      *v8 = v20;
      v21 = *(v9 + 1);
      *(v9 + 1) = *(v8 + 1);
      *(v8 + 1) = v21;
      v8 += 344;
      v9 += 344;
    }

    while (v8 != v5);
    do
    {
      result = (AGX::IntersectionPipeline<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~IntersectionPipeline(result) + 43);
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v25 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v25;
  v26 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v26;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<AGX::HAL300::IntersectionPipeline>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 344;
    AGX::IntersectionPipeline<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~IntersectionPipeline((i - 344));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::IntersectionPipelineSet(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    if (0x82FA0BE82FA0BE83 * ((v3 - *a2) >> 3) < 0xBE82FA0BE82FA1)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 25);
  *(a1 + 25) = v4;
  v5 = *(a2 + 26);
  *(a1 + 32) = 0;
  *(a1 + 26) = v5;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  *(a1 + 80) = 0;
  v8 = (a1 + 80);
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v9 = *(a2 + 88);
  *(a1 + 88) = v9;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = 0;
  if (*(a2 + 32))
  {
    AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::RangeAllocation::RangeAllocation(&v14, v9 + 3534, 1u, 0);
    v10 = *(a1 + 32);
    *(a1 + 32) = v14;
    v14 = v10;
    v11 = *(a1 + 40);
    *(a1 + 40) = v15;
    v15 = v11;
    v12 = *(a1 + 48);
    *(a1 + 48) = v16;
    v16 = v12;
    if (v10 && (v12 & 1) == 0)
    {
      os_unfair_lock_lock(v11 + 188);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v15[174], v14, v14 + HIDWORD(v14) - 1);
      os_unfair_lock_unlock(v11 + 188);
    }

    if ((*(a1 + 25) & 1) != 0 && !*v8)
    {
LABEL_12:
      operator new();
    }
  }

  else if (v4)
  {
    goto LABEL_12;
  }

  return a1;
}

void sub_29CE18010(_Unwind_Exception *a1)
{
  MEMORY[0x29ED520D0](v4, 0x10B0C40F8EBD84CLL);
  std::unique_ptr<AGX::IntersectionEslData<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>>::~unique_ptr[abi:nn200100](v3);
  AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::RangeAllocation::~RangeAllocation(v2);
  std::vector<AGX::HAL300::IntersectionPipeline>::~vector[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void sub_29CE18058(_Unwind_Exception *a1)
{
  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState::~RuntimeState((v3 + 32));
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](v4);
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](v3);
  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

uint64_t AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    operator new();
  }

  return *(*(v1 + 24) + 296) + *MEMORY[0x29EDC5638] + 32;
}

void AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::patchEslPrograms(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 112));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 8) - *a1;
    if (v3)
    {
      v4 = 0;
      v5 = 0x82FA0BE82FA0BE83 * (v3 >> 3);
      if (v5 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      v7 = (*a1 + 120);
      v8 = (*(v2 + 96) + 8);
      while (1)
      {
        v11 = *(v8 - 2);
        if (v11 < *(v7 - 10))
        {
          break;
        }

        v9 = *(v8 - 1);
        v10 = *v7 + *(v7 - 9);
        if (v9 < v10 || *v8 < *(v7 - 6))
        {
          goto LABEL_8;
        }

LABEL_19:
        ++v4;
        v7 += 86;
        v8 += 3;
        if (v6 == v4)
        {
          goto LABEL_24;
        }
      }

      v9 = *(v8 - 1);
      v10 = *v7 + *(v7 - 9);
      v11 = *(v7 - 10);
LABEL_8:
      if (v9 <= v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v9;
      }

      *(v8 - 2) = v11;
      *(v8 - 1) = v12;
      if (*v8 <= *(v7 - 6))
      {
        v13 = *(v7 - 6);
      }

      else
      {
        v13 = *v8;
      }

      *v8 = v13;
      v14 = *(*(v2 + 72) + 8 * v4);
      AGXIotoInstruction_SPECTPR_0::AGXIotoInstruction_SPECTPR_0(v17, (v14 + 18));
      v15 = (((v13 + 3) >> 2) + 1) & 0x7FFFFFFE;
      v16 = (v12 + 3) >> 2;
      if (v18 > v16)
      {
        LOWORD(v16) = v18;
      }

      if ((v19 & 0xFFFu) > v15)
      {
        v15 = v19 & 0xFFF;
      }

      *(v14 + 18) = *(v14 + 18) & 0x1F | (32 * ((v15 >> 1) & 0x7FF));
      *(v14 + 24) = v16;
      goto LABEL_19;
    }
  }

LABEL_24:
  os_unfair_lock_unlock((a1 + 112));
}

void AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::snapshotRuntimeStates(void *a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 112));
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (0x82FA0BE82FA0BE83 * ((v4 - *a2) >> 3) <= 0xD20D20D20D20D2)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  os_unfair_lock_unlock((a2 + 112));
}

void sub_29CE18710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, os_unfair_lock_s *a10)
{
  std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState>>::~vector[abi:nn200100](v10);
  os_unfair_lock_unlock(a10 + 28);
  _Unwind_Resume(a1);
}

uint64_t AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::buildUniqueResourceMask(uint64_t result)
{
  v1 = *(result + 536) != 0;
  *(result + 336) = v1;
  if (*(result + 544))
  {
    v1 |= 2u;
    *(result + 336) = v1;
  }

  if (*(result + 552))
  {
    v1 |= 4u;
    *(result + 336) = v1;
  }

  if (*(result + 560))
  {
    v1 |= 8u;
    *(result + 336) = v1;
  }

  if (*(result + 568))
  {
    v1 |= 0x10u;
    *(result + 336) = v1;
  }

  if (*(result + 576))
  {
    v1 |= 0x20u;
    *(result + 336) = v1;
  }

  if (*(result + 584))
  {
    v1 |= 0x40u;
    *(result + 336) = v1;
  }

  if (*(result + 592))
  {
    v1 |= 0x80u;
    *(result + 336) = v1;
  }

  v2 = result + 536;
  v3 = MEMORY[0x29EDC5638];
  v4 = v1;
  do
  {
    v5 = __clz(__rbit32(v4));
    v4 &= ~(1 << v5);
    if (!v4)
    {
      break;
    }

    v6 = *v3;
    v7 = *(*(v2 + 8 * v5) + v6 + 48);
    v8 = v4;
    do
    {
      v9 = __clz(__rbit32(v8));
      v10 = 1 << v9;
      if (v7 == *(*(v2 + 8 * v9) + v6 + 48))
      {
        v1 &= ~v10;
        *(result + 336) = v1;
        v4 &= ~v10;
      }

      v8 &= ~v10;
    }

    while (v8);
  }

  while (v4);
  return result;
}

uint64_t AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::ExecuteIndirectState::~ExecuteIndirectState(uint64_t a1)
{
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 464));
  v2 = *(a1 + 432);
  if (v2)
  {
    *(a1 + 440) = v2;
    operator delete(v2);
  }

  return a1;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),void>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupDirectESL<false>(AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes> const&,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,unsigned long,unsigned long,AGCDeserializedReply const&,BOOL,BOOL)::UniformData *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 40);
  v10 = (a2 - 80);
  v11 = (a2 - 120);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v12) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {
      if (*(a2 - 16) >= *(v12 + 24))
      {
        return result;
      }

LABEL_112:
      v299 = *(v12 + 32);
      v236 = *v12;
      v269 = *(v12 + 16);
      v128 = *v9;
      v129 = *(a2 - 24);
      *(v12 + 32) = *(a2 - 8);
      *v12 = v128;
      *(v12 + 16) = v129;
      result = v236;
      v130 = v269;
      *(a2 - 8) = v299;
LABEL_113:
      *v9 = result;
      *(a2 - 24) = v130;
      return result;
    }

LABEL_9:
    if (v13 <= 959)
    {
      v134 = (v12 + 40);
      v136 = v12 == a2 || v134 == a2;
      if (a4)
      {
        if (!v136)
        {
          v137 = 0;
          v138 = v12;
          do
          {
            v140 = v134;
            v141 = *(v138 + 64);
            if (v141 < *(v138 + 24))
            {
              v271 = v140[1].n128_u64[0];
              v238 = *v140;
              v142 = *(v138 + 72);
              v143 = v137;
              do
              {
                v144 = v12 + v143;
                v145 = *(v12 + v143 + 16);
                *(v144 + 40) = *(v12 + v143);
                *(v144 + 56) = v145;
                *(v144 + 72) = *(v12 + v143 + 32);
                if (!v143)
                {
                  v139 = v12;
                  goto LABEL_127;
                }

                v143 -= 40;
              }

              while (v141 < *(v144 - 16));
              v139 = v12 + v143 + 40;
LABEL_127:
              result = v238;
              *v139 = v238;
              *(v139 + 16) = v271;
              *(v139 + 24) = v141;
              *(v139 + 32) = v142;
            }

            v134 = (v140 + 40);
            v137 += 40;
            v138 = v140;
          }

          while (&v140[2].n128_i8[8] != a2);
        }
      }

      else if (!v136)
      {
        do
        {
          v196 = v134;
          v197 = *(a1 + 64);
          if (v197 < *(a1 + 24))
          {
            v276 = v134[1].n128_u64[0];
            v242 = *v134;
            v198 = *(a1 + 72);
            v199 = v196;
            do
            {
              v200 = *(v199 - 24);
              *v199 = *(v199 - 40);
              *(v199 + 16) = v200;
              *(v199 + 32) = *(v199 - 8);
              v201 = *(v199 - 56);
              v199 -= 40;
            }

            while (v197 < v201);
            result = v242;
            *v199 = v242;
            *(v199 + 16) = v276;
            *(v199 + 24) = v197;
            *(v199 + 32) = v198;
          }

          v134 = (v196 + 40);
          a1 = v196;
        }

        while (v196 + 40 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v146 = (v14 - 2) >> 1;
        v147 = v146;
        do
        {
          if (v146 >= v147)
          {
            v149 = (2 * (v147 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v150 = v12 + 40 * v149;
            if (2 * v147 + 2 < v14)
            {
              v151 = *(v150 + 24);
              v152 = *(v150 + 64);
              v153 = v151 >= v152;
              v154 = v151 >= v152 ? 0 : 40;
              v150 += v154;
              if (!v153)
              {
                v149 = 2 * v147 + 2;
              }
            }

            v155 = v12 + 40 * v147;
            v156 = *(v155 + 24);
            if (*(v150 + 24) >= v156)
            {
              v272 = *(v155 + 16);
              v239 = *v155;
              v157 = *(v155 + 32);
              do
              {
                v158 = v155;
                v155 = v150;
                v159 = *v150;
                v160 = *(v150 + 16);
                *(v158 + 32) = *(v150 + 32);
                *v158 = v159;
                *(v158 + 16) = v160;
                if (v146 < v149)
                {
                  break;
                }

                v161 = (2 * v149) | 1;
                v150 = v12 + 40 * v161;
                v162 = 2 * v149 + 2;
                if (v162 < v14)
                {
                  v163 = *(v150 + 24);
                  v164 = *(v150 + 64);
                  v165 = v163 >= v164;
                  v166 = v163 >= v164 ? 0 : 40;
                  v150 += v166;
                  if (!v165)
                  {
                    v161 = v162;
                  }
                }

                v149 = v161;
              }

              while (*(v150 + 24) >= v156);
              *v155 = v239;
              *(v155 + 16) = v272;
              *(v155 + 24) = v156;
              *(v155 + 32) = v157;
            }
          }

          v148 = v147-- <= 0;
        }

        while (!v148);
        v167 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
        do
        {
          v168 = 0;
          v301 = *(v12 + 32);
          v240 = *v12;
          v273 = *(v12 + 16);
          v169 = v12;
          do
          {
            v176 = v169 + 40 * v168;
            v173 = v176 + 40;
            v177 = (2 * v168) | 1;
            v168 = 2 * v168 + 2;
            if (v168 < v167)
            {
              v170 = *(v176 + 64);
              v171 = *(v176 + 104);
              v172 = v176 + 80;
              if (v170 >= v171)
              {
                v168 = v177;
              }

              else
              {
                v173 = v172;
              }
            }

            else
            {
              v168 = v177;
            }

            v174 = *v173;
            v175 = *(v173 + 16);
            *(v169 + 32) = *(v173 + 32);
            *v169 = v174;
            *(v169 + 16) = v175;
            v169 = v173;
          }

          while (v168 <= ((v167 - 2) >> 1));
          a2 -= 40;
          if (v173 == a2)
          {
            result = v240;
            *(v173 + 32) = v301;
            *v173 = v240;
            *(v173 + 16) = v273;
          }

          else
          {
            v178 = *a2;
            v179 = *(a2 + 16);
            *(v173 + 32) = *(a2 + 32);
            *v173 = v178;
            *(v173 + 16) = v179;
            result = v240;
            *(a2 + 32) = v301;
            *a2 = v240;
            *(a2 + 16) = v273;
            v180 = v173 - v12 + 40;
            if (v180 >= 41)
            {
              v181 = (-2 - 0x3333333333333333 * (v180 >> 3)) >> 1;
              v182 = v12 + 40 * v181;
              v183 = *(v173 + 24);
              if (*(v182 + 24) < v183)
              {
                v311 = *(v173 + 16);
                v308 = *v173;
                v184 = *(v173 + 32);
                do
                {
                  v185 = v173;
                  v173 = v182;
                  v186 = *v182;
                  v187 = *(v182 + 16);
                  *(v185 + 32) = *(v182 + 32);
                  *v185 = v186;
                  *(v185 + 16) = v187;
                  if (!v181)
                  {
                    break;
                  }

                  v181 = (v181 - 1) >> 1;
                  v182 = v12 + 40 * v181;
                }

                while (*(v182 + 24) < v183);
                result = v308;
                *v173 = v308;
                *(v173 + 16) = v311;
                *(v173 + 24) = v183;
                *(v173 + 32) = v184;
              }
            }
          }

          v148 = v167-- <= 2;
        }

        while (!v148);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 40 * (v14 >> 1);
    v17 = *(a2 - 16);
    if (v13 < 0x1401)
    {
      v21 = *(v12 + 24);
      if (v21 < *(v16 + 24))
      {
        if (v17 < v21)
        {
          v282 = *(v16 + 32);
          v219 = *v16;
          v247 = *(v16 + 16);
          v22 = *v9;
          v23 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v22;
          *(v16 + 16) = v23;
          goto LABEL_36;
        }

        v289 = *(v16 + 32);
        v226 = *v16;
        v255 = *(v16 + 16);
        v51 = *v12;
        v52 = *(v12 + 16);
        *(v16 + 32) = *(v12 + 32);
        *v16 = v51;
        *(v16 + 16) = v52;
        *(v12 + 32) = v289;
        *v12 = v226;
        *(v12 + 16) = v255;
        if (*(a2 - 16) < *(v12 + 24))
        {
          v282 = *(v12 + 32);
          v219 = *v12;
          v247 = *(v12 + 16);
          v53 = *v9;
          v54 = *(a2 - 24);
          *(v12 + 32) = *(a2 - 8);
          *v12 = v53;
          *(v12 + 16) = v54;
LABEL_36:
          *(a2 - 8) = v282;
          *v9 = v219;
          *(a2 - 24) = v247;
        }

LABEL_37:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (v17 >= v21)
      {
        goto LABEL_37;
      }

      v285 = *(v12 + 32);
      v222 = *v12;
      v250 = *(v12 + 16);
      v28 = *v9;
      v29 = *(a2 - 24);
      *(v12 + 32) = *(a2 - 8);
      *v12 = v28;
      *(v12 + 16) = v29;
      *(a2 - 8) = v285;
      *v9 = v222;
      *(a2 - 24) = v250;
      if (*(v12 + 24) >= *(v16 + 24))
      {
        goto LABEL_37;
      }

      v286 = *(v16 + 32);
      v223 = *v16;
      v251 = *(v16 + 16);
      v30 = *v12;
      v31 = *(v12 + 16);
      *(v16 + 32) = *(v12 + 32);
      *v16 = v30;
      *(v16 + 16) = v31;
      *(v12 + 32) = v286;
      *v12 = v223;
      *(v12 + 16) = v251;
      --a3;
      if (a4)
      {
        goto LABEL_38;
      }

LABEL_61:
      v55 = *(v12 + 24);
      if (*(v12 - 16) < v55)
      {
        goto LABEL_62;
      }

      v310 = *(v12 + 16);
      v307 = *v12;
      if (v55 >= *(a2 - 16))
      {
        v113 = v12 + 40;
        do
        {
          v12 = v113;
          if (v113 >= a2)
          {
            break;
          }

          v114 = *(v113 + 24);
          v113 += 40;
        }

        while (v55 >= v114);
      }

      else
      {
        v111 = v12;
        do
        {
          v12 = v111 + 40;
          v112 = *(v111 + 64);
          v111 += 40;
        }

        while (v55 >= v112);
      }

      v115 = a2;
      if (v12 < a2)
      {
        v116 = a2;
        do
        {
          v115 = v116 - 40;
          v117 = *(v116 - 16);
          v116 -= 40;
        }

        while (v55 < v117);
      }

      v118 = *(a1 + 32);
      while (v12 < v115)
      {
        v298 = *(v12 + 32);
        v235 = *v12;
        v268 = *(v12 + 16);
        v119 = *v115;
        v120 = *(v115 + 16);
        *(v12 + 32) = *(v115 + 32);
        *v12 = v119;
        *(v12 + 16) = v120;
        *(v115 + 32) = v298;
        *v115 = v235;
        *(v115 + 16) = v268;
        do
        {
          v121 = *(v12 + 64);
          v12 += 40;
        }

        while (v55 >= v121);
        do
        {
          v122 = *(v115 - 16);
          v115 -= 40;
        }

        while (v55 < v122);
      }

      v123 = (v12 - 40);
      if (v12 - 40 != a1)
      {
        v124 = *v123;
        v125 = *(v12 - 24);
        *(a1 + 32) = *(v12 - 8);
        *a1 = v124;
        *(a1 + 16) = v125;
      }

      a4 = 0;
      result = v307;
      *(v12 - 24) = v310;
      *v123 = v307;
      *(v12 - 16) = v55;
      *(v12 - 8) = v118;
    }

    else
    {
      v18 = *(v16 + 24);
      if (v18 >= *(v12 + 24))
      {
        if (v17 < v18)
        {
          v283 = *(v16 + 32);
          v220 = *v16;
          v248 = *(v16 + 16);
          v24 = *v9;
          v25 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v24;
          *(v16 + 16) = v25;
          *(a2 - 8) = v283;
          *v9 = v220;
          *(a2 - 24) = v248;
          if (*(v16 + 24) < *(v12 + 24))
          {
            v284 = *(v12 + 32);
            v221 = *v12;
            v249 = *(v12 + 16);
            v26 = *v16;
            v27 = *(v16 + 16);
            *(v12 + 32) = *(v16 + 32);
            *v12 = v26;
            *(v12 + 16) = v27;
            *(v16 + 32) = v284;
            *v16 = v221;
            *(v16 + 16) = v249;
          }
        }
      }

      else
      {
        if (v17 >= v18)
        {
          v287 = *(v12 + 32);
          v224 = *v12;
          v252 = *(v12 + 16);
          v32 = *v16;
          v33 = *(v16 + 16);
          *(v12 + 32) = *(v16 + 32);
          *v12 = v32;
          *(v12 + 16) = v33;
          *(v16 + 32) = v287;
          *v16 = v224;
          *(v16 + 16) = v252;
          if (*(a2 - 16) >= *(v16 + 24))
          {
            goto LABEL_28;
          }

          v281 = *(v16 + 32);
          v218 = *v16;
          v246 = *(v16 + 16);
          v34 = *v9;
          v35 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v34;
          *(v16 + 16) = v35;
        }

        else
        {
          v281 = *(v12 + 32);
          v218 = *v12;
          v246 = *(v12 + 16);
          v19 = *v9;
          v20 = *(a2 - 24);
          *(v12 + 32) = *(a2 - 8);
          *v12 = v19;
          *(v12 + 16) = v20;
        }

        *(a2 - 8) = v281;
        *v9 = v218;
        *(a2 - 24) = v246;
      }

LABEL_28:
      v36 = v12 + 40 * v15;
      v37 = v36 - 40;
      v38 = *(v36 - 16);
      v39 = *(a2 - 56);
      if (v38 >= *(v12 + 64))
      {
        if (v39 < v38)
        {
          v288 = *(v37 + 32);
          v225 = *v37;
          v253 = *(v37 + 16);
          v45 = *v10;
          v46 = *(a2 - 64);
          *(v37 + 32) = *(a2 - 48);
          *v37 = v45;
          *(v37 + 16) = v46;
          *(a2 - 48) = v288;
          *v10 = v225;
          *(a2 - 64) = v253;
          if (*(v37 + 24) < *(v12 + 64))
          {
            v47 = *(v12 + 40);
            v254 = *(v12 + 56);
            v48 = *(v12 + 72);
            v50 = *v37;
            v49 = *(v37 + 16);
            *(v12 + 72) = *(v37 + 32);
            *(v12 + 40) = v50;
            *(v12 + 56) = v49;
            *(v37 + 32) = v48;
            *v37 = v47;
            *(v37 + 16) = v254;
          }
        }
      }

      else
      {
        if (v39 >= v38)
        {
          v56 = *(v12 + 40);
          v256 = *(v12 + 56);
          v57 = *(v12 + 72);
          v59 = *v37;
          v58 = *(v37 + 16);
          *(v12 + 72) = *(v37 + 32);
          *(v12 + 40) = v59;
          *(v12 + 56) = v58;
          *(v37 + 32) = v57;
          *v37 = v56;
          *(v37 + 16) = v256;
          if (*(a2 - 56) >= *(v37 + 24))
          {
            goto LABEL_42;
          }

          v290 = *(v37 + 32);
          v227 = *v37;
          v257 = *(v37 + 16);
          v60 = *v10;
          v61 = *(a2 - 64);
          *(v37 + 32) = *(a2 - 48);
          *v37 = v60;
          *(v37 + 16) = v61;
          v40 = v227;
          v41 = v257;
          *(a2 - 48) = v290;
        }

        else
        {
          v40 = *(v12 + 40);
          v41 = *(v12 + 56);
          v42 = *(v12 + 72);
          v44 = *v10;
          v43 = *(a2 - 64);
          *(v12 + 72) = *(a2 - 48);
          *(v12 + 40) = v44;
          *(v12 + 56) = v43;
          *(a2 - 48) = v42;
        }

        *v10 = v40;
        *(a2 - 64) = v41;
      }

LABEL_42:
      v62 = v12 + 40 * v15;
      v63 = *(v62 + 64);
      v64 = *(a2 - 96);
      if (v63 >= *(v12 + 104))
      {
        if (v64 < v63)
        {
          v291 = *(v62 + 72);
          v228 = *(v62 + 40);
          v258 = *(v62 + 56);
          v70 = *v11;
          v71 = *(a2 - 104);
          *(v62 + 72) = *(a2 - 88);
          *(v62 + 56) = v71;
          *(v62 + 40) = v70;
          *(a2 - 88) = v291;
          *v11 = v228;
          *(a2 - 104) = v258;
          if (*(v62 + 64) < *(v12 + 104))
          {
            v72 = *(v12 + 80);
            v259 = *(v12 + 96);
            v73 = *(v12 + 112);
            v74 = *(v62 + 56);
            v75 = *(v62 + 40);
            *(v12 + 112) = *(v62 + 72);
            *(v12 + 80) = v75;
            *(v12 + 96) = v74;
            *(v62 + 56) = v259;
            *(v62 + 72) = v73;
            *(v62 + 40) = v72;
          }
        }
      }

      else
      {
        if (v64 >= v63)
        {
          v76 = *(v12 + 80);
          v260 = *(v12 + 96);
          v77 = *(v12 + 112);
          v78 = *(v62 + 56);
          v79 = *(v62 + 40);
          *(v12 + 112) = *(v62 + 72);
          *(v12 + 80) = v79;
          *(v12 + 96) = v78;
          *(v62 + 56) = v260;
          *(v62 + 72) = v77;
          *(v62 + 40) = v76;
          if (*(a2 - 96) >= *(v62 + 64))
          {
            goto LABEL_51;
          }

          v292 = *(v62 + 72);
          v229 = *(v62 + 40);
          v261 = *(v62 + 56);
          v80 = *v11;
          v81 = *(a2 - 104);
          *(v62 + 72) = *(a2 - 88);
          *(v62 + 56) = v81;
          *(v62 + 40) = v80;
          v65 = v229;
          v66 = v261;
          *(a2 - 88) = v292;
        }

        else
        {
          v65 = *(v12 + 80);
          v66 = *(v12 + 96);
          v67 = *(v12 + 112);
          v69 = *v11;
          v68 = *(a2 - 104);
          *(v12 + 112) = *(a2 - 88);
          *(v12 + 80) = v69;
          *(v12 + 96) = v68;
          *(a2 - 88) = v67;
        }

        *v11 = v65;
        *(a2 - 104) = v66;
      }

LABEL_51:
      v82 = *(v16 + 24);
      v83 = *(v62 + 64);
      if (v82 >= *(v37 + 24))
      {
        if (v83 < v82)
        {
          v294 = *(v16 + 32);
          v231 = *v16;
          v263 = *(v16 + 16);
          v85 = *(v62 + 56);
          *v16 = *(v62 + 40);
          *(v16 + 16) = v85;
          *(v16 + 32) = *(v62 + 72);
          *(v62 + 56) = v263;
          *(v62 + 72) = v294;
          *(v62 + 40) = v231;
          if (*(v16 + 24) < *(v37 + 24))
          {
            v295 = *(v37 + 32);
            v232 = *v37;
            v264 = *(v37 + 16);
            v86 = *(v16 + 16);
            *v37 = *v16;
            *(v37 + 16) = v86;
            *(v37 + 32) = *(v16 + 32);
            *(v16 + 32) = v295;
            *v16 = v232;
            *(v16 + 16) = v264;
          }
        }
      }

      else
      {
        if (v83 >= v82)
        {
          v296 = *(v37 + 32);
          v233 = *v37;
          v265 = *(v37 + 16);
          v87 = *(v16 + 16);
          *v37 = *v16;
          *(v37 + 16) = v87;
          *(v37 + 32) = *(v16 + 32);
          *(v16 + 32) = v296;
          *v16 = v233;
          *(v16 + 16) = v265;
          if (*(v62 + 64) >= *(v16 + 24))
          {
            goto LABEL_60;
          }

          v293 = *(v16 + 32);
          v230 = *v16;
          v262 = *(v16 + 16);
          v88 = *(v62 + 56);
          *v16 = *(v62 + 40);
          *(v16 + 16) = v88;
          *(v16 + 32) = *(v62 + 72);
        }

        else
        {
          v293 = *(v37 + 32);
          v230 = *v37;
          v262 = *(v37 + 16);
          v84 = *(v62 + 56);
          *v37 = *(v62 + 40);
          *(v37 + 16) = v84;
          *(v37 + 32) = *(v62 + 72);
        }

        *(v62 + 56) = v262;
        *(v62 + 72) = v293;
        *(v62 + 40) = v230;
      }

LABEL_60:
      v297 = *(v12 + 32);
      v234 = *v12;
      v266 = *(v12 + 16);
      v89 = *v16;
      v90 = *(v16 + 16);
      *(v12 + 32) = *(v16 + 32);
      *v12 = v89;
      *(v12 + 16) = v90;
      *(v16 + 32) = v297;
      *v16 = v234;
      *(v16 + 16) = v266;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      v55 = *(v12 + 24);
LABEL_62:
      v309 = *(v12 + 16);
      v306 = *v12;
      v91 = *(v12 + 32);
      v92 = v12;
      do
      {
        v93 = v92;
        v92 += 40;
      }

      while (*(v93 + 64) < v55);
      v94 = a2;
      if (v93 == v12)
      {
        v97 = a2;
        while (v92 < v97)
        {
          v95 = v97 - 40;
          v98 = *(v97 - 16);
          v97 -= 40;
          if (v98 < v55)
          {
            goto LABEL_72;
          }
        }

        v95 = v97;
      }

      else
      {
        do
        {
          v95 = v94 - 40;
          v96 = *(v94 - 16);
          v94 -= 40;
        }

        while (v96 >= v55);
      }

LABEL_72:
      v12 = v92;
      if (v92 < v95)
      {
        v99 = v95;
        do
        {
          v100 = *v12;
          v267 = *(v12 + 16);
          v101 = *(v12 + 32);
          v103 = *v99;
          v102 = *(v99 + 16);
          *(v12 + 32) = *(v99 + 32);
          *v12 = v103;
          *(v12 + 16) = v102;
          *(v99 + 32) = v101;
          *v99 = v100;
          *(v99 + 16) = v267;
          do
          {
            v104 = *(v12 + 64);
            v12 += 40;
          }

          while (v104 < v55);
          do
          {
            v105 = *(v99 - 16);
            v99 -= 40;
          }

          while (v105 >= v55);
        }

        while (v12 < v99);
      }

      v106 = (v12 - 40);
      if (v12 - 40 != a1)
      {
        v107 = *v106;
        v108 = *(v12 - 24);
        *(a1 + 32) = *(v12 - 8);
        *a1 = v107;
        *(a1 + 16) = v108;
      }

      *(v12 - 24) = v309;
      *v106 = v306;
      *(v12 - 16) = v55;
      *(v12 - 8) = v91;
      if (v92 < v95)
      {
        goto LABEL_83;
      }

      v109 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),void>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupDirectESL<false>(AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes> const&,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,unsigned long,unsigned long,AGCDeserializedReply const&,BOOL,BOOL)::UniformData *>(a1, v12 - 40, v306);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),void>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupDirectESL<false>(AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes> const&,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,unsigned long,unsigned long,AGCDeserializedReply const&,BOOL,BOOL)::UniformData *>(v12, a2, v110))
      {
        a2 = v12 - 40;
        if (!v109)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v109)
      {
LABEL_83:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),void>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupDirectESL<false>(AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes> const&,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,unsigned long,unsigned long,AGCDeserializedReply const&,BOOL,BOOL)::UniformData *,false>(a1, v12 - 40, a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      v131 = *(v12 + 64);
      v132 = *(v12 + 104);
      if (v131 >= *(v12 + 24))
      {
        if (v132 < v131)
        {
          result = *(v12 + 56);
          v191 = *(v12 + 80);
          *(v12 + 56) = *(v12 + 96);
          v193 = *(v12 + 64);
          v192 = *(v12 + 72);
          *(v12 + 72) = *(v12 + 112);
          v194 = *(v12 + 40);
          *(v12 + 40) = v191;
          *(v12 + 80) = v194;
          *(v12 + 96) = result;
          *(v12 + 112) = v192;
          if (v193 < *(v12 + 24))
          {
            v302 = *(v12 + 32);
            v241 = *v12;
            v275 = *(v12 + 16);
            v195 = *(v12 + 56);
            *v12 = *(v12 + 40);
            *(v12 + 16) = v195;
            *(v12 + 32) = *(v12 + 72);
            result = v241;
            *(v12 + 40) = v241;
            *(v12 + 56) = v275;
            *(v12 + 72) = v302;
          }
        }
      }

      else if (v132 >= v131)
      {
        v304 = *(v12 + 32);
        v244 = *v12;
        v278 = *(v12 + 16);
        v206 = *(v12 + 56);
        *v12 = *(v12 + 40);
        *(v12 + 16) = v206;
        *(v12 + 32) = *(v12 + 72);
        result = v244;
        *(v12 + 40) = v244;
        *(v12 + 56) = v278;
        *(v12 + 72) = v304;
        if (v132 < *(v12 + 64))
        {
          v207 = *(v12 + 72);
          result = *(v12 + 56);
          v208 = *(v12 + 40);
          v209 = *(v12 + 96);
          *(v12 + 40) = *(v12 + 80);
          *(v12 + 56) = v209;
          *(v12 + 72) = *(v12 + 112);
          *(v12 + 80) = v208;
          *(v12 + 96) = result;
          *(v12 + 112) = v207;
        }
      }

      else
      {
        v300 = *(v12 + 32);
        v237 = *v12;
        v270 = *(v12 + 16);
        v133 = *(v12 + 96);
        *v12 = *(v12 + 80);
        *(v12 + 16) = v133;
        *(v12 + 32) = *(v12 + 112);
        result = v237;
        *(v12 + 80) = v237;
        *(v12 + 96) = v270;
        *(v12 + 112) = v300;
      }

      if (*(a2 - 16) >= *(v12 + 104))
      {
        return result;
      }

      result = *(v12 + 80);
      v279 = *(v12 + 96);
      v210 = *(v12 + 112);
      v212 = *v9;
      v211 = *(a2 - 24);
      *(v12 + 112) = *(a2 - 8);
      *(v12 + 80) = v212;
      *(v12 + 96) = v211;
      *(a2 - 8) = v210;
      *v9 = result;
      *(a2 - 24) = v279;
      if (*(v12 + 104) >= *(v12 + 64))
      {
        return result;
      }

      result = *(v12 + 56);
      v213 = *(v12 + 80);
      *(v12 + 56) = *(v12 + 96);
      v215 = *(v12 + 64);
      v214 = *(v12 + 72);
      *(v12 + 72) = *(v12 + 112);
      v216 = *(v12 + 40);
      *(v12 + 40) = v213;
      *(v12 + 80) = v216;
      *(v12 + 96) = result;
      *(v12 + 112) = v214;
      if (v215 >= *(v12 + 24))
      {
        return result;
      }

LABEL_193:
      v305 = *(v12 + 32);
      v245 = *v12;
      v280 = *(v12 + 16);
      v217 = *(v12 + 56);
      *v12 = *(v12 + 40);
      *(v12 + 16) = v217;
      *(v12 + 32) = *(v12 + 72);
      result = v245;
      *(v12 + 40) = v245;
      *(v12 + 56) = v280;
      *(v12 + 72) = v305;
      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),void>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupDirectESL<false>(AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes> const&,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,unsigned long,unsigned long,AGCDeserializedReply const&,BOOL,BOOL)::UniformData *,0>(v12, v12 + 40, v12 + 80, v12 + 120, a2 - 40, result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v126 = *(v12 + 64);
  v127 = *(a2 - 16);
  if (v126 >= *(v12 + 24))
  {
    if (v127 >= v126)
    {
      return result;
    }

    result = *(v12 + 40);
    v274 = *(v12 + 56);
    v188 = *(v12 + 72);
    v190 = *v9;
    v189 = *(a2 - 24);
    *(v12 + 72) = *(a2 - 8);
    *(v12 + 40) = v190;
    *(v12 + 56) = v189;
    *(a2 - 8) = v188;
    *v9 = result;
    *(a2 - 24) = v274;
    if (*(v12 + 64) >= *(v12 + 24))
    {
      return result;
    }

    goto LABEL_193;
  }

  if (v127 < v126)
  {
    goto LABEL_112;
  }

  v303 = *(v12 + 32);
  v243 = *v12;
  v277 = *(v12 + 16);
  v202 = *(v12 + 56);
  *v12 = *(v12 + 40);
  *(v12 + 16) = v202;
  *(v12 + 32) = *(v12 + 72);
  result = v243;
  *(v12 + 40) = v243;
  *(v12 + 56) = v277;
  *(v12 + 72) = v303;
  if (*(a2 - 16) < *(v12 + 64))
  {
    result = *(v12 + 40);
    v130 = *(v12 + 56);
    v203 = *(v12 + 72);
    v205 = *v9;
    v204 = *(a2 - 24);
    *(v12 + 72) = *(a2 - 8);
    *(v12 + 40) = v205;
    *(v12 + 56) = v204;
    *(a2 - 8) = v203;
    goto LABEL_113;
  }

  return result;
}

uint64_t AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::~EslBuilder(uint64_t a1)
{
  std::deque<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block,std::allocator<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block>>::~deque[abi:nn200100](a1 + 64);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 32));
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 8));
  return a1;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),void>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupDirectESL<false>(AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes> const&,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,unsigned long,unsigned long,AGCDeserializedReply const&,BOOL,BOOL)::UniformData *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = *(a2 + 24);
  v7 = *(a3 + 24);
  if (v6 >= *(a1 + 24))
  {
    if (v7 < v6)
    {
      v12 = *(a2 + 32);
      result = *a2;
      v13 = *(a2 + 16);
      v14 = *(a3 + 32);
      v15 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v15;
      *(a2 + 32) = v14;
      *a3 = result;
      *(a3 + 16) = v13;
      *(a3 + 32) = v12;
      if (*(a2 + 24) < *(a1 + 24))
      {
        v16 = *(a1 + 32);
        result = *a1;
        v17 = *(a1 + 16);
        v18 = *(a2 + 32);
        v19 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v19;
        *(a1 + 32) = v18;
        *a2 = result;
        *(a2 + 16) = v17;
        *(a2 + 32) = v16;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *(a1 + 32);
      result = *a1;
      v9 = *(a1 + 16);
      v10 = *(a3 + 32);
      v11 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v11;
      *(a1 + 32) = v10;
LABEL_9:
      *a3 = result;
      *(a3 + 16) = v9;
      *(a3 + 32) = v8;
      goto LABEL_10;
    }

    v20 = *(a1 + 32);
    result = *a1;
    v21 = *(a1 + 16);
    v22 = *(a2 + 32);
    v23 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *(a1 + 32) = v22;
    *a2 = result;
    *(a2 + 16) = v21;
    *(a2 + 32) = v20;
    if (*(a3 + 24) < *(a2 + 24))
    {
      v8 = *(a2 + 32);
      result = *a2;
      v9 = *(a2 + 16);
      v24 = *(a3 + 32);
      v25 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v25;
      *(a2 + 32) = v24;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 24) < *(a3 + 24))
  {
    v26 = *(a3 + 32);
    result = *a3;
    v27 = *(a3 + 16);
    v28 = *(a4 + 32);
    v29 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v29;
    *(a3 + 32) = v28;
    *a4 = result;
    *(a4 + 16) = v27;
    *(a4 + 32) = v26;
    if (*(a3 + 24) < *(a2 + 24))
    {
      v30 = *(a2 + 32);
      result = *a2;
      v31 = *(a2 + 16);
      v32 = *(a3 + 32);
      v33 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v33;
      *(a2 + 32) = v32;
      *a3 = result;
      *(a3 + 16) = v31;
      *(a3 + 32) = v30;
      if (*(a2 + 24) < *(a1 + 24))
      {
        v34 = *(a1 + 32);
        result = *a1;
        v35 = *(a1 + 16);
        v36 = *(a2 + 32);
        v37 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v37;
        *(a1 + 32) = v36;
        *a2 = result;
        *(a2 + 16) = v35;
        *(a2 + 32) = v34;
      }
    }
  }

  if (*(a5 + 24) < *(a4 + 24))
  {
    v38 = *(a4 + 32);
    result = *a4;
    v39 = *(a4 + 16);
    v40 = *(a5 + 32);
    v41 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v41;
    *(a4 + 32) = v40;
    *a5 = result;
    *(a5 + 16) = v39;
    *(a5 + 32) = v38;
    if (*(a4 + 24) < *(a3 + 24))
    {
      v42 = *(a3 + 32);
      result = *a3;
      v43 = *(a3 + 16);
      v44 = *(a4 + 32);
      v45 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v45;
      *(a3 + 32) = v44;
      *a4 = result;
      *(a4 + 16) = v43;
      *(a4 + 32) = v42;
      if (*(a3 + 24) < *(a2 + 24))
      {
        v46 = *(a2 + 32);
        result = *a2;
        v47 = *(a2 + 16);
        v48 = *(a3 + 32);
        v49 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v49;
        *(a2 + 32) = v48;
        *a3 = result;
        *(a3 + 16) = v47;
        *(a3 + 32) = v46;
        if (*(a2 + 24) < *(a1 + 24))
        {
          v50 = *(a1 + 32);
          result = *a1;
          v51 = *(a1 + 16);
          v52 = *(a2 + 32);
          v53 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v53;
          *(a1 + 32) = v52;
          *a2 = result;
          *(a2 + 16) = v51;
          *(a2 + 32) = v50;
        }
      }
    }
  }

  return result;
}